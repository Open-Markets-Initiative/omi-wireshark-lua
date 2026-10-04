set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cqs.Output.Cta.v2.10.a/EndOfDayMessage.pcap" \
  -X "lua_script:Siac/Cqs/Output/Siac_Cqs_Output_Cta_v2_10_a_Dissector.lua" \
  -T json \
  > Siac.Cqs.Output.Cta.v2.10.a.EndOfDayMessage.json 2> Siac.Cqs.Output.Cta.v2.10.a.EndOfDayMessage.json.stderr \
  || { echo "--- tshark FAILED (EndOfDayMessage) ---"; cat Siac.Cqs.Output.Cta.v2.10.a.EndOfDayMessage.json.stderr; exit 1; }

grep "siac.cqs.output.cta.v2.10.a.participantid" Siac.Cqs.Output.Cta.v2.10.a.EndOfDayMessage.json
grep "siac.cqs.output.cta.v2.10.a.seconds" Siac.Cqs.Output.Cta.v2.10.a.EndOfDayMessage.json
grep "siac.cqs.output.cta.v2.10.a.nanoseconds" Siac.Cqs.Output.Cta.v2.10.a.EndOfDayMessage.json
grep "siac.cqs.output.cta.v2.10.a.messageid" Siac.Cqs.Output.Cta.v2.10.a.EndOfDayMessage.json
grep "siac.cqs.output.cta.v2.10.a.transactionid" Siac.Cqs.Output.Cta.v2.10.a.EndOfDayMessage.json
grep "siac.cqs.output.cta.v2.10.a.participantreferencenumber" Siac.Cqs.Output.Cta.v2.10.a.EndOfDayMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cqs.Output.Cta.v2.10.a/FinraCloseMessage.pcap" \
  -X "lua_script:Siac/Cqs/Output/Siac_Cqs_Output_Cta_v2_10_a_Dissector.lua" \
  -T json \
  > Siac.Cqs.Output.Cta.v2.10.a.FinraCloseMessage.json 2> Siac.Cqs.Output.Cta.v2.10.a.FinraCloseMessage.json.stderr \
  || { echo "--- tshark FAILED (FinraCloseMessage) ---"; cat Siac.Cqs.Output.Cta.v2.10.a.FinraCloseMessage.json.stderr; exit 1; }

grep "siac.cqs.output.cta.v2.10.a.participantid" Siac.Cqs.Output.Cta.v2.10.a.FinraCloseMessage.json
grep "siac.cqs.output.cta.v2.10.a.seconds" Siac.Cqs.Output.Cta.v2.10.a.FinraCloseMessage.json
grep "siac.cqs.output.cta.v2.10.a.nanoseconds" Siac.Cqs.Output.Cta.v2.10.a.FinraCloseMessage.json
grep "siac.cqs.output.cta.v2.10.a.messageid" Siac.Cqs.Output.Cta.v2.10.a.FinraCloseMessage.json
grep "siac.cqs.output.cta.v2.10.a.transactionid" Siac.Cqs.Output.Cta.v2.10.a.FinraCloseMessage.json
grep "siac.cqs.output.cta.v2.10.a.participantreferencenumber" Siac.Cqs.Output.Cta.v2.10.a.FinraCloseMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cqs.Output.Cta.v2.10.a/FinraOpenMessage.pcap" \
  -X "lua_script:Siac/Cqs/Output/Siac_Cqs_Output_Cta_v2_10_a_Dissector.lua" \
  -T json \
  > Siac.Cqs.Output.Cta.v2.10.a.FinraOpenMessage.json 2> Siac.Cqs.Output.Cta.v2.10.a.FinraOpenMessage.json.stderr \
  || { echo "--- tshark FAILED (FinraOpenMessage) ---"; cat Siac.Cqs.Output.Cta.v2.10.a.FinraOpenMessage.json.stderr; exit 1; }

grep "siac.cqs.output.cta.v2.10.a.participantid" Siac.Cqs.Output.Cta.v2.10.a.FinraOpenMessage.json
grep "siac.cqs.output.cta.v2.10.a.seconds" Siac.Cqs.Output.Cta.v2.10.a.FinraOpenMessage.json
grep "siac.cqs.output.cta.v2.10.a.nanoseconds" Siac.Cqs.Output.Cta.v2.10.a.FinraOpenMessage.json
grep "siac.cqs.output.cta.v2.10.a.messageid" Siac.Cqs.Output.Cta.v2.10.a.FinraOpenMessage.json
grep "siac.cqs.output.cta.v2.10.a.transactionid" Siac.Cqs.Output.Cta.v2.10.a.FinraOpenMessage.json
grep "siac.cqs.output.cta.v2.10.a.participantreferencenumber" Siac.Cqs.Output.Cta.v2.10.a.FinraOpenMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cqs.Output.Cta.v2.10.a/LineIntegrityMessage.pcap" \
  -X "lua_script:Siac/Cqs/Output/Siac_Cqs_Output_Cta_v2_10_a_Dissector.lua" \
  -T json \
  > Siac.Cqs.Output.Cta.v2.10.a.LineIntegrityMessage.json 2> Siac.Cqs.Output.Cta.v2.10.a.LineIntegrityMessage.json.stderr \
  || { echo "--- tshark FAILED (LineIntegrityMessage) ---"; cat Siac.Cqs.Output.Cta.v2.10.a.LineIntegrityMessage.json.stderr; exit 1; }

grep "siac.cqs.output.cta.v2.10.a.participantid" Siac.Cqs.Output.Cta.v2.10.a.LineIntegrityMessage.json
grep "siac.cqs.output.cta.v2.10.a.seconds" Siac.Cqs.Output.Cta.v2.10.a.LineIntegrityMessage.json
grep "siac.cqs.output.cta.v2.10.a.nanoseconds" Siac.Cqs.Output.Cta.v2.10.a.LineIntegrityMessage.json
grep "siac.cqs.output.cta.v2.10.a.messageid" Siac.Cqs.Output.Cta.v2.10.a.LineIntegrityMessage.json
grep "siac.cqs.output.cta.v2.10.a.transactionid" Siac.Cqs.Output.Cta.v2.10.a.LineIntegrityMessage.json
grep "siac.cqs.output.cta.v2.10.a.participantreferencenumber" Siac.Cqs.Output.Cta.v2.10.a.LineIntegrityMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cqs.Output.Cta.v2.10.a/LongQuoteMessage.pcap" \
  -X "lua_script:Siac/Cqs/Output/Siac_Cqs_Output_Cta_v2_10_a_Dissector.lua" \
  -T json \
  > Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json 2> Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json.stderr \
  || { echo "--- tshark FAILED (LongQuoteMessage) ---"; cat Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json.stderr; exit 1; }

grep "siac.cqs.output.cta.v2.10.a.participantid" Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json
grep "siac.cqs.output.cta.v2.10.a.seconds" Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json
grep "siac.cqs.output.cta.v2.10.a.nanoseconds" Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json
grep "siac.cqs.output.cta.v2.10.a.messageid" Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json
grep "siac.cqs.output.cta.v2.10.a.transactionid" Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json
grep "siac.cqs.output.cta.v2.10.a.participantreferencenumber" Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json
grep "siac.cqs.output.cta.v2.10.a.securitysymbol" Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json
grep "siac.cqs.output.cta.v2.10.a.instrumenttype" Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json
grep "siac.cqs.output.cta.v2.10.a.quotecondition" Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json
grep "siac.cqs.output.cta.v2.10.a.securitystatusindicator" Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json
grep "siac.cqs.output.cta.v2.10.a.bidpricelowerlimitpriceband" Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json
grep "siac.cqs.output.cta.v2.10.a.bidsizelong" Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json
grep "siac.cqs.output.cta.v2.10.a.offerpriceupperlimitpriceband" Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json
grep "siac.cqs.output.cta.v2.10.a.offersizelong" Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json
grep "siac.cqs.output.cta.v2.10.a.retailinterestindicator" Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json
grep "siac.cqs.output.cta.v2.10.a.settlementcondition" Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json
grep "siac.cqs.output.cta.v2.10.a.marketcondition" Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json
grep "siac.cqs.output.cta.v2.10.a.finramarketmakerid" Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json
grep "siac.cqs.output.cta.v2.10.a.finrabboindicator" Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json
grep "siac.cqs.output.cta.v2.10.a.seconds" Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json
grep "siac.cqs.output.cta.v2.10.a.nanoseconds" Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json
grep "siac.cqs.output.cta.v2.10.a.shortsalerestrictionindicator" Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json
grep "siac.cqs.output.cta.v2.10.a.primarylistingmarketparticipantid" Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json
grep "siac.cqs.output.cta.v2.10.a.financialstatusindicator" Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json
grep "siac.cqs.output.cta.v2.10.a.sipgeneratedmessageidentifier" Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json
grep "siac.cqs.output.cta.v2.10.a.limituplimitdownluldindicator" Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json
grep "siac.cqs.output.cta.v2.10.a.nationalbboluldindicator" Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json
grep "siac.cqs.output.cta.v2.10.a.nationalbboindicator" Siac.Cqs.Output.Cta.v2.10.a.LongQuoteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cqs.Output.Cta.v2.10.a/MarketWideCircuitBreakerDeclineLevelStatusMessage.pcap" \
  -X "lua_script:Siac/Cqs/Output/Siac_Cqs_Output_Cta_v2_10_a_Dissector.lua" \
  -T json \
  > Siac.Cqs.Output.Cta.v2.10.a.MarketWideCircuitBreakerDeclineLevelStatusMessage.json 2> Siac.Cqs.Output.Cta.v2.10.a.MarketWideCircuitBreakerDeclineLevelStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (MarketWideCircuitBreakerDeclineLevelStatusMessage) ---"; cat Siac.Cqs.Output.Cta.v2.10.a.MarketWideCircuitBreakerDeclineLevelStatusMessage.json.stderr; exit 1; }

grep "siac.cqs.output.cta.v2.10.a.participantid" Siac.Cqs.Output.Cta.v2.10.a.MarketWideCircuitBreakerDeclineLevelStatusMessage.json
grep "siac.cqs.output.cta.v2.10.a.seconds" Siac.Cqs.Output.Cta.v2.10.a.MarketWideCircuitBreakerDeclineLevelStatusMessage.json
grep "siac.cqs.output.cta.v2.10.a.nanoseconds" Siac.Cqs.Output.Cta.v2.10.a.MarketWideCircuitBreakerDeclineLevelStatusMessage.json
grep "siac.cqs.output.cta.v2.10.a.messageid" Siac.Cqs.Output.Cta.v2.10.a.MarketWideCircuitBreakerDeclineLevelStatusMessage.json
grep "siac.cqs.output.cta.v2.10.a.transactionid" Siac.Cqs.Output.Cta.v2.10.a.MarketWideCircuitBreakerDeclineLevelStatusMessage.json
grep "siac.cqs.output.cta.v2.10.a.participantreferencenumber" Siac.Cqs.Output.Cta.v2.10.a.MarketWideCircuitBreakerDeclineLevelStatusMessage.json
grep "siac.cqs.output.cta.v2.10.a.mwcblevel1" Siac.Cqs.Output.Cta.v2.10.a.MarketWideCircuitBreakerDeclineLevelStatusMessage.json
grep "siac.cqs.output.cta.v2.10.a.mwcblevel2" Siac.Cqs.Output.Cta.v2.10.a.MarketWideCircuitBreakerDeclineLevelStatusMessage.json
grep "siac.cqs.output.cta.v2.10.a.mwcblevel3" Siac.Cqs.Output.Cta.v2.10.a.MarketWideCircuitBreakerDeclineLevelStatusMessage.json
grep "siac.cqs.output.cta.v2.10.a.reserved" Siac.Cqs.Output.Cta.v2.10.a.MarketWideCircuitBreakerDeclineLevelStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cqs.Output.Cta.v2.10.a/StartOfDayMessage.pcap" \
  -X "lua_script:Siac/Cqs/Output/Siac_Cqs_Output_Cta_v2_10_a_Dissector.lua" \
  -T json \
  > Siac.Cqs.Output.Cta.v2.10.a.StartOfDayMessage.json 2> Siac.Cqs.Output.Cta.v2.10.a.StartOfDayMessage.json.stderr \
  || { echo "--- tshark FAILED (StartOfDayMessage) ---"; cat Siac.Cqs.Output.Cta.v2.10.a.StartOfDayMessage.json.stderr; exit 1; }

grep "siac.cqs.output.cta.v2.10.a.participantid" Siac.Cqs.Output.Cta.v2.10.a.StartOfDayMessage.json
grep "siac.cqs.output.cta.v2.10.a.seconds" Siac.Cqs.Output.Cta.v2.10.a.StartOfDayMessage.json
grep "siac.cqs.output.cta.v2.10.a.nanoseconds" Siac.Cqs.Output.Cta.v2.10.a.StartOfDayMessage.json
grep "siac.cqs.output.cta.v2.10.a.messageid" Siac.Cqs.Output.Cta.v2.10.a.StartOfDayMessage.json
grep "siac.cqs.output.cta.v2.10.a.transactionid" Siac.Cqs.Output.Cta.v2.10.a.StartOfDayMessage.json
grep "siac.cqs.output.cta.v2.10.a.participantreferencenumber" Siac.Cqs.Output.Cta.v2.10.a.StartOfDayMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cqs.Output.Cta.v2.10.a/SymbolReferenceDataMessage.pcap" \
  -X "lua_script:Siac/Cqs/Output/Siac_Cqs_Output_Cta_v2_10_a_Dissector.lua" \
  -T json \
  > Siac.Cqs.Output.Cta.v2.10.a.SymbolReferenceDataMessage.json 2> Siac.Cqs.Output.Cta.v2.10.a.SymbolReferenceDataMessage.json.stderr \
  || { echo "--- tshark FAILED (SymbolReferenceDataMessage) ---"; cat Siac.Cqs.Output.Cta.v2.10.a.SymbolReferenceDataMessage.json.stderr; exit 1; }

grep "siac.cqs.output.cta.v2.10.a.participantid" Siac.Cqs.Output.Cta.v2.10.a.SymbolReferenceDataMessage.json
grep "siac.cqs.output.cta.v2.10.a.seconds" Siac.Cqs.Output.Cta.v2.10.a.SymbolReferenceDataMessage.json
grep "siac.cqs.output.cta.v2.10.a.nanoseconds" Siac.Cqs.Output.Cta.v2.10.a.SymbolReferenceDataMessage.json
grep "siac.cqs.output.cta.v2.10.a.messageid" Siac.Cqs.Output.Cta.v2.10.a.SymbolReferenceDataMessage.json
grep "siac.cqs.output.cta.v2.10.a.transactionid" Siac.Cqs.Output.Cta.v2.10.a.SymbolReferenceDataMessage.json
grep "siac.cqs.output.cta.v2.10.a.participantreferencenumber" Siac.Cqs.Output.Cta.v2.10.a.SymbolReferenceDataMessage.json
grep "siac.cqs.output.cta.v2.10.a.securitysymbol" Siac.Cqs.Output.Cta.v2.10.a.SymbolReferenceDataMessage.json
grep "siac.cqs.output.cta.v2.10.a.priorsecuritysymbol" Siac.Cqs.Output.Cta.v2.10.a.SymbolReferenceDataMessage.json
grep "siac.cqs.output.cta.v2.10.a.primarylistingmarketparticipantid" Siac.Cqs.Output.Cta.v2.10.a.SymbolReferenceDataMessage.json
grep "siac.cqs.output.cta.v2.10.a.primarylistingmarketpreviousclosingprice" Siac.Cqs.Output.Cta.v2.10.a.SymbolReferenceDataMessage.json
grep "siac.cqs.output.cta.v2.10.a.consolidatedclosingprice" Siac.Cqs.Output.Cta.v2.10.a.SymbolReferenceDataMessage.json
grep "siac.cqs.output.cta.v2.10.a.roundlotsize" Siac.Cqs.Output.Cta.v2.10.a.SymbolReferenceDataMessage.json
grep "siac.cqs.output.cta.v2.10.a.reserved" Siac.Cqs.Output.Cta.v2.10.a.SymbolReferenceDataMessage.json
grep "siac.cqs.output.cta.v2.10.a.luldtier" Siac.Cqs.Output.Cta.v2.10.a.SymbolReferenceDataMessage.json
grep "siac.cqs.output.cta.v2.10.a.luldleverageratio" Siac.Cqs.Output.Cta.v2.10.a.SymbolReferenceDataMessage.json
grep "siac.cqs.output.cta.v2.10.a.test" Siac.Cqs.Output.Cta.v2.10.a.SymbolReferenceDataMessage.json
grep "siac.cqs.output.cta.v2.10.a.ipo" Siac.Cqs.Output.Cta.v2.10.a.SymbolReferenceDataMessage.json
grep "siac.cqs.output.cta.v2.10.a.financialstatusindicator" Siac.Cqs.Output.Cta.v2.10.a.SymbolReferenceDataMessage.json
grep "siac.cqs.output.cta.v2.10.a.shortsalerestrictionindicator" Siac.Cqs.Output.Cta.v2.10.a.SymbolReferenceDataMessage.json
grep "siac.cqs.output.cta.v2.10.a.haltreason" Siac.Cqs.Output.Cta.v2.10.a.SymbolReferenceDataMessage.json
grep "siac.cqs.output.cta.v2.10.a.instrumenttype" Siac.Cqs.Output.Cta.v2.10.a.SymbolReferenceDataMessage.json
grep "siac.cqs.output.cta.v2.10.a.secondreserved" Siac.Cqs.Output.Cta.v2.10.a.SymbolReferenceDataMessage.json
grep "siac.cqs.output.cta.v2.10.a.thirdreserved" Siac.Cqs.Output.Cta.v2.10.a.SymbolReferenceDataMessage.json
grep "siac.cqs.output.cta.v2.10.a.reserved128" Siac.Cqs.Output.Cta.v2.10.a.SymbolReferenceDataMessage.json
