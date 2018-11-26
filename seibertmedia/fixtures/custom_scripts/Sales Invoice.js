frappe.provide("seibertmedia.invoice");

class Composer{
    constructor(doc) {
        this.doc = doc;
    }
    make() {
        var me = this;
        this.dialog = new frappe.ui.Dialog({
            title: "Send Pixelletter", fields: [
                {label: "Primary Attachment", fieldtype: "Data", fieldname: "primary_attachment"},
                {
                    label: __("Select Attachments"), fieldtype: "HTML",
                    fieldname: "select_attachments"
                },
            ], primary_action_label: "Send Pixelletter", primary_action: function() {
                if (cur_frm && !frappe.model.can_email(me.doc.doctype, cur_frm)) {
                    frappe.msgprint(__("You are not allowed to send emails related to this document"));
                    return;
                }

                var selected_attachments =
                    $.map($(me.dialog.wrapper).find("[data-file-name]:checked"), function (element) {
                        return $(element).attr("data-file-name");
                    });

                frappe.call({
                    method: "seibertmedia.seibertmedia.doctype.pixelletter.pixelletter.make",
                    args: {
                        doctype: me.doc.doc.doctype,
                        name: me.doc.doc.name,
                        send_email: 1,
                        print_html: null,
                        print_format: cur_frm.print_preview.selected_format(),
                        attachments: selected_attachments,
                        attach_field: "cover_letter",
                        _lang: me.lang_code,
                    },
                    callback: function (resp) {
                        me.dialog.hide()
                    }
                });
            }
        });

        $(document).on("upload_complete", function(event, attachment) {
            if(me.dialog.display) {
                var wrapper = $(me.dialog.fields_dict.select_attachments.wrapper);

                // find already checked items
                var checked_items = wrapper.find('[data-file-name]:checked').map(function() {
                    return $(this).attr("data-file-name");
                });

                // reset attachment list
                seibertmedia.invoice.pixelletterComposer.render_attach();

                // check latest added
                checked_items.push(attachment.name);

                $.each(checked_items, function(i, filename) {
                    wrapper.find('[data-file-name="'+ filename +'"]').prop("checked", true);
                });
            }
        });
        me.dialog.show();
    }
    setup_attach() {
        var fields = this.dialog.fields_dict;
        var attach = $(fields.select_attachments.wrapper);

        var me = this;
        if (!me.attachments){
            me.attachments = []
        }

        var args = {
            args: {
                from_form: 1,
                folder:"Home/Attachments"
            },
            callback: function(attachment, r) { me.attachments.push(attachment);},
            max_width: null,
            max_height: null
        };

        if(me.frm) {
            args = {
                args: (me.doc.attachments.get_args
                    ? me.doc.attachments.get_args()
                    : { from_form: 1,folder:"Home/Attachments" }),
                callback: function (attachment, r) {
                    me.doc.attachments.attachment_uploaded(attachment, r)
                },
                max_width: me.doc.cscript ? me.doc.cscript.attachment_max_width : null,
                max_height: me.doc.cscript ? me.doc.cscript.attachment_max_height : null
            }

        }

        $("<h6 class='text-muted add-attachment' style='margin-top: 12px; cursor:pointer;'>"
            +__("Select Attachments")+"</h6><div class='attach-list'></div>\
			<p class='add-more-attachments'>\
			<a class='text-muted small'><i class='octicon octicon-plus' style='font-size: 12px'></i> "
            +__("Add Attachment")+"</a></p>").appendTo(attach.empty())
        attach.find(".add-more-attachments a").on('click',this,function() {
            me.upload = frappe.ui.get_upload_dialog(args);
        });

        seibertmedia.invoice.pixelletterComposer.render_attach()

    }
    render_attach(){
        var fields = this.dialog.fields_dict;
        var attach = $(fields.select_attachments.wrapper).find(".attach-list").empty();

        var files = [];
        if (this.attachments && this.attachments.length) {
            files = files.concat(this.attachments);
        }
        if (cur_frm) {
            files = files.concat(cur_frm.get_files());
        }
        if(files.length) {
            $.each(files, function(i, f) {
                if (!f.file_name) return;
                f.file_url = frappe.urllib.get_full_url(f.file_url);

                $(repl('<p class="checkbox">'
                    +	'<label><span><input type="checkbox" data-file-name="%(name)s"></input></span>'
                    +		'<span class="small">%(file_name)s</span>'
                    +	' <a href="%(file_url)s" target="_blank" class="text-muted small">'
                    +		'<i class="fa fa-share" style="vertical-align: middle; margin-left: 3px;"></i>'
                    + '</label></p>', f))
                    .appendTo(attach)
            });
        }
    }
}

cur_frm.page.views.print.find(".btn-print-print").remove();

seibertmedia.invoice.pixelletterComposer = new Composer(cur_frm);

frappe.ui.form.on("Sales Invoice", "refresh", function (frm) {
    frm.page.add_menu_item("Pixelletter", function () {
        seibertmedia.invoice.pixelletterComposer.make();
        seibertmedia.invoice.pixelletterComposer.setup_attach()
    });
});



