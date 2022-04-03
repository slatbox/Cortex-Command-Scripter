---## Class
---The singleton manager over the application and misc settings.
local SettingsdManager = {}

------------------------------Properties------------------------------
---
---Returns true if debug inf mode is set.
---Whether we need to print some debug info.
---
SettingsdManager.PrintDebugInfo = nil
---
---Returns the recommended MOID count. If this amount is exceeded then be removed at the start of the activity
---Recommended MOID count.
---
SettingsdManager.RecommendedMOIDCount = nil
SettingsdMan = SettingsdManager