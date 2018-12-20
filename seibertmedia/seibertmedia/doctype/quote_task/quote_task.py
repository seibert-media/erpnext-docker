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


class QuoteTask(Document):
    pass


@frappe.whitelist()
def create_quote_task(opportunity_id=None, technical_contact=None, customer=None, contact_email=None, items=None):

    if not opportunity_id:
        frappe.throw('Missing Opportunity ID')

    if not technical_contact:
        frappe.throw('Missing Contact Person!')

    if not items:
        frappe.throw('Missing Items!')

    if not customer:
        frappe.throw('Missing Customer!')

    if not contact_email:
        frappe.throw('Missing Contact Email!')

    new_quote = frappe.new_doc(QUOTE_TASK)
    new_quote.opportunityid = opportunity_id
    new_quote.technical_contact = technical_contact
    new_quote.state = REQUESTED
    new_quote.company = customer
    new_quote.email = contact_email

    quote_items = json.loads(items)

    for item in quote_items:
        new_quote.append(ITEM_TABLE, item)

    new_quote.insert(ignore_permissions=True)

    return str(opportunity_id), str(technical_contact), items
