set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Deep.IexTp.v1.06/AuctionInformationMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_06_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.06.AuctionInformationMessage.json 2> Iex.IexEquities.Deep.IexTp.v1.06.AuctionInformationMessage.json.stderr \
  || { echo "--- tshark FAILED (AuctionInformationMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.06.AuctionInformationMessage.json.stderr; exit 1; }

grep "iex.iexequities.deep.iextp.v1.06.auctiontype" Iex.IexEquities.Deep.IexTp.v1.06.AuctionInformationMessage.json
grep "iex.iexequities.deep.iextp.v1.06.timestamp" Iex.IexEquities.Deep.IexTp.v1.06.AuctionInformationMessage.json
grep "iex.iexequities.deep.iextp.v1.06.symbol" Iex.IexEquities.Deep.IexTp.v1.06.AuctionInformationMessage.json
grep "iex.iexequities.deep.iextp.v1.06.pairedshares" Iex.IexEquities.Deep.IexTp.v1.06.AuctionInformationMessage.json
grep "iex.iexequities.deep.iextp.v1.06.referenceprice" Iex.IexEquities.Deep.IexTp.v1.06.AuctionInformationMessage.json
grep "iex.iexequities.deep.iextp.v1.06.indicativeclearingprice" Iex.IexEquities.Deep.IexTp.v1.06.AuctionInformationMessage.json
grep "iex.iexequities.deep.iextp.v1.06.imbalanceshares" Iex.IexEquities.Deep.IexTp.v1.06.AuctionInformationMessage.json
grep "iex.iexequities.deep.iextp.v1.06.imbalanceside" Iex.IexEquities.Deep.IexTp.v1.06.AuctionInformationMessage.json
grep "iex.iexequities.deep.iextp.v1.06.extensionnumber" Iex.IexEquities.Deep.IexTp.v1.06.AuctionInformationMessage.json
grep "iex.iexequities.deep.iextp.v1.06.scheduledauctiontime" Iex.IexEquities.Deep.IexTp.v1.06.AuctionInformationMessage.json
grep "iex.iexequities.deep.iextp.v1.06.auctionbookclearingprice" Iex.IexEquities.Deep.IexTp.v1.06.AuctionInformationMessage.json
grep "iex.iexequities.deep.iextp.v1.06.collarreferenceprice" Iex.IexEquities.Deep.IexTp.v1.06.AuctionInformationMessage.json
grep "iex.iexequities.deep.iextp.v1.06.lowerauctioncollar" Iex.IexEquities.Deep.IexTp.v1.06.AuctionInformationMessage.json
grep "iex.iexequities.deep.iextp.v1.06.upperauctioncollar" Iex.IexEquities.Deep.IexTp.v1.06.AuctionInformationMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Deep.IexTp.v1.06/Heartbeat.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_06_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.06.Heartbeat.json 2> Iex.IexEquities.Deep.IexTp.v1.06.Heartbeat.json.stderr \
  || { echo "--- tshark FAILED (Heartbeat) ---"; cat Iex.IexEquities.Deep.IexTp.v1.06.Heartbeat.json.stderr; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Deep.IexTp.v1.06/OfficialPriceMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_06_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.06.OfficialPriceMessage.json 2> Iex.IexEquities.Deep.IexTp.v1.06.OfficialPriceMessage.json.stderr \
  || { echo "--- tshark FAILED (OfficialPriceMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.06.OfficialPriceMessage.json.stderr; exit 1; }

grep "iex.iexequities.deep.iextp.v1.06.pricetype" Iex.IexEquities.Deep.IexTp.v1.06.OfficialPriceMessage.json
grep "iex.iexequities.deep.iextp.v1.06.timestamp" Iex.IexEquities.Deep.IexTp.v1.06.OfficialPriceMessage.json
grep "iex.iexequities.deep.iextp.v1.06.symbol" Iex.IexEquities.Deep.IexTp.v1.06.OfficialPriceMessage.json
grep "iex.iexequities.deep.iextp.v1.06.officialprice" Iex.IexEquities.Deep.IexTp.v1.06.OfficialPriceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Deep.IexTp.v1.06/PriceLevelBuyUpdateMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_06_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelBuyUpdateMessage.json 2> Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelBuyUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (PriceLevelBuyUpdateMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelBuyUpdateMessage.json.stderr; exit 1; }

grep "iex.iexequities.deep.iextp.v1.06.eventflags" Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelBuyUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.06.timestamp" Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelBuyUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.06.symbol" Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelBuyUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.06.size" Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelBuyUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.06.price" Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelBuyUpdateMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Deep.IexTp.v1.06/PriceLevelSellUpdateMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_06_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelSellUpdateMessage.json 2> Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelSellUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (PriceLevelSellUpdateMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelSellUpdateMessage.json.stderr; exit 1; }

grep "iex.iexequities.deep.iextp.v1.06.eventflags" Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelSellUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.06.timestamp" Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelSellUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.06.symbol" Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelSellUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.06.size" Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelSellUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.06.price" Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelSellUpdateMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Deep.IexTp.v1.06/SecurityEventMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_06_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.06.SecurityEventMessage.json 2> Iex.IexEquities.Deep.IexTp.v1.06.SecurityEventMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityEventMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.06.SecurityEventMessage.json.stderr; exit 1; }

grep "iex.iexequities.deep.iextp.v1.06.securityevent" Iex.IexEquities.Deep.IexTp.v1.06.SecurityEventMessage.json
grep "iex.iexequities.deep.iextp.v1.06.timestamp" Iex.IexEquities.Deep.IexTp.v1.06.SecurityEventMessage.json
grep "iex.iexequities.deep.iextp.v1.06.symbol" Iex.IexEquities.Deep.IexTp.v1.06.SecurityEventMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Deep.IexTp.v1.06/ShortSalePriceTestStatusMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_06_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.06.ShortSalePriceTestStatusMessage.json 2> Iex.IexEquities.Deep.IexTp.v1.06.ShortSalePriceTestStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (ShortSalePriceTestStatusMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.06.ShortSalePriceTestStatusMessage.json.stderr; exit 1; }

grep "iex.iexequities.deep.iextp.v1.06.shortsalepriceteststatus" Iex.IexEquities.Deep.IexTp.v1.06.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.deep.iextp.v1.06.timestamp" Iex.IexEquities.Deep.IexTp.v1.06.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.deep.iextp.v1.06.symbol" Iex.IexEquities.Deep.IexTp.v1.06.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.deep.iextp.v1.06.detail" Iex.IexEquities.Deep.IexTp.v1.06.ShortSalePriceTestStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Deep.IexTp.v1.06/SystemEventMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_06_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.06.SystemEventMessage.json 2> Iex.IexEquities.Deep.IexTp.v1.06.SystemEventMessage.json.stderr \
  || { echo "--- tshark FAILED (SystemEventMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.06.SystemEventMessage.json.stderr; exit 1; }

grep "iex.iexequities.deep.iextp.v1.06.systemevent" Iex.IexEquities.Deep.IexTp.v1.06.SystemEventMessage.json
grep "iex.iexequities.deep.iextp.v1.06.timestamp" Iex.IexEquities.Deep.IexTp.v1.06.SystemEventMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Deep.IexTp.v1.06/TradeReportMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_06_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.06.TradeReportMessage.json 2> Iex.IexEquities.Deep.IexTp.v1.06.TradeReportMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeReportMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.06.TradeReportMessage.json.stderr; exit 1; }

grep "iex.iexequities.deep.iextp.v1.06.saleconditionflags" Iex.IexEquities.Deep.IexTp.v1.06.TradeReportMessage.json
grep "iex.iexequities.deep.iextp.v1.06.timestamp" Iex.IexEquities.Deep.IexTp.v1.06.TradeReportMessage.json
grep "iex.iexequities.deep.iextp.v1.06.symbol" Iex.IexEquities.Deep.IexTp.v1.06.TradeReportMessage.json
grep "iex.iexequities.deep.iextp.v1.06.size" Iex.IexEquities.Deep.IexTp.v1.06.TradeReportMessage.json
grep "iex.iexequities.deep.iextp.v1.06.price" Iex.IexEquities.Deep.IexTp.v1.06.TradeReportMessage.json
grep "iex.iexequities.deep.iextp.v1.06.tradeid" Iex.IexEquities.Deep.IexTp.v1.06.TradeReportMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Deep.IexTp.v1.06/TradingStatusMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_06_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.06.TradingStatusMessage.json 2> Iex.IexEquities.Deep.IexTp.v1.06.TradingStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingStatusMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.06.TradingStatusMessage.json.stderr; exit 1; }

grep "iex.iexequities.deep.iextp.v1.06.tradingstatus" Iex.IexEquities.Deep.IexTp.v1.06.TradingStatusMessage.json
grep "iex.iexequities.deep.iextp.v1.06.timestamp" Iex.IexEquities.Deep.IexTp.v1.06.TradingStatusMessage.json
grep "iex.iexequities.deep.iextp.v1.06.symbol" Iex.IexEquities.Deep.IexTp.v1.06.TradingStatusMessage.json
grep "iex.iexequities.deep.iextp.v1.06.reason" Iex.IexEquities.Deep.IexTp.v1.06.TradingStatusMessage.json
