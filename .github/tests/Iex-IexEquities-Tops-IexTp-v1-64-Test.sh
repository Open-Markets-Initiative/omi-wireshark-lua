set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Tops.IexTp.v1.64/AuctionInformationMessage.pcap" \
  -X "lua_script:Iex/IexEquities/Tops/Iex_IexEquities_Tops_IexTp_v1_64_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.64.AuctionInformationMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.64.AuctionInformationMessage.json.stderr \
  || { echo "--- tshark FAILED (AuctionInformationMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.64.AuctionInformationMessage.json.stderr; exit 1; }

grep "iex.iexequities.tops.iextp.v1.64.auctiontype" Iex.IexEquities.Tops.IexTp.v1.64.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.64.timestamp" Iex.IexEquities.Tops.IexTp.v1.64.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.64.symbol" Iex.IexEquities.Tops.IexTp.v1.64.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.64.pairedshares" Iex.IexEquities.Tops.IexTp.v1.64.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.64.referenceprice" Iex.IexEquities.Tops.IexTp.v1.64.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.64.indicativeclearingprice" Iex.IexEquities.Tops.IexTp.v1.64.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.64.imbalanceshares" Iex.IexEquities.Tops.IexTp.v1.64.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.64.imbalanceside" Iex.IexEquities.Tops.IexTp.v1.64.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.64.extensionnumber" Iex.IexEquities.Tops.IexTp.v1.64.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.64.scheduledauctiontime" Iex.IexEquities.Tops.IexTp.v1.64.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.64.auctionbookclearingprice" Iex.IexEquities.Tops.IexTp.v1.64.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.64.collarreferenceprice" Iex.IexEquities.Tops.IexTp.v1.64.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.64.lowerauctioncollar" Iex.IexEquities.Tops.IexTp.v1.64.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.64.upperauctioncollar" Iex.IexEquities.Tops.IexTp.v1.64.AuctionInformationMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Tops.IexTp.v1.64/OfficialPriceMessage.pcap" \
  -X "lua_script:Iex/IexEquities/Tops/Iex_IexEquities_Tops_IexTp_v1_64_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.64.OfficialPriceMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.64.OfficialPriceMessage.json.stderr \
  || { echo "--- tshark FAILED (OfficialPriceMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.64.OfficialPriceMessage.json.stderr; exit 1; }

grep "iex.iexequities.tops.iextp.v1.64.pricetype" Iex.IexEquities.Tops.IexTp.v1.64.OfficialPriceMessage.json
grep "iex.iexequities.tops.iextp.v1.64.timestamp" Iex.IexEquities.Tops.IexTp.v1.64.OfficialPriceMessage.json
grep "iex.iexequities.tops.iextp.v1.64.symbol" Iex.IexEquities.Tops.IexTp.v1.64.OfficialPriceMessage.json
grep "iex.iexequities.tops.iextp.v1.64.officialprice" Iex.IexEquities.Tops.IexTp.v1.64.OfficialPriceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Tops.IexTp.v1.64/OperationalHaltStatusMessage.pcap" \
  -X "lua_script:Iex/IexEquities/Tops/Iex_IexEquities_Tops_IexTp_v1_64_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.64.OperationalHaltStatusMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.64.OperationalHaltStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (OperationalHaltStatusMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.64.OperationalHaltStatusMessage.json.stderr; exit 1; }

grep "iex.iexequities.tops.iextp.v1.64.operationalhaltstatus" Iex.IexEquities.Tops.IexTp.v1.64.OperationalHaltStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.64.timestamp" Iex.IexEquities.Tops.IexTp.v1.64.OperationalHaltStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.64.symbol" Iex.IexEquities.Tops.IexTp.v1.64.OperationalHaltStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Tops.IexTp.v1.64/QuoteUpdateMessage.pcap" \
  -X "lua_script:Iex/IexEquities/Tops/Iex_IexEquities_Tops_IexTp_v1_64_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.64.QuoteUpdateMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.64.QuoteUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (QuoteUpdateMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.64.QuoteUpdateMessage.json.stderr; exit 1; }

grep "iex.iexequities.tops.iextp.v1.64.quoteupdateflags" Iex.IexEquities.Tops.IexTp.v1.64.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.64.timestamp" Iex.IexEquities.Tops.IexTp.v1.64.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.64.symbol" Iex.IexEquities.Tops.IexTp.v1.64.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.64.bidsize" Iex.IexEquities.Tops.IexTp.v1.64.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.64.bidprice" Iex.IexEquities.Tops.IexTp.v1.64.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.64.askprice" Iex.IexEquities.Tops.IexTp.v1.64.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.64.asksize" Iex.IexEquities.Tops.IexTp.v1.64.QuoteUpdateMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Tops.IexTp.v1.64/SecurityDirectoryMessage.pcap" \
  -X "lua_script:Iex/IexEquities/Tops/Iex_IexEquities_Tops_IexTp_v1_64_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.64.SecurityDirectoryMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.64.SecurityDirectoryMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityDirectoryMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.64.SecurityDirectoryMessage.json.stderr; exit 1; }

grep "iex.iexequities.tops.iextp.v1.64.securitydirectoryflags" Iex.IexEquities.Tops.IexTp.v1.64.SecurityDirectoryMessage.json
grep "iex.iexequities.tops.iextp.v1.64.timestamp" Iex.IexEquities.Tops.IexTp.v1.64.SecurityDirectoryMessage.json
grep "iex.iexequities.tops.iextp.v1.64.symbol" Iex.IexEquities.Tops.IexTp.v1.64.SecurityDirectoryMessage.json
grep "iex.iexequities.tops.iextp.v1.64.roundlotsize" Iex.IexEquities.Tops.IexTp.v1.64.SecurityDirectoryMessage.json
grep "iex.iexequities.tops.iextp.v1.64.adjustedpocprice" Iex.IexEquities.Tops.IexTp.v1.64.SecurityDirectoryMessage.json
grep "iex.iexequities.tops.iextp.v1.64.luldtier" Iex.IexEquities.Tops.IexTp.v1.64.SecurityDirectoryMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Tops.IexTp.v1.64/ShortSalePriceTestStatusMessage.pcap" \
  -X "lua_script:Iex/IexEquities/Tops/Iex_IexEquities_Tops_IexTp_v1_64_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.64.ShortSalePriceTestStatusMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.64.ShortSalePriceTestStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (ShortSalePriceTestStatusMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.64.ShortSalePriceTestStatusMessage.json.stderr; exit 1; }

grep "iex.iexequities.tops.iextp.v1.64.shortsalepriceteststatus" Iex.IexEquities.Tops.IexTp.v1.64.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.64.timestamp" Iex.IexEquities.Tops.IexTp.v1.64.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.64.symbol" Iex.IexEquities.Tops.IexTp.v1.64.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.64.detail" Iex.IexEquities.Tops.IexTp.v1.64.ShortSalePriceTestStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Tops.IexTp.v1.64/SystemEventMessage.pcap" \
  -X "lua_script:Iex/IexEquities/Tops/Iex_IexEquities_Tops_IexTp_v1_64_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.64.SystemEventMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.64.SystemEventMessage.json.stderr \
  || { echo "--- tshark FAILED (SystemEventMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.64.SystemEventMessage.json.stderr; exit 1; }

grep "iex.iexequities.tops.iextp.v1.64.systemevent" Iex.IexEquities.Tops.IexTp.v1.64.SystemEventMessage.json
grep "iex.iexequities.tops.iextp.v1.64.timestamp" Iex.IexEquities.Tops.IexTp.v1.64.SystemEventMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Tops.IexTp.v1.64/TradeReportMessage.pcap" \
  -X "lua_script:Iex/IexEquities/Tops/Iex_IexEquities_Tops_IexTp_v1_64_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.64.TradeReportMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.64.TradeReportMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeReportMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.64.TradeReportMessage.json.stderr; exit 1; }

grep "iex.iexequities.tops.iextp.v1.64.saleconditionflags" Iex.IexEquities.Tops.IexTp.v1.64.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.64.timestamp" Iex.IexEquities.Tops.IexTp.v1.64.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.64.symbol" Iex.IexEquities.Tops.IexTp.v1.64.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.64.size" Iex.IexEquities.Tops.IexTp.v1.64.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.64.price" Iex.IexEquities.Tops.IexTp.v1.64.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.64.tradeid" Iex.IexEquities.Tops.IexTp.v1.64.TradeReportMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Tops.IexTp.v1.64/TradingStatusMessage.pcap" \
  -X "lua_script:Iex/IexEquities/Tops/Iex_IexEquities_Tops_IexTp_v1_64_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.64.TradingStatusMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.64.TradingStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingStatusMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.64.TradingStatusMessage.json.stderr; exit 1; }

grep "iex.iexequities.tops.iextp.v1.64.tradingstatus" Iex.IexEquities.Tops.IexTp.v1.64.TradingStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.64.timestamp" Iex.IexEquities.Tops.IexTp.v1.64.TradingStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.64.symbol" Iex.IexEquities.Tops.IexTp.v1.64.TradingStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.64.reason" Iex.IexEquities.Tops.IexTp.v1.64.TradingStatusMessage.json
