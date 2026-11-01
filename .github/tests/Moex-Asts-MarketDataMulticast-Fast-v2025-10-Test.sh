set -o errexit
set -o pipefail

chown -R tester:tester .

decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.moex.asts.marketdatamulticast.fast.v2025.10"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/Moex/Asts.MarketDataMulticast.Fast.v2025.10/0.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (0) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Moex/Asts.MarketDataMulticast.Fast.v2025.10/0.pcap" \
  "${decode[@]}" \
  -X "lua_script:Moex/Asts/MarketDataMulticast/Moex_Asts_MarketDataMulticast_Fast_v2025_10_Dissector.lua" \
  -T json \
  > Moex.Asts.MarketDataMulticast.Fast.v2025.10.0.json 2> Moex.Asts.MarketDataMulticast.Fast.v2025.10.0.json.stderr \
  || { echo "--- tshark FAILED (0) ---"; cat Moex.Asts.MarketDataMulticast.Fast.v2025.10.0.json.stderr; exit 1; }

grep "moex.asts.marketdatamulticast.fast.v2025.10.messagetype" Moex.Asts.MarketDataMulticast.Fast.v2025.10.0.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.beginstring" Moex.Asts.MarketDataMulticast.Fast.v2025.10.0.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.sendercompid" Moex.Asts.MarketDataMulticast.Fast.v2025.10.0.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.msgseqnum" Moex.Asts.MarketDataMulticast.Fast.v2025.10.0.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.sendingtime" Moex.Asts.MarketDataMulticast.Fast.v2025.10.0.json
decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.moex.asts.marketdatamulticast.fast.v2025.10"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/Moex/Asts.MarketDataMulticast.Fast.v2025.10/d.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (d) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Moex/Asts.MarketDataMulticast.Fast.v2025.10/d.pcap" \
  "${decode[@]}" \
  -X "lua_script:Moex/Asts/MarketDataMulticast/Moex_Asts_MarketDataMulticast_Fast_v2025_10_Dissector.lua" \
  -T json \
  > Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json 2> Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json.stderr \
  || { echo "--- tshark FAILED (d) ---"; cat Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json.stderr; exit 1; }

grep "moex.asts.marketdatamulticast.fast.v2025.10.messagetype" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.applverid" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.beginstring" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.sendercompid" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.msgseqnum" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.sendingtime" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.messageencoding" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.totnumreports" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.symbol" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.securityid" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.securityidsource" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.product" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.eveningsession" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.morningsession" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.weekendsession" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.qualifiedinvestor" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.complexproduct" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.asset" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.subordbond" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.gcpoolid" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.highrisk" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.couponstartdate" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.cficode" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.securitytype" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.maturitydate" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.settldate" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.settletype" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.origissueamt" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.couponpaymentdate" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.couponrate" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.settlfixingdate" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.dividendnetpx" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.securitydesc" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.encodedsecuritydesc" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.quotetext" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.noinstrattrib" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.currency" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.nomarketsegments" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.settlcurrency" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.pricetype" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.statesecurityid" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.encodedshortsecuritydesc" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.marketcode" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.minpriceincrement" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.mktsharelimit" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.mktsharethreshold" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.maxordersvolume" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.pricemvmlimit" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.facevalue" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.baseswappx" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.repotopx" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.buybackpx" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.buybackdate" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.nosharesissued" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.highlimit" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.lowlimit" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.numofdaystomaturity" Moex.Asts.MarketDataMulticast.Fast.v2025.10.D.json
decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.moex.asts.marketdatamulticast.fast.v2025.10"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/Moex/Asts.MarketDataMulticast.Fast.v2025.10/W-Generic.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (W-Generic) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Moex/Asts.MarketDataMulticast.Fast.v2025.10/W-Generic.pcap" \
  "${decode[@]}" \
  -X "lua_script:Moex/Asts/MarketDataMulticast/Moex_Asts_MarketDataMulticast_Fast_v2025_10_Dissector.lua" \
  -T json \
  > Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wgeneric.json 2> Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wgeneric.json.stderr \
  || { echo "--- tshark FAILED (W-Generic) ---"; cat Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wgeneric.json.stderr; exit 1; }

grep "moex.asts.marketdatamulticast.fast.v2025.10.messagetype" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wgeneric.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.beginstring" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wgeneric.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.applverid" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wgeneric.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.sendercompid" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wgeneric.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.msgseqnum" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wgeneric.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.sendingtime" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wgeneric.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.tradingsessionid" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wgeneric.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.symbol" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wgeneric.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.lastmsgseqnumprocessed" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wgeneric.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.rptseq" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wgeneric.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.lastfragment" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wgeneric.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.routefirst" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wgeneric.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.tradsesstatus" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wgeneric.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.mdsecuritytradingstatus" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wgeneric.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.auctionindicator" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wgeneric.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.netchgprevday" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wgeneric.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.priceimprovement" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wgeneric.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.nomdentries" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wgeneric.json
decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.moex.asts.marketdatamulticast.fast.v2025.10"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/Moex/Asts.MarketDataMulticast.Fast.v2025.10/W-OLS-CURR.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (W-OLS-CURR) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Moex/Asts.MarketDataMulticast.Fast.v2025.10/W-OLS-CURR.pcap" \
  "${decode[@]}" \
  -X "lua_script:Moex/Asts/MarketDataMulticast/Moex_Asts_MarketDataMulticast_Fast_v2025_10_Dissector.lua" \
  -T json \
  > Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wolscurr.json 2> Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wolscurr.json.stderr \
  || { echo "--- tshark FAILED (W-OLS-CURR) ---"; cat Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wolscurr.json.stderr; exit 1; }

grep "moex.asts.marketdatamulticast.fast.v2025.10.messagetype" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wolscurr.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.beginstring" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wolscurr.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.applverid" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wolscurr.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.sendercompid" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wolscurr.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.msgseqnum" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wolscurr.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.sendingtime" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wolscurr.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.lastmsgseqnumprocessed" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wolscurr.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.rptseq" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wolscurr.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.lastfragment" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wolscurr.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.routefirst" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wolscurr.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.tradsesstatus" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wolscurr.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.tradingsessionid" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wolscurr.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.symbol" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wolscurr.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.mdsecuritytradingstatus" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wolscurr.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.nomdentries" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wolscurr.json
decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.moex.asts.marketdatamulticast.fast.v2025.10"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/Moex/Asts.MarketDataMulticast.Fast.v2025.10/W-TLS-CURR.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (W-TLS-CURR) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Moex/Asts.MarketDataMulticast.Fast.v2025.10/W-TLS-CURR.pcap" \
  "${decode[@]}" \
  -X "lua_script:Moex/Asts/MarketDataMulticast/Moex_Asts_MarketDataMulticast_Fast_v2025_10_Dissector.lua" \
  -T json \
  > Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wtlscurr.json 2> Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wtlscurr.json.stderr \
  || { echo "--- tshark FAILED (W-TLS-CURR) ---"; cat Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wtlscurr.json.stderr; exit 1; }

grep "moex.asts.marketdatamulticast.fast.v2025.10.messagetype" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wtlscurr.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.beginstring" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wtlscurr.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.applverid" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wtlscurr.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.sendercompid" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wtlscurr.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.msgseqnum" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wtlscurr.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.sendingtime" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wtlscurr.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.lastmsgseqnumprocessed" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wtlscurr.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.rptseq" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wtlscurr.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.lastfragment" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wtlscurr.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.routefirst" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wtlscurr.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.tradsesstatus" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wtlscurr.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.tradingsessionid" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wtlscurr.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.symbol" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wtlscurr.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.mdsecuritytradingstatus" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wtlscurr.json
grep "moex.asts.marketdatamulticast.fast.v2025.10.nomdentries" Moex.Asts.MarketDataMulticast.Fast.v2025.10.Wtlscurr.json
