.. highlight:: c

Introduction
============

*Tumbleweed Verbs*
is a template that allows you to recreate those classic SCUMM games, 
as well as the modern iteration Thimbleweed Park(tm) by Terrible Toybox, Inc.

If you like to create a game with this template, you have to re-think some concepts you use when creating a game with AGS.

The two new concepts are: event handling and default actions, using extensions.

Let's take a look at the event handling, or in other words: stuff that happens after you have clicked on something.
Normally you create a function for each event of an object, a hotspot etc. Functions like cup_Interact() or cup_Look().
Using this template you only need one the any click event. Inside these functions you
distinguish between the different interactions. So a typical any_click function looks like this:

::

	function cup_AnyClick()
	{
		// LOOK AT
		if(Verbs.UsedAction(eGA_LookAt)) {
			player.Say("It's a blue cup.");
		}
		// USE
		else if(Verbs.UsedAction(eGA_Use)) {
			player.Say("I'd rather pick it up.");
		}
		// PICKUP
		else if(Verbs.UsedAction(eGA_PickUp)) {
			player.Say("Okay.");
			Verbs.AnyClickWalkLookPick(108, 100, eDir_Up, "You are now mine.",oCup.ID, iCup);
		}
		//USE INV
		else if(Verbs.UsedAction(eGA_UseInv)) {
			Verbs.Unhandled();
		}
		// don't forget this
		else Verbs.Unhandled();
	}

	
The function "AnyClickWalkLookPick" is explained in the scripting reference. 
:ref:`AnyClickWalkLookPick <AnyClickWalkLookPick>`

So you see, everything is inside a single function, instead 4 seperate functions. Also instead of checking the cursormodes, the function Verbs.UsedAction is called to 
determine the event/action. The current defined actions are:

::

	eGA_LookAt, eGA_TalkTo, eGA_GiveTo, eGA_PickUp, eGA_Use, eGA_Open, eGA_Close, eGA_Push, eGA_Pull,eGA_UseInv, eGA_Default and eMG_WalkTo

For inventory items, it's a little bit different, because there is no any_click event in the room editor. So you first start with "other click on inventory item", 
which creates the function iCup_OtherClick (in case you have an item, called iCup).
Now copy this function name and paste it at other events, like Interact, look, talk and so on. In the end, you only have one function name in all five events. 
You can also take a look at the sample items.

The second main aspect of the GUI are the extensions. You add an extension to a location (Hotspots, Objects etc.) by
editing its description.

For example, let's take an object. In the sample room, the object is called oCup and the description is simply "Cup". When move the cursor over this cup 
and no extension is defined, the default action will be "look at". Also the corresponding verb button in the gui starts to highlight. 
Now we can change this behaviour with adding an angeled bracket, followed by one of the following letters:

* n: nothing / default
* g: give to
* p: pick up
* u: use
* o: open
* l: look at
* s: push
* c: close
* t: talk to
* y: pull
* v: variable extension
* e: exit

Let's give oCup the description "Cup>p". Now the right-click action has changed. If you now move the mouse on the cup, the verb button "Pick Up" is highlighted. 
If you right-click the object, the any_click function from above is called. It checks for the used action and will perform the chosen action.
:ref:`Extensions <Extensions>` are also explained in the function reference.


The last thing you should know about, is the global variable "ItemGiven". If you like to give an item to a character, use this variable to check, 
which item has been given. For example:

::

	if (Verbs.UsedAction(eGA_GiveTo))
	{
		if (ItemGiven == iCup)
		{
			player.Say("Do you want this Cup?");
			cBman.Say("No, thank you.");
		}
		else if (ItemGiven == iKey)
		{
			player.Say("Is that your key?");
			cBman.Say("Of course. You have it from me.");
		}
		else Verbs.Unhandled();
	}
	else Verbs.Unhandled();

If you need to use "ItemGiven" in other scripts than the global one, you need to import it manually. It's not defined via global variable pane inside the AGS editor.


Using Inventory Items
=====================

There are currently three ways of using an inventory item, you can choose from.

#.  "Use" only
	For this, you need to add the use-extention ">u" to the description of the item and an event function for "Interact inventory item". 
	If you have followed the instructions in this manual you probably already have it there. This option might come handy for a watch. 
	Clicking on it always gives you the current time. You can not give it away or use it with different items.
	
#.  "Use" and "Use with"
	Here you need to remove the use-extension from the description, but still keep the event function. 
	This allows the player to directly use the item by clicking on the "use"-verb first. Directly clicking the items results in "use-with". Sticking
	to the watch-example: using the watch with the verb-button sets an alarm. Clicking directly on it in the inventory results in "use with", 
	so you can use the watch with a shelf to hide it there. But please note that it might be hard for the player to understand, 
	that using the verb button and using the inventory directly are two different things.

#.  "Use with" only
	For the last option, you need to remove the use-extension and remove the event function. 
	Yep, that's right: on the right side of "Interact inventory item" is no function at all. 
	If you then use the item, whether it's via the verb-button or a direct click, the action always stays "use with".


Exit Extensions
===============

You can add an exit extension to hotspots and objects. Clicking on such a hotspot will make the player walk to it and change the room afterwards. 
There are several advantages compared to the usual methods like 'screen edges' or stand-on hotspot functions:

* works with objects and vertical hotspots (like cave entrances)
* supports double click to skip the walking
* optional walking off the screen: if you set the exit hotspot towards a screen edge, you can make the player leave the screen and change the room after that.


This is how it works:
First of all create your hotspot and let it have the '>e' extension. Now switch over to the events (that little flash) and add the Usermode_1 hotspot event. 
Eventually you'll end in the room script with a function called 'hExit_Mode8'.
In that function, all you have to do is to script the room change. e.g.

::

	player.EnterRoom(1, 76, 111, eDir_Right, true);

This function is almost similar to the AGS function player.ChangeRoom, you can look it up in the function reference below.
If you want the player to leave the screen, you have to change the extension of the hotspot. These ones are possible:

* el: left
* er: right
* eu: up
* ed: down

If you have an exit on the right side of your screen and want the player to leave the screen on that side, your hotspot description should be called:

::

	Exit>er

Now the character will walk to the clicked location and keeps on walking for another 30 extra pixels.
That offset can be changed in the script header.
If you simply call your hotspot:

::

	Exit>e

No additional walking will occur. This is useful for exits not being at the screen border. There's also an example in the second room of the demo template.


Language & Translation
======================

Currently the GUI supports German, French, Spanish, Portuguese and Dutch. If you like to help translating this template, please drop me a PM at the AGS Forums.

If you like to create your game in a different language than english, you need to set it up. At guiscript.asc you'll find the line:

::

	int lang = eLangEN;

At the time of writing, valid values are: eLangEN, eLangES, eLangFR, eLangDE and eLandNL. Setting this variable to one of these values will translate all your GUIs, 
including all provided dialogs. The unhandled events will stay unchanged however. Those are still needed to be changed directly.
To switch the language in a .trs translation file, tell your translators to look out for the line.

::

	GUI_LANGUAGE

Now simply translate that line with *DE, EN, ES, FR, PT or NL* to set the GUI to the corresponding language.