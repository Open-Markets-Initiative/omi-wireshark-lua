set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.TopFeed.Xdp.v1.3.a/OutrightBoldRfqMessage.pcap" \
  -X "lua_script:Nyse/AmexOptions/TopFeed/Nyse_AmexOptions_TopFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightBoldRfqMessage.json 2> Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightBoldRfqMessage.json.stderr \
  || { echo "--- tshark FAILED (OutrightBoldRfqMessage) ---"; cat Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightBoldRfqMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.topfeed.xdp.v1.3.a.sourcetime" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightBoldRfqMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.sourcens" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightBoldRfqMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.seriesindex" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightBoldRfqMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.symbolseqnum" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightBoldRfqMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.side" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightBoldRfqMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.capacity" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightBoldRfqMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.contracts" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightBoldRfqMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.price" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightBoldRfqMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.participant" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightBoldRfqMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.TopFeed.Xdp.v1.3.a/OutrightCrossingRfqMessage.pcap" \
  -X "lua_script:Nyse/AmexOptions/TopFeed/Nyse_AmexOptions_TopFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightCrossingRfqMessage.json 2> Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightCrossingRfqMessage.json.stderr \
  || { echo "--- tshark FAILED (OutrightCrossingRfqMessage) ---"; cat Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightCrossingRfqMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.topfeed.xdp.v1.3.a.sourcetime" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightCrossingRfqMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.sourcens" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightCrossingRfqMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.seriesindex" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightCrossingRfqMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.symbolseqnum" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightCrossingRfqMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.side" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightCrossingRfqMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.volume2" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightCrossingRfqMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.price" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightCrossingRfqMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.TopFeed.Xdp.v1.3.a/OutrightQuoteMessage.pcap" \
  -X "lua_script:Nyse/AmexOptions/TopFeed/Nyse_AmexOptions_TopFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightQuoteMessage.json 2> Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightQuoteMessage.json.stderr \
  || { echo "--- tshark FAILED (OutrightQuoteMessage) ---"; cat Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightQuoteMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.topfeed.xdp.v1.3.a.sourcetime" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightQuoteMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.sourcetimens" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightQuoteMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.seriesindex" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightQuoteMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.symbolseqnum" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightQuoteMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.askprice" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightQuoteMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.bidprice" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightQuoteMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.askvolume" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightQuoteMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.bidvolume" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightQuoteMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.askcustomervolume" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightQuoteMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.bidcustomervolume" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightQuoteMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.quotecondition" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightQuoteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.TopFeed.Xdp.v1.3.a/OutrightSeriesStatusMessage.pcap" \
  -X "lua_script:Nyse/AmexOptions/TopFeed/Nyse_AmexOptions_TopFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightSeriesStatusMessage.json 2> Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightSeriesStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (OutrightSeriesStatusMessage) ---"; cat Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightSeriesStatusMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.topfeed.xdp.v1.3.a.sourcetime" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightSeriesStatusMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.sourcetimens" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightSeriesStatusMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.seriesindex" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightSeriesStatusMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.symbolseqnum" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightSeriesStatusMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.securitystatus" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightSeriesStatusMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.haltcondition" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightSeriesStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.TopFeed.Xdp.v1.3.a/OutrightTradeMessage.pcap" \
  -X "lua_script:Nyse/AmexOptions/TopFeed/Nyse_AmexOptions_TopFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightTradeMessage.json 2> Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (OutrightTradeMessage) ---"; cat Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightTradeMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.topfeed.xdp.v1.3.a.sourcetime" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightTradeMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.sourcetimens" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightTradeMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.seriesindex" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightTradeMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.symbolseqnum" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightTradeMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.tradeid" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightTradeMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.price" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightTradeMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.volume4" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightTradeMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.tradecond1" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightTradeMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.tradecond2" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.OutrightTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.TopFeed.Xdp.v1.3.a/RefreshOutrightQuoteMessage.pcap" \
  -X "lua_script:Nyse/AmexOptions/TopFeed/Nyse_AmexOptions_TopFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.RefreshOutrightQuoteMessage.json 2> Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.RefreshOutrightQuoteMessage.json.stderr \
  || { echo "--- tshark FAILED (RefreshOutrightQuoteMessage) ---"; cat Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.RefreshOutrightQuoteMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.topfeed.xdp.v1.3.a.sourcetime" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.RefreshOutrightQuoteMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.sourcetimens" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.RefreshOutrightQuoteMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.seriesindex" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.RefreshOutrightQuoteMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.symbolseqnum" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.RefreshOutrightQuoteMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.askprice" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.RefreshOutrightQuoteMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.bidprice" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.RefreshOutrightQuoteMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.askvolume" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.RefreshOutrightQuoteMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.bidvolume" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.RefreshOutrightQuoteMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.askcustomervolume" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.RefreshOutrightQuoteMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.bidcustomervolume" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.RefreshOutrightQuoteMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.quotecondition" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.RefreshOutrightQuoteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.TopFeed.Xdp.v1.3.a/RefreshOutrightTradeMessage.pcap" \
  -X "lua_script:Nyse/AmexOptions/TopFeed/Nyse_AmexOptions_TopFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.RefreshOutrightTradeMessage.json 2> Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.RefreshOutrightTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (RefreshOutrightTradeMessage) ---"; cat Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.RefreshOutrightTradeMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.topfeed.xdp.v1.3.a.sourcetime" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.RefreshOutrightTradeMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.sourcetimens" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.RefreshOutrightTradeMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.seriesindex" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.RefreshOutrightTradeMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.symbolseqnum" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.RefreshOutrightTradeMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.tradeid" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.RefreshOutrightTradeMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.price" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.RefreshOutrightTradeMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.volume4" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.RefreshOutrightTradeMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.tradecond1" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.RefreshOutrightTradeMessage.json
grep "nyse.amexoptions.topfeed.xdp.v1.3.a.tradecond2" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.RefreshOutrightTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.TopFeed.Xdp.v1.3.a/StreamIdMessage.pcap" \
  -X "lua_script:Nyse/AmexOptions/TopFeed/Nyse_AmexOptions_TopFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.StreamIdMessage.json 2> Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.StreamIdMessage.json.stderr \
  || { echo "--- tshark FAILED (StreamIdMessage) ---"; cat Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.StreamIdMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.topfeed.xdp.v1.3.a.streamid" Nyse.AmexOptions.TopFeed.Xdp.v1.3.a.StreamIdMessage.json
