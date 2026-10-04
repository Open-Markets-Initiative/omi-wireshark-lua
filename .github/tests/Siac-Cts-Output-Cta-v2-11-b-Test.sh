set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cts.Output.Cta.v2.11.b/ConsolidatedStartOfDaySummaryMessage.pcap" \
  -X "lua_script:Siac/Cts/Output/Siac_Cts_Output_Cta_v2_11_b_Dissector.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v2.11.b.ConsolidatedStartOfDaySummaryMessage.json 2> Siac.Cts.Output.Cta.v2.11.b.ConsolidatedStartOfDaySummaryMessage.json.stderr \
  || { echo "--- tshark FAILED (ConsolidatedStartOfDaySummaryMessage) ---"; cat Siac.Cts.Output.Cta.v2.11.b.ConsolidatedStartOfDaySummaryMessage.json.stderr; exit 1; }

grep "siac.cts.output.cta.v2.11.b.participantid" Siac.Cts.Output.Cta.v2.11.b.ConsolidatedStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.seconds" Siac.Cts.Output.Cta.v2.11.b.ConsolidatedStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.nanoseconds" Siac.Cts.Output.Cta.v2.11.b.ConsolidatedStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.messageid" Siac.Cts.Output.Cta.v2.11.b.ConsolidatedStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.transactionid" Siac.Cts.Output.Cta.v2.11.b.ConsolidatedStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.participantreferencenumber" Siac.Cts.Output.Cta.v2.11.b.ConsolidatedStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.securitysymbol" Siac.Cts.Output.Cta.v2.11.b.ConsolidatedStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.instrumenttype" Siac.Cts.Output.Cta.v2.11.b.ConsolidatedStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.summaryparticipantid" Siac.Cts.Output.Cta.v2.11.b.ConsolidatedStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.previousclosepricedate" Siac.Cts.Output.Cta.v2.11.b.ConsolidatedStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.previouscloseprice" Siac.Cts.Output.Cta.v2.11.b.ConsolidatedStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.shortsalerestrictionindicator" Siac.Cts.Output.Cta.v2.11.b.ConsolidatedStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.primarylistingmarketparticipantid" Siac.Cts.Output.Cta.v2.11.b.ConsolidatedStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.financialstatusindicator" Siac.Cts.Output.Cta.v2.11.b.ConsolidatedStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.numberofparticipants" Siac.Cts.Output.Cta.v2.11.b.ConsolidatedStartOfDaySummaryMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cts.Output.Cta.v2.11.b/EndOfDayMessage.pcap" \
  -X "lua_script:Siac/Cts/Output/Siac_Cts_Output_Cta_v2_11_b_Dissector.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v2.11.b.EndOfDayMessage.json 2> Siac.Cts.Output.Cta.v2.11.b.EndOfDayMessage.json.stderr \
  || { echo "--- tshark FAILED (EndOfDayMessage) ---"; cat Siac.Cts.Output.Cta.v2.11.b.EndOfDayMessage.json.stderr; exit 1; }

grep "siac.cts.output.cta.v2.11.b.participantid" Siac.Cts.Output.Cta.v2.11.b.EndOfDayMessage.json
grep "siac.cts.output.cta.v2.11.b.seconds" Siac.Cts.Output.Cta.v2.11.b.EndOfDayMessage.json
grep "siac.cts.output.cta.v2.11.b.nanoseconds" Siac.Cts.Output.Cta.v2.11.b.EndOfDayMessage.json
grep "siac.cts.output.cta.v2.11.b.messageid" Siac.Cts.Output.Cta.v2.11.b.EndOfDayMessage.json
grep "siac.cts.output.cta.v2.11.b.transactionid" Siac.Cts.Output.Cta.v2.11.b.EndOfDayMessage.json
grep "siac.cts.output.cta.v2.11.b.participantreferencenumber" Siac.Cts.Output.Cta.v2.11.b.EndOfDayMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cts.Output.Cta.v2.11.b/EndOfEndOfDaySummaryMessage.pcap" \
  -X "lua_script:Siac/Cts/Output/Siac_Cts_Output_Cta_v2_11_b_Dissector.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v2.11.b.EndOfEndOfDaySummaryMessage.json 2> Siac.Cts.Output.Cta.v2.11.b.EndOfEndOfDaySummaryMessage.json.stderr \
  || { echo "--- tshark FAILED (EndOfEndOfDaySummaryMessage) ---"; cat Siac.Cts.Output.Cta.v2.11.b.EndOfEndOfDaySummaryMessage.json.stderr; exit 1; }

grep "siac.cts.output.cta.v2.11.b.participantid" Siac.Cts.Output.Cta.v2.11.b.EndOfEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.seconds" Siac.Cts.Output.Cta.v2.11.b.EndOfEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.nanoseconds" Siac.Cts.Output.Cta.v2.11.b.EndOfEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.messageid" Siac.Cts.Output.Cta.v2.11.b.EndOfEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.transactionid" Siac.Cts.Output.Cta.v2.11.b.EndOfEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.participantreferencenumber" Siac.Cts.Output.Cta.v2.11.b.EndOfEndOfDaySummaryMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cts.Output.Cta.v2.11.b/EndOfStartOfDaySummaryMessage.pcap" \
  -X "lua_script:Siac/Cts/Output/Siac_Cts_Output_Cta_v2_11_b_Dissector.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v2.11.b.EndOfStartOfDaySummaryMessage.json 2> Siac.Cts.Output.Cta.v2.11.b.EndOfStartOfDaySummaryMessage.json.stderr \
  || { echo "--- tshark FAILED (EndOfStartOfDaySummaryMessage) ---"; cat Siac.Cts.Output.Cta.v2.11.b.EndOfStartOfDaySummaryMessage.json.stderr; exit 1; }

grep "siac.cts.output.cta.v2.11.b.participantid" Siac.Cts.Output.Cta.v2.11.b.EndOfStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.seconds" Siac.Cts.Output.Cta.v2.11.b.EndOfStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.nanoseconds" Siac.Cts.Output.Cta.v2.11.b.EndOfStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.messageid" Siac.Cts.Output.Cta.v2.11.b.EndOfStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.transactionid" Siac.Cts.Output.Cta.v2.11.b.EndOfStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.participantreferencenumber" Siac.Cts.Output.Cta.v2.11.b.EndOfStartOfDaySummaryMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cts.Output.Cta.v2.11.b/FractionalApproximateAdjustedVolumeMarketCenterMessage.pcap" \
  -X "lua_script:Siac/Cts/Output/Siac_Cts_Output_Cta_v2_11_b_Dissector.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v2.11.b.FractionalApproximateAdjustedVolumeMarketCenterMessage.json 2> Siac.Cts.Output.Cta.v2.11.b.FractionalApproximateAdjustedVolumeMarketCenterMessage.json.stderr \
  || { echo "--- tshark FAILED (FractionalApproximateAdjustedVolumeMarketCenterMessage) ---"; cat Siac.Cts.Output.Cta.v2.11.b.FractionalApproximateAdjustedVolumeMarketCenterMessage.json.stderr; exit 1; }

grep "siac.cts.output.cta.v2.11.b.participantid" Siac.Cts.Output.Cta.v2.11.b.FractionalApproximateAdjustedVolumeMarketCenterMessage.json
grep "siac.cts.output.cta.v2.11.b.seconds" Siac.Cts.Output.Cta.v2.11.b.FractionalApproximateAdjustedVolumeMarketCenterMessage.json
grep "siac.cts.output.cta.v2.11.b.nanoseconds" Siac.Cts.Output.Cta.v2.11.b.FractionalApproximateAdjustedVolumeMarketCenterMessage.json
grep "siac.cts.output.cta.v2.11.b.messageid" Siac.Cts.Output.Cta.v2.11.b.FractionalApproximateAdjustedVolumeMarketCenterMessage.json
grep "siac.cts.output.cta.v2.11.b.transactionid" Siac.Cts.Output.Cta.v2.11.b.FractionalApproximateAdjustedVolumeMarketCenterMessage.json
grep "siac.cts.output.cta.v2.11.b.participantreferencenumber" Siac.Cts.Output.Cta.v2.11.b.FractionalApproximateAdjustedVolumeMarketCenterMessage.json
grep "siac.cts.output.cta.v2.11.b.numberofparticipants" Siac.Cts.Output.Cta.v2.11.b.FractionalApproximateAdjustedVolumeMarketCenterMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cts.Output.Cta.v2.11.b/FractionalConsolidatedEndOfDaySummaryMessage.pcap" \
  -X "lua_script:Siac/Cts/Output/Siac_Cts_Output_Cta_v2_11_b_Dissector.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v2.11.b.FractionalConsolidatedEndOfDaySummaryMessage.json 2> Siac.Cts.Output.Cta.v2.11.b.FractionalConsolidatedEndOfDaySummaryMessage.json.stderr \
  || { echo "--- tshark FAILED (FractionalConsolidatedEndOfDaySummaryMessage) ---"; cat Siac.Cts.Output.Cta.v2.11.b.FractionalConsolidatedEndOfDaySummaryMessage.json.stderr; exit 1; }

grep "siac.cts.output.cta.v2.11.b.participantid" Siac.Cts.Output.Cta.v2.11.b.FractionalConsolidatedEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.seconds" Siac.Cts.Output.Cta.v2.11.b.FractionalConsolidatedEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.nanoseconds" Siac.Cts.Output.Cta.v2.11.b.FractionalConsolidatedEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.messageid" Siac.Cts.Output.Cta.v2.11.b.FractionalConsolidatedEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.transactionid" Siac.Cts.Output.Cta.v2.11.b.FractionalConsolidatedEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.participantreferencenumber" Siac.Cts.Output.Cta.v2.11.b.FractionalConsolidatedEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.securitysymbol" Siac.Cts.Output.Cta.v2.11.b.FractionalConsolidatedEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.instrumenttype" Siac.Cts.Output.Cta.v2.11.b.FractionalConsolidatedEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.lastparticipantid" Siac.Cts.Output.Cta.v2.11.b.FractionalConsolidatedEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.previousclosepricedate" Siac.Cts.Output.Cta.v2.11.b.FractionalConsolidatedEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.lastprice" Siac.Cts.Output.Cta.v2.11.b.FractionalConsolidatedEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.highprice" Siac.Cts.Output.Cta.v2.11.b.FractionalConsolidatedEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.lowprice" Siac.Cts.Output.Cta.v2.11.b.FractionalConsolidatedEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.fractionaltotalvolume" Siac.Cts.Output.Cta.v2.11.b.FractionalConsolidatedEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.shortsalerestrictionindicator" Siac.Cts.Output.Cta.v2.11.b.FractionalConsolidatedEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.primarylistingmarketparticipantid" Siac.Cts.Output.Cta.v2.11.b.FractionalConsolidatedEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.financialstatusindicator" Siac.Cts.Output.Cta.v2.11.b.FractionalConsolidatedEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.numberofparticipants" Siac.Cts.Output.Cta.v2.11.b.FractionalConsolidatedEndOfDaySummaryMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cts.Output.Cta.v2.11.b/FractionalLongTradeMessage.pcap" \
  -X "lua_script:Siac/Cts/Output/Siac_Cts_Output_Cta_v2_11_b_Dissector.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v2.11.b.FractionalLongTradeMessage.json 2> Siac.Cts.Output.Cta.v2.11.b.FractionalLongTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (FractionalLongTradeMessage) ---"; cat Siac.Cts.Output.Cta.v2.11.b.FractionalLongTradeMessage.json.stderr; exit 1; }

grep "siac.cts.output.cta.v2.11.b.participantid" Siac.Cts.Output.Cta.v2.11.b.FractionalLongTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.seconds" Siac.Cts.Output.Cta.v2.11.b.FractionalLongTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.nanoseconds" Siac.Cts.Output.Cta.v2.11.b.FractionalLongTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.messageid" Siac.Cts.Output.Cta.v2.11.b.FractionalLongTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.transactionid" Siac.Cts.Output.Cta.v2.11.b.FractionalLongTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.participantreferencenumber" Siac.Cts.Output.Cta.v2.11.b.FractionalLongTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.securitysymbol" Siac.Cts.Output.Cta.v2.11.b.FractionalLongTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.instrumenttype" Siac.Cts.Output.Cta.v2.11.b.FractionalLongTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.category1" Siac.Cts.Output.Cta.v2.11.b.FractionalLongTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.category2" Siac.Cts.Output.Cta.v2.11.b.FractionalLongTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.category3" Siac.Cts.Output.Cta.v2.11.b.FractionalLongTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.category4" Siac.Cts.Output.Cta.v2.11.b.FractionalLongTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.tradeprice" Siac.Cts.Output.Cta.v2.11.b.FractionalLongTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.fractionaltradevolume" Siac.Cts.Output.Cta.v2.11.b.FractionalLongTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.sellerssaledays" Siac.Cts.Output.Cta.v2.11.b.FractionalLongTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.stopstockindicator" Siac.Cts.Output.Cta.v2.11.b.FractionalLongTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.tradethroughexemptindicator" Siac.Cts.Output.Cta.v2.11.b.FractionalLongTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.tradereportingfacilityid" Siac.Cts.Output.Cta.v2.11.b.FractionalLongTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.seconds" Siac.Cts.Output.Cta.v2.11.b.FractionalLongTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.nanoseconds" Siac.Cts.Output.Cta.v2.11.b.FractionalLongTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.shortsalerestrictionindicator" Siac.Cts.Output.Cta.v2.11.b.FractionalLongTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.primarylistingmarketparticipantid" Siac.Cts.Output.Cta.v2.11.b.FractionalLongTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.financialstatusindicator" Siac.Cts.Output.Cta.v2.11.b.FractionalLongTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.heldtradeindicator" Siac.Cts.Output.Cta.v2.11.b.FractionalLongTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.consolidatedhighlowlastindicator" Siac.Cts.Output.Cta.v2.11.b.FractionalLongTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.participantopenhighlowlastindicator" Siac.Cts.Output.Cta.v2.11.b.FractionalLongTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cts.Output.Cta.v2.11.b/FractionalParticipantEndOfDaySummaryMessage.pcap" \
  -X "lua_script:Siac/Cts/Output/Siac_Cts_Output_Cta_v2_11_b_Dissector.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v2.11.b.FractionalParticipantEndOfDaySummaryMessage.json 2> Siac.Cts.Output.Cta.v2.11.b.FractionalParticipantEndOfDaySummaryMessage.json.stderr \
  || { echo "--- tshark FAILED (FractionalParticipantEndOfDaySummaryMessage) ---"; cat Siac.Cts.Output.Cta.v2.11.b.FractionalParticipantEndOfDaySummaryMessage.json.stderr; exit 1; }

grep "siac.cts.output.cta.v2.11.b.participantid" Siac.Cts.Output.Cta.v2.11.b.FractionalParticipantEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.seconds" Siac.Cts.Output.Cta.v2.11.b.FractionalParticipantEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.nanoseconds" Siac.Cts.Output.Cta.v2.11.b.FractionalParticipantEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.messageid" Siac.Cts.Output.Cta.v2.11.b.FractionalParticipantEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.transactionid" Siac.Cts.Output.Cta.v2.11.b.FractionalParticipantEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.participantreferencenumber" Siac.Cts.Output.Cta.v2.11.b.FractionalParticipantEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.securitysymbol" Siac.Cts.Output.Cta.v2.11.b.FractionalParticipantEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.instrumenttype" Siac.Cts.Output.Cta.v2.11.b.FractionalParticipantEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.summaryparticipantid" Siac.Cts.Output.Cta.v2.11.b.FractionalParticipantEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.previousclosepricedate" Siac.Cts.Output.Cta.v2.11.b.FractionalParticipantEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.lastprice" Siac.Cts.Output.Cta.v2.11.b.FractionalParticipantEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.highprice" Siac.Cts.Output.Cta.v2.11.b.FractionalParticipantEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.lowprice" Siac.Cts.Output.Cta.v2.11.b.FractionalParticipantEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.openprice" Siac.Cts.Output.Cta.v2.11.b.FractionalParticipantEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.fractionaltotalvolume" Siac.Cts.Output.Cta.v2.11.b.FractionalParticipantEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.tick" Siac.Cts.Output.Cta.v2.11.b.FractionalParticipantEndOfDaySummaryMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cts.Output.Cta.v2.11.b/FractionalPriorDayTradeCancelErrorMessage.pcap" \
  -X "lua_script:Siac/Cts/Output/Siac_Cts_Output_Cta_v2_11_b_Dissector.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeCancelErrorMessage.json 2> Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeCancelErrorMessage.json.stderr \
  || { echo "--- tshark FAILED (FractionalPriorDayTradeCancelErrorMessage) ---"; cat Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeCancelErrorMessage.json.stderr; exit 1; }

grep "siac.cts.output.cta.v2.11.b.participantid" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.seconds" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.nanoseconds" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.messageid" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.transactionid" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.participantreferencenumber" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.securitysymbol" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.instrumenttype" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.category1" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.category2" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.category3" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.category4" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.tradeprice" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.fractionaltradevolume" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.sellerssaledays" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.stopstockindicator" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.tradethroughexemptindicator" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.shortsalerestrictionindicator" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.tradereportingfacilityid" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.seconds" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.nanoseconds" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.cancelerroraction" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeCancelErrorMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cts.Output.Cta.v2.11.b/FractionalPriorDayTradeMessage.pcap" \
  -X "lua_script:Siac/Cts/Output/Siac_Cts_Output_Cta_v2_11_b_Dissector.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeMessage.json 2> Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (FractionalPriorDayTradeMessage) ---"; cat Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeMessage.json.stderr; exit 1; }

grep "siac.cts.output.cta.v2.11.b.participantid" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.seconds" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.nanoseconds" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.messageid" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.transactionid" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.participantreferencenumber" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.securitysymbol" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.instrumenttype" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.category1" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.category2" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.category3" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.category4" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.tradeprice" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.fractionaltradevolume" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.sellerssaledays" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.stopstockindicator" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.tradethroughexemptindicator" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.shortsalerestrictionindicator" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.tradereportingfacilityid" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.seconds" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeMessage.json
grep "siac.cts.output.cta.v2.11.b.nanoseconds" Siac.Cts.Output.Cta.v2.11.b.FractionalPriorDayTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cts.Output.Cta.v2.11.b/FractionalTradeCancelErrorMessage.pcap" \
  -X "lua_script:Siac/Cts/Output/Siac_Cts_Output_Cta_v2_11_b_Dissector.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json 2> Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json.stderr \
  || { echo "--- tshark FAILED (FractionalTradeCancelErrorMessage) ---"; cat Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json.stderr; exit 1; }

grep "siac.cts.output.cta.v2.11.b.participantid" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.seconds" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.nanoseconds" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.messageid" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.transactionid" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.participantreferencenumber" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.securitysymbol" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.instrumenttype" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.category1" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.category2" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.category3" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.category4" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.tradeprice" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.fractionaltradevolume" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.sellerssaledays" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.stopstockindicator" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.tradethroughexemptindicator" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.tradereportingfacilityid" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.originalparticipantreferencenumber" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.seconds" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.nanoseconds" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.cancelerroraction" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.shortsalerestrictionindicator" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.primarylistingmarketparticipantid" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.financialstatusindicator" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.consolidatedpreviousclosepricedate" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.consolidatedlastparticipantid" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.consolidatedlastprice" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.consolidatedhighprice" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.consolidatedlowprice" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.consolidatedfractionaltotalvolume" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.consolidatedtick" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.participantpreviousclosepricedate" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.participantlastprice" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.participanthighprice" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.participantlowprice" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.participantopenprice" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.participantfractionaltotalvolume" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
grep "siac.cts.output.cta.v2.11.b.participanttick" Siac.Cts.Output.Cta.v2.11.b.FractionalTradeCancelErrorMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cts.Output.Cta.v2.11.b/LineIntegrityMessage.pcap" \
  -X "lua_script:Siac/Cts/Output/Siac_Cts_Output_Cta_v2_11_b_Dissector.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v2.11.b.LineIntegrityMessage.json 2> Siac.Cts.Output.Cta.v2.11.b.LineIntegrityMessage.json.stderr \
  || { echo "--- tshark FAILED (LineIntegrityMessage) ---"; cat Siac.Cts.Output.Cta.v2.11.b.LineIntegrityMessage.json.stderr; exit 1; }

grep "siac.cts.output.cta.v2.11.b.participantid" Siac.Cts.Output.Cta.v2.11.b.LineIntegrityMessage.json
grep "siac.cts.output.cta.v2.11.b.seconds" Siac.Cts.Output.Cta.v2.11.b.LineIntegrityMessage.json
grep "siac.cts.output.cta.v2.11.b.nanoseconds" Siac.Cts.Output.Cta.v2.11.b.LineIntegrityMessage.json
grep "siac.cts.output.cta.v2.11.b.messageid" Siac.Cts.Output.Cta.v2.11.b.LineIntegrityMessage.json
grep "siac.cts.output.cta.v2.11.b.transactionid" Siac.Cts.Output.Cta.v2.11.b.LineIntegrityMessage.json
grep "siac.cts.output.cta.v2.11.b.participantreferencenumber" Siac.Cts.Output.Cta.v2.11.b.LineIntegrityMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cts.Output.Cta.v2.11.b/MarketWideCircuitBreakerDeclineLevelStatusMessage.pcap" \
  -X "lua_script:Siac/Cts/Output/Siac_Cts_Output_Cta_v2_11_b_Dissector.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v2.11.b.MarketWideCircuitBreakerDeclineLevelStatusMessage.json 2> Siac.Cts.Output.Cta.v2.11.b.MarketWideCircuitBreakerDeclineLevelStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (MarketWideCircuitBreakerDeclineLevelStatusMessage) ---"; cat Siac.Cts.Output.Cta.v2.11.b.MarketWideCircuitBreakerDeclineLevelStatusMessage.json.stderr; exit 1; }

grep "siac.cts.output.cta.v2.11.b.participantid" Siac.Cts.Output.Cta.v2.11.b.MarketWideCircuitBreakerDeclineLevelStatusMessage.json
grep "siac.cts.output.cta.v2.11.b.seconds" Siac.Cts.Output.Cta.v2.11.b.MarketWideCircuitBreakerDeclineLevelStatusMessage.json
grep "siac.cts.output.cta.v2.11.b.nanoseconds" Siac.Cts.Output.Cta.v2.11.b.MarketWideCircuitBreakerDeclineLevelStatusMessage.json
grep "siac.cts.output.cta.v2.11.b.messageid" Siac.Cts.Output.Cta.v2.11.b.MarketWideCircuitBreakerDeclineLevelStatusMessage.json
grep "siac.cts.output.cta.v2.11.b.transactionid" Siac.Cts.Output.Cta.v2.11.b.MarketWideCircuitBreakerDeclineLevelStatusMessage.json
grep "siac.cts.output.cta.v2.11.b.participantreferencenumber" Siac.Cts.Output.Cta.v2.11.b.MarketWideCircuitBreakerDeclineLevelStatusMessage.json
grep "siac.cts.output.cta.v2.11.b.mwcblevel1" Siac.Cts.Output.Cta.v2.11.b.MarketWideCircuitBreakerDeclineLevelStatusMessage.json
grep "siac.cts.output.cta.v2.11.b.mwcblevel2" Siac.Cts.Output.Cta.v2.11.b.MarketWideCircuitBreakerDeclineLevelStatusMessage.json
grep "siac.cts.output.cta.v2.11.b.mwcblevel3" Siac.Cts.Output.Cta.v2.11.b.MarketWideCircuitBreakerDeclineLevelStatusMessage.json
grep "siac.cts.output.cta.v2.11.b.reserved" Siac.Cts.Output.Cta.v2.11.b.MarketWideCircuitBreakerDeclineLevelStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cts.Output.Cta.v2.11.b/ParticipantStartOfDaySummaryMessage.pcap" \
  -X "lua_script:Siac/Cts/Output/Siac_Cts_Output_Cta_v2_11_b_Dissector.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v2.11.b.ParticipantStartOfDaySummaryMessage.json 2> Siac.Cts.Output.Cta.v2.11.b.ParticipantStartOfDaySummaryMessage.json.stderr \
  || { echo "--- tshark FAILED (ParticipantStartOfDaySummaryMessage) ---"; cat Siac.Cts.Output.Cta.v2.11.b.ParticipantStartOfDaySummaryMessage.json.stderr; exit 1; }

grep "siac.cts.output.cta.v2.11.b.participantid" Siac.Cts.Output.Cta.v2.11.b.ParticipantStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.seconds" Siac.Cts.Output.Cta.v2.11.b.ParticipantStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.nanoseconds" Siac.Cts.Output.Cta.v2.11.b.ParticipantStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.messageid" Siac.Cts.Output.Cta.v2.11.b.ParticipantStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.transactionid" Siac.Cts.Output.Cta.v2.11.b.ParticipantStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.participantreferencenumber" Siac.Cts.Output.Cta.v2.11.b.ParticipantStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.securitysymbol" Siac.Cts.Output.Cta.v2.11.b.ParticipantStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.instrumenttype" Siac.Cts.Output.Cta.v2.11.b.ParticipantStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.summaryparticipantid" Siac.Cts.Output.Cta.v2.11.b.ParticipantStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.previousclosepricedate" Siac.Cts.Output.Cta.v2.11.b.ParticipantStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.previouscloseprice" Siac.Cts.Output.Cta.v2.11.b.ParticipantStartOfDaySummaryMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cts.Output.Cta.v2.11.b/StartOfDayMessage.pcap" \
  -X "lua_script:Siac/Cts/Output/Siac_Cts_Output_Cta_v2_11_b_Dissector.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v2.11.b.StartOfDayMessage.json 2> Siac.Cts.Output.Cta.v2.11.b.StartOfDayMessage.json.stderr \
  || { echo "--- tshark FAILED (StartOfDayMessage) ---"; cat Siac.Cts.Output.Cta.v2.11.b.StartOfDayMessage.json.stderr; exit 1; }

grep "siac.cts.output.cta.v2.11.b.participantid" Siac.Cts.Output.Cta.v2.11.b.StartOfDayMessage.json
grep "siac.cts.output.cta.v2.11.b.seconds" Siac.Cts.Output.Cta.v2.11.b.StartOfDayMessage.json
grep "siac.cts.output.cta.v2.11.b.nanoseconds" Siac.Cts.Output.Cta.v2.11.b.StartOfDayMessage.json
grep "siac.cts.output.cta.v2.11.b.messageid" Siac.Cts.Output.Cta.v2.11.b.StartOfDayMessage.json
grep "siac.cts.output.cta.v2.11.b.transactionid" Siac.Cts.Output.Cta.v2.11.b.StartOfDayMessage.json
grep "siac.cts.output.cta.v2.11.b.participantreferencenumber" Siac.Cts.Output.Cta.v2.11.b.StartOfDayMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cts.Output.Cta.v2.11.b/StartOfEndOfDaySummaryMessage.pcap" \
  -X "lua_script:Siac/Cts/Output/Siac_Cts_Output_Cta_v2_11_b_Dissector.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v2.11.b.StartOfEndOfDaySummaryMessage.json 2> Siac.Cts.Output.Cta.v2.11.b.StartOfEndOfDaySummaryMessage.json.stderr \
  || { echo "--- tshark FAILED (StartOfEndOfDaySummaryMessage) ---"; cat Siac.Cts.Output.Cta.v2.11.b.StartOfEndOfDaySummaryMessage.json.stderr; exit 1; }

grep "siac.cts.output.cta.v2.11.b.participantid" Siac.Cts.Output.Cta.v2.11.b.StartOfEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.seconds" Siac.Cts.Output.Cta.v2.11.b.StartOfEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.nanoseconds" Siac.Cts.Output.Cta.v2.11.b.StartOfEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.messageid" Siac.Cts.Output.Cta.v2.11.b.StartOfEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.transactionid" Siac.Cts.Output.Cta.v2.11.b.StartOfEndOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.participantreferencenumber" Siac.Cts.Output.Cta.v2.11.b.StartOfEndOfDaySummaryMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cts.Output.Cta.v2.11.b/StartOfStartOfDaySummaryMessage.pcap" \
  -X "lua_script:Siac/Cts/Output/Siac_Cts_Output_Cta_v2_11_b_Dissector.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v2.11.b.StartOfStartOfDaySummaryMessage.json 2> Siac.Cts.Output.Cta.v2.11.b.StartOfStartOfDaySummaryMessage.json.stderr \
  || { echo "--- tshark FAILED (StartOfStartOfDaySummaryMessage) ---"; cat Siac.Cts.Output.Cta.v2.11.b.StartOfStartOfDaySummaryMessage.json.stderr; exit 1; }

grep "siac.cts.output.cta.v2.11.b.participantid" Siac.Cts.Output.Cta.v2.11.b.StartOfStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.seconds" Siac.Cts.Output.Cta.v2.11.b.StartOfStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.nanoseconds" Siac.Cts.Output.Cta.v2.11.b.StartOfStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.messageid" Siac.Cts.Output.Cta.v2.11.b.StartOfStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.transactionid" Siac.Cts.Output.Cta.v2.11.b.StartOfStartOfDaySummaryMessage.json
grep "siac.cts.output.cta.v2.11.b.participantreferencenumber" Siac.Cts.Output.Cta.v2.11.b.StartOfStartOfDaySummaryMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cts.Output.Cta.v2.11.b/SymbolReferenceDataMessage.pcap" \
  -X "lua_script:Siac/Cts/Output/Siac_Cts_Output_Cta_v2_11_b_Dissector.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v2.11.b.SymbolReferenceDataMessage.json 2> Siac.Cts.Output.Cta.v2.11.b.SymbolReferenceDataMessage.json.stderr \
  || { echo "--- tshark FAILED (SymbolReferenceDataMessage) ---"; cat Siac.Cts.Output.Cta.v2.11.b.SymbolReferenceDataMessage.json.stderr; exit 1; }

grep "siac.cts.output.cta.v2.11.b.participantid" Siac.Cts.Output.Cta.v2.11.b.SymbolReferenceDataMessage.json
grep "siac.cts.output.cta.v2.11.b.seconds" Siac.Cts.Output.Cta.v2.11.b.SymbolReferenceDataMessage.json
grep "siac.cts.output.cta.v2.11.b.nanoseconds" Siac.Cts.Output.Cta.v2.11.b.SymbolReferenceDataMessage.json
grep "siac.cts.output.cta.v2.11.b.messageid" Siac.Cts.Output.Cta.v2.11.b.SymbolReferenceDataMessage.json
grep "siac.cts.output.cta.v2.11.b.transactionid" Siac.Cts.Output.Cta.v2.11.b.SymbolReferenceDataMessage.json
grep "siac.cts.output.cta.v2.11.b.participantreferencenumber" Siac.Cts.Output.Cta.v2.11.b.SymbolReferenceDataMessage.json
grep "siac.cts.output.cta.v2.11.b.securitysymbol" Siac.Cts.Output.Cta.v2.11.b.SymbolReferenceDataMessage.json
grep "siac.cts.output.cta.v2.11.b.priorsecuritysymbol" Siac.Cts.Output.Cta.v2.11.b.SymbolReferenceDataMessage.json
grep "siac.cts.output.cta.v2.11.b.primarylistingmarketparticipantid" Siac.Cts.Output.Cta.v2.11.b.SymbolReferenceDataMessage.json
grep "siac.cts.output.cta.v2.11.b.primarylistingmarketpreviousclosingprice" Siac.Cts.Output.Cta.v2.11.b.SymbolReferenceDataMessage.json
grep "siac.cts.output.cta.v2.11.b.consolidatedclosingprice" Siac.Cts.Output.Cta.v2.11.b.SymbolReferenceDataMessage.json
grep "siac.cts.output.cta.v2.11.b.roundlotsize" Siac.Cts.Output.Cta.v2.11.b.SymbolReferenceDataMessage.json
grep "siac.cts.output.cta.v2.11.b.minimumpriceincrementindicator" Siac.Cts.Output.Cta.v2.11.b.SymbolReferenceDataMessage.json
grep "siac.cts.output.cta.v2.11.b.luldtier" Siac.Cts.Output.Cta.v2.11.b.SymbolReferenceDataMessage.json
grep "siac.cts.output.cta.v2.11.b.luldleverageratio" Siac.Cts.Output.Cta.v2.11.b.SymbolReferenceDataMessage.json
grep "siac.cts.output.cta.v2.11.b.test" Siac.Cts.Output.Cta.v2.11.b.SymbolReferenceDataMessage.json
grep "siac.cts.output.cta.v2.11.b.ipo" Siac.Cts.Output.Cta.v2.11.b.SymbolReferenceDataMessage.json
grep "siac.cts.output.cta.v2.11.b.financialstatusindicator" Siac.Cts.Output.Cta.v2.11.b.SymbolReferenceDataMessage.json
grep "siac.cts.output.cta.v2.11.b.shortsalerestrictionindicator" Siac.Cts.Output.Cta.v2.11.b.SymbolReferenceDataMessage.json
grep "siac.cts.output.cta.v2.11.b.haltreason" Siac.Cts.Output.Cta.v2.11.b.SymbolReferenceDataMessage.json
grep "siac.cts.output.cta.v2.11.b.instrumenttype" Siac.Cts.Output.Cta.v2.11.b.SymbolReferenceDataMessage.json
grep "siac.cts.output.cta.v2.11.b.reserved" Siac.Cts.Output.Cta.v2.11.b.SymbolReferenceDataMessage.json
grep "siac.cts.output.cta.v2.11.b.secondreserved" Siac.Cts.Output.Cta.v2.11.b.SymbolReferenceDataMessage.json
grep "siac.cts.output.cta.v2.11.b.reserved128" Siac.Cts.Output.Cta.v2.11.b.SymbolReferenceDataMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cts.Output.Cta.v2.11.b/TradingStatusMessage.pcap" \
  -X "lua_script:Siac/Cts/Output/Siac_Cts_Output_Cta_v2_11_b_Dissector.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v2.11.b.TradingStatusMessage.json 2> Siac.Cts.Output.Cta.v2.11.b.TradingStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingStatusMessage) ---"; cat Siac.Cts.Output.Cta.v2.11.b.TradingStatusMessage.json.stderr; exit 1; }

grep "siac.cts.output.cta.v2.11.b.participantid" Siac.Cts.Output.Cta.v2.11.b.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.11.b.seconds" Siac.Cts.Output.Cta.v2.11.b.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.11.b.nanoseconds" Siac.Cts.Output.Cta.v2.11.b.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.11.b.messageid" Siac.Cts.Output.Cta.v2.11.b.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.11.b.transactionid" Siac.Cts.Output.Cta.v2.11.b.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.11.b.participantreferencenumber" Siac.Cts.Output.Cta.v2.11.b.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.11.b.securitysymbol" Siac.Cts.Output.Cta.v2.11.b.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.11.b.instrumenttype" Siac.Cts.Output.Cta.v2.11.b.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.11.b.lastprice" Siac.Cts.Output.Cta.v2.11.b.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.11.b.highindicationpriceupperlimitpriceband" Siac.Cts.Output.Cta.v2.11.b.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.11.b.lowindicationpricelowerlimitpriceband" Siac.Cts.Output.Cta.v2.11.b.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.11.b.buyvolume" Siac.Cts.Output.Cta.v2.11.b.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.11.b.sellvolume" Siac.Cts.Output.Cta.v2.11.b.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.11.b.securitystatus" Siac.Cts.Output.Cta.v2.11.b.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.11.b.haltreason" Siac.Cts.Output.Cta.v2.11.b.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.11.b.shortsalerestrictionindicator" Siac.Cts.Output.Cta.v2.11.b.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.11.b.primarylistingmarketparticipantid" Siac.Cts.Output.Cta.v2.11.b.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.11.b.financialstatusindicator" Siac.Cts.Output.Cta.v2.11.b.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.11.b.limituplimitdownluldindicator" Siac.Cts.Output.Cta.v2.11.b.TradingStatusMessage.json
