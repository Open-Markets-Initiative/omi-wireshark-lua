set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Moex/Spectra.FutInfoIncremental.Simba.v8.0.0/HeartbeatMessage.pcap" \
  -X "lua_script:Moex/Spectra/FutInfoIncremental/Moex_Spectra_FutInfoIncremental_Simba_v8_0_0_Dissector.lua" \
  -T json \
  > Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.HeartbeatMessage.json 2> Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.HeartbeatMessage.json.stderr \
  || { echo "--- tshark FAILED (HeartbeatMessage) ---"; cat Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.HeartbeatMessage.json.stderr; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Moex/Spectra.FutInfoIncremental.Simba.v8.0.0/SecurityGroupStatusMessage.pcap" \
  -X "lua_script:Moex/Spectra/FutInfoIncremental/Moex_Spectra_FutInfoIncremental_Simba_v8_0_0_Dissector.lua" \
  -T json \
  > Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.SecurityGroupStatusMessage.json 2> Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.SecurityGroupStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityGroupStatusMessage) ---"; cat Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.SecurityGroupStatusMessage.json.stderr; exit 1; }

grep "moex.spectra.futinfoincremental.simba.v8.0.0.securitygroupid" Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.SecurityGroupStatusMessage.json
grep "moex.spectra.futinfoincremental.simba.v8.0.0.halttype" Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.SecurityGroupStatusMessage.json
grep "moex.spectra.futinfoincremental.simba.v8.0.0.trademodemask" Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.SecurityGroupStatusMessage.json
grep "moex.spectra.futinfoincremental.simba.v8.0.0.groupmaskoptional" Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.SecurityGroupStatusMessage.json
grep "moex.spectra.futinfoincremental.simba.v8.0.0.sectionidoptional" Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.SecurityGroupStatusMessage.json
grep "moex.spectra.futinfoincremental.simba.v8.0.0.basecontractidoptional" Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.SecurityGroupStatusMessage.json
grep "moex.spectra.futinfoincremental.simba.v8.0.0.securitytradingstatus" Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.SecurityGroupStatusMessage.json
grep "moex.spectra.futinfoincremental.simba.v8.0.0.statuschangetime" Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.SecurityGroupStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Moex/Spectra.FutInfoIncremental.Simba.v8.0.0/SecurityMassStatusMessage.pcap" \
  -X "lua_script:Moex/Spectra/FutInfoIncremental/Moex_Spectra_FutInfoIncremental_Simba_v8_0_0_Dissector.lua" \
  -T json \
  > Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.SecurityMassStatusMessage.json 2> Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.SecurityMassStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityMassStatusMessage) ---"; cat Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.SecurityMassStatusMessage.json.stderr; exit 1; }

grep "moex.spectra.futinfoincremental.simba.v8.0.0.blocklength" Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.SecurityMassStatusMessage.json
grep "moex.spectra.futinfoincremental.simba.v8.0.0.numingroupuint16" Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.SecurityMassStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Moex/Spectra.FutInfoIncremental.Simba.v8.0.0/TradingSessionStatusMessage.pcap" \
  -X "lua_script:Moex/Spectra/FutInfoIncremental/Moex_Spectra_FutInfoIncremental_Simba_v8_0_0_Dissector.lua" \
  -T json \
  > Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.TradingSessionStatusMessage.json 2> Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.TradingSessionStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingSessionStatusMessage) ---"; cat Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.TradingSessionStatusMessage.json.stderr; exit 1; }

grep "moex.spectra.futinfoincremental.simba.v8.0.0.tradsesopentime" Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.TradingSessionStatusMessage.json
grep "moex.spectra.futinfoincremental.simba.v8.0.0.tradsesclosetime" Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.TradingSessionStatusMessage.json
grep "moex.spectra.futinfoincremental.simba.v8.0.0.tradingsessionid" Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.TradingSessionStatusMessage.json
grep "moex.spectra.futinfoincremental.simba.v8.0.0.exchangetradingsessionidint32nulloptional" Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.TradingSessionStatusMessage.json
grep "moex.spectra.futinfoincremental.simba.v8.0.0.tradsesstatus" Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.TradingSessionStatusMessage.json
grep "moex.spectra.futinfoincremental.simba.v8.0.0.marketsegmentid" Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.TradingSessionStatusMessage.json
grep "moex.spectra.futinfoincremental.simba.v8.0.0.tradsesevent" Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.TradingSessionStatusMessage.json
grep "moex.spectra.futinfoincremental.simba.v8.0.0.tradeperiodid" Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.TradingSessionStatusMessage.json
grep "moex.spectra.futinfoincremental.simba.v8.0.0.settlsessbegin" Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.TradingSessionStatusMessage.json
grep "moex.spectra.futinfoincremental.simba.v8.0.0.clrsessbegin" Moex.Spectra.FutInfoIncremental.Simba.v8.0.0.TradingSessionStatusMessage.json
