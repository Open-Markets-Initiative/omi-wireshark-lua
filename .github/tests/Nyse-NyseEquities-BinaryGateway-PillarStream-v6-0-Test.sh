set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.BinaryGateway.PillarStream.v6.0/CloseResponse.pcap" \
  -X "lua_script:Nyse/NyseEquities/BinaryGateway/Nyse_NyseEquities_BinaryGateway_PillarStream_v6_0_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.CloseResponse.json 2> Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.CloseResponse.json.stderr \
  || { echo "--- tshark FAILED (CloseResponse) ---"; cat Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.CloseResponse.json.stderr; exit 1; }

grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.msgtype" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.CloseResponse.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.msglength" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.CloseResponse.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.sess" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.CloseResponse.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.value" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.CloseResponse.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.status" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.CloseResponse.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.BinaryGateway.PillarStream.v6.0/EquitiesSymbolReferenceDataMessage.pcap" \
  -X "lua_script:Nyse/NyseEquities/BinaryGateway/Nyse_NyseEquities_BinaryGateway_PillarStream_v6_0_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.EquitiesSymbolReferenceDataMessage.json 2> Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.EquitiesSymbolReferenceDataMessage.json.stderr \
  || { echo "--- tshark FAILED (EquitiesSymbolReferenceDataMessage) ---"; cat Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.EquitiesSymbolReferenceDataMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.transacttime" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.EquitiesSymbolReferenceDataMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.symbolid" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.EquitiesSymbolReferenceDataMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.nysesymbol" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.EquitiesSymbolReferenceDataMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.listedmic" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.EquitiesSymbolReferenceDataMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.roundlotsize" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.EquitiesSymbolReferenceDataMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.advriskrangeid" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.EquitiesSymbolReferenceDataMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.reserved7" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.EquitiesSymbolReferenceDataMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.mpvclassid" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.EquitiesSymbolReferenceDataMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.testsymbolindicator" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.EquitiesSymbolReferenceDataMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.BinaryGateway.PillarStream.v6.0/ExecutionReportMessage.pcap" \
  -X "lua_script:Nyse/NyseEquities/BinaryGateway/Nyse_NyseEquities_BinaryGateway_PillarStream_v6_0_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.ExecutionReportMessage.json 2> Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.ExecutionReportMessage.json.stderr \
  || { echo "--- tshark FAILED (ExecutionReportMessage) ---"; cat Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.ExecutionReportMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.transacttime" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.ExecutionReportMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.symbolid" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.ExecutionReportMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.mpid" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.ExecutionReportMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.orderid" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.ExecutionReportMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.clordid" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.ExecutionReportMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.dealid" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.ExecutionReportMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.lastpx" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.ExecutionReportMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.leavesqty" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.ExecutionReportMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.cumqty" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.ExecutionReportMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.lastqty" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.ExecutionReportMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.liquidityindicator" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.ExecutionReportMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.bitfieldexecutiondetails" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.ExecutionReportMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.reserved3" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.ExecutionReportMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.locatereqdu81" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.ExecutionReportMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.participanttype" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.ExecutionReportMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.reasoncode" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.ExecutionReportMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.userdata" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.ExecutionReportMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.BinaryGateway.PillarStream.v6.0/Heartbeat.pcap" \
  -X "lua_script:Nyse/NyseEquities/BinaryGateway/Nyse_NyseEquities_BinaryGateway_PillarStream_v6_0_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.Heartbeat.json 2> Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.Heartbeat.json.stderr \
  || { echo "--- tshark FAILED (Heartbeat) ---"; cat Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.Heartbeat.json.stderr; exit 1; }

grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.msgtype" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.Heartbeat.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.msglength" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.Heartbeat.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.BinaryGateway.PillarStream.v6.0/LoginMessage.pcap" \
  -X "lua_script:Nyse/NyseEquities/BinaryGateway/Nyse_NyseEquities_BinaryGateway_PillarStream_v6_0_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.LoginMessage.json 2> Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.LoginMessage.json.stderr \
  || { echo "--- tshark FAILED (LoginMessage) ---"; cat Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.LoginMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.msgtype" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.LoginMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.msglength" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.LoginMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.username" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.LoginMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.password" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.LoginMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.mic" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.LoginMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.version" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.LoginMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.BinaryGateway.PillarStream.v6.0/LoginResponse.pcap" \
  -X "lua_script:Nyse/NyseEquities/BinaryGateway/Nyse_NyseEquities_BinaryGateway_PillarStream_v6_0_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.LoginResponse.json 2> Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.LoginResponse.json.stderr \
  || { echo "--- tshark FAILED (LoginResponse) ---"; cat Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.LoginResponse.json.stderr; exit 1; }

grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.msgtype" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.LoginResponse.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.msglength" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.LoginResponse.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.username" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.LoginResponse.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.status" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.LoginResponse.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.BinaryGateway.PillarStream.v6.0/NewOrderSingleAndCancelReplaceRequestMessage.pcap" \
  -X "lua_script:Nyse/NyseEquities/BinaryGateway/Nyse_NyseEquities_BinaryGateway_PillarStream_v6_0_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.NewOrderSingleAndCancelReplaceRequestMessage.json 2> Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.NewOrderSingleAndCancelReplaceRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (NewOrderSingleAndCancelReplaceRequestMessage) ---"; cat Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.NewOrderSingleAndCancelReplaceRequestMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.symbolid" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.mpid" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.mmid" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.mpsubid1" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.clordid" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.origclordid" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.bitfieldorderinstructions" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.price" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.orderqty" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.minqty" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.userdata" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.NewOrderSingleAndCancelReplaceRequestMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.BinaryGateway.PillarStream.v6.0/Open.pcap" \
  -X "lua_script:Nyse/NyseEquities/BinaryGateway/Nyse_NyseEquities_BinaryGateway_PillarStream_v6_0_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.Open.json 2> Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.Open.json.stderr \
  || { echo "--- tshark FAILED (Open) ---"; cat Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.Open.json.stderr; exit 1; }

grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.msgtype" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.Open.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.msglength" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.Open.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.sess" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.Open.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.value" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.Open.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.startseq" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.Open.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.endseq" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.Open.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.access" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.Open.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.mode" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.Open.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.BinaryGateway.PillarStream.v6.0/OpenResponse.pcap" \
  -X "lua_script:Nyse/NyseEquities/BinaryGateway/Nyse_NyseEquities_BinaryGateway_PillarStream_v6_0_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OpenResponse.json 2> Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OpenResponse.json.stderr \
  || { echo "--- tshark FAILED (OpenResponse) ---"; cat Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OpenResponse.json.stderr; exit 1; }

grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.msgtype" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OpenResponse.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.msglength" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OpenResponse.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.sess" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OpenResponse.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.value" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OpenResponse.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.status" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OpenResponse.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.access" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OpenResponse.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.BinaryGateway.PillarStream.v6.0/OrderAndCancelReplaceAcknowledgementMessage.pcap" \
  -X "lua_script:Nyse/NyseEquities/BinaryGateway/Nyse_NyseEquities_BinaryGateway_PillarStream_v6_0_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OrderAndCancelReplaceAcknowledgementMessage.json 2> Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OrderAndCancelReplaceAcknowledgementMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderAndCancelReplaceAcknowledgementMessage) ---"; cat Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OrderAndCancelReplaceAcknowledgementMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.transacttime" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OrderAndCancelReplaceAcknowledgementMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.symbolid" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OrderAndCancelReplaceAcknowledgementMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.mpid" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OrderAndCancelReplaceAcknowledgementMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.mmid" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OrderAndCancelReplaceAcknowledgementMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.mpsubid1" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OrderAndCancelReplaceAcknowledgementMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.clordid" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OrderAndCancelReplaceAcknowledgementMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.origclordid" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OrderAndCancelReplaceAcknowledgementMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.bitfieldorderinstructions" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OrderAndCancelReplaceAcknowledgementMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.price" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OrderAndCancelReplaceAcknowledgementMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.orderqty" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OrderAndCancelReplaceAcknowledgementMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.minqty" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OrderAndCancelReplaceAcknowledgementMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.orderid" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OrderAndCancelReplaceAcknowledgementMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.leavesqty" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OrderAndCancelReplaceAcknowledgementMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.workingprice" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OrderAndCancelReplaceAcknowledgementMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.workingawayfromdisplay" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OrderAndCancelReplaceAcknowledgementMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.preliquidityindicator" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OrderAndCancelReplaceAcknowledgementMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.reasoncode" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OrderAndCancelReplaceAcknowledgementMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.acktype" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OrderAndCancelReplaceAcknowledgementMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.bitfieldflowindicator" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OrderAndCancelReplaceAcknowledgementMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.userdata" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.OrderAndCancelReplaceAcknowledgementMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.BinaryGateway.PillarStream.v6.0/StreamAvail.pcap" \
  -X "lua_script:Nyse/NyseEquities/BinaryGateway/Nyse_NyseEquities_BinaryGateway_PillarStream_v6_0_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.StreamAvail.json 2> Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.StreamAvail.json.stderr \
  || { echo "--- tshark FAILED (StreamAvail) ---"; cat Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.StreamAvail.json.stderr; exit 1; }

grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.msgtype" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.StreamAvail.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.msglength" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.StreamAvail.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.sess" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.StreamAvail.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.value" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.StreamAvail.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.nextseq" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.StreamAvail.json
grep "nyse.nyseequities.binarygateway.pillarstream.v6.0.access" Nyse.NyseEquities.BinaryGateway.PillarStream.v6.0.StreamAvail.json
