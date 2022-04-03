---## Class
---The base class shared by Both TerrainObject:s and MovableObject:s, ie anything that can be places in a scene.
SceneObject = {}

------------------------------Properties------------------------------
---
---    The class name of this SceneObject.
---    A string with the friendly-formatted type name of this object.
---
SceneObject.ClassName = nil
---
---    The absolute position of this SceneObject.
---    A Vector describing the current absolute position in pixels.
---
SceneObject.Pos = nil
---
---    Returns whether this is being drawn flipped horizontally (around the vertical axis), or not.
---    Whether flipped or not.
---
SceneObject.HFlipped = nil
---
---    The current rotational angle of of this, in radians.
---    The rotational angle of this, in radians.
---
SceneObject.RotAngle = nil
---
---    Gets which team this belongs to.
---    The currently assigned team number.
---
SceneObject.Team = nil
---
---    Gets which player placed this object in the scene, if any.
---    The player responsible for placing this is in the scene, if any.
---
SceneObject.PlacedByPlayer = nil
---
---    Shows whether this should appear in teh buy menus at all.
---    Buyable or not.
---
SceneObject.IsBuyable = nil
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
function SceneObject:GetGoldValue(p1,p2,p3,p4)end
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
function SceneObject:SetGoldValue(p1)end
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
function SceneObject:GetGoldValueString(p1,p2,p3)end
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
function SceneObject:GetTotalValue(p1,p2,p3)end
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
function SceneObject:IsOnScenePoint(p1)end
---### Description
---Create a new SceneObject object in specific module by its present name.
 ---### Arguments:
 ---		present_name: its present name.
 ---		moudle_name: specify the module the object from."All" for not specified 
---### Return Value:
---		the new object
function CreateSceneObject(present_name,module_name) return SceneObject end
---### Description
---Create a new SceneObject object randomly in specific group and module.
 ---### Arguments:
 ---		group_name_name: the specific group.
 ---		moudle_name: specify the module the object from."All" for not specified
---### Return Value:
 ---		the new object
function RandomSceneObject(group_name,module_name) return SceneObject end
---### Description
---Clone a SceneObject object.
 ---### Arguments:
 ---		object:the object to clone.
 ---### Return Value:
 ---		the cloned object
function CloneSceneObject(object) return SceneObject end
---### Description
---cast a object to SceneObject object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToSceneObject(object) return SceneObject end
---### Description
---cast a object to SceneObject const object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToConstSceneObject(object) return SceneObject end
---### Description
---tell whether the type of an object is SceneObject type.
 ---### Arguments:
 ---		object:the object.
 ---### Return Value:
 ---		boolean
function IsSceneObject(object) end
