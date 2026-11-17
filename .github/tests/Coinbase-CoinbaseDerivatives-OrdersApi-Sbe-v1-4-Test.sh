set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.4/CancelOrderMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/OrdersApi/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.CancelOrderMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.CancelOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (CancelOrderMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.CancelOrderMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.CancelOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.CancelOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.CancelOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.4/CancelOrderRejectMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/OrdersApi/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.CancelOrderRejectMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.CancelOrderRejectMessage.json.stderr \
  || { echo "--- tshark FAILED (CancelOrderRejectMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.CancelOrderRejectMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.CancelOrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.CancelOrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.CancelOrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.orderidoptional" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.CancelOrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.cancelorderrejectreason" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.CancelOrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.cancelorderrejectdetails" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.CancelOrderRejectMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.4/InstrumentInfoMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/OrdersApi/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json.stderr \
  || { echo "--- tshark FAILED (InstrumentInfoMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.securitytype" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.instrumentstatus" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.islastmessage" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.reservedbyte" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.symbol" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.4/InstrumentInfoRequestMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/OrdersApi/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoRequestMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (InstrumentInfoRequestMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoRequestMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoRequestMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.4/LastExecIdMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/OrdersApi/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.LastExecIdMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.LastExecIdMessage.json.stderr \
  || { echo "--- tshark FAILED (LastExecIdMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.LastExecIdMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.LastExecIdMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.lastexecid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.LastExecIdMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.LastExecIdMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.4/LastExecIdRequestMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/OrdersApi/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.LastExecIdRequestMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.LastExecIdRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (LastExecIdRequestMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.LastExecIdRequestMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.LastExecIdRequestMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.4/LoggedOutMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/OrdersApi/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.LoggedOutMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.LoggedOutMessage.json.stderr \
  || { echo "--- tshark FAILED (LoggedOutMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.LoggedOutMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.logoutreason" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.LoggedOutMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.4/LogonConfMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/OrdersApi/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.LogonConfMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.LogonConfMessage.json.stderr \
  || { echo "--- tshark FAILED (LogonConfMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.LogonConfMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.heartbeatintervalseconds" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.LogonConfMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.4/LogonMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/OrdersApi/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.LogonMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.LogonMessage.json.stderr \
  || { echo "--- tshark FAILED (LogonMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.LogonMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.username" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.LogonMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.password" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.LogonMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.resetseqnum" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.LogonMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.4/LogoutMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/OrdersApi/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.LogoutMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.LogoutMessage.json.stderr \
  || { echo "--- tshark FAILED (LogoutMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.LogoutMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.logoutreason" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.LogoutMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.4/MassCancelOrderAckMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/OrdersApi/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json.stderr \
  || { echo "--- tshark FAILED (MassCancelOrderAckMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.execid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.canceledcount" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.onlycurrentsession" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.tradinglockapplied" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.4/MassCancelOrderMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/OrdersApi/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (MassCancelOrderMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.limitprice" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.side" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.currentsessiononly" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.requesttradinglock" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.4/MassCancelOrderRejectMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/OrdersApi/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderRejectMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderRejectMessage.json.stderr \
  || { echo "--- tshark FAILED (MassCancelOrderRejectMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderRejectMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.errormessage" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderRejectMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.4/NewOrderMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/OrdersApi/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (NewOrderMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.limitprice" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.quantity" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.side" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.4/OrderCanceledMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/OrdersApi/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderCanceledMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderCanceledMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderCanceledMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderCanceledMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderCanceledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.execid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderCanceledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderCanceledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderCanceledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.orderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderCanceledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.receivetime" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderCanceledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.totalfilled" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderCanceledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderCanceledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.cancelreason" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderCanceledMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.4/OrderEnteredMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/OrdersApi/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderEnteredMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderEnteredMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderEnteredMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderEnteredMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderEnteredMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.execid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderEnteredMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderEnteredMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderEnteredMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.orderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderEnteredMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.receivetime" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderEnteredMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.4/OrderFilledMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/OrdersApi/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderFilledMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.execid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.matchid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.orderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.filledvwap" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.totalfilled" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.availableqty" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.fillprice" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.fillqty" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.isaggressor" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.4/OrderRejectMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/OrdersApi/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderRejectMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderRejectMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderRejectMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderRejectMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.orderidoptional" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.orderrejectreason" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.orderrejectdetails" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderRejectMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.4/OrderReplacedMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/OrdersApi/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderReplacedMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.execid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.orderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.receivetime" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.totalfilled" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.availableqty" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.4/PingMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/OrdersApi/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.PingMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.PingMessage.json.stderr \
  || { echo "--- tshark FAILED (PingMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.PingMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.PingMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.requesttime" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.PingMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.4/PongMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/OrdersApi/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.PongMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.PongMessage.json.stderr \
  || { echo "--- tshark FAILED (PongMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.PongMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.PongMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.requesttime" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.PongMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.servertime" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.PongMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.tradinginstrumentstatus" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.PongMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.4/ReplaceOrderMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/OrdersApi/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (ReplaceOrderMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.newlimitprice" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.newquantity" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.4/SetAccountMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/OrdersApi/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAccountMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAccountMessage.json.stderr \
  || { echo "--- tshark FAILED (SetAccountMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAccountMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAccountMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.account" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAccountMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.4/SetAckMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/OrdersApi/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAckMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAckMessage.json.stderr \
  || { echo "--- tshark FAILED (SetAckMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAckMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAckMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.4/SetTraderMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/OrdersApi/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetTraderMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetTraderMessage.json.stderr \
  || { echo "--- tshark FAILED (SetTraderMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetTraderMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetTraderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.trader" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetTraderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.4/StreamOrderMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/OrdersApi/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.StreamOrderMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.StreamOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (StreamOrderMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.StreamOrderMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.StreamOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.StreamOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.lastprocessedfillid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.StreamOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.limitprice" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.StreamOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.quantity" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.StreamOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.StreamOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.side" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.StreamOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.4/UnlockTradingAckMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/OrdersApi/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.UnlockTradingAckMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.UnlockTradingAckMessage.json.stderr \
  || { echo "--- tshark FAILED (UnlockTradingAckMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.UnlockTradingAckMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.UnlockTradingAckMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.UnlockTradingAckMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.numusersaffected" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.UnlockTradingAckMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.4/UnlockTradingMessage.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/OrdersApi/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.UnlockTradingMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.UnlockTradingMessage.json.stderr \
  || { echo "--- tshark FAILED (UnlockTradingMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.UnlockTradingMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.UnlockTradingMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.currentsessiononly" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.UnlockTradingMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.4/MultipleMessages.pcap" \
  -X "lua_script:Coinbase/CoinbaseDerivatives/OrdersApi/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.Multiplemessages.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.Multiplemessages.json.stderr \
  || { echo "--- tshark FAILED (MultipleMessages) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.Multiplemessages.json.stderr; exit 1; }

fields=$(grep -c "coinbase.coinbasederivatives.ordersapi.sbe.v1.4." Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.Multiplemessages.json) \
  || { echo "--- no coinbase.coinbasederivatives.ordersapi.sbe.v1.4 fields (MultipleMessages) ---"; exit 1; }
echo "  coinbase.coinbasederivatives.ordersapi.sbe.v1.4 fields: $fields"

errors=$(grep -c '"_ws.expert.severity": "8388608"' Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.Multiplemessages.json || true)
[ "$errors" -eq 0 ] \
  || { echo "--- $errors expert errors (MultipleMessages) ---"; grep -o '"Lua Error[^"]*"' Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.Multiplemessages.json | sort -u | head; exit 1; }

[ "$(grep -c 'coinbase.coinbasederivatives.ordersapi.sbe.v1.4.' Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.Multiplemessages.json)" -gt 1 ] || { echo "--- only one message decoded (MultipleMessages) ---"; exit 1; }
