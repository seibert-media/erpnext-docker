# -*- coding: utf-8 -*-
# Copyright (c) 2018, //SEIBERT/MEDIA GmbH and contributors
# For license information, please see license.txt

from __future__ import unicode_literals

import frappe
import json
from frappe.model.document import Document

QUOTE_TASK = 'Quote Task'
REQUESTED = 'Requested'
ITEM_TABLE = 'items'
CONTACT = 'Contact'
CUSTOMER = 'Customer'
ADDRESS = 'Address'
COUNTRY = 'Country'
ITEM = 'Item'

ORDERABLE_ITEM_ID = 'orderableitemid'
MAINTENANCE_MONTHS = 'maintenancemonths'


class QuoteTask(Document):
    pass


@frappe.whitelist()
def create_quote_task(opportunity_id=None, technical_contact=None, customer_name=None, customer_address=None, items=None):

    if not opportunity_id:
        frappe.throw('Missing Opportunity ID')

    if not technical_contact:
        frappe.throw('Missing Contact Person!')

    if not items:
        frappe.throw('Missing Items!')

    if not customer_name:
        frappe.throw('Missing Customer!')

    if not customer_address:
        frappe.throw('Missing Customer Address!')

    # Get info from other doctypes
    contact = frappe.get_doc(CONTACT, technical_contact)
    customer = frappe.get_doc(CUSTOMER, customer_name)
    address = frappe.get_doc(ADDRESS, customer_address)
    country_code = frappe.db.get_value(COUNTRY, address.country, 'code').upper()

    # Create a new Quote Task and set general info
    new_quote = frappe.new_doc(QUOTE_TASK)
    new_quote.opportunity_id = opportunity_id
    new_quote.state = REQUESTED

    # Set technical contact info
    new_quote.first_name = contact.first_name
    new_quote.last_name = contact.last_name
    new_quote.email = contact.email_id
    new_quote.phone = contact.phone

    # Set company and address info
    new_quote.company = customer_name
    new_quote.address_line_1 = address.address_line1
    new_quote.address_line_2 = address.address_line2
    new_quote.post_code = address.pincode
    new_quote.city = address.city
    new_quote.country_state = address.state
    new_quote.country_code = country_code
    new_quote.tax_id = customer.tax_id

    quote_items = json.loads(items)

    for item in quote_items:
        item[ORDERABLE_ITEM_ID] = frappe.db.get_value(ITEM, {'item_code': item['item_code']}, ORDERABLE_ITEM_ID)
        item[MAINTENANCE_MONTHS] = frappe.db.get_value(ITEM, {'item_code': item['item_code']}, MAINTENANCE_MONTHS)
        new_quote.append(ITEM_TABLE, item)

    new_quote.insert(ignore_permissions=True)
