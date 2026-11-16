set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Bist/BorsaIstanbul.GeniumInet.Itch.v21.12/CombinationOrderBookLeg.pcap" \
  -X "lua_script:Bist/BorsaIstanbul/GeniumInet/Bist_BorsaIstanbul_GeniumInet_Itch_v21_12_Dissector.lua" \
  -T json \
  > Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.CombinationOrderBookLeg.json 2> Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.CombinationOrderBookLeg.json.stderr \
  || { echo "--- tshark FAILED (CombinationOrderBookLeg) ---"; cat Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.CombinationOrderBookLeg.json.stderr; exit 1; }

grep "bist.borsaistanbul.geniuminet.itch.v21.12.nanoseconds" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.CombinationOrderBookLeg.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.combinationorderbookid" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.CombinationOrderBookLeg.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.legorderbookid" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.CombinationOrderBookLeg.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.legside" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.CombinationOrderBookLeg.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.legratio" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.CombinationOrderBookLeg.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Bist/BorsaIstanbul.GeniumInet.Itch.v21.12/OrderBookDirectory.pcap" \
  -X "lua_script:Bist/BorsaIstanbul/GeniumInet/Bist_BorsaIstanbul_GeniumInet_Itch_v21_12_Dissector.lua" \
  -T json \
  > Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookDirectory.json 2> Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookDirectory.json.stderr \
  || { echo "--- tshark FAILED (OrderBookDirectory) ---"; cat Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookDirectory.json.stderr; exit 1; }

grep "bist.borsaistanbul.geniuminet.itch.v21.12.nanoseconds" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookDirectory.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.orderbookid" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookDirectory.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.symbol" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookDirectory.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.longname" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookDirectory.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.isin" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookDirectory.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.financialproduct" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookDirectory.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.tradingcurrency" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookDirectory.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.decimalsinprice" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookDirectory.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.decimalsinnominalvalue" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookDirectory.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.oddlotsize" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookDirectory.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.roundlotsize" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookDirectory.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.blocklotsize" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookDirectory.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.nominalvalue" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookDirectory.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.numberoflegs" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookDirectory.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.underlyingorderbookid" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookDirectory.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.strikeprice" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookDirectory.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.expirationdate" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookDirectory.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.decimalsinstrikeprice" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookDirectory.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.putorcall" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookDirectory.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.rankingtype" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookDirectory.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Bist/BorsaIstanbul.GeniumInet.Itch.v21.12/OrderBookStateMessage.pcap" \
  -X "lua_script:Bist/BorsaIstanbul/GeniumInet/Bist_BorsaIstanbul_GeniumInet_Itch_v21_12_Dissector.lua" \
  -T json \
  > Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookStateMessage.json 2> Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookStateMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderBookStateMessage) ---"; cat Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookStateMessage.json.stderr; exit 1; }

grep "bist.borsaistanbul.geniuminet.itch.v21.12.nanoseconds" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookStateMessage.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.orderbookid" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookStateMessage.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.statename" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookStateMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Bist/BorsaIstanbul.GeniumInet.Itch.v21.12/SecondsMessage.pcap" \
  -X "lua_script:Bist/BorsaIstanbul/GeniumInet/Bist_BorsaIstanbul_GeniumInet_Itch_v21_12_Dissector.lua" \
  -T json \
  > Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.SecondsMessage.json 2> Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.SecondsMessage.json.stderr \
  || { echo "--- tshark FAILED (SecondsMessage) ---"; cat Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.SecondsMessage.json.stderr; exit 1; }

grep "bist.borsaistanbul.geniuminet.itch.v21.12.second" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.SecondsMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Bist/BorsaIstanbul.GeniumInet.Itch.v21.12/ShortSellStatus.pcap" \
  -X "lua_script:Bist/BorsaIstanbul/GeniumInet/Bist_BorsaIstanbul_GeniumInet_Itch_v21_12_Dissector.lua" \
  -T json \
  > Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.ShortSellStatus.json 2> Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.ShortSellStatus.json.stderr \
  || { echo "--- tshark FAILED (ShortSellStatus) ---"; cat Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.ShortSellStatus.json.stderr; exit 1; }

grep "bist.borsaistanbul.geniuminet.itch.v21.12.nanoseconds" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.ShortSellStatus.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.orderbookid" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.ShortSellStatus.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.shortsalerestriction" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.ShortSellStatus.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Bist/BorsaIstanbul.GeniumInet.Itch.v21.12/SystemEventMessage.pcap" \
  -X "lua_script:Bist/BorsaIstanbul/GeniumInet/Bist_BorsaIstanbul_GeniumInet_Itch_v21_12_Dissector.lua" \
  -T json \
  > Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.SystemEventMessage.json 2> Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.SystemEventMessage.json.stderr \
  || { echo "--- tshark FAILED (SystemEventMessage) ---"; cat Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.SystemEventMessage.json.stderr; exit 1; }

grep "bist.borsaistanbul.geniuminet.itch.v21.12.nanoseconds" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.SystemEventMessage.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.eventcode" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.SystemEventMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Bist/BorsaIstanbul.GeniumInet.Itch.v21.12/TickSizeTableEntry.pcap" \
  -X "lua_script:Bist/BorsaIstanbul/GeniumInet/Bist_BorsaIstanbul_GeniumInet_Itch_v21_12_Dissector.lua" \
  -T json \
  > Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.TickSizeTableEntry.json 2> Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.TickSizeTableEntry.json.stderr \
  || { echo "--- tshark FAILED (TickSizeTableEntry) ---"; cat Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.TickSizeTableEntry.json.stderr; exit 1; }

grep "bist.borsaistanbul.geniuminet.itch.v21.12.nanoseconds" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.TickSizeTableEntry.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.orderbookid" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.TickSizeTableEntry.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.ticksize" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.TickSizeTableEntry.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.pricefrom" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.TickSizeTableEntry.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.priceto" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.TickSizeTableEntry.json
