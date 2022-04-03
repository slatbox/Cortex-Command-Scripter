---## Class
---Something to bundle the properties of an emission together.
Emission = {}

------------------------------Properties------------------------------
---### Description
---Create a new Emission object in specific module by its present name.
 ---### Arguments:
 ---		present_name: its present name.
 ---		moudle_name: specify the module the object from."All" for not specified 
---### Return Value:
---		the new object
function CreateEmission(present_name,module_name) return Emission end
---### Description
---Create a new Emission object randomly in specific group and module.
 ---### Arguments:
 ---		group_name_name: the specific group.
 ---		moudle_name: specify the module the object from."All" for not specified
---### Return Value:
 ---		the new object
function RandomEmission(group_name,module_name) return Emission end
---### Description
---Clone a Emission object.
 ---### Arguments:
 ---		object:the object to clone.
 ---### Return Value:
 ---		the cloned object
function CloneEmission(object) return Emission end
---### Description
---cast a object to Emission object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToEmission(object) return Emission end
---### Description
---cast a object to Emission const object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToConstEmission(object) return Emission end
---### Description
---tell whether the type of an object is Emission type.
 ---### Arguments:
 ---		object:the object.
 ---### Return Value:
 ---		boolean
function IsEmission(object) end
