set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.BinaryOrderEntry.Boe3.v1.0/ClientHeartbeat.pcap" \
  -X "lua_script:Cboe/CfeFutures/BinaryOrderEntry/Cboe_CfeFutures_BinaryOrderEntry_Boe3_v1_0_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.0.ClientHeartbeat.json 2> Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.0.ClientHeartbeat.json.stderr \
  || { echo "--- tshark FAILED (ClientHeartbeat) ---"; cat Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.0.ClientHeartbeat.json.stderr; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.BinaryOrderEntry.Boe3.v1.0/QuoteUpdate.pcap" \
  -X "lua_script:Cboe/CfeFutures/BinaryOrderEntry/Cboe_CfeFutures_BinaryOrderEntry_Boe3_v1_0_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.0.QuoteUpdate.json 2> Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.0.QuoteUpdate.json.stderr \
  || { echo "--- tshark FAILED (QuoteUpdate) ---"; cat Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.0.QuoteUpdate.json.stderr; exit 1; }

grep "cboe.cfefutures.binaryorderentry.boe3.v1.0.quoteupdateid" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.0.QuoteUpdate.json
grep "cboe.cfefutures.binaryorderentry.boe3.v1.0.clearingfirm" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.0.QuoteUpdate.json
grep "cboe.cfefutures.binaryorderentry.boe3.v1.0.clearingaccount" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.0.QuoteUpdate.json
grep "cboe.cfefutures.binaryorderentry.boe3.v1.0.cmtanumber" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.0.QuoteUpdate.json
grep "cboe.cfefutures.binaryorderentry.boe3.v1.0.account" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.0.QuoteUpdate.json
grep "cboe.cfefutures.binaryorderentry.boe3.v1.0.customgroupid" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.0.QuoteUpdate.json
grep "cboe.cfefutures.binaryorderentry.boe3.v1.0.capacity" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.0.QuoteUpdate.json
grep "cboe.cfefutures.binaryorderentry.boe3.v1.0.cticode" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.0.QuoteUpdate.json
grep "cboe.cfefutures.binaryorderentry.boe3.v1.0.manualorderindicator" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.0.QuoteUpdate.json
grep "cboe.cfefutures.binaryorderentry.boe3.v1.0.oeoid" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.0.QuoteUpdate.json
grep "cboe.cfefutures.binaryorderentry.boe3.v1.0.sizemodifier" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.0.QuoteUpdate.json
grep "cboe.cfefutures.binaryorderentry.boe3.v1.0.quotecnt" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.0.QuoteUpdate.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.BinaryOrderEntry.Boe3.v1.0/QuoteUpdateAcknowledgement.pcap" \
  -X "lua_script:Cboe/CfeFutures/BinaryOrderEntry/Cboe_CfeFutures_BinaryOrderEntry_Boe3_v1_0_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.0.QuoteUpdateAcknowledgement.json 2> Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.0.QuoteUpdateAcknowledgement.json.stderr \
  || { echo "--- tshark FAILED (QuoteUpdateAcknowledgement) ---"; cat Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.0.QuoteUpdateAcknowledgement.json.stderr; exit 1; }

grep "cboe.cfefutures.binaryorderentry.boe3.v1.0.transactiontime" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.0.QuoteUpdateAcknowledgement.json
grep "cboe.cfefutures.binaryorderentry.boe3.v1.0.quoteupdateid" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.0.QuoteUpdateAcknowledgement.json
grep "cboe.cfefutures.binaryorderentry.boe3.v1.0.requestreceivedtime" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.0.QuoteUpdateAcknowledgement.json
grep "cboe.cfefutures.binaryorderentry.boe3.v1.0.quotecnt" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.0.QuoteUpdateAcknowledgement.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.BinaryOrderEntry.Boe3.v1.0/ServerHeartbeat.pcap" \
  -X "lua_script:Cboe/CfeFutures/BinaryOrderEntry/Cboe_CfeFutures_BinaryOrderEntry_Boe3_v1_0_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.0.ServerHeartbeat.json 2> Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.0.ServerHeartbeat.json.stderr \
  || { echo "--- tshark FAILED (ServerHeartbeat) ---"; cat Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.0.ServerHeartbeat.json.stderr; exit 1; }

