---## Class
---A feature of the terrain, which includes foreground color layer, material layer and optional background layer.
TerrainObject = {}

------------------------------Properties------------------------------
---
---The class name of this Entity.
---A string with the friendly-formatted type name of this object.
---
TerrainObject.ClassName = nil
------------------------------Properties------------------------------
---### From Parent Class:SceneObject
---
---    The absolute position of this SceneObject.
---    A Vector describing the current absolute position in pixels.
---
TerrainObject.Pos = nil
---### From Parent Class:SceneObject
---
---    Returns whether this is being drawn flipped horizontally (around the vertical axis), or not.
---    Whether flipped or not.
---
TerrainObject.HFlipped = nil
---### From Parent Class:SceneObject
---
---    The current rotational angle of of this, in radians.
---    The rotational angle of this, in radians.
---
TerrainObject.RotAngle = nil
---### From Parent Class:SceneObject
---
---    Gets which team this belongs to.
---    The currently assigned team number.
---
TerrainObject.Team = nil
---### From Parent Class:SceneObject
---
---    Gets which player placed this object in the scene, if any.
---    The player responsible for placing this is in the scene, if any.
---
TerrainObject.PlacedByPlayer = nil
---### From Parent Class:SceneObject
---
---    Shows whether this should appear in teh buy menus at all.
---    Buyable or not.
---
TerrainObject.IsBuyable = nil
---### Description:
---
---Gets the offset from teh position to the upper left corner of this' bitmaps.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---A Vector describing the bitmap offset, in pixels.
function TerrainObject:GetBitmapOffset()end
---### Description:
---
---Gets the width this' material bitmap.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Width of 'material' bitmap.
function TerrainObject:GetBitmapWidth()end
---### Description:
---
---Gets the height this' material bitmap.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Height of 'material' bitmap.
function TerrainObject:GetBitmapHeight()end
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
function TerrainObject:GetGoldValue(p1,p2,p3,p4)end
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
function TerrainObject:SetGoldValue(p1)end
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
function TerrainObject:GetGoldValueString(p1,p2,p3)end
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
function TerrainObject:GetTotalValue(p1,p2,p3)end
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
function TerrainObject:IsOnScenePoint(p1)end
---### Description
---Create a new TerrainObject object in specific module by its present name.
 ---### Arguments:
 ---		present_name: its present name.
 ---		moudle_name: specify the module the object from."All" for not specified 
---### Return Value:
---		the new object
function CreateTerrainObject(present_name,module_name) return TerrainObject end
---### Description
---Create a new TerrainObject object randomly in specific group and module.
 ---### Arguments:
 ---		group_name_name: the specific group.
 ---		moudle_name: specify the module the object from."All" for not specified
---### Return Value:
 ---		the new object
function RandomTerrainObject(group_name,module_name) return TerrainObject end
---### Description
---Clone a TerrainObject object.
 ---### Arguments:
 ---		object:the object to clone.
 ---### Return Value:
 ---		the cloned object
function CloneTerrainObject(object) return TerrainObject end
---### Description
---cast a object to TerrainObject object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToTerrainObject(object) return TerrainObject end
---### Description
---cast a object to TerrainObject const object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToConstTerrainObject(object) return TerrainObject end
---### Description
---tell whether the type of an object is TerrainObject type.
 ---### Arguments:
 ---		object:the object.
 ---### Return Value:
 ---		boolean
function IsTerrainObject(object) end
