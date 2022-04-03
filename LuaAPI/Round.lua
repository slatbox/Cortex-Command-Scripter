---## Class
---A round containing a number of projectile particles and a one shell.
Round = {}

------------------------------Properties------------------------------
---
---The class name of this Entity.
---A string with the friendly-formatted type name of this object.
---
Round.ClassName = nil
---
---The next particle contained in this Round, ownership is NOT transferred!
---A pointer to the next particle, or 0 if this Round is empty.
---
Round.NextParticle = nil
---
---The shell casing preset of this Round. Ownership IS NOT transferred!
---A pointer to the shell casing preset, or 0 if this Round has no shell.
---
Round.Shell = nil
---
---The velocity at which this round is to be fired.
---A float with the velocity in m/s.
---
Round.FireVel = nil
---
---The velocity at which this round's shell is to be ejected.
---A float with the shell velocity in m/s.
---
Round.ShellVel = nil
---
---The separation of particles in this round.
---A float with the separation range in pixels.
---
Round.Separation = nil
---
---Returns how many particles are contained within this Round, not counting the shell.
---The number of particles.
---
Round.ParticleCount = nil
---
---Returns the lifetime of the projectile used by the AI when executing the shooting scripts.
---The life time in MS used by the AI
---
Round.AILifeTime = nil
---
---Returns whether this Round is out of particles or not.
---Whether this Round is out of particles or not.
---
Round.IsEmpty = nil
---### Description
---Create a new Round object in specific module by its present name.
 ---### Arguments:
 ---		present_name: its present name.
 ---		moudle_name: specify the module the object from."All" for not specified 
---### Return Value:
---		the new object
function CreateRound(present_name,module_name) return Round end
---### Description
---Create a new Round object randomly in specific group and module.
 ---### Arguments:
 ---		group_name_name: the specific group.
 ---		moudle_name: specify the module the object from."All" for not specified
---### Return Value:
 ---		the new object
function RandomRound(group_name,module_name) return Round end
---### Description
---Clone a Round object.
 ---### Arguments:
 ---		object:the object to clone.
 ---### Return Value:
 ---		the cloned object
function CloneRound(object) return Round end
---### Description
---cast a object to Round object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToRound(object) return Round end
---### Description
---cast a object to Round const object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToConstRound(object) return Round end
---### Description
---tell whether the type of an object is Round type.
 ---### Arguments:
 ---		object:the object.
 ---### Return Value:
 ---		boolean
function IsRound(object) end
