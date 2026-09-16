set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Tops.IexTp.v1.56/QuoteUpdateMessage.pcap" \
  -X "lua_script:iex/IexEquities/Tops/Iex_IexEquities_Tops_IexTp_v1_56_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.56.QuoteUpdateMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.56.QuoteUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (QuoteUpdateMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.56.QuoteUpdateMessage.json.stderr; exit 1; }

grep "iex.iexequities.tops.iextp.v1.56.quoteupdateflags" Iex.IexEquities.Tops.IexTp.v1.56.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.56.timestamp" Iex.IexEquities.Tops.IexTp.v1.56.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.56.symbol" Iex.IexEquities.Tops.IexTp.v1.56.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.56.bidsize" Iex.IexEquities.Tops.IexTp.v1.56.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.56.bidprice" Iex.IexEquities.Tops.IexTp.v1.56.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.56.askprice" Iex.IexEquities.Tops.IexTp.v1.56.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.56.asksize" Iex.IexEquities.Tops.IexTp.v1.56.QuoteUpdateMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Tops.IexTp.v1.56/TradeReportMessage.pcap" \
  -X "lua_script:iex/IexEquities/Tops/Iex_IexEquities_Tops_IexTp_v1_56_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.56.TradeReportMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.56.TradeReportMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeReportMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.56.TradeReportMessage.json.stderr; exit 1; }

grep "iex.iexequities.tops.iextp.v1.56.saleconditionflags" Iex.IexEquities.Tops.IexTp.v1.56.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.56.timestamp" Iex.IexEquities.Tops.IexTp.v1.56.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.56.symbol" Iex.IexEquities.Tops.IexTp.v1.56.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.56.size" Iex.IexEquities.Tops.IexTp.v1.56.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.56.price" Iex.IexEquities.Tops.IexTp.v1.56.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.56.tradeid" Iex.IexEquities.Tops.IexTp.v1.56.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.56.reserved4" Iex.IexEquities.Tops.IexTp.v1.56.TradeReportMessage.json
