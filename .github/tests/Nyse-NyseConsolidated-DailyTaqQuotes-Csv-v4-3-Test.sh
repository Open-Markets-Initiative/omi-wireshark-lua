set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseConsolidated.DailyTaqQuotes.Csv.v4.3/Quotes.excerpt.gz" \
  -X "lua_script:Nyse/NyseConsolidated/DailyTaqQuotes/Nyse_NyseConsolidated_DailyTaqQuotes_Csv_v4_3_Dissector.lua" \
  -T json \
  > Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json 2> Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json.stderr \
  || { echo "--- tshark FAILED (Quotes.excerpt.gz) ---"; cat Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json.stderr; exit 1; }

grep "nyse.nyseconsolidated.dailytaqquotes.csv.v4.3." Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json

[ "$(grep -c -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.quote"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json)" -eq 22 ] || { echo "--- 22 Quote records expected (Quotes.excerpt.gz) ---"; exit 1; }

grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.time": "03:11:37.267150601"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.exchange": "T"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.symbol": "J"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.bidprice": "0"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.bidsize": "0"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.offerprice": "0"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.offersize": "0"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.quotecondition": "R"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.sequencenumber": "229"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.nationalbboind": "O"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.finrabboindicator": " "' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.sourceofquote": "C"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.participanttimestamp": "03:11:37.266795813"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.securitystatusindicator": " "' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.time": "03:13:32.088028541"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.exchange": "B"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.sequencenumber": "431"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.participanttimestamp": "03:13:32.087669805"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.time": "03:16:06.126277010"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.exchange": "X"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.sequencenumber": "633"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.participanttimestamp": "03:16:06.125924856"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.time": "03:59:00.089643402"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.exchange": "Z"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.sequencenumber": "982"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.participanttimestamp": "03:59:00.089366373"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.time": "03:59:00.116286892"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.exchange": "K"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.sequencenumber": "1043"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.participanttimestamp": "03:59:00.116013862"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.time": "04:00:00.000433055"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.exchange": "H"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.sequencenumber": "1221"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.participanttimestamp": "04:00:00.000002933"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.time": "04:00:00.005976304"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.offerprice": "158"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.offersize": "200"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.sequencenumber": "1483"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.nationalbboind": "G"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.participanttimestamp": "04:00:00.000464705"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.time": "04:00:00.005986240"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.offerprice": "140"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.offersize": "100"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.sequencenumber": "1484"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.time": "04:00:00.006001329"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.bidprice": "115.17"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.bidsize": "200"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.sequencenumber": "1485"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.time": "04:00:00.006011613"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.offerprice": "129.1"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.offersize": "2000"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.sequencenumber": "1487"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.time": "04:00:00.006031398"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.offerprice": "129"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.sequencenumber": "1488"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.time": "04:00:00.006076565"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.sequencenumber": "1492"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.nationalbboind": "A"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.time": "04:00:00.031993203"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.exchange": "P"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.offerprice": "150"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.sequencenumber": "2919"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.participanttimestamp": "04:00:00.028630500"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.time": "04:00:00.032003253"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.offerprice": "133.14"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.sequencenumber": "2921"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.participanttimestamp": "04:00:00.028632112"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.time": "04:00:00.043786306"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.bidprice": "107.98"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.bidsize": "100"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.sequencenumber": "3250"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.participanttimestamp": "04:00:00.043557103"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.time": "04:00:00.091048898"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.offerprice": "130.01"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.sequencenumber": "3547"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.participanttimestamp": "04:00:00.091022977"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.time": "04:00:00.091429859"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.offerprice": "137.06"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.sequencenumber": "3552"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.participanttimestamp": "04:00:00.091200644"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.time": "04:00:00.095369191"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.bidprice": "114.16"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.sequencenumber": "3562"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.participanttimestamp": "04:00:00.095345932"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.time": "04:00:00.391514563"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.sequencenumber": "3965"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.participanttimestamp": "04:00:00.391287569"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.time": "04:00:00.391554674"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.bidprice": "107.81"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.sequencenumber": "3966"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.nationalbboind": "U"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.participanttimestamp": "04:00:00.391332172"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.time": "16:00:01.116239995"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.exchange": "Q"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.symbol": "JABR U"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.bidprice": "0.0001"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.offerprice": "2147.48"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.sequencenumber": "148829294"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.nationalbboind": "0"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.sourceofquote": "N"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.shortsalerestrictionindicator": "0"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.participanttimestamp": "16:00:01.116226454"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.time": "03:59:30.066150489"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.symbol": "JULI"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.quotecondition": " "' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.sequencenumber": "1155"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.participanttimestamp": "03:59:30.065847309"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
grep -F '"nyse.nyseconsolidated.dailytaqquotes.csv.v4.3.securitystatusindicator": "O"' Nyse.NyseConsolidated.DailyTaqQuotes.Csv.v4.3.Quotes.json
