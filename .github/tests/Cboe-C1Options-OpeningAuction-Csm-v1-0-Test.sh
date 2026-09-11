set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/C1Options.OpeningAuction.Csm.v1.0/CurrentMarketUpdateMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_OpeningAuction_Csm_v1_0_Dissector.lua" \
  -T json \
  > Cboe.C1Options.OpeningAuction.Csm.v1.0.CurrentMarketUpdateMessage.json 2> Cboe.C1Options.OpeningAuction.Csm.v1.0.CurrentMarketUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (CurrentMarketUpdateMessage) ---"; cat Cboe.C1Options.OpeningAuction.Csm.v1.0.CurrentMarketUpdateMessage.json.stderr; exit 1; }

grep "cboe.c1options.openingauction.csm.v1.0.classkey" Cboe.C1Options.OpeningAuction.Csm.v1.0.CurrentMarketUpdateMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.securityid" Cboe.C1Options.OpeningAuction.Csm.v1.0.CurrentMarketUpdateMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.securitytradingstatus" Cboe.C1Options.OpeningAuction.Csm.v1.0.CurrentMarketUpdateMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.pricetype" Cboe.C1Options.OpeningAuction.Csm.v1.0.CurrentMarketUpdateMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.noentries" Cboe.C1Options.OpeningAuction.Csm.v1.0.CurrentMarketUpdateMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/C1Options.OpeningAuction.Csm.v1.0/ExpectedOpeningPriceAndSizeMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_OpeningAuction_Csm_v1_0_Dissector.lua" \
  -T json \
  > Cboe.C1Options.OpeningAuction.Csm.v1.0.ExpectedOpeningPriceAndSizeMessage.json 2> Cboe.C1Options.OpeningAuction.Csm.v1.0.ExpectedOpeningPriceAndSizeMessage.json.stderr \
  || { echo "--- tshark FAILED (ExpectedOpeningPriceAndSizeMessage) ---"; cat Cboe.C1Options.OpeningAuction.Csm.v1.0.ExpectedOpeningPriceAndSizeMessage.json.stderr; exit 1; }

grep "cboe.c1options.openingauction.csm.v1.0.classkey" Cboe.C1Options.OpeningAuction.Csm.v1.0.ExpectedOpeningPriceAndSizeMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.securityid" Cboe.C1Options.OpeningAuction.Csm.v1.0.ExpectedOpeningPriceAndSizeMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.eopexponent" Cboe.C1Options.OpeningAuction.Csm.v1.0.ExpectedOpeningPriceAndSizeMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.eopmantissa" Cboe.C1Options.OpeningAuction.Csm.v1.0.ExpectedOpeningPriceAndSizeMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.eos" Cboe.C1Options.OpeningAuction.Csm.v1.0.ExpectedOpeningPriceAndSizeMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.eoptype" Cboe.C1Options.OpeningAuction.Csm.v1.0.ExpectedOpeningPriceAndSizeMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.legalmarket" Cboe.C1Options.OpeningAuction.Csm.v1.0.ExpectedOpeningPriceAndSizeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/C1Options.OpeningAuction.Csm.v1.0/HeartbeatMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_OpeningAuction_Csm_v1_0_Dissector.lua" \
  -T json \
  > Cboe.C1Options.OpeningAuction.Csm.v1.0.HeartbeatMessage.json 2> Cboe.C1Options.OpeningAuction.Csm.v1.0.HeartbeatMessage.json.stderr \
  || { echo "--- tshark FAILED (HeartbeatMessage) ---"; cat Cboe.C1Options.OpeningAuction.Csm.v1.0.HeartbeatMessage.json.stderr; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/C1Options.OpeningAuction.Csm.v1.0/MarketDataRefreshMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_OpeningAuction_Csm_v1_0_Dissector.lua" \
  -T json \
  > Cboe.C1Options.OpeningAuction.Csm.v1.0.MarketDataRefreshMessage.json 2> Cboe.C1Options.OpeningAuction.Csm.v1.0.MarketDataRefreshMessage.json.stderr \
  || { echo "--- tshark FAILED (MarketDataRefreshMessage) ---"; cat Cboe.C1Options.OpeningAuction.Csm.v1.0.MarketDataRefreshMessage.json.stderr; exit 1; }

grep "cboe.c1options.openingauction.csm.v1.0.classkey" Cboe.C1Options.OpeningAuction.Csm.v1.0.MarketDataRefreshMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.securityid" Cboe.C1Options.OpeningAuction.Csm.v1.0.MarketDataRefreshMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.securitytradingstatus" Cboe.C1Options.OpeningAuction.Csm.v1.0.MarketDataRefreshMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.pricetype" Cboe.C1Options.OpeningAuction.Csm.v1.0.MarketDataRefreshMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.applseqnum" Cboe.C1Options.OpeningAuction.Csm.v1.0.MarketDataRefreshMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.prevclosepxexponent" Cboe.C1Options.OpeningAuction.Csm.v1.0.MarketDataRefreshMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.prevclosepxmantissa" Cboe.C1Options.OpeningAuction.Csm.v1.0.MarketDataRefreshMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.tradevolume" Cboe.C1Options.OpeningAuction.Csm.v1.0.MarketDataRefreshMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.noentries" Cboe.C1Options.OpeningAuction.Csm.v1.0.MarketDataRefreshMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/C1Options.OpeningAuction.Csm.v1.0/SecurityDefinitionMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_OpeningAuction_Csm_v1_0_Dissector.lua" \
  -T json \
  > Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json 2> Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityDefinitionMessage) ---"; cat Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json.stderr; exit 1; }

grep "cboe.c1options.openingauction.csm.v1.0.securitytypelength" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.securitytypetext" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.securityexchange" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.symbollength" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.symboltext" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.targetlocationidlength" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.targetlocationidtext" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.classkey" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.securityid" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.maturitydate" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.pricetype" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.strikepriceexponent" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.strikepricemantissa" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.putorcall" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.minimumstrikepricefractionexponent" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.minimumstrikepricefractionmantissa" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.maxstrikepriceexponent" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.maxstrikepricemantissa" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.premiumbreakpointexponent" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.premiumbreakpointmantissa" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.minimumabovepremiumfractionexponent" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.minimumabovepremiumfractionmantissa" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.minimumbelowpremiumfractionexponent" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.minimumbelowpremiumfractionmantissa" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.exercisestyle" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.currencycodelength" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.currencycodetext" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.underlyingsymbollength" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.underlyingsymboltext" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.underlyingtypelength" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.underlyingtypetext" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.contractsize" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
grep "cboe.c1options.openingauction.csm.v1.0.nolegs" Cboe.C1Options.OpeningAuction.Csm.v1.0.SecurityDefinitionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/C1Options.OpeningAuction.Csm.v1.0/MultipleMessages.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_OpeningAuction_Csm_v1_0_Dissector.lua" \
  -T json \
  > Cboe.C1Options.OpeningAuction.Csm.v1.0.Multiplemessages.json 2> Cboe.C1Options.OpeningAuction.Csm.v1.0.Multiplemessages.json.stderr \
  || { echo "--- tshark FAILED (MultipleMessages) ---"; cat Cboe.C1Options.OpeningAuction.Csm.v1.0.Multiplemessages.json.stderr; exit 1; }

grep "cboe.c1options.openingauction.csm.v1.0." Cboe.C1Options.OpeningAuction.Csm.v1.0.Multiplemessages.json

[ "$(grep -c 'cboe.c1options.openingauction.csm.v1.0.' Cboe.C1Options.OpeningAuction.Csm.v1.0.Multiplemessages.json)" -gt 1 ] || { echo "--- only one message decoded (MultipleMessages) ---"; exit 1; }
