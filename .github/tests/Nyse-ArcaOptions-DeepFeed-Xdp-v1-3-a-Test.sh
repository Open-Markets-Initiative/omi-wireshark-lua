set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.DeepFeed.Xdp.v1.3.a/OutrightMarketDepthBuyMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/DeepFeed/Nyse_ArcaOptions_DeepFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json 2> Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json.stderr \
  || { echo "--- tshark FAILED (OutrightMarketDepthBuyMessage) ---"; cat Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.sourcetime" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.sourcens" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.seriesindex" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.symbolseqnum" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.firstlevelprice" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.secondlevelprice" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.thirdlevelprice" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.firstlevelvolume" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.secondlevelvolume" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.thirdlevelvolume" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.quotecondition" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.firstlevelcustomervolume" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.secondlevelcustomervolume" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.thirdlevelcustomervolume" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.DeepFeed.Xdp.v1.3.a/OutrightMarketDepthSellMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/DeepFeed/Nyse_ArcaOptions_DeepFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json 2> Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json.stderr \
  || { echo "--- tshark FAILED (OutrightMarketDepthSellMessage) ---"; cat Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.sourcetime" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.sourcens" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.seriesindex" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.symbolseqnum" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.firstlevelprice" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.secondlevelprice" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.thirdlevelprice" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.firstvolume" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.secondvolume" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.thirdvolume" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.quotecondition" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.firstlevelcustomervolume" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.secondlevelcustomervolume" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.thirdlevelcustomervolume" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.DeepFeed.Xdp.v1.3.a/OutrightSeriesStatusMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/DeepFeed/Nyse_ArcaOptions_DeepFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightSeriesStatusMessage.json 2> Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightSeriesStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (OutrightSeriesStatusMessage) ---"; cat Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightSeriesStatusMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.sourcetime" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightSeriesStatusMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.sourcetimens" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightSeriesStatusMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.seriesindex" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightSeriesStatusMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.symbolseqnum" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightSeriesStatusMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.securitystatus" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightSeriesStatusMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.haltcondition" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.OutrightSeriesStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.DeepFeed.Xdp.v1.3.a/RefreshOutrightMarketDepthBuyMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/DeepFeed/Nyse_ArcaOptions_DeepFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json 2> Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json.stderr \
  || { echo "--- tshark FAILED (RefreshOutrightMarketDepthBuyMessage) ---"; cat Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.sourcetime" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.sourcens" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.seriesindex" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.symbolseqnum" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.firstlevelprice" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.secondlevelprice" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.thirdlevelprice" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.firstvolume" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.secondvolume" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.thirdvolume" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.quotecondition" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.firstlevelcustomervolume" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.secondlevelcustomervolume" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.thirdlevelcustomervolume" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.DeepFeed.Xdp.v1.3.a/RefreshOutrightMarketDepthSellMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/DeepFeed/Nyse_ArcaOptions_DeepFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json 2> Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json.stderr \
  || { echo "--- tshark FAILED (RefreshOutrightMarketDepthSellMessage) ---"; cat Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.sourcetime" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.sourcetimens" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.seriesindex" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.symbolseqnum" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.firstlevelprice" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.secondlevelprice" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.thirdlevelprice" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.firstvolume" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.secondvolume" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.thirdvolume" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.quotecondition" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.firstlevelcustomervolume" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.secondlevelcustomervolume" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.thirdlevelcustomervolume" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.DeepFeed.Xdp.v1.3.a/SequenceNumberResetMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/DeepFeed/Nyse_ArcaOptions_DeepFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.SequenceNumberResetMessage.json 2> Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.SequenceNumberResetMessage.json.stderr \
  || { echo "--- tshark FAILED (SequenceNumberResetMessage) ---"; cat Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.SequenceNumberResetMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.sourcetime" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.SequenceNumberResetMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.sourcetimens" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.SequenceNumberResetMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.productid" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.SequenceNumberResetMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.channelid" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.SequenceNumberResetMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.DeepFeed.Xdp.v1.3.a/SeriesIndexMappingMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/DeepFeed/Nyse_ArcaOptions_DeepFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.SeriesIndexMappingMessage.json 2> Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.SeriesIndexMappingMessage.json.stderr \
  || { echo "--- tshark FAILED (SeriesIndexMappingMessage) ---"; cat Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.SeriesIndexMappingMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.seriesindex" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.SeriesIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.channelid" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.SeriesIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.marketid" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.SeriesIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.systemid" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.SeriesIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.streamid" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.SeriesIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.underlyingindex" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.SeriesIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.contractmultiplier" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.SeriesIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.maturitydate" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.SeriesIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.putorcall" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.SeriesIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.strikeprice" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.SeriesIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.pricescalecode" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.SeriesIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.underlyingsymbol" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.SeriesIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.optionsymbolroot" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.SeriesIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.groupid" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.SeriesIndexMappingMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.DeepFeed.Xdp.v1.3.a/StreamIdMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/DeepFeed/Nyse_ArcaOptions_DeepFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.StreamIdMessage.json 2> Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.StreamIdMessage.json.stderr \
  || { echo "--- tshark FAILED (StreamIdMessage) ---"; cat Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.StreamIdMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.streamid" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.StreamIdMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.DeepFeed.Xdp.v1.3.a/UnderlyingIndexMappingMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/DeepFeed/Nyse_ArcaOptions_DeepFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.UnderlyingIndexMappingMessage.json 2> Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.UnderlyingIndexMappingMessage.json.stderr \
  || { echo "--- tshark FAILED (UnderlyingIndexMappingMessage) ---"; cat Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.UnderlyingIndexMappingMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.underlyingindex" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.UnderlyingIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.underlyingsymbol" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.UnderlyingIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.channelid" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.UnderlyingIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.marketid" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.UnderlyingIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.systemid" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.UnderlyingIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.exchangecode" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.UnderlyingIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.pricescalecode" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.UnderlyingIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.securitytype" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.UnderlyingIndexMappingMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.priceresolution" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.UnderlyingIndexMappingMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.DeepFeed.Xdp.v1.3.a/UnderlyingStatusMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/DeepFeed/Nyse_ArcaOptions_DeepFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.UnderlyingStatusMessage.json 2> Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.UnderlyingStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (UnderlyingStatusMessage) ---"; cat Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.UnderlyingStatusMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.sourcetime" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.UnderlyingStatusMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.sourcetimens" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.UnderlyingStatusMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.underlyingindex" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.UnderlyingStatusMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.underlyingseqnum" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.UnderlyingStatusMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.securitystatus" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.UnderlyingStatusMessage.json
grep "nyse.arcaoptions.deepfeed.xdp.v1.3.a.haltcondition" Nyse.ArcaOptions.DeepFeed.Xdp.v1.3.a.UnderlyingStatusMessage.json
