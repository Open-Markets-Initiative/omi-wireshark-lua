set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastTop.Pitch.v1.0.15/EndOfDaySummaryMessage.pcap" \
  -X "lua_script:Cboe/CfeFutures/MulticastTop/Cboe_CfeFutures_MulticastTop_Pitch_v1_0_15_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.EndOfDaySummaryMessage.json 2> Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.EndOfDaySummaryMessage.json.stderr \
  || { echo "--- tshark FAILED (EndOfDaySummaryMessage) ---"; cat Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.EndOfDaySummaryMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.timeoffset" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.EndOfDaySummaryMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.symbol" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.EndOfDaySummaryMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.tradedate" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.EndOfDaySummaryMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.openinterest" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.EndOfDaySummaryMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.highprice" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.EndOfDaySummaryMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.lowprice" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.EndOfDaySummaryMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.openprice" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.EndOfDaySummaryMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.closeprice" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.EndOfDaySummaryMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.totalvolume" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.EndOfDaySummaryMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastTop.Pitch.v1.0.15/EndOfSessionMessage.pcap" \
  -X "lua_script:Cboe/CfeFutures/MulticastTop/Cboe_CfeFutures_MulticastTop_Pitch_v1_0_15_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.EndOfSessionMessage.json 2> Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.EndOfSessionMessage.json.stderr \
  || { echo "--- tshark FAILED (EndOfSessionMessage) ---"; cat Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.EndOfSessionMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.timeoffset" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.EndOfSessionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastTop.Pitch.v1.0.15/FuturesInstrumentDefinitionMessage.pcap" \
  -X "lua_script:Cboe/CfeFutures/MulticastTop/Cboe_CfeFutures_MulticastTop_Pitch_v1_0_15_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.FuturesInstrumentDefinitionMessage.json 2> Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.FuturesInstrumentDefinitionMessage.json.stderr \
  || { echo "--- tshark FAILED (FuturesInstrumentDefinitionMessage) ---"; cat Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.FuturesInstrumentDefinitionMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.timeoffset" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.FuturesInstrumentDefinitionMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.symbol" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.FuturesInstrumentDefinitionMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.unittimestamp" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.FuturesInstrumentDefinitionMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.reportsymbol" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.FuturesInstrumentDefinitionMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.futuresflags" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.FuturesInstrumentDefinitionMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.expirationdate" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.FuturesInstrumentDefinitionMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.contractsize" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.FuturesInstrumentDefinitionMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.listingstate" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.FuturesInstrumentDefinitionMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.priceincrement" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.FuturesInstrumentDefinitionMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.legcount" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.FuturesInstrumentDefinitionMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.legoffset" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.FuturesInstrumentDefinitionMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.varianceblockoffset" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.FuturesInstrumentDefinitionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastTop.Pitch.v1.0.15/MarketSnapshotLongMessage.pcap" \
  -X "lua_script:Cboe/CfeFutures/MulticastTop/Cboe_CfeFutures_MulticastTop_Pitch_v1_0_15_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotLongMessage.json 2> Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotLongMessage.json.stderr \
  || { echo "--- tshark FAILED (MarketSnapshotLongMessage) ---"; cat Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotLongMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.timeoffset" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.symbol" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.unittimestamp" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.bidpricelong" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.bidquantitylong" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.askpricelong" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.askquantitylong" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.lasttradepricelong" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.lasttradesizelong" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.lasttradecondition" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.totalvolume" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.tradingstatus" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.reserved3" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotLongMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastTop.Pitch.v1.0.15/MarketSnapshotShortMessage.pcap" \
  -X "lua_script:Cboe/CfeFutures/MulticastTop/Cboe_CfeFutures_MulticastTop_Pitch_v1_0_15_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotShortMessage.json 2> Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotShortMessage.json.stderr \
  || { echo "--- tshark FAILED (MarketSnapshotShortMessage) ---"; cat Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotShortMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.timeoffset" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.symbol" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.unittimestamp" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.bidpriceshort" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.bidquantityshort" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.askpriceshort" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.askquantityshort" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.lasttradepriceshort" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.lasttradesizeshort" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.lasttradecondition" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.totalvolume" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.tradingstatus" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.reserved3" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.MarketSnapshotShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastTop.Pitch.v1.0.15/PriceLimitsMessage.pcap" \
  -X "lua_script:Cboe/CfeFutures/MulticastTop/Cboe_CfeFutures_MulticastTop_Pitch_v1_0_15_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.PriceLimitsMessage.json 2> Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.PriceLimitsMessage.json.stderr \
  || { echo "--- tshark FAILED (PriceLimitsMessage) ---"; cat Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.PriceLimitsMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.timeoffset" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.PriceLimitsMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.symbol" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.PriceLimitsMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.upperpricelimit" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.PriceLimitsMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.lowerpricelimit" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.PriceLimitsMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastTop.Pitch.v1.0.15/SettlementMessage.pcap" \
  -X "lua_script:Cboe/CfeFutures/MulticastTop/Cboe_CfeFutures_MulticastTop_Pitch_v1_0_15_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.SettlementMessage.json 2> Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.SettlementMessage.json.stderr \
  || { echo "--- tshark FAILED (SettlementMessage) ---"; cat Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.SettlementMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.timeoffset" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.SettlementMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.symbol" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.SettlementMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.tradedate" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.SettlementMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.settlementprice" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.SettlementMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.issue" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.SettlementMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastTop.Pitch.v1.0.15/SingleSideUpdateLongMessage.pcap" \
  -X "lua_script:Cboe/CfeFutures/MulticastTop/Cboe_CfeFutures_MulticastTop_Pitch_v1_0_15_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.SingleSideUpdateLongMessage.json 2> Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.SingleSideUpdateLongMessage.json.stderr \
  || { echo "--- tshark FAILED (SingleSideUpdateLongMessage) ---"; cat Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.SingleSideUpdateLongMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.timeoffset" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.SingleSideUpdateLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.symbol" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.SingleSideUpdateLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.side" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.SingleSideUpdateLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.pricelong" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.SingleSideUpdateLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.quantitylong" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.SingleSideUpdateLongMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastTop.Pitch.v1.0.15/SingleSideUpdateShortMessage.pcap" \
  -X "lua_script:Cboe/CfeFutures/MulticastTop/Cboe_CfeFutures_MulticastTop_Pitch_v1_0_15_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.SingleSideUpdateShortMessage.json 2> Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.SingleSideUpdateShortMessage.json.stderr \
  || { echo "--- tshark FAILED (SingleSideUpdateShortMessage) ---"; cat Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.SingleSideUpdateShortMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.timeoffset" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.SingleSideUpdateShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.symbol" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.SingleSideUpdateShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.side" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.SingleSideUpdateShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.priceshort" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.SingleSideUpdateShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.quantityshort" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.SingleSideUpdateShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastTop.Pitch.v1.0.15/TimeMessage.pcap" \
  -X "lua_script:Cboe/CfeFutures/MulticastTop/Cboe_CfeFutures_MulticastTop_Pitch_v1_0_15_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TimeMessage.json 2> Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TimeMessage.json.stderr \
  || { echo "--- tshark FAILED (TimeMessage) ---"; cat Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TimeMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.timereference" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TimeMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.epochtime" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TimeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastTop.Pitch.v1.0.15/TimeReferenceMessage.pcap" \
  -X "lua_script:Cboe/CfeFutures/MulticastTop/Cboe_CfeFutures_MulticastTop_Pitch_v1_0_15_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TimeReferenceMessage.json 2> Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TimeReferenceMessage.json.stderr \
  || { echo "--- tshark FAILED (TimeReferenceMessage) ---"; cat Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TimeReferenceMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.midnightreference" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TimeReferenceMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.timereference" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TimeReferenceMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.timeoffset" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TimeReferenceMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.tradedate" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TimeReferenceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastTop.Pitch.v1.0.15/TopTradeMessage.pcap" \
  -X "lua_script:Cboe/CfeFutures/MulticastTop/Cboe_CfeFutures_MulticastTop_Pitch_v1_0_15_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TopTradeMessage.json 2> Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TopTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (TopTradeMessage) ---"; cat Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TopTradeMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.timeoffset" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TopTradeMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.symbol" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TopTradeMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.quantitylong" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TopTradeMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.pricelong" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TopTradeMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.executionid" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TopTradeMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.totalvolume" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TopTradeMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.tradecondition" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TopTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastTop.Pitch.v1.0.15/TradingStatusMessage.pcap" \
  -X "lua_script:Cboe/CfeFutures/MulticastTop/Cboe_CfeFutures_MulticastTop_Pitch_v1_0_15_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TradingStatusMessage.json 2> Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TradingStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingStatusMessage) ---"; cat Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TradingStatusMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.timeoffset" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TradingStatusMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.symbol" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TradingStatusMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.reserved2" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TradingStatusMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.tradingstatus" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TradingStatusMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.reserved3" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TradingStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastTop.Pitch.v1.0.15/TwoSideUpdateLongMessage.pcap" \
  -X "lua_script:Cboe/CfeFutures/MulticastTop/Cboe_CfeFutures_MulticastTop_Pitch_v1_0_15_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TwoSideUpdateLongMessage.json 2> Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TwoSideUpdateLongMessage.json.stderr \
  || { echo "--- tshark FAILED (TwoSideUpdateLongMessage) ---"; cat Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TwoSideUpdateLongMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.timeoffset" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TwoSideUpdateLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.symbol" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TwoSideUpdateLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.bidpricelong" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TwoSideUpdateLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.bidquantitylong" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TwoSideUpdateLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.askpricelong" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TwoSideUpdateLongMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.askquantitylong" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TwoSideUpdateLongMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastTop.Pitch.v1.0.15/TwoSideUpdateShortMessage.pcap" \
  -X "lua_script:Cboe/CfeFutures/MulticastTop/Cboe_CfeFutures_MulticastTop_Pitch_v1_0_15_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TwoSideUpdateShortMessage.json 2> Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TwoSideUpdateShortMessage.json.stderr \
  || { echo "--- tshark FAILED (TwoSideUpdateShortMessage) ---"; cat Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TwoSideUpdateShortMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.timeoffset" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TwoSideUpdateShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.symbol" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TwoSideUpdateShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.bidpriceshort" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TwoSideUpdateShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.bidquantityshort" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TwoSideUpdateShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.askpriceshort" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TwoSideUpdateShortMessage.json
grep "cboe.cfefutures.multicasttop.pitch.v1.0.15.askquantityshort" Cboe.CfeFutures.MulticastTop.Pitch.v1.0.15.TwoSideUpdateShortMessage.json
