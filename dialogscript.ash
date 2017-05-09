// Script header for module 'dialogscript'
//
// simplified custom dialog gui based on v.1.6.3
//
// This script is compatible with AGS 3.2 and higher
// Therefore it doesn't work with AGS 3.1 and below.
//
//
// Licence:
//
//   CustomDialogGui AGS script module
//   Copyright (C) 2008 - 2015 Dirk Kreyenberg
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



struct CustomDialogGui {
  import function init();
  DialogOptionsRenderingInfo *dialog_window;
  bool hide_gui_while_dialog;
  int gui_xpos;
  int gui_ypos;
  int gui_width;
  int gui_height;

  bool autosize_height;
  bool autosize_width;
  int yscreenborder;
  int xscreenborder;
  int autosize_minheight;
  int autosize_maxheight;
  int autosize_minwidth;
  int autosize_maxwidth;  
  int auto_arrow_align;
  int auto_arrow_up_offset_x;
  int auto_arrow_up_offset_y;
  int auto_arrow_down_offset_x;
  int auto_arrow_down_offset_y;  
  
  int bullet;
  
  int uparrow_img;
  int uparrow_hi_img;
  int uparrow_push_img;
  int uparrow_xpos;
  int uparrow_ypos;
  
  int downarrow_img;
  int downarrow_hi_img;
  int downarrow_push_img;
  int downarrow_xpos;
  int downarrow_ypos;

  float scroll_btn_delay;
  int border_top;
  int border_bottom;
  int border_left;
  int border_right;
  int border_visible;
  int border_color;

  bool mousewheel;
  bool reset_scrollstate;
  bool dialog_options_upwards;
  int bg_img; 
  int bg_img_scaling;
  int bg_img_transparency;
  int bg_color;
  int scroll_rows;

  int text_font;
  int text_color;
  int text_color_active;
  int text_alignment;
  int text_bg;
  int text_bg_xpos;
  int text_bg_scaling;
  int text_bg_transparency;  
  int text_line_space;
  int text_numbering;

  // internal Stuff from here on
  int scroll_from;
  int scroll_to;
  
  int max_option_height;
  int max_option_width;
  int active_options_count;  
  int locked_xpos;
  int locked_ypos;
  int uparrow_current_img;
  int downarrow_current_img;  
};

struct CDG_Arrow {
  int x1;
  int y1;
  int x2;
  int y2;
};

import CustomDialogGui CDG;


