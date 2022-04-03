---## Class
---The singleton manager over the composition and display of frames.
local FrameManager = {}

------------------------------Properties------------------------------
---
---The ratio between on-screen pixels and the physics engine's meters.
---A float describing the current PPM ratio.
---
FrameManager.PPM = nil
---
---The ratio between the physics engine's meters and on-screen pixels.
---A float describing the current MPP ratio.
---
FrameManager.MPP = nil
---
---The ratio between the on-screen pixels and the physics engine's
---Litres.
---A float describing the current PPL ratio.
---
FrameManager.PPL = nil
---
---The ratio between the physics engine's Litres and on-screen pixels.
---A float describing the current LPP ratio.
---
FrameManager.LPP = nil
---
---The horizontal resolution of the screen.
---An int describing the horizontal resolution of the screen in pixels.
---
FrameManager.ResX = nil
---
---The vertical resolution of the screen.
---An int describing the vertical resolution of the screen in pixels.
---
FrameManager.ResY = nil
---
---The bits per pixel color depth
---An int describing the number of bits per pixel of the current color depth.
---
FrameManager.ResBPP = nil
---
---Gets whether the screen is split horizontally across the screen, ie as two splitscreens one above the other.
---Whether or not screen has a horizontal split.
---
FrameManager.HSplit = nil
---
---Gets whether the screen is split vertically across the screen, ie as two splitscreens side by side.
---Whether screen has a vertical split.
---
FrameManager.VSplit = nil
---
---The width of the individual player screens. This will only be less than the backbuffer resolution if there are split screens.
---Player to get screen width for, only used by multiplayer parts.
---The width of the player screens.
---
FrameManager.PlayerScreenWidth = nil
---
---The height of the individual player screens. This will only be less than the backbuffer resolution if there are split screens.
---Player to get screen width for, only used by multiplayer parts.
---The height of the player screens.
---
FrameManager.PlayerScreenHeight = nil
---
---Indicates whether we're postprocessing or not
---Whether post processing is enabled or not.
---
FrameManager.PostProcessing = nil
---
---Indicates whether we're postprocessing the pixel glow effect or not
---Whether post processing is enabled or not.
---
FrameManager.PostPixelGlow = nil
---### Description:
---
---Sets new values for the split screen configuration.
---### Arguments:
---
---Arg1:Whether the new setting should be horizontally split (over and under).
---Arg2:Whether the new setting should be vertically split (side by side)
---
---### Return Value:
---
---None.
function FrameManager:ResetSplitScreens(p1,p2)end
---### Description:
---
---Sets the message to be displayed on top of each player's screen
---### Arguments:
---
---Arg1:An std::string that specifies what should be displayed.
---Arg2:Which screen you want to set text to.
---Arg3:The interval with which the screen will be blinking, in ms. 0 means no blinking.
---Arg4:The duration, in MS to force this message to display. No other message can be displayed before this expires. ClearScreenText overrides it though.
---Arg5:Vertically centered on the screen
---
---### Return Value:
---
---None.
function FrameManager:SetScreenText(p1,p2,p3,p4,p5)end
---### Description:
---
---Clears the message to be displayed on top of each player's screen
---### Arguments:
---
---Arg1:Which screen you want to set text to.
---
---### Return Value:
---
---None.
function FrameManager:ClearScreenText(p1)end
---### Description:
---
---Indicates whether we're in fullscreen mode or not.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Whether we're in fullscreen mode.
function FrameManager:IsFullscreen()end
---### Description:
---
---Loads a palette from a .dat file and sets it as the currently used screen palette.
---### Arguments:
---
---Arg1:String with the data path to the palette data object within a .dat.
---
---### Return Value:
---
---Whether palette laoded successfully or not.
function FrameManager:LoadPalette(p1)end
---### Description:
---
---Fades the palette in from black at a specified speed.
---### Arguments:
---
---Arg1:Speed specififed from (slowest) 1 - 64 (fastest)
---
---### Return Value:
---
---None.
function FrameManager:FadeInPalette(p1)end
---### Description:
---
---Fades the palette out to black at a specified speed.
---### Arguments:
---
---Arg1:Speed specififed from (slowest) 1 - 64 (fastest)
---
---### Return Value:
---
---None.
function FrameManager:FadeOutPalette(p1)end
---### Description:
---
---Dumps a bitmap of the screen back buffer to a 8bpp BMP file.
---### Arguments:
---
---Arg1:The filename of the file to save to, WITHOUT EXTENSION. eg, If "Test" is passed in, this func will save to Test000.bmp, if that file does not already exist. If it does exist, it will attempt 001, and so on.
---
---### Return Value:
---
---Success >=0, or failure < 0.
function FrameManager:SaveScreenToBMP(p1)end
---### Description:
---
---Dumps a bitmap to a 8bpp BMP file.
---### Arguments:
---
---Arg1:A pointer to a BITMAP to save.
---Arg2:The filename of the file to save to, WITHOUT EXTENSION. eg, If "Test" is passed in, this func will save to Test000.bmp, if that file does not already exist. If it does exist, it will attempt 001, and so on.
---
---### Return Value:
---
---Success >=0, or failure < 0.
function FrameManager:SaveBitmapToBMP(p1,p2)end
---### Description:
---
---Resets the frame timer to restart counting.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---None.
function FrameManager:ResetFrameTimer()end
---### Description:
---
---Orders to reset the entire Retro Terrain Engine system next iteration.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---None.
function FrameManager:ResetRTE()end
---### Description:
---
---Indicated whether the system is about to be reset before the next loop starts.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Whether the RTE is about to reset next iteration of the loop or not.
function FrameManager:IsResettingRTE()end
---### Description:
---
---Toggles to and from fullscreen and windowed mode.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Error code, anything other than 0 is error..
function FrameManager:ToggleFullscreen()end
---### Description:
---
---Clears the 8bpp backbuffer with black.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---None.
function FrameManager:ClearBackBuffer8()end
---### Description:
---
---Clears the 32bpp backbuffer with black.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---None.
function FrameManager:ClearBackBuffer32()end
---### Description:
---
---Sets whetehr to display the performance stats on-screen or not.
---### Arguments:
---
---Arg1:Whether to show the performance stats or not.
---
---### Return Value:
---
---None.
function FrameManager:ShowPerformanceStats(p1)end
---### Description:
---
---Flashes any of the players' screen red for this frame.
---### Arguments:
---
---Arg1:Which screen to flash.
---Arg2:What color to flash it. -1 means no color or flash.
---Arg3:How long a period to fill the frame with color. If 0, a single-frame flash will happen.
---
---### Return Value:
---
---None.
function FrameManager:FlashScreen(p1,p2,p3)end
---### Description:
---
---Returns max text height
---### Arguments:
---
---Arg1:Text, max width, whether to use small or large font
---
---### Return Value:
---
---None.
function FrameManager:CalculateTextHeight(p1)end
---### Description:
---
---Returns max text height
---### Arguments:
---
---Arg1:Text, max width, whether to use small or large font
---
---### Return Value:
---
---None.
function FrameManager:CalculateTextWidth(p1)end
FrameMan = FrameManager