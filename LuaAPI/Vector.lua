---## Class
---A useful 2D float vector.
Vector = {}

------------------------------Properties------------------------------
---
---The class name of this Vector.
---A string with the friendly-formatted type name of this Vector.
---
Vector.ClassName = nil
---
---Returns the rounded integer X value of this Vector.
---A int value that represents the X value of this Vector.
---
Vector.RoundedX = nil
---
---Returns the rounded integer Y value of this Vector.
---A int value that represents the Y value of this Vector.
---
Vector.RoundedY = nil
---
---A rounded copy of this Vector. Does not alter this
---Vector.
---A rounded copy of this Vector.
---
Vector.Rounded = nil
---
---Returns the greatest integer that is not greater than the X value of this Vector.
---A int value that represents the X value of this Vector.
---
Vector.FlooredX = nil
---
---Returns the greatest integer that is not greater than the Y value of this Vector.
---A int value that represents the Y value of this Vector.
---
Vector.FlooredY = nil
---
---A floored copy of this Vector. Does not alter this
---Vector.
---A floored copy of this Vector.
---
Vector.Floored = nil
---
---Returns the lowest integer that is not less than the X value of this
---Vector.
---A int value that represents the X value of this Vector.
---
Vector.CeilingedX = nil
---
---Returns the lowest integer that is not less than the Y value of this
---Vector.
---A int value that represents the Y value of this Vector.
---
Vector.CeilingedY = nil
---
---A ceiling:ed copy of this Vector. Does not alter this
---Vector.
---A ceiling:ed copy of this Vector.
---
Vector.Ceilinged = nil
---
---The magnitude of this Vector.
---A float describing the magnitude.
---
Vector.Magnitude = nil
---
---The absolute largest of the two elements. Will always be positive.
---A float describing the largest value of the two, but not the magnitude.
---
Vector.Largest = nil
---
---The absolute smallest of the two elements. Will always be positive.
---A float describing the smallest value of the two, but not the magnitude.
---
Vector.Smallest = nil
---
---A Vector that has the same direction as this but with a magnitude of 1.0.
Vector.Normalized = nil
---
---A Vector that is perpendicular to this, rotated PI/2.
Vector.Perpendicular = nil
---
---Get this Vector's absolute angle in radians. e.g: when x = 1, y = 0, the value returned here will be 0. x = 0, y = 1 yields -pi/2 here.
---The absolute angle in radians.
---
Vector.AbsRadAngle = nil
---
---Get this Vector's absolute angle in degrees. e.g: when x = 1, y = 0, the value returned here will be 0. x = 0, y = 1 yields -90 here.
---The absolute angle in degrees.
---
Vector.AbsDegAngle = nil
---### Description:
---
---Sets the magnitude of this Vector and keeps its angle intact.
---### Arguments:
---
---Arg1:A float value that the magnitude will be set to.
---
---### Return Value:
---
---A reference to this after the change.
function Vector:SetMagnitude(p1)end
---### Description:
---
---Gets a Vector identical to this except that its X component is flipped.
---### Arguments:
---
---Arg1:Whether to flip the X axis of the return vector or not.
---
---### Return Value:
---
---A copy of this vector with flipped X axis.
function Vector:GetXFlipped(p1)end
---### Description:
---
---Gets a Vector identical to this except that its Y component is flipped.
---### Arguments:
---
---Arg1:Whether to flip the Y axis of the return vector or not.
---
---### Return Value:
---
---A copy of this vector with flipped Y axis.
function Vector:GetYFlipped(p1)end
---### Description:
---
---Caps the magnitude of this Vector to a max value and keeps its angle intact.
---### Arguments:
---
---Arg1:A float value that the magnitude will be capped by.
---
---### Return Value:
---
---A reference to this after the change.
function Vector:CapMagnitude(p1)end
---### Description:
---
---Flips the X element of this Vector.
---### Arguments:
---
---Arg1:Whether or not to flip the X element or not.
---
---### Return Value:
---
---None.
function Vector:FlipX(p1)end
---### Description:
---
---Flips the Y element of this Vector.
---### Arguments:
---
---Arg1:Whether or not to flip the Y element or not.
---
---### Return Value:
---
---None.
function Vector:FlipY(p1)end
---### Description:
---
---Indicates whether both x and y components of this Vector are 0;
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Whether both x and y components of this Vector are 0.
function Vector:IsZero()end
---### Description:
---
---Indicates whether the x and y components of this Vector each have opposite signs to their corresponding components of a passed in Vector.
---### Arguments:
---
---Arg1:The Vector to compare with.
---
---### Return Value:
---
---Whether both x and y components of this Vector are 0.
function Vector:IsOpposedTo(p1)end
---### Description:
---
---Returns the dot product of this Vector and the passed in Vector.
---### Arguments:
---
---Arg1:The Vector which will be the rhs operand of the dot product operation.
---
---### Return Value:
---
---The resulting dot product scalar float.
function Vector:Dot(p1)end
---### Description:
---
---Returns the 2D cross product of this Vector and the passed in Vector.
---This is really the area of the parallellogram that the two vectors form.
---### Arguments:
---
---Arg1:The Vector which will be the rhs operand of the cross product operation.
---
---### Return Value:
---
---The resulting 2d cross product parallellogram area.
function Vector:Cross(p1)end
---### Description:
---
---Rounds the X and Y values of this Vector upwards. E.g. 0.49 -> 0.0 and 0.5 -> 1.0.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---None.
function Vector:Round()end
---### Description:
---
---Sets the X and Y of this Vector to the nearest half value.
---E.g. 1.0 -> 1.5 and 0.9 -> 0.5.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---None.
function Vector:ToHalf()end
---### Description:
---
---Sets the X and Y of this Vector.to the greatest integers that are not greater than their original values. E.g. -1.02 becomes -2.0.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---None.
function Vector:Floor()end
---### Description:
---
---Sets the X and Y of this Vector.to the lowest integers that are not less than their original values. E.g. -1.02 becomes -1.0.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---None.
function Vector:Ceiling()end
---### Description:
---
---Scales this vector to have the same direction but a magnitude of 1.0.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Vector reference to this after the operation.
function Vector:Normalize()end
---### Description:
---
---Makes this vector perpendicular to its previous state, rotated PI/2.
---Much faster than RadRotate by PI/2.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Vector reference to this after the operation.
function Vector:Perpendicularize()end
---### Description:
---
---Sets both the X and Y of this Vector.to zero.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---None.
function Vector:Reset()end
---### Description:
---
---Rotate this Vector relatively by an angle in radians.
---### Arguments:
---
---Arg1:The angle in radians to rotate by. Positive angles rotate counter- clockwise, and negative angles clockwise.
---
---### Return Value:
---
---This vector, rotated.
function Vector:RadRotate(p1)end
---### Description:
---
---Rotate this Vector around itself by a relative rotation in degrees.
---### Arguments:
---
---Arg1:The angle in degrees to rotate. Positive is counter clockwise, and negative is clockwise rotation.
---
---### Return Value:
---
---None.
function Vector:DegRotate(p1)end
---### Description:
---
---Set this Vector to an absolute rotation based on the absolute rotation of another Vector.
---### Arguments:
---
---Arg1:The reference Vector whose absolute angle from positive X (0 degrees) this Vector will be rotated to.
---
---### Return Value:
---
---This vector, rotated.
function Vector:AbsRotateTo(p1)end
---### Description:
---
---Sets both the X and Y values of this Vector.
---### Arguments:
---
---Arg1:Two float values that the X and Y value will be set to, respectively.
---
---### Return Value:
---
---None.
function Vector:SetXY(p1)end
---### Description
---Create a new Vector object in specific module by its present name.
 ---### Arguments:
 ---		present_name: its present name.
 ---		moudle_name: specify the module the object from."All" for not specified 
---### Return Value:
---		the new object
function CreateVector(present_name,module_name) return Vector end
---### Description
---Create a new Vector object randomly in specific group and module.
 ---### Arguments:
 ---		group_name_name: the specific group.
 ---		moudle_name: specify the module the object from."All" for not specified
---### Return Value:
 ---		the new object
function RandomVector(group_name,module_name) return Vector end
---### Description
---Clone a Vector object.
 ---### Arguments:
 ---		object:the object to clone.
 ---### Return Value:
 ---		the cloned object
function CloneVector(object) return Vector end
---### Description
---cast a object to Vector object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToVector(object) return Vector end
---### Description
---cast a object to Vector const object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToConstVector(object) return Vector end
---### Description
---tell whether the type of an object is Vector type.
 ---### Arguments:
 ---		object:the object.
 ---### Return Value:
 ---		boolean
function IsVector(object) end
