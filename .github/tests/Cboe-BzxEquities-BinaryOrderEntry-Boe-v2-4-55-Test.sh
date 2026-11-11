set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/CancelOrderMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/BinaryOrderEntry/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_4_55_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.CancelOrderMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.CancelOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (CancelOrderMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.CancelOrderMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.origclordid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.CancelOrderMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.numberofcancelorderbitfields" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.CancelOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/CancelRejectedMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/BinaryOrderEntry/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_4_55_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.CancelRejectedMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.CancelRejectedMessage.json.stderr \
  || { echo "--- tshark FAILED (CancelRejectedMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.CancelRejectedMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.transactiontime" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.CancelRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.clordid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.CancelRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.cancelrejectreason" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.CancelRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.text" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.CancelRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.numberofreturnbitfields" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.CancelRejectedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/ClientHeartbeatMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/BinaryOrderEntry/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_4_55_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.ClientHeartbeatMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.ClientHeartbeatMessage.json.stderr \
  || { echo "--- tshark FAILED (ClientHeartbeatMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.ClientHeartbeatMessage.json.stderr; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/LoginRequestMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/BinaryOrderEntry/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_4_55_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.LoginRequestMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.LoginRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (LoginRequestMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.LoginRequestMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.sessionsubid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.LoginRequestMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.username" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.LoginRequestMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.password" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.LoginRequestMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.numberofparamgroups" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.LoginRequestMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/LoginResponseMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/BinaryOrderEntry/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_4_55_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.LoginResponseMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.LoginResponseMessage.json.stderr \
  || { echo "--- tshark FAILED (LoginResponseMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.LoginResponseMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.loginresponsestatus" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.LoginResponseMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.loginresponsetext" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.LoginResponseMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.nounspecifiedunitreplay" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.LoginResponseMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.lastreceivedsequencenumber" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.LoginResponseMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.numberofunits" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.LoginResponseMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.numberofparamgroups" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.LoginResponseMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/LogoutMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/BinaryOrderEntry/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_4_55_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.LogoutMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.LogoutMessage.json.stderr \
  || { echo "--- tshark FAILED (LogoutMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.LogoutMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.logoutreason" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.LogoutMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.logoutreasontext" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.LogoutMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.lastreceivedsequencenumber" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.LogoutMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.numberofunits" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.LogoutMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/LogoutRequestMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/BinaryOrderEntry/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_4_55_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.LogoutRequestMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.LogoutRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (LogoutRequestMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.LogoutRequestMessage.json.stderr; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/MassCancelAcknowledgmentMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/BinaryOrderEntry/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_4_55_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.MassCancelAcknowledgmentMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.MassCancelAcknowledgmentMessage.json.stderr \
  || { echo "--- tshark FAILED (MassCancelAcknowledgmentMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.MassCancelAcknowledgmentMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.transactiontime" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.MassCancelAcknowledgmentMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.masscancelid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.MassCancelAcknowledgmentMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.cancelledordercount" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.MassCancelAcknowledgmentMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/MinimalOrderAcknowledgementMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/BinaryOrderEntry/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_4_55_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderAcknowledgmentMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderAcknowledgmentMessage.json.stderr \
  || { echo "--- tshark FAILED (MinimalOrderAcknowledgementMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderAcknowledgmentMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.transactiontime" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderAcknowledgmentMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.clordid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderAcknowledgmentMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.orderid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderAcknowledgmentMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.numberofreturnbitfields" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderAcknowledgmentMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/ModifyOrderMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/BinaryOrderEntry/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_4_55_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.ModifyOrderMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.ModifyOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.ModifyOrderMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.clordid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.ModifyOrderMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.origclordid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.ModifyOrderMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.numberofmodifyorderbitfields" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.ModifyOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/NewOrderMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/BinaryOrderEntry/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_4_55_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.NewOrderMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.NewOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (NewOrderMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.NewOrderMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.clordid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.NewOrderMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.side" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.NewOrderMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.orderqty" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.NewOrderMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.numberofneworderbitfields" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.NewOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/OrderAcknowledgmentMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/BinaryOrderEntry/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_4_55_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderAcknowledgmentMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderAcknowledgmentMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderAcknowledgmentMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderAcknowledgmentMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.transactiontime" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderAcknowledgmentMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.clordid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderAcknowledgmentMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.orderid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderAcknowledgmentMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.numberofreturnbitfields" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderAcknowledgmentMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/OrderCancelledMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/BinaryOrderEntry/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_4_55_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderCancelledMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderCancelledMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderCancelledMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderCancelledMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.transactiontime" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderCancelledMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.clordid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderCancelledMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.cancelreason" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderCancelledMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.numberofreturnbitfields" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderCancelledMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/OrderExecutionMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/BinaryOrderEntry/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_4_55_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderExecutionMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderExecutionMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutionMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderExecutionMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.transactiontime" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderExecutionMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.clordid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderExecutionMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.execid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderExecutionMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.lastshares" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderExecutionMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.lastpx" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderExecutionMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.leavesqty" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderExecutionMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.baseliquidityindicator" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderExecutionMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.subliquidityindicator" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderExecutionMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.contrabroker" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderExecutionMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.numberofreturnbitfields" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderExecutionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/OrderModifiedMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/BinaryOrderEntry/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_4_55_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderModifiedMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderModifiedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderModifiedMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderModifiedMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.transactiontime" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderModifiedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.clordid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderModifiedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.orderid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderModifiedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.numberofreturnbitfields" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderModifiedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/OrderRejectedMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/BinaryOrderEntry/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_4_55_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderRejectedMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderRejectedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderRejectedMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderRejectedMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.transactiontime" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.clordid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.orderrejectreason" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.text" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.numberofreturnbitfields" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderRejectedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/OrderRestatedMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/BinaryOrderEntry/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_4_55_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderRestatedMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderRestatedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderRestatedMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderRestatedMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.transactiontime" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderRestatedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.clordid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderRestatedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.orderid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderRestatedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.restatementreason" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderRestatedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.numberofreturnbitfields" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.OrderRestatedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/PurgeOrdersMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/BinaryOrderEntry/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_4_55_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.PurgeOrdersMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.PurgeOrdersMessage.json.stderr \
  || { echo "--- tshark FAILED (PurgeOrdersMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.PurgeOrdersMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.numberofpurgeordersbitfields" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.PurgeOrdersMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.riskgroupidcnt" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.PurgeOrdersMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/PurgeRejectedMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/BinaryOrderEntry/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_4_55_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.PurgeRejectedMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.PurgeRejectedMessage.json.stderr \
  || { echo "--- tshark FAILED (PurgeRejectedMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.PurgeRejectedMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.transactiontime" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.PurgeRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.purgerejectreason" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.PurgeRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.text" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.PurgeRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.numberofreturnbitfields" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.PurgeRejectedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/ReplayCompleteMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/BinaryOrderEntry/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_4_55_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.ReplayCompleteMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.ReplayCompleteMessage.json.stderr \
  || { echo "--- tshark FAILED (ReplayCompleteMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.ReplayCompleteMessage.json.stderr; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/ServerHeartbeatMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/BinaryOrderEntry/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_4_55_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.ServerHeartbeatMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.ServerHeartbeatMessage.json.stderr \
  || { echo "--- tshark FAILED (ServerHeartbeatMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.ServerHeartbeatMessage.json.stderr; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/TradeCancelOrCorrectMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/BinaryOrderEntry/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_4_55_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.TradeCancelOrCorrectMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.TradeCancelOrCorrectMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeCancelOrCorrectMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.TradeCancelOrCorrectMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.transactiontime" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.TradeCancelOrCorrectMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.clordid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.TradeCancelOrCorrectMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.orderid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.TradeCancelOrCorrectMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.execrefid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.TradeCancelOrCorrectMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.side" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.TradeCancelOrCorrectMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.baseliquidityindicator" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.TradeCancelOrCorrectMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.clearingfirm" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.TradeCancelOrCorrectMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.clearingaccount" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.TradeCancelOrCorrectMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.lastshares" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.TradeCancelOrCorrectMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.lastpx" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.TradeCancelOrCorrectMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.correctedprice" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.TradeCancelOrCorrectMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.origtime" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.TradeCancelOrCorrectMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.numberofreturnbitfields" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.TradeCancelOrCorrectMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/UserModifyRejectedMessage.pcap" \
  -X "lua_script:Cboe/BzxEquities/BinaryOrderEntry/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_4_55_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.UserModifyRejectedMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.UserModifyRejectedMessage.json.stderr \
  || { echo "--- tshark FAILED (UserModifyRejectedMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.UserModifyRejectedMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.transactiontime" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.UserModifyRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.clordid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.UserModifyRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.modifyrejectreason" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.UserModifyRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.text" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.UserModifyRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.4.55.numberofreturnbitfields" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.UserModifyRejectedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/MultipleMessages.pcap" \
  -X "lua_script:Cboe/BzxEquities/BinaryOrderEntry/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_4_55_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.Multiplemessages.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.Multiplemessages.json.stderr \
  || { echo "--- tshark FAILED (MultipleMessages) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.Multiplemessages.json.stderr; exit 1; }

fields=$(grep -c "cboe.bzxequities.binaryorderentry.boe.v2.4.55." Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.Multiplemessages.json) \
  || { echo "--- no cboe.bzxequities.binaryorderentry.boe.v2.4.55 fields (MultipleMessages) ---"; exit 1; }
echo "  cboe.bzxequities.binaryorderentry.boe.v2.4.55 fields: $fields"

errors=$(grep -c '"_ws.expert.severity": "8388608"' Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.Multiplemessages.json || true)
[ "$errors" -eq 0 ] \
  || { echo "--- $errors expert errors (MultipleMessages) ---"; grep -o '"Lua Error[^"]*"' Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.Multiplemessages.json | sort -u | head; exit 1; }

[ "$(grep -c 'cboe.bzxequities.binaryorderentry.boe.v2.4.55.' Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.4.55.Multiplemessages.json)" -gt 1 ] || { echo "--- only one message decoded (MultipleMessages) ---"; exit 1; }
