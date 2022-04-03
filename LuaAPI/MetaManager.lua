---## Class
---The singleton manager of the Metagame of Cortex Command, ie the games played out in the campaign screen.
local MetaManager = {}

------------------------------Properties------------------------------
---
---The name of the currently played Metagame. It's what's used when saving to disk.
---The name of the current metagame.
---
MetaManager.GameName = nil
---
---Shows which player's turn is now or coming up.
---The player who is currently doing his turn, or coming up next in an intermediate phase.
---
MetaManager.PlayerTurn = nil
---
---Gets current number of MetaPlayers
---The number of meta players in the current game.
---
MetaManager.PlayerCount = nil
---### Description:
---
---Gets the designated team of a specific player
---### Arguments:
---
---Arg1:Which player.
---
---### Return Value:
---
---The team of that player.
function MetaManager:GetTeamOfPlayer(p1)end
---### Description:
---
---Gets the specified MetaPlayer
---### Arguments:
---
---Arg1:Which player.
---
---### Return Value:
---
---The requested MetaPlayer
function MetaManager:GetPlayer(p1)end
---### Description:
---
---Gets the MetaPlayer playing a specific in-game player, if any.
---### Arguments:
---
---Arg1:Which in-game player to translate into a metaplayer.
---
---### Return Value:
---
---The requested MetaPlayer, if any is playing that in-game player. If not
function MetaManager:GetMetaPlayerOfInGamePlayer(p1)end
MetaMan = MetaManager