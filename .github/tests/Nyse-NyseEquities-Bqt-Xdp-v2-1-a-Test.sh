set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.Bqt.Xdp.v2.1.a/ConsolidatedStockSummaryMessage.pcap" \
  -X "lua_script:Nyse/NyseEquities/Bqt/Nyse_NyseEquities_Bqt_Xdp_v2_1_a_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.Bqt.Xdp.v2.1.a.ConsolidatedStockSummaryMessage.json 2> Nyse.NyseEquities.Bqt.Xdp.v2.1.a.ConsolidatedStockSummaryMessage.json.stderr \
  || { echo "--- tshark FAILED (ConsolidatedStockSummaryMessage) ---"; cat Nyse.NyseEquities.Bqt.Xdp.v2.1.a.ConsolidatedStockSummaryMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.bqt.xdp.v2.1.a.sourcetime" Nyse.NyseEquities.Bqt.Xdp.v2.1.a.ConsolidatedStockSummaryMessage.json
grep "nyse.nyseequities.bqt.xdp.v2.1.a.sourcetimens" Nyse.NyseEquities.Bqt.Xdp.v2.1.a.ConsolidatedStockSummaryMessage.json
grep "nyse.nyseequities.bqt.xdp.v2.1.a.symbolindex" Nyse.NyseEquities.Bqt.Xdp.v2.1.a.ConsolidatedStockSummaryMessage.json
grep "nyse.nyseequities.bqt.xdp.v2.1.a.highprice" Nyse.NyseEquities.Bqt.Xdp.v2.1.a.ConsolidatedStockSummaryMessage.json
grep "nyse.nyseequities.bqt.xdp.v2.1.a.lowprice" Nyse.NyseEquities.Bqt.Xdp.v2.1.a.ConsolidatedStockSummaryMessage.json
grep "nyse.nyseequities.bqt.xdp.v2.1.a.open" Nyse.NyseEquities.Bqt.Xdp.v2.1.a.ConsolidatedStockSummaryMessage.json
grep "nyse.nyseequities.bqt.xdp.v2.1.a.totalvolume" Nyse.NyseEquities.Bqt.Xdp.v2.1.a.ConsolidatedStockSummaryMessage.json
grep "nyse.nyseequities.bqt.xdp.v2.1.a.marketidofhighprice" Nyse.NyseEquities.Bqt.Xdp.v2.1.a.ConsolidatedStockSummaryMessage.json
grep "nyse.nyseequities.bqt.xdp.v2.1.a.marketidoflowprice" Nyse.NyseEquities.Bqt.Xdp.v2.1.a.ConsolidatedStockSummaryMessage.json
grep "nyse.nyseequities.bqt.xdp.v2.1.a.marketidofopenprice" Nyse.NyseEquities.Bqt.Xdp.v2.1.a.ConsolidatedStockSummaryMessage.json
grep "nyse.nyseequities.bqt.xdp.v2.1.a.numberofcloseprices" Nyse.NyseEquities.Bqt.Xdp.v2.1.a.ConsolidatedStockSummaryMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.Bqt.Xdp.v2.1.a/SequenceNumberResetMessage.pcap" \
  -X "lua_script:Nyse/NyseEquities/Bqt/Nyse_NyseEquities_Bqt_Xdp_v2_1_a_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.Bqt.Xdp.v2.1.a.SequenceNumberResetMessage.json 2> Nyse.NyseEquities.Bqt.Xdp.v2.1.a.SequenceNumberResetMessage.json.stderr \
  || { echo "--- tshark FAILED (SequenceNumberResetMessage) ---"; cat Nyse.NyseEquities.Bqt.Xdp.v2.1.a.SequenceNumberResetMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.bqt.xdp.v2.1.a.sourcetime" Nyse.NyseEquities.Bqt.Xdp.v2.1.a.SequenceNumberResetMessage.json
grep "nyse.nyseequities.bqt.xdp.v2.1.a.sourcetimens" Nyse.NyseEquities.Bqt.Xdp.v2.1.a.SequenceNumberResetMessage.json
grep "nyse.nyseequities.bqt.xdp.v2.1.a.productid" Nyse.NyseEquities.Bqt.Xdp.v2.1.a.SequenceNumberResetMessage.json
grep "nyse.nyseequities.bqt.xdp.v2.1.a.channelid" Nyse.NyseEquities.Bqt.Xdp.v2.1.a.SequenceNumberResetMessage.json
