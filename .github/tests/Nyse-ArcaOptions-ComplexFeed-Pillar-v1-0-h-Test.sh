set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.ComplexFeed.Pillar.v1.0.h/ComplexSeriesIndexMappingMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/ComplexFeed/Nyse_ArcaOptions_ComplexFeed_Pillar_v1_0_h_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.ComplexSeriesIndexMappingMessage.json 2> Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.ComplexSeriesIndexMappingMessage.json.stderr \
  || { echo "--- tshark FAILED (ComplexSeriesIndexMappingMessage) ---"; cat Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.ComplexSeriesIndexMappingMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.seriesindex" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.ComplexSeriesIndexMappingMessage.json
grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.marketid" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.ComplexSeriesIndexMappingMessage.json
grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.systemid" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.ComplexSeriesIndexMappingMessage.json
grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.nooflegs" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.ComplexSeriesIndexMappingMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.ComplexFeed.Pillar.v1.0.h/OptionsQuoteMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/ComplexFeed/Nyse_ArcaOptions_ComplexFeed_Pillar_v1_0_h_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsQuoteMessage.json 2> Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsQuoteMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionsQuoteMessage) ---"; cat Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsQuoteMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.sourcetimens" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsQuoteMessage.json
grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.seriesindex" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsQuoteMessage.json
grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.seriesseqnum" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsQuoteMessage.json
grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.askprice" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsQuoteMessage.json
grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.askvolume" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsQuoteMessage.json
grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.bidprice" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsQuoteMessage.json
grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.bidvolume" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsQuoteMessage.json
grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.quotecondition" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsQuoteMessage.json
grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.askcustomervolume" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsQuoteMessage.json
grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.bidcustomervolume" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsQuoteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.ComplexFeed.Pillar.v1.0.h/OptionsStatusMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/ComplexFeed/Nyse_ArcaOptions_ComplexFeed_Pillar_v1_0_h_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsStatusMessage.json 2> Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionsStatusMessage) ---"; cat Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsStatusMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.sourcetime" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsStatusMessage.json
grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.sourcetimens" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsStatusMessage.json
grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.seriesindex" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsStatusMessage.json
grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.seriesseqnum" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsStatusMessage.json
grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.seriesstatus" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsStatusMessage.json
grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.marketstate" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsStatusMessage.json
grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.optionsstatushaltcondition" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.ComplexFeed.Pillar.v1.0.h/OptionsTradeMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/ComplexFeed/Nyse_ArcaOptions_ComplexFeed_Pillar_v1_0_h_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsTradeMessage.json 2> Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionsTradeMessage) ---"; cat Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsTradeMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.sourcetime" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsTradeMessage.json
grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.sourcetimens" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsTradeMessage.json
grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.seriesindex" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsTradeMessage.json
grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.seriesseqnum" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsTradeMessage.json
grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.tradeid" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsTradeMessage.json
grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.tradeprice" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsTradeMessage.json
grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.volume" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsTradeMessage.json
grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.tradecond1" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.OptionsTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.ComplexFeed.Pillar.v1.0.h/SourceTimeReferenceMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/ComplexFeed/Nyse_ArcaOptions_ComplexFeed_Pillar_v1_0_h_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.SourceTimeReferenceMessage.json 2> Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.SourceTimeReferenceMessage.json.stderr \
  || { echo "--- tshark FAILED (SourceTimeReferenceMessage) ---"; cat Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.SourceTimeReferenceMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.id" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.SourceTimeReferenceMessage.json
grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.symbolseqnum" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.SourceTimeReferenceMessage.json
grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.sourcetime" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.SourceTimeReferenceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaOptions.ComplexFeed.Pillar.v1.0.h/SymbolClearMessage.pcap" \
  -X "lua_script:Nyse/ArcaOptions/ComplexFeed/Nyse_ArcaOptions_ComplexFeed_Pillar_v1_0_h_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.SymbolClearMessage.json 2> Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.SymbolClearMessage.json.stderr \
  || { echo "--- tshark FAILED (SymbolClearMessage) ---"; cat Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.SymbolClearMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.sourcetime" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.SymbolClearMessage.json
grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.sourcetimens" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.SymbolClearMessage.json
grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.symbolindex" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.SymbolClearMessage.json
grep "nyse.arcaoptions.complexfeed.pillar.v1.0.h.nextsourceseqnum" Nyse.ArcaOptions.ComplexFeed.Pillar.v1.0.h.SymbolClearMessage.json
