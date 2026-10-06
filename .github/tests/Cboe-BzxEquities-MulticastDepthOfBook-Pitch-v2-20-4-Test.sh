set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4/AddOrderLongMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/MulticastDepthOfBook/Cboe_BzxEquities_MulticastDepthOfBook_Pitch_v2_20_4_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.AddOrderLongMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.AddOrderLongMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderLongMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.AddOrderLongMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.timeoffset" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.AddOrderLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.orderid" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.AddOrderLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.sideindicator" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.AddOrderLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.quantitybinary4" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.AddOrderLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.symbolshort" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.AddOrderLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.pricebinarylongprice8" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.AddOrderLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.addflags" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.AddOrderLongMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4/AddOrderShortMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/MulticastDepthOfBook/Cboe_BzxEquities_MulticastDepthOfBook_Pitch_v2_20_4_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.AddOrderShortMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.AddOrderShortMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderShortMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.AddOrderShortMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.timeoffset" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.AddOrderShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.orderid" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.AddOrderShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.sideindicator" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.AddOrderShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.quantitybinary2" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.AddOrderShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.symbolshort" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.AddOrderShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.pricebinaryshortprice2" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.AddOrderShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.addflags" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.AddOrderShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4/DeleteOrderMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/MulticastDepthOfBook/Cboe_BzxEquities_MulticastDepthOfBook_Pitch_v2_20_4_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.DeleteOrderMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.DeleteOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (DeleteOrderMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.DeleteOrderMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.timeoffset" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.DeleteOrderMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.orderid" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.DeleteOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4/ModifyOrderLongMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/MulticastDepthOfBook/Cboe_BzxEquities_MulticastDepthOfBook_Pitch_v2_20_4_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.ModifyOrderLongMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.ModifyOrderLongMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderLongMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.ModifyOrderLongMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.timeoffset" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.ModifyOrderLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.orderid" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.ModifyOrderLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.quantitybinary4" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.ModifyOrderLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.pricebinarylongprice8" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.ModifyOrderLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.modifyflags" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.ModifyOrderLongMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4/ModifyOrderShortMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/MulticastDepthOfBook/Cboe_BzxEquities_MulticastDepthOfBook_Pitch_v2_20_4_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.ModifyOrderShortMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.ModifyOrderShortMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderShortMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.ModifyOrderShortMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.timeoffset" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.ModifyOrderShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.orderid" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.ModifyOrderShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.quantitybinary2" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.ModifyOrderShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.pricebinaryshortprice2" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.ModifyOrderShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.modifyflags" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.ModifyOrderShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4/OrderExecutedMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/MulticastDepthOfBook/Cboe_BzxEquities_MulticastDepthOfBook_Pitch_v2_20_4_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.OrderExecutedMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.OrderExecutedMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.timeoffset" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.OrderExecutedMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.orderid" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.OrderExecutedMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.executedquantity" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.OrderExecutedMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.executionid" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.OrderExecutedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4/ReduceSizeShortMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/MulticastDepthOfBook/Cboe_BzxEquities_MulticastDepthOfBook_Pitch_v2_20_4_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.ReduceSizeShortMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.ReduceSizeShortMessage.json.stderr \
  || { echo "--- tshark FAILED (ReduceSizeShortMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.ReduceSizeShortMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.timeoffset" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.ReduceSizeShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.orderid" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.ReduceSizeShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.canceledquantitybinary2" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.ReduceSizeShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4/TimeMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/MulticastDepthOfBook/Cboe_BzxEquities_MulticastDepthOfBook_Pitch_v2_20_4_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.TimeMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.TimeMessage.json.stderr \
  || { echo "--- tshark FAILED (TimeMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.TimeMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.time" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.TimeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4/TradeLongMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/MulticastDepthOfBook/Cboe_BzxEquities_MulticastDepthOfBook_Pitch_v2_20_4_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.TradeLongMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.TradeLongMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeLongMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.TradeLongMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.timeoffset" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.TradeLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.orderid" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.TradeLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.sideindicator" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.TradeLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.quantitybinary4" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.TradeLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.symbolshort" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.TradeLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.pricebinarylongprice8" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.TradeLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.executionid" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.TradeLongMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4/TradeShortMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/MulticastDepthOfBook/Cboe_BzxEquities_MulticastDepthOfBook_Pitch_v2_20_4_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.TradeShortMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.TradeShortMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeShortMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.TradeShortMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.timeoffset" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.TradeShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.orderid" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.TradeShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.sideindicator" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.TradeShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.quantitybinary2" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.TradeShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.symbolshort" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.TradeShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.pricebinaryshortprice2" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.TradeShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.executionid" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.TradeShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4/MultipleMessages.pcap" \
  -X "lua_script:Cboe/BzxEquities/MulticastDepthOfBook/Cboe_BzxEquities_MulticastDepthOfBook_Pitch_v2_20_4_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.Multiplemessages.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.Multiplemessages.json.stderr \
  || { echo "--- tshark FAILED (MultipleMessages) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.Multiplemessages.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4." Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.Multiplemessages.json

[ "$(grep -c 'cboe.bzxequities.multicastdepthofbook.pitch.v2.20.4.' Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.20.4.Multiplemessages.json)" -gt 1 ] || { echo "--- only one message decoded (MultipleMessages) ---"; exit 1; }
