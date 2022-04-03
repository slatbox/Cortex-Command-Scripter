---## Class
---The singleton manager of the WAV sound effects and OGG music playback.
local AudioManager = {}

------------------------------Properties------------------------------
---
---The volume of all sounds to a specific volume.
---Does not affect music.
---The desired volume scalar. 0.0-1.0.
---
AudioManager.SoundsVolume = nil
---
---The music to a specific volume.
---The desired volume scalar. 0.0-1.0.
AudioManager.MusicVolume = nil
---### Description:
---
---Starts playing a certain WAVE, MOD, MIDI, OGG, MP3 file in the music channel.
---### Arguments:
---
---Arg1:The path to the music file to play.
---Arg2:The number of times to loop the song. 0 means play once. -1 means play infinitely until stopped.
---Arg3:The volume override for music for this song only. < 0 means no override.
---
---### Return Value:
---
---None.
function AudioManager:PlayMusic(p1,p2,p3)end
---### Description:
---
---Queues up another path to a stream that will be played after the current one is done. Can be done several times to queue up many tracks. The last track in the list will be looped infinitely.
---### Arguments:
---
---Arg1:The path to the music file to play after the current one.
---
---### Return Value:
---
---None.
function AudioManager:QueueMusicStream(p1)end
---### Description:
---
---Queues up a period of silence in teh music stream playlist.
---### Arguments:
---
---Arg1:The number of secs to wait before going to the next stream.
---
---### Return Value:
---
---None.
function AudioManager:QueueSilence(p1)end
---### Description:
---
---Clears the music queue.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---None.
function AudioManager:ClearMusicQueue()end
---### Description:
---
---Sets/updates the distance attenuation for a specific sound. Will only have an effect if the sound is currently being played.
---### Arguments:
---
---Arg1:A pointer to a Sound object. Ownership IS NOT transferred!
---Arg2:Distance attenuation scalar: 0 = full volume, 1.0 = max distant, but not silent.
---
---### Return Value:
---
---Whetehr a smaple of the Sound is currently being played by any of the channels, and the attenuation was successfully set.
function AudioManager:SetSoundAttenuation(p1,p2)end
---### Description:
---
---Reports whetehr a certain Sound's last played sample is being played currently.
---### Arguments:
---
---Arg1:A pointer to a Sound object. Ownership IS NOT transferred!
---
---### Return Value:
---
---Whether the LAST sample that was played of the Sound is currently being played by any of the channels.
function AudioManager:IsPlaying(p1)end
---### Description:
---
---Reports whetehr any music stream is currently playing.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---Whether any music stream is currently playing.
function AudioManager:IsMusicPlaying()end
---### Description:
---
---Stops playing a the music channel.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---None.
function AudioManager:StopMusic()end
---### Description:
---
---Stops playing a the music channel.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---None.
function AudioManager:SetMusicPosition()end
---### Description:
---
---Stops playing a the music channel.
---### Arguments:
---
---Arg1:None.
---
---### Return Value:
---
---None.
function AudioManager:StopAll()end
AudioMan = AudioManager