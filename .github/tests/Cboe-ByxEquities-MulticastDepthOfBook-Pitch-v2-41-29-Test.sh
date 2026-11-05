set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29/AddOrderShortMessage.pcap" \
  -X "lua_script:Cboe/ByxEquities/MulticastDepthOfBook/Cboe_ByxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json 2> Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderShortMessage) ---"; cat Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json.stderr; exit 1; }

grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.sideindicator" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.quantityshort" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.symbolshort" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.priceshort" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.addorderflags" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29/ModifyOrderShortMessage.pcap" \
  -X "lua_script:Cboe/ByxEquities/MulticastDepthOfBook/Cboe_ByxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json 2> Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderShortMessage) ---"; cat Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json.stderr; exit 1; }

grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.quantityshort" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.priceshort" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.modifyorderflags" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29/MultipleMessages.pcap" \
  -X "lua_script:Cboe/ByxEquities/MulticastDepthOfBook/Cboe_ByxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.Multiplemessages.json 2> Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.Multiplemessages.json.stderr \
  || { echo "--- tshark FAILED (MultipleMessages) ---"; cat Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.Multiplemessages.json.stderr; exit 1; }

fields=$(grep -c "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29." Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.Multiplemessages.json) \
  || { echo "--- no cboe.byxequities.multicastdepthofbook.pitch.v2.41.29 fields (MultipleMessages) ---"; exit 1; }
echo "  cboe.byxequities.multicastdepthofbook.pitch.v2.41.29 fields: $fields"

errors=$(grep -c '"_ws.expert.severity": "8388608"' Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.Multiplemessages.json || true)
[ "$errors" -eq 0 ] \
  || { echo "--- $errors expert errors (MultipleMessages) ---"; grep -o '"Lua Error[^"]*"' Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.Multiplemessages.json | sort -u | head; exit 1; }

[ "$(grep -c 'cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.' Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.Multiplemessages.json)" -gt 1 ] || { echo "--- only one message decoded (MultipleMessages) ---"; exit 1; }
