set -o errexit
set -o pipefail

chown -R tester:tester .

decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.eurex.t7.emdi.fast.v5.0"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/Eurex/T7.Emdi.Fast.v5.0/Beacon.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (Beacon) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Emdi.Fast.v5.0/Beacon.pcap" \
  "${decode[@]}" \
  -X "lua_script:Eurex/T7/Emdi/Eurex_T7_Emdi_Fast_v5_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Emdi.Fast.v5.0.Beacon.json 2> Eurex.T7.Emdi.Fast.v5.0.Beacon.json.stderr \
  || { echo "--- tshark FAILED (Beacon) ---"; cat Eurex.T7.Emdi.Fast.v5.0.Beacon.json.stderr; exit 1; }

grep "eurex.t7.emdi.fast.v5.0.msgtype" Eurex.T7.Emdi.Fast.v5.0.Beacon.json
grep "eurex.t7.emdi.fast.v5.0.sendercompid" Eurex.T7.Emdi.Fast.v5.0.Beacon.json
grep "eurex.t7.emdi.fast.v5.0.sendersubid" Eurex.T7.Emdi.Fast.v5.0.Beacon.json
grep "eurex.t7.emdi.fast.v5.0.lastmsgseqnumprocessed" Eurex.T7.Emdi.Fast.v5.0.Beacon.json
decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.eurex.t7.emdi.fast.v5.0"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/Eurex/T7.Emdi.Fast.v5.0/DepthIncremental.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (DepthIncremental) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Emdi.Fast.v5.0/DepthIncremental.pcap" \
  "${decode[@]}" \
  -X "lua_script:Eurex/T7/Emdi/Eurex_T7_Emdi_Fast_v5_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Emdi.Fast.v5.0.Depthincremental.json 2> Eurex.T7.Emdi.Fast.v5.0.Depthincremental.json.stderr \
  || { echo "--- tshark FAILED (DepthIncremental) ---"; cat Eurex.T7.Emdi.Fast.v5.0.Depthincremental.json.stderr; exit 1; }

grep "eurex.t7.emdi.fast.v5.0.msgtype" Eurex.T7.Emdi.Fast.v5.0.Depthincremental.json
grep "eurex.t7.emdi.fast.v5.0.msgseqnum" Eurex.T7.Emdi.Fast.v5.0.Depthincremental.json
grep "eurex.t7.emdi.fast.v5.0.sendercompid" Eurex.T7.Emdi.Fast.v5.0.Depthincremental.json
grep "eurex.t7.emdi.fast.v5.0.marketsegmentid" Eurex.T7.Emdi.Fast.v5.0.Depthincremental.json
grep "eurex.t7.emdi.fast.v5.0.nomdentries" Eurex.T7.Emdi.Fast.v5.0.Depthincremental.json
decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.eurex.t7.emdi.fast.v5.0"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/Eurex/T7.Emdi.Fast.v5.0/DepthSnapshot.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (DepthSnapshot) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Emdi.Fast.v5.0/DepthSnapshot.pcap" \
  "${decode[@]}" \
  -X "lua_script:Eurex/T7/Emdi/Eurex_T7_Emdi_Fast_v5_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Emdi.Fast.v5.0.Depthsnapshot.json 2> Eurex.T7.Emdi.Fast.v5.0.Depthsnapshot.json.stderr \
  || { echo "--- tshark FAILED (DepthSnapshot) ---"; cat Eurex.T7.Emdi.Fast.v5.0.Depthsnapshot.json.stderr; exit 1; }

grep "eurex.t7.emdi.fast.v5.0.msgtype" Eurex.T7.Emdi.Fast.v5.0.Depthsnapshot.json
grep "eurex.t7.emdi.fast.v5.0.msgseqnum" Eurex.T7.Emdi.Fast.v5.0.Depthsnapshot.json
grep "eurex.t7.emdi.fast.v5.0.sendercompid" Eurex.T7.Emdi.Fast.v5.0.Depthsnapshot.json
grep "eurex.t7.emdi.fast.v5.0.lastmsgseqnumprocessed" Eurex.T7.Emdi.Fast.v5.0.Depthsnapshot.json
grep "eurex.t7.emdi.fast.v5.0.refreshindicator" Eurex.T7.Emdi.Fast.v5.0.Depthsnapshot.json
grep "eurex.t7.emdi.fast.v5.0.marketsegmentid" Eurex.T7.Emdi.Fast.v5.0.Depthsnapshot.json
grep "eurex.t7.emdi.fast.v5.0.securityid" Eurex.T7.Emdi.Fast.v5.0.Depthsnapshot.json
grep "eurex.t7.emdi.fast.v5.0.securityidsource" Eurex.T7.Emdi.Fast.v5.0.Depthsnapshot.json
grep "eurex.t7.emdi.fast.v5.0.productcomplex" Eurex.T7.Emdi.Fast.v5.0.Depthsnapshot.json
grep "eurex.t7.emdi.fast.v5.0.securitystatus" Eurex.T7.Emdi.Fast.v5.0.Depthsnapshot.json
grep "eurex.t7.emdi.fast.v5.0.tessecuritystatus" Eurex.T7.Emdi.Fast.v5.0.Depthsnapshot.json
grep "eurex.t7.emdi.fast.v5.0.lastupdatetime" Eurex.T7.Emdi.Fast.v5.0.Depthsnapshot.json
grep "eurex.t7.emdi.fast.v5.0.nomdentries" Eurex.T7.Emdi.Fast.v5.0.Depthsnapshot.json
