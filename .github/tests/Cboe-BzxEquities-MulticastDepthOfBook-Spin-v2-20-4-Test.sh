set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.Spin.v2.20.4/LoginMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/MulticastDepthOfBook/Cboe_BzxEquities_MulticastDepthOfBook_Spin_v2_20_4_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.LoginMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.LoginMessage.json.stderr \
  || { echo "--- tshark FAILED (LoginMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.LoginMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.spin.v2.20.4.sessionsubid" Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.LoginMessage.json
grep "cboe.bzxequities.multicastdepthofbook.spin.v2.20.4.username" Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.LoginMessage.json
grep "cboe.bzxequities.multicastdepthofbook.spin.v2.20.4.filler" Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.LoginMessage.json
grep "cboe.bzxequities.multicastdepthofbook.spin.v2.20.4.password" Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.LoginMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.Spin.v2.20.4/LoginResponseMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/MulticastDepthOfBook/Cboe_BzxEquities_MulticastDepthOfBook_Spin_v2_20_4_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.LoginResponseMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.LoginResponseMessage.json.stderr \
  || { echo "--- tshark FAILED (LoginResponseMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.LoginResponseMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.spin.v2.20.4.loginresponsestatus" Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.LoginResponseMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.Spin.v2.20.4/SpinFinishedMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/MulticastDepthOfBook/Cboe_BzxEquities_MulticastDepthOfBook_Spin_v2_20_4_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.SpinFinishedMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.SpinFinishedMessage.json.stderr \
  || { echo "--- tshark FAILED (SpinFinishedMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.SpinFinishedMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.spin.v2.20.4.sequence" Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.SpinFinishedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.Spin.v2.20.4/SpinImageAvailableMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/MulticastDepthOfBook/Cboe_BzxEquities_MulticastDepthOfBook_Spin_v2_20_4_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.SpinImageAvailableMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.SpinImageAvailableMessage.json.stderr \
  || { echo "--- tshark FAILED (SpinImageAvailableMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.SpinImageAvailableMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.spin.v2.20.4.sequence" Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.SpinImageAvailableMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.Spin.v2.20.4/SpinRequestMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/MulticastDepthOfBook/Cboe_BzxEquities_MulticastDepthOfBook_Spin_v2_20_4_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.SpinRequestMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.SpinRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (SpinRequestMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.SpinRequestMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.spin.v2.20.4.sequence" Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.SpinRequestMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.Spin.v2.20.4/SpinResponseMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/MulticastDepthOfBook/Cboe_BzxEquities_MulticastDepthOfBook_Spin_v2_20_4_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.SpinResponseMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.SpinResponseMessage.json.stderr \
  || { echo "--- tshark FAILED (SpinResponseMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.SpinResponseMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.spin.v2.20.4.sequence" Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.SpinResponseMessage.json
grep "cboe.bzxequities.multicastdepthofbook.spin.v2.20.4.ordercount" Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.SpinResponseMessage.json
grep "cboe.bzxequities.multicastdepthofbook.spin.v2.20.4.spinresponsestatus" Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.SpinResponseMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.Spin.v2.20.4/TimeMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/MulticastDepthOfBook/Cboe_BzxEquities_MulticastDepthOfBook_Spin_v2_20_4_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.TimeMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.TimeMessage.json.stderr \
  || { echo "--- tshark FAILED (TimeMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.TimeMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.spin.v2.20.4.time" Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.TimeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.Spin.v2.20.4/MultipleMessages.pcap" \
  -X "lua_script:Cboe/BzxEquities/MulticastDepthOfBook/Cboe_BzxEquities_MulticastDepthOfBook_Spin_v2_20_4_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.Multiplemessages.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.Multiplemessages.json.stderr \
  || { echo "--- tshark FAILED (MultipleMessages) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.Multiplemessages.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.spin.v2.20.4." Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.Multiplemessages.json

[ "$(grep -c 'cboe.bzxequities.multicastdepthofbook.spin.v2.20.4.' Cboe.BzxEquities.MulticastDepthOfBook.Spin.v2.20.4.Multiplemessages.json)" -gt 1 ] || { echo "--- only one message decoded (MultipleMessages) ---"; exit 1; }
