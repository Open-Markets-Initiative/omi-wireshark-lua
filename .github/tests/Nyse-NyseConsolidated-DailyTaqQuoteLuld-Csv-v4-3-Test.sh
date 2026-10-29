set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3/QuoteLuld.excerpt.gz" \
  -X "lua_script:Nyse/NyseConsolidated/DailyTaqQuoteLuld/Nyse_NyseConsolidated_DailyTaqQuoteLuld_Csv_v4_3_Dissector.lua" \
  -T json \
  > Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json 2> Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json.stderr \
  || { echo "--- tshark FAILED (QuoteLuld.excerpt.gz) ---"; cat Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json.stderr; exit 1; }

grep "nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3." Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json

[ "$(grep -c -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.quoteluld"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json)" -eq 22 ] || { echo "--- 22 Quote Luld records expected (QuoteLuld.excerpt.gz) ---"; exit 1; }

grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.time": "09:30:00.947197216"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.sequencenumber": "407755"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.source": "C"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.symbol": "A"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.lowprice": "126.34"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.highprice": "139.64"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.nationalbboluldindicator": "A"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.time": "09:30:29.990505093"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.sequencenumber": "458552"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.time": "09:30:59.990525721"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.sequencenumber": "480006"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.time": "09:31:29.990551491"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.sequencenumber": "503888"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.time": "09:31:59.990581623"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.sequencenumber": "529295"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.time": "09:32:29.990622316"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.sequencenumber": "570094"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.time": "09:32:59.990658091"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.sequencenumber": "588438"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.time": "09:33:29.990698424"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.sequencenumber": "617070"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.time": "09:33:59.990739268"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.sequencenumber": "635042"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.time": "09:34:29.990755026"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.sequencenumber": "669341"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.time": "09:34:59.990775257"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.sequencenumber": "690081"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.time": "09:35:29.990791110"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.sequencenumber": "724186"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.time": "09:35:59.990806468"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.sequencenumber": "752823"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.time": "09:36:29.990827176"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.sequencenumber": "791228"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.time": "09:36:59.990842689"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.sequencenumber": "824173"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.time": "09:37:29.990863330"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.sequencenumber": "859191"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.time": "09:37:59.990884033"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.sequencenumber": "894120"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.time": "09:38:29.990899691"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.sequencenumber": "926230"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.time": "09:38:59.990920326"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.sequencenumber": "966449"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.time": "09:39:29.990941069"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.sequencenumber": "997994"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.time": "09:30:02.009928046"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.sequencenumber": "6457255"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.source": "N"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.symbol": "AAAP"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.luldpricebandindicator": "A"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.lowprice": "23.92"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.highprice": "26.43"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.time": "11:11:27.554258149"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.sequencenumber": "102297515"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.symbol": "APPC"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.lowprice": "26.5"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.highprice": "41.74"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.referenceprice": "39.75"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
grep -F '"nyse.nyseconsolidated.dailytaqquoteluld.csv.v4.3.numextentions": "0"' Nyse.NyseConsolidated.DailyTaqQuoteLuld.Csv.v4.3.QuoteLuld.json
