set -o errexit
set -o pipefail

chown -R tester:tester .

decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.eurex.t7.emdi.fast.v13.1"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/Eurex/T7.Emdi.Fast.v13.1/Beacon.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (Beacon) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Emdi.Fast.v13.1/Beacon.pcap" \
  "${decode[@]}" \
  -X "lua_script:Eurex/T7/Emdi/Eurex_T7_Emdi_Fast_v13_1_Dissector.lua" \
  -T json \
  > Eurex.T7.Emdi.Fast.v13.1.Beacon.json 2> Eurex.T7.Emdi.Fast.v13.1.Beacon.json.stderr \
  || { echo "--- tshark FAILED (Beacon) ---"; cat Eurex.T7.Emdi.Fast.v13.1.Beacon.json.stderr; exit 1; }

grep "eurex.t7.emdi.fast.v13.1.msgtype" Eurex.T7.Emdi.Fast.v13.1.Beacon.json
grep "eurex.t7.emdi.fast.v13.1.sendercompid" Eurex.T7.Emdi.Fast.v13.1.Beacon.json
grep "eurex.t7.emdi.fast.v13.1.sendersubid" Eurex.T7.Emdi.Fast.v13.1.Beacon.json
grep "eurex.t7.emdi.fast.v13.1.lastmsgseqnumprocessed" Eurex.T7.Emdi.Fast.v13.1.Beacon.json
decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.eurex.t7.emdi.fast.v13.1"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/Eurex/T7.Emdi.Fast.v13.1/DepthIncremental.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (DepthIncremental) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Emdi.Fast.v13.1/DepthIncremental.pcap" \
  "${decode[@]}" \
  -X "lua_script:Eurex/T7/Emdi/Eurex_T7_Emdi_Fast_v13_1_Dissector.lua" \
  -T json \
  > Eurex.T7.Emdi.Fast.v13.1.Depthincremental.json 2> Eurex.T7.Emdi.Fast.v13.1.Depthincremental.json.stderr \
  || { echo "--- tshark FAILED (DepthIncremental) ---"; cat Eurex.T7.Emdi.Fast.v13.1.Depthincremental.json.stderr; exit 1; }

grep "eurex.t7.emdi.fast.v13.1.msgtype" Eurex.T7.Emdi.Fast.v13.1.Depthincremental.json
grep "eurex.t7.emdi.fast.v13.1.msgseqnum" Eurex.T7.Emdi.Fast.v13.1.Depthincremental.json
grep "eurex.t7.emdi.fast.v13.1.sendercompid" Eurex.T7.Emdi.Fast.v13.1.Depthincremental.json
grep "eurex.t7.emdi.fast.v13.1.marketsegmentid" Eurex.T7.Emdi.Fast.v13.1.Depthincremental.json
grep "eurex.t7.emdi.fast.v13.1.nomdentries" Eurex.T7.Emdi.Fast.v13.1.Depthincremental.json
decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.eurex.t7.emdi.fast.v13.1"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/Eurex/T7.Emdi.Fast.v13.1/DepthSnapshot.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (DepthSnapshot) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Emdi.Fast.v13.1/DepthSnapshot.pcap" \
  "${decode[@]}" \
  -X "lua_script:Eurex/T7/Emdi/Eurex_T7_Emdi_Fast_v13_1_Dissector.lua" \
  -T json \
  > Eurex.T7.Emdi.Fast.v13.1.Depthsnapshot.json 2> Eurex.T7.Emdi.Fast.v13.1.Depthsnapshot.json.stderr \
  || { echo "--- tshark FAILED (DepthSnapshot) ---"; cat Eurex.T7.Emdi.Fast.v13.1.Depthsnapshot.json.stderr; exit 1; }

grep "eurex.t7.emdi.fast.v13.1.msgtype" Eurex.T7.Emdi.Fast.v13.1.Depthsnapshot.json
grep "eurex.t7.emdi.fast.v13.1.msgseqnum" Eurex.T7.Emdi.Fast.v13.1.Depthsnapshot.json
grep "eurex.t7.emdi.fast.v13.1.sendercompid" Eurex.T7.Emdi.Fast.v13.1.Depthsnapshot.json
grep "eurex.t7.emdi.fast.v13.1.lastmsgseqnumprocessed" Eurex.T7.Emdi.Fast.v13.1.Depthsnapshot.json
grep "eurex.t7.emdi.fast.v13.1.refreshindicator" Eurex.T7.Emdi.Fast.v13.1.Depthsnapshot.json
grep "eurex.t7.emdi.fast.v13.1.marketsegmentid" Eurex.T7.Emdi.Fast.v13.1.Depthsnapshot.json
grep "eurex.t7.emdi.fast.v13.1.securityid" Eurex.T7.Emdi.Fast.v13.1.Depthsnapshot.json
grep "eurex.t7.emdi.fast.v13.1.securityidsource" Eurex.T7.Emdi.Fast.v13.1.Depthsnapshot.json
grep "eurex.t7.emdi.fast.v13.1.productcomplex" Eurex.T7.Emdi.Fast.v13.1.Depthsnapshot.json
grep "eurex.t7.emdi.fast.v13.1.securitystatus" Eurex.T7.Emdi.Fast.v13.1.Depthsnapshot.json
grep "eurex.t7.emdi.fast.v13.1.tessecuritystatus" Eurex.T7.Emdi.Fast.v13.1.Depthsnapshot.json
grep "eurex.t7.emdi.fast.v13.1.lastupdatetime" Eurex.T7.Emdi.Fast.v13.1.Depthsnapshot.json
grep "eurex.t7.emdi.fast.v13.1.nomdentries" Eurex.T7.Emdi.Fast.v13.1.Depthsnapshot.json
decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.eurex.t7.emdi.fast.v13.1"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/Eurex/T7.Emdi.Fast.v13.1/InstrumentStateChange.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (InstrumentStateChange) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Emdi.Fast.v13.1/InstrumentStateChange.pcap" \
  "${decode[@]}" \
  -X "lua_script:Eurex/T7/Emdi/Eurex_T7_Emdi_Fast_v13_1_Dissector.lua" \
  -T json \
  > Eurex.T7.Emdi.Fast.v13.1.Instrumentstatechange.json 2> Eurex.T7.Emdi.Fast.v13.1.Instrumentstatechange.json.stderr \
  || { echo "--- tshark FAILED (InstrumentStateChange) ---"; cat Eurex.T7.Emdi.Fast.v13.1.Instrumentstatechange.json.stderr; exit 1; }

grep "eurex.t7.emdi.fast.v13.1.msgtype" Eurex.T7.Emdi.Fast.v13.1.Instrumentstatechange.json
grep "eurex.t7.emdi.fast.v13.1.msgseqnum" Eurex.T7.Emdi.Fast.v13.1.Instrumentstatechange.json
grep "eurex.t7.emdi.fast.v13.1.sendercompid" Eurex.T7.Emdi.Fast.v13.1.Instrumentstatechange.json
grep "eurex.t7.emdi.fast.v13.1.marketsegmentid" Eurex.T7.Emdi.Fast.v13.1.Instrumentstatechange.json
grep "eurex.t7.emdi.fast.v13.1.securityid" Eurex.T7.Emdi.Fast.v13.1.Instrumentstatechange.json
grep "eurex.t7.emdi.fast.v13.1.securityidsource" Eurex.T7.Emdi.Fast.v13.1.Instrumentstatechange.json
grep "eurex.t7.emdi.fast.v13.1.securitystatus" Eurex.T7.Emdi.Fast.v13.1.Instrumentstatechange.json
grep "eurex.t7.emdi.fast.v13.1.securitytradingstatus" Eurex.T7.Emdi.Fast.v13.1.Instrumentstatechange.json
grep "eurex.t7.emdi.fast.v13.1.marketcondition" Eurex.T7.Emdi.Fast.v13.1.Instrumentstatechange.json
grep "eurex.t7.emdi.fast.v13.1.fastmarketindicator" Eurex.T7.Emdi.Fast.v13.1.Instrumentstatechange.json
grep "eurex.t7.emdi.fast.v13.1.securitytradingevent" Eurex.T7.Emdi.Fast.v13.1.Instrumentstatechange.json
grep "eurex.t7.emdi.fast.v13.1.soldoutindicator" Eurex.T7.Emdi.Fast.v13.1.Instrumentstatechange.json
grep "eurex.t7.emdi.fast.v13.1.highpx" Eurex.T7.Emdi.Fast.v13.1.Instrumentstatechange.json
grep "eurex.t7.emdi.fast.v13.1.lowpx" Eurex.T7.Emdi.Fast.v13.1.Instrumentstatechange.json
grep "eurex.t7.emdi.fast.v13.1.transacttime" Eurex.T7.Emdi.Fast.v13.1.Instrumentstatechange.json
grep "eurex.t7.emdi.fast.v13.1.tessecuritystatus" Eurex.T7.Emdi.Fast.v13.1.Instrumentstatechange.json
decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.eurex.t7.emdi.fast.v13.1"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/Eurex/T7.Emdi.Fast.v13.1/MassInstrumentStateChange.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (MassInstrumentStateChange) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Emdi.Fast.v13.1/MassInstrumentStateChange.pcap" \
  "${decode[@]}" \
  -X "lua_script:Eurex/T7/Emdi/Eurex_T7_Emdi_Fast_v13_1_Dissector.lua" \
  -T json \
  > Eurex.T7.Emdi.Fast.v13.1.Massinstrumentstatechange.json 2> Eurex.T7.Emdi.Fast.v13.1.Massinstrumentstatechange.json.stderr \
  || { echo "--- tshark FAILED (MassInstrumentStateChange) ---"; cat Eurex.T7.Emdi.Fast.v13.1.Massinstrumentstatechange.json.stderr; exit 1; }

grep "eurex.t7.emdi.fast.v13.1.msgtype" Eurex.T7.Emdi.Fast.v13.1.Massinstrumentstatechange.json
grep "eurex.t7.emdi.fast.v13.1.msgseqnum" Eurex.T7.Emdi.Fast.v13.1.Massinstrumentstatechange.json
grep "eurex.t7.emdi.fast.v13.1.sendercompid" Eurex.T7.Emdi.Fast.v13.1.Massinstrumentstatechange.json
grep "eurex.t7.emdi.fast.v13.1.marketsegmentid" Eurex.T7.Emdi.Fast.v13.1.Massinstrumentstatechange.json
grep "eurex.t7.emdi.fast.v13.1.instrumentscopeproductcomplex" Eurex.T7.Emdi.Fast.v13.1.Massinstrumentstatechange.json
grep "eurex.t7.emdi.fast.v13.1.securitymassstatus" Eurex.T7.Emdi.Fast.v13.1.Massinstrumentstatechange.json
grep "eurex.t7.emdi.fast.v13.1.securitymasstradingstatus" Eurex.T7.Emdi.Fast.v13.1.Massinstrumentstatechange.json
grep "eurex.t7.emdi.fast.v13.1.massmarketcondition" Eurex.T7.Emdi.Fast.v13.1.Massinstrumentstatechange.json
grep "eurex.t7.emdi.fast.v13.1.fastmarketindicator" Eurex.T7.Emdi.Fast.v13.1.Massinstrumentstatechange.json
grep "eurex.t7.emdi.fast.v13.1.securitymasstradingevent" Eurex.T7.Emdi.Fast.v13.1.Massinstrumentstatechange.json
grep "eurex.t7.emdi.fast.v13.1.masssoldoutindicator" Eurex.T7.Emdi.Fast.v13.1.Massinstrumentstatechange.json
grep "eurex.t7.emdi.fast.v13.1.transacttime" Eurex.T7.Emdi.Fast.v13.1.Massinstrumentstatechange.json
grep "eurex.t7.emdi.fast.v13.1.tessecuritymassstatus" Eurex.T7.Emdi.Fast.v13.1.Massinstrumentstatechange.json
grep "eurex.t7.emdi.fast.v13.1.norelatedsym" Eurex.T7.Emdi.Fast.v13.1.Massinstrumentstatechange.json
grep "eurex.t7.emdi.fast.v13.1.lastfragment" Eurex.T7.Emdi.Fast.v13.1.Massinstrumentstatechange.json
decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.eurex.t7.emdi.fast.v13.1"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/Eurex/T7.Emdi.Fast.v13.1/ProductStateChange.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (ProductStateChange) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Emdi.Fast.v13.1/ProductStateChange.pcap" \
  "${decode[@]}" \
  -X "lua_script:Eurex/T7/Emdi/Eurex_T7_Emdi_Fast_v13_1_Dissector.lua" \
  -T json \
  > Eurex.T7.Emdi.Fast.v13.1.Productstatechange.json 2> Eurex.T7.Emdi.Fast.v13.1.Productstatechange.json.stderr \
  || { echo "--- tshark FAILED (ProductStateChange) ---"; cat Eurex.T7.Emdi.Fast.v13.1.Productstatechange.json.stderr; exit 1; }

grep "eurex.t7.emdi.fast.v13.1.msgtype" Eurex.T7.Emdi.Fast.v13.1.Productstatechange.json
grep "eurex.t7.emdi.fast.v13.1.msgseqnum" Eurex.T7.Emdi.Fast.v13.1.Productstatechange.json
grep "eurex.t7.emdi.fast.v13.1.sendercompid" Eurex.T7.Emdi.Fast.v13.1.Productstatechange.json
grep "eurex.t7.emdi.fast.v13.1.marketsegmentid" Eurex.T7.Emdi.Fast.v13.1.Productstatechange.json
grep "eurex.t7.emdi.fast.v13.1.tradingsessionid" Eurex.T7.Emdi.Fast.v13.1.Productstatechange.json
grep "eurex.t7.emdi.fast.v13.1.tradingsessionsubid" Eurex.T7.Emdi.Fast.v13.1.Productstatechange.json
grep "eurex.t7.emdi.fast.v13.1.tradsesstatus" Eurex.T7.Emdi.Fast.v13.1.Productstatechange.json
grep "eurex.t7.emdi.fast.v13.1.marketcondition" Eurex.T7.Emdi.Fast.v13.1.Productstatechange.json
grep "eurex.t7.emdi.fast.v13.1.fastmarketindicator" Eurex.T7.Emdi.Fast.v13.1.Productstatechange.json
grep "eurex.t7.emdi.fast.v13.1.transacttime" Eurex.T7.Emdi.Fast.v13.1.Productstatechange.json
grep "eurex.t7.emdi.fast.v13.1.testradsesstatus" Eurex.T7.Emdi.Fast.v13.1.Productstatechange.json
