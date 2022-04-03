---## Class
---The singleton manager of the lua console.
local ConsoleManager = {}

------------------------------Properties------------------------------
---
---Report whether the console is forced to be always visible.
ConsoleManager.ForceVisibility = nil
---
---Gets how much of the screen that the console is covering when opened.
---The ratio of the screen that is covered: 0 - 1.0.
---
ConsoleManager.ScreenSize = nil
---### Description:
---
---Prints a string into the console.
---### Arguments:
---
---Arg1:The string to print.
---
---### Return Value:
---
---None.
function ConsoleManager:PrintString(p1)end
---### Description:
---
---Writes all the input strings to a log in the order they were entered.
---### Arguments:
---
---Arg1:The filename of the file to write to.
---
---### Return Value:
---
---None.
function ConsoleManager:SaveInputLog(p1)end
---### Description:
---
---Writes the entire console buffer to a file.
---### Arguments:
---
---Arg1:The filename of the file to write to.
---
---### Return Value:
---
---None.
function ConsoleManager:SaveAllText(p1)end
---### Description:
---
---Clears all previous input.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---None.
function ConsoleManager:Clear()end
ConsoleMan = ConsoleManager