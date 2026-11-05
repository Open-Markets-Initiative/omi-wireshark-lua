set -o errexit
set -o pipefail

chown -R tester:tester .

decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.eurex.t7.underlyingticker.fast.v13.1"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/Eurex/T7.UnderlyingTicker.Fast.v13.1/TickerMessage.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (TickerMessage) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.UnderlyingTicker.Fast.v13.1/TickerMessage.pcap" \
  "${decode[@]}" \
  -X "lua_script:Eurex/T7/UnderlyingTicker/Eurex_T7_UnderlyingTicker_Fast_v13_1_Dissector.lua" \
  -T json \
  > Eurex.T7.UnderlyingTicker.Fast.v13.1.Tickermessage.json 2> Eurex.T7.UnderlyingTicker.Fast.v13.1.Tickermessage.json.stderr \
  || { echo "--- tshark FAILED (TickerMessage) ---"; cat Eurex.T7.UnderlyingTicker.Fast.v13.1.Tickermessage.json.stderr; exit 1; }

grep "eurex.t7.underlyingticker.fast.v13.1.msgtype" Eurex.T7.UnderlyingTicker.Fast.v13.1.Tickermessage.json
grep "eurex.t7.underlyingticker.fast.v13.1.msgseqnum" Eurex.T7.UnderlyingTicker.Fast.v13.1.Tickermessage.json
grep "eurex.t7.underlyingticker.fast.v13.1.sendercompid" Eurex.T7.UnderlyingTicker.Fast.v13.1.Tickermessage.json
grep "eurex.t7.underlyingticker.fast.v13.1.nomdentries" Eurex.T7.UnderlyingTicker.Fast.v13.1.Tickermessage.json
