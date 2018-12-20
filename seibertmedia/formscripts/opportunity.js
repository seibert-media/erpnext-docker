/**
 * TICKET: BRO-1159
 *
 * FUNCTIONALITY:
 * Adds button to Opportunity if it's saved and calls create_quote_task which starts the Quote Creation Process™️
 */

frappe.provide("seibertmedia.opportunity");

frappe.ui.form.on("Opportunity", "refresh", function (frm) {
    if (frm.is_dirty() !== 1) {
        frm.page.add_menu_item("Angebot generieren", function () {
            frappe.call({
                method: "seibertmedia.seibertmedia.doctype.quotetask.quotetask.create_quote_task",
                args: {
                    opportunity_id: frm.doc.name,
                    technical_contact: frm.doc.contact_person,
                    items: frm.doc.items,
                    customer: frm.doc.customer,
                    contact_email: frm.doc.contact_email,
                },
                callback: function (resp) {
                    frappe.msgprint('Die Angebotsgenerierung wurde erfolgreich angestoßen!', 'Angebotsgenerierung');
                }
            });
        });
    }
});
