set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NordicDerivatives.DepthOfBook.Itch.v2.22.4/MultipleMessages.pcap" \
  -X "lua_script:Nasdaq/NordicDerivatives/DepthOfBook/Nasdaq_NordicDerivatives_DepthOfBook_Itch_v2_22_4_Dissector.lua" \
  -T json \
  > Nasdaq.NordicDerivatives.DepthOfBook.Itch.v2.22.4.Multiplemessages.json 2> Nasdaq.NordicDerivatives.DepthOfBook.Itch.v2.22.4.Multiplemessages.json.stderr \
  || { echo "--- tshark FAILED (MultipleMessages) ---"; cat Nasdaq.NordicDerivatives.DepthOfBook.Itch.v2.22.4.Multiplemessages.json.stderr; exit 1; }

fields=$(grep -c "nasdaq.nordicderivatives.depthofbook.itch.v2.22.4." Nasdaq.NordicDerivatives.DepthOfBook.Itch.v2.22.4.Multiplemessages.json) \
  || { echo "--- no nasdaq.nordicderivatives.depthofbook.itch.v2.22.4 fields (MultipleMessages) ---"; exit 1; }
echo "  nasdaq.nordicderivatives.depthofbook.itch.v2.22.4 fields: $fields"

errors=$(grep -c '"_ws.expert.severity": "8388608"' Nasdaq.NordicDerivatives.DepthOfBook.Itch.v2.22.4.Multiplemessages.json || true)
[ "$errors" -eq 0 ] \
  || { echo "--- $errors expert errors (MultipleMessages) ---"; grep -o '"Lua Error[^"]*"' Nasdaq.NordicDerivatives.DepthOfBook.Itch.v2.22.4.Multiplemessages.json | sort -u | head; exit 1; }

[ "$(grep -c 'nasdaq.nordicderivatives.depthofbook.itch.v2.22.4.' Nasdaq.NordicDerivatives.DepthOfBook.Itch.v2.22.4.Multiplemessages.json)" -gt 1 ] || { echo "--- only one message decoded (MultipleMessages) ---"; exit 1; }
