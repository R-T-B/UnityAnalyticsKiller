cd ~/AppData/LocalLow/Squad/"Kerbal Space Program"/Unity
cd ????????-????-????-????-????????????
cd Analytics
echo "{"analytics":{"events":{"custom_event":{"max_event_per_hour":1}},"enabled":false},"connect":{"limit_user_tracking":true,"player_opted_out":true,"enabled":false},"performance":{"enabled":false}}" > config
chmod 444 config
exit