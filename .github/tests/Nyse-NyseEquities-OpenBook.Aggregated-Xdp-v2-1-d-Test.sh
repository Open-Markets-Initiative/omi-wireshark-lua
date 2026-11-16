set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d/OrderbookDeltaUpdateMessage.pcap" \
  -X "lua_script:Nyse/NyseEquities/OpenBook.Aggregated/Nyse_NyseEquities_OpenBook.Aggregated_Xdp_v2_1_d_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookDeltaUpdateMessage.json 2> Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookDeltaUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderbookDeltaUpdateMessage) ---"; cat Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookDeltaUpdateMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.sourcetime" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookDeltaUpdateMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.sourcetimens" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookDeltaUpdateMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.symbolindex" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookDeltaUpdateMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.ultralastseqnum" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookDeltaUpdateMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.tradingstatus" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookDeltaUpdateMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.remainingcount" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookDeltaUpdateMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.updatecount" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookDeltaUpdateMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d/OrderbookSnapshotMessage.pcap" \
  -X "lua_script:Nyse/NyseEquities/OpenBook.Aggregated/Nyse_NyseEquities_OpenBook.Aggregated_Xdp_v2_1_d_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookSnapshotMessage.json 2> Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookSnapshotMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderbookSnapshotMessage) ---"; cat Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookSnapshotMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.sourcetime" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookSnapshotMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.sourcetimens" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookSnapshotMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.symbolindex" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookSnapshotMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.ultralastseqnum" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookSnapshotMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.symbol" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookSnapshotMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.pricescalecode" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookSnapshotMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.tradingstatus" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookSnapshotMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.remainingcount" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookSnapshotMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.mpv" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookSnapshotMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.updatecount" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookSnapshotMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d/SequenceNumberResetMessage.pcap" \
  -X "lua_script:Nyse/NyseEquities/OpenBook.Aggregated/Nyse_NyseEquities_OpenBook.Aggregated_Xdp_v2_1_d_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.SequenceNumberResetMessage.json 2> Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.SequenceNumberResetMessage.json.stderr \
  || { echo "--- tshark FAILED (SequenceNumberResetMessage) ---"; cat Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.SequenceNumberResetMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.sourcetime" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.SequenceNumberResetMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.sourcetimens" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.SequenceNumberResetMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.productid" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.SequenceNumberResetMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.channelid" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.SequenceNumberResetMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d/SymbolIndexMappingMessage.pcap" \
  -X "lua_script:Nyse/NyseEquities/OpenBook.Aggregated/Nyse_NyseEquities_OpenBook.Aggregated_Xdp_v2_1_d_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json 2> Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json.stderr \
  || { echo "--- tshark FAILED (SymbolIndexMappingMessage) ---"; cat Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.symbolindex" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.symbol" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.marketid" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.systemid" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.exchangecode" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.pricescalecode" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.securitytype" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.lotsize" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.prevcloseprice" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.prevclosevolume" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.priceresolution" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.roundlot" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.mpv" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.openbook.aggregated.xdp.v2.1.d.unitoftrade" Nyse.NyseEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json
