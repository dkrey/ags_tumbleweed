Translation
===========

:ref:`TranslateAction <TranslateAction>`
:ref:`AdjustLanguage <AdjustLanguage>`
:ref:`AdjustGUIText <AdjustGUIText>`

To make the verbs work with translations, strings are being used to define the button graphics, hotkeys and so on. 
If you like to customize your game or get it translated, you need to take a closer look at the function AdjustLanguage.

.. _TranslateAction:

.. index::
	TranslateAction
	
TranslateAction
---------------

::

	void Verbs.TranslateAction(int action, int tr_lang);

This function defines the text for the verb buttons, e.g. if you click on the talk verb button, "Talk to" is being displayed in the action/status bar. The second parameter defines the returned language. If you want to customize this text, you have to edit this function.


.. _AdjustLanguage:

.. index::
	AdjustLanguage
	
AdjustLanguage
--------------

::

	void Verbs.AdjustLanguage();

This function has to be called from inside the template's game_start() function. 
It sets up everything related to the verb buttons, so you need to take a look at this, if you want to customize your GUI. 
It is also import to understand, how this function works, if you want to get you game translated.
If you take a closer look at this function, you will notice the following lines:

::

    Verbs.SetActionButtons(eGA_Open,    0, 59, 60, 'q');
    Verbs.SetActionButtons(eGA_Close,   1, 61, 62, 'a');
    Verbs.SetActionButtons(eGA_GiveTo,  2, 63, 64, 'z');

and so on.

Your verb buttons are initialized here, by calling the function SetActionButtons. 
The parameters define the following: 
* Defined Action/Verb
* GUI-button ID
* Spriteslot normal
* Sprite slot highlighted
* Keyboard-Shortcut.


This line 

::

    Verbs.SetActionButtons(eGA_GiveTo,  2, 63, 64, 'z');
	
tells the AGS:

* We want to define a button for the verb "Give"
* The buttons has the GUI-ID 2. If you take a look at the GUI "gMaingui", you can see several buttons. The one with the ID 2 will be used for the action you define here.
* The button will use the spriteslot 63 as the default graphic and 
* spriteslot 64, if it's highlighted. This can be a little bit confusing, since if you look at gMaingui, those graphics have already been assigned. But you also need to define the graphics slots in this function, because eventually these are the ones being used.
* The last parameter defines the hotkey for this action.

You might wonder, why this function overrides the values of gMaingui. 
But in some other languages the translation for use could be a very long word, so you might want to swap it with something else. 
E.g. in german "use" means "Benutze", so you need more space for the verb. But "pick up" can be translated to "nimm", so you save some space here. 

Unlike the 9Verb MI-Style template, the fonts can be customized and overwritten in AdjustGUIText().

*See also:*
:ref:`SetActionButtons <SetActionButtons>`


.. _AdjustGUIText:

.. index::
	AdjustGUIText
	
AdjustGUIText
--------------

::

	void Verbs.AdjustGUIText();

This function will also be called inside the template's game_start() function.
Here you can modify the labels of your GUI buttons for the options GUI. In case you need it, you can also define alternative fonts for different languages.

*See also:*
:ref:`AdjustLanguage <AdjustLanguage>`