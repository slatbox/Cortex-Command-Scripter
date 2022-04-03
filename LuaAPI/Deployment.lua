---## Class
---A special SceneObject that specifies a Loadout of whatever Tech is relevant to be placed in a specific location in a Scene.
Deployment = {}

------------------------------Properties------------------------------
---
---The class name of this Entity.
---A string with the friendly-formatted type name of this object.
---
Deployment.ClassName = nil
---
---The radius around this deployment that gets checked if another actor/item of the same type and name already exists and will block re-spawning a new one by this
---The radius this Deployment will be checking within.
---
Deployment.SpawnRadius = nil
---
---Return this deployment's unique ID
---This deployment's ID
---
Deployment.ID = nil
---
---Returns whether this MOSprite is being drawn flipped horizontally
---(along the vertical axis), or not.
---Whether flipped or not.
---
Deployment.HFlipped = nil
------------------------------Properties------------------------------
---### From Parent Class:SceneObject
---
---    The absolute position of this SceneObject.
---    A Vector describing the current absolute position in pixels.
---
Deployment.Pos = nil
---### From Parent Class:SceneObject
---
---    The current rotational angle of of this, in radians.
---    The rotational angle of this, in radians.
---
Deployment.RotAngle = nil
---### From Parent Class:SceneObject
---
---    Gets which team this belongs to.
---    The currently assigned team number.
---
Deployment.Team = nil
---### From Parent Class:SceneObject
---
---    Gets which player placed this object in the scene, if any.
---    The player responsible for placing this is in the scene, if any.
---
Deployment.PlacedByPlayer = nil
---### From Parent Class:SceneObject
---
---    Shows whether this should appear in teh buy menus at all.
---    Buyable or not.
---
Deployment.IsBuyable = nil
---### Description:
---
---Gets the name of the Loadout that this Deployment spawns.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---The name of the Loadout preset that this Deployment spawns.
function Deployment:GetLoadoutName()end
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
function Deployment:GetGoldValue(p1,p2,p3,p4)end
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
function Deployment:SetGoldValue(p1)end
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
function Deployment:GetGoldValueString(p1,p2,p3)end
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
function Deployment:GetTotalValue(p1,p2,p3)end
---### From Parent Class:SceneObject
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
function Deployment:IsOnScenePoint(p1)end
---### Description
---Create a new Deployment object in specific module by its present name.
 ---### Arguments:
 ---		present_name: its present name.
 ---		moudle_name: specify the module the object from."All" for not specified 
---### Return Value:
---		the new object
function CreateDeployment(present_name,module_name) return Deployment end
---### Description
---Create a new Deployment object randomly in specific group and module.
 ---### Arguments:
 ---		group_name_name: the specific group.
 ---		moudle_name: specify the module the object from."All" for not specified
---### Return Value:
 ---		the new object
function RandomDeployment(group_name,module_name) return Deployment end
---### Description
---Clone a Deployment object.
 ---### Arguments:
 ---		object:the object to clone.
 ---### Return Value:
 ---		the cloned object
function CloneDeployment(object) return Deployment end
---### Description
---cast a object to Deployment object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToDeployment(object) return Deployment end
---### Description
---cast a object to Deployment const object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToConstDeployment(object) return Deployment end
---### Description
---tell whether the type of an object is Deployment type.
 ---### Arguments:
 ---		object:the object.
 ---### Return Value:
 ---		boolean
function IsDeployment(object) end
