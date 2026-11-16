set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NationalEquities.IntegratedFeedStockSummary.Pillar.v2.5.g/StockSummaryMessage.pcap" \
  -X "lua_script:Nyse/NationalEquities/IntegratedFeedStockSummary/Nyse_NationalEquities_IntegratedFeedStockSummary_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NationalEquities.IntegratedFeedStockSummary.Pillar.v2.5.g.StockSummaryMessage.json 2> Nyse.NationalEquities.IntegratedFeedStockSummary.Pillar.v2.5.g.StockSummaryMessage.json.stderr \
  || { echo "--- tshark FAILED (StockSummaryMessage) ---"; cat Nyse.NationalEquities.IntegratedFeedStockSummary.Pillar.v2.5.g.StockSummaryMessage.json.stderr; exit 1; }

grep "nyse.nationalequities.integratedfeedstocksummary.pillar.v2.5.g.sourcetime" Nyse.NationalEquities.IntegratedFeedStockSummary.Pillar.v2.5.g.StockSummaryMessage.json
grep "nyse.nationalequities.integratedfeedstocksummary.pillar.v2.5.g.sourcetimens" Nyse.NationalEquities.IntegratedFeedStockSummary.Pillar.v2.5.g.StockSummaryMessage.json
grep "nyse.nationalequities.integratedfeedstocksummary.pillar.v2.5.g.symbolindex" Nyse.NationalEquities.IntegratedFeedStockSummary.Pillar.v2.5.g.StockSummaryMessage.json
grep "nyse.nationalequities.integratedfeedstocksummary.pillar.v2.5.g.highprice" Nyse.NationalEquities.IntegratedFeedStockSummary.Pillar.v2.5.g.StockSummaryMessage.json
grep "nyse.nationalequities.integratedfeedstocksummary.pillar.v2.5.g.lowprice" Nyse.NationalEquities.IntegratedFeedStockSummary.Pillar.v2.5.g.StockSummaryMessage.json
grep "nyse.nationalequities.integratedfeedstocksummary.pillar.v2.5.g.open" Nyse.NationalEquities.IntegratedFeedStockSummary.Pillar.v2.5.g.StockSummaryMessage.json
grep "nyse.nationalequities.integratedfeedstocksummary.pillar.v2.5.g.close" Nyse.NationalEquities.IntegratedFeedStockSummary.Pillar.v2.5.g.StockSummaryMessage.json
grep "nyse.nationalequities.integratedfeedstocksummary.pillar.v2.5.g.totalvolume" Nyse.NationalEquities.IntegratedFeedStockSummary.Pillar.v2.5.g.StockSummaryMessage.json
