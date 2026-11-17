set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Moex/Spectra.OptInfoIncremental.Simba.v8.0.0/HeartbeatMessage.pcap" \
  -X "lua_script:Moex/Spectra/OptInfoIncremental/Moex_Spectra_OptInfoIncremental_Simba_v8_0_0_Dissector.lua" \
  -T json \
  > Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.HeartbeatMessage.json 2> Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.HeartbeatMessage.json.stderr \
  || { echo "--- tshark FAILED (HeartbeatMessage) ---"; cat Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.HeartbeatMessage.json.stderr; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Moex/Spectra.OptInfoIncremental.Simba.v8.0.0/SecurityDefinitionUpdateReportMessage.pcap" \
  -X "lua_script:Moex/Spectra/OptInfoIncremental/Moex_Spectra_OptInfoIncremental_Simba_v8_0_0_Dissector.lua" \
  -T json \
  > Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.SecurityDefinitionUpdateReportMessage.json 2> Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.SecurityDefinitionUpdateReportMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityDefinitionUpdateReportMessage) ---"; cat Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.SecurityDefinitionUpdateReportMessage.json.stderr; exit 1; }

grep "moex.spectra.optinfoincremental.simba.v8.0.0.securityid" Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.SecurityDefinitionUpdateReportMessage.json
grep "moex.spectra.optinfoincremental.simba.v8.0.0.volatility" Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.SecurityDefinitionUpdateReportMessage.json
grep "moex.spectra.optinfoincremental.simba.v8.0.0.theorprice" Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.SecurityDefinitionUpdateReportMessage.json
grep "moex.spectra.optinfoincremental.simba.v8.0.0.theorpricelimit" Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.SecurityDefinitionUpdateReportMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Moex/Spectra.OptInfoIncremental.Simba.v8.0.0/SecurityGroupStatusMessage.pcap" \
  -X "lua_script:Moex/Spectra/OptInfoIncremental/Moex_Spectra_OptInfoIncremental_Simba_v8_0_0_Dissector.lua" \
  -T json \
  > Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.SecurityGroupStatusMessage.json 2> Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.SecurityGroupStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityGroupStatusMessage) ---"; cat Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.SecurityGroupStatusMessage.json.stderr; exit 1; }

grep "moex.spectra.optinfoincremental.simba.v8.0.0.securitygroupid" Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.SecurityGroupStatusMessage.json
grep "moex.spectra.optinfoincremental.simba.v8.0.0.halttype" Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.SecurityGroupStatusMessage.json
grep "moex.spectra.optinfoincremental.simba.v8.0.0.trademodemask" Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.SecurityGroupStatusMessage.json
grep "moex.spectra.optinfoincremental.simba.v8.0.0.groupmaskoptional" Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.SecurityGroupStatusMessage.json
grep "moex.spectra.optinfoincremental.simba.v8.0.0.sectionidoptional" Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.SecurityGroupStatusMessage.json
grep "moex.spectra.optinfoincremental.simba.v8.0.0.basecontractidoptional" Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.SecurityGroupStatusMessage.json
grep "moex.spectra.optinfoincremental.simba.v8.0.0.securitytradingstatus" Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.SecurityGroupStatusMessage.json
grep "moex.spectra.optinfoincremental.simba.v8.0.0.statuschangetime" Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.SecurityGroupStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Moex/Spectra.OptInfoIncremental.Simba.v8.0.0/SecurityMassStatusMessage.pcap" \
  -X "lua_script:Moex/Spectra/OptInfoIncremental/Moex_Spectra_OptInfoIncremental_Simba_v8_0_0_Dissector.lua" \
  -T json \
  > Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.SecurityMassStatusMessage.json 2> Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.SecurityMassStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityMassStatusMessage) ---"; cat Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.SecurityMassStatusMessage.json.stderr; exit 1; }

grep "moex.spectra.optinfoincremental.simba.v8.0.0.blocklength" Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.SecurityMassStatusMessage.json
grep "moex.spectra.optinfoincremental.simba.v8.0.0.numingroupuint16" Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.SecurityMassStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Moex/Spectra.OptInfoIncremental.Simba.v8.0.0/TradingSessionStatusMessage.pcap" \
  -X "lua_script:Moex/Spectra/OptInfoIncremental/Moex_Spectra_OptInfoIncremental_Simba_v8_0_0_Dissector.lua" \
  -T json \
  > Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.TradingSessionStatusMessage.json 2> Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.TradingSessionStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingSessionStatusMessage) ---"; cat Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.TradingSessionStatusMessage.json.stderr; exit 1; }

grep "moex.spectra.optinfoincremental.simba.v8.0.0.tradsesopentime" Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.TradingSessionStatusMessage.json
grep "moex.spectra.optinfoincremental.simba.v8.0.0.tradsesclosetime" Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.TradingSessionStatusMessage.json
grep "moex.spectra.optinfoincremental.simba.v8.0.0.tradingsessionid" Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.TradingSessionStatusMessage.json
grep "moex.spectra.optinfoincremental.simba.v8.0.0.exchangetradingsessionidint32nulloptional" Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.TradingSessionStatusMessage.json
grep "moex.spectra.optinfoincremental.simba.v8.0.0.tradsesstatus" Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.TradingSessionStatusMessage.json
grep "moex.spectra.optinfoincremental.simba.v8.0.0.marketsegmentid" Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.TradingSessionStatusMessage.json
grep "moex.spectra.optinfoincremental.simba.v8.0.0.tradsesevent" Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.TradingSessionStatusMessage.json
grep "moex.spectra.optinfoincremental.simba.v8.0.0.tradeperiodid" Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.TradingSessionStatusMessage.json
grep "moex.spectra.optinfoincremental.simba.v8.0.0.settlsessbegin" Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.TradingSessionStatusMessage.json
grep "moex.spectra.optinfoincremental.simba.v8.0.0.clrsessbegin" Moex.Spectra.OptInfoIncremental.Simba.v8.0.0.TradingSessionStatusMessage.json
