set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Hkex/HkexDerivatives.FullTick.Omd.v1.49/AddOrderMessage.pcap" \
  -X "lua_script:Hkex/HkexDerivatives/FullTick/Hkex_HkexDerivatives_FullTick_Omd_v1_49_Dissector.lua" \
  -T json \
  > Hkex.HkexDerivatives.FullTick.Omd.v1.49.AddOrderMessage.json 2> Hkex.HkexDerivatives.FullTick.Omd.v1.49.AddOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderMessage) ---"; cat Hkex.HkexDerivatives.FullTick.Omd.v1.49.AddOrderMessage.json.stderr; exit 1; }

grep "hkex.hkexderivatives.fulltick.omd.v1.49.orderbookid" Hkex.HkexDerivatives.FullTick.Omd.v1.49.AddOrderMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.orderid" Hkex.HkexDerivatives.FullTick.Omd.v1.49.AddOrderMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.price" Hkex.HkexDerivatives.FullTick.Omd.v1.49.AddOrderMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.orderquantity" Hkex.HkexDerivatives.FullTick.Omd.v1.49.AddOrderMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.side" Hkex.HkexDerivatives.FullTick.Omd.v1.49.AddOrderMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.lottype" Hkex.HkexDerivatives.FullTick.Omd.v1.49.AddOrderMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.ordertype" Hkex.HkexDerivatives.FullTick.Omd.v1.49.AddOrderMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.orderbookposition" Hkex.HkexDerivatives.FullTick.Omd.v1.49.AddOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Hkex/HkexDerivatives.FullTick.Omd.v1.49/CalculatedOpeningPriceMessage.pcap" \
  -X "lua_script:Hkex/HkexDerivatives/FullTick/Hkex_HkexDerivatives_FullTick_Omd_v1_49_Dissector.lua" \
  -T json \
  > Hkex.HkexDerivatives.FullTick.Omd.v1.49.CalculatedOpeningPriceMessage.json 2> Hkex.HkexDerivatives.FullTick.Omd.v1.49.CalculatedOpeningPriceMessage.json.stderr \
  || { echo "--- tshark FAILED (CalculatedOpeningPriceMessage) ---"; cat Hkex.HkexDerivatives.FullTick.Omd.v1.49.CalculatedOpeningPriceMessage.json.stderr; exit 1; }

grep "hkex.hkexderivatives.fulltick.omd.v1.49.orderbookid" Hkex.HkexDerivatives.FullTick.Omd.v1.49.CalculatedOpeningPriceMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.calculatedopeningprice" Hkex.HkexDerivatives.FullTick.Omd.v1.49.CalculatedOpeningPriceMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.quantity" Hkex.HkexDerivatives.FullTick.Omd.v1.49.CalculatedOpeningPriceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Hkex/HkexDerivatives.FullTick.Omd.v1.49/CombinationDefinitionMessage.pcap" \
  -X "lua_script:Hkex/HkexDerivatives/FullTick/Hkex_HkexDerivatives_FullTick_Omd_v1_49_Dissector.lua" \
  -T json \
  > Hkex.HkexDerivatives.FullTick.Omd.v1.49.CombinationDefinitionMessage.json 2> Hkex.HkexDerivatives.FullTick.Omd.v1.49.CombinationDefinitionMessage.json.stderr \
  || { echo "--- tshark FAILED (CombinationDefinitionMessage) ---"; cat Hkex.HkexDerivatives.FullTick.Omd.v1.49.CombinationDefinitionMessage.json.stderr; exit 1; }

grep "hkex.hkexderivatives.fulltick.omd.v1.49.comboorderbookid" Hkex.HkexDerivatives.FullTick.Omd.v1.49.CombinationDefinitionMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.legorderbookid" Hkex.HkexDerivatives.FullTick.Omd.v1.49.CombinationDefinitionMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.legside" Hkex.HkexDerivatives.FullTick.Omd.v1.49.CombinationDefinitionMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.legratio" Hkex.HkexDerivatives.FullTick.Omd.v1.49.CombinationDefinitionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Hkex/HkexDerivatives.FullTick.Omd.v1.49/DeleteOrderMessage.pcap" \
  -X "lua_script:Hkex/HkexDerivatives/FullTick/Hkex_HkexDerivatives_FullTick_Omd_v1_49_Dissector.lua" \
  -T json \
  > Hkex.HkexDerivatives.FullTick.Omd.v1.49.DeleteOrderMessage.json 2> Hkex.HkexDerivatives.FullTick.Omd.v1.49.DeleteOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (DeleteOrderMessage) ---"; cat Hkex.HkexDerivatives.FullTick.Omd.v1.49.DeleteOrderMessage.json.stderr; exit 1; }

grep "hkex.hkexderivatives.fulltick.omd.v1.49.orderbookid" Hkex.HkexDerivatives.FullTick.Omd.v1.49.DeleteOrderMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.orderid" Hkex.HkexDerivatives.FullTick.Omd.v1.49.DeleteOrderMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.side" Hkex.HkexDerivatives.FullTick.Omd.v1.49.DeleteOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Hkex/HkexDerivatives.FullTick.Omd.v1.49/MarketStatusMessage.pcap" \
  -X "lua_script:Hkex/HkexDerivatives/FullTick/Hkex_HkexDerivatives_FullTick_Omd_v1_49_Dissector.lua" \
  -T json \
  > Hkex.HkexDerivatives.FullTick.Omd.v1.49.MarketStatusMessage.json 2> Hkex.HkexDerivatives.FullTick.Omd.v1.49.MarketStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (MarketStatusMessage) ---"; cat Hkex.HkexDerivatives.FullTick.Omd.v1.49.MarketStatusMessage.json.stderr; exit 1; }

grep "hkex.hkexderivatives.fulltick.omd.v1.49.statelevel" Hkex.HkexDerivatives.FullTick.Omd.v1.49.MarketStatusMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.market" Hkex.HkexDerivatives.FullTick.Omd.v1.49.MarketStatusMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.instrument" Hkex.HkexDerivatives.FullTick.Omd.v1.49.MarketStatusMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.orderbookid" Hkex.HkexDerivatives.FullTick.Omd.v1.49.MarketStatusMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.commoditycode" Hkex.HkexDerivatives.FullTick.Omd.v1.49.MarketStatusMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.actualstartdate" Hkex.HkexDerivatives.FullTick.Omd.v1.49.MarketStatusMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.actualstarttime" Hkex.HkexDerivatives.FullTick.Omd.v1.49.MarketStatusMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.plannedstartdate" Hkex.HkexDerivatives.FullTick.Omd.v1.49.MarketStatusMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.plannedstarttime" Hkex.HkexDerivatives.FullTick.Omd.v1.49.MarketStatusMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.secondstostatechange" Hkex.HkexDerivatives.FullTick.Omd.v1.49.MarketStatusMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.state" Hkex.HkexDerivatives.FullTick.Omd.v1.49.MarketStatusMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.priority" Hkex.HkexDerivatives.FullTick.Omd.v1.49.MarketStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Hkex/HkexDerivatives.FullTick.Omd.v1.49/QuoteRequest.pcap" \
  -X "lua_script:Hkex/HkexDerivatives/FullTick/Hkex_HkexDerivatives_FullTick_Omd_v1_49_Dissector.lua" \
  -T json \
  > Hkex.HkexDerivatives.FullTick.Omd.v1.49.QuoteRequest.json 2> Hkex.HkexDerivatives.FullTick.Omd.v1.49.QuoteRequest.json.stderr \
  || { echo "--- tshark FAILED (QuoteRequest) ---"; cat Hkex.HkexDerivatives.FullTick.Omd.v1.49.QuoteRequest.json.stderr; exit 1; }

grep "hkex.hkexderivatives.fulltick.omd.v1.49.orderbookid" Hkex.HkexDerivatives.FullTick.Omd.v1.49.QuoteRequest.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.numberoflots" Hkex.HkexDerivatives.FullTick.Omd.v1.49.QuoteRequest.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.bidaskflag" Hkex.HkexDerivatives.FullTick.Omd.v1.49.QuoteRequest.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Hkex/HkexDerivatives.FullTick.Omd.v1.49/RefreshComplete.pcap" \
  -X "lua_script:Hkex/HkexDerivatives/FullTick/Hkex_HkexDerivatives_FullTick_Omd_v1_49_Dissector.lua" \
  -T json \
  > Hkex.HkexDerivatives.FullTick.Omd.v1.49.RefreshComplete.json 2> Hkex.HkexDerivatives.FullTick.Omd.v1.49.RefreshComplete.json.stderr \
  || { echo "--- tshark FAILED (RefreshComplete) ---"; cat Hkex.HkexDerivatives.FullTick.Omd.v1.49.RefreshComplete.json.stderr; exit 1; }

grep "hkex.hkexderivatives.fulltick.omd.v1.49.lastseqnum" Hkex.HkexDerivatives.FullTick.Omd.v1.49.RefreshComplete.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Hkex/HkexDerivatives.FullTick.Omd.v1.49/SeriesDefinitionBaseMessage.pcap" \
  -X "lua_script:Hkex/HkexDerivatives/FullTick/Hkex_HkexDerivatives_FullTick_Omd_v1_49_Dissector.lua" \
  -T json \
  > Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionBaseMessage.json 2> Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionBaseMessage.json.stderr \
  || { echo "--- tshark FAILED (SeriesDefinitionBaseMessage) ---"; cat Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionBaseMessage.json.stderr; exit 1; }

grep "hkex.hkexderivatives.fulltick.omd.v1.49.orderbookid" Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionBaseMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.symbol" Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionBaseMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.financialproduct" Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionBaseMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.numberofdecimalsprice" Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionBaseMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.numberoflegs" Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionBaseMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.strikeprice" Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionBaseMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.expirationdate" Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionBaseMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.decimalinstrikeprice" Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionBaseMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.putorcall" Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionBaseMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Hkex/HkexDerivatives.FullTick.Omd.v1.49/SeriesDefinitionExtendedMessage.pcap" \
  -X "lua_script:Hkex/HkexDerivatives/FullTick/Hkex_HkexDerivatives_FullTick_Omd_v1_49_Dissector.lua" \
  -T json \
  > Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionExtendedMessage.json 2> Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionExtendedMessage.json.stderr \
  || { echo "--- tshark FAILED (SeriesDefinitionExtendedMessage) ---"; cat Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionExtendedMessage.json.stderr; exit 1; }

grep "hkex.hkexderivatives.fulltick.omd.v1.49.orderbookid" Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionExtendedMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.symbol" Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionExtendedMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.country" Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionExtendedMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.market" Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionExtendedMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.instrumentgroup" Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionExtendedMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.modifier" Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionExtendedMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.commoditycode" Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionExtendedMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.expirydate" Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionExtendedMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.strikeprice" Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionExtendedMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.contractsizeextended" Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionExtendedMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.isincode" Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionExtendedMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.seriesstatus" Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionExtendedMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.effectivetomorrow" Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionExtendedMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.pricequotationfactor" Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionExtendedMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.pricemethod" Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionExtendedMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.effectiveexpdate" Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionExtendedMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.datetimelasttrading" Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionExtendedMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.datetimefirsttrading" Hkex.HkexDerivatives.FullTick.Omd.v1.49.SeriesDefinitionExtendedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Hkex/HkexDerivatives.FullTick.Omd.v1.49/TradeMessage.pcap" \
  -X "lua_script:Hkex/HkexDerivatives/FullTick/Hkex_HkexDerivatives_FullTick_Omd_v1_49_Dissector.lua" \
  -T json \
  > Hkex.HkexDerivatives.FullTick.Omd.v1.49.TradeMessage.json 2> Hkex.HkexDerivatives.FullTick.Omd.v1.49.TradeMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeMessage) ---"; cat Hkex.HkexDerivatives.FullTick.Omd.v1.49.TradeMessage.json.stderr; exit 1; }

grep "hkex.hkexderivatives.fulltick.omd.v1.49.orderbookid" Hkex.HkexDerivatives.FullTick.Omd.v1.49.TradeMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.orderid" Hkex.HkexDerivatives.FullTick.Omd.v1.49.TradeMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.price" Hkex.HkexDerivatives.FullTick.Omd.v1.49.TradeMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.tradeid" Hkex.HkexDerivatives.FullTick.Omd.v1.49.TradeMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.combogroupid" Hkex.HkexDerivatives.FullTick.Omd.v1.49.TradeMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.tradeside" Hkex.HkexDerivatives.FullTick.Omd.v1.49.TradeMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.dealtype" Hkex.HkexDerivatives.FullTick.Omd.v1.49.TradeMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.tradecondition" Hkex.HkexDerivatives.FullTick.Omd.v1.49.TradeMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.dealinfo" Hkex.HkexDerivatives.FullTick.Omd.v1.49.TradeMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.quantity" Hkex.HkexDerivatives.FullTick.Omd.v1.49.TradeMessage.json
grep "hkex.hkexderivatives.fulltick.omd.v1.49.tradetime" Hkex.HkexDerivatives.FullTick.Omd.v1.49.TradeMessage.json
