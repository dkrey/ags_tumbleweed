.. highlight:: c

Math and Helper Functions
=========================

:ref:`Verbs.Distance <Distance>`
:ref:`Offset <Offset>`
:ref:`GetButtonAction <GetButtonAction>`
:ref:`DisableGui <DisableGui>`
:ref:`EnableGui <EnableGui>`
:ref:`IsGuiDisabled <IsGuiDisabled>`
:ref:`GlobalCondition <GlobalCondition>`
:ref:`InitGuiLanguage <InitGuiLanguage>`
:ref:`HandleInvArrows <HandleInvArrows>`
:ref:`SetDoubleClickSpeed <SetDoubleClickSpeed>`

.. _Distance:
.. index::
	Distance

Distance
--------

::

	float Verbs.Distance(int x1, int y1, int x2, int y2);

Returns the distance between two coordinates


.. _Offset:

.. index::
	Offset

Offset
------

::

	int Verbs.Offset(int point1, int point2);

Returns the offset between to two given values.


.. _GetButtonAction:

.. index::
	GetButtonAction

GetButtonAction
---------------

::

	int Verbs.GetButtonAction(int action);

Returns the connected action of a verb button. The actions for the verb buttons are not "hard-wired" inside the GUI-script, but defined in the function SetButtonAction.

*See also:*
:ref:`SetActionButtons <SetActionButtons>`,
:ref:`AdjustLanguage <AdjustLanguage>`


.. _DisableGui:

.. index::
	DisableGui

DisableGui
-----------

::

	void Verbs.DisableGui();

This functions disables the GUI and hides it.

*See also:*
:ref:`IsGuiDisabled <IsGuiDisabled>`,
:ref:`EnableGui <EnableGui>`


.. _EnableGui:

.. index::
	EnableGui

EnableGui
-----------

::

	void Verbs.EnableGui();

This function enables the GUI again.

*See also:*
:ref:`IsGuiDisabled <IsGuiDisabled>`,
:ref:`DisableGui <DisableGui>`


.. _IsGuiDisabled:

.. index::
	IsGuiDisabled

IsGuiDisabled
---------------

::

	bool Verbs.IsGuiDisabled();

Returns true, if the GUI is currently disabled, false otherwise

*See also:*
:ref:`DisableGui <DisableGui>`


.. _GlobalCondition:

.. index::
	GlobalCondition

GlobalCondition
---------------

::

	int Verbs.GlobalCondition(int parameter);

Used to check for conditions that are used many times in the script. For example, it's used to check, if the mouse cursor is in the inventory and the mode walk or pickup are selected.
Returns 1, if the condition is true and 0 otherwise.



.. _InitGuiLanguage:

.. index::
	InitGuiLanguage

InitGuiLanguage
---------------

::

	void Verbs.InitGuiLanguage();

This is a helper function to set the correct sprites for the verb GUI.


.. _SetDoubleClickSpeed:

.. index::
	SetDoubleClickSpeed

SetDoubleClickSpeed
-------------------

::

	void Verbs.SetDoubleClickSpeed(int speed)

Defines the double click speed


.. _HandleInvArrows:

.. index::
	HandleInvArrows

HandleInvArrows
---------------

::

	void Verbs.HandleInvArrows()

Takes care of showing or hiding the inventory scroll sprites.


Unhandled Events
================

In order to give a the player a feedback for actions the author hasn't thought of, unhandled events come into play.
With a single function, you can achieve something like "That doesn't work" or "I can't pull that",
which makes a game much more authentic and alive. The messages itself are defined outside of this function, initially in the TemplateSettings.asc


.. _Unhandled:

.. index::
	Unhandled

Unhandled
---------

::

	void Verbs.Unhandled(int door_script);

Use this function at the end of your any_click functions in order to cause default reactions. For example:

::

	function cChar_AnyClick()
	{
		if (Verbs.UsedAction(eGA_LookAt)) player.Say("He looks like he is hungry.");
		else Verbs.Unhandled();
	}

In this example, you get a default reaction for everything but look at. The optional parameter is only used internally to make the function work with the door scripts.

