set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v2.0/AddOrderMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v2_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v2.0.AddOrderMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v2.0.AddOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v2.0.AddOrderMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v2.0.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v2.0.AddOrderMessage.json
grep "nasdaq.nsmequities.totalview.itch.v2.0.side" Nasdaq.NsmEquities.TotalView.Itch.v2.0.AddOrderMessage.json
grep "nasdaq.nsmequities.totalview.itch.v2.0.shares" Nasdaq.NsmEquities.TotalView.Itch.v2.0.AddOrderMessage.json
grep "nasdaq.nsmequities.totalview.itch.v2.0.stock" Nasdaq.NsmEquities.TotalView.Itch.v2.0.AddOrderMessage.json
grep "nasdaq.nsmequities.totalview.itch.v2.0.price" Nasdaq.NsmEquities.TotalView.Itch.v2.0.AddOrderMessage.json
grep "nasdaq.nsmequities.totalview.itch.v2.0.display" Nasdaq.NsmEquities.TotalView.Itch.v2.0.AddOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v2.0/OrderCancelMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v2_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v2.0.OrderCancelMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v2.0.OrderCancelMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderCancelMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v2.0.OrderCancelMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v2.0.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v2.0.OrderCancelMessage.json
grep "nasdaq.nsmequities.totalview.itch.v2.0.canceledshares" Nasdaq.NsmEquities.TotalView.Itch.v2.0.OrderCancelMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v2.0/OrderExecutedMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v2_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v2.0.OrderExecutedMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v2.0.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v2.0.OrderExecutedMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v2.0.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v2.0.OrderExecutedMessage.json
grep "nasdaq.nsmequities.totalview.itch.v2.0.executedshares" Nasdaq.NsmEquities.TotalView.Itch.v2.0.OrderExecutedMessage.json
grep "nasdaq.nsmequities.totalview.itch.v2.0.matchnumber" Nasdaq.NsmEquities.TotalView.Itch.v2.0.OrderExecutedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v2.0/SystemEventMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v2_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v2.0.SystemEventMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v2.0.SystemEventMessage.json.stderr \
  || { echo "--- tshark FAILED (SystemEventMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v2.0.SystemEventMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v2.0.eventcode" Nasdaq.NsmEquities.TotalView.Itch.v2.0.SystemEventMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v2.0/TradeMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v2_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v2.0.TradeMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v2.0.TradeMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v2.0.TradeMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v2.0.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v2.0.TradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v2.0.side" Nasdaq.NsmEquities.TotalView.Itch.v2.0.TradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v2.0.shares" Nasdaq.NsmEquities.TotalView.Itch.v2.0.TradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v2.0.stock" Nasdaq.NsmEquities.TotalView.Itch.v2.0.TradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v2.0.price" Nasdaq.NsmEquities.TotalView.Itch.v2.0.TradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v2.0.matchnumber" Nasdaq.NsmEquities.TotalView.Itch.v2.0.TradeMessage.json
