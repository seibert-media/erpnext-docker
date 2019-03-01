frappe.ui.form.on("Customer", {
	setup: function (frm) {
		frappe.show_alert("setup Banana");
	},
	onload: function (frm) {
		frappe.show_alert("onload Banana");
	},
	refresh: function (frm) {
		frappe.show_alert("refresh Banana");
	},
});
