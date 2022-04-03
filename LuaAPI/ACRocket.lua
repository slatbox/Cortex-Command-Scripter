---## Class
---A rocket craft, with main engine and rotation of the whole body as a means of steering.
ACRocket = {}

------------------------------Properties------------------------------
---
---    The class name of this Entity.
---    A string with the friendly-formatted type name of this object.
---
ACRocket.ClassName = nil
---
---    The main thruster.
---    An AEmitter pointer.
---
ACRocket.MainEngine = nil
---
---    The left thruster.
---    An AEmitter pointer.
---
ACRocket.LeftEngine = nil
---
---    The right thruster.
---    An AEmitter pointer.
---
ACRocket.RightEngine = nil
---
---    The left side secondary thruster.
---    An AEmitter pointer.
---
ACRocket.LeftThruster = nil
---
---    The right side secondary thruster.
---    An AEmitter pointer.
---
ACRocket.RightThruster = nil
---
---    The the landing gear state
---    Current landing gear state.
---
ACRocket.GearState = nil
------------------------------Properties------------------------------
---### From Parent Class:ACraft
---
---    The current state of the hatch.
---    An int encoding the hatch state. See the HatchState enum.
---
---### Enum Property:
---#### Values:
---		ACraft.CLOSED
---		ACraft.OPENING
---		ACraft.OPEN
---		ACraft.CLOSING
---		ACraft.HatchStateCount
ACRocket.HatchState = nil
---### From Parent Class:ACraft
---
---    The recomended, not absolute, maximum number of actors that fit in the invetory. Used by the activity AI.
---    An integer with the recomended number of actors that fit in the craft.
---    Default is -1 (unknown).
---
ACRocket.MaxPassengers = nil
------------------------------Properties------------------------------
---### From Parent Class:Actor
---
---    Returns Threshold for taking damage from travel impulses, in kg * m/s
---    Threshold for taking damage from travel impulses, in kg * m/s
---
ACRocket.ImpulseDamageThreshold = nil
---### From Parent Class:Actor
---
---    Returns the current Status of this.
---    The status.
---
---### Enum Property:
---#### Values:
---		Actor.STABLE
---		Actor.UNSTABLE
---		Actor.INACTIVE
---		Actor.DYING
---		Actor.DEAD
ACRocket.Status = nil
---### From Parent Class:Actor
---
---    This Actor's health value.
---    A const int describing this Actor's health.
---
ACRocket.Health = nil
---### From Parent Class:Actor
---
---    This Actor's maximum health value.
---    A const int describing this Actor's max health.
---
ACRocket.MaxHealth = nil
---### From Parent Class:Actor
---
---    Gets how many ounces of gold this Actor is carrying.
---    The current amount of carried gold, in Oz.
---
ACRocket.GoldCarried = nil
---### From Parent Class:Actor
---
---    The limit of this actors aiming angle, in each direction, in radians.
---    The arc range of the aiming angle in radians.
---    Eg if HalfPI, it means full 180 degree range
---
ACRocket.AimRange = nil
---### From Parent Class:Actor
---
---    The absoltue position of this' brain, or equivalent.
---    A Vector with the absolute position of this' brain.
---
ACRocket.CPUPos = nil
---### From Parent Class:Actor
---
---    The absoltue position of this' eye, or equivalent, where look vector starts from.
---    A Vector with the absolute position of this' eye or view point.
---
ACRocket.EyePos = nil
---### From Parent Class:Actor
---
---    The point at which this actor is viewing, or that the scene frame should be centered on if tracking this Actor's
---    view. In absolute scene coordinates.
---    The point in absolute scene coordinates.
---
ACRocket.ViewPoint = nil
---### From Parent Class:Actor
---
---    The approximate height of this Actor, standing up.
---    A float with the approximate height, in pixels.
---
ACRocket.Height = nil
---### From Parent Class:Actor
---
---    This' AI mode.
---    The current AI mode.
---
---### Enum Property:
---#### Values:
---		Actor.AIMODE_NONE
---		Actor.AIMODE_SENTRY
---		Actor.AIMODE_PATROL
---		Actor.AIMODE_GOTO
---		Actor.AIMODE_BRAINHUNT
---		Actor.AIMODE_GOLDDIG
---		Actor.AIMODE_RETURN
---		Actor.AIMODE_STAY
---		Actor.AIMODE_SCUTTLE
---		Actor.AIMODE_DELIVER
---		Actor.AIMODE_BOMB
---		Actor.AIMODE_SQUAD
---		Actor.AIMODE_COUNT
ACRocket.AIMode = nil
---### From Parent Class:Actor
---
---    Returns deployment id of this actor.
---
ACRocket.DeploymentID = nil
---### From Parent Class:Actor
---
---    This' perceptiveness to alarming events going on around him.
---    The current perceptiveness, 0.0 - 1.0
---
ACRocket.Perceptiveness = nil
---### From Parent Class:Actor
---
---    Tells how many things are in the invetory
---    The number of things in the inventory
---
ACRocket.InventorySize = nil
---### From Parent Class:Actor
---
---    Tells how much total mass (in kg) this Actor is recommended to weigh at most INCLUDING his own weight AND all his
---    inventory!
---    The max recommend total mass for this Actor
---
ACRocket.MaxMass = nil
---### From Parent Class:Actor
---
---    Gets how many waypoints there are in the MovePath currently
---    The number of waypoints in the MovePath.
---
ACRocket.MovePathSize = nil
---### From Parent Class:Actor
---
---    The distance between the actor and the view point when not sharp aiming.
---    A const int describing how far this actor aims/looks by default.
---
ACRocket.AimDistance = nil
---### From Parent Class:Actor
---
---    Actor's sight distance.
---
ACRocket.SightDistance = nil
---### From Parent Class:Actor
---
---    Returns total number of wounds of this actor.
---
ACRocket.TotalWoundCount = nil
---### From Parent Class:Actor
---
---    Returns total wound limit of this actor.
---
ACRocket.TotalWoundLimit = nil
------------------------------Properties------------------------------
---### From Parent Class:MOSRotating
---
---    The current recoil impulse force Vector of this MOSprite.
---    A const reference to the current recoil impulse force in kg * m/s.
---
ACRocket.RecoilForce = nil
---### From Parent Class:MOSRotating
---
---    The current recoil offset Vector of this MOSprite.
---    A const reference to the current recoil offset.
---
ACRocket.RecoilOffset = nil
---### From Parent Class:MOSRotating
---
---    Indicates whether this MO is made of Gold or not.
---    Whether this MovableObject is of Gold or not.
---
ACRocket.IsGold = nil
---### From Parent Class:MOSRotating
---
---    Return wound limit for this object.
---    Wound limit of the object.
---
ACRocket.GibWoundLimit = nil
---### From Parent Class:MOSRotating
---
---    Return impulse limit for this object.
---    Impulse limit of the object.
---
ACRocket.GibImpulseLimit = nil
---### From Parent Class:MOSRotating
---
---    Returns damage multiplier of this attachable.
---    Current multiplier value.
---
ACRocket.DamageMultiplier = nil
---### From Parent Class:MOSRotating
---
---    Returns the amount of wound attached to this.
---    Key to retrieve value.
---    Wound amount.
---
ACRocket.WoundCount = nil
------------------------------Properties------------------------------
---### From Parent Class:MOSprite
---
---    The largest diameter of this in pixels.
---    The largest diameter across its graphical representation.
---
ACRocket.Diameter = nil
---### From Parent Class:MOSprite
---
---    The oriented bounding box which is guaranteed to contain this, taking rotation etc into account. It's not guaranteed
---    to be fit perfectly though. TODO: MAKE FIT BETTER
---    A Box which is guaranteed to contain this. Does nto take wrapping into account, and parts of this box may be out of
---    bounds!
---
ACRocket.BoundingBox = nil
---### From Parent Class:MOSprite
---
---    The number of frames in this MOSprite's animation.
---    The frame count.
---
ACRocket.FrameCount = nil
---### From Parent Class:MOSprite
---
---    The offset that the BITMAP has from the position of this
---    MOSprite.
---    A vector with the offset.
---
ACRocket.SpriteOffset = nil
---### From Parent Class:MOSprite
---
---    Returns whether this MOSprite is being drawn flipped horizontally
---    (along the vertical axis), or not.
---    Whether flipped or not.
---
ACRocket.HFlipped = nil
---### From Parent Class:MOSprite
---
---    The current rotational angle of of this, in radians.
---    The rotational angle of this, in radians.
---
ACRocket.RotAngle = nil
---### From Parent Class:MOSprite
---
---    The current angular velocity of this MovableObject. Positive is a counter-clockwise rotation.
---    The angular velocity in radians per second.
---
ACRocket.AngularVel = nil
---### From Parent Class:MOSprite
---
---    Tells which frame is currently set to show.
---    An unsigned int describing the current frame.
---
ACRocket.Frame = nil
---### From Parent Class:MOSprite
---
---    The animation mode.
---    The animation mode currently in effect.
---
---### Enum Property:
---#### Values:
---		MOSprite.NOANIM
---		MOSprite.ALWAYSLOOP
---		MOSprite.ALWAYSRANDOM
---		MOSprite.ALWAYSPINGPONG
---		MOSprite.LOOPWHENACTIVE
---		MOSprite.LOOPWHENOPENCLOSE
---		MOSprite.PINGPONGOPENCLOSE
---		MOSprite.OVERLIFETIME
---		MOSprite.ONCOLLIDE
ACRocket.SpriteAnimMode = nil
------------------------------Properties------------------------------
---### From Parent Class:MovableObject
---
---    The mass value of this MovableObject.
---    A float describing the mass value in Kilograms (kg).
---
ACRocket.Mass = nil
---### From Parent Class:MovableObject
---
---    The velocity vector of this MovableObject.
---    A Vector describing the current velocity vector.
---
ACRocket.Vel = nil
---### From Parent Class:MovableObject
---
---    The largest radius of this in pixels.
---    The radius from its center to the edge of its graphical representation.
---
ACRocket.Radius = nil
---### From Parent Class:MovableObject
---
---    The current scale of this MOSRotating. This is mostly for fun.
---    The normalized scale.
---
ACRocket.Scale = nil
---### From Parent Class:MovableObject
---
---    Gets How this is affected by global effects, from +1.0 to -1.0.
---    Something with a negative value will 'float' upward.
---    The global acceleration scalar.
---
ACRocket.GlobalAccScalar = nil
---### From Parent Class:MovableObject
---
---    How much this is affected by air resistance when traveling over a second, 0 to 1.0, with 0 as default
---    The air resistance coefficient.
---
ACRocket.AirResistance = nil
---### From Parent Class:MovableObject
---
---    At which threshold of velocity, in m/s, the effect of AirResistance kicks in.
---    The air threshold speed.
---
ACRocket.AirThreshold = nil
---### From Parent Class:MovableObject
---
---    Gets real time age of this MovableObject.
---    A unsigned long describing the current age in ms.
---
ACRocket.Age = nil
---### From Parent Class:MovableObject
---
---    The amount of time this MovableObject will exist from creation.
---    A unsigned long describing the current lifetime in ms. 0 means unlimited.
---
ACRocket.Lifetime = nil
---### From Parent Class:MovableObject
---
---    The MOID of this MovableObject for this frame.
---    An int specifying the MOID that this MovableObject is assigned for the current frame only.
---
ACRocket.ID = nil
---### From Parent Class:MovableObject
---
---    Returns this MO's unique persistent ID
---    Returns this MO's unique persistent ID
---
ACRocket.UniqueID = nil
---### From Parent Class:MovableObject
---
---    The MOID of the MovableObject which is the root MO of this MO for this frame. If same as what GetID returns, then
---    this is owned by
---    MovableMan.
---    An int specifying the MOID of the MO that this MovableObject is owned by for the current frame only.
---
ACRocket.RootID = nil
---### From Parent Class:MovableObject
---
---    Gets how many total (subsequent) MOID's this MO and all its children are taking up this frame. ie if this MO has no
---    children, this will likely be 1. Note this is only valid for this frame!
---    The number of MOID indices this MO and all its children are taking up.
---
ACRocket.MOIDFootprint = nil
---### From Parent Class:MovableObject
---
---    The sharpness factor of this MO.
---    The sharpness factor of this MO. 1.0 means normal sharpness, no alter- ation to any of the impulses.
---
ACRocket.Sharpness = nil
---### From Parent Class:MovableObject
---
---    The absoltue position of the top of this' HUD stack.
---    A Vector with the absolute position of this' HUD stack top point.
---
ACRocket.AboveHUDPos = nil
---### From Parent Class:MovableObject
---
---    Gets whether this MovableObject is set to collide with other
---    MovableObject:s during its travel.
---    Whether this hits other MO's during its travel, or not.
---
ACRocket.HitsMOs = nil
---### From Parent Class:MovableObject
---
---    Gets whether this MovableObject is set to be able to get hit by other
---    MovableObject:s during their travel.
---    Whether this can get hit by MO's, or not.
---
ACRocket.GetsHitByMOs = nil
---### From Parent Class:MovableObject
---
---    Tells whether this will collide with any other MO of the same team.
---    Whether this can hit or get hit by other MOs of the same team.
---
ACRocket.IgnoresTeamHits = nil
---### From Parent Class:MovableObject
---
---    Tells which team this would be ignoring hits with, if we're ignoring hits at all.
---    Which team this ignores hits with, if any.
---
ACRocket.IgnoresWhichTeam = nil
---### From Parent Class:MovableObject
---
---    Tells whether this will collide with any Terrain
---    Whether this can hit terrain.
---
ACRocket.IgnoreTerrain = nil
---### From Parent Class:MovableObject
---
---    Indicates whether this MO is marked for settling at the end of the
---    MovableMan update.
---    Whether this MO is marked for settling ontot the terrain or not.
---
ACRocket.ToSettle = nil
---### From Parent Class:MovableObject
---
---    Indicates whether this MO is marked for deletion at the end of the
---    MovableMan update.
---    Whether this MO is marked for deletion or not.
---
ACRocket.ToDelete = nil
---### From Parent Class:MovableObject
---
---    Tells whether this Actor's HUD is drawn or not.
---    Whether this' HUD gets drawn or not.
---
ACRocket.HUDVisible = nil
---### From Parent Class:MovableObject
---
---    The impulse force threshold which has to be exceeded to
---    'shake loose' this from a 'pinned' state. Pinned MOs don't get moved by travel algos. If 0, this isn't pinned.
---    The impulse threshold in kg * (m/s). 0 means no pinning
---
ACRocket.PinStrength = nil
---### From Parent Class:MovableObject
---
---    Returns the unique ID of the particle hit at the previously taken Travel
---    Unique ID of the particle hit at the previously taken Travel.
ACRocket.HitWhatMOID = nil
---### From Parent Class:MovableObject
---
---    Returns the terrain material the previously taken Tarvel hit, if any.
---    The ID of the material, if any, that this MO hit during the last Travel.
---
ACRocket.HitWhatTerrMaterial = nil
------------------------------Properties------------------------------
---### From Parent Class:SceneObject
---
---    The absolute position of this SceneObject.
---    A Vector describing the current absolute position in pixels.
---
ACRocket.Pos = nil
---### From Parent Class:SceneObject
---
---    Gets which team this belongs to.
---    The currently assigned team number.
---
ACRocket.Team = nil
---### From Parent Class:SceneObject
---
---    Gets which player placed this object in the scene, if any.
---    The player responsible for placing this is in the scene, if any.
---
ACRocket.PlacedByPlayer = nil
---### From Parent Class:SceneObject
---
---    Shows whether this should appear in teh buy menus at all.
---    Buyable or not.
---
ACRocket.IsBuyable = nil
---enum value for property:LandingGearState
ACRocket.RAISED=0
---enum value for property:LandingGearState
ACRocket.LOWERED=1
---enum value for property:LandingGearState
ACRocket.LOWERING=2
---enum value for property:LandingGearState
ACRocket.RAISING=3
---enum value for property:LandingGearState
ACRocket.GearStateCount=4
---### From Parent Class:ACraft
---### Description:
---
---Opens the hatch doors, if they're closed or closing.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---None.
function ACRocket:OpenHatch()end
---### From Parent Class:ACraft
---### Description:
---
---Closes the hatch doors, if they're open or opening.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---None.
function ACRocket:CloseHatch()end
---### From Parent Class:Actor
---### Description:
---
---Gets this Actor's Controller. Ownership IS NOT transferred!
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---A const pointer to this Actor's Controller.
function ACRocket:GetController()end
---### From Parent Class:Actor
---### Description:
---
---Tells whether a player is currently controlling this.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---Whether a player is controlling this.
function ACRocket:IsPlayerControlled()end
---### From Parent Class:Actor
---### Description:
---
---Tells wheter the player can switch control to this at all
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---Whether a player can control this at all.
function ACRocket:IsControllable()end
---### From Parent Class:Actor
---### Description:
---
---Sets this Actor's new Controller input mode.
---### Arguments:
---
---Arg1:    The new input mode.
---Arg2:    The player which will control this if the input mode was set to player.
---
---### Return Value:
---
---None.
function ACRocket:SetControllerMode(p1,p2)end
---### From Parent Class:Actor
---### Description:
---
---Sets this Actor's Controller mode and gives back what it used to be.
---### Arguments:
---
---Arg1:    The new mode to set to.
---Arg2:    The player which will control this if the input mode was set to player.
---
---### Return Value:
---
---The old mode that it had before.
function ACRocket:SwapControllerModes(p1,p2)end
---### From Parent Class:Actor
---### Description:
---
---Gets this Actor's aim angle.
---### Arguments:
---
---Arg1:    Whether to adjust the angle for flipping or not.
---
---### Return Value:
---
---The angle, in radians.
function ACRocket:GetAimAngle(p1)end
---### From Parent Class:Actor
---### Description:
---
---Sets this Actor's aim angle.
---### Arguments:
---
---Arg1:    A new angle, in radians.
---
---### Return Value:
---
---None.
function ACRocket:SetAimAngle(p1)end
---### From Parent Class:Actor
---### Description:
---
---Shows whether this is or carries a specifically named object in its inventory. Also looks through the inventories of
---    potential passengers, as applicable.
---### Arguments:
---
---Arg1:    The Preset name of the object to look for.
---
---### Return Value:
---
---Whetehr the object was found carried by this.
function ACRocket:HasObject(p1)end
---### From Parent Class:Actor
---### Description:
---
---Shows whether this is or carries a specifically grouped object in its inventory. Also looks through the inventories
---    of potential passengers, as applicable.
---### Arguments:
---
---Arg1:    The name of the group to look for.
---
---### Return Value:
---
---Whetehr the object in the group was found carried by this.
function ACRocket:HasObjectInGroup(p1)end
---### From Parent Class:Actor
---### Description:
---
---Tells whether a point on the scene is within range of the currently used device and aiming status, if applicable.
---### Arguments:
---
---Arg1:    A Vector witht he aboslute coordinates of a point to check.
---
---### Return Value:
---
---Whether the point is within range of this.
function ACRocket:IsWithinRange(p1)end
---### From Parent Class:Actor
---### Description:
---
---Adds health points to this Actor's current health value.
---### Arguments:
---
---Arg1:    An int specifying the value to add.
---
---### Return Value:
---
---The resulting total health of this Actor.
function ACRocket:AddHealth(p1)end
---### From Parent Class:Actor
---### Description:
---
---Checks if this Actor is in a specific status.
---### Arguments:
---
---Arg1:    Which status to check for.
---
---### Return Value:
---
---A bool with the answer.
function ACRocket:IsStatus(p1)end
---### From Parent Class:Actor
---### Description:
---
---Checks if this Actor is dead.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---A const bool with the answer.
function ACRocket:IsDead()end
---### From Parent Class:Actor
---### Description:
---
---Adjusts an absolute aiming angle based on wether this Actor is facing left or right.
---### Arguments:
---
---Arg1:    The input angle in radians.
---
---### Return Value:
---
---The output angle in radians, which will be unaltered if this Actor is facing right.
function ACRocket:FacingAngle(p1)end
---### From Parent Class:Actor
---### Description:
---
---Adds an absolute scene point to the list of waypoints this is going to go to, in order
---### Arguments:
---
---Arg1:    The new scene point this should try to get to after all other waypoints are reached.
---
---### Return Value:
---
---None.
function ACRocket:AddAISceneWaypoint(p1)end
---### From Parent Class:Actor
---### Description:
---
---Adds an MO in the scene as the next waypoint for this to go to, in order
---### Arguments:
---
---Arg1:    The new MO this should try to get to after all other waypoints are reached.
---Arg2:    OWNERSHIP IS NOT TRANSFERRED!
---
---### Return Value:
---
---None.
function ACRocket:AddAIMOWaypoint(p1,p2)end
---### From Parent Class:Actor
---### Description:
---
---Removes all AI waypoints and clears the current path to the current waypoint. The AI Actor will stop in its tracks.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---None.
function ACRocket:ClearAIWaypoints()end
---### From Parent Class:Actor
---### Description:
---
---Gets the last or furthest set AI waypoint of this. If none, this' pos is returned.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---The furthest set AI waypoint of this.
function ACRocket:GetLastAIWaypoint()end
---### From Parent Class:Actor
---### Description:
---
---Gets how many waypoints this actor have.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---How many waypoints.
function ACRocket:GetWaypointListSize()end
---### From Parent Class:Actor
---### Description:
---
---Clears the list of coordinates in this' current MovePath, ie the path to the next Waypoint.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---None.
function ACRocket:ClearMovePath()end
---### From Parent Class:Actor
---### Description:
---
---Adds a coordinate to the beginning of the MovePath, meaning the one closest to this Actor.
---### Arguments:
---
---Arg1:    The new coordinate to add to the front of the MovePath.
---
---### Return Value:
---
---None.
function ACRocket:AddToMovePathBeginning(p1)end
---### From Parent Class:Actor
---### Description:
---
---Adds a coordinate to the end of the MovePath, meaning the one closest to this Actor's next waypoint.
---### Arguments:
---
---Arg1:    The new coordinate to add to the end of the MovePath.
---
---### Return Value:
---
---None.
function ACRocket:AddToMovePathEnd(p1)end
---### From Parent Class:Actor
---### Description:
---
---Removes a coordinate from the beginning of the MovePath, meaning the one closest to this Actor.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---Whether there was any coordinate to remove. If false, the MovePath is empty.
function ACRocket:RemoveMovePathBeginning()end
---### From Parent Class:Actor
---### Description:
---
---Removes a coordinate from the end of the MovePath, meaning the one farthest from this Actor.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---Whether there was any coordinate to remove. If false, the MovePath is empty.
function ACRocket:RemoveMovePathEnd()end
---### From Parent Class:Actor
---### Description:
---
---Adds an inventory item to this Actor.
---### Arguments:
---
---Arg1:    An pointer to the new item to add. Ownership IS TRANSFERRED!
---
---### Return Value:
---
---None..
function ACRocket:AddInventoryItem(p1)end
---### From Parent Class:Actor
---### Description:
---
---Removes a specified item from the actor's inventory. Only one item is removed at a time.
---### Arguments:
---
---Arg1:    Preset name of an item to remove.
---
---### Return Value:
---
---None.
function ACRocket:RemoveInventoryItem(p1)end
---### From Parent Class:Actor
---### Description:
---
---Swaps the next MovableObject carried by this Actor and puts one not currently carried into the into the back of the
---    inventory of this.
---### Arguments:
---
---Arg1:    A pointer to the external MovableObject to trade in. Ownership IS xferred!
---Arg2:    If 0 is passed in, nothing will be added to the inventory.
---Arg3:    Whether to mute the sound on this event. Override for the loading screen hack.
---
---### Return Value:
---
---The next MovableObject in this Actor's inventory. Ownership IS xferred!
function ACRocket:SwapNextInventory(p1,p2,p3)end
---### From Parent Class:Actor
---### Description:
---
---Swaps the prev MovableObject carried by this Actor and puts one not currently carried into the into the back of the
---    inventory of this.
---### Arguments:
---
---Arg1:    A pointer to the external MovableObject to trade in. Ownership IS xferred!
---Arg2:    If 0 is passed in, nothing will be added to the inventory.
---
---### Return Value:
---
---The prev MovableObject in this Actor's inventory. Ownership IS xferred!
function ACRocket:SwapPrevInventory(p1,p2)end
---### From Parent Class:Actor
---### Description:
---
---Ejects all inventory items that this is carrying. It may not happen instantaneously, so check for ejection being
---    complete with
---    IsInventoryEmpty().
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---None.
function ACRocket:DropAllInventory()end
---### From Parent Class:Actor
---### Description:
---
---Tells whether inventory is completely empty
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---Whether inventory is completely empty.
function ACRocket:IsInventoryEmpty()end
---### From Parent Class:Actor
---### Description:
---
---Tells to make this and all children get drawn as completely white, but only for a specified amount of time.
---### Arguments:
---
---Arg1:    For how long to flash the whiteness, in MS.
---
---### Return Value:
---
---None.
function ACRocket:FlashWhite(p1)end
---### From Parent Class:Actor
---### Description:
---
---Makes this draw its current waypoints and related data on the scene in its HUD drawing stage.
---### Arguments:
---
---Arg1:    Whether to enable or disable the drawing of the waypoints.
---
---### Return Value:
---
---None.
function ACRocket:DrawWaypoints(p1)end
---### From Parent Class:Actor
---### Description:
---
---Sets this' AI's move path to be updated. Will update the path to the current waypoint, if any.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---None.
function ACRocket:SetMovePathToUpdate()end
---### From Parent Class:Actor
---### Description:
---
---Updates this' move path RIGHT NOW. Will update the path to the current waypoint, if any. CAVEAT: this only actually
---    updates if a queue index number passed in is sufficiently close to 0 to allow this to compute, based on an internal
---    global assessment of how often this very expensive computation is allowed to run.
---### Arguments:
---
---Arg1:    The queue number this was given the last time
---
---### Return Value:
---
---Whether the update was performed, or if it should be tried again next frame.
function ACRocket:UpdateMovePath(p1)end
---### From Parent Class:Actor
---### Description:
---
---Makes this alarmed about a certian point on in the scene, overriding the current AI mode until a certain time has
---    passed.
---### Arguments:
---
---Arg1:    The new scene point this should look at and see if anything dangerous is there.
---
---### Return Value:
---
---None.
function ACRocket:SetAlarmPoint(p1)end
---### From Parent Class:Actor
---### Description:
---
---Gets any point on the scene this actor should be alarmed about this frame.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---The new scene point this should look at and see if anything dangerous is there or (0,0) if nothing is
function ACRocket:GetAlarmPoint()end
---### From Parent Class:Actor
---### Description:
---
---Removes a specified amount of wounds from the actor and all standard attachables.
---### Arguments:
---
---Arg1:    Amount of wounds to remove.
---
---### Return Value:
---
---Damage taken from removed wounds.
function ACRocket:RemoveAnyRandomWounds(p1)end
---### From Parent Class:MOSRotating
---### Description:
---
---Adds graphical recoil offset to this MOSprite according to its angle.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---None.
function ACRocket:AddRecoil()end
---### From Parent Class:MOSRotating
---### Description:
---
---Adds recoil offset to this MOSprite.
---### Arguments:
---
---Arg1:    A vector with the recoil impulse force in kg * m/s.
---Arg2:    A vector with the recoil offset in pixels.
---Arg3:    Whether recoil should be activated or not for the next Draw().
---
---### Return Value:
---
---None.
function ACRocket:SetRecoil(p1,p2,p3)end
---### From Parent Class:MOSRotating
---### Description:
---
---Returns whether this MOSprite is currently under the effects of recoil.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---None.
function ACRocket:IsRecoiled()end
---### From Parent Class:MOSRotating
---### Description:
---
---Sets whether or not this MOSRotating should check for deep penetrations the terrain or not.
---### Arguments:
---
---Arg1:    Whether to enable deep penetration checking or not.
---
---### Return Value:
---
---None.
function ACRocket:EnableDeepCheck(p1)end
---### From Parent Class:MOSRotating
---### Description:
---
---Sets to force a deep checking of this' silhouette against the terrain and create an outline hole in the terrain,
---    generating particles of the intersecting pixels in the terrain.
---### Arguments:
---
---Arg1:    Whether to force a deep penetration check for this sim frame or not..
---
---### Return Value:
---
---None.
function ACRocket:ForceDeepCheck(p1)end
---### From Parent Class:MOSRotating
---### Description:
---
---Gibs this, effectively destroying it and creating multiple gibs or pieces in its place.
---### Arguments:
---
---Arg1:    The impulse (kg * m/s) of the impact causing the gibbing to happen. blast impulse which will push the gibs away from
---Arg2:    the center.
---Arg3:    A pointer to an MO which the gibs shuold not be colliding with!
---
---### Return Value:
---
---None.
function ACRocket:GibThis(p1,p2,p3)end
---### From Parent Class:MOSRotating
---### Description:
---
---Checks whether any of the Atom:s in this MovableObject are on top of terrain pixels, and if so, attempt to move this
---    out so none of this'
---    Atoms are on top of the terrain any more.
---### Arguments:
---
---Arg1:    Only consider materials stronger than this in the terrain for intersections.
---
---### Return Value:
---
---Whether any intersection was successfully resolved. Will return true even if there wasn't any intersections to begin
function ACRocket:MoveOutOfTerrain(p1)end
---### From Parent Class:MOSRotating
---### Description:
---
---Gathers and applies the global and accumulated forces. Then it clears out the force list.Note that this does NOT
---    apply the accumulated impulses (impulse forces)!
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---None.
function ACRocket:ApplyForces()end
---### From Parent Class:MOSRotating
---### Description:
---
---Gathers and applies the accumulated impulse forces. Then it clears out the impulse list.Note that this does NOT
---    apply the accumulated regular forces (non-impulse forces)!
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---None.
function ACRocket:ApplyImpulses()end
---### From Parent Class:MOSRotating
---### Description:
---
---Attaches an AEmitter to this MOSRotating.
---### Arguments:
---
---Arg1:    The AEmitter to attach, ownership IS transferred!
---Arg2:    The offset from the origin of this MOSRotating to where the AEmitter's joint is attached.
---Arg3:    Whether to check if this added emitter triggers the GibWoundLimit.. sometimes that's a bad idea if potentially
---Arg4:    gibbing this would cause the m_Attachables list to be messed with while it's being iterated.
---
---### Return Value:
---
---None.
function ACRocket:AttachEmitter(p1,p2,p3,p4)end
---### From Parent Class:MOSRotating
---### Description:
---
---Removes a specified amount of wounds.
---### Arguments:
---
---Arg1:    Amount of wounds to remove.
---
---### Return Value:
---
---Amount of damage, caused by these wounds.
function ACRocket:RemoveWounds(p1)end
---### From Parent Class:MOSRotating
---### Description:
---
---Indicates whether this' current graphical representation overlaps a point in absolute scene coordinates.
---### Arguments:
---
---Arg1:    The point in absolute scene coordinates.
---
---### Return Value:
---
---Whether this' graphical rep overlaps the scene point.
function ACRocket:IsOnScenePoint(p1)end
---### From Parent Class:MOSRotating
---### Description:
---
---Cuts this' silhouette out from the terrain's material and color layers.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---None.
function ACRocket:EraseFromTerrain()end
---### From Parent Class:MOSRotating
---### Description:
---
---Returns the string value associated with the specified key or "" if it does not exist.
---### Arguments:
---
---Arg1:    Key to retrieve value.
---
---### Return Value:
---
---String value.
function ACRocket:GetStringValue(p1)end
---### From Parent Class:MOSRotating
---### Description:
---
---Returns the number value associated with the specified key or 0 if it does not exist.
---### Arguments:
---
---Arg1:    Key to retrieve value.
---
---### Return Value:
---
---Number (double) value.
function ACRocket:GetNumberValue(p1)end
---### From Parent Class:MOSRotating
---### Description:
---
---Returns the object value associated with the specified key or 0 if it does not exist.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---Object (Entity *) value.
function ACRocket:GetObjectValue()end
---### From Parent Class:MOSRotating
---### Description:
---
---Sets the string value associated with the specified key.
---### Arguments:
---
---Arg1:    String key and value to set.
---
---### Return Value:
---
---None.
function ACRocket:SetStringValue(p1)end
---### From Parent Class:MOSRotating
---### Description:
---
---Sets the string value associated with the specified key.
---### Arguments:
---
---Arg1:    String key and value to set.
---
---### Return Value:
---
---None.
function ACRocket:SetNumberValue(p1)end
---### From Parent Class:MOSRotating
---### Description:
---
---Sets the string value associated with the specified key.
---### Arguments:
---
---Arg1:    String key and value to set.
---
---### Return Value:
---
---None.
function ACRocket:SetObjectValue(p1)end
---### From Parent Class:MOSRotating
---### Description:
---
---Remove the string value associated with the specified key.
---### Arguments:
---
---Arg1:    String key to remove.
---
---### Return Value:
---
---None.
function ACRocket:RemoveStringValue(p1)end
---### From Parent Class:MOSRotating
---### Description:
---
---Remove the number value associated with the specified key.
---### Arguments:
---
---Arg1:    String key to remove.
---
---### Return Value:
---
---None.
function ACRocket:RemoveNumberValue(p1)end
---### From Parent Class:MOSRotating
---### Description:
---
---Remove the object value associated with the specified key.
---### Arguments:
---
---Arg1:    String key to remove.
---
---### Return Value:
---
---None.
function ACRocket:RemoveObjectValue(p1)end
---### From Parent Class:MOSRotating
---### Description:
---
---Checks whether the value associated with the specified key exists.
---### Arguments:
---
---Arg1:    String key to check.
---
---### Return Value:
---
---True if value exists.
function ACRocket:StringValueExists(p1)end
---### From Parent Class:MOSRotating
---### Description:
---
---Checks whether the value associated with the specified key exists.
---### Arguments:
---
---Arg1:    String key to check.
---
---### Return Value:
---
---True if value exists.
function ACRocket:NumberValueExists(p1)end
---### From Parent Class:MOSRotating
---### Description:
---
---Checks whether the value associated with the specified key exists.
---### Arguments:
---
---Arg1:    String key to check.
---
---### Return Value:
---
---True if value exists.
function ACRocket:ObjectValueExists(p1)end
---### From Parent Class:MOSprite
---### Description:
---
---Hard-sets the frame this sprite is supposed to show, to the consecutive one after the current one. If currently the
---    last fame is this will set it to the be the first, looping the animation.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---Whether the animation looped or not with this setting.
function ACRocket:SetNextFrame()end
---### From Parent Class:MOSprite
---### Description:
---
---Indicates whether this MO is moving or rotating stupidly fast in a way that will screw up the simulation.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---Whether this is either moving or rotating too fast.
function ACRocket:IsTooFast()end
---### From Parent Class:MOSprite
---### Description:
---
---Takes a vector which is offset from the center of this when not rotated or flipped, and then rotates and/or flips it
---    to transform it into this'
---    'local space', if applicable.
---### Arguments:
---
---Arg1:    A vector which is supposed to be offset from this' center when upright.
---
---### Return Value:
---
---The resulting vector whihch has been flipped and rotated as appropriate.
function ACRocket:RotateOffset(p1)end
---### From Parent Class:MOSprite
---### Description:
---
---Takes a vector which is offset from the center of this when not rotated or flipped, and then rotates and/or flips it
---    to transform it into this'
---    'local space', but in REVERSE.
---### Arguments:
---
---Arg1:    A vector which is supposed to be offset from this' center when upright.
---
---### Return Value:
---
---The resulting vector whihch has been flipped and rotated as appropriate.
function ACRocket:UnRotateOffset(p1)end
---### From Parent Class:MOSprite
---### Description:
---
---Gets the width of the bitmap of this MOSprite
---### Arguments:
---
---Arg1:    0.
---
---### Return Value:
---
---Sprite width if loaded.
function ACRocket:GetSpriteWidth(p1)end
---### From Parent Class:MOSprite
---### Description:
---
---Gets the height of the bitmap of this MOSprite
---### Arguments:
---
---Arg1:    0.
---
---### Return Value:
---
---Sprite height if loaded.
function ACRocket:GetSpriteHeight(p1)end
---### From Parent Class:MovableObject
---### Description:
---
---Reloads the preset scripts of this object, from the same script file path as was originally defined. This will also
---    update the original preset in the PresetMan with the updated scripts so future objects spawned will use the new
---    scripts.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---An error return value signaling sucess or any particular failure.
function ACRocket:ReloadScripts()end
---### From Parent Class:MovableObject
---### Description:
---
---Gets the altitide of this' pos (or appropriate low point) over the terrain, in pixels.
---### Arguments:
---
---Arg1:    The max altitude you care to check for. 0 Means check the whole scene's height.
---Arg2:    The accuracy within which measurement is acceptable. Higher number here means less calculation.
---
---### Return Value:
---
---The rough altitude over the terrain, in pixels.
function ACRocket:GetAltitude(p1,p2)end
---### From Parent Class:MovableObject
---### Description:
---
---Sets this MO to not hit a specific other MO and all its children even though MO hitting is enabled on this MovableObject
---### Arguments:
---
---Arg1:    A pointer to the MO to not be hitting. 0 means don't ignore anyhting.
---Arg2:    Ownership is not transferred!
---Arg3:    For how long, in S, to ignore the above. Negative number means forever.
---
---### Return Value:
---
---None.
function ACRocket:SetWhichMOToNotHit(p1,p2,p3)end
---### From Parent Class:MovableObject
---### Description:
---
---Tells if this MovableObject is marked for deletion at the end of the update.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---Whether this is marked for deletion or not.
function ACRocket:IsSetToDelete()end
---### From Parent Class:MovableObject
---### Description:
---
---Shows whether this is mission critical and should therefore NEVER be settled or otherwise destroyed during teh
---    course of a mission.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---Whetehr this should be immune to settling and destruction.
function ACRocket:IsMissionCritical()end
---### From Parent Class:MovableObject
---### Description:
---
---Indicates whether this MO is an Generic or not.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---Whether this MovableObject is of Type Generic or not.
function ACRocket:IsGeneric()end
---### From Parent Class:MovableObject
---### Description:
---
---Indicates whether this MO is an Actor or not.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---Whether this MovableObject is of Type Actor or not.
function ACRocket:IsActor()end
---### From Parent Class:MovableObject
---### Description:
---
---Indicates whether this MO is a Device or not.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---Whether this MovableObject is of Type Device (Held or Thrown) or not.
function ACRocket:IsDevice()end
---### From Parent Class:MovableObject
---### Description:
---
---Indicates whether this MO is a HeldDevice or not.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---Whether this MovableObject is of Type HeldDevice or not.
function ACRocket:IsHeldDevice()end
---### From Parent Class:MovableObject
---### Description:
---
---Indicates whether this MO is a ThrownDevice or not.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---Whether this MovableObject is of Type ThrownDevice or not.
function ACRocket:IsThrownDevice()end
---### From Parent Class:MovableObject
---### Description:
---
---Indicates whether this MO is made of Gold or not.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---Whether this MovableObject is of Gold or not.
function ACRocket:IsGold()end
---### From Parent Class:MovableObject
---### Description:
---
---Adds force to this MovableObject for the next time Update() is called.
---### Arguments:
---
---Arg1:    An Vector with the external force vector that will be added to this
---Arg2:    MovableObject and affect its path next Update(). In N or kg * m/s^2.
---Arg3:    A Vector with the offset, in METERS, of where the force is being applied relative to the center of this
---Arg4:    MovableObject.
---
---### Return Value:
---
---None.
function ACRocket:AddForce(p1,p2,p3,p4)end
---### From Parent Class:MovableObject
---### Description:
---
---Adds force to this MovableObject for the next time Update() is called.
---### Arguments:
---
---Arg1:    An Vector with the external force vector that will be added to this
---Arg2:    MovableObject and affect its path next Update(). In N or kg * m/s^2.
---Arg3:    A Vector with the absolute world coordinates, in PIXELS, of where the force is being applied to the center of this
---Arg4:    MovableObject.
---
---### Return Value:
---
---None.
function ACRocket:AddAbsForce(p1,p2,p3,p4)end
---### From Parent Class:MovableObject
---### Description:
---
---Adds impulse force (or instant momentum) to this MovableObject for the next time Update() is called.
---### Arguments:
---
---Arg1:    An Vector with the impulse force vector that will directly be added to this MovableObject's momentum next Update().
---Arg2:    In kg * m/s.
---Arg3:    A Vector with the offset, in METERS, of where the impulse is being applied relative to the center of this
---Arg4:    MovableObject.
---
---### Return Value:
---
---None.
function ACRocket:AddImpulseForce(p1,p2,p3,p4)end
---### From Parent Class:MovableObject
---### Description:
---
---Adds impulse force (or instant momentum) to this MovableObject for the next time Update() is called.
---### Arguments:
---
---Arg1:    An Vector with the impulse force vector that will directly be added to this MovableObject's momentum next Update().
---Arg2:    In kg * m/s.
---Arg3:    A Vector with the absolute world coordinates, in PIXELS, of where the force is being applied to the center of this
---Arg4:    MovableObject.
---
---### Return Value:
---
---None.
function ACRocket:AddAbsImpulseForce(p1,p2,p3,p4)end
---### From Parent Class:MovableObject
---### Description:
---
---Clears out all the forces this MO has accumulated during this frame.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---None.
function ACRocket:ClearForces()end
---### From Parent Class:MovableObject
---### Description:
---
---Clears out all the impulses this MO has accumulated during this frame.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---None.
function ACRocket:ClearImpulseForces()end
---### From Parent Class:MovableObject
---### Description:
---
---Does the calculations necessary to detect whether this MO appears to have has settled in the world and is at rest or
---    not. IsAtRest() retreves the answer.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---None.
function ACRocket:RestDetection()end
---### From Parent Class:MovableObject
---### Description:
---
---Makes this MO reset its tiemr that keeps track of how long it's been at rest, effectively delaying it.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---None.
function ACRocket:NotResting()end
---### From Parent Class:MovableObject
---### Description:
---
---Indicates wheter the MovableObject has been at rest (no velocity) for more than one (1) second.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---Wheter the MovableObject has been at rest for more than one full second.
function ACRocket:IsAtRest()end
---### From Parent Class:SceneObject
---### Description:
---
---Gets the cost to purchase this item, in oz's of gold.
---### Arguments:
---
---Arg1:    If this is supposed to be adjusted for a specific Tech's subjective value, then pass in the native DataModule ID of
---Arg2:    that tech. 0 means no Tech is specified and the base value is returned.
---Arg3:    How much to multiply the value if this happens to be a foreign Tech.
---Arg4:    How much to multiply the value if this happens to be a native Tech.
---
---### Return Value:
---
---The cost, in oz of gold.
function ACRocket:GetGoldValue(p1,p2,p3,p4)end
---### From Parent Class:SceneObject
---### Description:
---
---Sets the cost to purchase this item, in oz's of gold.
---### Arguments:
---
---Arg1:    The cost, in oz of gold.
---
---### Return Value:
---
---None.
function ACRocket:SetGoldValue(p1)end
---### From Parent Class:SceneObject
---### Description:
---
---Gets a descriptive string describing the cost to purchase this item, in oz's of gold.
---### Arguments:
---
---Arg1:    If this is supposed to be adjusted for a specific Tech's subjective value, then pass in the native DataModule ID of
---Arg2:    that tech. 0 means no Tech is specified and the base value is returned.
---Arg3:    How much to multiply the value if this happens to be a foreign Tech.
---
---### Return Value:
---
---The cost, described in a friendly to read string: "100oz", or "Free"
function ACRocket:GetGoldValueString(p1,p2,p3)end
---### From Parent Class:SceneObject
---### Description:
---
---Gets the total liquidation value of this, including everything inside.
---### Arguments:
---
---Arg1:    If this is supposed to be adjusted for a specific Tech's subjective value, then pass in the native DataModule ID of
---Arg2:    that tech. 0 means no Tech is specified and the base value is returned.
---Arg3:    How much to multiply the value if this happens to be a foreign Tech.
---
---### Return Value:
---
---The current value of this and all contained assets.
function ACRocket:GetTotalValue(p1,p2,p3)end
---### Description
---Create a new ACRocket object in specific module by its present name.
 ---### Arguments:
 ---		present_name: its present name.
 ---		moudle_name: specify the module the object from."All" for not specified 
---### Return Value:
---		the new object
function CreateACRocket(present_name,module_name) return ACRocket end
---### Description
---Create a new ACRocket object randomly in specific group and module.
 ---### Arguments:
 ---		group_name_name: the specific group.
 ---		moudle_name: specify the module the object from."All" for not specified
---### Return Value:
 ---		the new object
function RandomACRocket(group_name,module_name) return ACRocket end
---### Description
---Clone a ACRocket object.
 ---### Arguments:
 ---		object:the object to clone.
 ---### Return Value:
 ---		the cloned object
function CloneACRocket(object) return ACRocket end
---### Description
---cast a object to ACRocket object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToACRocket(object) return ACRocket end
---### Description
---cast a object to ACRocket const object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToConstACRocket(object) return ACRocket end
---### Description
---tell whether the type of an object is ACRocket type.
 ---### Arguments:
 ---		object:the object.
 ---### Return Value:
 ---		boolean
function IsACRocket(object) end
