// Legacy Layer
// 
// This module provides the old functions from the 9-Verb MI-Style template.
//
// Remove the commented blocks below only, if you are upgrading your game from the 9-Verb MI-Style template
// and need the old function calls.
// If you start a new game, it is save to delete this module.


/*
// for compatibility reasons
enum eDirection {
  eDir_None  = 0, 
  eDir_Up    = eDirectionUp, 
  eDir_Left  = eDirectionLeft, 
  eDir_Right = eDirectionRight, 
  eDir_Down  = eDirectionDown
};


// ============================= Math & Helper Functions =========================================
import int Absolute(int value);
import int Offset(int point1, int point2);
import int getButtonAction(int action);
import function disable_gui();
import function enable_gui();
import bool is_gui_disabled();
import int GlobalCondition(eGlobCond condition);
import function GetLucasSavegameListBox(ListBox*lb);
import function set_double_click_speed(int speed);
import function InitGuiLanguage();

// ============================= Verb Action Functions ===========================================
import function UsedAction (Action test_action);
import bool isAction(Action test_action);
import function SetActionButtons(Action action, String button_definition);
import function SetDefaultAction(Action def_action);
import function SetAction(Action new_action);
import function SetAlternativeAction(char extension, Action alt_action);
import function CheckDefaultAction();
import function UpdateActionBar();

// ============================= Player/character functions =======================================
import function freeze_player();
import function unfreeze_player();
import function SetPlayer(Character*ch);
import function Go();
import function set_approaching_char(bool enable);
// ================ Cancelable, semi-blocking move-player-character functions =====================
import int MovePlayer(int x, int y);
import int GoToCharacter(Character*charid, CharacterDirection dir, bool NPCfacesplayer, int blocking);
import int NPCGoToCharacter(Character*charidwhogoes, Character*charidtogoto, CharacterDirection dir, bool NPCfacesplayer, int blocking);
import int MovePlayerEx(int x, int y, WalkWhere direct);
import int GoToCharacterEx(Character*chwhogoes, Character*ch, CharacterDirection dir, int xoffset, int yoffset, bool NPCfacesplayer, int blocking);
import int any_click_move(int x, int y, CharacterDirection dir);
import int any_click_walk(int x, int y, CharacterDirection dir);
import int any_click_walk_look(int x, int y, CharacterDirection dir, String lookat);
import int any_click_walk_look_pick(int x, int y, CharacterDirection dir, String lookat, int objectID, InventoryItem*item, AudioClip *sound=false);

import int any_click_use_inv (InventoryItem*item, int x, int y, CharacterDirection dir);
import function GoTo(int blocking);
// ============================= Unhandled Events =================================================
import function Unhandled(int door_script=0);

// ============================= Door functions ==========================================
import function set_door_state(int door_id, int value);
import int get_door_state(int door_id);
import function init_object(int door_id, int act_object);
import function set_door_strings(String lookat =false, String islocked =false, String wrongitem =false, String closefirst =false, String unlock =false, String relock =false);
import String get_door_strings(String what_type);
import int any_click_on_door(int door_id, int act_object, int x, int y, CharacterDirection dir, int nr_room, int nr_x, int nr_y, CharacterDirection nr_dir);
import int any_click_on_door_special (int door_id, int act_object, int x, int y, CharacterDirection dir, int nr_room, int nr_x, int nr_y, CharacterDirection nr_dir, AudioClip *opensound, AudioClip *closesound, int key, int closevalue);

// ============================= translation ====================================================
import String clearToSpace(String text);
import int getInteger();
import function TranslateAction(int action, int tr_lang=eLangEN);
import function AdjustLanguage();
import function AdjustGUIText();

// ============================= Extensions functions ==========================================
import function RemoveExtension();
import function AddExtension(char extension);
import char Extension();
import function OpenCloseExtension(int door_id);
import function VariableExtensions();
*/