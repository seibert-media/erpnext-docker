cur_frm.page.views.print.find(".btn-print-print").remove();

frappe.ui.form.on("Sales Invoice", "refresh", function(frm) {
    if (frm.get_field("status").value == "Unpaid") {
        frm.page.add_menu_item("Pixelletter", function() {
            //TODO: Create draft letter entry
        });
    }
});