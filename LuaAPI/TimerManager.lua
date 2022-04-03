---## Class
---The centralized singleton manager of all Timer:s and overall timekeeping in RTE.
local TimerManager = {}

------------------------------Properties------------------------------
---
---The number of ticks per second, or the resolution.
---The number of ticks per second.
---
TimerManager.TicksPerSecond = nil
---
---A time scale factor which will be used to speed up or slow down the progress of the simulation time in relation to the real world time.
---A factor between the real world time, and the simulation time. A value of 2.0 means simulation runs twice as fast as normal.
---
TimerManager.TimeScale = nil
---
---The cap of the amount of seconds which can be transferred from the real time to the simulated time in one update.
---A float describing the current cap in seconds.
---
TimerManager.RealToSimCap = nil
---
---Returns the current number of ticks that the of the simulation updates in.
---The current fixed delta time that the simulation should be updating with, in ticks.
---
TimerManager.DeltaTimeTicks = nil
---
---Returns the current fixed delta time of the simulation updates, in seconds.
---The current fixed delta time that the simulation should be updating with, in seconds.
---
TimerManager.DeltaTimeSecs = nil
---
---Returns the current fixed delta time of the simulation updates, in ms.
---The current fixed delta time that the simulation should be updating with, in ms.
---
TimerManager.DeltaTimeMS = nil
---
---Shows whether to force this to artifically make time for only one single sim update for the graphics frame. Useful for debugging or profiling.
---Whether the sim should be set to only update once per graphics frame or not.
---
TimerManager.OneSimUpdatePerFrame = nil
---### Description:
---
---Enables or disables the averaging of time measurements done each Update().
---These help smooth out and prevent choppy animation.
---### Arguments:
---
---Arg1:Whether ot not to enable the averaging.
---
---### Return Value:
---
---None.
function TimerManager:EnableAveraging(p1)end
---### Description:
---
---Sets the sim to be paused, ie no real time ticks will be transferred to the sim accumulator while this is set to true;
---### Arguments:
---
---Arg1:Whether the sim should be paused or not.
---
---### Return Value:
---
---None.
function TimerManager:PauseSim(p1)end
---### Description:
---
---Tells whether there is enough sim time accumulated to do at least one physics update.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Whetehr there is enough sim time to do a physics update.
function TimerManager:TimeForSimUpdate()end
---### Description:
---
---Tells whether the current simulation update will be drawn in a frame.
---Use this to check if it is necessary to draw purely graphical things during the sim update.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Whether this is the last sim update before a frame with its results will appear.
function TimerManager:DrawnSimUpdate()end
TimerMan = TimerManager