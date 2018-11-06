// Script header
// Options, Save and Load Dialog functionality
//
// The MIT License (MIT)
// 
// Copyright (c) 2017 - present Dirk Kreyenberg
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

// ============================= Load/Save game ===========================================
#ifdef __VERB_GUI_MODULE__ //make sure module's dependencies are here

    #define __OPTION_GUI_MODULE__ //Tell the other modules that this module is available
    
    #define SAVE_SLOTS 9 

    struct CustomSave {
      import static attribute int slotSprite;
      import static attribute int slotSpriteHi;
      import static attribute FontType font;
      
      import static void SetGui(GUI* gui,  GUI* confirmGui = 0);
      
      import static void InitSaveDialog();
      import static void ShowSaveDialog();
      import static void DisableSaveButtons();
      import static void EnableSaveButtons();
      import static void SelectSaveSlot(int control_id);
      
      import static void SaveNo();
      import static void SaveYes();
      import static void SaveCancel();
    };
    
    struct CustomLoad {
      import static attribute int slotSprite;
      import static attribute int slotSpriteHi;
      import static attribute FontType font;
      
      import static void SetGui(GUI* gui,  GUI* confirmGui = 0);
      
      import static void InitLoadDialog();
      import static void ShowLoadDialog();
      import static void SelectLoadSlot(int control_id);
  
      import static void LoadCancel();
    };
    
    
    struct OptionGui {
   
      import static void Default();

      import static void CreateScreenshot(FontType font);
      
      import static void ShowOptions();
      import static void OnClick(GUIControl *control, MouseButton button);
      import static void OnSliderChange(GUIControl *control);
    };
#endif