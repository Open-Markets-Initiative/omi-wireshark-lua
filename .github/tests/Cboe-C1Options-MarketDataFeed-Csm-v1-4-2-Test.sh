set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/C1Options.MarketDataFeed.Csm.v1.4.4/CurrentMarketRefreshMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_MarketDataFeed_Csm_v1_4_2_Dissector.lua" \
  -T json \
  > Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketRefreshMessage.json 2> Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketRefreshMessage.json.stderr \
  || { echo "--- tshark FAILED (CurrentMarketRefreshMessage) ---"; cat Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketRefreshMessage.json.stderr; exit 1; }

grep "cboe.c1options.marketdatafeed.csm.v1.4.2.classkey" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketRefreshMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.securityid" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketRefreshMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.securitytradingstatus" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketRefreshMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.pricetype" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketRefreshMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.applseqnum" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketRefreshMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.noentries" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketRefreshMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/C1Options.MarketDataFeed.Csm.v1.4.4/CurrentMarketUpdateMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_MarketDataFeed_Csm_v1_4_2_Dissector.lua" \
  -T json \
  > Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketUpdateMessage.json 2> Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (CurrentMarketUpdateMessage) ---"; cat Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketUpdateMessage.json.stderr; exit 1; }

grep "cboe.c1options.marketdatafeed.csm.v1.4.2.classkey" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketUpdateMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.securityid" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketUpdateMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.securitytradingstatus" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketUpdateMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.pricetype" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketUpdateMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.noentries" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketUpdateMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/C1Options.MarketDataFeed.Csm.v1.4.4/MarketDataRefreshMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_MarketDataFeed_Csm_v1_4_2_Dissector.lua" \
  -T json \
  > Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.MarketDataRefreshMessage.json 2> Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.MarketDataRefreshMessage.json.stderr \
  || { echo "--- tshark FAILED (MarketDataRefreshMessage) ---"; cat Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.MarketDataRefreshMessage.json.stderr; exit 1; }

grep "cboe.c1options.marketdatafeed.csm.v1.4.2.classkey" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.MarketDataRefreshMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.securityid" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.MarketDataRefreshMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.securitytradingstatus" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.MarketDataRefreshMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.pricetype" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.MarketDataRefreshMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.applseqnum" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.MarketDataRefreshMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.prevclosepxexponent" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.MarketDataRefreshMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.prevclosepxmantissa" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.MarketDataRefreshMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.tradevolume" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.MarketDataRefreshMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.noentries" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.MarketDataRefreshMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/C1Options.MarketDataFeed.Csm.v1.4.4/RecapUpdateMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_MarketDataFeed_Csm_v1_4_2_Dissector.lua" \
  -T json \
  > Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.RecapUpdateMessage.json 2> Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.RecapUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (RecapUpdateMessage) ---"; cat Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.RecapUpdateMessage.json.stderr; exit 1; }

grep "cboe.c1options.marketdatafeed.csm.v1.4.2.classkey" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.RecapUpdateMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.securityid" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.RecapUpdateMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.pricetype" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.RecapUpdateMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.prevclosepxexponent" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.RecapUpdateMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.prevclosepxmantissa" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.RecapUpdateMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.tradevolume" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.RecapUpdateMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.noentries" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.RecapUpdateMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/C1Options.MarketDataFeed.Csm.v1.4.4/SecurityDefinitionMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_MarketDataFeed_Csm_v1_4_2_Dissector.lua" \
  -T json \
  > Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json 2> Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityDefinitionMessage) ---"; cat Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json.stderr; exit 1; }

grep "cboe.c1options.marketdatafeed.csm.v1.4.2.securitytypelength" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.securitytypetext" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.securityexchange" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.symbollength" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.symboltext" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.targetlocationidlength" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.targetlocationidtext" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.classkey" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.securityid" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.maturitydate" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.pricetype" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.strikepriceexponent" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.strikepricemantissa" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.putorcall" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.minimumstrikepricefractionexponent" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.minimumstrikepricefractionmantissa" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.maxstrikepriceexponent" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.maxstrikepricemantissa" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.premiumbreakpointexponent" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.premiumbreakpointmantissa" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.minimumabovepremiumfractionexponent" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.minimumabovepremiumfractionmantissa" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.minimumbelowpremiumfractionexponent" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.minimumbelowpremiumfractionmantissa" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.exercisestyle" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.currencycodelength" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.currencycodetext" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.underlyingsymbollength" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.underlyingsymboltext" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.underlyingtypelength" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.underlyingtypetext" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.contractsize" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.nolegs" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.SecurityDefinitionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/C1Options.MarketDataFeed.Csm.v1.4.4/TickerMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_MarketDataFeed_Csm_v1_4_2_Dissector.lua" \
  -T json \
  > Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.TickerMessage.json 2> Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.TickerMessage.json.stderr \
  || { echo "--- tshark FAILED (TickerMessage) ---"; cat Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.TickerMessage.json.stderr; exit 1; }

grep "cboe.c1options.marketdatafeed.csm.v1.4.2.classkey" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.TickerMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.securityid" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.TickerMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.pricetype" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.TickerMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.noentries" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.TickerMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/C1Options.MarketDataFeed.Csm.v1.4.4/MultipleMessages.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_MarketDataFeed_Csm_v1_4_2_Dissector.lua" \
  -T json \
  > Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.Multiplemessages.json 2> Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.Multiplemessages.json.stderr \
  || { echo "--- tshark FAILED (MultipleMessages) ---"; cat Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.Multiplemessages.json.stderr; exit 1; }

grep "cboe.c1options.marketdatafeed.csm.v1.4.2." Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.Multiplemessages.json

[ "$(grep -c 'cboe.c1options.marketdatafeed.csm.v1.4.2.' Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.Multiplemessages.json)" -gt 1 ] || { echo "--- only one message decoded (MultipleMessages) ---"; exit 1; }
