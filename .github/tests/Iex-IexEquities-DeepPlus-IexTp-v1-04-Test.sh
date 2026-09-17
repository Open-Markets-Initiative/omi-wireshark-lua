set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.04/AddOrderMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_04_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.04.AddOrderMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.04.AddOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.04.AddOrderMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.04.side" Iex.IexEquities.DeepPlus.IexTp.v1.04.AddOrderMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.04.AddOrderMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.04.AddOrderMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.orderid" Iex.IexEquities.DeepPlus.IexTp.v1.04.AddOrderMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.size" Iex.IexEquities.DeepPlus.IexTp.v1.04.AddOrderMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.price" Iex.IexEquities.DeepPlus.IexTp.v1.04.AddOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.04/OperationalHaltStatusMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_04_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.04.OperationalHaltStatusMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.04.OperationalHaltStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (OperationalHaltStatusMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.04.OperationalHaltStatusMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.04.operationalhaltstatus" Iex.IexEquities.DeepPlus.IexTp.v1.04.OperationalHaltStatusMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.04.OperationalHaltStatusMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.04.OperationalHaltStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.04/OrderDeleteMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_04_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.04.OrderDeleteMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.04.OrderDeleteMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderDeleteMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.04.OrderDeleteMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.04.reserved1" Iex.IexEquities.DeepPlus.IexTp.v1.04.OrderDeleteMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.04.OrderDeleteMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.04.OrderDeleteMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.orderidreference" Iex.IexEquities.DeepPlus.IexTp.v1.04.OrderDeleteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.04/OrderExecutedMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_04_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.04.OrderExecutedMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.04.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.04.OrderExecutedMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.04.saleconditionflags" Iex.IexEquities.DeepPlus.IexTp.v1.04.OrderExecutedMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.04.OrderExecutedMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.04.OrderExecutedMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.orderidreference" Iex.IexEquities.DeepPlus.IexTp.v1.04.OrderExecutedMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.size" Iex.IexEquities.DeepPlus.IexTp.v1.04.OrderExecutedMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.price" Iex.IexEquities.DeepPlus.IexTp.v1.04.OrderExecutedMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.tradeid" Iex.IexEquities.DeepPlus.IexTp.v1.04.OrderExecutedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.04/OrderModifyMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_04_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.04.OrderModifyMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.04.OrderModifyMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderModifyMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.04.OrderModifyMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.04.modifyflags" Iex.IexEquities.DeepPlus.IexTp.v1.04.OrderModifyMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.04.OrderModifyMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.04.OrderModifyMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.orderidreference" Iex.IexEquities.DeepPlus.IexTp.v1.04.OrderModifyMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.size" Iex.IexEquities.DeepPlus.IexTp.v1.04.OrderModifyMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.price" Iex.IexEquities.DeepPlus.IexTp.v1.04.OrderModifyMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.04/RetailLiquidityIndicatorMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_04_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.04.RetailLiquidityIndicatorMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.04.RetailLiquidityIndicatorMessage.json.stderr \
  || { echo "--- tshark FAILED (RetailLiquidityIndicatorMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.04.RetailLiquidityIndicatorMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.04.retailliquidityindicator" Iex.IexEquities.DeepPlus.IexTp.v1.04.RetailLiquidityIndicatorMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.04.RetailLiquidityIndicatorMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.04.RetailLiquidityIndicatorMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.04/SecurityEventMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_04_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.04.SecurityEventMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.04.SecurityEventMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityEventMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.04.SecurityEventMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.04.securityevent" Iex.IexEquities.DeepPlus.IexTp.v1.04.SecurityEventMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.04.SecurityEventMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.04.SecurityEventMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.04/ShortSalePriceTestStatusMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_04_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.04.ShortSalePriceTestStatusMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.04.ShortSalePriceTestStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (ShortSalePriceTestStatusMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.04.ShortSalePriceTestStatusMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.04.shortsalepriceteststatus" Iex.IexEquities.DeepPlus.IexTp.v1.04.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.04.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.04.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.detail" Iex.IexEquities.DeepPlus.IexTp.v1.04.ShortSalePriceTestStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.04/SystemEventMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_04_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.04.SystemEventMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.04.SystemEventMessage.json.stderr \
  || { echo "--- tshark FAILED (SystemEventMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.04.SystemEventMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.04.systemevent" Iex.IexEquities.DeepPlus.IexTp.v1.04.SystemEventMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.04.SystemEventMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.04/TradeMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_04_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.04.TradeMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.04.TradeMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.04.TradeMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.04.saleconditionflags" Iex.IexEquities.DeepPlus.IexTp.v1.04.TradeMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.04.TradeMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.04.TradeMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.size" Iex.IexEquities.DeepPlus.IexTp.v1.04.TradeMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.price" Iex.IexEquities.DeepPlus.IexTp.v1.04.TradeMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.tradeid" Iex.IexEquities.DeepPlus.IexTp.v1.04.TradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.04/TradingStatusMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_04_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.04.TradingStatusMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.04.TradingStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingStatusMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.04.TradingStatusMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.04.tradingstatus" Iex.IexEquities.DeepPlus.IexTp.v1.04.TradingStatusMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.04.TradingStatusMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.04.TradingStatusMessage.json
grep "iex.iexequities.deepplus.iextp.v1.04.reason" Iex.IexEquities.DeepPlus.IexTp.v1.04.TradingStatusMessage.json
