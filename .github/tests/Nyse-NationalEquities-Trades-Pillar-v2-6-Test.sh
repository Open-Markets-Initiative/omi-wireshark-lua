set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NationalEquities.Trades.Pillar.v2.6/SecurityStatusMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NationalEquities_Trades_Pillar_v2_6_Dissector.lua" \
  -T json \
  > Nyse.NationalEquities.Trades.Pillar.v2.6.SecurityStatusMessage.json 2> Nyse.NationalEquities.Trades.Pillar.v2.6.SecurityStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityStatusMessage) ---"; cat Nyse.NationalEquities.Trades.Pillar.v2.6.SecurityStatusMessage.json.stderr; exit 1; }

grep "nyse.nationalequities.trades.pillar.v2.6.sourcetime" Nyse.NationalEquities.Trades.Pillar.v2.6.SecurityStatusMessage.json
grep "nyse.nationalequities.trades.pillar.v2.6.sourcetimens" Nyse.NationalEquities.Trades.Pillar.v2.6.SecurityStatusMessage.json
grep "nyse.nationalequities.trades.pillar.v2.6.symbolindex" Nyse.NationalEquities.Trades.Pillar.v2.6.SecurityStatusMessage.json
grep "nyse.nationalequities.trades.pillar.v2.6.symbolseqnum" Nyse.NationalEquities.Trades.Pillar.v2.6.SecurityStatusMessage.json
grep "nyse.nationalequities.trades.pillar.v2.6.securitystatus" Nyse.NationalEquities.Trades.Pillar.v2.6.SecurityStatusMessage.json
grep "nyse.nationalequities.trades.pillar.v2.6.haltcondition" Nyse.NationalEquities.Trades.Pillar.v2.6.SecurityStatusMessage.json
grep "nyse.nationalequities.trades.pillar.v2.6.reserved4" Nyse.NationalEquities.Trades.Pillar.v2.6.SecurityStatusMessage.json
grep "nyse.nationalequities.trades.pillar.v2.6.price1" Nyse.NationalEquities.Trades.Pillar.v2.6.SecurityStatusMessage.json
grep "nyse.nationalequities.trades.pillar.v2.6.price2" Nyse.NationalEquities.Trades.Pillar.v2.6.SecurityStatusMessage.json
grep "nyse.nationalequities.trades.pillar.v2.6.ssrtriggeringexchangeid" Nyse.NationalEquities.Trades.Pillar.v2.6.SecurityStatusMessage.json
grep "nyse.nationalequities.trades.pillar.v2.6.ssrtriggeringvolume" Nyse.NationalEquities.Trades.Pillar.v2.6.SecurityStatusMessage.json
grep "nyse.nationalequities.trades.pillar.v2.6.time" Nyse.NationalEquities.Trades.Pillar.v2.6.SecurityStatusMessage.json
grep "nyse.nationalequities.trades.pillar.v2.6.ssrstate" Nyse.NationalEquities.Trades.Pillar.v2.6.SecurityStatusMessage.json
grep "nyse.nationalequities.trades.pillar.v2.6.marketstate" Nyse.NationalEquities.Trades.Pillar.v2.6.SecurityStatusMessage.json
grep "nyse.nationalequities.trades.pillar.v2.6.sessionstate" Nyse.NationalEquities.Trades.Pillar.v2.6.SecurityStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NationalEquities.Trades.Pillar.v2.6/TradeMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NationalEquities_Trades_Pillar_v2_6_Dissector.lua" \
  -T json \
  > Nyse.NationalEquities.Trades.Pillar.v2.6.TradeMessage.json 2> Nyse.NationalEquities.Trades.Pillar.v2.6.TradeMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeMessage) ---"; cat Nyse.NationalEquities.Trades.Pillar.v2.6.TradeMessage.json.stderr; exit 1; }

grep "nyse.nationalequities.trades.pillar.v2.6.sourcetime" Nyse.NationalEquities.Trades.Pillar.v2.6.TradeMessage.json
grep "nyse.nationalequities.trades.pillar.v2.6.sourcetimens" Nyse.NationalEquities.Trades.Pillar.v2.6.TradeMessage.json
grep "nyse.nationalequities.trades.pillar.v2.6.symbolindex" Nyse.NationalEquities.Trades.Pillar.v2.6.TradeMessage.json
grep "nyse.nationalequities.trades.pillar.v2.6.symbolseqnum" Nyse.NationalEquities.Trades.Pillar.v2.6.TradeMessage.json
grep "nyse.nationalequities.trades.pillar.v2.6.tradeid" Nyse.NationalEquities.Trades.Pillar.v2.6.TradeMessage.json
grep "nyse.nationalequities.trades.pillar.v2.6.price" Nyse.NationalEquities.Trades.Pillar.v2.6.TradeMessage.json
grep "nyse.nationalequities.trades.pillar.v2.6.volume" Nyse.NationalEquities.Trades.Pillar.v2.6.TradeMessage.json
grep "nyse.nationalequities.trades.pillar.v2.6.tradecond1" Nyse.NationalEquities.Trades.Pillar.v2.6.TradeMessage.json
grep "nyse.nationalequities.trades.pillar.v2.6.tradecond2" Nyse.NationalEquities.Trades.Pillar.v2.6.TradeMessage.json
grep "nyse.nationalequities.trades.pillar.v2.6.tradecond3" Nyse.NationalEquities.Trades.Pillar.v2.6.TradeMessage.json
grep "nyse.nationalequities.trades.pillar.v2.6.tradecond4" Nyse.NationalEquities.Trades.Pillar.v2.6.TradeMessage.json
