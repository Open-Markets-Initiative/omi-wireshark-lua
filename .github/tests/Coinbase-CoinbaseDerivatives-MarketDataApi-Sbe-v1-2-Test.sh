set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.MarketDataApi.Sbe.v1.2/EndOfSnapshotMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/MarketDataApi/Coinbase_CoinbaseDerivatives_MarketDataApi_Sbe_v1_2_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.EndOfSnapshotMessage.json 2> Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.EndOfSnapshotMessage.json.stderr \
  || { echo "--- tshark FAILED (EndOfSnapshotMessage) ---"; cat Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.EndOfSnapshotMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.snapshotseqnum" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.EndOfSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.tradevolume" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.EndOfSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.indicativeopenprice" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.EndOfSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.dayopenprice" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.EndOfSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.closeprice" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.EndOfSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.lowprice" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.EndOfSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.highprice" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.EndOfSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.vwappriceoptional" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.EndOfSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.settlementprice" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.EndOfSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.lasttradeprice" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.EndOfSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.lasttradetime" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.EndOfSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.bestbidimpliedprice" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.EndOfSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.bestaskimpliedprice" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.EndOfSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.nextbidimpliedprice" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.EndOfSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.nextaskimpliedprice" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.EndOfSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.limitdownprice" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.EndOfSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.limitupprice" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.EndOfSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.lasttradeqty" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.EndOfSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.openinterest" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.EndOfSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.bestbidimpliedqty" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.EndOfSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.bestaskimpliedqty" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.EndOfSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.nextbidimpliedqty" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.EndOfSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.nextaskimpliedqty" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.EndOfSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.priorsettlementprice" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.EndOfSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.definitionflags" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.EndOfSnapshotMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.MarketDataApi.Sbe.v1.2/OrderDeleteMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/MarketDataApi/Coinbase_CoinbaseDerivatives_MarketDataApi_Sbe_v1_2_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderDeleteMessage.json 2> Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderDeleteMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderDeleteMessage) ---"; cat Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderDeleteMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.instrumentflags" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderDeleteMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.instrumentside" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderDeleteMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.instrumentid" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderDeleteMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.instrseqnum" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderDeleteMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.tradingsessiondate" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderDeleteMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.reserved" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderDeleteMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.transacttime" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderDeleteMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.orderid" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderDeleteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.MarketDataApi.Sbe.v1.2/OrderPutMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/MarketDataApi/Coinbase_CoinbaseDerivatives_MarketDataApi_Sbe_v1_2_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json 2> Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderPutMessage) ---"; cat Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.instrumentflags" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.instrumentside" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.instrumentid" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.instrseqnum" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.tradingsessiondate" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.reserved" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.transacttime" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.orderid" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.price" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.quantity" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.MarketDataApi.Sbe.v1.2/OrderSnapshotMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/MarketDataApi/Coinbase_CoinbaseDerivatives_MarketDataApi_Sbe_v1_2_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json 2> Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderSnapshotMessage) ---"; cat Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.snapshotseqnum" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.quantity" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.transacttime" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.orderid" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.price" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.MarketDataApi.Sbe.v1.2/StartOfOutrightInstrumentSnapshotMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/MarketDataApi/Coinbase_CoinbaseDerivatives_MarketDataApi_Sbe_v1_2_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json 2> Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json.stderr \
  || { echo "--- tshark FAILED (StartOfOutrightInstrumentSnapshotMessage) ---"; cat Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.snapshotseqnum" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.lastinstrseqnum" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.symbol" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.productcode" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.description" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.priceincrement" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.cficode" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.currency" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.productid" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.contractsize" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.ordercount" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.firsttradingsessiondate" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.lasttradingsessiondate" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.tradingsessiondate" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.productgroup" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.tradingstatus" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.MarketDataApi.Sbe.v1.2/StartOfSpreadInstrumentSnapshotMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/MarketDataApi/Coinbase_CoinbaseDerivatives_MarketDataApi_Sbe_v1_2_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json 2> Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json.stderr \
  || { echo "--- tshark FAILED (StartOfSpreadInstrumentSnapshotMessage) ---"; cat Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.snapshotseqnum" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.lastinstrseqnum" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.symbol" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.productcode" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.description" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.priceincrement" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.cficode" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.currency" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.productid" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.contractsize" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.ordercount" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.firsttradingsessiondate" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.lasttradingsessiondate" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.tradingsessiondate" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.productgroup" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.tradingstatus" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.leg1instrumentid" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.leg2instrumentid" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.spreadbuyconvention" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.MarketDataApi.Sbe.v1.2/MultipleMessages.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/MarketDataApi/Coinbase_CoinbaseDerivatives_MarketDataApi_Sbe_v1_2_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.Multiplemessages.json 2> Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.Multiplemessages.json.stderr \
  || { echo "--- tshark FAILED (MultipleMessages) ---"; cat Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.Multiplemessages.json.stderr; exit 1; }

fields=$(grep -c "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2." Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.Multiplemessages.json) \
  || { echo "--- no coinbase.coinbasederivatives.marketdataapi.sbe.v1.2 fields (MultipleMessages) ---"; exit 1; }
echo "  coinbase.coinbasederivatives.marketdataapi.sbe.v1.2 fields: $fields"

errors=$(grep -c '"_ws.expert.severity": "8388608"' Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.Multiplemessages.json || true)
[ "$errors" -eq 0 ] \
  || { echo "--- $errors expert errors (MultipleMessages) ---"; grep -o '"Lua Error[^"]*"' Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.Multiplemessages.json | sort -u | head; exit 1; }

[ "$(grep -c 'coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.' Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.Multiplemessages.json)" -gt 1 ] || { echo "--- only one message decoded (MultipleMessages) ---"; exit 1; }
