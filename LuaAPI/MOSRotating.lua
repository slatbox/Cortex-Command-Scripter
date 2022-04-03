---## Class
---A sprite movable object that can rotate.
MOSRotating = {}

------------------------------Properties------------------------------
---
---    The class name of this Entity.
---    A string with the friendly-formatted type name of this object.
---
MOSRotating.ClassName = nil
---
---    The current recoil impulse force Vector of this MOSprite.
---    A const reference to the current recoil impulse force in kg * m/s.
---
MOSRotating.RecoilForce = nil
---
---    The current recoil offset Vector of this MOSprite.
---    A const reference to the current recoil offset.
---
MOSRotating.RecoilOffset = nil
---
---    Indicates whether this MO is made of Gold or not.
---    Whether this MovableObject is of Gold or not.
---
MOSRotating.IsGold = nil
---
---    Return wound limit for this object.
---    Wound limit of the object.
---
MOSRotating.GibWoundLimit = nil
---
---    Return impulse limit for this object.
---    Impulse limit of the object.
---
MOSRotating.GibImpulseLimit = nil
---
---    Returns damage multiplier of this attachable.
---    Current multiplier value.
---
MOSRotating.DamageMultiplier = nil
---
---    Returns the amount of wound attached to this.
---    Key to retrieve value.
---    Wound amount.
---
MOSRotating.WoundCount = nil
------------------------------Properties------------------------------
---### From Parent Class:MOSprite
---
---    The largest diameter of this in pixels.
---    The largest diameter across its graphical representation.
---
MOSRotating.Diameter = nil
---### From Parent Class:MOSprite
---
---    The oriented bounding box which is guaranteed to contain this, taking rotation etc into account. It's not guaranteed
---    to be fit perfectly though. TODO: MAKE FIT BETTER
---    A Box which is guaranteed to contain this. Does nto take wrapping into account, and parts of this box may be out of
---    bounds!
---
MOSRotating.BoundingBox = nil
---### From Parent Class:MOSprite
---
---    The number of frames in this MOSprite's animation.
---    The frame count.
---
MOSRotating.FrameCount = nil
---### From Parent Class:MOSprite
---
---    The offset that the BITMAP has from the position of this
---    MOSprite.
---    A vector with the offset.
---
MOSRotating.SpriteOffset = nil
---### From Parent Class:MOSprite
---
---    Returns whether this MOSprite is being drawn flipped horizontally
---    (along the vertical axis), or not.
---    Whether flipped or not.
---
MOSRotating.HFlipped = nil
---### From Parent Class:MOSprite
---
---    The current rotational angle of of this, in radians.
---    The rotational angle of this, in radians.
---
MOSRotating.RotAngle = nil
---### From Parent Class:MOSprite
---
---    The current angular velocity of this MovableObject. Positive is a counter-clockwise rotation.
---    The angular velocity in radians per second.
---
MOSRotating.AngularVel = nil
---### From Parent Class:MOSprite
---
---    Tells which frame is currently set to show.
---    An unsigned int describing the current frame.
---
MOSRotating.Frame = nil
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
MOSRotating.SpriteAnimMode = nil
------------------------------Properties------------------------------
---### From Parent Class:MovableObject
---
---    The mass value of this MovableObject.
---    A float describing the mass value in Kilograms (kg).
---
MOSRotating.Mass = nil
---### From Parent Class:MovableObject
---
---    The velocity vector of this MovableObject.
---    A Vector describing the current velocity vector.
---
MOSRotating.Vel = nil
---### From Parent Class:MovableObject
---
---    The largest radius of this in pixels.
---    The radius from its center to the edge of its graphical representation.
---
MOSRotating.Radius = nil
---### From Parent Class:MovableObject
---
---    The current scale of this MOSRotating. This is mostly for fun.
---    The normalized scale.
---
MOSRotating.Scale = nil
---### From Parent Class:MovableObject
---
---    Gets How this is affected by global effects, from +1.0 to -1.0.
---    Something with a negative value will 'float' upward.
---    The global acceleration scalar.
---
MOSRotating.GlobalAccScalar = nil
---### From Parent Class:MovableObject
---
---    How much this is affected by air resistance when traveling over a second, 0 to 1.0, with 0 as default
---    The air resistance coefficient.
---
MOSRotating.AirResistance = nil
---### From Parent Class:MovableObject
---
---    At which threshold of velocity, in m/s, the effect of AirResistance kicks in.
---    The air threshold speed.
---
MOSRotating.AirThreshold = nil
---### From Parent Class:MovableObject
---
---    Gets real time age of this MovableObject.
---    A unsigned long describing the current age in ms.
---
MOSRotating.Age = nil
---### From Parent Class:MovableObject
---
---    The amount of time this MovableObject will exist from creation.
---    A unsigned long describing the current lifetime in ms. 0 means unlimited.
---
MOSRotating.Lifetime = nil
---### From Parent Class:MovableObject
---
---    The MOID of this MovableObject for this frame.
---    An int specifying the MOID that this MovableObject is assigned for the current frame only.
---
MOSRotating.ID = nil
---### From Parent Class:MovableObject
---
---    Returns this MO's unique persistent ID
---    Returns this MO's unique persistent ID
---
MOSRotating.UniqueID = nil
---### From Parent Class:MovableObject
---
---    The MOID of the MovableObject which is the root MO of this MO for this frame. If same as what GetID returns, then
---    this is owned by
---    MovableMan.
---    An int specifying the MOID of the MO that this MovableObject is owned by for the current frame only.
---
MOSRotating.RootID = nil
---### From Parent Class:MovableObject
---
---    Gets how many total (subsequent) MOID's this MO and all its children are taking up this frame. ie if this MO has no
---    children, this will likely be 1. Note this is only valid for this frame!
---    The number of MOID indices this MO and all its children are taking up.
---
MOSRotating.MOIDFootprint = nil
---### From Parent Class:MovableObject
---
---    The sharpness factor of this MO.
---    The sharpness factor of this MO. 1.0 means normal sharpness, no alter- ation to any of the impulses.
---
MOSRotating.Sharpness = nil
---### From Parent Class:MovableObject
---
---    The absoltue position of the top of this' HUD stack.
---    A Vector with the absolute position of this' HUD stack top point.
---
MOSRotating.AboveHUDPos = nil
---### From Parent Class:MovableObject
---
---    Gets whether this MovableObject is set to collide with other
---    MovableObject:s during its travel.
---    Whether this hits other MO's during its travel, or not.
---
MOSRotating.HitsMOs = nil
---### From Parent Class:MovableObject
---
---    Gets whether this MovableObject is set to be able to get hit by other
---    MovableObject:s during their travel.
---    Whether this can get hit by MO's, or not.
---
MOSRotating.GetsHitByMOs = nil
---### From Parent Class:MovableObject
---
---    Tells whether this will collide with any other MO of the same team.
---    Whether this can hit or get hit by other MOs of the same team.
---
MOSRotating.IgnoresTeamHits = nil
---### From Parent Class:MovableObject
---
---    Tells which team this would be ignoring hits with, if we're ignoring hits at all.
---    Which team this ignores hits with, if any.
---
MOSRotating.IgnoresWhichTeam = nil
---### From Parent Class:MovableObject
---
---    Tells whether this will collide with any Terrain
---    Whether this can hit terrain.
---
MOSRotating.IgnoreTerrain = nil
---### From Parent Class:MovableObject
---
---    Indicates whether this MO is marked for settling at the end of the
---    MovableMan update.
---    Whether this MO is marked for settling ontot the terrain or not.
---
MOSRotating.ToSettle = nil
---### From Parent Class:MovableObject
---
---    Indicates whether this MO is marked for deletion at the end of the
---    MovableMan update.
---    Whether this MO is marked for deletion or not.
---
MOSRotating.ToDelete = nil
---### From Parent Class:MovableObject
---
---    Tells whether this Actor's HUD is drawn or not.
---    Whether this' HUD gets drawn or not.
---
MOSRotating.HUDVisible = nil
---### From Parent Class:MovableObject
---
---    The impulse force threshold which has to be exceeded to
---    'shake loose' this from a 'pinned' state. Pinned MOs don't get moved by travel algos. If 0, this isn't pinned.
---    The impulse threshold in kg * (m/s). 0 means no pinning
---
MOSRotating.PinStrength = nil
---### From Parent Class:MovableObject
---
---    Returns the unique ID of the particle hit at the previously taken Travel
---    Unique ID of the particle hit at the previously taken Travel.
MOSRotating.HitWhatMOID = nil
---### From Parent Class:MovableObject
---
---    Returns the terrain material the previously taken Tarvel hit, if any.
---    The ID of the material, if any, that this MO hit during the last Travel.
---
MOSRotating.HitWhatTerrMaterial = nil
------------------------------Properties------------------------------
---### From Parent Class:SceneObject
---
---    The absolute position of this SceneObject.
---    A Vector describing the current absolute position in pixels.
---
MOSRotating.Pos = nil
---### From Parent Class:SceneObject
---
---    Gets which team this belongs to.
---    The currently assigned team number.
---
MOSRotating.Team = nil
---### From Parent Class:SceneObject
---
---    Gets which player placed this object in the scene, if any.
---    The player responsible for placing this is in the scene, if any.
---
MOSRotating.PlacedByPlayer = nil
---### From Parent Class:SceneObject
---
---    Shows whether this should appear in teh buy menus at all.
---    Buyable or not.
---
MOSRotating.IsBuyable = nil
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
function MOSRotating:AddRecoil()end
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
function MOSRotating:SetRecoil(p1,p2,p3)end
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
function MOSRotating:IsRecoiled()end
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
function MOSRotating:EnableDeepCheck(p1)end
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
function MOSRotating:ForceDeepCheck(p1)end
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
function MOSRotating:GibThis(p1,p2,p3)end
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
function MOSRotating:MoveOutOfTerrain(p1)end
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
function MOSRotating:ApplyForces()end
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
function MOSRotating:ApplyImpulses()end
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
function MOSRotating:AttachEmitter(p1,p2,p3,p4)end
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
function MOSRotating:RemoveWounds(p1)end
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
function MOSRotating:IsOnScenePoint(p1)end
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
function MOSRotating:EraseFromTerrain()end
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
function MOSRotating:GetStringValue(p1)end
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
function MOSRotating:GetNumberValue(p1)end
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
function MOSRotating:GetObjectValue()end
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
function MOSRotating:SetStringValue(p1)end
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
function MOSRotating:SetNumberValue(p1)end
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
function MOSRotating:SetObjectValue(p1)end
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
function MOSRotating:RemoveStringValue(p1)end
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
function MOSRotating:RemoveNumberValue(p1)end
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
function MOSRotating:RemoveObjectValue(p1)end
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
function MOSRotating:StringValueExists(p1)end
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
function MOSRotating:NumberValueExists(p1)end
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
function MOSRotating:ObjectValueExists(p1)end
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
function MOSRotating:SetNextFrame()end
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
function MOSRotating:IsTooFast()end
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
function MOSRotating:RotateOffset(p1)end
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
function MOSRotating:UnRotateOffset(p1)end
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
function MOSRotating:GetSpriteWidth(p1)end
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
function MOSRotating:GetSpriteHeight(p1)end
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
function MOSRotating:ReloadScripts()end
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
function MOSRotating:GetAltitude(p1,p2)end
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
function MOSRotating:SetWhichMOToNotHit(p1,p2,p3)end
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
function MOSRotating:IsSetToDelete()end
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
function MOSRotating:IsMissionCritical()end
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
function MOSRotating:IsGeneric()end
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
function MOSRotating:IsActor()end
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
function MOSRotating:IsDevice()end
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
function MOSRotating:IsHeldDevice()end
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
function MOSRotating:IsThrownDevice()end
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
function MOSRotating:IsGold()end
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
function MOSRotating:HasObject(p1)end
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
function MOSRotating:HasObjectInGroup(p1)end
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
function MOSRotating:AddForce(p1,p2,p3,p4)end
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
function MOSRotating:AddAbsForce(p1,p2,p3,p4)end
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
function MOSRotating:AddImpulseForce(p1,p2,p3,p4)end
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
function MOSRotating:AddAbsImpulseForce(p1,p2,p3,p4)end
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
function MOSRotating:ClearForces()end
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
function MOSRotating:ClearImpulseForces()end
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
function MOSRotating:RestDetection()end
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
function MOSRotating:NotResting()end
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
function MOSRotating:IsAtRest()end
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
function MOSRotating:GetGoldValue(p1,p2,p3,p4)end
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
function MOSRotating:SetGoldValue(p1)end
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
function MOSRotating:GetGoldValueString(p1,p2,p3)end
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
function MOSRotating:GetTotalValue(p1,p2,p3)end
---### Description
---Create a new MOSRotating object in specific module by its present name.
 ---### Arguments:
 ---		present_name: its present name.
 ---		moudle_name: specify the module the object from."All" for not specified 
---### Return Value:
---		the new object
function CreateMOSRotating(present_name,module_name) return MOSRotating end
---### Description
---Create a new MOSRotating object randomly in specific group and module.
 ---### Arguments:
 ---		group_name_name: the specific group.
 ---		moudle_name: specify the module the object from."All" for not specified
---### Return Value:
 ---		the new object
function RandomMOSRotating(group_name,module_name) return MOSRotating end
---### Description
---Clone a MOSRotating object.
 ---### Arguments:
 ---		object:the object to clone.
 ---### Return Value:
 ---		the cloned object
function CloneMOSRotating(object) return MOSRotating end
---### Description
---cast a object to MOSRotating object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToMOSRotating(object) return MOSRotating end
---### Description
---cast a object to MOSRotating const object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToConstMOSRotating(object) return MOSRotating end
---### Description
---tell whether the type of an object is MOSRotating type.
 ---### Arguments:
 ---		object:the object.
 ---### Return Value:
 ---		boolean
function IsMOSRotating(object) end
