/**
 * TICKET: BRO-917
 *
 * FUNCTIONALITY:
 * Loads and renders the intro and outro templates of this form upon loading an entry of said form.
 * The templates need to have the naming scheme that they end in ' - Intro' respectively ' - Outro'.
 */

const formName = 'Sales Order';
const keepTemplatesCheckbox = 'keep_custom_templates';
const renderTemplatesButton = 'render_templates';
const fieldNameTemplateLanguage = 'template_language';
const introText = 'introtext';
const outroText = 'outrotext';

frappe.ui.form.on(
    formName,  // Name of the form
    {
        onload: function (frm) {
            toggleReadOnly(frm);
            if (frm.doc[keepTemplatesCheckbox] === 1 && frm.doc.docstatus === 0) {  // Only if the user did check the box
                frm.events.renderTemplate(frm);  // Directly render the template on page load
            }
        },
        /**
         * Renders the intro and outro templates
         *
         * @param frm  The current form object
         */
        renderTemplate: function (frm) {
            let defaultTemplate = frm.meta.default_print_format;  // e.g. 'Sales Invoice Template'

            // Render and insert `introtext`
            frappe.call({
                method: 'frappe.www.printview.get_html_and_style',
                args: {
                    doc: frm.doc,
                    print_format: defaultTemplate + ' - Intro',
                    no_letterhead: 0,
                    _lang: frm.events.retrieveTemplateLanguage(frm),
                },
                callback: function (res) {
                    if (!res.exc) {
                        frm.set_value('introtext', res.message.html);
                        frm.events.updateEditor(frm);
                    } else {
                        console.error("Could not set the value for 'introtext'");
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
                    _lang: frm.events.retrieveTemplateLanguage(frm),
                },
                callback: function (res) {
                    if (!res.exc) {
                        frm.set_value('outrotext', res.message.html);
                        frm.events.updateEditor(frm);
                    } else {
                        console.error("Could not set the value for 'outrotext'");
                    }
                }
            });
        },
        /**
         * Updates the DOM so that the text inside of the editor is correct again.
         */
        updateEditor: function (frm, editorName) {
            $('body').find(`[data-fieldname="${editorName}"]`).find('.note-editable').html(frm.doc[editorName])
        },
        /**
         * Retrieves the currently set language of the print preview
         *
         * @returns {String}
         */
        retrieveTemplateLanguage: function (frm) {
            let selectedLanguage = frm.doc[fieldNameTemplateLanguage];
            if (selectedLanguage === 'Deutsch') {
                return 'de';
            } else if (selectedLanguage === 'English') {
                return 'en';
            } else {
                return 'de';
            }
        }
    }
);

/**
 * Re-render the templates upon pressing the respective button
 */
frappe.ui.form.on(
    formName,  // Name of the form
    renderTemplatesButton,  // Name of the button
    function (frm) {
        frm.events.renderTemplate(frm);
    }
);

/**
 * Changes fields to read only if keepTemplatesCheckbox is checked
 * @param frm
 */
function toggleReadOnly(frm) {
    let toggled = frm.doc[keepTemplatesCheckbox] !== 1;
    frm.toggle_enable(outroText, toggled);
    frm.toggle_enable(introText, toggled);
}

/**
 * Sets read only if keepTemplatesCheckbox is changed and re-renders the template if needed
 */
frappe.ui.form.on(
    formName,
    keepTemplatesCheckbox,
    function (frm) {
        toggleReadOnly(frm);
        if (frm.doc[keepTemplatesCheckbox] === 1) {
            frm.events.renderTemplate(frm);
        }
    }
);

/**
 * Upon selecting a different value via the `fieldNameTemplateLanguage` 'Select' field,
 * re-render both templates.
 */
frappe.ui.form.on(
    formName,  // Name of the form
    fieldNameTemplateLanguage,  // Name of 'Select' field
    function (frm) {
        frm.events.renderTemplate(frm);
    }
);
