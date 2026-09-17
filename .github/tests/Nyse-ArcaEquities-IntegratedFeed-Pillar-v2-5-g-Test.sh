set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaEquities.IntegratedFeed.Pillar.v2.5.g/AddOrderMessage.pcap" \
  -X "lua_script:Nyse/ArcaEquities/IntegratedFeed/Nyse_ArcaEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json 2> Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderMessage) ---"; cat Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json.stderr; exit 1; }

grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.orderid" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.price" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.volume" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.side" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.firmid" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.reserved1" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaEquities.IntegratedFeed.Pillar.v2.5.g/CrossTradeMessage.pcap" \
  -X "lua_script:Nyse/ArcaEquities/IntegratedFeed/Nyse_ArcaEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json 2> Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (CrossTradeMessage) ---"; cat Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json.stderr; exit 1; }

grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.crossid" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.price" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.volume" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.crosstype" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaEquities.IntegratedFeed.Pillar.v2.5.g/DeleteOrderMessage.pcap" \
  -X "lua_script:Nyse/ArcaEquities/IntegratedFeed/Nyse_ArcaEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json 2> Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (DeleteOrderMessage) ---"; cat Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json.stderr; exit 1; }

grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.orderid" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.reserved1" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaEquities.IntegratedFeed.Pillar.v2.5.g/ModifyOrderMessage.pcap" \
  -X "lua_script:Nyse/ArcaEquities/IntegratedFeed/Nyse_ArcaEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json 2> Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderMessage) ---"; cat Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json.stderr; exit 1; }

grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.orderid" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.price" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.volume" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.positionchange" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.side" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.reserved1" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaEquities.IntegratedFeed.Pillar.v2.5.g/NonDisplayedTradeMessage.pcap" \
  -X "lua_script:Nyse/ArcaEquities/IntegratedFeed/Nyse_ArcaEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json 2> Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (NonDisplayedTradeMessage) ---"; cat Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json.stderr; exit 1; }

grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.tradeid" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.price" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.volume" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.printableflag" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.tradecond1" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.tradecond2" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.tradecond3" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.tradecond4" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaEquities.IntegratedFeed.Pillar.v2.5.g/OrderExecutionMessage.pcap" \
  -X "lua_script:Nyse/ArcaEquities/IntegratedFeed/Nyse_ArcaEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json 2> Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutionMessage) ---"; cat Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json.stderr; exit 1; }

grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.orderid" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.tradeid" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.price" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.volume" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.printableflag" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.reserved1" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.tradecond1" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.tradecond2" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.tradecond3" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.tradecond4" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaEquities.IntegratedFeed.Pillar.v2.5.g/ReplaceOrderMessage.pcap" \
  -X "lua_script:Nyse/ArcaEquities/IntegratedFeed/Nyse_ArcaEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json 2> Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (ReplaceOrderMessage) ---"; cat Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json.stderr; exit 1; }

grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.orderid" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.neworderid" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.price" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.volume" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.side" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.reserved1" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaEquities.IntegratedFeed.Pillar.v2.5.g/RetailPriceImprovementMessage.pcap" \
  -X "lua_script:Nyse/ArcaEquities/IntegratedFeed/Nyse_ArcaEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.RetailPriceImprovementMessage.json 2> Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.RetailPriceImprovementMessage.json.stderr \
  || { echo "--- tshark FAILED (RetailPriceImprovementMessage) ---"; cat Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.RetailPriceImprovementMessage.json.stderr; exit 1; }

grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.RetailPriceImprovementMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.RetailPriceImprovementMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.RetailPriceImprovementMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.rpiindicator" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.RetailPriceImprovementMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaEquities.IntegratedFeed.Pillar.v2.5.g/SecurityStatusMessage.pcap" \
  -X "lua_script:Nyse/ArcaEquities/IntegratedFeed/Nyse_ArcaEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json 2> Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityStatusMessage) ---"; cat Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json.stderr; exit 1; }

grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.sourcetime" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.securitystatus" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.haltcondition" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.reserved4" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.price1" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.price2" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.ssrtriggeringexchangeid" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.ssrtriggeringvolume" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.time" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.ssrstate" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.marketstate" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.sessionstate" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaEquities.IntegratedFeed.Pillar.v2.5.g/SourceTimeReferenceMessage.pcap" \
  -X "lua_script:Nyse/ArcaEquities/IntegratedFeed/Nyse_ArcaEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.SourceTimeReferenceMessage.json 2> Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.SourceTimeReferenceMessage.json.stderr \
  || { echo "--- tshark FAILED (SourceTimeReferenceMessage) ---"; cat Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.SourceTimeReferenceMessage.json.stderr; exit 1; }

grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.id" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.SourceTimeReferenceMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.SourceTimeReferenceMessage.json
grep "nyse.arcaequities.integratedfeed.pillar.v2.5.g.sourcetime" Nyse.ArcaEquities.IntegratedFeed.Pillar.v2.5.g.SourceTimeReferenceMessage.json
