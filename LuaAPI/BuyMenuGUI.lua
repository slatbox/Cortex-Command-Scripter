---## Class
---A full menu system that represents a purchasing GUI for Cortex Command
BuyMenuGUI = {}

------------------------------Properties------------------------------
---
---Tells whether passenger count constraints are enforced by this buy menu.
---True if passenger constraints are enforced by this menu, false otherwise
---
BuyMenuGUI.EnforceMaxPassengersConstraint = nil
---
---Sets whether mass constraints are enforced by this buy menu.
---True if mass constraints are enforced by this menu, false otherwise
BuyMenuGUI.EnforceMaxMassConstraint = nil
---### Description:
---
---Sets which MetaPlayer uses this menu, if any.
---### Arguments:
---
---Arg1:The index of the MetaPlayer that uses this menu.
---
---### Return Value:
---
---None.
function BuyMenuGUI:SetMetaPlayer(p1)end
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
function BuyMenuGUI:SetNativeTechModule(p1)end
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
function BuyMenuGUI:SetForeignCostMultiplier(p1)end
---### Description:
---
---Sets whether a data module shown in the item menu should be expanded or not.
---### Arguments:
---
---Arg1:The module ID to set as expanded.
---Arg2:Whether should be expanded or not.
---
---### Return Value:
---
---None.
function BuyMenuGUI:SetModuleExpanded(p1,p2)end
---### Description:
---
---Loads or re-loads all the loadout presets from the appropriate files on disk. This will first clear out all current loadout presets!
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Success or not.
function BuyMenuGUI:LoadAllLoadoutsFromFile()end
---### Description
---Create a new BuyMenuGUI object in specific module by its present name.
 ---### Arguments:
 ---		present_name: its present name.
 ---		moudle_name: specify the module the object from."All" for not specified 
---### Return Value:
---		the new object
function CreateBuyMenuGUI(present_name,module_name) return BuyMenuGUI end
---### Description
---Create a new BuyMenuGUI object randomly in specific group and module.
 ---### Arguments:
 ---		group_name_name: the specific group.
 ---		moudle_name: specify the module the object from."All" for not specified
---### Return Value:
 ---		the new object
function RandomBuyMenuGUI(group_name,module_name) return BuyMenuGUI end
---### Description
---Clone a BuyMenuGUI object.
 ---### Arguments:
 ---		object:the object to clone.
 ---### Return Value:
 ---		the cloned object
function CloneBuyMenuGUI(object) return BuyMenuGUI end
---### Description
---cast a object to BuyMenuGUI object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToBuyMenuGUI(object) return BuyMenuGUI end
---### Description
---cast a object to BuyMenuGUI const object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToConstBuyMenuGUI(object) return BuyMenuGUI end
---### Description
---tell whether the type of an object is BuyMenuGUI type.
 ---### Arguments:
 ---		object:the object.
 ---### Return Value:
 ---		boolean
function IsBuyMenuGUI(object) end
