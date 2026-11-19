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
  -r "omi-data-packets/Bist/BorsaIstanbul.GeniumInet.Itch.v21.12/OrderBookStateMessage.pcap" \
  -X "lua_script:Bist/BorsaIstanbul/GeniumInet/Bist_BorsaIstanbul_GeniumInet_Itch_v21_12_Dissector.lua" \
  -T json \
  > Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookStateMessage.json 2> Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookStateMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderBookStateMessage) ---"; cat Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookStateMessage.json.stderr; exit 1; }

grep "bist.borsaistanbul.geniuminet.itch.v21.12.nanoseconds" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookStateMessage.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.orderbookid" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookStateMessage.json
grep "bist.borsaistanbul.geniuminet.itch.v21.12.statename" Bist.BorsaIstanbul.GeniumInet.Itch.v21.12.OrderBookStateMessage.json
