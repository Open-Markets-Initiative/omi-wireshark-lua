set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Moex/Spectra.OrdersLogSnapshot.Simba.v9.12.0/OrderBookSnapshotMessage.pcap" \
  -X "lua_script:Moex/Spectra/OrdersLogSnapshot/Moex_Spectra_OrdersLogSnapshot_Simba_v9_12_0_Dissector.lua" \
  -T json \
  > Moex.Spectra.OrdersLogSnapshot.Simba.v9.12.0.OrderBookSnapshotMessage.json 2> Moex.Spectra.OrdersLogSnapshot.Simba.v9.12.0.OrderBookSnapshotMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderBookSnapshotMessage) ---"; cat Moex.Spectra.OrdersLogSnapshot.Simba.v9.12.0.OrderBookSnapshotMessage.json.stderr; exit 1; }

grep "moex.spectra.orderslogsnapshot.simba.v9.12.0.securityid" Moex.Spectra.OrdersLogSnapshot.Simba.v9.12.0.OrderBookSnapshotMessage.json
grep "moex.spectra.orderslogsnapshot.simba.v9.12.0.lastmsgseqnumprocesseduint32" Moex.Spectra.OrdersLogSnapshot.Simba.v9.12.0.OrderBookSnapshotMessage.json
grep "moex.spectra.orderslogsnapshot.simba.v9.12.0.rptseq" Moex.Spectra.OrdersLogSnapshot.Simba.v9.12.0.OrderBookSnapshotMessage.json
grep "moex.spectra.orderslogsnapshot.simba.v9.12.0.exchangetradingsessionid" Moex.Spectra.OrdersLogSnapshot.Simba.v9.12.0.OrderBookSnapshotMessage.json
grep "moex.spectra.orderslogsnapshot.simba.v9.12.0.blocklength" Moex.Spectra.OrdersLogSnapshot.Simba.v9.12.0.OrderBookSnapshotMessage.json
grep "moex.spectra.orderslogsnapshot.simba.v9.12.0.numingroupuint8" Moex.Spectra.OrdersLogSnapshot.Simba.v9.12.0.OrderBookSnapshotMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Moex/Spectra.OrdersLogSnapshot.Simba.v9.12.0/SequenceResetMessage.pcap" \
  -X "lua_script:Moex/Spectra/OrdersLogSnapshot/Moex_Spectra_OrdersLogSnapshot_Simba_v9_12_0_Dissector.lua" \
  -T json \
  > Moex.Spectra.OrdersLogSnapshot.Simba.v9.12.0.SequenceResetMessage.json 2> Moex.Spectra.OrdersLogSnapshot.Simba.v9.12.0.SequenceResetMessage.json.stderr \
  || { echo "--- tshark FAILED (SequenceResetMessage) ---"; cat Moex.Spectra.OrdersLogSnapshot.Simba.v9.12.0.SequenceResetMessage.json.stderr; exit 1; }

grep "moex.spectra.orderslogsnapshot.simba.v9.12.0.newseqno" Moex.Spectra.OrdersLogSnapshot.Simba.v9.12.0.SequenceResetMessage.json
