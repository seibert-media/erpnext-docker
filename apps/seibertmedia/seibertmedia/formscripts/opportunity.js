/**
 * TICKET: BRO-1159
 *
 * FUNCTIONALITY:
 * Adds button to Opportunity if it's saved and calls create_quote_task which starts the Quote Creation Process™️
 */

frappe.provide("seibertmedia.opportunity");

frappe.ui.form.on("Opportunity", "refresh", function (frm) {
    if (frm.is_dirty() !== 1) {
        frm.page.add_menu_item("AT-Quote generieren", function () {
            contact_person = frm.doc.end_user_contact ? frm.doc.end_user_contact : frm.doc.contact_person ;
            customer = frm.doc.end_user_customer ? frm.doc.end_user_customer : frm.doc.customer;
            address = frm.doc.end_user_address ? frm.doc.end_user_address : frm.doc.customer_address;

            frappe.call({
                method: "seibertmedia.seibertmedia.doctype.quote_task.quote_task.create_quote_task",
                args: {
                    opportunity_id: frm.doc.name,
                    technical_contact: contact_person,
                    items: frm.doc.items,
                    customer_name: customer,
                    customer_address: address,
                    license_type: frm.doc.license_type,
                    sen: frm.doc.sen,
                    renewal_period: frm.doc.renewal_period,
                },
                callback: function (resp) {
                    frappe.msgprint('Die AT-Generierung wurde erfolgreich angestoßen!', 'AT-Generierung');
                }
            });
        });
    }
});

frappe.ui.form.on("Opportunity", {
    end_user_customer: function(frm) {
        frm.set_value("end_user_contact", "");
        frm.set_value("end_user_address", "");
        set_end_user_queries(frm);
    },
    onload: set_end_user_queries(this.frm)
});

function set_end_user_queries(frm) {

    frm.set_query("end_user_contact", function(){
        if(frm.doc.end_user_customer) {
            return {
                query: "frappe.contacts.doctype.contact.contact.contact_query",
                filters: { link_doctype: "Customer", link_name: frm.doc.end_user_customer }
            };
        }
    });
    frm.set_query("end_user_address", function(){
        if(frm.doc.end_user_customer) {
            return {
                query: "frappe.contacts.doctype.address.address.address_query",
                filters: { link_doctype: "Customer", link_name: frm.doc.end_user_customer }
            };
        }
    });
}