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
  eDialogGui_hide_gui_while_dialog, 
  eDialogGui_gui_xpos, 
  eDialogGui_gui_ypos, 
  eDialogGui_gui_width, 
  eDialogGui_gui_height, 
  eDialogGui_yscreenborder, 
  eDialogGui_xscreenborder, 
  eDialogGui_text_font, 
  eDialogGui_text_alignment, 
  eDialogGui_text_color, 
  eDialogGui_text_color_active, 
  eDialogGui_text_bg, 
  eDialogGui_text_bg_xpos, 
  eDialogGui_text_bg_scaling, 
  eDialogGui_text_bg_transparency, 
  eDialogGui_text_line_space, 
  eDialogGui_text_numbering, 
  eDialogGui_scroll_rows, 
  eDialogGui_bullet, 
  eDialogGui_mousewheel, 
  eDialogGui_reset_scrollstate, 
  eDialogGui_dialog_options_upwards, 
  eDialogGui_uparrow_img, 
  eDialogGui_uparrow_hi_img, 
  eDialogGui_uparrow_xpos, 
  eDialogGui_uparrow_ypos, 
  eDialogGui_downarrow_img, 
  eDialogGui_downarrow_hi_img, 
  eDialogGui_downarrow_xpos, 
  eDialogGui_downarrow_ypos, 
  eDialogGui_auto_arrow_align, 
  eDialogGui_auto_arrow_up_offset_x, 
  eDialogGui_auto_arrow_up_offset_y, 
  eDialogGui_auto_arrow_down_offset_x, 
  eDialogGui_auto_arrow_down_offset_y, 
  eDialogGui_border_top, 
  eDialogGui_border_bottom, 
  eDialogGui_border_left, 
  eDialogGui_border_right, 
  eDialogGui_border_visible, 
  eDialogGui_border_color, 
  eDialogGui_bg_img, 
  eDialogGui_bg_img_scaling, 
  eDialogGui_bg_img_transparency, 
  eDialogGui_bg_color, 
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

import void prepare(static CustomDialogGui, DialogOptionsRenderingInfo *info); // $AUTOCOMPLETEIGNORE$
import void addOption(static CustomDialogGui, int position, int optionNumber, String optionText); // $AUTOCOMPLETEIGNORE$
import void getOptionDetails(static CustomDialogGui, DialogOptionsRenderingInfo *info); // $AUTOCOMPLETEIGNORE$
import void getRowCount(static CustomDialogGui, int width); // $AUTOCOMPLETEIGNORE$
import void resetScrollPosition(static CustomDialogGui);

