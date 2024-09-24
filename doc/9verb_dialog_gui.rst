.. highlight:: c

Custom Dialog GUI
=================

This template includes a module for custom dialog rendering. The out-of-the-box dialog functionality is very basic and doesn't resemble the look-and-feel of the older SCUMM games.
This module enables lots of optional features, but most users might just want to change the sprites of the scrolling arrows and a few colors.
You can customize all settings in the TemplateSettings script.


Parameters
----------
:eDialogGui_hide_gui_while_dialog: Activate this to hide the action GUI while a dialog is active.
:eDialogGui_gui_xpos: Top-Left corner of the Dialog GUI X
:eDialogGui_gui_ypos: Top-Left corner of the Dialog GUI Y
:eDialogGui_gui_width: width of the whole dialog GUI
:eDialogGui_gui_height: height of the whole dialog GUI
:eDialogGui_xscreenborder: min horizontal distance of the GUI, overrides gui_xpos
:eDialogGui_yscreenborder: min vertical distance of the GUI, overrides gui_ypos
:eDialogGui_text_font: The font used to print dialog options
:eDialogGui_text_alignment: Text alignment: eAlignLeft eAlignRight eAlignCenter
:eDialogGui_text_color: Default text color
:eDialogGui_text_color_active: text color of selected / active dialog options
:eDialogGui_text_color_chosen: text color of previously chosen options
:eDialogGui_text_bg: sprite slot of an optional background image for the dialog option
:eDialogGui_text_bg_xpos: x position of the background image for the dialog option
:eDialogGui_text_bg_scaling: enable scaling of the background image for the dialog option
:eDialogGui_text_bg_transparency: enable transparency of the background image for the dialog option
:eDialogGui_text_line_space: pixel spacing between text lines
:eDialogGui_text_numbering: enable auto line numbering
:eDialogGui_scroll_rows: amount of rows to be scrolled per click
:eDialogGui_bullet: bullet image for dialog options
:eDialogGui_mousewheel: enable scrolling via mousewheel
:eDialogGui_reset_scrollstate: always begin the dialog with the first option available
:eDialogGui_dialog_options_upwards: First option on the bottom, last option on top
:eDialogGui_uparrow_img: Sprite slot for the up-arrow button
:eDialogGui_uparrow_hi_img: Sprite slot for the highlighted up-arrow button
:eDialogGui_uparrow_xpos: x position for the up-arrow image
:eDialogGui_uparrow_ypos: y position for the up-arrow image
:eDialogGui_downarrow_img: Sprite slot for the down-arrow button
:eDialogGui_downarrow_hi_img: Sprite slot for the highlighted down-arrow button
:eDialogGui_downarrow_xpos: x position for the down-arrow image
:eDialogGui_downarrow_ypos: y position for the down-arrow image
:eDialogGui_auto_arrow_align: Autoalign scroll buttons, 0 = off, 1 = left, 2= center, 3=right
:eDialogGui_auto_arrow_up_offset_x: x-offset between the up-arrow sprite and the GUI edge
:eDialogGui_auto_arrow_up_offset_y: y-offset between the up-arrow sprite and the GUI edge
:eDialogGui_auto_arrow_down_offset_x: x-offset between the down-arrow sprite and the GUI edge
:eDialogGui_auto_arrow_down_offset_y: y-offset between the down-arrow sprite and the GUI edge
:eDialogGui_border_top: inner top border of the GUI
:eDialogGui_border_bottom: inner bottom border of the GUI
:eDialogGui_border_left: inner left border of the GUI
:eDialogGui_border_right: inner right border of the GUI
:eDialogGui_border_visible: a single 1px border line around the GUI
:eDialogGui_border_color: color of the border if visible
:eDialogGui_bg_img: background image of the dialog GUI
:eDialogGui_bg_img_scaling: enable scaling of background image
:eDialogGui_bg_img_transparency: set the transparency bg image, if it doesn't come with an alpha channel
:eDialogGui_bg_color: background color of the GUI
:eDialogGui_autosize_height: default height of the GUI, autoresize overrides width and height settings above
:eDialogGui_autosize_width: default width of the GUI, autoresize overrides width and height settings above
:eDialogGui_autosize_minheight: min height of the GUI, autoresize overrides width and height settings above
:eDialogGui_autosize_minwidth: min width of the GUI, autoresize overrides width and height settings above
:eDialogGui_autosize_maxheight: max height of the GUI, autoresize overrides width and height settings above
:eDialogGui_autosize_maxwidth: max width of the GUI, autoresize overrides width and height settings above

