---## Class
---Holds data for a Metagame player aka "Tech" or "House"
MetaPlayer = {}

------------------------------Properties------------------------------
---
---Gets ID of the DataModule that this player is native to.
---The ID of the DataModule this is native to.
---
MetaPlayer.NativeTechModule = nil
---
---The multiplier of costs of any Tech items foreign to this.
---The scalar multiplier of all costs of foreign tech items.
---
MetaPlayer.ForeignCostMultiplier = nil
---
---The multiplier of costs of any Tech items native to this.
---The scalar multiplier of all costs of native tech items.
---
MetaPlayer.NativeCostMultiplier = nil
---
---Shows which in-game player controls this metagame player is mapped to.
---The in-game player number this is mapped to.
---
MetaPlayer.InGamePlayer = nil
---
---The number of brains in this player's brain pool.
---The number of brains that are available for deployment.
---
MetaPlayer.BrainPoolCount = nil
---### Description:
---
---Alters the number of brains in this player's brain pool.
---### Arguments:
---
---Arg1:The number of brains to add or remove from the pool.
---
---### Return Value:
---
---The resulting count after the alteration.
function MetaPlayer:ChangeBrainPoolCount(p1)end
---### Description
---Create a new MetaPlayer object in specific module by its present name.
 ---### Arguments:
 ---		present_name: its present name.
 ---		moudle_name: specify the module the object from."All" for not specified 
---### Return Value:
---		the new object
function CreateMetaPlayer(present_name,module_name) return MetaPlayer end
---### Description
---Create a new MetaPlayer object randomly in specific group and module.
 ---### Arguments:
 ---		group_name_name: the specific group.
 ---		moudle_name: specify the module the object from."All" for not specified
---### Return Value:
 ---		the new object
function RandomMetaPlayer(group_name,module_name) return MetaPlayer end
---### Description
---Clone a MetaPlayer object.
 ---### Arguments:
 ---		object:the object to clone.
 ---### Return Value:
 ---		the cloned object
function CloneMetaPlayer(object) return MetaPlayer end
---### Description
---cast a object to MetaPlayer object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToMetaPlayer(object) return MetaPlayer end
---### Description
---cast a object to MetaPlayer const object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToConstMetaPlayer(object) return MetaPlayer end
---### Description
---tell whether the type of an object is MetaPlayer type.
 ---### Arguments:
 ---		object:the object.
 ---### Return Value:
 ---		boolean
function IsMetaPlayer(object) end
