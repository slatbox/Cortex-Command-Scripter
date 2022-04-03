---## Class
---The singleton manager of the Activity:s and rules of Cortex Command
local ActivityManager = {}

------------------------------Properties------------------------------
---
---The type name of the default activity to be loaded if nothing else is available.
---The default activity type name.
---
ActivityManager.DefaultActivityType = nil
---
---The name of the default activity to be loaded if nothing else is available.
---The default activity instance name.
---
ActivityManager.DefaultActivityName = nil
---### Description:
---
---Sets a new activity to copy for next restart. You have to use
---RestartActivity to get it going. Ownership IS transferred!
---### Arguments:
---
---Arg1:The new activity to put into effect next time ResetActivity is called.
---
---### Return Value:
---
---None.
function ActivityManager:SetStartActivity(p1)end
---### Description:
---
---Gets the activity set to use a copy of for next restart. Ownership is
---NOT transferred!
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---The activity to put into effect next time ResetActivity is called. OINT!
function ActivityManager:GetStartActivity()end
---### Description:
---
---Gets the current activity in effect. Won't be what has been set by
---SetStartActivity unless RestartActivity has been called since.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---The current Activity in effect. Will be 0 if no activity is going.
function ActivityManager:GetActivity()end
---### Description:
---
---Completely restarts whatever activity was last started.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---An error return value signaling sucess or any particular failure.
function ActivityManager:RestartActivity()end
---### Description:
---
---Pauses and unpauses the game.
---### Arguments:
---
---Arg1:Whether to pause the game or not.
---
---### Return Value:
---
---None.
function ActivityManager:PauseActivity(p1)end
---### Description:
---
---Forces the current game's end.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---None.
function ActivityManager:EndActivity()end
---### Description:
---
---Indicates whether the game is currently running or not (not editing, over or paused)
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Whether the game is running or not.
function ActivityManager:ActivityRunning()end
---### Description:
---
---Indicates whether the game is currently paused or not.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Whether the game is paused or not.
function ActivityManager:ActivityPaused()end
ActivityMan = ActivityManager