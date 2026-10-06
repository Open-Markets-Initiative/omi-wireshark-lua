set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/GapRequestProxy.Pitch.v1/GapRequestMessage.pcap" \
  -X "lua_script:Cboe/GapRequestProxy/Cboe_GapRequestProxy_Pitch_v1_Dissector.lua" \
  -T json \
  > Cboe.GapRequestProxy.Pitch.v1.GapRequestMessage.json 2> Cboe.GapRequestProxy.Pitch.v1.GapRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (GapRequestMessage) ---"; cat Cboe.GapRequestProxy.Pitch.v1.GapRequestMessage.json.stderr; exit 1; }

grep "cboe.gaprequestproxy.pitch.v1.gapunit" Cboe.GapRequestProxy.Pitch.v1.GapRequestMessage.json
grep "cboe.gaprequestproxy.pitch.v1.gapsequence" Cboe.GapRequestProxy.Pitch.v1.GapRequestMessage.json
grep "cboe.gaprequestproxy.pitch.v1.count" Cboe.GapRequestProxy.Pitch.v1.GapRequestMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/GapRequestProxy.Pitch.v1/GapResponseMessage.pcap" \
  -X "lua_script:Cboe/GapRequestProxy/Cboe_GapRequestProxy_Pitch_v1_Dissector.lua" \
  -T json \
  > Cboe.GapRequestProxy.Pitch.v1.GapResponseMessage.json 2> Cboe.GapRequestProxy.Pitch.v1.GapResponseMessage.json.stderr \
  || { echo "--- tshark FAILED (GapResponseMessage) ---"; cat Cboe.GapRequestProxy.Pitch.v1.GapResponseMessage.json.stderr; exit 1; }

grep "cboe.gaprequestproxy.pitch.v1.gapunit" Cboe.GapRequestProxy.Pitch.v1.GapResponseMessage.json
grep "cboe.gaprequestproxy.pitch.v1.gapsequence" Cboe.GapRequestProxy.Pitch.v1.GapResponseMessage.json
grep "cboe.gaprequestproxy.pitch.v1.count" Cboe.GapRequestProxy.Pitch.v1.GapResponseMessage.json
grep "cboe.gaprequestproxy.pitch.v1.gapresponsestatus" Cboe.GapRequestProxy.Pitch.v1.GapResponseMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/GapRequestProxy.Pitch.v1/LoginMessage.pcap" \
  -X "lua_script:Cboe/GapRequestProxy/Cboe_GapRequestProxy_Pitch_v1_Dissector.lua" \
  -T json \
  > Cboe.GapRequestProxy.Pitch.v1.LoginMessage.json 2> Cboe.GapRequestProxy.Pitch.v1.LoginMessage.json.stderr \
  || { echo "--- tshark FAILED (LoginMessage) ---"; cat Cboe.GapRequestProxy.Pitch.v1.LoginMessage.json.stderr; exit 1; }

grep "cboe.gaprequestproxy.pitch.v1.sessionsubid" Cboe.GapRequestProxy.Pitch.v1.LoginMessage.json
grep "cboe.gaprequestproxy.pitch.v1.username" Cboe.GapRequestProxy.Pitch.v1.LoginMessage.json
grep "cboe.gaprequestproxy.pitch.v1.filler" Cboe.GapRequestProxy.Pitch.v1.LoginMessage.json
grep "cboe.gaprequestproxy.pitch.v1.password" Cboe.GapRequestProxy.Pitch.v1.LoginMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/GapRequestProxy.Pitch.v1/LoginResponseMessage.pcap" \
  -X "lua_script:Cboe/GapRequestProxy/Cboe_GapRequestProxy_Pitch_v1_Dissector.lua" \
  -T json \
  > Cboe.GapRequestProxy.Pitch.v1.LoginResponseMessage.json 2> Cboe.GapRequestProxy.Pitch.v1.LoginResponseMessage.json.stderr \
  || { echo "--- tshark FAILED (LoginResponseMessage) ---"; cat Cboe.GapRequestProxy.Pitch.v1.LoginResponseMessage.json.stderr; exit 1; }

grep "cboe.gaprequestproxy.pitch.v1.loginresponsestatus" Cboe.GapRequestProxy.Pitch.v1.LoginResponseMessage.json
