set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2023/AddOrderNoMpidAttributionMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2023_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.AddOrderNoMpidAttributionMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.AddOrderNoMpidAttributionMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderNoMpidAttributionMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.AddOrderNoMpidAttributionMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.buysellindicator" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.shares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.price" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.AddOrderNoMpidAttributionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2023/AddOrderWithMpidAttributionMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2023_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.AddOrderWithMpidAttributionMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.AddOrderWithMpidAttributionMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderWithMpidAttributionMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.AddOrderWithMpidAttributionMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.buysellindicator" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.shares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.price" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.attribution" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.AddOrderWithMpidAttributionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2023/CrossTradeMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2023_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.CrossTradeMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.CrossTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (CrossTradeMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.CrossTradeMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.CrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.CrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.CrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.crossshares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.CrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.CrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.crossprice" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.CrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.matchnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.CrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.crosstype" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.CrossTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2023/LuldAuctionCollarMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2023_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.LuldAuctionCollarMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.LuldAuctionCollarMessage.json.stderr \
  || { echo "--- tshark FAILED (LuldAuctionCollarMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.LuldAuctionCollarMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.LuldAuctionCollarMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.LuldAuctionCollarMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.LuldAuctionCollarMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.LuldAuctionCollarMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.auctioncollarreferenceprice" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.LuldAuctionCollarMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.upperauctioncollarprice" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.LuldAuctionCollarMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.lowerauctioncollarprice" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.LuldAuctionCollarMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.auctioncollarextension" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.LuldAuctionCollarMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2023/MarketParticipantPositionMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2023_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.MarketParticipantPositionMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.MarketParticipantPositionMessage.json.stderr \
  || { echo "--- tshark FAILED (MarketParticipantPositionMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.MarketParticipantPositionMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.mpid" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.primarymarketmaker" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.marketmakermode" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.marketparticipantstate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.MarketParticipantPositionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2023/NetOrderImbalanceIndicatorMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2023_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.NetOrderImbalanceIndicatorMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.NetOrderImbalanceIndicatorMessage.json.stderr \
  || { echo "--- tshark FAILED (NetOrderImbalanceIndicatorMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.NetOrderImbalanceIndicatorMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.pairedshares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.imbalanceshares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.imbalancedirection" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.farprice" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.nearprice" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.currentreferenceprice" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.crosstype" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.pricevariationindicator" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.NetOrderImbalanceIndicatorMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2023/NonCrossTradeMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2023_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.NonCrossTradeMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.NonCrossTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (NonCrossTradeMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.NonCrossTradeMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.NonCrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.NonCrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.NonCrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.NonCrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.buysellindicator" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.NonCrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.shares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.NonCrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.NonCrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.price" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.NonCrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.matchnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.NonCrossTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2023/OrderCancelMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2023_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderCancelMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderCancelMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderCancelMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderCancelMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderCancelMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderCancelMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderCancelMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderCancelMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.canceledshares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderCancelMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2023/OrderDeleteMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2023_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderDeleteMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderDeleteMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderDeleteMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderDeleteMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderDeleteMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderDeleteMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderDeleteMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderDeleteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2023/OrderExecutedMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2023_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderExecutedMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderExecutedMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderExecutedMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderExecutedMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderExecutedMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderExecutedMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.executedshares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderExecutedMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.matchnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderExecutedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2023/OrderExecutedWithPriceMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2023_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderExecutedWithPriceMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderExecutedWithPriceMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedWithPriceMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderExecutedWithPriceMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderExecutedWithPriceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderExecutedWithPriceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderExecutedWithPriceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderExecutedWithPriceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.executedshares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderExecutedWithPriceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.matchnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderExecutedWithPriceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.printable" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderExecutedWithPriceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.executionprice" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderExecutedWithPriceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2023/OrderReplaceMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2023_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderReplaceMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderReplaceMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderReplaceMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderReplaceMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderReplaceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderReplaceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderReplaceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.originalorderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderReplaceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.neworderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderReplaceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.shares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderReplaceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.price" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.OrderReplaceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2023/RegShoShortSalePriceTestRestrictedIndicatorMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2023_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.RegShoShortSalePriceTestRestrictedIndicatorMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.RegShoShortSalePriceTestRestrictedIndicatorMessage.json.stderr \
  || { echo "--- tshark FAILED (RegShoShortSalePriceTestRestrictedIndicatorMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.RegShoShortSalePriceTestRestrictedIndicatorMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.locatecode" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.RegShoShortSalePriceTestRestrictedIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.RegShoShortSalePriceTestRestrictedIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.RegShoShortSalePriceTestRestrictedIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.RegShoShortSalePriceTestRestrictedIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.regshoaction" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.RegShoShortSalePriceTestRestrictedIndicatorMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2023/StockTradingActionMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2023_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.StockTradingActionMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.StockTradingActionMessage.json.stderr \
  || { echo "--- tshark FAILED (StockTradingActionMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.StockTradingActionMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.tradingstate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.reserved" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.reasoncode" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.StockTradingActionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2023/SystemEventMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/TotalView/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2023_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.SystemEventMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.SystemEventMessage.json.stderr \
  || { echo "--- tshark FAILED (SystemEventMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.SystemEventMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.SystemEventMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.SystemEventMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.SystemEventMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2023.eventcode" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2023.SystemEventMessage.json
