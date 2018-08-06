.. highlight:: c

Changes
=======
What has changed between 9-Verbs MI-Style and Tumbleweed Verbs?
Continue reading if you plan to upgrade your project to this template.

#. 	All commands are grouped inside structs to provide some sort of namespace.
	This makes it easier to distinct template functions and AGS functions.
	In the past you may have written your scripts like this:

	::

		if ( MovePlayer(160,160) == 1 ) player.Say("I'm there!");

	In Tumbleweed Verbs you write it like this:

	::

		if ( Verbs.MovePlayer(160,160) == 1 ) player.Say("I'm there!");

	Not much has changed, you just have to put *Verbs.* in front of according template functions.

	Currently these two structs are included in this template:
	* Verbs - contains all template functions
	* Doors - contains all door scripts and functions

#. All functions are now in CamelCase and start with a capital letter. Some functions have been renamed to match this convention. E.g. any_click_move turned into AnyClickMove.

#. Saving an loading is now completely different. If you want to continue using your old textbox based GUIs, you need to import them from your former project. Also the function GetLucasSavegameListBox is not provided anymore by this template.

#. All actions in the enum start with eGA (enum Global Action). Therefore eMA_WalkTo turned into eGA_WalkTo and eMA_Default is now eGA_Default

#. The game_start function (or better: it's contents) moved from the globalscript to verbgui.asc

#. SetActionButtons now takes real parameters instead of an endless space-seperated string. If you need custom fonts, you now define them in AdjustGUIText().

#. The on_key_press function moved from the globalscript to verbui.asc

#. Internal variables have been renamed, e.g. GSloctype is now location_type.


Legacy Layer
============
I decided to remove this feature as most people prefer not to switch the template in the middle of a project.
