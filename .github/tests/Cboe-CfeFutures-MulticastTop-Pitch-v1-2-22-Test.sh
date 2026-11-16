set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastTop.Pitch.v1.2.22/MarketSnapshotLongMessage.pcap" \
  -X "lua_script:Cboe/CfeFutures/MulticastTop/Cboe_CfeFutures_MulticastTop_Pitch_v1_2_22_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotLongMessage.json 2> Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotLongMessage.json.stderr \
  || { echo "--- tshark FAILED (MarketSnapshotLongMessage) ---"; cat Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotLongMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.timeoffset" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.symbol" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.unittimestamp" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.bidpricelong" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.bidquantitylong" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.askpricelong" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.askquantitylong" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.lasttradepricelong" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.lasttradesizelong" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.lasttradecondition" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.totalvolume" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.tradingstatus" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.reserved3" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotLongMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastTop.Pitch.v1.2.22/MarketSnapshotShortMessage.pcap" \
  -X "lua_script:Cboe/CfeFutures/MulticastTop/Cboe_CfeFutures_MulticastTop_Pitch_v1_2_22_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotShortMessage.json 2> Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotShortMessage.json.stderr \
  || { echo "--- tshark FAILED (MarketSnapshotShortMessage) ---"; cat Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotShortMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.timeoffset" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.symbol" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.unittimestamp" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.bidpriceshort" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.bidquantityshort" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.askpriceshort" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.askquantityshort" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.lasttradepriceshort" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.lasttradesizeshort" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.lasttradecondition" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.totalvolume" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.tradingstatus" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.reserved3" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.MarketSnapshotShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastTop.Pitch.v1.2.22/PriceLimitsMessage.pcap" \
  -X "lua_script:Cboe/CfeFutures/MulticastTop/Cboe_CfeFutures_MulticastTop_Pitch_v1_2_22_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.PriceLimitsMessage.json 2> Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.PriceLimitsMessage.json.stderr \
  || { echo "--- tshark FAILED (PriceLimitsMessage) ---"; cat Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.PriceLimitsMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.timeoffset" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.PriceLimitsMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.symbol" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.PriceLimitsMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.upperpricelimit" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.PriceLimitsMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.lowerpricelimit" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.PriceLimitsMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastTop.Pitch.v1.2.22/SettlementMessage.pcap" \
  -X "lua_script:Cboe/CfeFutures/MulticastTop/Cboe_CfeFutures_MulticastTop_Pitch_v1_2_22_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.SettlementMessage.json 2> Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.SettlementMessage.json.stderr \
  || { echo "--- tshark FAILED (SettlementMessage) ---"; cat Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.SettlementMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.timeoffset" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.SettlementMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.symbol" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.SettlementMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.tradedate" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.SettlementMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.settlementprice" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.SettlementMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.issue" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.SettlementMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastTop.Pitch.v1.2.22/SingleSideUpdateLongMessage.pcap" \
  -X "lua_script:Cboe/CfeFutures/MulticastTop/Cboe_CfeFutures_MulticastTop_Pitch_v1_2_22_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.SingleSideUpdateLongMessage.json 2> Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.SingleSideUpdateLongMessage.json.stderr \
  || { echo "--- tshark FAILED (SingleSideUpdateLongMessage) ---"; cat Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.SingleSideUpdateLongMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.timeoffset" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.SingleSideUpdateLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.symbol" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.SingleSideUpdateLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.side" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.SingleSideUpdateLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.pricelong" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.SingleSideUpdateLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.quantitylong" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.SingleSideUpdateLongMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastTop.Pitch.v1.2.22/SingleSideUpdateShortMessage.pcap" \
  -X "lua_script:Cboe/CfeFutures/MulticastTop/Cboe_CfeFutures_MulticastTop_Pitch_v1_2_22_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.SingleSideUpdateShortMessage.json 2> Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.SingleSideUpdateShortMessage.json.stderr \
  || { echo "--- tshark FAILED (SingleSideUpdateShortMessage) ---"; cat Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.SingleSideUpdateShortMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.timeoffset" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.SingleSideUpdateShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.symbol" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.SingleSideUpdateShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.side" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.SingleSideUpdateShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.priceshort" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.SingleSideUpdateShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.quantityshort" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.SingleSideUpdateShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastTop.Pitch.v1.2.22/TimeMessage.pcap" \
  -X "lua_script:Cboe/CfeFutures/MulticastTop/Cboe_CfeFutures_MulticastTop_Pitch_v1_2_22_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TimeMessage.json 2> Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TimeMessage.json.stderr \
  || { echo "--- tshark FAILED (TimeMessage) ---"; cat Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TimeMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.timereference" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TimeMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.epochtime" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TimeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastTop.Pitch.v1.2.22/TimeReferenceMessage.pcap" \
  -X "lua_script:Cboe/CfeFutures/MulticastTop/Cboe_CfeFutures_MulticastTop_Pitch_v1_2_22_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TimeReferenceMessage.json 2> Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TimeReferenceMessage.json.stderr \
  || { echo "--- tshark FAILED (TimeReferenceMessage) ---"; cat Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TimeReferenceMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.midnightreference" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TimeReferenceMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.timereference" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TimeReferenceMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.timeoffset" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TimeReferenceMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.tradedate" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TimeReferenceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastTop.Pitch.v1.2.22/TopTradeMessage.pcap" \
  -X "lua_script:Cboe/CfeFutures/MulticastTop/Cboe_CfeFutures_MulticastTop_Pitch_v1_2_22_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TopTradeMessage.json 2> Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TopTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (TopTradeMessage) ---"; cat Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TopTradeMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.timeoffset" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TopTradeMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.symbol" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TopTradeMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.quantitylong" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TopTradeMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.pricelong" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TopTradeMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.executionid" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TopTradeMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.totalvolume" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TopTradeMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.tradecondition" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TopTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastTop.Pitch.v1.2.22/TradingStatusMessage.pcap" \
  -X "lua_script:Cboe/CfeFutures/MulticastTop/Cboe_CfeFutures_MulticastTop_Pitch_v1_2_22_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TradingStatusMessage.json 2> Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TradingStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingStatusMessage) ---"; cat Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TradingStatusMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.timeoffset" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TradingStatusMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.symbol" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TradingStatusMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.reserved2" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TradingStatusMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.tradingstatus" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TradingStatusMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.reserved3" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TradingStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastTop.Pitch.v1.2.22/TwoSideUpdateLongMessage.pcap" \
  -X "lua_script:Cboe/CfeFutures/MulticastTop/Cboe_CfeFutures_MulticastTop_Pitch_v1_2_22_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TwoSideUpdateLongMessage.json 2> Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TwoSideUpdateLongMessage.json.stderr \
  || { echo "--- tshark FAILED (TwoSideUpdateLongMessage) ---"; cat Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TwoSideUpdateLongMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.timeoffset" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TwoSideUpdateLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.symbol" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TwoSideUpdateLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.bidpricelong" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TwoSideUpdateLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.bidquantitylong" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TwoSideUpdateLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.askpricelong" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TwoSideUpdateLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.askquantitylong" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TwoSideUpdateLongMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastTop.Pitch.v1.2.22/TwoSideUpdateShortMessage.pcap" \
  -X "lua_script:Cboe/CfeFutures/MulticastTop/Cboe_CfeFutures_MulticastTop_Pitch_v1_2_22_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TwoSideUpdateShortMessage.json 2> Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TwoSideUpdateShortMessage.json.stderr \
  || { echo "--- tshark FAILED (TwoSideUpdateShortMessage) ---"; cat Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TwoSideUpdateShortMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.timeoffset" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TwoSideUpdateShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.symbol" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TwoSideUpdateShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.bidpriceshort" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TwoSideUpdateShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.bidquantityshort" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TwoSideUpdateShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.askpriceshort" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TwoSideUpdateShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.2.22.askquantityshort" Cboe.CfeFutures.MulticastTop.Pitch.v1.2.22.TwoSideUpdateShortMessage.json
