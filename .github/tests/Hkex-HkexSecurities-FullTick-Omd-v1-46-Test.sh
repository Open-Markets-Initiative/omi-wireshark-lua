set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Hkex/HkexSecurities.FullTick.Omd.v1.46/AddOrderMessage.pcap" \
  -X "lua_script:Hkex/HkexSecurities/FullTick/Hkex_HkexSecurities_FullTick_Omd_v1_46_Dissector.lua" \
  -T json \
  > Hkex.HkexSecurities.FullTick.Omd.v1.46.AddOrderMessage.json 2> Hkex.HkexSecurities.FullTick.Omd.v1.46.AddOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderMessage) ---"; cat Hkex.HkexSecurities.FullTick.Omd.v1.46.AddOrderMessage.json.stderr; exit 1; }

grep "hkex.hkexsecurities.fulltick.omd.v1.46.securitycode" Hkex.HkexSecurities.FullTick.Omd.v1.46.AddOrderMessage.json
grep "hkex.hkexsecurities.fulltick.omd.v1.46.orderid" Hkex.HkexSecurities.FullTick.Omd.v1.46.AddOrderMessage.json
grep "hkex.hkexsecurities.fulltick.omd.v1.46.price" Hkex.HkexSecurities.FullTick.Omd.v1.46.AddOrderMessage.json
grep "hkex.hkexsecurities.fulltick.omd.v1.46.quantity" Hkex.HkexSecurities.FullTick.Omd.v1.46.AddOrderMessage.json
grep "hkex.hkexsecurities.fulltick.omd.v1.46.side" Hkex.HkexSecurities.FullTick.Omd.v1.46.AddOrderMessage.json
grep "hkex.hkexsecurities.fulltick.omd.v1.46.ordertype" Hkex.HkexSecurities.FullTick.Omd.v1.46.AddOrderMessage.json
grep "hkex.hkexsecurities.fulltick.omd.v1.46.orderbookposition" Hkex.HkexSecurities.FullTick.Omd.v1.46.AddOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Hkex/HkexSecurities.FullTick.Omd.v1.46/DeleteOrderMessage.pcap" \
  -X "lua_script:Hkex/HkexSecurities/FullTick/Hkex_HkexSecurities_FullTick_Omd_v1_46_Dissector.lua" \
  -T json \
  > Hkex.HkexSecurities.FullTick.Omd.v1.46.DeleteOrderMessage.json 2> Hkex.HkexSecurities.FullTick.Omd.v1.46.DeleteOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (DeleteOrderMessage) ---"; cat Hkex.HkexSecurities.FullTick.Omd.v1.46.DeleteOrderMessage.json.stderr; exit 1; }

grep "hkex.hkexsecurities.fulltick.omd.v1.46.securitycode" Hkex.HkexSecurities.FullTick.Omd.v1.46.DeleteOrderMessage.json
grep "hkex.hkexsecurities.fulltick.omd.v1.46.orderid" Hkex.HkexSecurities.FullTick.Omd.v1.46.DeleteOrderMessage.json
grep "hkex.hkexsecurities.fulltick.omd.v1.46.side" Hkex.HkexSecurities.FullTick.Omd.v1.46.DeleteOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Hkex/HkexSecurities.FullTick.Omd.v1.46/ModifyOrderMessage.pcap" \
  -X "lua_script:Hkex/HkexSecurities/FullTick/Hkex_HkexSecurities_FullTick_Omd_v1_46_Dissector.lua" \
  -T json \
  > Hkex.HkexSecurities.FullTick.Omd.v1.46.ModifyOrderMessage.json 2> Hkex.HkexSecurities.FullTick.Omd.v1.46.ModifyOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderMessage) ---"; cat Hkex.HkexSecurities.FullTick.Omd.v1.46.ModifyOrderMessage.json.stderr; exit 1; }

grep "hkex.hkexsecurities.fulltick.omd.v1.46.securitycode" Hkex.HkexSecurities.FullTick.Omd.v1.46.ModifyOrderMessage.json
grep "hkex.hkexsecurities.fulltick.omd.v1.46.orderid" Hkex.HkexSecurities.FullTick.Omd.v1.46.ModifyOrderMessage.json
grep "hkex.hkexsecurities.fulltick.omd.v1.46.quantity" Hkex.HkexSecurities.FullTick.Omd.v1.46.ModifyOrderMessage.json
grep "hkex.hkexsecurities.fulltick.omd.v1.46.side" Hkex.HkexSecurities.FullTick.Omd.v1.46.ModifyOrderMessage.json
grep "hkex.hkexsecurities.fulltick.omd.v1.46.orderbookposition" Hkex.HkexSecurities.FullTick.Omd.v1.46.ModifyOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Hkex/HkexSecurities.FullTick.Omd.v1.46/TradeMessage.pcap" \
  -X "lua_script:Hkex/HkexSecurities/FullTick/Hkex_HkexSecurities_FullTick_Omd_v1_46_Dissector.lua" \
  -T json \
  > Hkex.HkexSecurities.FullTick.Omd.v1.46.TradeMessage.json 2> Hkex.HkexSecurities.FullTick.Omd.v1.46.TradeMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeMessage) ---"; cat Hkex.HkexSecurities.FullTick.Omd.v1.46.TradeMessage.json.stderr; exit 1; }

grep "hkex.hkexsecurities.fulltick.omd.v1.46.securitycode" Hkex.HkexSecurities.FullTick.Omd.v1.46.TradeMessage.json
grep "hkex.hkexsecurities.fulltick.omd.v1.46.tradeid" Hkex.HkexSecurities.FullTick.Omd.v1.46.TradeMessage.json
grep "hkex.hkexsecurities.fulltick.omd.v1.46.price" Hkex.HkexSecurities.FullTick.Omd.v1.46.TradeMessage.json
grep "hkex.hkexsecurities.fulltick.omd.v1.46.quantity" Hkex.HkexSecurities.FullTick.Omd.v1.46.TradeMessage.json
grep "hkex.hkexsecurities.fulltick.omd.v1.46.trdtype" Hkex.HkexSecurities.FullTick.Omd.v1.46.TradeMessage.json
grep "hkex.hkexsecurities.fulltick.omd.v1.46.tradetime" Hkex.HkexSecurities.FullTick.Omd.v1.46.TradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Hkex/HkexSecurities.FullTick.Omd.v1.46/TradingSessionStatusMessage.pcap" \
  -X "lua_script:Hkex/HkexSecurities/FullTick/Hkex_HkexSecurities_FullTick_Omd_v1_46_Dissector.lua" \
  -T json \
  > Hkex.HkexSecurities.FullTick.Omd.v1.46.TradingSessionStatusMessage.json 2> Hkex.HkexSecurities.FullTick.Omd.v1.46.TradingSessionStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingSessionStatusMessage) ---"; cat Hkex.HkexSecurities.FullTick.Omd.v1.46.TradingSessionStatusMessage.json.stderr; exit 1; }

grep "hkex.hkexsecurities.fulltick.omd.v1.46.marketcode" Hkex.HkexSecurities.FullTick.Omd.v1.46.TradingSessionStatusMessage.json
grep "hkex.hkexsecurities.fulltick.omd.v1.46.tradingsessionsubid" Hkex.HkexSecurities.FullTick.Omd.v1.46.TradingSessionStatusMessage.json
grep "hkex.hkexsecurities.fulltick.omd.v1.46.tradingsesstatus" Hkex.HkexSecurities.FullTick.Omd.v1.46.TradingSessionStatusMessage.json
grep "hkex.hkexsecurities.fulltick.omd.v1.46.tradingsescontrolflag" Hkex.HkexSecurities.FullTick.Omd.v1.46.TradingSessionStatusMessage.json
grep "hkex.hkexsecurities.fulltick.omd.v1.46.startdatetime" Hkex.HkexSecurities.FullTick.Omd.v1.46.TradingSessionStatusMessage.json
grep "hkex.hkexsecurities.fulltick.omd.v1.46.enddatetime" Hkex.HkexSecurities.FullTick.Omd.v1.46.TradingSessionStatusMessage.json
