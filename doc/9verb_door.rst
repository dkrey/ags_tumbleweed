.. highlight:: c

Door functions
==============
:ref:`SetDoorState <SetDoorState>`
:ref:`GetDoorState <GetDoorState>`
:ref:`InitObject <InitObject>`
:ref:`AnyClick <AnyClick>`
:ref:`AnyClickSpecial <AnyClickSpecial>`

This template implements a clever door scripting system, which is a real timesaver if you use a lot of doors.
It uses a hotspot for the closed door and a non-clickable object, to show the opened door.
If you enter a room the first time, you have to set up its containing doors:

::

	function room_FirstLoad()
	{
		// Lock door on startup when entering the room
		Doors.SetDoorState(20, 2);
		Doors.InitObject(20, oDoor.ID);
	}

This will set up a door with the id 20 to the state 2, locked. With "Doors.InitObject", you connect the object, displaying a sprite of an opened door, with the door ID.
Now let's take a look at your hotspot's function:

::

	function hDoor_AnyClick()
	{
		if (Doors.AnyClick(20, oDoor.ID, 61, 104, eDir_Left, 1, 115, 135, eDir_Down)==0) Verbs.Unhandled();
	}

This function is explained in detail later in this document. But for starters, this is all you have to do in the room script.
And looks much harder than it is, just take a look at the sample room, supplied with this template.

If you want to have the script to show the correct default actions, you also need to change a line in the gui-script:
so look for a function, called VariableExtensions.
In Verbs.VariableExtensions, look at this line:

::

	if (r==1 && h == 1)
	Verbs.OpenCloseExtension (20);

This tells the script, that Room 1 contains a hotspot with the id 1. This is connected to a door a door with the id 20.
So now, the right-click should suggest open/close, depending on the door's state.

To define the messages, the player character says, when approaching a door, you can access the array holding those messages anytime. Initially they are setup in the TemplateSettings.asc module.


.. _SetDoorState:

.. index::
	SetDoorState

SetDoorState
------------

::

	void Doors.SetDoorState(int door_id, int value);

Call this function to set a door state for the given door_id.
A door can have 3 different states:

* 0 = The door is closed
* 1 = The door is open
* 2 = The door is closed and locked

*See also:*
:ref:`GetDoorState <GetDoorState>`,
:ref:`InitObject <InitObject>`


.. _GetDoorState:

.. index::
	GetDoorState

GetDoorState
------------

::

	int Doors.GetDoorState(int door_id);

Returns the current state of a door.

0 = The door is closed
1 = The door is open
2 = The door is closed and locked

*See also:*
:ref:`SetDoorState <SetDoorState>`,
:ref:`InitObject <InitObject>`


.. _InitObject:

.. index::
	InitObject

InitObject
-----------

::

	void Doors.InitObject(int door_id, int act_object);

Used to set up the corresponding object, used by the door with the given id. If the state of the door is closed, the object will be invisible.
Otherwise, the object will be shown. The object stays unclickable all the time.

*See also:*
:ref:`SetDoorState <SetDoorState>`


.. _AnyClick:

.. index::
	AnyClick

AnyClick
-----------------

::

	int Doors.AnyClick(int door_id, int act_object, int x, int y, eDirection dir, int nr_room, int nr_x, int nr_y, eDirection nr_dir);

This function is used in the room script in combination with the door hotspot.
Parameters:

* door_id: The door id, you have defined
* act_object: The object, containing the open sprite
* x,y: the walk-to point of the door (please don't use the built in "walk-to coordinates" feature of the room editor.
* dir: the direction, the player's character should face, after it reached x,y
* nr_room: if the door is opened and walking through it, the player is being send to this room
* nr_x,nr_y: the x,y coordinates of inside of the new room
* nr_dir: after the room change, the player faces this direction

This is the main function of the door scripts. With this you connect the hotspot with the door and the player's action.
If you have defined default door sounds, these are also being called in this function. Also you can't unlock a door with this function.
You need Doors.AnyClickSpecial for that.

*See also:*
:ref:`AnyClickSpecial <AnyClickSpecial>`


.. _AnyClickSpecial:

.. index::
	AnyClickSpecial

AnyClickSpecial
-------------------------

::

	int Doors.AnyClickSpecial(int door_id, int act_object, int x, int y, eDirection dir, int nr_room, int nr_x, int nr_y, eDirection nr_dir, AudioClip *opensound, AudioClip *closesound, int key, int closevalue);

This function extends any_click_door with the following parameters:

* opensound: custom sound to be played, when the door is being opend
* closesound: custom sound to be played, when the door is being closed
* key: the id of the inventory item, that can unlock the door, -1 masterkey, -2 if the door cannot be unlocked
* closevalue: default 0 (closed), but you can also set 2 (locked).

*See also:*
:ref:`AnyClickAnyClick <AnyClick>`
