set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NationalEquities.IntegratedFeed.Pillar.v2.5.g/AddOrderMessage.pcap" \
  -X "lua_script:Nyse/NationalEquities/IntegratedFeed/Nyse_NationalEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json 2> Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderMessage) ---"; cat Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json.stderr; exit 1; }

grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.orderid" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.price" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.volume" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.side" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.firmid" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NationalEquities.IntegratedFeed.Pillar.v2.5.g/CrossTradeMessage.pcap" \
  -X "lua_script:Nyse/NationalEquities/IntegratedFeed/Nyse_NationalEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json 2> Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (CrossTradeMessage) ---"; cat Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json.stderr; exit 1; }

grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.crossid" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.price" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.volume" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.crosstype" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NationalEquities.IntegratedFeed.Pillar.v2.5.g/DeleteOrderMessage.pcap" \
  -X "lua_script:Nyse/NationalEquities/IntegratedFeed/Nyse_NationalEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json 2> Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (DeleteOrderMessage) ---"; cat Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json.stderr; exit 1; }

grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.orderid" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NationalEquities.IntegratedFeed.Pillar.v2.5.g/ImbalanceMessage.pcap" \
  -X "lua_script:Nyse/NationalEquities/IntegratedFeed/Nyse_NationalEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json 2> Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json.stderr \
  || { echo "--- tshark FAILED (ImbalanceMessage) ---"; cat Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json.stderr; exit 1; }

grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.sourcetime" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.referenceprice" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.pairedqty" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.totalimbalanceqty" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.marketimbalanceqty" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.auctiontime" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.auctiontype" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.imbalanceside" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.continuousbookclearingprice" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.auctioninterestclearingprice" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.ssrfilingprice" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.indicativematchprice" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.uppercollar" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.lowercollar" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.auctionstatus" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.freezestatus" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.numextensions" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.unpairedqty" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.unpairedside" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NationalEquities.IntegratedFeed.Pillar.v2.5.g/ModifyOrderMessage.pcap" \
  -X "lua_script:Nyse/NationalEquities/IntegratedFeed/Nyse_NationalEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json 2> Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderMessage) ---"; cat Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json.stderr; exit 1; }

grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.orderid" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.price" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.volume" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.positionchange" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.side" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NationalEquities.IntegratedFeed.Pillar.v2.5.g/NonDisplayedTradeMessage.pcap" \
  -X "lua_script:Nyse/NationalEquities/IntegratedFeed/Nyse_NationalEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json 2> Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (NonDisplayedTradeMessage) ---"; cat Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json.stderr; exit 1; }

grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.tradeid" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.price" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.volume" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.printableflag" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.tradecond1" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.tradecond2" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.tradecond3" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.tradecond4" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NationalEquities.IntegratedFeed.Pillar.v2.5.g/OrderExecutionMessage.pcap" \
  -X "lua_script:Nyse/NationalEquities/IntegratedFeed/Nyse_NationalEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json 2> Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutionMessage) ---"; cat Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json.stderr; exit 1; }

grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.orderid" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.tradeid" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.price" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.volume" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.printableflag" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.tradecond1" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.tradecond2" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.tradecond3" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.tradecond4" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NationalEquities.IntegratedFeed.Pillar.v2.5.g/ReplaceOrderMessage.pcap" \
  -X "lua_script:Nyse/NationalEquities/IntegratedFeed/Nyse_NationalEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json 2> Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (ReplaceOrderMessage) ---"; cat Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json.stderr; exit 1; }

grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.orderid" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.neworderid" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.price" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.volume" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.side" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NationalEquities.IntegratedFeed.Pillar.v2.5.g/SecurityStatusMessage.pcap" \
  -X "lua_script:Nyse/NationalEquities/IntegratedFeed/Nyse_NationalEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json 2> Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityStatusMessage) ---"; cat Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json.stderr; exit 1; }

grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.sourcetime" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.securitystatus" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.haltcondition" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.price1" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.price2" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.ssrtriggeringexchangeid" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.ssrtriggeringvolume" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.time" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.ssrstate" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.marketstate" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.sessionstate" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NationalEquities.IntegratedFeed.Pillar.v2.5.g/SourceTimeReferenceMessage.pcap" \
  -X "lua_script:Nyse/NationalEquities/IntegratedFeed/Nyse_NationalEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.SourceTimeReferenceMessage.json 2> Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.SourceTimeReferenceMessage.json.stderr \
  || { echo "--- tshark FAILED (SourceTimeReferenceMessage) ---"; cat Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.SourceTimeReferenceMessage.json.stderr; exit 1; }

grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.id" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.SourceTimeReferenceMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.SourceTimeReferenceMessage.json
grep "nyse.nationalequities.integratedfeed.pillar.v2.5.g.sourcetime" Nyse.NationalEquities.IntegratedFeed.Pillar.v2.5.g.SourceTimeReferenceMessage.json
