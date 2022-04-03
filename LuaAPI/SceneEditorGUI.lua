---## Class
---A full menu system that represents the scene editing GUI for Cortex Command
SceneEditorGUI = {}

------------------------------Properties------------------------------
---### Description:
---
---Sets the absolute scene coordinates of the cursor of this Editor.
---### Arguments:
---
---Arg1:The new cursor position in absolute scene units.
---
---### Return Value:
---
---None.
function SceneEditorGUI:SetCursorPos(p1)end
---### Description:
---
---Gets the currently held Object in the cursor of this Editor. Ownership
---IS NOT transferred!
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---The currently held object, if any. OINT!
function SceneEditorGUI:GetCurrentObject()end
---### Description:
---
---Sets the new Object to be held at the cursor of this Editor. Ownership
---IS transferred!
---### Arguments:
---
---Arg1:The new Object to be held by the cursor. Ownership IS transferred!
---
---### Return Value:
---
---Whether the cursor holds a valid object after setting.
function SceneEditorGUI:SetCurrentObject(p1)end
---### Description:
---
---Sets which DataModule space to be picking objects from. If -1, then let the player pick from all loaded modules.
---### Arguments:
---
---Arg1:The ID of the module to let the player pick objects from. All official modules' objects will alwayws be presented, in addition to the one passed in here.
---
---### Return Value:
---
---None.
function SceneEditorGUI:SetModuleSpace(p1)end
---### Description:
---
---Sets which DataModule ID should be treated as the native tech of the user of this menu.
---### Arguments:
---
---Arg1:The module ID to set as the native one. 0 means everything is native.
---
---### Return Value:
---
---None.
function SceneEditorGUI:SetNativeTechModule(p1)end
---### Description:
---
---Sets the multiplier of the cost of any foreign Tech items.
---### Arguments:
---
---Arg1:The scalar multiplier of the costs of foreign Tech items.
---
---### Return Value:
---
---None.
function SceneEditorGUI:SetForeignCostMultiplier(p1)end
---### Description:
---
---Checks whether the resident brain is currently placed into a valid location in this scene, based on whether there is a clear path to the sky above it. This forces the editor into place brain mode with the current resident brain if the current placement is no bueno. It also removes the faulty brain from residence in the scene!
---### Arguments:
---
---Arg1:Whether it's OK if we dont' have a brain right now - ie don't force into isntallation mode if no brain was found.
---
---### Return Value:
---
---Whether a resident brain was found, AND found in a valid location!
function SceneEditorGUI:TestBrainResidence(p1)end
---### Description:
---
---Updates the state of this Menu each frame
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---None.
function SceneEditorGUI:Update()end
---### Description
---Create a new SceneEditorGUI object in specific module by its present name.
 ---### Arguments:
 ---		present_name: its present name.
 ---		moudle_name: specify the module the object from."All" for not specified 
---### Return Value:
---		the new object
function CreateSceneEditorGUI(present_name,module_name) return SceneEditorGUI end
---### Description
---Create a new SceneEditorGUI object randomly in specific group and module.
 ---### Arguments:
 ---		group_name_name: the specific group.
 ---		moudle_name: specify the module the object from."All" for not specified
---### Return Value:
 ---		the new object
function RandomSceneEditorGUI(group_name,module_name) return SceneEditorGUI end
---### Description
---Clone a SceneEditorGUI object.
 ---### Arguments:
 ---		object:the object to clone.
 ---### Return Value:
 ---		the cloned object
function CloneSceneEditorGUI(object) return SceneEditorGUI end
---### Description
---cast a object to SceneEditorGUI object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToSceneEditorGUI(object) return SceneEditorGUI end
---### Description
---cast a object to SceneEditorGUI const object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToConstSceneEditorGUI(object) return SceneEditorGUI end
---### Description
---tell whether the type of an object is SceneEditorGUI type.
 ---### Arguments:
 ---		object:the object.
 ---### Return Value:
 ---		boolean
function IsSceneEditorGUI(object) end
