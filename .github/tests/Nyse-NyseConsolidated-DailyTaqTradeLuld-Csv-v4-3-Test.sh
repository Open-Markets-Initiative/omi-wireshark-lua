set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3/TradeLuld.excerpt.gz" \
  -X "lua_script:Nyse/NyseConsolidated/DailyTaqTradeLuld/Nyse_NyseConsolidated_DailyTaqTradeLuld_Csv_v4_3_Dissector.lua" \
  -T json \
  > Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json 2> Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json.stderr \
  || { echo "--- tshark FAILED (TradeLuld.excerpt.gz) ---"; cat Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json.stderr; exit 1; }

grep "nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3." Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json

[ "$(grep -c -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.tradeluld"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json)" -eq 21 ] || { echo "--- 21 Trade Luld records expected (TradeLuld.excerpt.gz) ---"; exit 1; }

grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.time": "09:30:00.947197458"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.sequencenumber": "27748"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.source": "C"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.symbol": "A"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.lowprice": "126.34"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.highprice": "139.64"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.luldpricebandindicator": "A"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.time": "09:30:29.990503801"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.sequencenumber": "38680"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.luldpricebandindicator": "B"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.time": "09:30:59.990524744"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.sequencenumber": "41935"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.time": "09:31:29.990550230"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.sequencenumber": "45329"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.time": "09:31:59.990577479"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.sequencenumber": "48531"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.time": "09:32:29.990619136"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.sequencenumber": "56467"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.time": "09:32:59.990655862"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.sequencenumber": "60041"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.time": "09:33:29.990692827"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.sequencenumber": "63859"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.time": "09:33:59.990735182"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.sequencenumber": "66398"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.time": "09:34:29.990750668"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.sequencenumber": "73460"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.time": "09:34:59.990769158"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.sequencenumber": "76995"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.time": "09:35:29.990784748"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.sequencenumber": "81797"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.time": "09:35:59.990803395"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.sequencenumber": "86486"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.time": "09:36:29.990822152"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.sequencenumber": "92506"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.time": "09:36:59.990840732"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.sequencenumber": "97079"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.time": "09:37:29.990859425"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.sequencenumber": "102313"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.time": "09:37:59.990877976"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.sequencenumber": "107159"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.time": "09:38:29.990896718"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.sequencenumber": "111161"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.time": "09:38:59.990918312"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.sequencenumber": "116883"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.time": "09:39:29.990937722"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.sequencenumber": "121728"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.time": "23:11:27.554261775"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.sequencenumber": "2664034"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.symbol": "APPC"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.lowprice": "26.5"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.highprice": "41.74"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.luldpricebandindicator": "X"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.referenceprice": "39.75"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqtradeluld.csv.v4.3.numextensions": "0"' Nyse.NyseConsolidated.DailyTaqTradeLuld.Csv.v4.3.TradeLuld.json
