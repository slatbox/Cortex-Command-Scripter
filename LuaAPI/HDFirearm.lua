---## Class
---A firearm device that fires projectile MO's and discharges shell MO's.
HDFirearm = {}

------------------------------Properties------------------------------
---
---The class name of this Entity.
---A string with the friendly-formatted type name of this object.
---
HDFirearm.ClassName = nil
---
---The rate of fire of this. This applies even if semi-auto. it limits how quickly a new round can be fired after the last.
---The rate of fire, in rounds per min.
---
HDFirearm.RateOfFire = nil
---
---Tells whether the device is fully automatic or not.
---Whether the player can hold down fire and this will fire repeatedly.
---
HDFirearm.FullAuto = nil
---
---The number of rounds still in the loaded magazine. Negative value means infinite ammo.
---An int with the number of rounds in the magazine currently in this
---HDFirearm. Negative means infinite ammo.
---
HDFirearm.RoundInMagCount = nil
---
---The currently attached Magazine, if any.
---The Magazine, if any is attached.
---
HDFirearm.Magazine = nil
---
---The delay before firing.
---An int with the activation delay in ms.
---
HDFirearm.ActivationDelay = nil
---
---The delay between release of activation and another can be started.
---An int with the delay in ms.
---
HDFirearm.DeactivationDelay = nil
---
---The reload time in ms.
---An int in ms.
---
HDFirearm.ReloadTime = nil
---
---The range of normal shaking of entire weapon.
---A float with the range in degrees.
---
HDFirearm.ShakeRange = nil
---
---The range of shaking of entire weapon during sharp aiming.
---A float with the range in degrees.
---
HDFirearm.SharpShakeRange = nil
---
---The factor for how much more weapon shakes if it isn't supported by a second hand.
---A float with the factor.
---
HDFirearm.NoSupportFactor = nil
---
---The range of spread angle of fired particles, in one direction.
---A float with the range in degrees.
---
HDFirearm.ParticleSpreadRange = nil
---
---Whether at least one round has already been	fired during the current activation.
---Returns true if at least one round has already been fired during the current activation.
---
HDFirearm.FiredOnce = nil
---
---Whether at least one round has already been fired during the current frame.
---Returns true at least one round has already been fired during the current frame.
---
HDFirearm.FiredFrame = nil
---
---How many rounds were fired during this frame.
---Returns the number of rounds fired during this frame.
---
HDFirearm.RoundsFired = nil
---
---If true then the m_Frame property is not changed bye the Update function
---Whether this HDFirearm is animated manually.
---
HDFirearm.IsAnimatedManually = nil
------------------------------Properties------------------------------
---### From Parent Class:HeldDevice
---
---The absolute position of the support handhold that this HeldDevice offers.
---A vector describing the absolute world coordinates for the support position of this HeldDevice.
---
HDFirearm.SupportPos = nil
---### From Parent Class:HeldDevice
---
---The absolute position of the magazine or other equivalent point of this.
---A vector describing the absolute world coordinates for the magazine attachment point of this
---
HDFirearm.MagazinePos = nil
---### From Parent Class:HeldDevice
---
---The absolute position of the muzzle or other equivalent point of this.
---A vector describing the absolute world coordinates for the muzzle point of this
---
HDFirearm.MuzzlePos = nil
---### From Parent Class:HeldDevice
---
---The unrotated relative offset from the position to the muzzle or other equivalent point of this.
---A unrotated vector describing the relative for the muzzle point of this from this' position.
---
HDFirearm.MuzzleOffset = nil
---### From Parent Class:HeldDevice
---
---The current position offset of this HeldDevice's joint relative from the parent Actor's position, if attached.
---A const reference to the current stance parent offset.
---
HDFirearm.StanceOffset = nil
---### From Parent Class:HeldDevice
---
---Gets how much farther an Actor which holds this device can see when aiming this HeldDevice sharply.
---The length in world pixel units.
---
HDFirearm.SharpLength = nil
---### From Parent Class:HeldDevice
---
---Returns support offset.
---Support offset value.
---
HDFirearm.SupportOffset = nil
------------------------------Properties------------------------------
---### From Parent Class:Attachable
---
---The stored offset between this Attachable's parent's Pos and the joint position. This should be maintained by the parent.
---A const reference Vector describing the offset from the parent's pos to the joint point.
---
HDFirearm.ParentOffset = nil
---### From Parent Class:Attachable
---
---The offset to the joint (the point around which this Attachable and its parent hinge) from this Attachable's center of mass/origin.
---A const reference Vector describing the offset of the joint relative to the this Attachable's origin/center of mass position.
---
HDFirearm.JointOffset = nil
---### From Parent Class:Attachable
---
---Sets the normalized stiffness scalar of the join of this Attachable.
---A float between 0 and 1.0. 1.0 means 100% of all forces imposed on this attachable will be transferred through the joint to the parent. 0.5 means 50%, and so on.
---
HDFirearm.JointStiffness = nil
---### From Parent Class:Attachable
---
---The amount of impulse force the joint of this Attachable can handle before breaking.
---A float with the max tolerated impulse force in kg * m/s.
---
HDFirearm.JointStrength = nil
---### From Parent Class:Attachable
---
---The target rotation that this Attachable should be striving to match its real rotation with, if it is attached. The joint stiffness will determine how strong the scalar spring is between the current rotation and the target set here.
---A float for the current target angle in radians.
---
HDFirearm.RotTarget = nil
---### From Parent Class:Attachable
---
---The subgroup ID of this' Atoms.
---The the subgroup ID of this' Atoms.
---
HDFirearm.AtomSubgroupID = nil
---### From Parent Class:Attachable
---
---Indicates whether this AEmitter only cares about linear forces that it creates through emissions, ie no torquing due to the parent offset.
---Whether only using linear forces or not.
---
HDFirearm.OnlyLinearForces = nil
---### From Parent Class:Attachable
---
---If true (default old behavior) the parent MOSRotating resets attachables or emitters RotAngle every frame. False to avoid that.
---Whether parent MOSRotating should change this RotAngle to match it's own during MOSRotating::Update
---
HDFirearm.InheritsRotAngle = nil
------------------------------Properties------------------------------
---### From Parent Class:MOSRotating
---
---    The current recoil impulse force Vector of this MOSprite.
---    A const reference to the current recoil impulse force in kg * m/s.
---
HDFirearm.RecoilForce = nil
---### From Parent Class:MOSRotating
---
---    The current recoil offset Vector of this MOSprite.
---    A const reference to the current recoil offset.
---
HDFirearm.RecoilOffset = nil
---### From Parent Class:MOSRotating
---
---    Indicates whether this MO is made of Gold or not.
---    Whether this MovableObject is of Gold or not.
---
HDFirearm.IsGold = nil
---### From Parent Class:MOSRotating
---
---    Return wound limit for this object.
---    Wound limit of the object.
---
HDFirearm.GibWoundLimit = nil
---### From Parent Class:MOSRotating
---
---    Return impulse limit for this object.
---    Impulse limit of the object.
---
HDFirearm.GibImpulseLimit = nil
---### From Parent Class:MOSRotating
---
---    Returns damage multiplier of this attachable.
---    Current multiplier value.
---
HDFirearm.DamageMultiplier = nil
---### From Parent Class:MOSRotating
---
---    Returns the amount of wound attached to this.
---    Key to retrieve value.
---    Wound amount.
---
HDFirearm.WoundCount = nil
------------------------------Properties------------------------------
---### From Parent Class:MOSprite
---
---    The largest diameter of this in pixels.
---    The largest diameter across its graphical representation.
---
HDFirearm.Diameter = nil
---### From Parent Class:MOSprite
---
---    The oriented bounding box which is guaranteed to contain this, taking rotation etc into account. It's not guaranteed
---    to be fit perfectly though. TODO: MAKE FIT BETTER
---    A Box which is guaranteed to contain this. Does nto take wrapping into account, and parts of this box may be out of
---    bounds!
---
HDFirearm.BoundingBox = nil
---### From Parent Class:MOSprite
---
---    The number of frames in this MOSprite's animation.
---    The frame count.
---
HDFirearm.FrameCount = nil
---### From Parent Class:MOSprite
---
---    The offset that the BITMAP has from the position of this
---    MOSprite.
---    A vector with the offset.
---
HDFirearm.SpriteOffset = nil
---### From Parent Class:MOSprite
---
---    Returns whether this MOSprite is being drawn flipped horizontally
---    (along the vertical axis), or not.
---    Whether flipped or not.
---
HDFirearm.HFlipped = nil
---### From Parent Class:MOSprite
---
---    The current rotational angle of of this, in radians.
---    The rotational angle of this, in radians.
---
HDFirearm.RotAngle = nil
---### From Parent Class:MOSprite
---
---    The current angular velocity of this MovableObject. Positive is a counter-clockwise rotation.
---    The angular velocity in radians per second.
---
HDFirearm.AngularVel = nil
---### From Parent Class:MOSprite
---
---    Tells which frame is currently set to show.
---    An unsigned int describing the current frame.
---
HDFirearm.Frame = nil
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
HDFirearm.SpriteAnimMode = nil
------------------------------Properties------------------------------
---### From Parent Class:MovableObject
---
---    The mass value of this MovableObject.
---    A float describing the mass value in Kilograms (kg).
---
HDFirearm.Mass = nil
---### From Parent Class:MovableObject
---
---    The velocity vector of this MovableObject.
---    A Vector describing the current velocity vector.
---
HDFirearm.Vel = nil
---### From Parent Class:MovableObject
---
---    The largest radius of this in pixels.
---    The radius from its center to the edge of its graphical representation.
---
HDFirearm.Radius = nil
---### From Parent Class:MovableObject
---
---    The current scale of this MOSRotating. This is mostly for fun.
---    The normalized scale.
---
HDFirearm.Scale = nil
---### From Parent Class:MovableObject
---
---    Gets How this is affected by global effects, from +1.0 to -1.0.
---    Something with a negative value will 'float' upward.
---    The global acceleration scalar.
---
HDFirearm.GlobalAccScalar = nil
---### From Parent Class:MovableObject
---
---    How much this is affected by air resistance when traveling over a second, 0 to 1.0, with 0 as default
---    The air resistance coefficient.
---
HDFirearm.AirResistance = nil
---### From Parent Class:MovableObject
---
---    At which threshold of velocity, in m/s, the effect of AirResistance kicks in.
---    The air threshold speed.
---
HDFirearm.AirThreshold = nil
---### From Parent Class:MovableObject
---
---    Gets real time age of this MovableObject.
---    A unsigned long describing the current age in ms.
---
HDFirearm.Age = nil
---### From Parent Class:MovableObject
---
---    The amount of time this MovableObject will exist from creation.
---    A unsigned long describing the current lifetime in ms. 0 means unlimited.
---
HDFirearm.Lifetime = nil
---### From Parent Class:MovableObject
---
---    The MOID of this MovableObject for this frame.
---    An int specifying the MOID that this MovableObject is assigned for the current frame only.
---
HDFirearm.ID = nil
---### From Parent Class:MovableObject
---
---    Returns this MO's unique persistent ID
---    Returns this MO's unique persistent ID
---
HDFirearm.UniqueID = nil
---### From Parent Class:MovableObject
---
---    The MOID of the MovableObject which is the root MO of this MO for this frame. If same as what GetID returns, then
---    this is owned by
---    MovableMan.
---    An int specifying the MOID of the MO that this MovableObject is owned by for the current frame only.
---
HDFirearm.RootID = nil
---### From Parent Class:MovableObject
---
---    Gets how many total (subsequent) MOID's this MO and all its children are taking up this frame. ie if this MO has no
---    children, this will likely be 1. Note this is only valid for this frame!
---    The number of MOID indices this MO and all its children are taking up.
---
HDFirearm.MOIDFootprint = nil
---### From Parent Class:MovableObject
---
---    The sharpness factor of this MO.
---    The sharpness factor of this MO. 1.0 means normal sharpness, no alter- ation to any of the impulses.
---
HDFirearm.Sharpness = nil
---### From Parent Class:MovableObject
---
---    The absoltue position of the top of this' HUD stack.
---    A Vector with the absolute position of this' HUD stack top point.
---
HDFirearm.AboveHUDPos = nil
---### From Parent Class:MovableObject
---
---    Gets whether this MovableObject is set to collide with other
---    MovableObject:s during its travel.
---    Whether this hits other MO's during its travel, or not.
---
HDFirearm.HitsMOs = nil
---### From Parent Class:MovableObject
---
---    Gets whether this MovableObject is set to be able to get hit by other
---    MovableObject:s during their travel.
---    Whether this can get hit by MO's, or not.
---
HDFirearm.GetsHitByMOs = nil
---### From Parent Class:MovableObject
---
---    Tells whether this will collide with any other MO of the same team.
---    Whether this can hit or get hit by other MOs of the same team.
---
HDFirearm.IgnoresTeamHits = nil
---### From Parent Class:MovableObject
---
---    Tells which team this would be ignoring hits with, if we're ignoring hits at all.
---    Which team this ignores hits with, if any.
---
HDFirearm.IgnoresWhichTeam = nil
---### From Parent Class:MovableObject
---
---    Tells whether this will collide with any Terrain
---    Whether this can hit terrain.
---
HDFirearm.IgnoreTerrain = nil
---### From Parent Class:MovableObject
---
---    Indicates whether this MO is marked for settling at the end of the
---    MovableMan update.
---    Whether this MO is marked for settling ontot the terrain or not.
---
HDFirearm.ToSettle = nil
---### From Parent Class:MovableObject
---
---    Indicates whether this MO is marked for deletion at the end of the
---    MovableMan update.
---    Whether this MO is marked for deletion or not.
---
HDFirearm.ToDelete = nil
---### From Parent Class:MovableObject
---
---    Tells whether this Actor's HUD is drawn or not.
---    Whether this' HUD gets drawn or not.
---
HDFirearm.HUDVisible = nil
---### From Parent Class:MovableObject
---
---    The impulse force threshold which has to be exceeded to
---    'shake loose' this from a 'pinned' state. Pinned MOs don't get moved by travel algos. If 0, this isn't pinned.
---    The impulse threshold in kg * (m/s). 0 means no pinning
---
HDFirearm.PinStrength = nil
---### From Parent Class:MovableObject
---
---    Returns the unique ID of the particle hit at the previously taken Travel
---    Unique ID of the particle hit at the previously taken Travel.
HDFirearm.HitWhatMOID = nil
---### From Parent Class:MovableObject
---
---    Returns the terrain material the previously taken Tarvel hit, if any.
---    The ID of the material, if any, that this MO hit during the last Travel.
---
HDFirearm.HitWhatTerrMaterial = nil
------------------------------Properties------------------------------
---### From Parent Class:SceneObject
---
---    The absolute position of this SceneObject.
---    A Vector describing the current absolute position in pixels.
---
HDFirearm.Pos = nil
---### From Parent Class:SceneObject
---
---    Gets which team this belongs to.
---    The currently assigned team number.
---
HDFirearm.Team = nil
---### From Parent Class:SceneObject
---
---    Gets which player placed this object in the scene, if any.
---    The player responsible for placing this is in the scene, if any.
---
HDFirearm.PlacedByPlayer = nil
---### From Parent Class:SceneObject
---
---    Shows whether this should appear in teh buy menus at all.
---    Buyable or not.
---
HDFirearm.IsBuyable = nil
---### Description:
---
---Gets the velocity the AI use when aiming this weapon.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---A float with the velocity in m/s.
function HDFirearm:GetAIFireVel()end
---### Description:
---
---Gets the bullet life time the AI use when aiming this weapon.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---A float with the life time in ms.
function HDFirearm:GetAIBulletLifeTime()end
---### Description:
---
---Gets the bullet acceleration scalar the AI use when aiming this weapon.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---A float with the scalar.
function HDFirearm:GetBulletAccScalar()end
---### Description:
---
---Gets the blast radius the AI use when aiming this weapon.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---A float with the blast radius in pixels.
function HDFirearm:GetAIBlastRadius()end
---### Description:
---
---Gets how much material the projectiles from this weapon can destory.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---A float with the material strength.
function HDFirearm:GetAIPenetration()end
---### Description:
---
---Estimates how close the projectiles from two weapons will land.
---### Arguments:
---
---Arg1:A HDFirearm pointer to compare with.
---
---### Return Value:
---
---A float with the distance in pixels.
function HDFirearm:CompareTrajectories(p1)end
---### Description:
---
---Sets the Preset name of the next Magazine that will be loaded into this gun. This changes all future mags that will be reloaded.
---### Arguments:
---
---Arg1:The preset name of the new Magazine to load into this from now on.
---
---### Return Value:
---
---Whether the specified magazine was found and successfully prepared.
function HDFirearm:SetNextMagazineName(p1)end
---### From Parent Class:HeldDevice
---### Description:
---
---Indicates whether this is an offensive weapon or not.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Offensive weapon or not.
function HDFirearm:IsWeapon()end
---### From Parent Class:HeldDevice
---### Description:
---
---Indicates whether this is a tool or not.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Tool or not.
function HDFirearm:IsTool()end
---### From Parent Class:HeldDevice
---### Description:
---
---Indicates whether this is a shield or not.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Shield or not.
function HDFirearm:IsShield()end
---### From Parent Class:HeldDevice
---### Description:
---
---Indicates whether this can be held and operated effectively with one hand or not.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---One handed device or not.
function HDFirearm:IsOneHanded()end
---### From Parent Class:HeldDevice
---### Description:
---
---Sets whether this can be held and operated effectively with one hand or not.
---### Arguments:
---
---Arg1:New value.
---
---### Return Value:
---
---None.
function HDFirearm:SetOneHanded(p1)end
---### From Parent Class:HeldDevice
---### Description:
---
---Activates one of this HDFirearm's features. Analogous to 'pulling the trigger'.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---None.
function HDFirearm:Activate()end
---### From Parent Class:HeldDevice
---### Description:
---
---Deactivates one of this HDFirearm's features. Analogous to 'releasing the trigger'.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---None.
function HDFirearm:Deactivate()end
---### From Parent Class:HeldDevice
---### Description:
---
---Throws out the currently used Magazine, if any, and puts in a new one after the reload delay is up.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---None.
function HDFirearm:Reload()end
---### From Parent Class:HeldDevice
---### Description:
---
---Tells whether the device is curtrently being activated.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Whether being activated.
function HDFirearm:IsActivated()end
---### From Parent Class:HeldDevice
---### Description:
---
---Tells whether the device is curtrently being reloaded.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Whetehr being reloaded.
function HDFirearm:IsReloading()end
---### From Parent Class:HeldDevice
---### Description:
---
---Tells whether the device just finished reloading this frame.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Whether just done reloading this frame.
function HDFirearm:DoneReloading()end
---### From Parent Class:HeldDevice
---### Description:
---
---Tells whether the device is curtrently in need of being reloaded.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Whetehr in need of reloading (ie not full).
function HDFirearm:NeedsReloading()end
---### From Parent Class:HeldDevice
---### Description:
---
---Tells whether the device is curtrently full and reloading won't have any effect.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Whetehr magazine is full or not.
function HDFirearm:IsFull()end
---### From Parent Class:HeldDevice
---### Description:
---
---Sets whether this HeldDevice is currently supported by a second hand or not.
---### Arguments:
---
---Arg1:If it should be supported or not.
---
---### Return Value:
---
---None.
function HDFirearm:SetSupported(p1)end
---### From Parent Class:Attachable
---### Description:
---
---Indicates whether this Attachable is attached to an MOSprite or not.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Whether it's attached or not.
function HDFirearm:IsAttached()end
---### From Parent Class:Attachable
---### Description:
---
---Indicates whether this Attachable is attached to a specific actor or not.
---### Arguments:
---
---Arg1:A pointer to which MOSprite you want to check if this is attached to.
---
---### Return Value:
---
---Whether it's attached or not.
function HDFirearm:IsAttachedTo(p1)end
---### From Parent Class:Attachable
---### Description:
---
---Indicates whether this Attachable is to be drawn after (in front of) or before (behind) the parent.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Whether it's to be drawn after parent or not.
function HDFirearm:IsDrawnAfterParent()end
---### From Parent Class:Attachable
---### Description:
---
---Detaches this Attachable from its host MOSprite
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---None.
function HDFirearm:Detach()end
---### From Parent Class:Attachable
---### Description:
---
---Bundles up all the accumulated forces of this Attachable and calcs how they transfer to the joint, and therefore to the parent.
---### Arguments:
---
---Arg1:A vector that will have with the forces affecting the joint ADDED to it.
---
---### Return Value:
---
---If the accumulated forces exceed the strength of the joint, the attachable will only fill out the forces up to the strength threshold and then detach itself and return false, and the parent should react accordingly in that case (null out pointers to the Attachable).
function HDFirearm:TransferJointForces(p1)end
---### From Parent Class:Attachable
---### Description:
---
---Bundles up all the accumulated impulses of this Attachable and calcs how they transfer to the joint, and therefore to the parent.
---### Arguments:
---
---Arg1:A vector that will have with the imps affecting the joint ADDED to it.
---
---### Return Value:
---
---If the accumulated impulses exceed the strength of the joint, the attachable will only fill out the impulses up to the strength threshold and then detach itself and return false, and the parent should react accordingly in that case (null out pointers to the Attachable).
function HDFirearm:TransferJointImpulses(p1)end
---### From Parent Class:Attachable
---### Description:
---
---Gets the amount of damage points this Attachable has sustained and should cause its parent. Calling this will reset the damage count.
---This should normally be called AFTER Update() to get the correct damage for a given frame.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---A float with the damage points accumulated since the last time this method was called.
function HDFirearm:CollectDamage()end
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
function HDFirearm:AddRecoil()end
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
function HDFirearm:SetRecoil(p1,p2,p3)end
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
function HDFirearm:IsRecoiled()end
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
function HDFirearm:EnableDeepCheck(p1)end
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
function HDFirearm:ForceDeepCheck(p1)end
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
function HDFirearm:GibThis(p1,p2,p3)end
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
function HDFirearm:MoveOutOfTerrain(p1)end
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
function HDFirearm:ApplyForces()end
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
function HDFirearm:ApplyImpulses()end
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
function HDFirearm:AttachEmitter(p1,p2,p3,p4)end
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
function HDFirearm:RemoveWounds(p1)end
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
function HDFirearm:IsOnScenePoint(p1)end
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
function HDFirearm:EraseFromTerrain()end
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
function HDFirearm:GetStringValue(p1)end
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
function HDFirearm:GetNumberValue(p1)end
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
function HDFirearm:GetObjectValue()end
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
function HDFirearm:SetStringValue(p1)end
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
function HDFirearm:SetNumberValue(p1)end
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
function HDFirearm:SetObjectValue(p1)end
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
function HDFirearm:RemoveStringValue(p1)end
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
function HDFirearm:RemoveNumberValue(p1)end
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
function HDFirearm:RemoveObjectValue(p1)end
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
function HDFirearm:StringValueExists(p1)end
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
function HDFirearm:NumberValueExists(p1)end
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
function HDFirearm:ObjectValueExists(p1)end
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
function HDFirearm:SetNextFrame()end
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
function HDFirearm:IsTooFast()end
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
function HDFirearm:RotateOffset(p1)end
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
function HDFirearm:UnRotateOffset(p1)end
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
function HDFirearm:GetSpriteWidth(p1)end
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
function HDFirearm:GetSpriteHeight(p1)end
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
function HDFirearm:ReloadScripts()end
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
function HDFirearm:GetAltitude(p1,p2)end
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
function HDFirearm:SetWhichMOToNotHit(p1,p2,p3)end
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
function HDFirearm:IsSetToDelete()end
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
function HDFirearm:IsMissionCritical()end
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
function HDFirearm:IsGeneric()end
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
function HDFirearm:IsActor()end
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
function HDFirearm:IsDevice()end
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
function HDFirearm:IsHeldDevice()end
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
function HDFirearm:IsThrownDevice()end
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
function HDFirearm:IsGold()end
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
function HDFirearm:HasObject(p1)end
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
function HDFirearm:HasObjectInGroup(p1)end
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
function HDFirearm:AddForce(p1,p2,p3,p4)end
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
function HDFirearm:AddAbsForce(p1,p2,p3,p4)end
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
function HDFirearm:AddImpulseForce(p1,p2,p3,p4)end
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
function HDFirearm:AddAbsImpulseForce(p1,p2,p3,p4)end
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
function HDFirearm:ClearForces()end
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
function HDFirearm:ClearImpulseForces()end
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
function HDFirearm:RestDetection()end
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
function HDFirearm:NotResting()end
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
function HDFirearm:IsAtRest()end
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
function HDFirearm:GetGoldValue(p1,p2,p3,p4)end
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
function HDFirearm:SetGoldValue(p1)end
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
function HDFirearm:GetGoldValueString(p1,p2,p3)end
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
function HDFirearm:GetTotalValue(p1,p2,p3)end
---### Description
---Create a new HDFirearm object in specific module by its present name.
 ---### Arguments:
 ---		present_name: its present name.
 ---		moudle_name: specify the module the object from."All" for not specified 
---### Return Value:
---		the new object
function CreateHDFirearm(present_name,module_name) return HDFirearm end
---### Description
---Create a new HDFirearm object randomly in specific group and module.
 ---### Arguments:
 ---		group_name_name: the specific group.
 ---		moudle_name: specify the module the object from."All" for not specified
---### Return Value:
 ---		the new object
function RandomHDFirearm(group_name,module_name) return HDFirearm end
---### Description
---Clone a HDFirearm object.
 ---### Arguments:
 ---		object:the object to clone.
 ---### Return Value:
 ---		the cloned object
function CloneHDFirearm(object) return HDFirearm end
---### Description
---cast a object to HDFirearm object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToHDFirearm(object) return HDFirearm end
---### Description
---cast a object to HDFirearm const object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToConstHDFirearm(object) return HDFirearm end
---### Description
---tell whether the type of an object is HDFirearm type.
 ---### Arguments:
 ---		object:the object.
 ---### Return Value:
 ---		boolean
function IsHDFirearm(object) end
