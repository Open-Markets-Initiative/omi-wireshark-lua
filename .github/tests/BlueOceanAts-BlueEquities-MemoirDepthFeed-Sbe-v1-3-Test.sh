set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/BlueOceanAts/BlueEquities.MemoirDepthFeed.Sbe.v1.3/Heartbeat.pcap" \
  -X "lua_script:BlueOceanAts/MemoirDepthFeed/BlueOceanAts_BlueEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  > BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.Heartbeat.json 2> BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.Heartbeat.json.stderr \
  || { echo "--- tshark FAILED (Heartbeat) ---"; cat BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.Heartbeat.json.stderr; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/BlueOceanAts/BlueEquities.MemoirDepthFeed.Sbe.v1.3/InstrumentDirectoryMessage.pcap" \
  -X "lua_script:BlueOceanAts/MemoirDepthFeed/BlueOceanAts_BlueEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  > BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.InstrumentDirectoryMessage.json 2> BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.InstrumentDirectoryMessage.json.stderr \
  || { echo "--- tshark FAILED (InstrumentDirectoryMessage) ---"; cat BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.InstrumentDirectoryMessage.json.stderr; exit 1; }

grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.timestamp" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.InstrumentDirectoryMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.securityid" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.InstrumentDirectoryMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.symbol" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.InstrumentDirectoryMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.symbolsfx" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.InstrumentDirectoryMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.roundlot" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.InstrumentDirectoryMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.reserved" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.InstrumentDirectoryMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.istestsymbol" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.InstrumentDirectoryMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.mpv" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.InstrumentDirectoryMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/BlueOceanAts/BlueEquities.MemoirDepthFeed.Sbe.v1.3/OrderAddedMessage.pcap" \
  -X "lua_script:BlueOceanAts/MemoirDepthFeed/BlueOceanAts_BlueEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  > BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json 2> BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderAddedMessage) ---"; cat BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json.stderr; exit 1; }

grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.timestamp" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.securityid" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.orderid" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.side" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.quantity" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.price" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/BlueOceanAts/BlueEquities.MemoirDepthFeed.Sbe.v1.3/OrderDeletedMessage.pcap" \
  -X "lua_script:BlueOceanAts/MemoirDepthFeed/BlueOceanAts_BlueEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  > BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json 2> BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderDeletedMessage) ---"; cat BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json.stderr; exit 1; }

grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.timestamp" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.securityid" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.orderid" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/BlueOceanAts/BlueEquities.MemoirDepthFeed.Sbe.v1.3/OrderExecutedMessage.pcap" \
  -X "lua_script:BlueOceanAts/MemoirDepthFeed/BlueOceanAts_BlueEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  > BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json 2> BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json.stderr; exit 1; }

grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.timestamp" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.securityid" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.orderid" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.tradeid" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.quantity" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.price" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/BlueOceanAts/BlueEquities.MemoirDepthFeed.Sbe.v1.3/OrderReducedMessage.pcap" \
  -X "lua_script:BlueOceanAts/MemoirDepthFeed/BlueOceanAts_BlueEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  > BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json 2> BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderReducedMessage) ---"; cat BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json.stderr; exit 1; }

grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.timestamp" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.securityid" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.orderid" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.quantity" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/BlueOceanAts/BlueEquities.MemoirDepthFeed.Sbe.v1.3/SecurityTradingStatusMessage.pcap" \
  -X "lua_script:BlueOceanAts/MemoirDepthFeed/BlueOceanAts_BlueEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  > BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json 2> BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityTradingStatusMessage) ---"; cat BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json.stderr; exit 1; }

grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.timestamp" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.securityid" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.securitytradingstatus" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.securitytradingstatusreason" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/BlueOceanAts/BlueEquities.MemoirDepthFeed.Sbe.v1.3/TradingSessionStatusMessage.pcap" \
  -X "lua_script:BlueOceanAts/MemoirDepthFeed/BlueOceanAts_BlueEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  > BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json 2> BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingSessionStatusMessage) ---"; cat BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json.stderr; exit 1; }

grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.timestamp" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.tradingsession" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/BlueOceanAts/BlueEquities.MemoirDepthFeed.Sbe.v1.3/MultipleMessages.pcap" \
  -X "lua_script:BlueOceanAts/MemoirDepthFeed/BlueOceanAts_BlueEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  > BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.Multiplemessages.json 2> BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.Multiplemessages.json.stderr \
  || { echo "--- tshark FAILED (MultipleMessages) ---"; cat BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.Multiplemessages.json.stderr; exit 1; }

grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3." BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.Multiplemessages.json

[ "$(grep -c 'blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.' BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.Multiplemessages.json)" -gt 1 ] || { echo "--- only one message decoded (MultipleMessages) ---"; exit 1; }
