set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.DeepFeed.Pillar.v1.2.m/OptionsAddOrderMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/DeepFeed/Nyse_ArcaOptions_DeepFeed_Pillar_v1_2_m_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsAddOrderMessage.json 2> Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsAddOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionsAddOrderMessage) ---"; cat Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsAddOrderMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.sourcetimens" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsAddOrderMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.seriesindex" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsAddOrderMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.seriesseqnum" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsAddOrderMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.orderid" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsAddOrderMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.price" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsAddOrderMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.volume" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsAddOrderMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.side" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsAddOrderMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.firmid" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsAddOrderMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.custindicator" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsAddOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.DeepFeed.Pillar.v1.2.m/OptionsCrossTradeMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/DeepFeed/Nyse_ArcaOptions_DeepFeed_Pillar_v1_2_m_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsCrossTradeMessage.json 2> Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsCrossTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionsCrossTradeMessage) ---"; cat Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsCrossTradeMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.sourcetimens" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsCrossTradeMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.seriesindex" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsCrossTradeMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.seriesseqnum" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsCrossTradeMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.crossid" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsCrossTradeMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.price" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsCrossTradeMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.volume" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsCrossTradeMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.crosstype" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsCrossTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.DeepFeed.Pillar.v1.2.m/OptionsDeleteOrderMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/DeepFeed/Nyse_ArcaOptions_DeepFeed_Pillar_v1_2_m_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsDeleteOrderMessage.json 2> Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsDeleteOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionsDeleteOrderMessage) ---"; cat Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsDeleteOrderMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.sourcetimens" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsDeleteOrderMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.seriesindex" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsDeleteOrderMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.seriesseqnum" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsDeleteOrderMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.orderid" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsDeleteOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.DeepFeed.Pillar.v1.2.m/OptionsImbalanceMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/DeepFeed/Nyse_ArcaOptions_DeepFeed_Pillar_v1_2_m_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json 2> Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionsImbalanceMessage) ---"; cat Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.sourcetime" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.sourcetimens" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.seriesindex" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.seriesseqnum" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.pairedqty" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.totalimbalanceqty" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.marketimbalanceqty" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.auctiontype" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.imbalanceside" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.continuousbookclearingprice" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.auctioninterestclearingprice" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.indicativematchprice" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.uppercollar" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.lowercollar" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.auctionstatus" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.DeepFeed.Pillar.v1.2.m/OptionsModifyOrderMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/DeepFeed/Nyse_ArcaOptions_DeepFeed_Pillar_v1_2_m_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsModifyOrderMessage.json 2> Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsModifyOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionsModifyOrderMessage) ---"; cat Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsModifyOrderMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.sourcetimens" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsModifyOrderMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.seriesindex" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsModifyOrderMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.seriesseqnum" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsModifyOrderMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.orderid" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsModifyOrderMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.price" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsModifyOrderMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.volume" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsModifyOrderMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.positionchange" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsModifyOrderMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.side" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsModifyOrderMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.custindicator" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsModifyOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.DeepFeed.Pillar.v1.2.m/OptionsNonDisplayedTradeMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/DeepFeed/Nyse_ArcaOptions_DeepFeed_Pillar_v1_2_m_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsNonDisplayedTradeMessage.json 2> Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsNonDisplayedTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionsNonDisplayedTradeMessage) ---"; cat Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsNonDisplayedTradeMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.sourcetimens" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsNonDisplayedTradeMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.seriesindex" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsNonDisplayedTradeMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.seriesseqnum" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsNonDisplayedTradeMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.tradeid" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsNonDisplayedTradeMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.price" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsNonDisplayedTradeMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.volume" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsNonDisplayedTradeMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.printableflag" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsNonDisplayedTradeMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.nondisplayedtradetradecond1" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsNonDisplayedTradeMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.pricetype" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsNonDisplayedTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.DeepFeed.Pillar.v1.2.m/OptionsOrderExecutionMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/DeepFeed/Nyse_ArcaOptions_DeepFeed_Pillar_v1_2_m_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsOrderExecutionMessage.json 2> Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsOrderExecutionMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionsOrderExecutionMessage) ---"; cat Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsOrderExecutionMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.sourcetimens" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsOrderExecutionMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.seriesindex" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsOrderExecutionMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.seriesseqnum" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsOrderExecutionMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.orderid" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsOrderExecutionMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.tradeid" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsOrderExecutionMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.price" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsOrderExecutionMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.volume" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsOrderExecutionMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.printableflag" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsOrderExecutionMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.tradecond1" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsOrderExecutionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.DeepFeed.Pillar.v1.2.m/OptionsReplaceOrderMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/DeepFeed/Nyse_ArcaOptions_DeepFeed_Pillar_v1_2_m_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsReplaceOrderMessage.json 2> Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsReplaceOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionsReplaceOrderMessage) ---"; cat Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsReplaceOrderMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.sourcetimens" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsReplaceOrderMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.seriesindex" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsReplaceOrderMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.seriesseqnum" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsReplaceOrderMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.orderid" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsReplaceOrderMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.neworderid" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsReplaceOrderMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.price" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsReplaceOrderMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.volume" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsReplaceOrderMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.side" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsReplaceOrderMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.custindicator" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsReplaceOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.DeepFeed.Pillar.v1.2.m/OptionsStatusMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/DeepFeed/Nyse_ArcaOptions_DeepFeed_Pillar_v1_2_m_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsStatusMessage.json 2> Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionsStatusMessage) ---"; cat Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsStatusMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.sourcetime" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsStatusMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.sourcetimens" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsStatusMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.seriesindex" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsStatusMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.seriesseqnum" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsStatusMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.seriesstatus" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsStatusMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.marketstate" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsStatusMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.optionsstatushaltcondition" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OptionsStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.DeepFeed.Pillar.v1.2.m/OutrightSeriesIndexMappingMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/DeepFeed/Nyse_ArcaOptions_DeepFeed_Pillar_v1_2_m_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json 2> Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json.stderr \
  || { echo "--- tshark FAILED (OutrightSeriesIndexMappingMessage) ---"; cat Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.seriesindex" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.seriestype" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.marketid" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.systemid" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.optionsymbolroot" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.underlyingsymbol" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.underlyingindex" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.pricescalecode" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.contractmultiplier" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.maturitydate" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.putorcall" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.strikeprice" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.closingonlyindicator" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.DeepFeed.Pillar.v1.2.m/SecurityStatusMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/DeepFeed/Nyse_ArcaOptions_DeepFeed_Pillar_v1_2_m_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json 2> Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityStatusMessage) ---"; cat Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.sourcetime" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.sourcetimens" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.symbolindex" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.symbolseqnum" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.securitystatus" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.haltcondition" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.price1" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.price2" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.ssrtriggeringexchangeid" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.ssrtriggeringvolume" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.time" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.ssrstate" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.marketstate" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.sessionstate" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.DeepFeed.Pillar.v1.2.m/SequenceNumberResetMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/DeepFeed/Nyse_ArcaOptions_DeepFeed_Pillar_v1_2_m_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SequenceNumberResetMessage.json 2> Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SequenceNumberResetMessage.json.stderr \
  || { echo "--- tshark FAILED (SequenceNumberResetMessage) ---"; cat Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SequenceNumberResetMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.sourcetime" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SequenceNumberResetMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.sourcetimens" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SequenceNumberResetMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.productid" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SequenceNumberResetMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.channelid" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SequenceNumberResetMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.DeepFeed.Pillar.v1.2.m/SourceTimeReferenceMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/DeepFeed/Nyse_ArcaOptions_DeepFeed_Pillar_v1_2_m_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SourceTimeReferenceMessage.json 2> Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SourceTimeReferenceMessage.json.stderr \
  || { echo "--- tshark FAILED (SourceTimeReferenceMessage) ---"; cat Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SourceTimeReferenceMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.id" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SourceTimeReferenceMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.symbolseqnum" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SourceTimeReferenceMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.sourcetime" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SourceTimeReferenceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.DeepFeed.Pillar.v1.2.m/SymbolClearMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/DeepFeed/Nyse_ArcaOptions_DeepFeed_Pillar_v1_2_m_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SymbolClearMessage.json 2> Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SymbolClearMessage.json.stderr \
  || { echo "--- tshark FAILED (SymbolClearMessage) ---"; cat Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SymbolClearMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.sourcetime" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SymbolClearMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.sourcetimens" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SymbolClearMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.symbolindex" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SymbolClearMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.nextsourceseqnum" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SymbolClearMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.DeepFeed.Pillar.v1.2.m/SymbolIndexMappingMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/DeepFeed/Nyse_ArcaOptions_DeepFeed_Pillar_v1_2_m_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SymbolIndexMappingMessage.json 2> Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SymbolIndexMappingMessage.json.stderr \
  || { echo "--- tshark FAILED (SymbolIndexMappingMessage) ---"; cat Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SymbolIndexMappingMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.symbolindex" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SymbolIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.symbol" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SymbolIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.marketid" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SymbolIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.systemid" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SymbolIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.exchangecode" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SymbolIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.pricescalecode" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SymbolIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.securitytype" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SymbolIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.lotsize" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SymbolIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.prevcloseprice" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SymbolIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.prevclosevolume" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SymbolIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.priceresolution" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SymbolIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.pillar.v1.2.m.roundlot" Nyse.ArcaOptions.DeepFeed.Pillar.v1.2.m.SymbolIndexMappingMessage.json
