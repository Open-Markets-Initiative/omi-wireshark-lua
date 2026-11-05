set -o errexit
set -o pipefail

chown -R tester:tester .

decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.eurex.t7.rdi.fast.v13.0"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/Eurex/T7.Rdi.Fast.v13.0/InstrumentIncremental.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (InstrumentIncremental) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Rdi.Fast.v13.0/InstrumentIncremental.pcap" \
  "${decode[@]}" \
  -X "lua_script:Eurex/T7/Rdi/Eurex_T7_Rdi_Fast_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Rdi.Fast.v13.0.Instrumentincremental.json 2> Eurex.T7.Rdi.Fast.v13.0.Instrumentincremental.json.stderr \
  || { echo "--- tshark FAILED (InstrumentIncremental) ---"; cat Eurex.T7.Rdi.Fast.v13.0.Instrumentincremental.json.stderr; exit 1; }

grep "eurex.t7.rdi.fast.v13.0.msgtype" Eurex.T7.Rdi.Fast.v13.0.Instrumentincremental.json
grep "eurex.t7.rdi.fast.v13.0.msgseqnum" Eurex.T7.Rdi.Fast.v13.0.Instrumentincremental.json
grep "eurex.t7.rdi.fast.v13.0.securityupdateaction" Eurex.T7.Rdi.Fast.v13.0.Instrumentincremental.json
grep "eurex.t7.rdi.fast.v13.0.securityid" Eurex.T7.Rdi.Fast.v13.0.Instrumentincremental.json
grep "eurex.t7.rdi.fast.v13.0.securityidsource" Eurex.T7.Rdi.Fast.v13.0.Instrumentincremental.json
grep "eurex.t7.rdi.fast.v13.0.nosecurityaltid" Eurex.T7.Rdi.Fast.v13.0.Instrumentincremental.json
grep "eurex.t7.rdi.fast.v13.0.securitytype" Eurex.T7.Rdi.Fast.v13.0.Instrumentincremental.json
grep "eurex.t7.rdi.fast.v13.0.securitystatus" Eurex.T7.Rdi.Fast.v13.0.Instrumentincremental.json
grep "eurex.t7.rdi.fast.v13.0.securitydesc" Eurex.T7.Rdi.Fast.v13.0.Instrumentincremental.json
grep "eurex.t7.rdi.fast.v13.0.securityexchange" Eurex.T7.Rdi.Fast.v13.0.Instrumentincremental.json
grep "eurex.t7.rdi.fast.v13.0.productcomplex" Eurex.T7.Rdi.Fast.v13.0.Instrumentincremental.json
grep "eurex.t7.rdi.fast.v13.0.noinstrattrib" Eurex.T7.Rdi.Fast.v13.0.Instrumentincremental.json
grep "eurex.t7.rdi.fast.v13.0.noevents" Eurex.T7.Rdi.Fast.v13.0.Instrumentincremental.json
grep "eurex.t7.rdi.fast.v13.0.instrumentpriceprecision" Eurex.T7.Rdi.Fast.v13.0.Instrumentincremental.json
grep "eurex.t7.rdi.fast.v13.0.minpriceincrement" Eurex.T7.Rdi.Fast.v13.0.Instrumentincremental.json
grep "eurex.t7.rdi.fast.v13.0.minpriceincrementclearing" Eurex.T7.Rdi.Fast.v13.0.Instrumentincremental.json
grep "eurex.t7.rdi.fast.v13.0.minpriceincrementamount" Eurex.T7.Rdi.Fast.v13.0.Instrumentincremental.json
grep "eurex.t7.rdi.fast.v13.0.maturitydate" Eurex.T7.Rdi.Fast.v13.0.Instrumentincremental.json
grep "eurex.t7.rdi.fast.v13.0.maturitymonthyear" Eurex.T7.Rdi.Fast.v13.0.Instrumentincremental.json
grep "eurex.t7.rdi.fast.v13.0.securitysubtype" Eurex.T7.Rdi.Fast.v13.0.Instrumentincremental.json
grep "eurex.t7.rdi.fast.v13.0.nomarketsegments" Eurex.T7.Rdi.Fast.v13.0.Instrumentincremental.json
decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.eurex.t7.rdi.fast.v13.0"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/Eurex/T7.Rdi.Fast.v13.0/InstrumentSnapshot.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (InstrumentSnapshot) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Rdi.Fast.v13.0/InstrumentSnapshot.pcap" \
  "${decode[@]}" \
  -X "lua_script:Eurex/T7/Rdi/Eurex_T7_Rdi_Fast_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Rdi.Fast.v13.0.Instrumentsnapshot.json 2> Eurex.T7.Rdi.Fast.v13.0.Instrumentsnapshot.json.stderr \
  || { echo "--- tshark FAILED (InstrumentSnapshot) ---"; cat Eurex.T7.Rdi.Fast.v13.0.Instrumentsnapshot.json.stderr; exit 1; }

grep "eurex.t7.rdi.fast.v13.0.msgtype" Eurex.T7.Rdi.Fast.v13.0.Instrumentsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.msgseqnum" Eurex.T7.Rdi.Fast.v13.0.Instrumentsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.securityid" Eurex.T7.Rdi.Fast.v13.0.Instrumentsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.securityidsource" Eurex.T7.Rdi.Fast.v13.0.Instrumentsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.nosecurityaltid" Eurex.T7.Rdi.Fast.v13.0.Instrumentsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.securitytype" Eurex.T7.Rdi.Fast.v13.0.Instrumentsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.securitystatus" Eurex.T7.Rdi.Fast.v13.0.Instrumentsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.securitydesc" Eurex.T7.Rdi.Fast.v13.0.Instrumentsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.securityexchange" Eurex.T7.Rdi.Fast.v13.0.Instrumentsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.productcomplex" Eurex.T7.Rdi.Fast.v13.0.Instrumentsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.noinstrattrib" Eurex.T7.Rdi.Fast.v13.0.Instrumentsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.noevents" Eurex.T7.Rdi.Fast.v13.0.Instrumentsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.instrumentpriceprecision" Eurex.T7.Rdi.Fast.v13.0.Instrumentsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.minpriceincrement" Eurex.T7.Rdi.Fast.v13.0.Instrumentsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.minpriceincrementclearing" Eurex.T7.Rdi.Fast.v13.0.Instrumentsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.minpriceincrementamount" Eurex.T7.Rdi.Fast.v13.0.Instrumentsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.maturitydate" Eurex.T7.Rdi.Fast.v13.0.Instrumentsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.maturitymonthyear" Eurex.T7.Rdi.Fast.v13.0.Instrumentsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.securitysubtype" Eurex.T7.Rdi.Fast.v13.0.Instrumentsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.nomarketsegments" Eurex.T7.Rdi.Fast.v13.0.Instrumentsnapshot.json
decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.eurex.t7.rdi.fast.v13.0"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/Eurex/T7.Rdi.Fast.v13.0/MarketDataReport.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (MarketDataReport) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Rdi.Fast.v13.0/MarketDataReport.pcap" \
  "${decode[@]}" \
  -X "lua_script:Eurex/T7/Rdi/Eurex_T7_Rdi_Fast_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Rdi.Fast.v13.0.Marketdatareport.json 2> Eurex.T7.Rdi.Fast.v13.0.Marketdatareport.json.stderr \
  || { echo "--- tshark FAILED (MarketDataReport) ---"; cat Eurex.T7.Rdi.Fast.v13.0.Marketdatareport.json.stderr; exit 1; }

grep "eurex.t7.rdi.fast.v13.0.msgtype" Eurex.T7.Rdi.Fast.v13.0.Marketdatareport.json
grep "eurex.t7.rdi.fast.v13.0.mdreportcount" Eurex.T7.Rdi.Fast.v13.0.Marketdatareport.json
grep "eurex.t7.rdi.fast.v13.0.sendersubid" Eurex.T7.Rdi.Fast.v13.0.Marketdatareport.json
grep "eurex.t7.rdi.fast.v13.0.marketid" Eurex.T7.Rdi.Fast.v13.0.Marketdatareport.json
grep "eurex.t7.rdi.fast.v13.0.lastmsgseqnumprocessed" Eurex.T7.Rdi.Fast.v13.0.Marketdatareport.json
grep "eurex.t7.rdi.fast.v13.0.mdreportevent" Eurex.T7.Rdi.Fast.v13.0.Marketdatareport.json
grep "eurex.t7.rdi.fast.v13.0.transacttime" Eurex.T7.Rdi.Fast.v13.0.Marketdatareport.json
grep "eurex.t7.rdi.fast.v13.0.totnomarketsegmentreports" Eurex.T7.Rdi.Fast.v13.0.Marketdatareport.json
grep "eurex.t7.rdi.fast.v13.0.totnoinstrumentreports" Eurex.T7.Rdi.Fast.v13.0.Marketdatareport.json
decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.eurex.t7.rdi.fast.v13.0"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/Eurex/T7.Rdi.Fast.v13.0/ProductSnapshot.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (ProductSnapshot) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Rdi.Fast.v13.0/ProductSnapshot.pcap" \
  "${decode[@]}" \
  -X "lua_script:Eurex/T7/Rdi/Eurex_T7_Rdi_Fast_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Rdi.Fast.v13.0.Productsnapshot.json 2> Eurex.T7.Rdi.Fast.v13.0.Productsnapshot.json.stderr \
  || { echo "--- tshark FAILED (ProductSnapshot) ---"; cat Eurex.T7.Rdi.Fast.v13.0.Productsnapshot.json.stderr; exit 1; }

grep "eurex.t7.rdi.fast.v13.0.msgtype" Eurex.T7.Rdi.Fast.v13.0.Productsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.msgseqnum" Eurex.T7.Rdi.Fast.v13.0.Productsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.marketid" Eurex.T7.Rdi.Fast.v13.0.Productsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.marketsegmentid" Eurex.T7.Rdi.Fast.v13.0.Productsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.effectivebusinessdate" Eurex.T7.Rdi.Fast.v13.0.Productsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.nexteffectivebusinessdate" Eurex.T7.Rdi.Fast.v13.0.Productsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.marketsegment" Eurex.T7.Rdi.Fast.v13.0.Productsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.marketsegmentstatus" Eurex.T7.Rdi.Fast.v13.0.Productsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.partitionid" Eurex.T7.Rdi.Fast.v13.0.Productsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.capacitygroupid" Eurex.T7.Rdi.Fast.v13.0.Productsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.negotiationduration" Eurex.T7.Rdi.Fast.v13.0.Productsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.noinstrumentscopes" Eurex.T7.Rdi.Fast.v13.0.Productsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.norelatedmarketsegments" Eurex.T7.Rdi.Fast.v13.0.Productsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.notickrules" Eurex.T7.Rdi.Fast.v13.0.Productsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.nopricerangerules" Eurex.T7.Rdi.Fast.v13.0.Productsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.quotesideindicator" Eurex.T7.Rdi.Fast.v13.0.Productsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.quotesidemodeltype" Eurex.T7.Rdi.Fast.v13.0.Productsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.fastmarketpercentage" Eurex.T7.Rdi.Fast.v13.0.Productsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.checkmarketorder" Eurex.T7.Rdi.Fast.v13.0.Productsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.nohhiintervals" Eurex.T7.Rdi.Fast.v13.0.Productsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.nomatchrules" Eurex.T7.Rdi.Fast.v13.0.Productsnapshot.json
grep "eurex.t7.rdi.fast.v13.0.nomdfeedtypes" Eurex.T7.Rdi.Fast.v13.0.Productsnapshot.json
decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.eurex.t7.rdi.fast.v13.0"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/Eurex/T7.Rdi.Fast.v13.0/TotalReturnFuturesStatus.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (TotalReturnFuturesStatus) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Rdi.Fast.v13.0/TotalReturnFuturesStatus.pcap" \
  "${decode[@]}" \
  -X "lua_script:Eurex/T7/Rdi/Eurex_T7_Rdi_Fast_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Rdi.Fast.v13.0.Totalreturnfuturesstatus.json 2> Eurex.T7.Rdi.Fast.v13.0.Totalreturnfuturesstatus.json.stderr \
  || { echo "--- tshark FAILED (TotalReturnFuturesStatus) ---"; cat Eurex.T7.Rdi.Fast.v13.0.Totalreturnfuturesstatus.json.stderr; exit 1; }

grep "eurex.t7.rdi.fast.v13.0.msgtype" Eurex.T7.Rdi.Fast.v13.0.Totalreturnfuturesstatus.json
grep "eurex.t7.rdi.fast.v13.0.msgseqnum" Eurex.T7.Rdi.Fast.v13.0.Totalreturnfuturesstatus.json
grep "eurex.t7.rdi.fast.v13.0.marketsegmentid" Eurex.T7.Rdi.Fast.v13.0.Totalreturnfuturesstatus.json
grep "eurex.t7.rdi.fast.v13.0.securityid" Eurex.T7.Rdi.Fast.v13.0.Totalreturnfuturesstatus.json
grep "eurex.t7.rdi.fast.v13.0.securityidsource" Eurex.T7.Rdi.Fast.v13.0.Totalreturnfuturesstatus.json
grep "eurex.t7.rdi.fast.v13.0.securitytype" Eurex.T7.Rdi.Fast.v13.0.Totalreturnfuturesstatus.json
grep "eurex.t7.rdi.fast.v13.0.priorsettlprice" Eurex.T7.Rdi.Fast.v13.0.Totalreturnfuturesstatus.json
grep "eurex.t7.rdi.fast.v13.0.settlprice" Eurex.T7.Rdi.Fast.v13.0.Totalreturnfuturesstatus.json
grep "eurex.t7.rdi.fast.v13.0.noclearingpriceparameters" Eurex.T7.Rdi.Fast.v13.0.Totalreturnfuturesstatus.json
decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.eurex.t7.rdi.fast.v13.0"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/Eurex/T7.Rdi.Fast.v13.0/TradeAtReferencePriceStatus.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (TradeAtReferencePriceStatus) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Rdi.Fast.v13.0/TradeAtReferencePriceStatus.pcap" \
  "${decode[@]}" \
  -X "lua_script:Eurex/T7/Rdi/Eurex_T7_Rdi_Fast_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Rdi.Fast.v13.0.Tradeatreferencepricestatus.json 2> Eurex.T7.Rdi.Fast.v13.0.Tradeatreferencepricestatus.json.stderr \
  || { echo "--- tshark FAILED (TradeAtReferencePriceStatus) ---"; cat Eurex.T7.Rdi.Fast.v13.0.Tradeatreferencepricestatus.json.stderr; exit 1; }

grep "eurex.t7.rdi.fast.v13.0.msgtype" Eurex.T7.Rdi.Fast.v13.0.Tradeatreferencepricestatus.json
grep "eurex.t7.rdi.fast.v13.0.msgseqnum" Eurex.T7.Rdi.Fast.v13.0.Tradeatreferencepricestatus.json
grep "eurex.t7.rdi.fast.v13.0.marketsegmentid" Eurex.T7.Rdi.Fast.v13.0.Tradeatreferencepricestatus.json
grep "eurex.t7.rdi.fast.v13.0.securityid" Eurex.T7.Rdi.Fast.v13.0.Tradeatreferencepricestatus.json
grep "eurex.t7.rdi.fast.v13.0.securityidsource" Eurex.T7.Rdi.Fast.v13.0.Tradeatreferencepricestatus.json
grep "eurex.t7.rdi.fast.v13.0.securitytype" Eurex.T7.Rdi.Fast.v13.0.Tradeatreferencepricestatus.json
grep "eurex.t7.rdi.fast.v13.0.noclearingpriceparameters" Eurex.T7.Rdi.Fast.v13.0.Tradeatreferencepricestatus.json
decode=()
while read -r port; do decode+=(-d "udp.port==$port,omi.eurex.t7.rdi.fast.v13.0"); done \
  < <(runuser -u tester -- tshark -r "omi-data-packets/Eurex/T7.Rdi.Fast.v13.0/VarianceFuturesStatus.pcap" -T fields -e udp.dstport | tr -d '\r' | sort -u)

[ ${#decode[@]} -gt 0 ] || { echo "--- no udp port in capture (VarianceFuturesStatus) ---"; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Rdi.Fast.v13.0/VarianceFuturesStatus.pcap" \
  "${decode[@]}" \
  -X "lua_script:Eurex/T7/Rdi/Eurex_T7_Rdi_Fast_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Rdi.Fast.v13.0.Variancefuturesstatus.json 2> Eurex.T7.Rdi.Fast.v13.0.Variancefuturesstatus.json.stderr \
  || { echo "--- tshark FAILED (VarianceFuturesStatus) ---"; cat Eurex.T7.Rdi.Fast.v13.0.Variancefuturesstatus.json.stderr; exit 1; }

grep "eurex.t7.rdi.fast.v13.0.msgtype" Eurex.T7.Rdi.Fast.v13.0.Variancefuturesstatus.json
grep "eurex.t7.rdi.fast.v13.0.msgseqnum" Eurex.T7.Rdi.Fast.v13.0.Variancefuturesstatus.json
grep "eurex.t7.rdi.fast.v13.0.marketsegmentid" Eurex.T7.Rdi.Fast.v13.0.Variancefuturesstatus.json
grep "eurex.t7.rdi.fast.v13.0.securityid" Eurex.T7.Rdi.Fast.v13.0.Variancefuturesstatus.json
grep "eurex.t7.rdi.fast.v13.0.securityidsource" Eurex.T7.Rdi.Fast.v13.0.Variancefuturesstatus.json
grep "eurex.t7.rdi.fast.v13.0.securitytype" Eurex.T7.Rdi.Fast.v13.0.Variancefuturesstatus.json
grep "eurex.t7.rdi.fast.v13.0.noclearingpriceparameters" Eurex.T7.Rdi.Fast.v13.0.Variancefuturesstatus.json
