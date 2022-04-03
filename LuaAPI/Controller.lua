---## Class
---A class controlling MovableObject:s through either player input, networking, scripting, AI, etc.
Controller = {}

------------------------------Properties------------------------------
---
---    The current mode of input for this Controller.
---    The InputMode that this controller is currently using.
---
---### Enum Property:
---#### Values:
---		Controller.CIM_DISABLED
---		Controller.CIM_PLAYER
---		Controller.CIM_AI
---		Controller.CIM_NETWORK
---		Controller.CIM_INPUTMODECOUNT
Controller.InputMode = nil
---
---    Gets which Actor is being controlled by this. 0 if none.
---    A pointer to the Actor which is being controlled by this. Ownership is NOT transferred!
Controller.ControlledActor = nil
---
---    The Team number using this controller.
---    An int representing the team which this Controller belongs to. 0 is the first team. 0 if no team is using it.
---
Controller.Team = nil
---
---    The analog movement input data.
---    A vector with the analog movement data, both axes ranging form -1.0 to 1.0.
---
Controller.AnalogMove = nil
---
---    The analog aiming input data.
---    A vector with the analog aiming data, both axes ranging form -1.0 to 1.0.
---
Controller.AnalogAim = nil
---
---    The analog menu input data.
---    A vector with the analog menu data, both axes ranging form -1.0 to 1.0.
---
Controller.AnalogCursor = nil
---
---    Gets which player's input this is listening to, if in player input mode.
---    The player number, or -1 if not in player input mode.
---
Controller.Player = nil
---
---    The relative movement of the mouse since last update. Only returns true if this' player is actually set up to be
---    using the mouse.
---    The relative mouse movements, in both axes.
---
Controller.MouseMovement = nil
---
---    Shows whether this is disabled.
---    Whether disabled.
---
Controller.Disabled = nil
---enum value for property:ControlState
Controller.RIMARY_ACTION=0
---enum value for property:ControlState
Controller.ECONDARY_ACTION=1
---enum value for property:ControlState
Controller.OVE_IDLE=2
---enum value for property:ControlState
Controller.OVE_RIGHT=3
---enum value for property:ControlState
Controller.OVE_LEFT=4
---enum value for property:ControlState
Controller.OVE_UP=5
---enum value for property:ControlState
Controller.OVE_DOWN=6
---enum value for property:ControlState
Controller.OVE_FAST=7
---enum value for property:ControlState
Controller.ODY_JUMPSTART=8
---enum value for property:ControlState
Controller.ODY_JUMP=9
---enum value for property:ControlState
Controller.BODY_CROUCH=10
---enum value for property:ControlState
Controller.AIM_UP=11
---enum value for property:ControlState
Controller.AIM_DOWN=12
---enum value for property:ControlState
Controller.AIM_SHARP=13
---enum value for property:ControlState
Controller.WEAPON_FIRE=14
---enum value for property:ControlState
Controller.WEAPON_RELOAD=15
---enum value for property:ControlState
Controller.PIE_MENU_ACTIVE=16
---enum value for property:ControlState
Controller.WEAPON_CHANGE_NEXT=17
---enum value for property:ControlState
Controller.WEAPON_CHANGE_PREV=18
---enum value for property:ControlState
Controller.WEAPON_PICKUP=19
---enum value for property:ControlState
Controller.WEAPON_DROP=20
---enum value for property:ControlState
Controller.ACTOR_NEXT=21
---enum value for property:ControlState
Controller.ACTOR_PREV=22
---enum value for property:ControlState
Controller.ACTOR_BRAIN=23
---enum value for property:ControlState
Controller.ACTOR_NEXT_PREP=24
---enum value for property:ControlState
Controller.ACTOR_PREV_PREP=25
---enum value for property:ControlState
Controller.HOLD_RIGHT=26
---enum value for property:ControlState
Controller.HOLD_LEFT=27
---enum value for property:ControlState
Controller.HOLD_UP=28
---enum value for property:ControlState
Controller.HOLD_DOWN=29
---enum value for property:ControlState
Controller.PRESS_PRIMARY=30
---enum value for property:ControlState
Controller.PRESS_SECONDARY=31
---enum value for property:ControlState
Controller.PRESS_RIGHT=32
---enum value for property:ControlState
Controller.PRESS_LEFT=33
---enum value for property:ControlState
Controller.PRESS_UP=34
---enum value for property:ControlState
Controller.PRESS_DOWN=35
---enum value for property:ControlState
Controller.RELEASE_PRIMARY=36
---enum value for property:ControlState
Controller.RELEASE_SECONDARY=37
---enum value for property:ControlState
Controller.PRESS_FACEBUTTON=38
---enum value for property:ControlState
Controller.SCROLL_UP=39
---enum value for property:ControlState
Controller.SCROLL_DOWN=40
---enum value for property:ControlState
Controller.DEBUG_ONE=41
---enum value for property:ControlState
Controller.CONTROLSTATECOUNT=42
---enum value for property:InputMode
Controller.CIM_DISABLED=0
---enum value for property:InputMode
Controller.CIM_PLAYER=1
---enum value for property:InputMode
Controller.CIM_AI=2
---enum value for property:InputMode
Controller.CIM_NETWORK=3
---enum value for property:InputMode
Controller.CIM_INPUTMODECOUNT=4
---### Description:
---
---Shortcut to indicate if in player input mode.
---### Arguments:
---
---Arg1:    If you want to check if it's controlled by a player, AND that player is someone else than a specific one, pass in
---Arg2:    that player number here.
---
---### Return Value:
---
---Whether input mode is set to player input.
function Controller:IsPlayerControlled(p1,p2)end
---### Description:
---
---Adds relative movement to a passed-in vector. Uses the appropriate input method currently of this.
---### Arguments:
---
---Arg1:    The vector to alter.
---Arg2:    The scale of the input. 1.0 is 'normal'.
---
---### Return Value:
---
---Whether the vector was altered or not.
function Controller:RelativeCursorMovement(p1,p2)end
---### Description:
---
---Indicated whether this is listening to mouse input at all.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---Whether this is using mouse input at all.
function Controller:IsMouseControlled()end
---### Description:
---
---Sets one of this controller's states.
---### Arguments:
---
---Arg1:    Which state to set and which value to set it to.
---
---### Return Value:
---
---None.
function Controller:SetState(p1)end
---### Description:
---
---Shows whether the current controller is in a specific state.
---### Arguments:
---
---Arg1:    Which state to check.
---
---### Return Value:
---
---Whether the controller is in the specified state.
function Controller:IsState(p1)end
---### Description
---Create a new Controller object in specific module by its present name.
 ---### Arguments:
 ---		present_name: its present name.
 ---		moudle_name: specify the module the object from."All" for not specified 
---### Return Value:
---		the new object
function CreateController(present_name,module_name) return Controller end
---### Description
---Create a new Controller object randomly in specific group and module.
 ---### Arguments:
 ---		group_name_name: the specific group.
 ---		moudle_name: specify the module the object from."All" for not specified
---### Return Value:
 ---		the new object
function RandomController(group_name,module_name) return Controller end
---### Description
---Clone a Controller object.
 ---### Arguments:
 ---		object:the object to clone.
 ---### Return Value:
 ---		the cloned object
function CloneController(object) return Controller end
---### Description
---cast a object to Controller object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToController(object) return Controller end
---### Description
---cast a object to Controller const object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToConstController(object) return Controller end
---### Description
---tell whether the type of an object is Controller type.
 ---### Arguments:
 ---		object:the object.
 ---### Return Value:
 ---		boolean
function IsController(object) end
