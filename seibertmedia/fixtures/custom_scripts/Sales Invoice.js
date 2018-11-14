/**
 * TICKET: BRO-917
 *
 * FUNCTIONALITY:
 * Loads and renders the intro and outro templates of this form upon loading an entry of said form.
 * The templates need to have the naming scheme that they end in ' - Intro' respectively ' - Outro'.
 */

var printPreviewLanguageSelectorIdentifier = '.languages';

frappe.ui.form.on(
    'Sales Invoice',  // Name of the form
    {
        /**
         * Gets executed upon loading the form
         *
         * @param frm  The current form object
         */
        onload: function (frm) {
            // Directly render the template on page load
            frm.events.renderTemplate(frm);

            // Re-render the template upon changing the template language
            $(printPreviewLanguageSelectorIdentifier).on('change', function () {
                frm.events.renderTemplate(frm);
            });
        },
        /**
         * Renders the intro and outro templates
         *
         * @param frm  The current form object
         */
        renderTemplate: function (frm) {
            var defaultTemplate = frm.meta.default_print_format;  // e.g. 'Sales Invoice Template'

            // Render and insert `introtext`
            frappe.call({
                method: 'frappe.www.printview.get_html_and_style',
                args: {
                    doc: frm.doc,
                    print_format: defaultTemplate + ' - Intro',
                    no_letterhead: 0,
                    _lang: frm.events.retrieveTemplateLanguage(),
                },
                callback: function (res) {
                    if (!res.exc) {
                        frm.set_value('introtext', res.message.html);
                    }
                }
            });

            // Render and insert `outrotext`
            frappe.call({
                method: 'frappe.www.printview.get_html_and_style',
                args: {
                    doc: frm.doc,
                    print_format: defaultTemplate + ' - Outro',
                    no_letterhead: 0,
                    _lang: frm.events.retrieveTemplateLanguage(),
                },
                callback: function (res) {
                    if (!res.exc) {
                        frm.set_value('outrotext', res.message.html);
                    }
                }
            });
        },
        /**
         * Retrieves the currently set language of the print preview
         *
         * @returns {String}
         */
        retrieveTemplateLanguage: function () {
            var selectedLanguage = $(printPreviewLanguageSelectorIdentifier).val();
            return selectedLanguage ? selectedLanguage : 'de';
        }
    }
);


/**
 * TODO: Please complete the info what this does!
 *
 * TICKET:
 *
 * FUNCTIONALITY:
 *
 */

cur_frm.page.views.print.find('.btn-print-print').remove();
