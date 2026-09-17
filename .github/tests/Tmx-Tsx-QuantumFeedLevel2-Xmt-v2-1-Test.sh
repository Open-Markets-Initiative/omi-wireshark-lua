set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Tmx/Tsx.QuantumFeedLevel2.Xmt.v2.1/AssignCopOrdersMessage.pcap" \
  -X "lua_script:Tmx/Tsx/QuantumFeedLevel2/Tmx_Tsx_QuantumFeedLevel2_Xmt_v2_1_Dissector.lua" \
  -T json \
  > Tmx.Tsx.QuantumFeedLevel2.Xmt.v2.1.AssignCopOrdersMessage.json 2> Tmx.Tsx.QuantumFeedLevel2.Xmt.v2.1.AssignCopOrdersMessage.json.stderr \
  || { echo "--- tshark FAILED (AssignCopOrdersMessage) ---"; cat Tmx.Tsx.QuantumFeedLevel2.Xmt.v2.1.AssignCopOrdersMessage.json.stderr; exit 1; }

grep "tmx.tsx.quantumfeedlevel2.xmt.v2.1.symbol" Tmx.Tsx.QuantumFeedLevel2.Xmt.v2.1.AssignCopOrdersMessage.json
grep "tmx.tsx.quantumfeedlevel2.xmt.v2.1.calculatedopeningprice" Tmx.Tsx.QuantumFeedLevel2.Xmt.v2.1.AssignCopOrdersMessage.json
grep "tmx.tsx.quantumfeedlevel2.xmt.v2.1.orderside" Tmx.Tsx.QuantumFeedLevel2.Xmt.v2.1.AssignCopOrdersMessage.json
grep "tmx.tsx.quantumfeedlevel2.xmt.v2.1.tradingsystemtimestamp" Tmx.Tsx.QuantumFeedLevel2.Xmt.v2.1.AssignCopOrdersMessage.json
