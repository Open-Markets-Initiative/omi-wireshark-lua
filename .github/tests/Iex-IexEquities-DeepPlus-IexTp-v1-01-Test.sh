set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.01/AddOrderMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_01_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.01.AddOrderMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.01.AddOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.01.AddOrderMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.01.side" Iex.IexEquities.DeepPlus.IexTp.v1.01.AddOrderMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.01.AddOrderMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.01.AddOrderMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.orderid" Iex.IexEquities.DeepPlus.IexTp.v1.01.AddOrderMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.size" Iex.IexEquities.DeepPlus.IexTp.v1.01.AddOrderMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.price" Iex.IexEquities.DeepPlus.IexTp.v1.01.AddOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.01/OperationalHaltStatusMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_01_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.01.OperationalHaltStatusMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.01.OperationalHaltStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (OperationalHaltStatusMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.01.OperationalHaltStatusMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.01.operationalhaltstatus" Iex.IexEquities.DeepPlus.IexTp.v1.01.OperationalHaltStatusMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.01.OperationalHaltStatusMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.01.OperationalHaltStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.01/OrderDeleteMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_01_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.01.OrderDeleteMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.01.OrderDeleteMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderDeleteMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.01.OrderDeleteMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.01.reserved1" Iex.IexEquities.DeepPlus.IexTp.v1.01.OrderDeleteMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.01.OrderDeleteMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.01.OrderDeleteMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.orderidreference" Iex.IexEquities.DeepPlus.IexTp.v1.01.OrderDeleteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.01/OrderExecutedMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_01_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.01.OrderExecutedMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.01.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.01.OrderExecutedMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.01.saleconditionflags" Iex.IexEquities.DeepPlus.IexTp.v1.01.OrderExecutedMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.01.OrderExecutedMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.01.OrderExecutedMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.orderidreference" Iex.IexEquities.DeepPlus.IexTp.v1.01.OrderExecutedMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.size" Iex.IexEquities.DeepPlus.IexTp.v1.01.OrderExecutedMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.price" Iex.IexEquities.DeepPlus.IexTp.v1.01.OrderExecutedMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.tradeid" Iex.IexEquities.DeepPlus.IexTp.v1.01.OrderExecutedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.01/OrderModifyMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_01_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.01.OrderModifyMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.01.OrderModifyMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderModifyMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.01.OrderModifyMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.01.modifyflags" Iex.IexEquities.DeepPlus.IexTp.v1.01.OrderModifyMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.01.OrderModifyMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.01.OrderModifyMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.orderidreference" Iex.IexEquities.DeepPlus.IexTp.v1.01.OrderModifyMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.size" Iex.IexEquities.DeepPlus.IexTp.v1.01.OrderModifyMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.price" Iex.IexEquities.DeepPlus.IexTp.v1.01.OrderModifyMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.01/RetailLiquidityIndicatorMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_01_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.01.RetailLiquidityIndicatorMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.01.RetailLiquidityIndicatorMessage.json.stderr \
  || { echo "--- tshark FAILED (RetailLiquidityIndicatorMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.01.RetailLiquidityIndicatorMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.01.retailliquidityindicator" Iex.IexEquities.DeepPlus.IexTp.v1.01.RetailLiquidityIndicatorMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.01.RetailLiquidityIndicatorMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.01.RetailLiquidityIndicatorMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.01/SecurityDirectoryMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_01_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.01.SecurityDirectoryMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.01.SecurityDirectoryMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityDirectoryMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.01.SecurityDirectoryMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.01.securitydirectoryflags" Iex.IexEquities.DeepPlus.IexTp.v1.01.SecurityDirectoryMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.01.SecurityDirectoryMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.01.SecurityDirectoryMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.roundlotsize" Iex.IexEquities.DeepPlus.IexTp.v1.01.SecurityDirectoryMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.adjustedpocprice" Iex.IexEquities.DeepPlus.IexTp.v1.01.SecurityDirectoryMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.luldtier" Iex.IexEquities.DeepPlus.IexTp.v1.01.SecurityDirectoryMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.01/SecurityEventMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_01_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.01.SecurityEventMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.01.SecurityEventMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityEventMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.01.SecurityEventMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.01.securityevent" Iex.IexEquities.DeepPlus.IexTp.v1.01.SecurityEventMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.01.SecurityEventMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.01.SecurityEventMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.01/ShortSalePriceTestStatusMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_01_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.01.ShortSalePriceTestStatusMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.01.ShortSalePriceTestStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (ShortSalePriceTestStatusMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.01.ShortSalePriceTestStatusMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.01.shortsalepriceteststatus" Iex.IexEquities.DeepPlus.IexTp.v1.01.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.01.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.01.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.detail" Iex.IexEquities.DeepPlus.IexTp.v1.01.ShortSalePriceTestStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.01/SystemEventMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_01_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.01.SystemEventMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.01.SystemEventMessage.json.stderr \
  || { echo "--- tshark FAILED (SystemEventMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.01.SystemEventMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.01.systemevent" Iex.IexEquities.DeepPlus.IexTp.v1.01.SystemEventMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.01.SystemEventMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.01/TradeBreakMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_01_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.01.TradeBreakMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.01.TradeBreakMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeBreakMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.01.TradeBreakMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.01.saleconditionflags" Iex.IexEquities.DeepPlus.IexTp.v1.01.TradeBreakMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.01.TradeBreakMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.01.TradeBreakMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.size" Iex.IexEquities.DeepPlus.IexTp.v1.01.TradeBreakMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.price" Iex.IexEquities.DeepPlus.IexTp.v1.01.TradeBreakMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.tradeid" Iex.IexEquities.DeepPlus.IexTp.v1.01.TradeBreakMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.01/TradeMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_01_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.01.TradeMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.01.TradeMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.01.TradeMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.01.saleconditionflags" Iex.IexEquities.DeepPlus.IexTp.v1.01.TradeMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.01.TradeMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.01.TradeMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.size" Iex.IexEquities.DeepPlus.IexTp.v1.01.TradeMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.price" Iex.IexEquities.DeepPlus.IexTp.v1.01.TradeMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.tradeid" Iex.IexEquities.DeepPlus.IexTp.v1.01.TradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.01/TradingStatusMessage.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_01_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.01.TradingStatusMessage.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.01.TradingStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingStatusMessage) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.01.TradingStatusMessage.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.01.tradingstatus" Iex.IexEquities.DeepPlus.IexTp.v1.01.TradingStatusMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.timestamp" Iex.IexEquities.DeepPlus.IexTp.v1.01.TradingStatusMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.symbol" Iex.IexEquities.DeepPlus.IexTp.v1.01.TradingStatusMessage.json
grep "iex.iexequities.deepplus.iextp.v1.01.reason" Iex.IexEquities.DeepPlus.IexTp.v1.01.TradingStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.DeepPlus.IexTp.v1.01/MultipleMessages.pcap" \
  -X "lua_script:Iex/IexEquities/DeepPlus/Iex_IexEquities_DeepPlus_IexTp_v1_01_Dissector.lua" \
  -T json \
  > Iex.IexEquities.DeepPlus.IexTp.v1.01.Multiplemessages.json 2> Iex.IexEquities.DeepPlus.IexTp.v1.01.Multiplemessages.json.stderr \
  || { echo "--- tshark FAILED (MultipleMessages) ---"; cat Iex.IexEquities.DeepPlus.IexTp.v1.01.Multiplemessages.json.stderr; exit 1; }

grep "iex.iexequities.deepplus.iextp.v1.01." Iex.IexEquities.DeepPlus.IexTp.v1.01.Multiplemessages.json

[ "$(grep -c 'iex.iexequities.deepplus.iextp.v1.01.' Iex.IexEquities.DeepPlus.IexTp.v1.01.Multiplemessages.json)" -gt 1 ] || { echo "--- only one message decoded (MultipleMessages) ---"; exit 1; }
