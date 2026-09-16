set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Deep.IexTp.v1.08/AuctionInformationMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_08_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.08.AuctionInformationMessage.json 2> Iex.IexEquities.Deep.IexTp.v1.08.AuctionInformationMessage.json.stderr \
  || { echo "--- tshark FAILED (AuctionInformationMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.08.AuctionInformationMessage.json.stderr; exit 1; }

grep "iex.iexequities.deep.iextp.v1.08.auctiontype" Iex.IexEquities.Deep.IexTp.v1.08.AuctionInformationMessage.json
grep "iex.iexequities.deep.iextp.v1.08.timestamp" Iex.IexEquities.Deep.IexTp.v1.08.AuctionInformationMessage.json
grep "iex.iexequities.deep.iextp.v1.08.symbol" Iex.IexEquities.Deep.IexTp.v1.08.AuctionInformationMessage.json
grep "iex.iexequities.deep.iextp.v1.08.pairedshares" Iex.IexEquities.Deep.IexTp.v1.08.AuctionInformationMessage.json
grep "iex.iexequities.deep.iextp.v1.08.referenceprice" Iex.IexEquities.Deep.IexTp.v1.08.AuctionInformationMessage.json
grep "iex.iexequities.deep.iextp.v1.08.indicativeclearingprice" Iex.IexEquities.Deep.IexTp.v1.08.AuctionInformationMessage.json
grep "iex.iexequities.deep.iextp.v1.08.imbalanceshares" Iex.IexEquities.Deep.IexTp.v1.08.AuctionInformationMessage.json
grep "iex.iexequities.deep.iextp.v1.08.imbalanceside" Iex.IexEquities.Deep.IexTp.v1.08.AuctionInformationMessage.json
grep "iex.iexequities.deep.iextp.v1.08.extensionnumber" Iex.IexEquities.Deep.IexTp.v1.08.AuctionInformationMessage.json
grep "iex.iexequities.deep.iextp.v1.08.scheduledauctiontime" Iex.IexEquities.Deep.IexTp.v1.08.AuctionInformationMessage.json
grep "iex.iexequities.deep.iextp.v1.08.auctionbookclearingprice" Iex.IexEquities.Deep.IexTp.v1.08.AuctionInformationMessage.json
grep "iex.iexequities.deep.iextp.v1.08.collarreferenceprice" Iex.IexEquities.Deep.IexTp.v1.08.AuctionInformationMessage.json
grep "iex.iexequities.deep.iextp.v1.08.lowerauctioncollar" Iex.IexEquities.Deep.IexTp.v1.08.AuctionInformationMessage.json
grep "iex.iexequities.deep.iextp.v1.08.upperauctioncollar" Iex.IexEquities.Deep.IexTp.v1.08.AuctionInformationMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Deep.IexTp.v1.08/OperationalHaltStatusMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_08_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.08.OperationalHaltStatusMessage.json 2> Iex.IexEquities.Deep.IexTp.v1.08.OperationalHaltStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (OperationalHaltStatusMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.08.OperationalHaltStatusMessage.json.stderr; exit 1; }

grep "iex.iexequities.deep.iextp.v1.08.operationalhaltstatus" Iex.IexEquities.Deep.IexTp.v1.08.OperationalHaltStatusMessage.json
grep "iex.iexequities.deep.iextp.v1.08.timestamp" Iex.IexEquities.Deep.IexTp.v1.08.OperationalHaltStatusMessage.json
grep "iex.iexequities.deep.iextp.v1.08.symbol" Iex.IexEquities.Deep.IexTp.v1.08.OperationalHaltStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Deep.IexTp.v1.08/PriceLevelBuyUpdateMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_08_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.08.PriceLevelBuyUpdateMessage.json 2> Iex.IexEquities.Deep.IexTp.v1.08.PriceLevelBuyUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (PriceLevelBuyUpdateMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.08.PriceLevelBuyUpdateMessage.json.stderr; exit 1; }

grep "iex.iexequities.deep.iextp.v1.08.eventflags" Iex.IexEquities.Deep.IexTp.v1.08.PriceLevelBuyUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.08.timestamp" Iex.IexEquities.Deep.IexTp.v1.08.PriceLevelBuyUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.08.symbol" Iex.IexEquities.Deep.IexTp.v1.08.PriceLevelBuyUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.08.size" Iex.IexEquities.Deep.IexTp.v1.08.PriceLevelBuyUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.08.price" Iex.IexEquities.Deep.IexTp.v1.08.PriceLevelBuyUpdateMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Deep.IexTp.v1.08/PriceLevelSellUpdateMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_08_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.08.PriceLevelSellUpdateMessage.json 2> Iex.IexEquities.Deep.IexTp.v1.08.PriceLevelSellUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (PriceLevelSellUpdateMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.08.PriceLevelSellUpdateMessage.json.stderr; exit 1; }

grep "iex.iexequities.deep.iextp.v1.08.eventflags" Iex.IexEquities.Deep.IexTp.v1.08.PriceLevelSellUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.08.timestamp" Iex.IexEquities.Deep.IexTp.v1.08.PriceLevelSellUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.08.symbol" Iex.IexEquities.Deep.IexTp.v1.08.PriceLevelSellUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.08.size" Iex.IexEquities.Deep.IexTp.v1.08.PriceLevelSellUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.08.price" Iex.IexEquities.Deep.IexTp.v1.08.PriceLevelSellUpdateMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Deep.IexTp.v1.08/RetailLiquidityIndicatorMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_08_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.08.RetailLiquidityIndicatorMessage.json 2> Iex.IexEquities.Deep.IexTp.v1.08.RetailLiquidityIndicatorMessage.json.stderr \
  || { echo "--- tshark FAILED (RetailLiquidityIndicatorMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.08.RetailLiquidityIndicatorMessage.json.stderr; exit 1; }

grep "iex.iexequities.deep.iextp.v1.08.retailliquidityindicator" Iex.IexEquities.Deep.IexTp.v1.08.RetailLiquidityIndicatorMessage.json
grep "iex.iexequities.deep.iextp.v1.08.timestamp" Iex.IexEquities.Deep.IexTp.v1.08.RetailLiquidityIndicatorMessage.json
grep "iex.iexequities.deep.iextp.v1.08.symbol" Iex.IexEquities.Deep.IexTp.v1.08.RetailLiquidityIndicatorMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Deep.IexTp.v1.08/SecurityEventMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_08_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.08.SecurityEventMessage.json 2> Iex.IexEquities.Deep.IexTp.v1.08.SecurityEventMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityEventMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.08.SecurityEventMessage.json.stderr; exit 1; }

grep "iex.iexequities.deep.iextp.v1.08.securityevent" Iex.IexEquities.Deep.IexTp.v1.08.SecurityEventMessage.json
grep "iex.iexequities.deep.iextp.v1.08.timestamp" Iex.IexEquities.Deep.IexTp.v1.08.SecurityEventMessage.json
grep "iex.iexequities.deep.iextp.v1.08.symbol" Iex.IexEquities.Deep.IexTp.v1.08.SecurityEventMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Deep.IexTp.v1.08/ShortSalePriceTestStatusMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_08_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.08.ShortSalePriceTestStatusMessage.json 2> Iex.IexEquities.Deep.IexTp.v1.08.ShortSalePriceTestStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (ShortSalePriceTestStatusMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.08.ShortSalePriceTestStatusMessage.json.stderr; exit 1; }

grep "iex.iexequities.deep.iextp.v1.08.shortsalepriceteststatus" Iex.IexEquities.Deep.IexTp.v1.08.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.deep.iextp.v1.08.timestamp" Iex.IexEquities.Deep.IexTp.v1.08.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.deep.iextp.v1.08.symbol" Iex.IexEquities.Deep.IexTp.v1.08.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.deep.iextp.v1.08.detail" Iex.IexEquities.Deep.IexTp.v1.08.ShortSalePriceTestStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Deep.IexTp.v1.08/SystemEventMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_08_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.08.SystemEventMessage.json 2> Iex.IexEquities.Deep.IexTp.v1.08.SystemEventMessage.json.stderr \
  || { echo "--- tshark FAILED (SystemEventMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.08.SystemEventMessage.json.stderr; exit 1; }

grep "iex.iexequities.deep.iextp.v1.08.systemevent" Iex.IexEquities.Deep.IexTp.v1.08.SystemEventMessage.json
grep "iex.iexequities.deep.iextp.v1.08.timestamp" Iex.IexEquities.Deep.IexTp.v1.08.SystemEventMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Deep.IexTp.v1.08/TradeReportMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_08_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.08.TradeReportMessage.json 2> Iex.IexEquities.Deep.IexTp.v1.08.TradeReportMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeReportMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.08.TradeReportMessage.json.stderr; exit 1; }

grep "iex.iexequities.deep.iextp.v1.08.saleconditionflags" Iex.IexEquities.Deep.IexTp.v1.08.TradeReportMessage.json
grep "iex.iexequities.deep.iextp.v1.08.timestamp" Iex.IexEquities.Deep.IexTp.v1.08.TradeReportMessage.json
grep "iex.iexequities.deep.iextp.v1.08.symbol" Iex.IexEquities.Deep.IexTp.v1.08.TradeReportMessage.json
grep "iex.iexequities.deep.iextp.v1.08.size" Iex.IexEquities.Deep.IexTp.v1.08.TradeReportMessage.json
grep "iex.iexequities.deep.iextp.v1.08.price" Iex.IexEquities.Deep.IexTp.v1.08.TradeReportMessage.json
grep "iex.iexequities.deep.iextp.v1.08.tradeid" Iex.IexEquities.Deep.IexTp.v1.08.TradeReportMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Deep.IexTp.v1.08/TradingStatusMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_08_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.08.TradingStatusMessage.json 2> Iex.IexEquities.Deep.IexTp.v1.08.TradingStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingStatusMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.08.TradingStatusMessage.json.stderr; exit 1; }

grep "iex.iexequities.deep.iextp.v1.08.tradingstatus" Iex.IexEquities.Deep.IexTp.v1.08.TradingStatusMessage.json
grep "iex.iexequities.deep.iextp.v1.08.timestamp" Iex.IexEquities.Deep.IexTp.v1.08.TradingStatusMessage.json
grep "iex.iexequities.deep.iextp.v1.08.symbol" Iex.IexEquities.Deep.IexTp.v1.08.TradingStatusMessage.json
grep "iex.iexequities.deep.iextp.v1.08.reason" Iex.IexEquities.Deep.IexTp.v1.08.TradingStatusMessage.json
