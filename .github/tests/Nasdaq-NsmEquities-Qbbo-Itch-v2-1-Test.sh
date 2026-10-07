set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.Qbbo.Itch.v2.1/BboQuotationMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/Qbbo/Nasdaq_NsmEquities_Qbbo_Itch_v2_1_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.Qbbo.Itch.v2.1.BboQuotationMessage.json 2> Nasdaq.NsmEquities.Qbbo.Itch.v2.1.BboQuotationMessage.json.stderr \
  || { echo "--- tshark FAILED (BboQuotationMessage) ---"; cat Nasdaq.NsmEquities.Qbbo.Itch.v2.1.BboQuotationMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.qbbo.itch.v2.1.trackingnumber" Nasdaq.NsmEquities.Qbbo.Itch.v2.1.BboQuotationMessage.json
grep "nasdaq.nsmequities.qbbo.itch.v2.1.timestamp" Nasdaq.NsmEquities.Qbbo.Itch.v2.1.BboQuotationMessage.json
grep "nasdaq.nsmequities.qbbo.itch.v2.1.stock" Nasdaq.NsmEquities.Qbbo.Itch.v2.1.BboQuotationMessage.json
grep "nasdaq.nsmequities.qbbo.itch.v2.1.securityclass" Nasdaq.NsmEquities.Qbbo.Itch.v2.1.BboQuotationMessage.json
grep "nasdaq.nsmequities.qbbo.itch.v2.1.bestbidprice" Nasdaq.NsmEquities.Qbbo.Itch.v2.1.BboQuotationMessage.json
grep "nasdaq.nsmequities.qbbo.itch.v2.1.bestbidsize" Nasdaq.NsmEquities.Qbbo.Itch.v2.1.BboQuotationMessage.json
grep "nasdaq.nsmequities.qbbo.itch.v2.1.bestofferprice" Nasdaq.NsmEquities.Qbbo.Itch.v2.1.BboQuotationMessage.json
grep "nasdaq.nsmequities.qbbo.itch.v2.1.bestoffersize" Nasdaq.NsmEquities.Qbbo.Itch.v2.1.BboQuotationMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.Qbbo.Itch.v2.1/RegShoRestrictionMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/Qbbo/Nasdaq_NsmEquities_Qbbo_Itch_v2_1_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.Qbbo.Itch.v2.1.RegShoRestrictionMessage.json 2> Nasdaq.NsmEquities.Qbbo.Itch.v2.1.RegShoRestrictionMessage.json.stderr \
  || { echo "--- tshark FAILED (RegShoRestrictionMessage) ---"; cat Nasdaq.NsmEquities.Qbbo.Itch.v2.1.RegShoRestrictionMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.qbbo.itch.v2.1.trackingnumber" Nasdaq.NsmEquities.Qbbo.Itch.v2.1.RegShoRestrictionMessage.json
grep "nasdaq.nsmequities.qbbo.itch.v2.1.timestamp" Nasdaq.NsmEquities.Qbbo.Itch.v2.1.RegShoRestrictionMessage.json
grep "nasdaq.nsmequities.qbbo.itch.v2.1.stock" Nasdaq.NsmEquities.Qbbo.Itch.v2.1.RegShoRestrictionMessage.json
grep "nasdaq.nsmequities.qbbo.itch.v2.1.regshoaction" Nasdaq.NsmEquities.Qbbo.Itch.v2.1.RegShoRestrictionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.Qbbo.Itch.v2.1/StockTradingActionMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/Qbbo/Nasdaq_NsmEquities_Qbbo_Itch_v2_1_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.Qbbo.Itch.v2.1.StockTradingActionMessage.json 2> Nasdaq.NsmEquities.Qbbo.Itch.v2.1.StockTradingActionMessage.json.stderr \
  || { echo "--- tshark FAILED (StockTradingActionMessage) ---"; cat Nasdaq.NsmEquities.Qbbo.Itch.v2.1.StockTradingActionMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.qbbo.itch.v2.1.trackingnumber" Nasdaq.NsmEquities.Qbbo.Itch.v2.1.StockTradingActionMessage.json
grep "nasdaq.nsmequities.qbbo.itch.v2.1.timestamp" Nasdaq.NsmEquities.Qbbo.Itch.v2.1.StockTradingActionMessage.json
grep "nasdaq.nsmequities.qbbo.itch.v2.1.stock" Nasdaq.NsmEquities.Qbbo.Itch.v2.1.StockTradingActionMessage.json
grep "nasdaq.nsmequities.qbbo.itch.v2.1.securityclass" Nasdaq.NsmEquities.Qbbo.Itch.v2.1.StockTradingActionMessage.json
grep "nasdaq.nsmequities.qbbo.itch.v2.1.currenttradingstate" Nasdaq.NsmEquities.Qbbo.Itch.v2.1.StockTradingActionMessage.json
grep "nasdaq.nsmequities.qbbo.itch.v2.1.reason" Nasdaq.NsmEquities.Qbbo.Itch.v2.1.StockTradingActionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.Qbbo.Itch.v2.1/SystemEventMessage.pcap" \
  -X "lua_script:Nasdaq/NsmEquities/Qbbo/Nasdaq_NsmEquities_Qbbo_Itch_v2_1_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.Qbbo.Itch.v2.1.SystemEventMessage.json 2> Nasdaq.NsmEquities.Qbbo.Itch.v2.1.SystemEventMessage.json.stderr \
  || { echo "--- tshark FAILED (SystemEventMessage) ---"; cat Nasdaq.NsmEquities.Qbbo.Itch.v2.1.SystemEventMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.qbbo.itch.v2.1.trackingnumber" Nasdaq.NsmEquities.Qbbo.Itch.v2.1.SystemEventMessage.json
grep "nasdaq.nsmequities.qbbo.itch.v2.1.timestamp" Nasdaq.NsmEquities.Qbbo.Itch.v2.1.SystemEventMessage.json
grep "nasdaq.nsmequities.qbbo.itch.v2.1.eventcode" Nasdaq.NsmEquities.Qbbo.Itch.v2.1.SystemEventMessage.json
