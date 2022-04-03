---## Class
---The base class shared by Both TerrainObject:s and MovableObject:s, ie anything that can be places in a scene.
GlobalScript = {}

------------------------------Properties------------------------------
---
---The class name of this GlobalScript.
---A string with the friendly-formatted type name of this object.
---
GlobalScript.ClassName = nil
---### Description
---Create a new GlobalScript object in specific module by its present name.
 ---### Arguments:
 ---		present_name: its present name.
 ---		moudle_name: specify the module the object from."All" for not specified 
---### Return Value:
---		the new object
function CreateGlobalScript(present_name,module_name) return GlobalScript end
---### Description
---Create a new GlobalScript object randomly in specific group and module.
 ---### Arguments:
 ---		group_name_name: the specific group.
 ---		moudle_name: specify the module the object from."All" for not specified
---### Return Value:
 ---		the new object
function RandomGlobalScript(group_name,module_name) return GlobalScript end
---### Description
---Clone a GlobalScript object.
 ---### Arguments:
 ---		object:the object to clone.
 ---### Return Value:
 ---		the cloned object
function CloneGlobalScript(object) return GlobalScript end
---### Description
---cast a object to GlobalScript object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToGlobalScript(object) return GlobalScript end
---### Description
---cast a object to GlobalScript const object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToConstGlobalScript(object) return GlobalScript end
---### Description
---tell whether the type of an object is GlobalScript type.
 ---### Arguments:
 ---		object:the object.
 ---### Return Value:
 ---		boolean
function IsGlobalScript(object) end
