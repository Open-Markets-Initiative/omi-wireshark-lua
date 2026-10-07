set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastDepthOfBook.Pitch.v1.1.12/FuturesInstrumentDefinitionMessage.pcap" \
  -X "lua_script:Cboe/CfeFutures/MulticastDepthOfBook/Cboe_CfeFutures_MulticastDepthOfBook_Pitch_v1_1_12_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.12.FuturesInstrumentDefinitionMessage.json 2> Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.12.FuturesInstrumentDefinitionMessage.json.stderr \
  || { echo "--- tshark FAILED (FuturesInstrumentDefinitionMessage) ---"; cat Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.12.FuturesInstrumentDefinitionMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicastdepthofbook.pitch.v1.1.12.timeoffset" Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.12.FuturesInstrumentDefinitionMessage.json
grep "cboe.cfefutures.multicastdepthofbook.pitch.v1.1.12.symbol" Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.12.FuturesInstrumentDefinitionMessage.json
grep "cboe.cfefutures.multicastdepthofbook.pitch.v1.1.12.unittimestamp" Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.12.FuturesInstrumentDefinitionMessage.json
grep "cboe.cfefutures.multicastdepthofbook.pitch.v1.1.12.reportsymbol" Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.12.FuturesInstrumentDefinitionMessage.json
grep "cboe.cfefutures.multicastdepthofbook.pitch.v1.1.12.futuresflags" Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.12.FuturesInstrumentDefinitionMessage.json
grep "cboe.cfefutures.multicastdepthofbook.pitch.v1.1.12.expirationdate" Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.12.FuturesInstrumentDefinitionMessage.json
grep "cboe.cfefutures.multicastdepthofbook.pitch.v1.1.12.contractsize" Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.12.FuturesInstrumentDefinitionMessage.json
grep "cboe.cfefutures.multicastdepthofbook.pitch.v1.1.12.listingstate" Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.12.FuturesInstrumentDefinitionMessage.json
grep "cboe.cfefutures.multicastdepthofbook.pitch.v1.1.12.priceincrement" Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.12.FuturesInstrumentDefinitionMessage.json
grep "cboe.cfefutures.multicastdepthofbook.pitch.v1.1.12.legcount" Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.12.FuturesInstrumentDefinitionMessage.json
grep "cboe.cfefutures.multicastdepthofbook.pitch.v1.1.12.legoffset" Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.12.FuturesInstrumentDefinitionMessage.json
grep "cboe.cfefutures.multicastdepthofbook.pitch.v1.1.12.varianceblockoffset" Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.12.FuturesInstrumentDefinitionMessage.json
grep "cboe.cfefutures.multicastdepthofbook.pitch.v1.1.12.contractdate" Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.12.FuturesInstrumentDefinitionMessage.json
