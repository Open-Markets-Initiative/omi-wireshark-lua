set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.DeepFeed.Pillar.v1.2.m/OptionsAddOrderMessage.pcap" \
  -X "lua_script:Nyse/AmexOptions/DeepFeed/Nyse_AmexOptions_DeepFeed_Pillar_v1_2_m_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsAddOrderMessage.json 2> Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsAddOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionsAddOrderMessage) ---"; cat Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsAddOrderMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.sourcetimens" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsAddOrderMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.seriesindex" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsAddOrderMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.seriesseqnum" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsAddOrderMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.orderid" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsAddOrderMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.price" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsAddOrderMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.volume" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsAddOrderMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.side" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsAddOrderMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.firmid" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsAddOrderMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.custindicator" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsAddOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.DeepFeed.Pillar.v1.2.m/OptionsDeleteOrderMessage.pcap" \
  -X "lua_script:Nyse/AmexOptions/DeepFeed/Nyse_AmexOptions_DeepFeed_Pillar_v1_2_m_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsDeleteOrderMessage.json 2> Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsDeleteOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionsDeleteOrderMessage) ---"; cat Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsDeleteOrderMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.sourcetimens" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsDeleteOrderMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.seriesindex" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsDeleteOrderMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.seriesseqnum" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsDeleteOrderMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.orderid" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsDeleteOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.DeepFeed.Pillar.v1.2.m/OptionsImbalanceMessage.pcap" \
  -X "lua_script:Nyse/AmexOptions/DeepFeed/Nyse_AmexOptions_DeepFeed_Pillar_v1_2_m_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json 2> Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionsImbalanceMessage) ---"; cat Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.sourcetime" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.sourcetimens" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.seriesindex" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.seriesseqnum" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.pairedqty" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.totalimbalanceqty" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.marketimbalanceqty" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.auctiontype" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.imbalanceside" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.continuousbookclearingprice" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.auctioninterestclearingprice" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.indicativematchprice" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.uppercollar" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.lowercollar" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.auctionstatus" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsImbalanceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.DeepFeed.Pillar.v1.2.m/OptionsStatusMessage.pcap" \
  -X "lua_script:Nyse/AmexOptions/DeepFeed/Nyse_AmexOptions_DeepFeed_Pillar_v1_2_m_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsStatusMessage.json 2> Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionsStatusMessage) ---"; cat Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsStatusMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.sourcetime" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsStatusMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.sourcetimens" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsStatusMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.seriesindex" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsStatusMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.seriesseqnum" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsStatusMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.seriesstatus" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsStatusMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.marketstate" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsStatusMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.optionsstatushaltcondition" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OptionsStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.DeepFeed.Pillar.v1.2.m/OutrightSeriesIndexMappingMessage.pcap" \
  -X "lua_script:Nyse/AmexOptions/DeepFeed/Nyse_AmexOptions_DeepFeed_Pillar_v1_2_m_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json 2> Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json.stderr \
  || { echo "--- tshark FAILED (OutrightSeriesIndexMappingMessage) ---"; cat Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.seriesindex" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.seriestype" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.marketid" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.systemid" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.optionsymbolroot" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.underlyingsymbol" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.underlyingindex" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.pricescalecode" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.contractmultiplier" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.maturitydate" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.putorcall" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.strikeprice" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.closingonlyindicator" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.OutrightSeriesIndexMappingMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.DeepFeed.Pillar.v1.2.m/SecurityStatusMessage.pcap" \
  -X "lua_script:Nyse/AmexOptions/DeepFeed/Nyse_AmexOptions_DeepFeed_Pillar_v1_2_m_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json 2> Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityStatusMessage) ---"; cat Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.sourcetime" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.sourcetimens" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.symbolindex" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.symbolseqnum" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.securitystatus" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.haltcondition" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.price1" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.price2" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.ssrtriggeringexchangeid" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.ssrtriggeringvolume" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.time" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.ssrstate" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.marketstate" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.sessionstate" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SecurityStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.DeepFeed.Pillar.v1.2.m/SequenceNumberResetMessage.pcap" \
  -X "lua_script:Nyse/AmexOptions/DeepFeed/Nyse_AmexOptions_DeepFeed_Pillar_v1_2_m_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SequenceNumberResetMessage.json 2> Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SequenceNumberResetMessage.json.stderr \
  || { echo "--- tshark FAILED (SequenceNumberResetMessage) ---"; cat Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SequenceNumberResetMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.sourcetime" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SequenceNumberResetMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.sourcetimens" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SequenceNumberResetMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.productid" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SequenceNumberResetMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.channelid" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SequenceNumberResetMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.DeepFeed.Pillar.v1.2.m/SourceTimeReferenceMessage.pcap" \
  -X "lua_script:Nyse/AmexOptions/DeepFeed/Nyse_AmexOptions_DeepFeed_Pillar_v1_2_m_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SourceTimeReferenceMessage.json 2> Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SourceTimeReferenceMessage.json.stderr \
  || { echo "--- tshark FAILED (SourceTimeReferenceMessage) ---"; cat Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SourceTimeReferenceMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.id" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SourceTimeReferenceMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.symbolseqnum" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SourceTimeReferenceMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.sourcetime" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SourceTimeReferenceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.DeepFeed.Pillar.v1.2.m/SymbolClearMessage.pcap" \
  -X "lua_script:Nyse/AmexOptions/DeepFeed/Nyse_AmexOptions_DeepFeed_Pillar_v1_2_m_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SymbolClearMessage.json 2> Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SymbolClearMessage.json.stderr \
  || { echo "--- tshark FAILED (SymbolClearMessage) ---"; cat Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SymbolClearMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.sourcetime" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SymbolClearMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.sourcetimens" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SymbolClearMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.symbolindex" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SymbolClearMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.nextsourceseqnum" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SymbolClearMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.DeepFeed.Pillar.v1.2.m/SymbolIndexMappingMessage.pcap" \
  -X "lua_script:Nyse/AmexOptions/DeepFeed/Nyse_AmexOptions_DeepFeed_Pillar_v1_2_m_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SymbolIndexMappingMessage.json 2> Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SymbolIndexMappingMessage.json.stderr \
  || { echo "--- tshark FAILED (SymbolIndexMappingMessage) ---"; cat Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SymbolIndexMappingMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.symbolindex" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SymbolIndexMappingMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.symbol" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SymbolIndexMappingMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.marketid" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SymbolIndexMappingMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.systemid" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SymbolIndexMappingMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.exchangecode" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SymbolIndexMappingMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.pricescalecode" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SymbolIndexMappingMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.securitytype" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SymbolIndexMappingMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.lotsize" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SymbolIndexMappingMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.prevcloseprice" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SymbolIndexMappingMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.prevclosevolume" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SymbolIndexMappingMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.priceresolution" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SymbolIndexMappingMessage.json
grep "nyse.amexoptions.deepfeed.pillar.v1.2.m.roundlot" Nyse.AmexOptions.DeepFeed.Pillar.v1.2.m.SymbolIndexMappingMessage.json
