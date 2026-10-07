set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2026/AddOrderNoMpidAttributionMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2026_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.AddOrderNoMpidAttributionMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.AddOrderNoMpidAttributionMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderNoMpidAttributionMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.AddOrderNoMpidAttributionMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.buysellindicator" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.shares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.price" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.AddOrderNoMpidAttributionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2026/AddOrderWithMpidAttributionMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2026_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.AddOrderWithMpidAttributionMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.AddOrderWithMpidAttributionMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderWithMpidAttributionMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.AddOrderWithMpidAttributionMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.buysellindicator" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.shares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.price" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.attribution" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.AddOrderWithMpidAttributionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2026/CrossTradeMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2026_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.CrossTradeMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.CrossTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (CrossTradeMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.CrossTradeMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.CrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.CrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.CrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.crossshares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.CrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.CrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.crossprice" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.CrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.matchnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.CrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.crosstype" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.CrossTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2026/LuldAuctionCollarMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2026_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.LuldAuctionCollarMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.LuldAuctionCollarMessage.json.stderr \
  || { echo "--- tshark FAILED (LuldAuctionCollarMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.LuldAuctionCollarMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.LuldAuctionCollarMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.LuldAuctionCollarMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.LuldAuctionCollarMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.LuldAuctionCollarMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.auctioncollarreferenceprice" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.LuldAuctionCollarMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.upperauctioncollarprice" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.LuldAuctionCollarMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.lowerauctioncollarprice" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.LuldAuctionCollarMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.auctioncollarextension" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.LuldAuctionCollarMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2026/MarketParticipantPositionMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2026_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.MarketParticipantPositionMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.MarketParticipantPositionMessage.json.stderr \
  || { echo "--- tshark FAILED (MarketParticipantPositionMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.MarketParticipantPositionMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.mpid" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.primarymarketmaker" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.marketmakermode" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.marketparticipantstate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.MarketParticipantPositionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2026/NetOrderImbalanceIndicatorMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2026_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.NetOrderImbalanceIndicatorMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.NetOrderImbalanceIndicatorMessage.json.stderr \
  || { echo "--- tshark FAILED (NetOrderImbalanceIndicatorMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.NetOrderImbalanceIndicatorMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.pairedshares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.imbalanceshares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.imbalancedirection" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.farprice" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.nearprice" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.currentreferenceprice" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.crosstype" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.pricevariationindicator" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.NetOrderImbalanceIndicatorMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2026/NonCrossTradeMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2026_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.NonCrossTradeMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.NonCrossTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (NonCrossTradeMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.NonCrossTradeMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.NonCrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.NonCrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.NonCrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.NonCrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.buysellindicator" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.NonCrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.shares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.NonCrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.NonCrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.price" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.NonCrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.matchnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.NonCrossTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2026/OrderCancelMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2026_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderCancelMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderCancelMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderCancelMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderCancelMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderCancelMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderCancelMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderCancelMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderCancelMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.canceledshares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderCancelMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2026/OrderDeleteMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2026_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderDeleteMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderDeleteMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderDeleteMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderDeleteMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderDeleteMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderDeleteMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderDeleteMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderDeleteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2026/OrderExecutedMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2026_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderExecutedMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderExecutedMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderExecutedMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderExecutedMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderExecutedMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderExecutedMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.executedshares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderExecutedMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.matchnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderExecutedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2026/OrderExecutedWithPriceMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2026_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderExecutedWithPriceMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderExecutedWithPriceMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedWithPriceMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderExecutedWithPriceMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderExecutedWithPriceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderExecutedWithPriceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderExecutedWithPriceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderExecutedWithPriceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.executedshares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderExecutedWithPriceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.matchnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderExecutedWithPriceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.printable" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderExecutedWithPriceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.executionprice" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderExecutedWithPriceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2026/OrderReplaceMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2026_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderReplaceMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderReplaceMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderReplaceMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderReplaceMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderReplaceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderReplaceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderReplaceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.originalorderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderReplaceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.neworderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderReplaceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.shares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderReplaceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.price" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.OrderReplaceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2026/RegShoShortSalePriceTestRestrictedIndicatorMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2026_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.RegShoShortSalePriceTestRestrictedIndicatorMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.RegShoShortSalePriceTestRestrictedIndicatorMessage.json.stderr \
  || { echo "--- tshark FAILED (RegShoShortSalePriceTestRestrictedIndicatorMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.RegShoShortSalePriceTestRestrictedIndicatorMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.locatecode" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.RegShoShortSalePriceTestRestrictedIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.RegShoShortSalePriceTestRestrictedIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.RegShoShortSalePriceTestRestrictedIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.RegShoShortSalePriceTestRestrictedIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.regshoaction" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.RegShoShortSalePriceTestRestrictedIndicatorMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2026/StockDirectoryMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2026_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.StockDirectoryMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.StockDirectoryMessage.json.stderr \
  || { echo "--- tshark FAILED (StockDirectoryMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.StockDirectoryMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.marketcategory" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.financialstatusindicator" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.roundlotsize" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.roundlotsonly" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.issueclassification" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.issuesubtype" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.authenticity" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.shortsalethresholdindicator" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.ipoflag" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.luldreferencepricetier" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.etpflag" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.etpleveragefactor" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.inverseindicator" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.StockDirectoryMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2026/StockTradingActionMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2026_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.StockTradingActionMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.StockTradingActionMessage.json.stderr \
  || { echo "--- tshark FAILED (StockTradingActionMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.StockTradingActionMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.tradingstate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.reserved" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.reasoncode" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.StockTradingActionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2026/SystemEventMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2026_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.SystemEventMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.SystemEventMessage.json.stderr \
  || { echo "--- tshark FAILED (SystemEventMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.SystemEventMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.SystemEventMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.SystemEventMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.SystemEventMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2026.eventcode" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2026.SystemEventMessage.json
