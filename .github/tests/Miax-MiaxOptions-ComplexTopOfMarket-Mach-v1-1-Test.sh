set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Miax/MiaxOptions.ComplexTopOfMarket.Mach.v1.1/Heartbeat.pcap" \
  -X "lua_script:Miax/MiaxOptions/ComplexTopOfMarket/Miax_MiaxOptions_ComplexTopOfMarket_Mach_v1_1_Dissector.lua" \
  -T json \
  > Miax.MiaxOptions.ComplexTopOfMarket.Mach.v1.1.Heartbeat.json 2> Miax.MiaxOptions.ComplexTopOfMarket.Mach.v1.1.Heartbeat.json.stderr \
  || { echo "--- tshark FAILED (Heartbeat) ---"; cat Miax.MiaxOptions.ComplexTopOfMarket.Mach.v1.1.Heartbeat.json.stderr; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Miax/MiaxOptions.ComplexTopOfMarket.Mach.v1.1/SystemStateMessage.pcap" \
  -X "lua_script:Miax/MiaxOptions/ComplexTopOfMarket/Miax_MiaxOptions_ComplexTopOfMarket_Mach_v1_1_Dissector.lua" \
  -T json \
  > Miax.MiaxOptions.ComplexTopOfMarket.Mach.v1.1.SystemStateMessage.json 2> Miax.MiaxOptions.ComplexTopOfMarket.Mach.v1.1.SystemStateMessage.json.stderr \
  || { echo "--- tshark FAILED (SystemStateMessage) ---"; cat Miax.MiaxOptions.ComplexTopOfMarket.Mach.v1.1.SystemStateMessage.json.stderr; exit 1; }

grep "miax.miaxoptions.complextopofmarket.mach.v1.1.nanoseconds" Miax.MiaxOptions.ComplexTopOfMarket.Mach.v1.1.SystemStateMessage.json
grep "miax.miaxoptions.complextopofmarket.mach.v1.1.ctomversion" Miax.MiaxOptions.ComplexTopOfMarket.Mach.v1.1.SystemStateMessage.json
grep "miax.miaxoptions.complextopofmarket.mach.v1.1.sessionid" Miax.MiaxOptions.ComplexTopOfMarket.Mach.v1.1.SystemStateMessage.json
grep "miax.miaxoptions.complextopofmarket.mach.v1.1.systemstatus" Miax.MiaxOptions.ComplexTopOfMarket.Mach.v1.1.SystemStateMessage.json
