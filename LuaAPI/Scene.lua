---## Class
---Contains everything that defines a complete scene.
Scene = {}

------------------------------Properties------------------------------
---
---    The class name of this Entity.
---    A string with the friendly-formatted type name of this object.
---
Scene.ClassName = nil
---
---    The specified location of this scene on the planet view
---    A Vector showing the location of this scene on the planet view.
---
Scene.Location = nil
---
---    The total dimensions (width and height) of the scene, in pixels.
---    A Vector describing the scene dimensions.
---
Scene.Dimensions = nil
---
---    The total width of the scene, in pixels.
---    An int describing the scene width.
---
Scene.Width = nil
---
---    The total height of the scene, in pixels.
---    An int describing the scene width.
---
Scene.Height = nil
---
---    Indicates whether the scene wraps its scrolling around the X axis.
---    Whether the scene wraps around the X axis or not.
---
Scene.WrapsX = nil
---
---    Indicates whether the scene wraps its scrolling around the Y axis.
---    Whether the scene wraps around the Y axis or not.
---
Scene.WrapsY = nil
---
---    Shows which team owns this Scene in a Metagame, if any
---    The team that owns this site in a Metagame, if any
---
Scene.TeamOwnership = nil
---
---    The global acceleration (in m/s^2) that is applied to all movable objects' velocities during every frame. Typically
---    models gravity.
---    A Vector describing the global acceleration.
---
Scene.GlobalAcc = nil
---
---    The global acceleration (in m/s^2) that is applied to all movable objects' velocities during every frame. Typically
---    models gravity.
---    A Vector describing the global acceleration.
---
Scene.GlocalAcc = nil
---
---    Gets how many waypoints there are in the ScenePath currently
---    The number of waypoints in the ScenePath.
---
Scene.ScenePathSize = nil
---enum value for property:PlacedObjectSets
Scene.PLACEONLOAD=0
---enum value for property:PlacedObjectSets
Scene.BLUEPRINT=1
---enum value for property:PlacedObjectSets
Scene.AIPLAN=2
---enum value for property:PlacedObjectSets
Scene.PLACEDSETSCOUNT=3
---### Description:
---
---Shows how much gold this Scene is budgeted to be built for this round.
---### Arguments:
---
---Arg1:    Which player's set budget to show.
---
---### Return Value:
---
---The budget in oz that this is allocated to have built for this round.
function Scene:GetBuildBudget(p1)end
---### Description:
---
---Sets how much gold this Scene is budgeted to be built for this round.
---### Arguments:
---
---Arg1:    The player whom is setting the budget.
---Arg2:    The budget in oz that this is allocated to have built for this round.
---
---### Return Value:
---
---None.
function Scene:SetBuildBudget(p1,p2)end
---### Description:
---
---Tells whether a specific team has scheduled an orbital Scan of this.
---### Arguments:
---
---Arg1:    The team to check for.
---
---### Return Value:
---
---Whether the scan has been scheduled and paid for.
function Scene:IsScanScheduled(p1)end
---### Description:
---
---Sets this to be orbitally scanned by a specific team on next load.
---### Arguments:
---
---Arg1:    The team to schedule the scan for.
---Arg2:    Whether to actually schedule the scan or clear it.
---
---### Return Value:
---
---None.
function Scene:SetScheduledScan(p1,p2)end
---### Description:
---
---Removes all entries in a specific set of placed Objects.
---### Arguments:
---
---Arg1:    Which set of placed objects to clear. See the PlacedObjectSets enum.
---
---### Return Value:
---
---How many things were removed in teh process of clearing that set.
function Scene:ClearPlacedObjectSet(p1)end
---### Description:
---
---Places the individual brain of a single player which may be stationed on this Scene, and registers them as such in
---    an Activity.
---### Arguments:
---
---Arg1:    The player's brain to place.
---Arg2:    The Activity to register the placed brains with.. OINT!
---
---### Return Value:
---
---If the brain was successfully found as resident and placed.
function Scene:PlaceResidentBrain(p1,p2)end
---### Description:
---
---Places the individual brains of the various players which may be stationed on this Scene, and registers them as such
---    in an Activity.
---### Arguments:
---
---Arg1:    The Activity to register the placed brains with.. OINT!
---
---### Return Value:
---
---How many brains were finally placed.
function Scene:PlaceResidentBrains(p1)end
---### Description:
---
---Looks at the Activity and its players' registered brain Actors, and saves them as resident brains for this Scene.
---    Done when a fight is over and the survivors remain!
---### Arguments:
---
---Arg1:    The Activity to check for registered brains.. OINT!
---
---### Return Value:
---
---How many brains were found registered with the passed in Activity.
function Scene:RetrieveResidentBrains(p1)end
---### Description:
---
---Gets the resident brain Actor of a specific player from this scene, if there is any. OINT!
---### Arguments:
---
---Arg1:    Which player to get the resident brain of.
---
---### Return Value:
---
---The SO containing the brain, or 0 if there aren't any of that player.
function Scene:GetResidentBrain(p1)end
---### Description:
---
---Sets the resident brain Actor of a specific player from this scene, if there is any. Ownership IS transferred!
---### Arguments:
---
---Arg1:    Which player to set the resident brain of.
---Arg2:    The Actor to set as the resident brain of the specified player.
---
---### Return Value:
---
---None.
function Scene:SetResidentBrain(p1,p2)end
---### Description:
---
---Adds one or modifies an existing area of this Scene.
---### Arguments:
---
---Arg1:    The area to add or modify of the same name in this Scene. Ownership is
---Arg2:    NOT transferred!
---
---### Return Value:
---
---Whether the specified area was previously defined in this scene.
function Scene:SetArea(p1,p2)end
---### Description:
---
---Checks for the existence of a specific Area identified by a name.
---    This won't throw any errors to the console if the Area isn't found.
---### Arguments:
---
---Arg1:    The name of the Area to try to find in this Scene.
---
---### Return Value:
---
---Whether the specified area is defined in this Scene.
function Scene:HasArea(p1)end
---### Description:
---
---Gets a specific Area identified by a name. Ownership is NOT transferred!
---### Arguments:
---
---Arg1:    The name of the Area to try to get.
---
---### Return Value:
---
---A pointer to the Area asked for. 0 if no Area of that name was found.
function Scene:GetArea(p1)end
---### Description:
---
---Checks if a point is within a specific named Area of this Scene. If no Area of the name is found, this just returns
---    false without error.
---### Arguments:
---
---Arg1:    The name of the Area to try to check against.
---Arg2:    The point to see if it's within the specified Area.
---
---### Return Value:
---
---Whether any Area of that name was found, AND the point falls within it.
function Scene:WithinArea(p1,p2)end
---### Description:
---
---Recalculates all of the pathfinding data. This is very expensive, so do very rarely!
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---None.
function Scene:ResetPathFinding()end
---### Description:
---
---Recalculates only the areas of the pathfinding data that have been marked as outdated.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---None.
function Scene:UpdatePathFinding()end
---### Description:
---
---Tells whether the pathfinding data has been updated in the last frame.
---### Arguments:
---
---Arg1:    None.
---
---### Return Value:
---
---Whether the pathfinding data was recalculated fully or partially.
function Scene:PathFindingUpdated()end
---### Description:
---
---Calculates the least difficult path between two points on the current scene. Takes both distance and materials into
---    account.
---    A list of waypoints can be retrived from Scene.ScenePath.
---    For exposing CalculatePath to Lua.
---### Arguments:
---
---Arg1:    Start and end positions on the scene to find the path between.
---Arg2:    If the path should be moved to the ground or not.
---Arg3:    The maximum material strength any actor traveling along the paht can dig through.
---
---### Return Value:
---
---The number of waypoints from start to goal, or -1 if no path.
function Scene:CalculatePath(p1,p2,p3)end
---### Description
---Create a new Scene object in specific module by its present name.
 ---### Arguments:
 ---		present_name: its present name.
 ---		moudle_name: specify the module the object from."All" for not specified 
---### Return Value:
---		the new object
function CreateScene(present_name,module_name) return Scene end
---### Description
---Create a new Scene object randomly in specific group and module.
 ---### Arguments:
 ---		group_name_name: the specific group.
 ---		moudle_name: specify the module the object from."All" for not specified
---### Return Value:
 ---		the new object
function RandomScene(group_name,module_name) return Scene end
---### Description
---Clone a Scene object.
 ---### Arguments:
 ---		object:the object to clone.
 ---### Return Value:
 ---		the cloned object
function CloneScene(object) return Scene end
---### Description
---cast a object to Scene object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToScene(object) return Scene end
---### Description
---cast a object to Scene const object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToConstScene(object) return Scene end
---### Description
---tell whether the type of an object is Scene type.
 ---### Arguments:
 ---		object:the object.
 ---### Return Value:
 ---		boolean
function IsScene(object) end
