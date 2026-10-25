set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Tmx/Tsx.QuantumFeedLevel2.Xmt.v2.10/AssignCopOrdersMessage.pcap" \
  -X "lua_script:Tmx/Tsx/QuantumFeedLevel2/Tmx_Tsx_QuantumFeedLevel2_Xmt_v2_10_Dissector.lua" \
  -T json \
  > Tmx.Tsx.QuantumFeedLevel2.Xmt.v2.10.AssignCopOrdersMessage.json 2> Tmx.Tsx.QuantumFeedLevel2.Xmt.v2.10.AssignCopOrdersMessage.json.stderr \
  || { echo "--- tshark FAILED (AssignCopOrdersMessage) ---"; cat Tmx.Tsx.QuantumFeedLevel2.Xmt.v2.10.AssignCopOrdersMessage.json.stderr; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Tmx/Tsx.QuantumFeedLevel2.Xmt.v2.10/OrderBookedMessage.pcap" \
  -X "lua_script:Tmx/Tsx/QuantumFeedLevel2/Tmx_Tsx_QuantumFeedLevel2_Xmt_v2_10_Dissector.lua" \
  -T json \
  > Tmx.Tsx.QuantumFeedLevel2.Xmt.v2.10.OrderBookedMessage.json 2> Tmx.Tsx.QuantumFeedLevel2.Xmt.v2.10.OrderBookedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderBookedMessage) ---"; cat Tmx.Tsx.QuantumFeedLevel2.Xmt.v2.10.OrderBookedMessage.json.stderr; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Tmx/Tsx.QuantumFeedLevel2.Xmt.v2.10/OrderCancelledMessage.pcap" \
  -X "lua_script:Tmx/Tsx/QuantumFeedLevel2/Tmx_Tsx_QuantumFeedLevel2_Xmt_v2_10_Dissector.lua" \
  -T json \
  > Tmx.Tsx.QuantumFeedLevel2.Xmt.v2.10.OrderCancelledMessage.json 2> Tmx.Tsx.QuantumFeedLevel2.Xmt.v2.10.OrderCancelledMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderCancelledMessage) ---"; cat Tmx.Tsx.QuantumFeedLevel2.Xmt.v2.10.OrderCancelledMessage.json.stderr; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Tmx/Tsx.QuantumFeedLevel2.Xmt.v2.10/TradeReportMessage.pcap" \
  -X "lua_script:Tmx/Tsx/QuantumFeedLevel2/Tmx_Tsx_QuantumFeedLevel2_Xmt_v2_10_Dissector.lua" \
  -T json \
  > Tmx.Tsx.QuantumFeedLevel2.Xmt.v2.10.TradeReportMessage.json 2> Tmx.Tsx.QuantumFeedLevel2.Xmt.v2.10.TradeReportMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeReportMessage) ---"; cat Tmx.Tsx.QuantumFeedLevel2.Xmt.v2.10.TradeReportMessage.json.stderr; exit 1; }

