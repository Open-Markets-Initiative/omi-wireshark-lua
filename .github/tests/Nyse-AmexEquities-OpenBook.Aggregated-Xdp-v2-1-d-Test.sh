set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d/OrderbookDeltaUpdateMessage.pcap" \
  -X "lua_script:Nyse/AmexEquities/OpenBook.Aggregated/Nyse_AmexEquities_OpenBook.Aggregated_Xdp_v2_1_d_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookDeltaUpdateMessage.json 2> Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookDeltaUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderbookDeltaUpdateMessage) ---"; cat Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookDeltaUpdateMessage.json.stderr; exit 1; }

grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.sourcetime" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookDeltaUpdateMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.sourcetimens" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookDeltaUpdateMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.symbolindex" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookDeltaUpdateMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.ultralastseqnum" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookDeltaUpdateMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.tradingstatus" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookDeltaUpdateMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.remainingcount" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookDeltaUpdateMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.updatecount" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookDeltaUpdateMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d/OrderbookSnapshotMessage.pcap" \
  -X "lua_script:Nyse/AmexEquities/OpenBook.Aggregated/Nyse_AmexEquities_OpenBook.Aggregated_Xdp_v2_1_d_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookSnapshotMessage.json 2> Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookSnapshotMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderbookSnapshotMessage) ---"; cat Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookSnapshotMessage.json.stderr; exit 1; }

grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.sourcetime" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookSnapshotMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.sourcetimens" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookSnapshotMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.symbolindex" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookSnapshotMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.ultralastseqnum" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookSnapshotMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.symbol" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookSnapshotMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.pricescalecode" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookSnapshotMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.tradingstatus" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookSnapshotMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.remainingcount" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookSnapshotMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.mpv" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookSnapshotMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.updatecount" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.OrderbookSnapshotMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d/SequenceNumberResetMessage.pcap" \
  -X "lua_script:Nyse/AmexEquities/OpenBook.Aggregated/Nyse_AmexEquities_OpenBook.Aggregated_Xdp_v2_1_d_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.SequenceNumberResetMessage.json 2> Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.SequenceNumberResetMessage.json.stderr \
  || { echo "--- tshark FAILED (SequenceNumberResetMessage) ---"; cat Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.SequenceNumberResetMessage.json.stderr; exit 1; }

grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.sourcetime" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.SequenceNumberResetMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.sourcetimens" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.SequenceNumberResetMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.productid" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.SequenceNumberResetMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.channelid" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.SequenceNumberResetMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d/SymbolIndexMappingMessage.pcap" \
  -X "lua_script:Nyse/AmexEquities/OpenBook.Aggregated/Nyse_AmexEquities_OpenBook.Aggregated_Xdp_v2_1_d_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json 2> Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json.stderr \
  || { echo "--- tshark FAILED (SymbolIndexMappingMessage) ---"; cat Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json.stderr; exit 1; }

grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.symbolindex" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.symbol" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.marketid" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.systemid" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.exchangecode" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.pricescalecode" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.securitytype" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.lotsize" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.prevcloseprice" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.prevclosevolume" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.priceresolution" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.roundlot" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.mpv" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json
grep "nyse.amexequities.openbook.aggregated.xdp.v2.1.d.unitoftrade" Nyse.AmexEquities.OpenBook.Aggregated.Xdp.v2.1.d.SymbolIndexMappingMessage.json
