set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g/AddOrderRefreshMessage.pcap" \
  -X "lua_script:Nyse/ArcaEquities/IntegratedFeedRefresh/Nyse_ArcaEquities_IntegratedFeedRefresh_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json 2> Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderRefreshMessage) ---"; cat Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json.stderr; exit 1; }

grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.sourcetime" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.sourcetimens" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.symbolindex" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.symbolseqnum" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.orderid" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.price" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.volume" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.side" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.firmid" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.reserved1" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g/ImbalanceMessage.pcap" \
  -X "lua_script:Nyse/ArcaEquities/IntegratedFeedRefresh/Nyse_ArcaEquities_IntegratedFeedRefresh_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json 2> Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json.stderr \
  || { echo "--- tshark FAILED (ImbalanceMessage) ---"; cat Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json.stderr; exit 1; }

grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.sourcetime" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.sourcetimens" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.symbolindex" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.symbolseqnum" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.referenceprice" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.pairedqty" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.totalimbalanceqty" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.marketimbalanceqty" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.auctiontime" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.auctiontype" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.imbalanceside" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.continuousbookclearingprice" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.auctioninterestclearingprice" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.ssrfilingprice" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.indicativematchprice" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.uppercollar" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.lowercollar" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.auctionstatus" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.freezestatus" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.numextensions" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.unpairedqty" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.unpairedside" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.reserved1" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g/RefreshHeaderMessage.pcap" \
  -X "lua_script:Nyse/ArcaEquities/IntegratedFeedRefresh/Nyse_ArcaEquities_IntegratedFeedRefresh_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.RefreshHeaderMessage.json 2> Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.RefreshHeaderMessage.json.stderr \
  || { echo "--- tshark FAILED (RefreshHeaderMessage) ---"; cat Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.RefreshHeaderMessage.json.stderr; exit 1; }

grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.currentrefreshpkt" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.RefreshHeaderMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.totalrefreshpkts" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.RefreshHeaderMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.lastseqnum" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.RefreshHeaderMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.lastsymbolseqnum" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.RefreshHeaderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g/SecurityStatusMessage.pcap" \
  -X "lua_script:Nyse/ArcaEquities/IntegratedFeedRefresh/Nyse_ArcaEquities_IntegratedFeedRefresh_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json 2> Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityStatusMessage) ---"; cat Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json.stderr; exit 1; }

grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.sourcetime" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.sourcetimens" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.symbolindex" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.symbolseqnum" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.securitystatus" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.haltcondition" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.reserved4" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.price1" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.price2" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.ssrtriggeringexchangeid" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.ssrtriggeringvolume" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.time" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.ssrstate" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.marketstate" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.sessionstate" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g/SymbolIndexMappingMessage.pcap" \
  -X "lua_script:Nyse/ArcaEquities/IntegratedFeedRefresh/Nyse_ArcaEquities_IntegratedFeedRefresh_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json 2> Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json.stderr \
  || { echo "--- tshark FAILED (SymbolIndexMappingMessage) ---"; cat Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json.stderr; exit 1; }

grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.symbolindex" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.symbol" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.reserved1" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.marketid" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.systemid" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.exchangecode" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.pricescalecode" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.securitytype" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.lotsize" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.prevcloseprice" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.prevclosevolume" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.priceresolution" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.roundlot" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.mpv" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.unitoftrade" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.latecloseeligible" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.integratedfeedrefresh.pillar.v2.5.g.etheligible" Nyse.ArcaEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
