set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseConsolidated.DailyTaqTrades.Csv.v4.3/Trades.excerpt.gz" \
  -X "lua_script:Nyse/NyseConsolidated/DailyTaqTrades/Nyse_NyseConsolidated_DailyTaqTrades_Csv_v4_3_Dissector.lua" \
  -T json \
  > Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json 2> Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json.stderr \
  || { echo "--- tshark FAILED (Trades.excerpt.gz) ---"; cat Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json.stderr; exit 1; }

grep "nyse.nyseconsolidated.dailytaqtrades.csv.v4.3." Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json

[ "$(grep -c -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.trade"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json)" -eq 21 ] || { echo "--- 21 Trade records expected (Trades.excerpt.gz) ---"; exit 1; }

grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.time": "04:00:05.130764945"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.exchange": "D"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.symbol": "A"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.salecondition": "  TI"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradevolume": "1"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradeprice": "131.05"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradestopstockindicator": "N"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradecorrectionindicator": "00"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.sequencenumber": "3503"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradeid": "52983525036102"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.sourceoftrade": "C"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradereportingfacility": "N"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.participanttimestamp": "00:39:32.500549904"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradereportingfacilitytrftimestamp": "04:00:05.130729957"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradethroughexemptindicator": "0"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.time": "07:00:13.693798242"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.exchange": "K"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.salecondition": " FTI"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradeprice": "132.5"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.sequencenumber": "10682"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradeid": "52983525029997"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.participanttimestamp": "07:00:13.693548966"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradethroughexemptindicator": "1"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.time": "07:00:17.406971571"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.exchange": "P"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradevolume": "9"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradeprice": "132.01"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.sequencenumber": "10711"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradeid": "52983525430358"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.participanttimestamp": "07:00:17.406943119"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.time": "07:01:20.779677165"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradevolume": "5"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.sequencenumber": "10789"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradeid": "52983525486905"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.participanttimestamp": "07:01:20.779645422"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.time": "07:04:00.039212747"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradevolume": "2"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradeprice": "132"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.sequencenumber": "10965"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradeid": "52983525488184"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.participanttimestamp": "07:04:00.039183827"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.time": "07:04:00.039233769"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.sequencenumber": "10966"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradeid": "52983525030223"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.participanttimestamp": "07:04:00.038980988"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.time": "07:04:00.039420274"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradevolume": "4"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.sequencenumber": "10967"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradeid": "52983525488185"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.participanttimestamp": "07:04:00.039396366"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.time": "07:04:46.246431095"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.sequencenumber": "11094"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradeid": "52983525488952"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.participanttimestamp": "07:04:46.246400792"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.time": "07:11:50.537494810"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.sequencenumber": "11768"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradeid": "52983525492808"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.participanttimestamp": "07:11:50.537462123"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.time": "07:11:50.553793543"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.sequencenumber": "11771"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradeid": "52983525492809"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.participanttimestamp": "07:11:50.553768938"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.time": "07:14:05.556383795"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.sequencenumber": "11833"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradeid": "52983525493812"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.participanttimestamp": "07:14:05.556353936"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.time": "07:19:11.826432335"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.sequencenumber": "12072"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradeid": "52983525494839"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.participanttimestamp": "07:19:11.826399799"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.time": "07:21:38.429462025"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.sequencenumber": "12190"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradeid": "52983525495617"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.participanttimestamp": "07:21:38.429429773"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.time": "07:22:41.123868298"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.sequencenumber": "12227"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradeid": "52983525495893"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.participanttimestamp": "07:22:41.123837026"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.time": "07:25:08.541118395"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.sequencenumber": "12380"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradeid": "52983525552437"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.participanttimestamp": "07:25:08.541087889"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.time": "07:28:17.853132264"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.sequencenumber": "12526"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradeid": "52983525553207"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.participanttimestamp": "07:28:17.853106981"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.time": "07:31:18.665215029"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.sequencenumber": "12724"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradeid": "52983525553997"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.participanttimestamp": "07:31:18.665179116"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.time": "07:38:20.521631199"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.salecondition": "C TI"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradevolume": "0.937"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradeprice": "132.83"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.sequencenumber": "13225"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradeid": "71675359020887"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradereportingfacility": "T"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.participanttimestamp": "07:38:19.560379000"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradereportingfacilitytrftimestamp": "07:38:20.521267467"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.time": "07:38:38.348271901"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.sequencenumber": "13247"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradeid": "52983525558614"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.participanttimestamp": "07:38:38.348243444"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.time": "07:39:15.561441718"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradevolume": "0.818"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.sequencenumber": "13300"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradeid": "71675359151411"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.participanttimestamp": "07:39:15.080665000"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradereportingfacilitytrftimestamp": "07:39:15.561077223"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.time": "09:30:01.587055099"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.exchange": "Q"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.symbol": "AACB R"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.salecondition": "@O I"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradevolume": "6"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradeprice": "0.21"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.sequencenumber": "483359"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradeid": "1"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.sourceoftrade": "N"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.tradereportingfacility": " "' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
grep -F '"nyse.nyseconsolidated.dailytaqtrades.csv.v4.3.participanttimestamp": "09:30:01.587036795"' Nyse.NyseConsolidated.DailyTaqTrades.Csv.v4.3.Trades.json
