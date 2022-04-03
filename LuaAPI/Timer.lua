---## Class
---A precise timer for FPS synch etc.
Timer = {}

------------------------------Properties------------------------------
---
---The start real time value of this Timer.
---A __int64 value that represents the amount of real time in ms from when windows was started to when Reset() of this Timer was called.
---
Timer.StartRealTimeMS = nil
---
---The elapsed real time in seconds since this Timer was Reset().
---A double value that represents the elapsed real time since Reset() in s.
---
Timer.ElapsedRealTimeS = nil
---
---The elapsed real time in ms since this Timer was Reset().
---A unsigned long value that represents the elapsed real time since Reset() in ms.
---
Timer.ElapsedRealTimeMS = nil
---
---The start time value of this Timer.
---A __int64 value that represents the amount of time in ticks from when windows was started to when Reset() of this Timer was called.
---
Timer.StartSimTimeMS = nil
---
---The elapsed time in s since this Timer was Reset().
---A unsigned long value that represents the elapsed time since Reset() in s.
---
Timer.ElapsedSimTimeS = nil
---
---The elapsed time in ms since this Timer was Reset().
---A unsigned long value that represents the elapsed time since Reset() in ms.
---
Timer.ElapsedSimTimeMS = nil
---### Description:
---
---Sets the real time limit value of this Timer, RELATVE to the start time.
---This is when the timer is supposed to show that it has 'expired' or reached whatever time limit it is supposed to keep track of.
---### Arguments:
---
---Arg1:A positive double with the new real time limit relative to the start time.
---
---### Return Value:
---
---None.
function Timer:SetRealTimeLimitMS(p1)end
---### Description:
---
---Sets the real time limit value of this Timer, RELATVE to the start time.
---This is when the timer is supposed to show that it has 'expired' or reached whatever time limit it is supposed to keep track of.
---### Arguments:
---
---Arg1:A positive double with the new real time limit relative to the start time.
---
---### Return Value:
---
---None.
function Timer:SetRealTimeLimitS(p1)end
---### Description:
---
---Returns true if the elapsed real time is past a certain amount of time after the start previously set by SetRealTimeLimit.
---### Arguments:
---
---Arg1:An unsigned long specifying the threshold amount of real time in ms.
---
---### Return Value:
---
---A bool only yielding true if the elapsed real time is greater than the set limit value. If no limit has been set, this returns false.
function Timer:IsPastRealTimeLimit(p1)end
---### Description:
---
---Returns how much time in ms that there is left till this Timer reaches a certain time limit previously set by SetRealTimeLimitMS.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---A unsigned long with the real time left till the passed in value, or negative if this Timer is already past that point in time.
function Timer:LeftTillRealTimeLimitMS()end
---### Description:
---
---Returns how much time in ms that there is left till this Timer reaches a certain time limit previously set by SetRealTimeLimitS.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---A unsigned long with the real time left till the passed in value, or negative if this Timer is already past that point in time.
function Timer:LeftTillRealTimeLimitS()end
---### Description:
---
---Returns how much time in ms that there is left till this Timer reaches a certain time limit.
---### Arguments:
---
---Arg1:A unsigned long specifying till when there is time.
---
---### Return Value:
---
---A unsigned long with the time left till the passed in value, or negative if this Timer is already past that point in time.
function Timer:LeftTillRealMS(p1)end
---### Description:
---
---Returns true if the elapsed real time is past a certain amount of time relative to this' start.
---### Arguments:
---
---Arg1:A long specifying the threshold amount of real time in ms.
---
---### Return Value:
---
---A bool only yielding true if the elapsed real time is greater than the passed in value.
function Timer:IsPastRealMS(p1)end
---### Description:
---
---Returns true or false, depending on whether the elapsed time falls in one of two repeating intervals which divide it. This is useful for blink animations etc.
---### Arguments:
---
---Arg1:An int with the alternating period in ms. The time specified here is how long it will take for the switch to alternate.
---
---### Return Value:
---
---Whether the elapsed time is in the first state or not.
function Timer:AlternateReal(p1)end
---### Description:
---
---Sets the sim time limit value of this Timer, RELATVE to the start time.
---This is when the timer is supposed to show that it has 'expired' or reached whatever time limit it is supposed to keep track of.
---### Arguments:
---
---Arg1:A positive double with the new sim time limit relative to the start time.
---
---### Return Value:
---
---None.
function Timer:SetSimTimeLimitMS(p1)end
---### Description:
---
---Sets the sim time limit value of this Timer, RELATVE to the start time.
---This is when the timer is supposed to show that it has 'expired' or reached whatever time limit it is supposed to keep track of.
---### Arguments:
---
---Arg1:A positive double with the new sim time limit relative to the start time.
---
---### Return Value:
---
---None.
function Timer:SetSimTimeLimitS(p1)end
---### Description:
---
---Returns how much time in ms that there is left till this Timer reaches a certain time limit previously set by SetSimTimeLimitMS.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---A unsigned long with the sim time left till the passed in value, or negative if this Timer is already past that point in time.
function Timer:LeftTillSimTimeLimitMS()end
---### Description:
---
---Returns how much time in ms that there is left till this Timer reaches a certain time limit previously set by SetSimTimeLimitS.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---A unsigned long with the sim time left till the passed in value, or negative if this Timer is already past that point in time.
function Timer:LeftTillSimTimeLimitS()end
---### Description:
---
---Returns how much time in ms that there is left till this Timer reaches a certain time limit.
---### Arguments:
---
---Arg1:A unsigned long specifying till when there is time.
---
---### Return Value:
---
---A unsigned long with the time left till the passed in value, or negative if this Timer is already past that point in time.
function Timer:LeftTillSimMS(p1)end
---### Description:
---
---Returns true if the elapsed time is past a certain amount of time.
---### Arguments:
---
---Arg1:A unsigned long specifying the threshold amount of time in ms.
---
---### Return Value:
---
---A bool only yielding true if the elapsed time is greater than the passed in value.
function Timer:IsPastSimMS(p1)end
---### Description:
---
---Returns true or false, depending on whether the elapsed time falls in one of two repeating intervals which divide it. This is useful for blink animations etc.
---### Arguments:
---
---Arg1:An int with the alternating period in ms. The time specified here is how long it will take for the switch to alternate.
---
---### Return Value:
---
---Whether the elapsed time is in the first state or not.
function Timer:AlternateSim(p1)end
---### Description
---Create a new Timer object in specific module by its present name.
 ---### Arguments:
 ---		present_name: its present name.
 ---		moudle_name: specify the module the object from."All" for not specified 
---### Return Value:
---		the new object
function CreateTimer(present_name,module_name) return Timer end
---### Description
---Create a new Timer object randomly in specific group and module.
 ---### Arguments:
 ---		group_name_name: the specific group.
 ---		moudle_name: specify the module the object from."All" for not specified
---### Return Value:
 ---		the new object
function RandomTimer(group_name,module_name) return Timer end
---### Description
---Clone a Timer object.
 ---### Arguments:
 ---		object:the object to clone.
 ---### Return Value:
 ---		the cloned object
function CloneTimer(object) return Timer end
---### Description
---cast a object to Timer object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToTimer(object) return Timer end
---### Description
---cast a object to Timer const object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToConstTimer(object) return Timer end
---### Description
---tell whether the type of an object is Timer type.
 ---### Arguments:
 ---		object:the object.
 ---### Return Value:
 ---		boolean
function IsTimer(object) end
