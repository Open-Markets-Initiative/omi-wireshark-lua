set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexEquities.OpenBook.Ultra.v2.1.b/DeltaUpdateMessage.pcap" \
  -X "lua_script:Nyse/AmexEquities/OpenBook/Nyse_AmexEquities_OpenBook_Ultra_v2_1_b_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json 2> Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (DeltaUpdateMessage) ---"; cat Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json.stderr; exit 1; }

grep "nyse.amexequities.openbook.ultra.v2.1.b.deltasize" Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.amexequities.openbook.ultra.v2.1.b.symbolindex" Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.amexequities.openbook.ultra.v2.1.b.sourcetime" Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.amexequities.openbook.ultra.v2.1.b.sourcetimemicrosecs" Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.amexequities.openbook.ultra.v2.1.b.sourceseqnum" Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.amexequities.openbook.ultra.v2.1.b.sourcesessionid" Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.amexequities.openbook.ultra.v2.1.b.quotecondition" Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.amexequities.openbook.ultra.v2.1.b.tradingstatus" Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.amexequities.openbook.ultra.v2.1.b.pricescalecode" Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexEquities.OpenBook.Ultra.v2.1.b/FullUpdateMessage.pcap" \
  -X "lua_script:Nyse/AmexEquities/OpenBook/Nyse_AmexEquities_OpenBook_Ultra_v2_1_b_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json 2> Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (FullUpdateMessage) ---"; cat Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json.stderr; exit 1; }

grep "nyse.amexequities.openbook.ultra.v2.1.b.updatesize" Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.amexequities.openbook.ultra.v2.1.b.symbolindex" Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.amexequities.openbook.ultra.v2.1.b.sourcetime" Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.amexequities.openbook.ultra.v2.1.b.sourcetimemicrosecs" Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.amexequities.openbook.ultra.v2.1.b.symbolseqnum" Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.amexequities.openbook.ultra.v2.1.b.sourcesessionid" Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.amexequities.openbook.ultra.v2.1.b.symbol11" Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.amexequities.openbook.ultra.v2.1.b.pricescalecode" Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.amexequities.openbook.ultra.v2.1.b.quotecondition" Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.amexequities.openbook.ultra.v2.1.b.tradingstatus" Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.amexequities.openbook.ultra.v2.1.b.mpv" Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexEquities.OpenBook.Ultra.v2.1.b/HeartbeatMessage.pcap" \
  -X "lua_script:Nyse/AmexEquities/OpenBook/Nyse_AmexEquities_OpenBook_Ultra_v2_1_b_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.HeartbeatMessage.json 2> Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.HeartbeatMessage.json.stderr \
  || { echo "--- tshark FAILED (HeartbeatMessage) ---"; cat Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.HeartbeatMessage.json.stderr; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexEquities.OpenBook.Ultra.v2.1.b/SequenceNumberResetMessage.pcap" \
  -X "lua_script:Nyse/AmexEquities/OpenBook/Nyse_AmexEquities_OpenBook_Ultra_v2_1_b_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json 2> Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json.stderr \
  || { echo "--- tshark FAILED (SequenceNumberResetMessage) ---"; cat Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json.stderr; exit 1; }

grep "nyse.amexequities.openbook.ultra.v2.1.b.nextsequencenumber" Nyse.AmexEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json
