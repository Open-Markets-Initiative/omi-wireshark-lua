set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29/AddOrderLongMessage.pcap" \
  -X "lua_script:Cboe/ByxEquities/MulticastDepthOfBook/Cboe_ByxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json 2> Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderLongMessage) ---"; cat Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json.stderr; exit 1; }

grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.sideindicator" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.quantity" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.symbolshort" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.price" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.addorderflags" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29/AddOrderShortMessage.pcap" \
  -X "lua_script:Cboe/ByxEquities/MulticastDepthOfBook/Cboe_ByxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json 2> Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderShortMessage) ---"; cat Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json.stderr; exit 1; }

grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.sideindicator" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.quantityshort" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.symbolshort" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.priceshort" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.addorderflags" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29/AuctionSummaryMessage.pcap" \
  -X "lua_script:Cboe/ByxEquities/MulticastDepthOfBook/Cboe_ByxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionSummaryMessage.json 2> Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionSummaryMessage.json.stderr \
  || { echo "--- tshark FAILED (AuctionSummaryMessage) ---"; cat Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionSummaryMessage.json.stderr; exit 1; }

grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionSummaryMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.symbollong" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionSummaryMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.auctionopeningtype" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionSummaryMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.price" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionSummaryMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.sharescontracts" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionSummaryMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29/AuctionUpdateMessage.pcap" \
  -X "lua_script:Cboe/ByxEquities/MulticastDepthOfBook/Cboe_ByxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionUpdateMessage.json 2> Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (AuctionUpdateMessage) ---"; cat Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionUpdateMessage.json.stderr; exit 1; }

grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionUpdateMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.symbollong" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionUpdateMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.auctiontype" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionUpdateMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.referenceprice" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionUpdateMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.buyshares" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionUpdateMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.sellshares" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionUpdateMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.indicativeprice" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionUpdateMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.auctiononlyprice" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionUpdateMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29/DeleteOrderMessage.pcap" \
  -X "lua_script:Cboe/ByxEquities/MulticastDepthOfBook/Cboe_ByxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.DeleteOrderMessage.json 2> Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.DeleteOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (DeleteOrderMessage) ---"; cat Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.DeleteOrderMessage.json.stderr; exit 1; }

grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.DeleteOrderMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.DeleteOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29/ModifyOrderLongMessage.pcap" \
  -X "lua_script:Cboe/ByxEquities/MulticastDepthOfBook/Cboe_ByxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json 2> Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderLongMessage) ---"; cat Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json.stderr; exit 1; }

grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.quantity" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.price" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.modifyorderflags" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29/ModifyOrderShortMessage.pcap" \
  -X "lua_script:Cboe/ByxEquities/MulticastDepthOfBook/Cboe_ByxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json 2> Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderShortMessage) ---"; cat Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json.stderr; exit 1; }

grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.quantityshort" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.priceshort" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.modifyorderflags" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29/OrderExecutedAtPriceSizeMessage.pcap" \
  -X "lua_script:Cboe/ByxEquities/MulticastDepthOfBook/Cboe_ByxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json 2> Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedAtPriceSizeMessage) ---"; cat Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json.stderr; exit 1; }

grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.executedquantity" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.remainingquantity" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.executionid" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.price" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29/OrderExecutedMessage.pcap" \
  -X "lua_script:Cboe/ByxEquities/MulticastDepthOfBook/Cboe_ByxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedMessage.json 2> Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedMessage.json.stderr; exit 1; }

grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.executedquantity" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.executionid" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29/ReduceSizeShortMessage.pcap" \
  -X "lua_script:Cboe/ByxEquities/MulticastDepthOfBook/Cboe_ByxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ReduceSizeShortMessage.json 2> Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ReduceSizeShortMessage.json.stderr \
  || { echo "--- tshark FAILED (ReduceSizeShortMessage) ---"; cat Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ReduceSizeShortMessage.json.stderr; exit 1; }

grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ReduceSizeShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ReduceSizeShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.canceledquantityshort" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ReduceSizeShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29/RetailPriceImprovementMessage.pcap" \
  -X "lua_script:Cboe/ByxEquities/MulticastDepthOfBook/Cboe_ByxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.RetailPriceImprovementMessage.json 2> Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.RetailPriceImprovementMessage.json.stderr \
  || { echo "--- tshark FAILED (RetailPriceImprovementMessage) ---"; cat Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.RetailPriceImprovementMessage.json.stderr; exit 1; }

grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.RetailPriceImprovementMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.symbollong" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.RetailPriceImprovementMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.retailpriceimprovement" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.RetailPriceImprovementMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29/TradeLongMessage.pcap" \
  -X "lua_script:Cboe/ByxEquities/MulticastDepthOfBook/Cboe_ByxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json 2> Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeLongMessage) ---"; cat Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json.stderr; exit 1; }

grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.sideindicator" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.quantity" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.symbolshort" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.price" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.executionid" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29/TradeShortMessage.pcap" \
  -X "lua_script:Cboe/ByxEquities/MulticastDepthOfBook/Cboe_ByxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json 2> Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeShortMessage) ---"; cat Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json.stderr; exit 1; }

grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.sideindicator" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.quantityshort" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.symbolshort" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.priceshort" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.executionid" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29/TradingStatusMessage.pcap" \
  -X "lua_script:Cboe/ByxEquities/MulticastDepthOfBook/Cboe_ByxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json 2> Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingStatusMessage) ---"; cat Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json.stderr; exit 1; }

grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.symbollong" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.tradingstatus" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.regshoaction" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29/MultipleMessages.pcap" \
  -X "lua_script:Cboe/ByxEquities/MulticastDepthOfBook/Cboe_ByxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.Multiplemessages.json 2> Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.Multiplemessages.json.stderr \
  || { echo "--- tshark FAILED (MultipleMessages) ---"; cat Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.Multiplemessages.json.stderr; exit 1; }

fields=$(grep -c "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29." Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.Multiplemessages.json) \
  || { echo "--- no cboe.byxequities.multicastdepthofbook.pitch.v2.41.29 fields (MultipleMessages) ---"; exit 1; }
echo "  cboe.byxequities.multicastdepthofbook.pitch.v2.41.29 fields: $fields"

errors=$(grep -c '"_ws.expert.severity": "8388608"' Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.Multiplemessages.json || true)
[ "$errors" -eq 0 ] \
  || { echo "--- $errors expert errors (MultipleMessages) ---"; grep -o '"Lua Error[^"]*"' Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.Multiplemessages.json | sort -u | head; exit 1; }

[ "$(grep -c 'cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.' Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.Multiplemessages.json)" -gt 1 ] || { echo "--- only one message decoded (MultipleMessages) ---"; exit 1; }
