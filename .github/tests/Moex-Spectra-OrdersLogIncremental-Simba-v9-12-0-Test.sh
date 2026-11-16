set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Moex/Spectra.OrdersLogIncremental.Simba.v9.12.0/BestPricesMessage.pcap" \
  -X "lua_script:Moex/Spectra/OrdersLogIncremental/Moex_Spectra_OrdersLogIncremental_Simba_v9_12_0_Dissector.lua" \
  -T json \
  > Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.BestPricesMessage.json 2> Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.BestPricesMessage.json.stderr \
  || { echo "--- tshark FAILED (BestPricesMessage) ---"; cat Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.BestPricesMessage.json.stderr; exit 1; }

grep "moex.spectra.orderslogincremental.simba.v9.12.0.blocklength" Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.BestPricesMessage.json
grep "moex.spectra.orderslogincremental.simba.v9.12.0.numingroupuint8" Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.BestPricesMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Moex/Spectra.OrdersLogIncremental.Simba.v9.12.0/OrderExecutionMessage.pcap" \
  -X "lua_script:Moex/Spectra/OrdersLogIncremental/Moex_Spectra_OrdersLogIncremental_Simba_v9_12_0_Dissector.lua" \
  -T json \
  > Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.OrderExecutionMessage.json 2> Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.OrderExecutionMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutionMessage) ---"; cat Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.OrderExecutionMessage.json.stderr; exit 1; }

grep "moex.spectra.orderslogincremental.simba.v9.12.0.mdentryidint64" Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.OrderExecutionMessage.json
grep "moex.spectra.orderslogincremental.simba.v9.12.0.mdentrypxdecimal5nulloptional" Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.OrderExecutionMessage.json
grep "moex.spectra.orderslogincremental.simba.v9.12.0.mdentrysizeint64nulloptional" Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.OrderExecutionMessage.json
grep "moex.spectra.orderslogincremental.simba.v9.12.0.lastpx" Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.OrderExecutionMessage.json
grep "moex.spectra.orderslogincremental.simba.v9.12.0.lastqty" Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.OrderExecutionMessage.json
grep "moex.spectra.orderslogincremental.simba.v9.12.0.tradeidint64" Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.OrderExecutionMessage.json
grep "moex.spectra.orderslogincremental.simba.v9.12.0.mdflags" Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.OrderExecutionMessage.json
grep "moex.spectra.orderslogincremental.simba.v9.12.0.mdflags2" Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.OrderExecutionMessage.json
grep "moex.spectra.orderslogincremental.simba.v9.12.0.securityid" Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.OrderExecutionMessage.json
grep "moex.spectra.orderslogincremental.simba.v9.12.0.rptseq" Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.OrderExecutionMessage.json
grep "moex.spectra.orderslogincremental.simba.v9.12.0.mdupdateaction" Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.OrderExecutionMessage.json
grep "moex.spectra.orderslogincremental.simba.v9.12.0.mdentrytype" Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.OrderExecutionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Moex/Spectra.OrdersLogIncremental.Simba.v9.12.0/OrderUpdateMessage.pcap" \
  -X "lua_script:Moex/Spectra/OrdersLogIncremental/Moex_Spectra_OrdersLogIncremental_Simba_v9_12_0_Dissector.lua" \
  -T json \
  > Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.OrderUpdateMessage.json 2> Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.OrderUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderUpdateMessage) ---"; cat Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.OrderUpdateMessage.json.stderr; exit 1; }

grep "moex.spectra.orderslogincremental.simba.v9.12.0.mdentryidint64" Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.OrderUpdateMessage.json
grep "moex.spectra.orderslogincremental.simba.v9.12.0.mdentrypxdecimal5" Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.OrderUpdateMessage.json
grep "moex.spectra.orderslogincremental.simba.v9.12.0.mdentrysizeint64" Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.OrderUpdateMessage.json
grep "moex.spectra.orderslogincremental.simba.v9.12.0.mdflags" Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.OrderUpdateMessage.json
grep "moex.spectra.orderslogincremental.simba.v9.12.0.mdflags2" Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.OrderUpdateMessage.json
grep "moex.spectra.orderslogincremental.simba.v9.12.0.securityid" Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.OrderUpdateMessage.json
grep "moex.spectra.orderslogincremental.simba.v9.12.0.rptseq" Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.OrderUpdateMessage.json
grep "moex.spectra.orderslogincremental.simba.v9.12.0.mdupdateaction" Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.OrderUpdateMessage.json
grep "moex.spectra.orderslogincremental.simba.v9.12.0.mdentrytype" Moex.Spectra.OrdersLogIncremental.Simba.v9.12.0.OrderUpdateMessage.json
