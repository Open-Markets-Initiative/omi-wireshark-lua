set -o errexit
set -o pipefail

chown -R tester:tester .

decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.b3.b3derivatives.umdf.fast.v5.1.19"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/B3/B3Derivatives.Umdf.Fast.v5.1.19/MDHeartbeat_129.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (MDHeartbeat_129) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.Umdf.Fast.v5.1.19/MDHeartbeat_129.pcap" \
  "${decode[@]}" \
  -X "lua_script:B3/B3Derivatives/Umdf/B3_B3Derivatives_Umdf_Fast_v5_1_19_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdheartbeat129.json 2> B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdheartbeat129.json.stderr \
  || { echo "--- tshark FAILED (MDHeartbeat_129) ---"; cat B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdheartbeat129.json.stderr; exit 1; }

grep "b3.b3derivatives.umdf.fast.v5.1.19.applverid" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdheartbeat129.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.messagetype" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdheartbeat129.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.msgseqnum" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdheartbeat129.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.sendingtime.uint64" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdheartbeat129.json
decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.b3.b3derivatives.umdf.fast.v5.1.19"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/B3/B3Derivatives.Umdf.Fast.v5.1.19/MDHeartbeat_144.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (MDHeartbeat_144) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.Umdf.Fast.v5.1.19/MDHeartbeat_144.pcap" \
  "${decode[@]}" \
  -X "lua_script:B3/B3Derivatives/Umdf/B3_B3Derivatives_Umdf_Fast_v5_1_19_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdheartbeat144.json 2> B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdheartbeat144.json.stderr \
  || { echo "--- tshark FAILED (MDHeartbeat_144) ---"; cat B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdheartbeat144.json.stderr; exit 1; }

grep "b3.b3derivatives.umdf.fast.v5.1.19.applverid" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdheartbeat144.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.msgtype" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdheartbeat144.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.msgseqnum" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdheartbeat144.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.sendingtime.uint64" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdheartbeat144.json
decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.b3.b3derivatives.umdf.fast.v5.1.19"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/B3/B3Derivatives.Umdf.Fast.v5.1.19/MDIncRefresh_158.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (MDIncRefresh_158) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.Umdf.Fast.v5.1.19/MDIncRefresh_158.pcap" \
  "${decode[@]}" \
  -X "lua_script:B3/B3Derivatives/Umdf/B3_B3Derivatives_Umdf_Fast_v5_1_19_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdincrefresh158.json 2> B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdincrefresh158.json.stderr \
  || { echo "--- tshark FAILED (MDIncRefresh_158) ---"; cat B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdincrefresh158.json.stderr; exit 1; }

grep "b3.b3derivatives.umdf.fast.v5.1.19.applverid" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdincrefresh158.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.msgtype" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdincrefresh158.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.msgseqnum" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdincrefresh158.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.sendingtime.uint64" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdincrefresh158.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.tradedate" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdincrefresh158.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.nomdentries" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdincrefresh158.json
decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.b3.b3derivatives.umdf.fast.v5.1.19"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/B3/B3Derivatives.Umdf.Fast.v5.1.19/MDIncRefresh_81.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (MDIncRefresh_81) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.Umdf.Fast.v5.1.19/MDIncRefresh_81.pcap" \
  "${decode[@]}" \
  -X "lua_script:B3/B3Derivatives/Umdf/B3_B3Derivatives_Umdf_Fast_v5_1_19_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdincrefresh81.json 2> B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdincrefresh81.json.stderr \
  || { echo "--- tshark FAILED (MDIncRefresh_81) ---"; cat B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdincrefresh81.json.stderr; exit 1; }

grep "b3.b3derivatives.umdf.fast.v5.1.19.applverid" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdincrefresh81.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.messagetype" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdincrefresh81.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.msgseqnum" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdincrefresh81.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.sendingtime.uint64" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdincrefresh81.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.posdupflag" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdincrefresh81.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.nomdentries" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdincrefresh81.json
decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.b3.b3derivatives.umdf.fast.v5.1.19"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/B3/B3Derivatives.Umdf.Fast.v5.1.19/MDSecurityList_156.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (MDSecurityList_156) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.Umdf.Fast.v5.1.19/MDSecurityList_156.pcap" \
  "${decode[@]}" \
  -X "lua_script:B3/B3Derivatives/Umdf/B3_B3Derivatives_Umdf_Fast_v5_1_19_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsecuritylist156.json 2> B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsecuritylist156.json.stderr \
  || { echo "--- tshark FAILED (MDSecurityList_156) ---"; cat B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsecuritylist156.json.stderr; exit 1; }

grep "b3.b3derivatives.umdf.fast.v5.1.19.msgtype" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsecuritylist156.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.applverid" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsecuritylist156.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.msgseqnum" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsecuritylist156.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.sendingtime.string" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsecuritylist156.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.totnorelatedsym" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsecuritylist156.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.lastfragment" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsecuritylist156.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.norelatedsym" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsecuritylist156.json
decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.b3.b3derivatives.umdf.fast.v5.1.19"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/B3/B3Derivatives.Umdf.Fast.v5.1.19/MDSecurityStatus_142.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (MDSecurityStatus_142) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.Umdf.Fast.v5.1.19/MDSecurityStatus_142.pcap" \
  "${decode[@]}" \
  -X "lua_script:B3/B3Derivatives/Umdf/B3_B3Derivatives_Umdf_Fast_v5_1_19_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsecuritystatus142.json 2> B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsecuritystatus142.json.stderr \
  || { echo "--- tshark FAILED (MDSecurityStatus_142) ---"; cat B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsecuritystatus142.json.stderr; exit 1; }

grep "b3.b3derivatives.umdf.fast.v5.1.19.applverid" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsecuritystatus142.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.msgtype" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsecuritystatus142.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.msgseqnum" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsecuritystatus142.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.sendingtime.uint64" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsecuritystatus142.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.securitygroup" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsecuritystatus142.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.securityid" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsecuritystatus142.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.securityidsource.uint32" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsecuritystatus142.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.securityexchange" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsecuritystatus142.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.tradingsessionsubid" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsecuritystatus142.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.securitytradingstatus" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsecuritystatus142.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.tradingsessionid.uint32" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsecuritystatus142.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.tradsesopentime.uint64" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsecuritystatus142.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.transacttime" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsecuritystatus142.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.tradedate" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsecuritystatus142.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.securitytradingevent" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsecuritystatus142.json
decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.b3.b3derivatives.umdf.fast.v5.1.19"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/B3/B3Derivatives.Umdf.Fast.v5.1.19/MDSequenceReset.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (MDSequenceReset) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.Umdf.Fast.v5.1.19/MDSequenceReset.pcap" \
  "${decode[@]}" \
  -X "lua_script:B3/B3Derivatives/Umdf/B3_B3Derivatives_Umdf_Fast_v5_1_19_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsequencereset.json 2> B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsequencereset.json.stderr \
  || { echo "--- tshark FAILED (MDSequenceReset) ---"; cat B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsequencereset.json.stderr; exit 1; }

grep "b3.b3derivatives.umdf.fast.v5.1.19.msgtype" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsequencereset.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.msgseqnum" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsequencereset.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.sendingtime.uint64" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsequencereset.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.applverid" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsequencereset.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.newseqno" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsequencereset.json
decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.b3.b3derivatives.umdf.fast.v5.1.19"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/B3/B3Derivatives.Umdf.Fast.v5.1.19/MDSnapshotFullRefresh_159.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (MDSnapshotFullRefresh_159) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.Umdf.Fast.v5.1.19/MDSnapshotFullRefresh_159.pcap" \
  "${decode[@]}" \
  -X "lua_script:B3/B3Derivatives/Umdf/B3_B3Derivatives_Umdf_Fast_v5_1_19_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsnapshotfullrefresh159.json 2> B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsnapshotfullrefresh159.json.stderr \
  || { echo "--- tshark FAILED (MDSnapshotFullRefresh_159) ---"; cat B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsnapshotfullrefresh159.json.stderr; exit 1; }

grep "b3.b3derivatives.umdf.fast.v5.1.19.msgtype" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsnapshotfullrefresh159.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.msgseqnum" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsnapshotfullrefresh159.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.applverid" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsnapshotfullrefresh159.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.sendingtime.uint64" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsnapshotfullrefresh159.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.lastmsgseqnumprocessed" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsnapshotfullrefresh159.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.totnumreports" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsnapshotfullrefresh159.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.tradedate" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsnapshotfullrefresh159.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.mdreqid" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsnapshotfullrefresh159.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.marketdepth.int32" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsnapshotfullrefresh159.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.rptseq" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsnapshotfullrefresh159.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.securityid" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsnapshotfullrefresh159.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.securityidsource.uint32" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsnapshotfullrefresh159.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.securityexchange" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsnapshotfullrefresh159.json
grep "b3.b3derivatives.umdf.fast.v5.1.19.nomdentries" B3.B3Derivatives.Umdf.Fast.v5.1.19.Mdsnapshotfullrefresh159.json
decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.b3.b3derivatives.umdf.fast.v5.1.19"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/B3/B3Derivatives.Umdf.Fast.v5.1.19/MultipleMessages.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (MultipleMessages) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.Umdf.Fast.v5.1.19/MultipleMessages.pcap" \
  "${decode[@]}" \
  -X "lua_script:B3/B3Derivatives/Umdf/B3_B3Derivatives_Umdf_Fast_v5_1_19_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.Umdf.Fast.v5.1.19.Multiplemessages.json 2> B3.B3Derivatives.Umdf.Fast.v5.1.19.Multiplemessages.json.stderr \
  || { echo "--- tshark FAILED (MultipleMessages) ---"; cat B3.B3Derivatives.Umdf.Fast.v5.1.19.Multiplemessages.json.stderr; exit 1; }

fields=$(grep -c "b3.b3derivatives.umdf.fast.v5.1.19." B3.B3Derivatives.Umdf.Fast.v5.1.19.Multiplemessages.json) \
  || { echo "--- no b3.b3derivatives.umdf.fast.v5.1.19 fields (MultipleMessages) ---"; exit 1; }
echo "  b3.b3derivatives.umdf.fast.v5.1.19 fields: $fields"

errors=$(grep -c '"_ws.expert.severity": "8388608"' B3.B3Derivatives.Umdf.Fast.v5.1.19.Multiplemessages.json || true)
[ "$errors" -eq 0 ] \
  || { echo "--- $errors expert errors (MultipleMessages) ---"; grep -o '"Lua Error[^"]*"' B3.B3Derivatives.Umdf.Fast.v5.1.19.Multiplemessages.json | sort -u | head; exit 1; }

[ "$(grep -c 'b3.b3derivatives.umdf.fast.v5.1.19.templateid' B3.B3Derivatives.Umdf.Fast.v5.1.19.Multiplemessages.json)" -gt 1 ] || { echo "--- only one message decoded (MultipleMessages) ---"; exit 1; }
