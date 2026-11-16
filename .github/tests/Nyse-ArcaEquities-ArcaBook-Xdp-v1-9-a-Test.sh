set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaEquities.ArcaBook.Xdp.v1.9.a/AddOrderMessage.pcap" \
  -X "lua_script:Nyse/ArcaEquities/ArcaBook/Nyse_ArcaEquities_ArcaBook_Xdp_v1_9_a_Dissector.lua" \
  -T json \
  > Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.AddOrderMessage.json 2> Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.AddOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderMessage) ---"; cat Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.AddOrderMessage.json.stderr; exit 1; }

grep "nyse.arcaequities.arcabook.xdp.v1.9.a.sourcetimens" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.AddOrderMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.symbolindex" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.AddOrderMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.symbolseqnum" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.AddOrderMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.orderid" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.AddOrderMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.price" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.AddOrderMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.volume" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.AddOrderMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.side" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.AddOrderMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.orderidgtcindicator" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.AddOrderMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.tradesession" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.AddOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaEquities.ArcaBook.Xdp.v1.9.a/DeleteOrderMessage.pcap" \
  -X "lua_script:Nyse/ArcaEquities/ArcaBook/Nyse_ArcaEquities_ArcaBook_Xdp_v1_9_a_Dissector.lua" \
  -T json \
  > Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.DeleteOrderMessage.json 2> Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.DeleteOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (DeleteOrderMessage) ---"; cat Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.DeleteOrderMessage.json.stderr; exit 1; }

grep "nyse.arcaequities.arcabook.xdp.v1.9.a.sourcetimens" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.DeleteOrderMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.symbolindex" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.DeleteOrderMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.symbolseqnum" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.DeleteOrderMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.orderid" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.DeleteOrderMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.side" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.DeleteOrderMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.orderidgtcindicator" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.DeleteOrderMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.reasoncode" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.DeleteOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaEquities.ArcaBook.Xdp.v1.9.a/ExecutionMessage.pcap" \
  -X "lua_script:Nyse/ArcaEquities/ArcaBook/Nyse_ArcaEquities_ArcaBook_Xdp_v1_9_a_Dissector.lua" \
  -T json \
  > Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ExecutionMessage.json 2> Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ExecutionMessage.json.stderr \
  || { echo "--- tshark FAILED (ExecutionMessage) ---"; cat Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ExecutionMessage.json.stderr; exit 1; }

grep "nyse.arcaequities.arcabook.xdp.v1.9.a.sourcetimens" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ExecutionMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.symbolindex" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ExecutionMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.symbolseqnum" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ExecutionMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.orderid" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ExecutionMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.price" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ExecutionMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.volume" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ExecutionMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.orderidgtcindicator" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ExecutionMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.reasoncode" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ExecutionMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.tradeid" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ExecutionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaEquities.ArcaBook.Xdp.v1.9.a/ImbalanceMessage.pcap" \
  -X "lua_script:Nyse/ArcaEquities/ArcaBook/Nyse_ArcaEquities_ArcaBook_Xdp_v1_9_a_Dissector.lua" \
  -T json \
  > Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ImbalanceMessage.json 2> Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ImbalanceMessage.json.stderr \
  || { echo "--- tshark FAILED (ImbalanceMessage) ---"; cat Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ImbalanceMessage.json.stderr; exit 1; }

grep "nyse.arcaequities.arcabook.xdp.v1.9.a.sourcetime" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ImbalanceMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.sourcetimens" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ImbalanceMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.symbolindex" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ImbalanceMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.symbolseqnum" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ImbalanceMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.referenceprice" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ImbalanceMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.pairedqty" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ImbalanceMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.totalimbalanceqty" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ImbalanceMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.marketimbalanceqty" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ImbalanceMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.auctiontime" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ImbalanceMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.auctiontype" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ImbalanceMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.imbalanceside" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ImbalanceMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.continuousbookclearingprice" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ImbalanceMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.closingonlyclearingprice" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ImbalanceMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.ssrfilingprice" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ImbalanceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaEquities.ArcaBook.Xdp.v1.9.a/ModifyOrderMessage.pcap" \
  -X "lua_script:Nyse/ArcaEquities/ArcaBook/Nyse_ArcaEquities_ArcaBook_Xdp_v1_9_a_Dissector.lua" \
  -T json \
  > Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ModifyOrderMessage.json 2> Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ModifyOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderMessage) ---"; cat Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ModifyOrderMessage.json.stderr; exit 1; }

grep "nyse.arcaequities.arcabook.xdp.v1.9.a.sourcetimens" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ModifyOrderMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.symbolindex" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ModifyOrderMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.symbolseqnum" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ModifyOrderMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.orderid" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ModifyOrderMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.price" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ModifyOrderMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.volume" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ModifyOrderMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.side" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ModifyOrderMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.orderidgtcindicator" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ModifyOrderMessage.json
grep "nyse.arcaequities.arcabook.xdp.v1.9.a.reasoncode" Nyse.ArcaEquities.ArcaBook.Xdp.v1.9.a.ModifyOrderMessage.json
