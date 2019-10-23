Just drag and drop in your KSP 1.8 install folder path Kerbal Space Program\KSP_x64_Data\Managed

Built from the following original-work super-duper projects:

https://github.com/R-T-B/Unity.Analytics.Tracker_NOTELEMETRY_KSP18
https://github.com/R-T-B/Unity.Analytics.StandardEvents_NOTELEMETRY_KSP18
https://github.com/R-T-B/Unity.Analytics.DataPrivacy_NOTELEMETRY_KSP18
https://github.com/R-T-B/UnityEngine.UnityAnalyticsModule_NOTELEMETRY_KSP18

If you can't find me here, try here:
https://www.techpowerup.com/forums/threads/a-random-tool-to-kill-unity-2019-telemetry-unityanalyticskiller.260370/

A short FAQ Follows:

Can't I just use Unity's Opt-out function?
Sure, you can, if your game offers it (Kerbal does). It should work. Dunno. I used it before I made this and the servers were still "pinged" at least once every 30 minutes, but that doesn't mean much. Guess you just have to trust Unity. Or you can try this, if you read the source you can be assured nothing is sent at all: There's nothing logged and literally nothing to send.

So, this transmits no data at all?

Pretty close to nothing. It merely "pings" the main Unity Telemetry servers at boot (that seems unavoidable and is a core unity functionality), but if you examine the packets in Wireshark all fields should be null or blank strings. It should never contact the server again, and even if it does, it will still all be empty data. Literally the only string in any of my source code that it could possibly transmit is it's version, which is humourously set to "STOPMININGMYDATAUNITY1.0"

Still, any contact at all beyond the initial "pings" is not ideal, and should be able to be overridden/stopped. If you detect any traffic to a unity controlled domain or ip using a tool like wireshark, and it's been more than 30 seconds after launch, you have a legitimate cause to open an issue at github. Please do so.

So, I installed this in gamedata and nothing happened!

God dang it bobby, read the manual! You're supposed to put it in KSPINstall\KSP_x64_Data\Managed, replacing your existing dlls (other Unity games, wherver your telemetry dlls are put them there and replace the originals. Maybe take a backup, who knows?)
 
Why is the release for 1.7 so...  old?  Also, it still transmits some data!

1.7 and Unity 2017 support are an ongoing issue.  See here:

https://github.com/R-T-B/UnityAnalyticsKiller/issues/2