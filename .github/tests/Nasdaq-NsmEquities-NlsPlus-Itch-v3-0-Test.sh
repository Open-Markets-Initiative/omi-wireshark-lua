set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.NlsPlus.Itch.v3.0/LongFormTradeReportMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/NlsPlus/Nasdaq_NsmEquities_NlsPlus_Itch_v3_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.LongFormTradeReportMessage.json 2> Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.LongFormTradeReportMessage.json.stderr \
  || { echo "--- tshark FAILED (LongFormTradeReportMessage) ---"; cat Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.LongFormTradeReportMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.nlsplus.itch.v3.0.originatingmarketcenteridentifier" Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.LongFormTradeReportMessage.json
grep "nasdaq.nsmequities.nlsplus.itch.v3.0.issuesymbol" Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.LongFormTradeReportMessage.json
grep "nasdaq.nsmequities.nlsplus.itch.v3.0.securityclass" Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.LongFormTradeReportMessage.json
grep "nasdaq.nsmequities.nlsplus.itch.v3.0.tradecontrolnumber" Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.LongFormTradeReportMessage.json
grep "nasdaq.nsmequities.nlsplus.itch.v3.0.tradepricelong" Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.LongFormTradeReportMessage.json
grep "nasdaq.nsmequities.nlsplus.itch.v3.0.tradesize" Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.LongFormTradeReportMessage.json
grep "nasdaq.nsmequities.nlsplus.itch.v3.0.settlementtype" Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.LongFormTradeReportMessage.json
grep "nasdaq.nsmequities.nlsplus.itch.v3.0.tradethroughexemption" Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.LongFormTradeReportMessage.json
grep "nasdaq.nsmequities.nlsplus.itch.v3.0.extendedhoursorsoldcode" Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.LongFormTradeReportMessage.json
grep "nasdaq.nsmequities.nlsplus.itch.v3.0.specialsalecondition" Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.LongFormTradeReportMessage.json
grep "nasdaq.nsmequities.nlsplus.itch.v3.0.consolidatedvolume" Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.LongFormTradeReportMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.NlsPlus.Itch.v3.0/RegShoShortSalePriceTestRestrictedIndicatorMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/NlsPlus/Nasdaq_NsmEquities_NlsPlus_Itch_v3_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.RegShoShortSalePriceTestRestrictedIndicatorMessage.json 2> Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.RegShoShortSalePriceTestRestrictedIndicatorMessage.json.stderr \
  || { echo "--- tshark FAILED (RegShoShortSalePriceTestRestrictedIndicatorMessage) ---"; cat Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.RegShoShortSalePriceTestRestrictedIndicatorMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.nlsplus.itch.v3.0.issuesymbol" Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.RegShoShortSalePriceTestRestrictedIndicatorMessage.json
grep "nasdaq.nsmequities.nlsplus.itch.v3.0.regshoaction" Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.RegShoShortSalePriceTestRestrictedIndicatorMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.NlsPlus.Itch.v3.0/StockTradingActionMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/NlsPlus/Nasdaq_NsmEquities_NlsPlus_Itch_v3_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.StockTradingActionMessage.json 2> Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.StockTradingActionMessage.json.stderr \
  || { echo "--- tshark FAILED (StockTradingActionMessage) ---"; cat Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.StockTradingActionMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.nlsplus.itch.v3.0.reserved" Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.StockTradingActionMessage.json
grep "nasdaq.nsmequities.nlsplus.itch.v3.0.issuesymbol" Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.StockTradingActionMessage.json
grep "nasdaq.nsmequities.nlsplus.itch.v3.0.securityclass" Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.StockTradingActionMessage.json
grep "nasdaq.nsmequities.nlsplus.itch.v3.0.currenttradingstate" Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.StockTradingActionMessage.json
grep "nasdaq.nsmequities.nlsplus.itch.v3.0.reason" Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.StockTradingActionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.NlsPlus.Itch.v3.0/SystemEventMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/NlsPlus/Nasdaq_NsmEquities_NlsPlus_Itch_v3_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.SystemEventMessage.json 2> Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.SystemEventMessage.json.stderr \
  || { echo "--- tshark FAILED (SystemEventMessage) ---"; cat Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.SystemEventMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.nlsplus.itch.v3.0.eventcode" Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.SystemEventMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.NlsPlus.Itch.v3.0/TradeReportMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/NlsPlus/Nasdaq_NsmEquities_NlsPlus_Itch_v3_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.TradeReportMessage.json 2> Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.TradeReportMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeReportMessage) ---"; cat Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.TradeReportMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.nlsplus.itch.v3.0.originatingmarketcenteridentifier" Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.TradeReportMessage.json
grep "nasdaq.nsmequities.nlsplus.itch.v3.0.issuesymbol" Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.TradeReportMessage.json
grep "nasdaq.nsmequities.nlsplus.itch.v3.0.securityclass" Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.TradeReportMessage.json
grep "nasdaq.nsmequities.nlsplus.itch.v3.0.tradecontrolnumber" Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.TradeReportMessage.json
grep "nasdaq.nsmequities.nlsplus.itch.v3.0.tradeprice" Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.TradeReportMessage.json
grep "nasdaq.nsmequities.nlsplus.itch.v3.0.tradesize" Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.TradeReportMessage.json
grep "nasdaq.nsmequities.nlsplus.itch.v3.0.settlementtype" Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.TradeReportMessage.json
grep "nasdaq.nsmequities.nlsplus.itch.v3.0.tradethroughexemption" Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.TradeReportMessage.json
grep "nasdaq.nsmequities.nlsplus.itch.v3.0.extendedhoursorsoldcode" Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.TradeReportMessage.json
grep "nasdaq.nsmequities.nlsplus.itch.v3.0.specialsalecondition" Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.TradeReportMessage.json
grep "nasdaq.nsmequities.nlsplus.itch.v3.0.consolidatedvolume" Nasdaq.NsmEquities.NlsPlus.Itch.v3.0.TradeReportMessage.json
