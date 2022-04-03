---## Class
---The singleton manager of the master lua script state.
local LuaManager = {}

------------------------------Properties------------------------------
---
---A temporary Entity that can be accessed in the Lua state.
---The temporary entity. Ownership is NOT transferred.
---
LuaManager.TempEntity = nil
---### Description:
---
---Opens file. You can open files only inside .rte folders of game directory. no more that MAX_OPEN_FILES file simultaneously.
---### Arguments:
---
---Arg1:Path to file. All paths are made absoulte by adding current working directory path. File mode.
---
---### Return Value:
---
---File number.
function LuaManager:FileOpen(p1)end
---### Description:
---
---Closes a previously opened file.
---### Arguments:
---
---Arg1:File number.
---
---### Return Value:
---
---None.
function LuaManager:FileClose(p1)end
---### Description:
---
---Reads a line from file.
---### Arguments:
---
---Arg1:File number.
---
---### Return Value:
---
---Line from file, or empty string on error.
function LuaManager:FileReadLine(p1)end
---### Description:
---
---Writes a text line to file.
---### Arguments:
---
---Arg1:File number.
---
---### Return Value:
---
---None.
function LuaManager:FileWriteLine(p1)end
---### Description:
---
---Returns true if end of file was reached
---### Arguments:
---
---Arg1:File number.
---
---### Return Value:
---
---Whether or not EOF was reached.
function LuaManager:FileEOF(p1)end
LuaMan = LuaManager