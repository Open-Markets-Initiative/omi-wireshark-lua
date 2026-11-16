set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.TopFeed.Pillar.v1.2.k/OptionsQuoteMessage.pcap" \
  -X "lua_script:Nyse/AmexOptions/TopFeed/Nyse_AmexOptions_TopFeed_Pillar_v1_2_k_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OptionsQuoteMessage.json 2> Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OptionsQuoteMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionsQuoteMessage) ---"; cat Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OptionsQuoteMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.topfeed.pillar.v1.2.k.sourcetimens" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OptionsQuoteMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.seriesindex" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OptionsQuoteMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.seriesseqnum" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OptionsQuoteMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.askprice" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OptionsQuoteMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.askvolume" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OptionsQuoteMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.bidprice" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OptionsQuoteMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.bidvolume" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OptionsQuoteMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.quotecondition" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OptionsQuoteMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.askcustomervolume" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OptionsQuoteMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.bidcustomervolume" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OptionsQuoteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.TopFeed.Pillar.v1.2.k/OptionsStatusMessage.pcap" \
  -X "lua_script:Nyse/AmexOptions/TopFeed/Nyse_AmexOptions_TopFeed_Pillar_v1_2_k_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OptionsStatusMessage.json 2> Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OptionsStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionsStatusMessage) ---"; cat Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OptionsStatusMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.topfeed.pillar.v1.2.k.sourcetime" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OptionsStatusMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.sourcetimens" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OptionsStatusMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.seriesindex" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OptionsStatusMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.seriesseqnum" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OptionsStatusMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.seriesstatus" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OptionsStatusMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.marketstate" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OptionsStatusMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.optionsstatushaltcondition" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OptionsStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.TopFeed.Pillar.v1.2.k/OutrightSeriesIndexMappingMessage.pcap" \
  -X "lua_script:Nyse/AmexOptions/TopFeed/Nyse_AmexOptions_TopFeed_Pillar_v1_2_k_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OutrightSeriesIndexMappingMessage.json 2> Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OutrightSeriesIndexMappingMessage.json.stderr \
  || { echo "--- tshark FAILED (OutrightSeriesIndexMappingMessage) ---"; cat Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OutrightSeriesIndexMappingMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.topfeed.pillar.v1.2.k.seriesindex" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OutrightSeriesIndexMappingMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.seriestype" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OutrightSeriesIndexMappingMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.marketid" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OutrightSeriesIndexMappingMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.systemid" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OutrightSeriesIndexMappingMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.optionsymbolroot" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OutrightSeriesIndexMappingMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.underlyingsymbol" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OutrightSeriesIndexMappingMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.underlyingindex" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OutrightSeriesIndexMappingMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.pricescalecode" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OutrightSeriesIndexMappingMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.contractmultiplier" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OutrightSeriesIndexMappingMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.maturitydate" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OutrightSeriesIndexMappingMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.putorcall" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OutrightSeriesIndexMappingMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.strikeprice" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OutrightSeriesIndexMappingMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.closingonlyindicator" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.OutrightSeriesIndexMappingMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.TopFeed.Pillar.v1.2.k/SecurityStatusMessage.pcap" \
  -X "lua_script:Nyse/AmexOptions/TopFeed/Nyse_AmexOptions_TopFeed_Pillar_v1_2_k_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SecurityStatusMessage.json 2> Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SecurityStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityStatusMessage) ---"; cat Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SecurityStatusMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.topfeed.pillar.v1.2.k.sourcetime" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SecurityStatusMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.sourcetimens" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SecurityStatusMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.symbolindex" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SecurityStatusMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.symbolseqnum" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SecurityStatusMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.securitystatus" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SecurityStatusMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.haltcondition" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SecurityStatusMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.price1" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SecurityStatusMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.price2" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SecurityStatusMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.ssrtriggeringexchangeid" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SecurityStatusMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.ssrtriggeringvolume" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SecurityStatusMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.time" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SecurityStatusMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.ssrstate" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SecurityStatusMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.marketstate" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SecurityStatusMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.sessionstate" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SecurityStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.TopFeed.Pillar.v1.2.k/SequenceNumberResetMessage.pcap" \
  -X "lua_script:Nyse/AmexOptions/TopFeed/Nyse_AmexOptions_TopFeed_Pillar_v1_2_k_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SequenceNumberResetMessage.json 2> Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SequenceNumberResetMessage.json.stderr \
  || { echo "--- tshark FAILED (SequenceNumberResetMessage) ---"; cat Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SequenceNumberResetMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.topfeed.pillar.v1.2.k.sourcetime" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SequenceNumberResetMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.sourcetimens" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SequenceNumberResetMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.productid" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SequenceNumberResetMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.channelid" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SequenceNumberResetMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.TopFeed.Pillar.v1.2.k/SourceTimeReferenceMessage.pcap" \
  -X "lua_script:Nyse/AmexOptions/TopFeed/Nyse_AmexOptions_TopFeed_Pillar_v1_2_k_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SourceTimeReferenceMessage.json 2> Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SourceTimeReferenceMessage.json.stderr \
  || { echo "--- tshark FAILED (SourceTimeReferenceMessage) ---"; cat Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SourceTimeReferenceMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.topfeed.pillar.v1.2.k.id" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SourceTimeReferenceMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.symbolseqnum" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SourceTimeReferenceMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.sourcetime" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SourceTimeReferenceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.TopFeed.Pillar.v1.2.k/SymbolClearMessage.pcap" \
  -X "lua_script:Nyse/AmexOptions/TopFeed/Nyse_AmexOptions_TopFeed_Pillar_v1_2_k_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SymbolClearMessage.json 2> Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SymbolClearMessage.json.stderr \
  || { echo "--- tshark FAILED (SymbolClearMessage) ---"; cat Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SymbolClearMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.topfeed.pillar.v1.2.k.sourcetime" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SymbolClearMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.sourcetimens" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SymbolClearMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.symbolindex" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SymbolClearMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.nextsourceseqnum" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SymbolClearMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.TopFeed.Pillar.v1.2.k/SymbolIndexMappingMessage.pcap" \
  -X "lua_script:Nyse/AmexOptions/TopFeed/Nyse_AmexOptions_TopFeed_Pillar_v1_2_k_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SymbolIndexMappingMessage.json 2> Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SymbolIndexMappingMessage.json.stderr \
  || { echo "--- tshark FAILED (SymbolIndexMappingMessage) ---"; cat Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SymbolIndexMappingMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.topfeed.pillar.v1.2.k.symbolindex" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SymbolIndexMappingMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.symbol" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SymbolIndexMappingMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.marketid" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SymbolIndexMappingMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.systemid" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SymbolIndexMappingMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.exchangecode" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SymbolIndexMappingMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.pricescalecode" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SymbolIndexMappingMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.securitytype" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SymbolIndexMappingMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.lotsize" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SymbolIndexMappingMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.prevcloseprice" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SymbolIndexMappingMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.prevclosevolume" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SymbolIndexMappingMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.priceresolution" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SymbolIndexMappingMessage.json
grep "nyse.amexoptions.topfeed.pillar.v1.2.k.roundlot" Nyse.AmexOptions.TopFeed.Pillar.v1.2.k.SymbolIndexMappingMessage.json
