set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Tops.IexTp.v1.66/AuctionInformationMessage.pcap" \
  -X "lua_script:Iex/IexEquities/Tops/Iex_IexEquities_Tops_IexTp_v1_66_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.66.AuctionInformationMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.66.AuctionInformationMessage.json.stderr \
  || { echo "--- tshark FAILED (AuctionInformationMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.66.AuctionInformationMessage.json.stderr; exit 1; }

grep "iex.iexequities.tops.iextp.v1.66.auctiontype" Iex.IexEquities.Tops.IexTp.v1.66.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.66.timestamp" Iex.IexEquities.Tops.IexTp.v1.66.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.66.symbol" Iex.IexEquities.Tops.IexTp.v1.66.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.66.pairedshares" Iex.IexEquities.Tops.IexTp.v1.66.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.66.referenceprice" Iex.IexEquities.Tops.IexTp.v1.66.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.66.indicativeclearingprice" Iex.IexEquities.Tops.IexTp.v1.66.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.66.imbalanceshares" Iex.IexEquities.Tops.IexTp.v1.66.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.66.imbalanceside" Iex.IexEquities.Tops.IexTp.v1.66.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.66.extensionnumber" Iex.IexEquities.Tops.IexTp.v1.66.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.66.scheduledauctiontime" Iex.IexEquities.Tops.IexTp.v1.66.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.66.auctionbookclearingprice" Iex.IexEquities.Tops.IexTp.v1.66.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.66.collarreferenceprice" Iex.IexEquities.Tops.IexTp.v1.66.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.66.lowerauctioncollar" Iex.IexEquities.Tops.IexTp.v1.66.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.66.upperauctioncollar" Iex.IexEquities.Tops.IexTp.v1.66.AuctionInformationMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Tops.IexTp.v1.66/QuoteUpdateMessage.pcap" \
  -X "lua_script:Iex/IexEquities/Tops/Iex_IexEquities_Tops_IexTp_v1_66_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.66.QuoteUpdateMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.66.QuoteUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (QuoteUpdateMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.66.QuoteUpdateMessage.json.stderr; exit 1; }

grep "iex.iexequities.tops.iextp.v1.66.quoteupdateflags" Iex.IexEquities.Tops.IexTp.v1.66.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.66.timestamp" Iex.IexEquities.Tops.IexTp.v1.66.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.66.symbol" Iex.IexEquities.Tops.IexTp.v1.66.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.66.bidsize" Iex.IexEquities.Tops.IexTp.v1.66.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.66.bidprice" Iex.IexEquities.Tops.IexTp.v1.66.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.66.askprice" Iex.IexEquities.Tops.IexTp.v1.66.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.66.asksize" Iex.IexEquities.Tops.IexTp.v1.66.QuoteUpdateMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Tops.IexTp.v1.66/RetailLiquidityIndicatorMessage.pcap" \
  -X "lua_script:Iex/IexEquities/Tops/Iex_IexEquities_Tops_IexTp_v1_66_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.66.RetailLiquidityIndicatorMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.66.RetailLiquidityIndicatorMessage.json.stderr \
  || { echo "--- tshark FAILED (RetailLiquidityIndicatorMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.66.RetailLiquidityIndicatorMessage.json.stderr; exit 1; }

grep "iex.iexequities.tops.iextp.v1.66.retailliquidityindicator" Iex.IexEquities.Tops.IexTp.v1.66.RetailLiquidityIndicatorMessage.json
grep "iex.iexequities.tops.iextp.v1.66.timestamp" Iex.IexEquities.Tops.IexTp.v1.66.RetailLiquidityIndicatorMessage.json
grep "iex.iexequities.tops.iextp.v1.66.symbol" Iex.IexEquities.Tops.IexTp.v1.66.RetailLiquidityIndicatorMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Tops.IexTp.v1.66/ShortSalePriceTestStatusMessage.pcap" \
  -X "lua_script:Iex/IexEquities/Tops/Iex_IexEquities_Tops_IexTp_v1_66_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.66.ShortSalePriceTestStatusMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.66.ShortSalePriceTestStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (ShortSalePriceTestStatusMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.66.ShortSalePriceTestStatusMessage.json.stderr; exit 1; }

grep "iex.iexequities.tops.iextp.v1.66.shortsalepriceteststatus" Iex.IexEquities.Tops.IexTp.v1.66.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.66.timestamp" Iex.IexEquities.Tops.IexTp.v1.66.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.66.symbol" Iex.IexEquities.Tops.IexTp.v1.66.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.66.detail" Iex.IexEquities.Tops.IexTp.v1.66.ShortSalePriceTestStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Tops.IexTp.v1.66/SystemEventMessage.pcap" \
  -X "lua_script:Iex/IexEquities/Tops/Iex_IexEquities_Tops_IexTp_v1_66_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.66.SystemEventMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.66.SystemEventMessage.json.stderr \
  || { echo "--- tshark FAILED (SystemEventMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.66.SystemEventMessage.json.stderr; exit 1; }

grep "iex.iexequities.tops.iextp.v1.66.systemevent" Iex.IexEquities.Tops.IexTp.v1.66.SystemEventMessage.json
grep "iex.iexequities.tops.iextp.v1.66.timestamp" Iex.IexEquities.Tops.IexTp.v1.66.SystemEventMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Tops.IexTp.v1.66/TradeReportMessage.pcap" \
  -X "lua_script:Iex/IexEquities/Tops/Iex_IexEquities_Tops_IexTp_v1_66_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.66.TradeReportMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.66.TradeReportMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeReportMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.66.TradeReportMessage.json.stderr; exit 1; }

grep "iex.iexequities.tops.iextp.v1.66.saleconditionflags" Iex.IexEquities.Tops.IexTp.v1.66.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.66.timestamp" Iex.IexEquities.Tops.IexTp.v1.66.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.66.symbol" Iex.IexEquities.Tops.IexTp.v1.66.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.66.size" Iex.IexEquities.Tops.IexTp.v1.66.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.66.price" Iex.IexEquities.Tops.IexTp.v1.66.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.66.tradeid" Iex.IexEquities.Tops.IexTp.v1.66.TradeReportMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Tops.IexTp.v1.66/TradingStatusMessage.pcap" \
  -X "lua_script:Iex/IexEquities/Tops/Iex_IexEquities_Tops_IexTp_v1_66_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.66.TradingStatusMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.66.TradingStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingStatusMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.66.TradingStatusMessage.json.stderr; exit 1; }

grep "iex.iexequities.tops.iextp.v1.66.tradingstatus" Iex.IexEquities.Tops.IexTp.v1.66.TradingStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.66.timestamp" Iex.IexEquities.Tops.IexTp.v1.66.TradingStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.66.symbol" Iex.IexEquities.Tops.IexTp.v1.66.TradingStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.66.reason" Iex.IexEquities.Tops.IexTp.v1.66.TradingStatusMessage.json
