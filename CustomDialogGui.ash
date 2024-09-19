// Script header for module 'dialogscript'
//
// Custom dialog GUI script for sleek scrollable dialogs
//
// This script is compatible with AGS 3.4 and higher
//
//
// Licence:
//
//   CustomDialogGui AGS script module
//   Copyright (C) 2008 - present Dirk Kreyenberg
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to 
// deal in the Software without restriction, including without limitation the
// rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
// sell copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in 
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL 
// THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING 
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
// DEALINGS IN THE SOFTWARE.


enum eDialogGuiOptions {
  // Activate this to hide the action GUI while a dialog is active.
  eDialogGui_hide_gui_while_dialog, 
  // Top-Left corner of the Dialog GUI X
  eDialogGui_gui_xpos,
  eDialogGui_gui_ypos,
  //Size of the whole Dialog GUI
  eDialogGui_gui_width, 
  eDialogGui_gui_height, 
  // xyscreeenborders define the closest distance to the screen.
  // This overrides gui_xpos and ypos.
  eDialogGui_yscreenborder, 
  eDialogGui_xscreenborder, 
  // the font
  eDialogGui_text_font,
  // font alignment
  eDialogGui_text_alignment,
  // default font color
  eDialogGui_text_color,
  // active font color
  eDialogGui_text_color_active,
  // font color for already chosen options
  eDialogGui_text_color_chosen, 
  // background image for the dialog options
  eDialogGui_text_bg, 
  // x position of the image
  eDialogGui_text_bg_xpos,
  // enable scaling of the background image
  eDialogGui_text_bg_scaling, 
  // enable transparency of the background image
  eDialogGui_text_bg_transparency, 
  // pixel spacing between text lines
  eDialogGui_text_line_space, 
  // enable auto line numbering
  eDialogGui_text_numbering, 
  // amount of rows to be scrolled per click
  eDialogGui_scroll_rows, 
  // bullet image for dialog options
  eDialogGui_bullet,
  // enable scrolling via mousewheel
  eDialogGui_mousewheel, 
  // Always begins the dialog with the first option available
  eDialogGui_reset_scrollstate, 
  // First option on the bottom, last option on top
  eDialogGui_dialog_options_upwards,
  // Image Number and GUI-coordinates for the Up-Arrow image
  eDialogGui_uparrow_img, 
  eDialogGui_uparrow_hi_img, 
  eDialogGui_uparrow_xpos, 
  eDialogGui_uparrow_ypos,
  // Image Number and GUI-coordinates for the Down-Arrow image
  eDialogGui_downarrow_img, 
  eDialogGui_downarrow_hi_img, 
  eDialogGui_downarrow_xpos, 
  eDialogGui_downarrow_ypos, 
  // Autoalign arrows so you don't need to supply XY-coordinates 
  eDialogGui_auto_arrow_align,
  // Define the offset between the arrow sprite and the GUI edge
  eDialogGui_auto_arrow_up_offset_x, 
  eDialogGui_auto_arrow_up_offset_y, 
  eDialogGui_auto_arrow_down_offset_x, 
  eDialogGui_auto_arrow_down_offset_y, 
  // borders - also needed for the scroll arrows
  eDialogGui_border_top, 
  eDialogGui_border_bottom, 
  eDialogGui_border_left, 
  eDialogGui_border_right,
  // show gui borders
  eDialogGui_border_visible, 
  // color of the border if visible
  eDialogGui_border_color, 
  // background image of the dialog GUI
  eDialogGui_bg_img, 
  // enable scaling of background image
  eDialogGui_bg_img_scaling, 
  // set the transparency bg image, if it doesn't come with an alpha channel
  eDialogGui_bg_img_transparency,
  // background color of the GUI
  eDialogGui_bg_color, 
  // autoresize, overrides your width and height setting
  eDialogGui_autosize_height, 
  eDialogGui_autosize_width, 
  eDialogGui_autosize_minheight, 
  eDialogGui_autosize_maxheight, 
  eDialogGui_autosize_minwidth, 
  eDialogGui_autosize_maxwidth
};



struct CustomDialogGui {
  import static attribute int DialogGuiOptions[];
};

// Sets some global vars
import void prepare(static CustomDialogGui, DialogOptionsRenderingInfo *info); // $AUTOCOMPLETEIGNORE$
// sets Dialog options up.
import void addOption(static CustomDialogGui, int position, int optionNumber, String optionText); // $AUTOCOMPLETEIGNORE$
//  get active option numbers, texts and their max height
import void getOptionDetails(static CustomDialogGui, DialogOptionsRenderingInfo *info); // $AUTOCOMPLETEIGNORE$
// get the Number of Rows
import void getRowCount(static CustomDialogGui, int width); // $AUTOCOMPLETEIGNORE$
// Sets the scrolling state back to the first option
import void resetScrollPosition(static CustomDialogGui);

