---## Class
---A useful 2D axis-aligned rectangle class.
Box = {}

------------------------------Properties------------------------------
---
---The class name of this Box.
---A string with the friendly-formatted type name of this Box.
---
Box.ClassName = nil
---
---The primary corner of this box
---A Vector with the primary corner of this box.
---
Box.Corner = nil
---
---The width of this box. Note that this can be negative if the box hasn't been righted with Unflip().
---A float value that represents the width value of this Box.
---
Box.Width = nil
---
---The height of this box. Note that this can be negative if the box hasn't been righted with Unflip().
---A float value that represents the height value of this Box.
---
Box.Height = nil
---
---The center point of this Box' area, in absolute Scene coordinates.
---The center point.
---
Box.Center = nil
---
---The width times the height.
---The width times the height.
---
Box.Area = nil
---### Description:
---
---Gets a random point within this box.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---The random point within the box.
function Box:GetRandomPoint()end
---### Description:
---
---Makes the corner of this box represent the upper left corner, and both width and height will end up positive.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---None.
function Box:Unflip()end
---### Description:
---
---Tells whether a point is within the Box or not.
---### Arguments:
---
---Arg1:The Vector describing the point to test for insideness.
---
---### Return Value:
---
---Inside the box or not.
function Box:WithinBox(p1)end
---### Description:
---
---Tells whether an x coordinate is within the Box's x-range or not.
---### Arguments:
---
---Arg1:The coordinate describing the x value to test for insideness.
---
---### Return Value:
---
---Inside the box or not in the x axis.
function Box:WithinBoxX(p1)end
---### Description:
---
---Tells whether an y coordinate is within the Box's y-range or not.
---### Arguments:
---
---Arg1:The coordinate describing the y value to test for insideness.
---
---### Return Value:
---
---Inside the box or not in the y axis.
function Box:WithinBoxY(p1)end
---### Description:
---
---Returns an X value constrained inside the Box and returns it.
---### Arguments:
---
---Arg1:The X value to constrain inside the Box.
---
---### Return Value:
---
---The constrained value.
function Box:GetWithinBoxX(p1)end
---### Description:
---
---Returns an X value constrained inside the Box and returns it.
---### Arguments:
---
---Arg1:The X value to constrain inside the Box.
---
---### Return Value:
---
---The constrained value.
function Box:GetWithinBoxY(p1)end
---### Description:
---
---Returns a copy of a point constrained inside this box.
---### Arguments:
---
---Arg1:The Vector describing the point to constrain inside the box.
---
---### Return Value:
---
---The resulting point isnide the box.
function Box:GetWithinBox(p1)end
---### Description
---Create a new Box object in specific module by its present name.
 ---### Arguments:
 ---		present_name: its present name.
 ---		moudle_name: specify the module the object from."All" for not specified 
---### Return Value:
---		the new object
function CreateBox(present_name,module_name) return Box end
---### Description
---Create a new Box object randomly in specific group and module.
 ---### Arguments:
 ---		group_name_name: the specific group.
 ---		moudle_name: specify the module the object from."All" for not specified
---### Return Value:
 ---		the new object
function RandomBox(group_name,module_name) return Box end
---### Description
---Clone a Box object.
 ---### Arguments:
 ---		object:the object to clone.
 ---### Return Value:
 ---		the cloned object
function CloneBox(object) return Box end
---### Description
---cast a object to Box object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToBox(object) return Box end
---### Description
---cast a object to Box const object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToConstBox(object) return Box end
---### Description
---tell whether the type of an object is Box type.
 ---### Arguments:
 ---		object:the object.
 ---### Return Value:
 ---		boolean
function IsBox(object) end
