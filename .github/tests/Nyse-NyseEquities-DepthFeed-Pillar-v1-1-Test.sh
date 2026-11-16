set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.DepthFeed.Pillar.v1.1/DeltaMessage.pcap" \
  -X "lua_script:Nyse/NyseEquities/DepthFeed/Nyse_NyseEquities_DepthFeed_Pillar_v1_1_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.DepthFeed.Pillar.v1.1.DeltaMessage.json 2> Nyse.NyseEquities.DepthFeed.Pillar.v1.1.DeltaMessage.json.stderr \
  || { echo "--- tshark FAILED (DeltaMessage) ---"; cat Nyse.NyseEquities.DepthFeed.Pillar.v1.1.DeltaMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.depthfeed.pillar.v1.1.sourcetime" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.DeltaMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.sourcetimens" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.DeltaMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.symbolindex" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.DeltaMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.symbolseqnum" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.DeltaMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.updatecount" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.DeltaMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.DepthFeed.Pillar.v1.1/ImbalanceMessage.pcap" \
  -X "lua_script:Nyse/NyseEquities/DepthFeed/Nyse_NyseEquities_DepthFeed_Pillar_v1_1_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.DepthFeed.Pillar.v1.1.ImbalanceMessage.json 2> Nyse.NyseEquities.DepthFeed.Pillar.v1.1.ImbalanceMessage.json.stderr \
  || { echo "--- tshark FAILED (ImbalanceMessage) ---"; cat Nyse.NyseEquities.DepthFeed.Pillar.v1.1.ImbalanceMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.depthfeed.pillar.v1.1.sourcetime" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.ImbalanceMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.sourcetimens" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.ImbalanceMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.symbolindex" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.ImbalanceMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.symbolseqnum" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.ImbalanceMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.referenceprice" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.ImbalanceMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.pairedqty" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.ImbalanceMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.totalimbalanceqty" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.ImbalanceMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.marketimbalanceqty" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.ImbalanceMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.auctiontime" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.ImbalanceMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.auctiontype" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.ImbalanceMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.imbalanceside" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.ImbalanceMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.continuousbookclearingprice" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.ImbalanceMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.auctioninterestclearingprice" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.ImbalanceMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.ssrfilingprice" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.ImbalanceMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.indicativematchprice" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.ImbalanceMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.uppercollar" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.ImbalanceMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.lowercollar" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.ImbalanceMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.auctionstatus" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.ImbalanceMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.freezestatus" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.ImbalanceMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.numextensions" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.ImbalanceMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.unpairedqty" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.ImbalanceMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.unpairedside" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.ImbalanceMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.significantimbalance" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.ImbalanceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.DepthFeed.Pillar.v1.1/SecurityStatusMessage.pcap" \
  -X "lua_script:Nyse/NyseEquities/DepthFeed/Nyse_NyseEquities_DepthFeed_Pillar_v1_1_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.DepthFeed.Pillar.v1.1.SecurityStatusMessage.json 2> Nyse.NyseEquities.DepthFeed.Pillar.v1.1.SecurityStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityStatusMessage) ---"; cat Nyse.NyseEquities.DepthFeed.Pillar.v1.1.SecurityStatusMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.depthfeed.pillar.v1.1.sourcetime" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.SecurityStatusMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.sourcetimens" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.SecurityStatusMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.symbolindex" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.SecurityStatusMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.symbolseqnum" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.SecurityStatusMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.securitystatus" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.SecurityStatusMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.haltcondition" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.SecurityStatusMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.marketid" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.SecurityStatusMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.price1" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.SecurityStatusMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.price2" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.SecurityStatusMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.ssrtriggeringexchangeid" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.SecurityStatusMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.ssrtriggeringvolume" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.SecurityStatusMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.time" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.SecurityStatusMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.ssrstate" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.SecurityStatusMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.marketstate" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.SecurityStatusMessage.json
grep "nyse.nyseequities.depthfeed.pillar.v1.1.sessionstate" Nyse.NyseEquities.DepthFeed.Pillar.v1.1.SecurityStatusMessage.json
