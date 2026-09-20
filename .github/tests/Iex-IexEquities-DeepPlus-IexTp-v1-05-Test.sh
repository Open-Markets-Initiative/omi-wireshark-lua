set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.05/AddOrderMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_05_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.05.AddOrderMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.05.AddOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.05.AddOrderMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.05.side" Iex.IexEquities.DeepPlus.IexTp.v1.05.AddOrderMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.05.AddOrderMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.05.AddOrderMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.orderid" Iex.IexEquities.DeepPlus.IexTp.v1.05.AddOrderMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.size" Iex.IexEquities.DeepPlus.IexTp.v1.05.AddOrderMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.price" Iex.IexEquities.DeepPlus.IexTp.v1.05.AddOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.05/OperationalHaltStatusMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_05_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.05.OperationalHaltStatusMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.05.OperationalHaltStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (OperationalHaltStatusMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.05.OperationalHaltStatusMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.05.operationalhaltstatus" Iex.IexEquities.DeepPlus.IexTp.v1.05.OperationalHaltStatusMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.05.OperationalHaltStatusMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.05.OperationalHaltStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.05/OrderDeleteMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_05_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.05.OrderDeleteMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.05.OrderDeleteMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderDeleteMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.05.OrderDeleteMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.05.reserved1" Iex.IexEquities.DeepPlus.IexTp.v1.05.OrderDeleteMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.05.OrderDeleteMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.05.OrderDeleteMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.orderidreference" Iex.IexEquities.DeepPlus.IexTp.v1.05.OrderDeleteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.05/OrderExecutedMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_05_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.05.OrderExecutedMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.05.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.05.OrderExecutedMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.05.saleconditionflags" Iex.IexEquities.DeepPlus.IexTp.v1.05.OrderExecutedMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.05.OrderExecutedMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.05.OrderExecutedMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.orderidreference" Iex.IexEquities.DeepPlus.IexTp.v1.05.OrderExecutedMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.size" Iex.IexEquities.DeepPlus.IexTp.v1.05.OrderExecutedMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.price" Iex.IexEquities.DeepPlus.IexTp.v1.05.OrderExecutedMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.tradeid" Iex.IexEquities.DeepPlus.IexTp.v1.05.OrderExecutedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.05/OrderModifyMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_05_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.05.OrderModifyMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.05.OrderModifyMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderModifyMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.05.OrderModifyMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.05.modifyflags" Iex.IexEquities.DeepPlus.IexTp.v1.05.OrderModifyMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.05.OrderModifyMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.05.OrderModifyMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.orderidreference" Iex.IexEquities.DeepPlus.IexTp.v1.05.OrderModifyMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.size" Iex.IexEquities.DeepPlus.IexTp.v1.05.OrderModifyMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.price" Iex.IexEquities.DeepPlus.IexTp.v1.05.OrderModifyMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.05/RetailLiquidityIndicatorMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_05_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.05.RetailLiquidityIndicatorMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.05.RetailLiquidityIndicatorMessage.json.stderr \
  || { echo "--- tshark FAILED (RetailLiquidityIndicatorMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.05.RetailLiquidityIndicatorMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.05.retailliquidityindicator" Iex.IexEquities.DeepPlus.IexTp.v1.05.RetailLiquidityIndicatorMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.05.RetailLiquidityIndicatorMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.05.RetailLiquidityIndicatorMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.05/SecurityEventMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_05_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.05.SecurityEventMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.05.SecurityEventMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityEventMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.05.SecurityEventMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.05.securityevent" Iex.IexEquities.DeepPlus.IexTp.v1.05.SecurityEventMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.05.SecurityEventMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.05.SecurityEventMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.05/ShortSalePriceTestStatusMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_05_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.05.ShortSalePriceTestStatusMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.05.ShortSalePriceTestStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (ShortSalePriceTestStatusMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.05.ShortSalePriceTestStatusMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.05.shortsalepriceteststatus" Iex.IexEquities.DeepPlus.IexTp.v1.05.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.05.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.05.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.detail" Iex.IexEquities.DeepPlus.IexTp.v1.05.ShortSalePriceTestStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.05/SystemEventMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_05_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.05.SystemEventMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.05.SystemEventMessage.json.stderr \
  || { echo "--- tshark FAILED (SystemEventMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.05.SystemEventMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.05.systemevent" Iex.IexEquities.DeepPlus.IexTp.v1.05.SystemEventMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.05.SystemEventMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.05/TradeMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_05_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.05.TradeMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.05.TradeMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.05.TradeMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.05.saleconditionflags" Iex.IexEquities.DeepPlus.IexTp.v1.05.TradeMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.05.TradeMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.05.TradeMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.size" Iex.IexEquities.DeepPlus.IexTp.v1.05.TradeMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.price" Iex.IexEquities.DeepPlus.IexTp.v1.05.TradeMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.tradeid" Iex.IexEquities.DeepPlus.IexTp.v1.05.TradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.05/TradingStatusMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_05_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.05.TradingStatusMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.05.TradingStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingStatusMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.05.TradingStatusMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.05.tradingstatus" Iex.IexEquities.DeepPlus.IexTp.v1.05.TradingStatusMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.05.TradingStatusMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.05.TradingStatusMessage.json
grep "iex.iexequities.deepplus.iextp.v1.05.reason" Iex.IexEquities.DeepPlus.IexTp.v1.05.TradingStatusMessage.json
