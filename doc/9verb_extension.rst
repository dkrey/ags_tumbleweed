.. _Extensions:

Extensions
==========

:ref:`RemoveExtension <RemoveExtension>`
:ref:`AddExtension <AddExtension>`
:ref:`Extension <Extension>`
:ref:`ExtensionEx <ExtensionEx>`
:ref:`OpenCloseExtension <OpenCloseExtension>`
:ref:`VariableExtensions <VariableExtensions>`

Extensions are used to define the default action for the right-click. You can add extensions to characters, hotspots, objects and inventory items.
To add an extension, e.g. chose an object in the room editor and take a look at the description (not the name).
In the sample room, we have an object, called Cup. In addition to the name we have an angle bracket and the letter p:

::

	Cup>p

The bracket acts as a seperator for the extension, the letter tells the script, which default action to use. By default, the template knows about the following extensions:

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

If you like to customize or add these extensions, take a look at the function CheckDefaultAction.

You don't have to add an extension for every object and hotspot. The template also adds some default actions on it's own.
The default action for Characters is "talk to", for Hotspots and Objects, it's look at.
Inventory items are handled a little differently, the right-click always causes "look at", no matter what. If you left-click an
item, it's usually "use with". But if you have added the extension "u", the action will be simply "use".
Clicking the verb button "use" and the item afterwards would cause the same action. But it could seem a little bit unpredictable,
whether an item can used by a verb button or not. With this shortcut you can make things a little bit easier.
You can see this behaviour in the sample room, when opening the letter. Otherwise you would have needed something else to interact with it.
But with the use-extension, it is getting opened by a single left-click. The exit extension is covered in the following chapter.

*See also:*
:ref:`CheckDefaultAction <CheckDefaultAction>`


.. _RemoveExtension:

.. index::
	RemoveExtension

RemoveExtension
---------------

::

	void Verbs.RemoveExtension();

Used to remove the extension from a location (Hotspots, Objects etc.), so it doesn't get displayed in the status bar.


.. _AddExtension:

.. index::
	AddExtension

AddExtension
------------

::

	void Verbs.AddExtension(char extension);

Used to add a default extension in case the location doesn't have one.


.. _Extension:

.. index::
	Extension

Extension
---------

::

	char Verbs.Extension();

Returns the first extention of a location.


.. _ExtensionEx:

.. index::
	ExtensionEx

ExtensionEx
-----------

::

	char Verbs.ExtensionEx(int index, String name);

Returns the n-th extension of the given string. This is currently used for exit extensions.



.. _OpenCloseExtension:

.. index::
	OpenCloseExtension

OpenCloseExtension
------------------

::

	void Verbs.OpenCloseExtension(int door_id);

Used in combination with the door scripts. This function returns a close extension, if the door with the given id is open and vice versa.


.. _VariableExtensions:

.. index::
	VariableExtensions

VariableExtensions
------------------

::

	void Verbs.VariableExtensions();

This function is called, if you have have set "v" as an extension for a certain location. Currently it is used for the OpenClose extension,
but of course you can add your own variable extensions here, for example "turn on / turn off".

