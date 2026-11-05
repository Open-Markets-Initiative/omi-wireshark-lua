set -o errexit
set -o pipefail

chown -R tester:tester .

decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.eurex.t7.emds.fast.v13.0"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/Eurex/T7.Emds.Fast.v13.0/AdjustedOpenInterest.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (AdjustedOpenInterest) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Emds.Fast.v13.0/AdjustedOpenInterest.pcap" \
  "${decode[@]}" \
  -X "lua_script:Eurex/T7/Emds/Eurex_T7_Emds_Fast_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Emds.Fast.v13.0.Adjustedopeninterest.json 2> Eurex.T7.Emds.Fast.v13.0.Adjustedopeninterest.json.stderr \
  || { echo "--- tshark FAILED (AdjustedOpenInterest) ---"; cat Eurex.T7.Emds.Fast.v13.0.Adjustedopeninterest.json.stderr; exit 1; }

grep "eurex.t7.emds.fast.v13.0.msgtype" Eurex.T7.Emds.Fast.v13.0.Adjustedopeninterest.json
grep "eurex.t7.emds.fast.v13.0.securityid" Eurex.T7.Emds.Fast.v13.0.Adjustedopeninterest.json
grep "eurex.t7.emds.fast.v13.0.securityidsource" Eurex.T7.Emds.Fast.v13.0.Adjustedopeninterest.json
grep "eurex.t7.emds.fast.v13.0.marketsegmentid" Eurex.T7.Emds.Fast.v13.0.Adjustedopeninterest.json
grep "eurex.t7.emds.fast.v13.0.nomdentries" Eurex.T7.Emds.Fast.v13.0.Adjustedopeninterest.json
decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.eurex.t7.emds.fast.v13.0"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/Eurex/T7.Emds.Fast.v13.0/HeartBeat.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (HeartBeat) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Emds.Fast.v13.0/HeartBeat.pcap" \
  "${decode[@]}" \
  -X "lua_script:Eurex/T7/Emds/Eurex_T7_Emds_Fast_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Emds.Fast.v13.0.Heartbeat.json 2> Eurex.T7.Emds.Fast.v13.0.Heartbeat.json.stderr \
  || { echo "--- tshark FAILED (HeartBeat) ---"; cat Eurex.T7.Emds.Fast.v13.0.Heartbeat.json.stderr; exit 1; }

grep "eurex.t7.emds.fast.v13.0.sendercompid" Eurex.T7.Emds.Fast.v13.0.Heartbeat.json
grep "eurex.t7.emds.fast.v13.0.lastpacketseqnum" Eurex.T7.Emds.Fast.v13.0.Heartbeat.json
decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.eurex.t7.emds.fast.v13.0"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/Eurex/T7.Emds.Fast.v13.0/MarketDataReport.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (MarketDataReport) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Emds.Fast.v13.0/MarketDataReport.pcap" \
  "${decode[@]}" \
  -X "lua_script:Eurex/T7/Emds/Eurex_T7_Emds_Fast_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Emds.Fast.v13.0.Marketdatareport.json 2> Eurex.T7.Emds.Fast.v13.0.Marketdatareport.json.stderr \
  || { echo "--- tshark FAILED (MarketDataReport) ---"; cat Eurex.T7.Emds.Fast.v13.0.Marketdatareport.json.stderr; exit 1; }

grep "eurex.t7.emds.fast.v13.0.msgtype" Eurex.T7.Emds.Fast.v13.0.Marketdatareport.json
grep "eurex.t7.emds.fast.v13.0.mdreportcount" Eurex.T7.Emds.Fast.v13.0.Marketdatareport.json
grep "eurex.t7.emds.fast.v13.0.lastmsgseqnumprocessed" Eurex.T7.Emds.Fast.v13.0.Marketdatareport.json
grep "eurex.t7.emds.fast.v13.0.mdreportevent" Eurex.T7.Emds.Fast.v13.0.Marketdatareport.json
grep "eurex.t7.emds.fast.v13.0.transacttime" Eurex.T7.Emds.Fast.v13.0.Marketdatareport.json
decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.eurex.t7.emds.fast.v13.0"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/Eurex/T7.Emds.Fast.v13.0/Settlement.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (Settlement) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Emds.Fast.v13.0/Settlement.pcap" \
  "${decode[@]}" \
  -X "lua_script:Eurex/T7/Emds/Eurex_T7_Emds_Fast_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Emds.Fast.v13.0.Settlement.json 2> Eurex.T7.Emds.Fast.v13.0.Settlement.json.stderr \
  || { echo "--- tshark FAILED (Settlement) ---"; cat Eurex.T7.Emds.Fast.v13.0.Settlement.json.stderr; exit 1; }

grep "eurex.t7.emds.fast.v13.0.msgtype" Eurex.T7.Emds.Fast.v13.0.Settlement.json
grep "eurex.t7.emds.fast.v13.0.securityid" Eurex.T7.Emds.Fast.v13.0.Settlement.json
grep "eurex.t7.emds.fast.v13.0.securityidsource" Eurex.T7.Emds.Fast.v13.0.Settlement.json
grep "eurex.t7.emds.fast.v13.0.marketsegmentid" Eurex.T7.Emds.Fast.v13.0.Settlement.json
grep "eurex.t7.emds.fast.v13.0.nomdentries" Eurex.T7.Emds.Fast.v13.0.Settlement.json
decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.eurex.t7.emds.fast.v13.0"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/Eurex/T7.Emds.Fast.v13.0/Trade.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (Trade) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Emds.Fast.v13.0/Trade.pcap" \
  "${decode[@]}" \
  -X "lua_script:Eurex/T7/Emds/Eurex_T7_Emds_Fast_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Emds.Fast.v13.0.Trade.json 2> Eurex.T7.Emds.Fast.v13.0.Trade.json.stderr \
  || { echo "--- tshark FAILED (Trade) ---"; cat Eurex.T7.Emds.Fast.v13.0.Trade.json.stderr; exit 1; }

grep "eurex.t7.emds.fast.v13.0.msgtype" Eurex.T7.Emds.Fast.v13.0.Trade.json
grep "eurex.t7.emds.fast.v13.0.msgseqnum" Eurex.T7.Emds.Fast.v13.0.Trade.json
grep "eurex.t7.emds.fast.v13.0.sendercompid" Eurex.T7.Emds.Fast.v13.0.Trade.json
grep "eurex.t7.emds.fast.v13.0.marketsegmentid" Eurex.T7.Emds.Fast.v13.0.Trade.json
grep "eurex.t7.emds.fast.v13.0.nomdentries" Eurex.T7.Emds.Fast.v13.0.Trade.json
