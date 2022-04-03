---## Class
---Base class for all Activity:s, including game modes and editors.
Activity = {}

------------------------------Properties------------------------------
---
---    The class name of this Entity.
---    A string with the friendly-formatted type name of this object.
---
Activity.ClassName = nil
---
---    The user-friendly description of this.
---    A string with the user-friendly description of this.
---
Activity.Description = nil
---
---    Shows in which stage of the Campaign this appears.
---    An int with the stage number. < 0 means it's not in the campaign 
Activity.InCampaignStage = nil
---
---            The current activity state code. See the ActivityState enumeration for the legend.
---            An int with the game state code.
---        
---### Enum Property:
---#### Values:
---		Activity.NOACTIVITY
---		Activity.NOTSTARTED
---		Activity.STARTING
---		Activity.EDITING
---		Activity.PREGAME
---		Activity.RUNNING
---		Activity.INERROR
---		Activity.OVER
Activity.ActivityState = nil
---
---            The name of the current scene.
---            A string with the instance name of the scene.
---        
Activity.SceneName = nil
---
---            The total number of active players in the current game, AI or Human
---            The total number of players in the current game.
---        
Activity.PlayerCount = nil
---
---            The total number of human players in the current game
---            The total number of players in the current game.
---        
Activity.HumanCount = nil
---
---            The total number of teams in the current game
---            The total number of teams in the current game.
---        
Activity.TeamCount = nil
---
---            The current difficulty setting
---            The current setting.
---        
Activity.Difficulty = nil
---enum value for property:Players
Activity.PLAYER_NONE=0
---enum value for property:Players
Activity.PLAYER_1=1
---enum value for property:Players
Activity.PLAYER_2=2
---enum value for property:Players
Activity.PLAYER_3=3
---enum value for property:Players
Activity.PLAYER_4=4
---enum value for property:Players
Activity.MAXPLAYERCOUNT=5
---enum value for property:ActivityState
Activity.NOACTIVITY=0
---enum value for property:ActivityState
Activity.NOTSTARTED=1
---enum value for property:ActivityState
Activity.STARTING=2
---enum value for property:ActivityState
Activity.EDITING=3
---enum value for property:ActivityState
Activity.PREGAME=4
---enum value for property:ActivityState
Activity.RUNNING=5
---enum value for property:ActivityState
Activity.INERROR=6
---enum value for property:ActivityState
Activity.OVER=7
---enum value for property:Team
Activity.NOTEAM=0
---enum value for property:Team
Activity.TEAM_1=1
---enum value for property:Team
Activity.TEAM_2=2
---enum value for property:Team
Activity.TEAM_3=3
---enum value for property:Team
Activity.TEAM_4=4
---enum value for property:Team
Activity.MAXTEAMCOUNT=5
---enum value for property:ViewState
Activity.NORMAL=0
---enum value for property:ViewState
Activity.OBSERVE=1
---enum value for property:ViewState
Activity.DEATHWATCH=2
---enum value for property:ViewState
Activity.ACTORSELECT=3
---enum value for property:ViewState
Activity.AISENTRYPOINT=4
---enum value for property:ViewState
Activity.AIPATROLPOINTS=5
---enum value for property:ViewState
Activity.AIGOLDDIGPOINT=6
---enum value for property:ViewState
Activity.AIGOTOPOINT=7
---enum value for property:ViewState
Activity.LZSELECT=8
---enum value for property:DifficultySetting
Activity.MINDIFFICULTY=0
---enum value for property:DifficultySetting
Activity.CAKEDIFFICULTY=1
---enum value for property:DifficultySetting
Activity.EASYDIFFICULTY=2
---enum value for property:DifficultySetting
Activity.MEDIUMDIFFICULTY=3
---enum value for property:DifficultySetting
Activity.HARDDIFFICULTY=4
---enum value for property:DifficultySetting
Activity.NUTSDIFFICULTY=5
---enum value for property:DifficultySetting
Activity.MAXDIFFICULTY=6
---enum value for property:AISkillSetting
Activity.MINSKILL=0
---enum value for property:AISkillSetting
Activity.INFERIORSKILL=1
---enum value for property:AISkillSetting
Activity.DEFAULTSKILL=2
---enum value for property:AISkillSetting
Activity.AVERAGESKILL=3
---enum value for property:AISkillSetting
Activity.GOODSKILL=4
---enum value for property:AISkillSetting
Activity.UNFAIRSKILL=5
---### Description:
---
---Turns off a player if they were active. Should only be done if brain etc are already taken care of and
---            disposed of properly. Will also deactivate the team this player is on, if there's no other active players
---            still on it.
---### Arguments:
---
---Arg1:            Which player index to deactivate.
---
---### Return Value:
---
---Whether the player was active before trying to deactivate.
function Activity:DeactivatePlayer(p1)end
---### Description:
---
---Indicates whether a specific player is active in the current game.
---### Arguments:
---
---Arg1:            Which player index to check.
---
---### Return Value:
---
---Whether the player is active in the current activity.
function Activity:PlayerActive(p1)end
---### Description:
---
---Indicates whether a specific player is human in the current game, ie not an AI player and has a screen etc.
---### Arguments:
---
---Arg1:            Which player index to check.
---
---### Return Value:
---
---Whether the player is active as a Human in the current activity.
function Activity:PlayerHuman(p1)end
---### Description:
---
---Indicates whether a specific team is active in the current game.
---### Arguments:
---
---Arg1:            Which team index to check.
---
---### Return Value:
---
---Whether the team is active in the current activity.
function Activity:TeamActive(p1)end
---### Description:
---
---Gets the current team a specific player belongs to.
---### Arguments:
---
---Arg1:            The player to get the team info on.
---
---### Return Value:
---
---An int with the team number.
function Activity:GetTeamOfPlayer(p1)end
---### Description:
---
---Sets the current team a specific player belongs to.
---### Arguments:
---
---Arg1:            The player to set the team info on, and the team.
---
---### Return Value:
---
---None.
function Activity:SetTeamOfPlayer(p1)end
---### Description:
---
---Gets the current number of players in a specific team.
---### Arguments:
---
---Arg1:            Which team to get the player count for.
---
---### Return Value:
---
---An int with the player count.
function Activity:PlayersInTeamCount(p1)end
---### Description:
---
---Converts a player index into a screen index, and only if that player is human.
---### Arguments:
---
---Arg1:            Which player index to convert.
---
---### Return Value:
---
---An int with the screen index, or -1 if nonhuman player or no players.
function Activity:ScreenOfPlayer(p1)end
---### Description:
---
---Gets the current viewing state for a specific player. See the
---            ViewState enumeration for the legend.
---### Arguments:
---
---Arg1:            Which player to get the view state for.
---
---### Return Value:
---
---None.
function Activity:GetViewState(p1)end
---### Description:
---
---Sets the current viewing state for a specific player. See the
---            ViewState enumeration for the legend.
---### Arguments:
---
---Arg1:            The state you want to set to.
---Arg2:            Which player to get the view state for.
---
---### Return Value:
---
---None.
function Activity:SetViewState(p1,p2)end
---### Description:
---
---Gets the current Brain actor for a specific player.
---### Arguments:
---
---Arg1:            Which player to get the brain actor for.
---
---### Return Value:
---
---A pointer to the Brain Actor. Ownership is NOT transferred!
function Activity:GetPlayerBrain(p1)end
---### Description:
---
---Sets the current Brain actor for a specific player.
---### Arguments:
---
---Arg1:            A pointer to the new brain Actor. Ownership is NOT transferred!
---Arg2:            Which team to set the brain actor for.
---
---### Return Value:
---
---None.
function Activity:SetPlayerBrain(p1,p2)end
---### Description:
---
---Shows whether a specific player ever had a brain yet.
---### Arguments:
---
---Arg1:            Which player to check whether they ever had a brain.
---
---### Return Value:
---
---Whether this player ever had a brain.
function Activity:PlayerHadBrain(p1)end
---### Description:
---
---Sets whether a player's brain was evacuated during the Activity.
---### Arguments:
---
---Arg1:            Which player to check whether their brain was evac'd.
---Arg2:            Whether it was evacuated yet.
---
---### Return Value:
---
---None.
function Activity:SetBrainEvacuated(p1,p2)end
---### Description:
---
---Shows whether a specific player's brain was evacuated into orbit so far.
---### Arguments:
---
---Arg1:            Which player to check whether their brain was evac'd.
---
---### Return Value:
---
---Whether this player had a brain that was evacuated.
function Activity:BrainWasEvacuated(p1)end
---### Description:
---
---Shows whether the passed in actor is the brain of any player.
---### Arguments:
---
---Arg1:            Which Actor to check for player brainedness.
---
---### Return Value:
---
---Whetehr any player's brain or not.
function Activity:IsAssignedBrain(p1)end
---### Description:
---
---Shows which player has a specific actor as a brain, if any.
---### Arguments:
---
---Arg1:            Which Actor to check for player brainedness.
---
---### Return Value:
---
---Which player has this assigned as a brain, if any.
function Activity:IsBrainOfWhichPlayer(p1)end
---### Description:
---
---Shows whether the passed in actor is the brain of any other player.
---### Arguments:
---
---Arg1:            Which Actor to check for other player brainedness.
---Arg2:            From which player's perspective to make the query.
---
---### Return Value:
---
---Whetehr other player's brain or not.
function Activity:IsOtherPlayerBrain(p1,p2)end
---### Description:
---
---Shows how many human-controlled brains are left in this Activity.
---### Arguments:
---
---Arg1:            None.
---
---### Return Value:
---
---How many brains are left as human-controlled in this Activity.
function Activity:HumanBrainCount()end
---### Description:
---
---Shows how many A.I.-controlled brains are left in this Activity.
---### Arguments:
---
---Arg1:            None.
---
---### Return Value:
---
---How many brains are left on as A.I.-controlled in this Activity.
function Activity:AIBrainCount()end
---### Description:
---
---Gets the currently controlled actor of a specific player.
---### Arguments:
---
---Arg1:            Which player to get the controlled actor of.
---
---### Return Value:
---
---A pointer to the controlled Actor. Ownership is NOT transferred! 0 If no actor is currently controlled by
function Activity:GetControlledActor(p1)end
---### Description:
---
---Sets the amount of funds a specific team currently has in the game.
---### Arguments:
---
---Arg1:            Which team to set the fund count for. 0 = first team.
---
---### Return Value:
---
---A float with the funds tally for the requested team.
function Activity:SetTeamFunds(p1)end
---### Description:
---
---Gets the amount of funds a specific team currently has in the game.
---### Arguments:
---
---Arg1:            Which team to get the fund count from. 0 = first team.
---
---### Return Value:
---
---A float with the funds tally for the requested team.
function Activity:GetTeamFunds(p1)end
---### Description:
---
---Sets AI skill level for specified team
---### Arguments:
---
---Arg1:            None
---Arg2:
---
---### Return Value:
---
---Team to get skill level for
function Activity:SetTeamAISkill(p1,p2)end
---### Description:
---
---Arguments:
---            Team to get skill level for
---### Arguments:
---
---Arg1:            Team skill level
---Arg2:
---
---### Return Value:
---
---Changes a team's funds level by a certain amount.
function Activity:GetTeamAISkill(p1,p2)end
---### Description:
---
---Changes a team's funds level by a certain amount.
---### Arguments:
---
---Arg1:            The amount with which to change the funds balance.
---Arg2:            Which team to alter the funds of. 0 = first team.
---
---### Return Value:
---
---None.
function Activity:ChangeTeamFunds(p1,p2)end
---### Description:
---
---Checks whetehr the team funds changed since last time this was called.
---            This also resets the state, so calling this again on the same team will ield false unless it's been changed
---            again.
---### Arguments:
---
---Arg1:            Which team's funds to check.
---
---### Return Value:
---
---Whether funds amount changed for this team since last time this was called.
function Activity:TeamFundsChanged(p1)end
---### Description:
---
---Increments the tally of a death of an actor on a specific team.
---### Arguments:
---
---Arg1:            Which team to increase the death count of. 0 = first team.
---
---### Return Value:
---
---The new death count.
function Activity:ReportDeath(p1)end
---### Description:
---
---Gets the number of deaths on a specific team so far on the current game.
---### Arguments:
---
---Arg1:            Which team to get the death tally of. 0 = first team.
---
---### Return Value:
---
---The current death count.
function Activity:GetTeamDeathCount(p1)end
---### Description:
---
---Shows how many seconds of demo time is left, if indeed in demo mode.
---### Arguments:
---
---Arg1:            None.
---
---### Return Value:
---
---An int wwith how many demo seconds are left, or
function Activity:GetDemoTimeLeft()end
---### Description:
---
---Indicates whether the game is currently running or not (not editing, over or paused)
---### Arguments:
---
---Arg1:            None.
---
---### Return Value:
---
---Whether the game is running or not.
function Activity:Running()end
---### Description:
---
---Indicates whether the game is currently paused or not.
---### Arguments:
---
---Arg1:            None.
---
---### Return Value:
---
---Whether the game is paused or not.
function Activity:Paused()end
---### Description:
---
---Indicates whether the game is over or not.
---### Arguments:
---
---Arg1:            None.
---
---### Return Value:
---
---Whether the game is over or not.
function Activity:ActivityOver()end
---### Description:
---
---Indicates an Actor as having left the game scene and entered orbit.
---            OWNERSHIP IS NOT transferred, as the Actor's inventory is just 'unloaded'.
---### Arguments:
---
---Arg1:            The actor instance. Ownership IS NOT TRANSFERRED!
---
---### Return Value:
---
---None.
function Activity:EnteredOrbit(p1)end
---### Description:
---
---Forces the ActivityMan to focus player control to a specific Actor for a specific team. OWNERSHIP IS NOT
---            TRANSFERRED!
---### Arguments:
---
---Arg1:            Which Actor to switch focus to.
---Arg2:            The team of this Actor will be set once it is passed in. Ownership IS NOTTRANSFERRED! The Actor should be added to MovableMan already.
---Arg3:            Which team to switch to next actor on.
---Arg4:        
---
---### Return Value:
---
---Whether the focus switch was successful or not.
function Activity:SwitchToActor(p1,p2,p3,p4)end
---### Description:
---
---Forces the ActivityMan to focus player control to the next Actor of a specific team, other than the current
---            one focused on.
---### Arguments:
---
---Arg1:            Which team to switch to next actor on.
---Arg2:            An actor pointer to skip in the sequence.
---
---### Return Value:
---
---None.
function Activity:SwitchToNextActor(p1,p2)end
---### Description:
---
---Forces the ActivityMan to focus player control to the previous Actor of a specific team, other than the
---            current one focused on.
---### Arguments:
---
---Arg1:            Which team to switch to next actor on.
---Arg2:            An actor pointer to skip in the sequence.
---
---### Return Value:
---
---None.
function Activity:SwitchToPrevActor(p1,p2)end
---### Description:
---
---Indicates whether a team is player controlled or not.
---### Arguments:
---
---Arg1:            The team nuber to check.
---
---### Return Value:
---
---Whether team is player controlled or not.
function Activity:IsPlayerTeam(p1)end
---### Description:
---
---Resets the message timer for one player
---### Arguments:
---
---Arg1:            The player to rese tthe message timer for.
---
---### Return Value:
---
---None.
function Activity:ResetMessageTimer(p1)end
---### Description:
---
---Pauses and unpauses the game.
---### Arguments:
---
---Arg1:            Whether to pause the game or not.
---
---### Return Value:
---
---None.
function Activity:Pause(p1)end
---### Description:
---
---Forces this activity's game end.
---### Arguments:
---
---Arg1:            None.
---
---### Return Value:
---
---None.
function Activity:End()end
---### Description
---Create a new Activity object in specific module by its present name.
 ---### Arguments:
 ---		present_name: its present name.
 ---		moudle_name: specify the module the object from."All" for not specified 
---### Return Value:
---		the new object
function CreateActivity(present_name,module_name) return Activity end
---### Description
---Create a new Activity object randomly in specific group and module.
 ---### Arguments:
 ---		group_name_name: the specific group.
 ---		moudle_name: specify the module the object from."All" for not specified
---### Return Value:
 ---		the new object
function RandomActivity(group_name,module_name) return Activity end
---### Description
---Clone a Activity object.
 ---### Arguments:
 ---		object:the object to clone.
 ---### Return Value:
 ---		the cloned object
function CloneActivity(object) return Activity end
---### Description
---cast a object to Activity object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToActivity(object) return Activity end
---### Description
---cast a object to Activity const object.
 ---### Arguments:
 ---		object:the object to cast.
 ---### Return Value:
 ---		the casted object
function ToConstActivity(object) return Activity end
---### Description
---tell whether the type of an object is Activity type.
 ---### Arguments:
 ---		object:the object.
 ---### Return Value:
 ---		boolean
function IsActivity(object) end
