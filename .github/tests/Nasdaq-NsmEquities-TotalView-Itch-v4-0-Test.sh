set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v4.0/AddOrderMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v4_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v4.0.AddOrderMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v4.0.AddOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v4.0.AddOrderMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v4.0.nanoseconds" Nasdaq.NsmEquities.TotalView.Itch.v4.0.AddOrderMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v4.0.AddOrderMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.side" Nasdaq.NsmEquities.TotalView.Itch.v4.0.AddOrderMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.shares" Nasdaq.NsmEquities.TotalView.Itch.v4.0.AddOrderMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.stock" Nasdaq.NsmEquities.TotalView.Itch.v4.0.AddOrderMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.price" Nasdaq.NsmEquities.TotalView.Itch.v4.0.AddOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v4.0/AddOrderWithMpidMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v4_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v4.0.AddOrderWithMpidMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v4.0.AddOrderWithMpidMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderWithMpidMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v4.0.AddOrderWithMpidMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v4.0.nanoseconds" Nasdaq.NsmEquities.TotalView.Itch.v4.0.AddOrderWithMpidMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v4.0.AddOrderWithMpidMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.side" Nasdaq.NsmEquities.TotalView.Itch.v4.0.AddOrderWithMpidMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.shares" Nasdaq.NsmEquities.TotalView.Itch.v4.0.AddOrderWithMpidMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.stock" Nasdaq.NsmEquities.TotalView.Itch.v4.0.AddOrderWithMpidMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.price" Nasdaq.NsmEquities.TotalView.Itch.v4.0.AddOrderWithMpidMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.attribution" Nasdaq.NsmEquities.TotalView.Itch.v4.0.AddOrderWithMpidMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v4.0/BrokenTradeMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v4_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v4.0.BrokenTradeMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v4.0.BrokenTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (BrokenTradeMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v4.0.BrokenTradeMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v4.0.nanoseconds" Nasdaq.NsmEquities.TotalView.Itch.v4.0.BrokenTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.matchnumber" Nasdaq.NsmEquities.TotalView.Itch.v4.0.BrokenTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v4.0/CrossTradeMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v4_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v4.0.CrossTradeMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v4.0.CrossTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (CrossTradeMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v4.0.CrossTradeMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v4.0.nanoseconds" Nasdaq.NsmEquities.TotalView.Itch.v4.0.CrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.crossshares" Nasdaq.NsmEquities.TotalView.Itch.v4.0.CrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.stock" Nasdaq.NsmEquities.TotalView.Itch.v4.0.CrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.crossprice" Nasdaq.NsmEquities.TotalView.Itch.v4.0.CrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.matchnumber" Nasdaq.NsmEquities.TotalView.Itch.v4.0.CrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.crosstype" Nasdaq.NsmEquities.TotalView.Itch.v4.0.CrossTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v4.0/MarketParticipantPositionMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v4_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v4.0.MarketParticipantPositionMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v4.0.MarketParticipantPositionMessage.json.stderr \
  || { echo "--- tshark FAILED (MarketParticipantPositionMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v4.0.MarketParticipantPositionMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v4.0.nanoseconds" Nasdaq.NsmEquities.TotalView.Itch.v4.0.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.mpid" Nasdaq.NsmEquities.TotalView.Itch.v4.0.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.stock" Nasdaq.NsmEquities.TotalView.Itch.v4.0.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.primarymarketmaker" Nasdaq.NsmEquities.TotalView.Itch.v4.0.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.marketmakermode" Nasdaq.NsmEquities.TotalView.Itch.v4.0.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.marketparticipantstate" Nasdaq.NsmEquities.TotalView.Itch.v4.0.MarketParticipantPositionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v4.0/NetOrderImbalanceIndicatorMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v4_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v4.0.NetOrderImbalanceIndicatorMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v4.0.NetOrderImbalanceIndicatorMessage.json.stderr \
  || { echo "--- tshark FAILED (NetOrderImbalanceIndicatorMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v4.0.NetOrderImbalanceIndicatorMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v4.0.nanoseconds" Nasdaq.NsmEquities.TotalView.Itch.v4.0.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.pairedshares" Nasdaq.NsmEquities.TotalView.Itch.v4.0.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.imbalanceshares" Nasdaq.NsmEquities.TotalView.Itch.v4.0.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.imbalancedirection" Nasdaq.NsmEquities.TotalView.Itch.v4.0.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.stock" Nasdaq.NsmEquities.TotalView.Itch.v4.0.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.farprice" Nasdaq.NsmEquities.TotalView.Itch.v4.0.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.nearprice" Nasdaq.NsmEquities.TotalView.Itch.v4.0.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.currentreferenceprice" Nasdaq.NsmEquities.TotalView.Itch.v4.0.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.crosstype" Nasdaq.NsmEquities.TotalView.Itch.v4.0.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.pricevariationindicator" Nasdaq.NsmEquities.TotalView.Itch.v4.0.NetOrderImbalanceIndicatorMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v4.0/OrderCancelMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v4_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v4.0.OrderCancelMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v4.0.OrderCancelMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderCancelMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v4.0.OrderCancelMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v4.0.nanoseconds" Nasdaq.NsmEquities.TotalView.Itch.v4.0.OrderCancelMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v4.0.OrderCancelMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.canceledshares" Nasdaq.NsmEquities.TotalView.Itch.v4.0.OrderCancelMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v4.0/OrderDeleteMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v4_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v4.0.OrderDeleteMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v4.0.OrderDeleteMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderDeleteMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v4.0.OrderDeleteMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v4.0.nanoseconds" Nasdaq.NsmEquities.TotalView.Itch.v4.0.OrderDeleteMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v4.0.OrderDeleteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v4.0/OrderExecutedMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v4_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v4.0.OrderExecutedMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v4.0.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v4.0.OrderExecutedMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v4.0.nanoseconds" Nasdaq.NsmEquities.TotalView.Itch.v4.0.OrderExecutedMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v4.0.OrderExecutedMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.executedshares" Nasdaq.NsmEquities.TotalView.Itch.v4.0.OrderExecutedMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.matchnumber" Nasdaq.NsmEquities.TotalView.Itch.v4.0.OrderExecutedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v4.0/OrderExecutedWithPriceMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v4_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v4.0.OrderExecutedWithPriceMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v4.0.OrderExecutedWithPriceMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedWithPriceMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v4.0.OrderExecutedWithPriceMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v4.0.nanoseconds" Nasdaq.NsmEquities.TotalView.Itch.v4.0.OrderExecutedWithPriceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v4.0.OrderExecutedWithPriceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.executedshares" Nasdaq.NsmEquities.TotalView.Itch.v4.0.OrderExecutedWithPriceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.matchnumber" Nasdaq.NsmEquities.TotalView.Itch.v4.0.OrderExecutedWithPriceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.printable" Nasdaq.NsmEquities.TotalView.Itch.v4.0.OrderExecutedWithPriceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.executionprice" Nasdaq.NsmEquities.TotalView.Itch.v4.0.OrderExecutedWithPriceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v4.0/StockDirectoryMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v4_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v4.0.StockDirectoryMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v4.0.StockDirectoryMessage.json.stderr \
  || { echo "--- tshark FAILED (StockDirectoryMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v4.0.StockDirectoryMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v4.0.nanoseconds" Nasdaq.NsmEquities.TotalView.Itch.v4.0.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.stock" Nasdaq.NsmEquities.TotalView.Itch.v4.0.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.marketcategory" Nasdaq.NsmEquities.TotalView.Itch.v4.0.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.financialstatusindicator" Nasdaq.NsmEquities.TotalView.Itch.v4.0.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.roundlotsize" Nasdaq.NsmEquities.TotalView.Itch.v4.0.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.roundlotsonly" Nasdaq.NsmEquities.TotalView.Itch.v4.0.StockDirectoryMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v4.0/StockTradingActionMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v4_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v4.0.StockTradingActionMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v4.0.StockTradingActionMessage.json.stderr \
  || { echo "--- tshark FAILED (StockTradingActionMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v4.0.StockTradingActionMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v4.0.nanoseconds" Nasdaq.NsmEquities.TotalView.Itch.v4.0.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.stock" Nasdaq.NsmEquities.TotalView.Itch.v4.0.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.tradingstate" Nasdaq.NsmEquities.TotalView.Itch.v4.0.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.reserved" Nasdaq.NsmEquities.TotalView.Itch.v4.0.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.reason" Nasdaq.NsmEquities.TotalView.Itch.v4.0.StockTradingActionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v4.0/SystemEventMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v4_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v4.0.SystemEventMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v4.0.SystemEventMessage.json.stderr \
  || { echo "--- tshark FAILED (SystemEventMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v4.0.SystemEventMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v4.0.nanoseconds" Nasdaq.NsmEquities.TotalView.Itch.v4.0.SystemEventMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.eventcode" Nasdaq.NsmEquities.TotalView.Itch.v4.0.SystemEventMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v4.0/TimestampMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v4_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v4.0.TimestampMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v4.0.TimestampMessage.json.stderr \
  || { echo "--- tshark FAILED (TimestampMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v4.0.TimestampMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v4.0.second" Nasdaq.NsmEquities.TotalView.Itch.v4.0.TimestampMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v4.0/TradeMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v4_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v4.0.TradeMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v4.0.TradeMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v4.0.TradeMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v4.0.nanoseconds" Nasdaq.NsmEquities.TotalView.Itch.v4.0.TradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v4.0.TradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.side" Nasdaq.NsmEquities.TotalView.Itch.v4.0.TradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.shares" Nasdaq.NsmEquities.TotalView.Itch.v4.0.TradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.stock" Nasdaq.NsmEquities.TotalView.Itch.v4.0.TradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.price" Nasdaq.NsmEquities.TotalView.Itch.v4.0.TradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v4.0.matchnumber" Nasdaq.NsmEquities.TotalView.Itch.v4.0.TradeMessage.json
