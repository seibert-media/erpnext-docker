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
	open_billomat: function (frm) {
		window.open("https://seibertmedia.billomat.net/app/clients/show/entityId/" + frm.doc.billomat_id);
	},
	open_highrise: function (frm) {
		window.open("https://seibertmedia.highrisehq.com/companies/" + frm.doc.highrise_id);
	},
});
