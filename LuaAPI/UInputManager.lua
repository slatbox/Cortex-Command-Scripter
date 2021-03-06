---## Class
---The singleton manager over the user input.
local UInputManager = {}

------------------------------Properties------------------------------
---
---Returns the state of the Alt key.
---Returns the state of the Alt key.
---
UInputManager.FlagAltState = nil
---
---Returns the state of the Ctrl key.
---Returns the state of the Ctrl key.
---
UInputManager.FlagCtrlState = nil
---
---Returns the state of the Shift key.
---Returns the state of the Shift key.
---
UInputManager.FlagShiftState = nil
---### Description:
---
---Shows whether a specific input element was depressed between the last update and the one previous to it.
---### Arguments:
---
---Arg1:Which player to check, and which element of that player.
---
---### Return Value:
---
---Pressed or not.
function UInputManager:ElementPressed(p1)end
---### Description:
---
---Shows whether a specific input element was released between the last update and the one previous to it.
---### Arguments:
---
---Arg1:Which player to check, and which element of that player.
---
---### Return Value:
---
---Pressed or not.
function UInputManager:ElementReleased(p1)end
---### Description:
---
---Shows whether a specific input element was held during the last update.
---### Arguments:
---
---Arg1:Which player to check, and which element of that player.
---
---### Return Value:
---
---Pressed or not.
function UInputManager:ElementHeld(p1)end
---### Description:
---
---Shows whether a key was depressed between the last update and the one previous to it.
---### Arguments:
---
---Arg1:A const char with the Allegro-defined key enumeration to test.
---
---### Return Value:
---
---Pressed or not.
function UInputManager:KeyPressed(p1)end
---### Description:
---
---Shows whether a key was released between the last update and the one previous to it.
---### Arguments:
---
---Arg1:A const char with the Allegro-defined key enumeration to test.
---
---### Return Value:
---
---Released or not.
function UInputManager:KeyReleased(p1)end
---### Description:
---
---Shows whether a key is being held right now.
---### Arguments:
---
---Arg1:A const char with the Allegro-defined key enumeration to test.
---
---### Return Value:
---
---Held or not.
function UInputManager:KeyHeld(p1)end
---### Description:
---
---Shows the scancode of the keyboard key which is currently down.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---The scancode (KEY_SPACE, etc) of the first keyboard key in the keyboard buffer. 0 means none.
function UInputManager:WhichKeyHeld()end
---### Description:
---
---Shows whether a the mouse wheel has been moved past the threshold limit in either direction this frame.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---The direction the mouse wheel has been moved which is past tht threshold
function UInputManager:MouseWheelMoved()end
---### Description:
---
---Shows whether a joy button was depressed between the last update and the one previous to it.
---### Arguments:
---
---Arg1:Which joystick to check, and which button on that joystick.
---
---### Return Value:
---
---Pressed or not.
function UInputManager:JoyButtonPressed(p1)end
---### Description:
---
---Shows whether a joy button was released between the last update and the one previous to it.
---### Arguments:
---
---Arg1:Which joystick to check, and which button on that joystick.
---
---### Return Value:
---
---Released or not.
function UInputManager:JoyButtonReleased(p1)end
---### Description:
---
---Shows whether a joystick button is being held down right now.
---### Arguments:
---
---Arg1:Which joystick to check, and which button on that joystick.
---
---### Return Value:
---
---Held or not.
function UInputManager:JoyButtonHeld(p1)end
---### Description:
---
---Shows the first joystick button which was pressed down since last frame.
---### Arguments:
---
---Arg1:Which joystick to check.
---
---### Return Value:
---
---The first button in the sequence of button enumerations (JOY_1, JOY_2,
function UInputManager:WhichJoyButtonPressed(p1)end
---### Description:
---
---Shows whether a joystick axis direction was depressed between the last update and the one previous to it.
---### Arguments:
---
---Arg1:Which joystick, stick, axis and direction to check.
---
---### Return Value:
---
---Pressed or not.
function UInputManager:JoyDirectionPressed(p1)end
---### Description:
---
---Shows whether a joystick d-pad direction was released between the last update and the one previous to it.
---### Arguments:
---
---Arg1:Which joystick, stick, axis and direction to check.
---
---### Return Value:
---
---Released or not.
function UInputManager:JoyDirectionReleased(p1)end
---### Description:
---
---Shows whether a joystick axis is being held down in a specific direction right now. Two adjacent directions can be held down to produce diagonals.
---### Arguments:
---
---Arg1:Which joystick, stick, axis and direction to check.
---
---### Return Value:
---
---Held or not.
function UInputManager:JoyDirectionHeld(p1)end
---### Description:
---
---Gets the analog moving values of a specific player's control scheme.
---### Arguments:
---
---Arg1:Which player to get em for.
---
---### Return Value:
---
---The analog axis values ranging between -1.0 to 1.0, in both axes.
function UInputManager:AnalogMoveValues(p1)end
---### Description:
---
---Gets the analog aiming values of a specific player's control scheme.
---### Arguments:
---
---Arg1:Which player to get em for.
---
---### Return Value:
---
---The analog axis values ranging between -1.0 to 1.0, in both axes.
function UInputManager:AnalogAimValues(p1)end
---### Description:
---
---Set the mouse's analog emualtion output to be of a specific normalized magnitude.
---### Arguments:
---
---Arg1:The normalized magnitude, between 0 and 1.0.
---
---### Return Value:
---
---None.
function UInputManager:SetMouseValueMagnitude(p1)end
---### Description:
---
---Gets the normalized value of a certain joystick's stick's axis.
---### Arguments:
---
---Arg1:Which joystick, stick and axis to check.
---
---### Return Value:
---
---The analog axis value ranging between -1.0 to 1.0, or 0.0 to 1.0 if it's a throttle type control.
function UInputManager:AnalogAxisValue(p1)end
---### Description:
---
---Gets the analog values of a certain joystick device stick.
---### Arguments:
---
---Arg1:Which joystick to check, and which stick on that joystick device.
---
---### Return Value:
---
---The analog axis values ranging between -1.0 to 1.0.
function UInputManager:AnalogStickValues(p1)end
---### Description:
---
---Reports if any, and which player is using the mouse for control at this time.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Which player is using the mouse. If noone is, then -1 is returned;
function UInputManager:MouseUsedByPlayer()end
---### Description:
---
---Return true if there is any mouse button presses at all
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Whether any mouse buttons have been pressed at all since last frame
function UInputManager:AnyMouseButtonPress()end
---### Description:
---
---Sets the mouse to be trapped in the middle of the screen, so it doesn't go out and click on other windows etc. This is usually used when the cursor is invisible and only relative mouse movements are used.
---### Arguments:
---
---Arg1:Whether to trap the mouse or not.
---Arg2:Which player is trying ot control the mouse. Only the player with actual control over the mouse will affect its trapping here. -1 means change mouse trapping regardless of player.
---
---### Return Value:
---
---None.
function UInputManager:TrapMousePos(p1,p2)end
---### Description:
---
---Gets the relative movement of the mouse since last update. Only returns true if the selected player actuall is using the mouse.
---### Arguments:
---
---Arg1:Which player to get em for. If the player doesn't use the mouse, then this always returns a zero vector.
---
---### Return Value:
---
---The relative mouse movements, in both axes.
function UInputManager:GetMouseMovement(p1)end
---### Description:
---
---Will temporarily disable positioniong of the mouse. This is so that when focus is swtiched back to the game window, it avoids having the window fly away because the user clicked the title bar of the window.
---### Arguments:
---
---Arg1:Whether to disable or not.
---
---### Return Value:
---
---None.
function UInputManager:DisableMouseMoving(p1)end
---### Description:
---
---Sets the absolute screen position of the mouse cursor.
---### Arguments:
---
---Arg1:Where to place the mouse.
---Arg2:Which player is trying ot control the mouse. Only the player with actual control over the mouse will affect its trapping here. -1 means do it regardless of player.
---
---### Return Value:
---
---None.
function UInputManager:SetMousePos(p1,p2)end
---### Description:
---
---Forces the mouse within a box on the screen.
---### Arguments:
---
---Arg1:The top left corner of the screen box to keep the mouse within, in screen coodinates.
---Arg2:The dimensions of the box, width/height.
---Arg3:Which player is trying ot control the mouse. Only the player with actual control over the mouse will affect its trapping here. -1 means do it regardless of player.
---
---### Return Value:
---
---None.
function UInputManager:ForceMouseWithinBox(p1,p2,p3)end
---### Description:
---
---Forces the mouse within a specific player's screen area.
---### Arguments:
---
---Arg1:Which player's screen's are to constrain the mouse to. Only the player with actual control over the mouse will affect its trapping here.
---
---### Return Value:
---
---None.
function UInputManager:ForceMouseWithinPlayerScreen(p1)end
---### Description:
---
---Return true if there is any joystick input at all, buttons or d-pad.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Whether any buttons of pads are pressed at all.
function UInputManager:AnyJoyInput()end
---### Description:
---
---Return true if there is any joystick presses at all, buttons or d-pad.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Whether any buttons or pads have been pressed at all since last frame.
function UInputManager:AnyJoyPress()end
---### Description:
---
---Return true if there is any joystick button presses at all, but not d-pad input, for a specific joystick.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Whether any joy buttons have been pressed at all since last frame, of a specific joystick.
function UInputManager:AnyJoyButtonPress()end
---### Description:
---
---Return true if there is any input at all, keyboard or buttons or d-pad.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Whether any buttons of pads are pressed at all.
function UInputManager:AnyInput()end
---### Description:
---
---Return true if there is any key, button, or d-pad presses at all.
---MUST call Update before calling this for it to work properly!
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Whether any buttons of pads have been pressed at all since last frame.
function UInputManager:AnyPress()end
---### Description:
---
---Return true if there is any start key/button presses at all.
---MUST call Update before calling this for it to work properly!
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Whether any start buttons or keys have been pressed at all since last frame.
function UInputManager:AnyStartPress()end
UInputMan = UInputManager