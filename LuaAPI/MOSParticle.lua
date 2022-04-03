---## Class
---A small animated sprite that plays its animation and changes the animation and playback speed when it collides with other things.
MOSParticle = {}

------------------------------Properties------------------------------
---
---The class name of this Entity.
---A string with the friendly-formatted type name of this object.
---
MOSParticle.ClassName = nil
---
---The current framerate of the animation playback.
---The current framerate in frames per second.
---
MOSParticle.Framerate = nil
---
---Indicates whether this MO is made of Gold or not.
---Whether this MovableObject is of Gold or not.
---
MOSParticle.IsGold = nil
------------------------------Properties------------------------------
---### From Parent Class:MOSprite
---
---    The largest diameter of this in pixels.
---    The largest diameter across its graphical representation.
---
MOSParticle.Diameter = nil
---### From Parent Class:MOSprite
---
---    The oriented bounding box which is guaranteed to contain this, taking rotation etc into account. It's not guaranteed
---    to be fit perfectly though. TODO: MAKE FIT BETTER
---    A Box which is guaranteed to contain this. Does nto take wrapping into account, and parts of this box may be out of
---    bounds!
---
MOSParticle.BoundingBox = nil
---### From Parent Class:MOSprite
---
---    The number of frames in this MOSprite's animation.
---    The frame count.
---
MOSParticle.FrameCount = nil
---### From Parent Class:MOSprite
---
---    The offset that the BITMAP has from the position of this
---    MOSprite.
---    A vector with the offset.
---
MOSParticle.SpriteOffset = nil
---### From Parent Class:MOSprite
---
---    Returns whether this MOSprite is being drawn flipped horizontally
---    (along the vertical axis), or not.
---    Whether flipped or not.
---
MOSParticle.HFlipped = nil
---### From Parent Class:MOSprite
---
---    The current rotational angle of of this, in radians.
---    The rotational angle of this, in radians.
---
MOSParticle.RotAngle = nil
---### From Parent Class:MOSprite
---
---    The current angular velocity of this MovableObject. Positive is a counter-clockwise rotation.
---    The angular velocity in radians per second.
---
MOSParticle.AngularVel = nil
---### From Parent Class:MOSprite
---
---    Tells which frame is currently set to show.
---    An unsigned int describing the current frame.
---
MOSParticle.Frame = nil
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
MOSParticle.SpriteAnimMode = nil
------------------------------Properties------------------------------
---### From Parent Class:MovableObject
---
---    The mass value of this MovableObject.
---    A float describing the mass value in Kilograms (kg).
---
MOSParticle.Mass = nil
---### From Parent Class:MovableObject
---
---    The velocity vector of this MovableObject.
---    A Vector describing the current velocity vector.
---
MOSParticle.Vel = nil
---### From Parent Class:MovableObject
---
---    The largest radius of this in pixels.
---    The radius from its center to the edge of its graphical representation.
---
MOSParticle.Radius = nil
---### From Parent Class:MovableObject
---
---    The current scale of this MOSRotating. This is mostly for fun.
---    The normalized scale.
---
MOSParticle.Scale = nil
---### From Parent Class:MovableObject
---
---    Gets How this is affected by global effects, from +1.0 to -1.0.
---    Something with a negative value will 'float' upward.
---    The global acceleration scalar.
---
MOSParticle.GlobalAccScalar = nil
---### From Parent Class:MovableObject
---
---    How much this is affected by air resistance when traveling over a second, 0 to 1.0, with 0 as default
---    The air resistance coefficient.
---
MOSParticle.AirResistance = nil
---### From Parent Class:MovableObject
---
---    At which threshold of velocity, in m/s, the effect of AirResistance kicks in.
---    The air threshold speed.
---
MOSParticle.AirThreshold = nil
---### From Parent Class:MovableObject
---
---    Gets real time age of this MovableObject.
---    A unsigned long describing the current age in ms.
---
MOSParticle.Age = nil
---### From Parent Class:MovableObject
---
---    The amount of time this MovableObject will exist from creation.
---    A unsigned long describing the current lifetime in ms. 0 means unlimited.
---
MOSParticle.Lifetime = nil
---### From Parent Class:MovableObject
---
---    The MOID of this MovableObject for this frame.
---    An int specifying the MOID that this MovableObject is assigned for the current frame only.
---
MOSParticle.ID = nil
---### From Parent Class:MovableObject
---
---    Returns this MO's unique persistent ID
---    Returns this MO's unique persistent ID
---
MOSParticle.UniqueID = nil
---### From Parent Class:MovableObject
---
---    The MOID of the MovableObject which is the root MO of this MO for this frame. If same as what GetID returns, then
---    this is owned by
---    MovableMan.
---    An int specifying the MOID of the MO that this MovableObject is owned by for the current frame only.
---
MOSParticle.RootID = nil
---### From Parent Class:MovableObject
---
---    Gets how many total (subsequent) MOID's this MO and all its children are taking up this frame. ie if this MO has no
---    children, this will likely be 1. Note this is only valid for this frame!
---    The number of MOID indices this MO and all its children are taking up.
---
MOSParticle.MOIDFootprint = nil
---### From Parent Class:MovableObject
---
---    The sharpness factor of this MO.
---    The sharpness factor of this MO. 1.0 means normal sharpness, no alter- ation to any of the impulses.
---
MOSParticle.Sharpness = nil
---### From Parent Class:MovableObject
---
---    The absoltue position of the top of this' HUD stack.
---    A Vector with the absolute position of this' HUD stack top point.
---
MOSParticle.AboveHUDPos = nil
---### From Parent Class:MovableObject
---
---    Gets whether this MovableObject is set to collide with other
---    MovableObject:s during its travel.
---    Whether this hits other MO's during its travel, or not.
---
MOSParticle.HitsMOs = nil
---### From Parent Class:MovableObject
---
---    Gets whether this MovableObject is set to be able to get hit by other
---    MovableObject:s during their travel.
---    Whether this can get hit by MO's, or not.
---
MOSParticle.GetsHitByMOs = nil
---### From Parent Class:MovableObject
---
---    Tells whether this will collide with any other MO of the same team.
---    Whether this can hit or get hit by other MOs of the same team.
---
MOSParticle.IgnoresTeamHits = nil
---### From Parent Class:MovableObject
---
---    Tells which team this would be ignoring hits with, if we're ignoring hits at all.
---    Which team this ignores hits with, if any.
---
MOSParticle.IgnoresWhichTeam = nil
---### From Parent Class:MovableObject
---
---    Tells whether this will collide with any Terrain
---    Whether this can hit terrain.
---
MOSParticle.IgnoreTerrain = nil
---### From Parent Class:MovableObject
---
---    Indicates whether this MO is marked for settling at the end of the
---    MovableMan update.
---    Whether this MO is marked for settling ontot the terrain or not.
---
MOSParticle.ToSettle = nil
---### From Parent Class:MovableObject
---
---    Indicates whether this MO is marked for deletion at the end of the
---    MovableMan update.
---    Whether this MO is marked for deletion or not.
---
MOSParticle.ToDelete = nil
---### From Parent Class:MovableObject
---
---    Tells whether this Actor's HUD is drawn or not.
---    Whether this' HUD gets drawn or not.
---
MOSParticle.HUDVisible = nil
---### From Parent Class:MovableObject
---
---    The impulse force threshold which has to be exceeded to
---    'shake loose' this from a 'pinned' state. Pinned MOs don't get moved by travel algos. If 0, this isn't pinned.
---    The impulse threshold in kg * (m/s). 0 means no pinning
---
MOSParticle.PinStrength = nil
---### From Parent Class:MovableObject
---
---    Returns the unique ID of the particle hit at the previously taken Travel
---    Unique ID of the particle hit at the previously taken Travel.
MOSParticle.HitWhatMOID = nil
---### From Parent Class:MovableObject
---
---    Returns the terrain material the previously taken Tarvel hit, if any.
---    The ID of the material, if any, that this MO hit during the last Travel.
---
MOSParticle.HitWhatTerrMaterial = nil
------------------------------Properties------------------------------
---### From Parent Class:SceneObject
---
---    The absolute position of this SceneObject.
---    A Vector describing the current absolute position in pixels.
---
MOSParticle.Pos = nil
---### From Parent Class:SceneObject
---
---    Gets which team this belongs to.
---    The currently assigned team number.
---
MOSParticle.Team = nil
---### From Parent Class:SceneObject
---
---    Gets which player placed this object in the scene, if any.
---    The player responsible for placing this is in the scene, if any.
---
MOSParticle.PlacedByPlayer = nil
---### From Parent Class:SceneObject
---
---    Shows whether this should appear in teh buy menus at all.
---    Buyable or not.
---
MOSParticle.IsBuyable = nil
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
function MOSParticle:SetNextFrame()end
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
function MOSParticle:IsTooFast()end
---### From Parent Class:MOSprite
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
function MOSParticle:IsOnScenePoint(p1)end
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
function MOSParticle:RotateOffset(p1)end
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
function MOSParticle:UnRotateOffset(p1)end
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
function MOSParticle:GetSpriteWidth(p1)end
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
function MOSParticle:GetSpriteHeight(p1)end
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
function MOSParticle:ReloadScripts()end
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
function MOSParticle:GetAltitude(p1,p2)end
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
function MOSParticle:SetWhichMOToNotHit(p1,p2,p3)end
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
function MOSParticle:IsSetToDelete()end
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
function MOSParticle:IsMissionCritical()end
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
function MOSParticle:IsGeneric()end
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
function MOSParticle:IsActor()end
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
function MOSParticle:IsDevice()end
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
function MOSParticle:IsHeldDevice()end
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
function MOSParticle:IsThrownDevice()end
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
function MOSParticle:IsGold()end
---### From Parent Class:MovableObject
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
function MOSParticle:HasObject(p1)end
---### From Parent Class:MovableObject
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
function MOSParticle:HasObjectInGroup(p1)end
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
function MOSParticle:AddForce(p1,p2,p3,p4)end
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
function MOSParticle:AddAbsForce(p1,p2,p3,p4)end
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
function MOSParticle:AddImpulseForce(p1,p2,p3,p4)end
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
function MOSParticle:AddAbsImpulseForce(p1,p2,p3,p4)end
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
function MOSParticle:ClearForces()end
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
function MOSParticle:ClearImpulseForces()end
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
function MOSParticle:RestDetection()end
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
function MOSParticle:NotResting()end
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
function MOSParticle:IsAtRest()end
---### From Parent Class:MovableObject
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
function MOSParticle:MoveOutOfTerrain(p1)end
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
function MOSParticle:GetGoldValue(p1,p2,p3,p4)end
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
function MOSParticle:SetGoldValue(p1)end
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
function MOSParticle:GetGoldValueString(p1,p2,p3)end
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
function MOSParticle:GetTotalValue(p1,p2,p3)end
---### Description
---Create a new MOSParticle object in specific module by its present name.
 ---### Arguments:
 ---		present_name: its present name.
 ---		moudle_name: specify the module the object from."All" for not specified 
---### Return Value:
---		the new object
function CreateMOSParticle(present_name,module_name) return MOSParticle end
---### Description
---Create a new MOSParticle object randomly in specific group and module.
 ---### Arguments:
 ---		group_name_name: the specific group.
 ---		moudle_name: specify the module the object from."All" for not specified
---### Return Value:
 ---		the new object
function RandomMOSParticle(group_name,module_name) return MOSParticle end
---### Description
---Clone a MOSParticle object.
 ---### Arguments:
 ---		object:the object to clone.
 ---### Return Value:
 ---		the cloned object
function CloneMOSParticle(object) return MOSParticle end
---### Description
---cast a object to MOSParticle object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToMOSParticle(object) return MOSParticle end
---### Description
---cast a object to MOSParticle const object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToConstMOSParticle(object) return MOSParticle end
---### Description
---tell whether the type of an object is MOSParticle type.
 ---### Arguments:
 ---		object:the object.
 ---### Return Value:
 ---		boolean
function IsMOSParticle(object) end
