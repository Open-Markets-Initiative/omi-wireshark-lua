set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Txse/TxseEquities.Seed.Rake.v1.0/LimitOrderAcceptedMessage.pcap" \
  -X "lua_script:Txse/TxseEquities/Seed/Txse_TxseEquities_Seed_Rake_v1_0_Dissector.lua" \
  -T json \
  > Txse.TxseEquities.Seed.Rake.v1.0.LimitOrderAcceptedMessage.json 2> Txse.TxseEquities.Seed.Rake.v1.0.LimitOrderAcceptedMessage.json.stderr \
  || { echo "--- tshark FAILED (LimitOrderAcceptedMessage) ---"; cat Txse.TxseEquities.Seed.Rake.v1.0.LimitOrderAcceptedMessage.json.stderr; exit 1; }

grep "txse.txseequities.seed.rake.v1.0.limitorderacceptedpresencebits" Txse.TxseEquities.Seed.Rake.v1.0.LimitOrderAcceptedMessage.json
grep "txse.txseequities.seed.rake.v1.0.transacttime" Txse.TxseEquities.Seed.Rake.v1.0.LimitOrderAcceptedMessage.json
grep "txse.txseequities.seed.rake.v1.0.orderid" Txse.TxseEquities.Seed.Rake.v1.0.LimitOrderAcceptedMessage.json
grep "txse.txseequities.seed.rake.v1.0.clordid" Txse.TxseEquities.Seed.Rake.v1.0.LimitOrderAcceptedMessage.json
grep "txse.txseequities.seed.rake.v1.0.orderqty" Txse.TxseEquities.Seed.Rake.v1.0.LimitOrderAcceptedMessage.json
grep "txse.txseequities.seed.rake.v1.0.limitorderacceptedbitfields" Txse.TxseEquities.Seed.Rake.v1.0.LimitOrderAcceptedMessage.json
grep "txse.txseequities.seed.rake.v1.0.symbolid" Txse.TxseEquities.Seed.Rake.v1.0.LimitOrderAcceptedMessage.json
grep "txse.txseequities.seed.rake.v1.0.price" Txse.TxseEquities.Seed.Rake.v1.0.LimitOrderAcceptedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Txse/TxseEquities.Seed.Rake.v1.0/LimitOrderMessage.pcap" \
  -X "lua_script:Txse/TxseEquities/Seed/Txse_TxseEquities_Seed_Rake_v1_0_Dissector.lua" \
  -T json \
  > Txse.TxseEquities.Seed.Rake.v1.0.LimitOrderMessage.json 2> Txse.TxseEquities.Seed.Rake.v1.0.LimitOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (LimitOrderMessage) ---"; cat Txse.TxseEquities.Seed.Rake.v1.0.LimitOrderMessage.json.stderr; exit 1; }

grep "txse.txseequities.seed.rake.v1.0.limitorderpresencebits" Txse.TxseEquities.Seed.Rake.v1.0.LimitOrderMessage.json
grep "txse.txseequities.seed.rake.v1.0.clordid" Txse.TxseEquities.Seed.Rake.v1.0.LimitOrderMessage.json
grep "txse.txseequities.seed.rake.v1.0.orderqty" Txse.TxseEquities.Seed.Rake.v1.0.LimitOrderMessage.json
grep "txse.txseequities.seed.rake.v1.0.limitorderbitfields" Txse.TxseEquities.Seed.Rake.v1.0.LimitOrderMessage.json
grep "txse.txseequities.seed.rake.v1.0.symbolid" Txse.TxseEquities.Seed.Rake.v1.0.LimitOrderMessage.json
grep "txse.txseequities.seed.rake.v1.0.price" Txse.TxseEquities.Seed.Rake.v1.0.LimitOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Txse/TxseEquities.Seed.Rake.v1.0/LogonRequestPacket.pcap" \
  -X "lua_script:Txse/TxseEquities/Seed/Txse_TxseEquities_Seed_Rake_v1_0_Dissector.lua" \
  -T json \
  > Txse.TxseEquities.Seed.Rake.v1.0.LogonRequestPacket.json 2> Txse.TxseEquities.Seed.Rake.v1.0.LogonRequestPacket.json.stderr \
  || { echo "--- tshark FAILED (LogonRequestPacket) ---"; cat Txse.TxseEquities.Seed.Rake.v1.0.LogonRequestPacket.json.stderr; exit 1; }

grep "txse.txseequities.seed.rake.v1.0.session" Txse.TxseEquities.Seed.Rake.v1.0.LogonRequestPacket.json
grep "txse.txseequities.seed.rake.v1.0.sendercomp" Txse.TxseEquities.Seed.Rake.v1.0.LogonRequestPacket.json
grep "txse.txseequities.seed.rake.v1.0.token" Txse.TxseEquities.Seed.Rake.v1.0.LogonRequestPacket.json
grep "txse.txseequities.seed.rake.v1.0.nextsequencenumber" Txse.TxseEquities.Seed.Rake.v1.0.LogonRequestPacket.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Txse/TxseEquities.Seed.Rake.v1.0/LogonResponseMessage.pcap" \
  -X "lua_script:Txse/TxseEquities/Seed/Txse_TxseEquities_Seed_Rake_v1_0_Dissector.lua" \
  -T json \
  > Txse.TxseEquities.Seed.Rake.v1.0.LogonResponseMessage.json 2> Txse.TxseEquities.Seed.Rake.v1.0.LogonResponseMessage.json.stderr \
  || { echo "--- tshark FAILED (LogonResponseMessage) ---"; cat Txse.TxseEquities.Seed.Rake.v1.0.LogonResponseMessage.json.stderr; exit 1; }

grep "txse.txseequities.seed.rake.v1.0.session" Txse.TxseEquities.Seed.Rake.v1.0.LogonResponseMessage.json
grep "txse.txseequities.seed.rake.v1.0.nextsequencenumber" Txse.TxseEquities.Seed.Rake.v1.0.LogonResponseMessage.json
grep "txse.txseequities.seed.rake.v1.0.highestknownsequencenumber" Txse.TxseEquities.Seed.Rake.v1.0.LogonResponseMessage.json
grep "txse.txseequities.seed.rake.v1.0.logonresponsecode" Txse.TxseEquities.Seed.Rake.v1.0.LogonResponseMessage.json
grep "txse.txseequities.seed.rake.v1.0.numberstreamids" Txse.TxseEquities.Seed.Rake.v1.0.LogonResponseMessage.json
grep "txse.txseequities.seed.rake.v1.0.instance" Txse.TxseEquities.Seed.Rake.v1.0.LogonResponseMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Txse/TxseEquities.Seed.Rake.v1.0/Reassembly.pcap" \
  -X "lua_script:Txse/TxseEquities/Seed/Txse_TxseEquities_Seed_Rake_v1_0_Dissector.lua" \
  -T json \
  > Txse.TxseEquities.Seed.Rake.v1.0.Reassembly.json 2> Txse.TxseEquities.Seed.Rake.v1.0.Reassembly.json.stderr \
  || { echo "--- tshark FAILED (Reassembly) ---"; cat Txse.TxseEquities.Seed.Rake.v1.0.Reassembly.json.stderr; exit 1; }

grep "txse.txseequities.seed.rake.v1.0." Txse.TxseEquities.Seed.Rake.v1.0.Reassembly.json

runuser -u tester -- tshark \
  -r "omi-data-packets/Txse/TxseEquities.Seed.Rake.v1.0/Reassembly.pcap" \
  -X "lua_script:Txse/TxseEquities/Seed/Txse_TxseEquities_Seed_Rake_v1_0_Dissector.lua" \
  -Y "tcp.segments" \
  | grep . \
  || { echo "--- no reassembly (Reassembly) ---"; exit 1; }
