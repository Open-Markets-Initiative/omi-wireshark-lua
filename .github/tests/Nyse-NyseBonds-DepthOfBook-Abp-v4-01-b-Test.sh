set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseBonds.DepthOfBook.Abp.v4.01.b/AddOrderMessage.pcap" \
  -X "lua_script:Nyse/NyseBonds/DepthOfBook/Nyse_NyseBonds_DepthOfBook_Abp_v4_01_b_Dissector.lua" \
  -T json \
  > Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.AddOrderMessage.json 2> Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.AddOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderMessage) ---"; cat Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.AddOrderMessage.json.stderr; exit 1; }

grep "nyse.nysebonds.depthofbook.abp.v4.01.b.time" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.AddOrderMessage.json
grep "nyse.nysebonds.depthofbook.abp.v4.01.b.sequencenumber" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.AddOrderMessage.json
grep "nyse.nysebonds.depthofbook.abp.v4.01.b.orderreferencenumber" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.AddOrderMessage.json
grep "nyse.nysebonds.depthofbook.abp.v4.01.b.quantity" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.AddOrderMessage.json
grep "nyse.nysebonds.depthofbook.abp.v4.01.b.price" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.AddOrderMessage.json
grep "nyse.nysebonds.depthofbook.abp.v4.01.b.pricescalecode" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.AddOrderMessage.json
grep "nyse.nysebonds.depthofbook.abp.v4.01.b.exchangecode" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.AddOrderMessage.json
grep "nyse.nysebonds.depthofbook.abp.v4.01.b.systemcode" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.AddOrderMessage.json
grep "nyse.nysebonds.depthofbook.abp.v4.01.b.buysellindicator" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.AddOrderMessage.json
grep "nyse.nysebonds.depthofbook.abp.v4.01.b.flatpricing" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.AddOrderMessage.json
grep "nyse.nysebonds.depthofbook.abp.v4.01.b.tradingaction" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.AddOrderMessage.json
grep "nyse.nysebonds.depthofbook.abp.v4.01.b.securitytype" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.AddOrderMessage.json
grep "nyse.nysebonds.depthofbook.abp.v4.01.b.ordertype" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.AddOrderMessage.json
grep "nyse.nysebonds.depthofbook.abp.v4.01.b.nysebondsymbol" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.AddOrderMessage.json
grep "nyse.nysebonds.depthofbook.abp.v4.01.b.cusipisin" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.AddOrderMessage.json
grep "nyse.nysebonds.depthofbook.abp.v4.01.b.quoteid" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.AddOrderMessage.json
grep "nyse.nysebonds.depthofbook.abp.v4.01.b.paddingascii3" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.AddOrderMessage.json
grep "nyse.nysebonds.depthofbook.abp.v4.01.b.minimumquantity" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.AddOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseBonds.DepthOfBook.Abp.v4.01.b/DeleteOrderMessage.pcap" \
  -X "lua_script:Nyse/NyseBonds/DepthOfBook/Nyse_NyseBonds_DepthOfBook_Abp_v4_01_b_Dissector.lua" \
  -T json \
  > Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.DeleteOrderMessage.json 2> Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.DeleteOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (DeleteOrderMessage) ---"; cat Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.DeleteOrderMessage.json.stderr; exit 1; }

grep "nyse.nysebonds.depthofbook.abp.v4.01.b.time" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.DeleteOrderMessage.json
grep "nyse.nysebonds.depthofbook.abp.v4.01.b.sequencenumber" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.DeleteOrderMessage.json
grep "nyse.nysebonds.depthofbook.abp.v4.01.b.orderreferencenumber" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.DeleteOrderMessage.json
grep "nyse.nysebonds.depthofbook.abp.v4.01.b.exchangecode" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.DeleteOrderMessage.json
grep "nyse.nysebonds.depthofbook.abp.v4.01.b.systemcode" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.DeleteOrderMessage.json
grep "nyse.nysebonds.depthofbook.abp.v4.01.b.buysellindicator" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.DeleteOrderMessage.json
grep "nyse.nysebonds.depthofbook.abp.v4.01.b.flatpricing" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.DeleteOrderMessage.json
grep "nyse.nysebonds.depthofbook.abp.v4.01.b.tradingaction" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.DeleteOrderMessage.json
grep "nyse.nysebonds.depthofbook.abp.v4.01.b.securitytype" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.DeleteOrderMessage.json
grep "nyse.nysebonds.depthofbook.abp.v4.01.b.ordertype" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.DeleteOrderMessage.json
grep "nyse.nysebonds.depthofbook.abp.v4.01.b.nysebondsymbol" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.DeleteOrderMessage.json
grep "nyse.nysebonds.depthofbook.abp.v4.01.b.cusipisin" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.DeleteOrderMessage.json
grep "nyse.nysebonds.depthofbook.abp.v4.01.b.quoteid" Nyse.NyseBonds.DepthOfBook.Abp.v4.01.b.DeleteOrderMessage.json
