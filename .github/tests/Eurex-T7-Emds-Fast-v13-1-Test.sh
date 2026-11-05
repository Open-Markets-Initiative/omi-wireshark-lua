set -o errexit
set -o pipefail

chown -R tester:tester .

decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.eurex.t7.emds.fast.v13.1"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/Eurex/T7.Emds.Fast.v13.1/AdjustedOpenInterest.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (AdjustedOpenInterest) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Emds.Fast.v13.1/AdjustedOpenInterest.pcap" \
  "${decode[@]}" \
  -X "lua_script:Eurex/T7/Emds/Eurex_T7_Emds_Fast_v13_1_Dissector.lua" \
  -T json \
  > Eurex.T7.Emds.Fast.v13.1.Adjustedopeninterest.json 2> Eurex.T7.Emds.Fast.v13.1.Adjustedopeninterest.json.stderr \
  || { echo "--- tshark FAILED (AdjustedOpenInterest) ---"; cat Eurex.T7.Emds.Fast.v13.1.Adjustedopeninterest.json.stderr; exit 1; }

grep "eurex.t7.emds.fast.v13.1.msgtype" Eurex.T7.Emds.Fast.v13.1.Adjustedopeninterest.json
grep "eurex.t7.emds.fast.v13.1.securityid" Eurex.T7.Emds.Fast.v13.1.Adjustedopeninterest.json
grep "eurex.t7.emds.fast.v13.1.securityidsource" Eurex.T7.Emds.Fast.v13.1.Adjustedopeninterest.json
grep "eurex.t7.emds.fast.v13.1.marketsegmentid" Eurex.T7.Emds.Fast.v13.1.Adjustedopeninterest.json
grep "eurex.t7.emds.fast.v13.1.nomdentries" Eurex.T7.Emds.Fast.v13.1.Adjustedopeninterest.json
decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.eurex.t7.emds.fast.v13.1"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/Eurex/T7.Emds.Fast.v13.1/HeartBeat.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (HeartBeat) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Emds.Fast.v13.1/HeartBeat.pcap" \
  "${decode[@]}" \
  -X "lua_script:Eurex/T7/Emds/Eurex_T7_Emds_Fast_v13_1_Dissector.lua" \
  -T json \
  > Eurex.T7.Emds.Fast.v13.1.Heartbeat.json 2> Eurex.T7.Emds.Fast.v13.1.Heartbeat.json.stderr \
  || { echo "--- tshark FAILED (HeartBeat) ---"; cat Eurex.T7.Emds.Fast.v13.1.Heartbeat.json.stderr; exit 1; }

grep "eurex.t7.emds.fast.v13.1.sendercompid" Eurex.T7.Emds.Fast.v13.1.Heartbeat.json
grep "eurex.t7.emds.fast.v13.1.lastpacketseqnum" Eurex.T7.Emds.Fast.v13.1.Heartbeat.json
