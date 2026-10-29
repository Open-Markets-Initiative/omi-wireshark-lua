set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseConsolidated.DailyTaqMaster.Csv.v4.3/Master.excerpt.gz" \
  -X "lua_script:Nyse/NyseConsolidated/DailyTaqMaster/Nyse_NyseConsolidated_DailyTaqMaster_Csv_v4_3_Dissector.lua" \
  -T json \
  > Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json 2> Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json.stderr \
  || { echo "--- tshark FAILED (Master.excerpt.gz) ---"; cat Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json.stderr; exit 1; }

grep "nyse.nyseconsolidated.dailytaqmaster.csv.v4.3." Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json

[ "$(grep -c -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.security"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json)" -eq 23 ] || { echo "--- 23 Security records expected (Master.excerpt.gz) ---"; exit 1; }

grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.symbol": "A"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitydescription": "Agilent Technologies Inc."' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.cusip": "00846U101"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitytype": "A"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sipsymbol": "A"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.testsymbolflag": "N"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.listedexchange": "N"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tape": "A"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.unitoftrade": "1"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.roundlot": "100"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.nyseindustrycode": "114A"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sharesoutstanding": "282.43"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.specialistclearingagent": "G"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.specialistclearingnumber": "5"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.specialistpostnumber": "8"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.specialistpanel": "I"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonnysemkt": "1"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonnasdaqbx": "1"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonnsx": "1"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonfinra": "1"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonise": "0"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonedgea": "1"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonedgex": "1"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonnysetexas": "1"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonnyse": "1"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonarca": "1"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonnasdaq": "1"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedoncboe": "0"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonpsx": "1"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonbatsy": "1"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonbats": "1"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedoniex": "1"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.effectivedate": "1999-11-18"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonltse": "1"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonmemx": "1"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonmiax": "1"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedon24x": "0"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedontxse": "0"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.symbol": "AA"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitydescription": "Alcoa Corporation"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.cusip": "013872106"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sipsymbol": "AA"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.nyseindustrycode": "130A"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sharesoutstanding": "263.89"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.specialistpanel": "U"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.effectivedate": "2016-10-18"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonltse": "0"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedon24x": "1"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.symbol": "AAA"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitydescription": "Alternative Access First Priority CLO Bond ETF"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.cusip": "46144X610"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitytype": "ETF"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sipsymbol": "AAA"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.listedexchange": "P"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tape": "B"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.nyseindustrycode": "416A"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sharesoutstanding": "1.8"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonnysemkt": "0"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonnasdaqbx": "0"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonnsx": "0"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonedgea": "0"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonedgex": "0"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonnysetexas": "0"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonnyse": "0"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonpsx": "0"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonbatsy": "0"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.effectivedate": "2022-10-17"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonmemx": "0"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonmiax": "0"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.symbol": "AAAA"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitydescription": "Amplius Aggressive Asset Allocation ETF"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.cusip": "02072Q689"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sipsymbol": "AAAA"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.listedexchange": "Z"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sharesoutstanding": "9.18"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.symbol": "AAAC"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitydescription": "Columbia AAA CLO ETF"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.cusip": "19761L763"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sipsymbol": "AAAC"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sharesoutstanding": "0.45"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonbats": "0"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedoniex": "0"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.effectivedate": "2025-12-11"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.symbol": "AAAD"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitydescription": "PGIM AAA CLO Aggregate Duration ETF"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.cusip": "69344A727"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sipsymbol": "AAAD"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sharesoutstanding": "0.53"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonnasdaq": "0"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.effectivedate": "2026-06-03"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.symbol": "AAAP"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitydescription": "Pacer Barings CLO Market Flex ETF"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.cusip": "69384J604"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sipsymbol": "AAAP"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.listedexchange": "Q"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tape": "C"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sharesoutstanding": "1.03"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonarca": "0"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.symbol": "AAAU"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitydescription": "Goldman Sachs Physical Gold ETF Shares"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.cusip": "38150K103"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sipsymbol": "AAAU"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sharesoutstanding": "60.46"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.symbol": "AAC U"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitydescription": "Ares Acquisition Corporation III Units, each consisting of one Class A ordinary share and one-tenth of one redeemable warrant"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.cusip": "G3303U112"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitytype": "R"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sipsymbol": "AAC.U"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sharesoutstanding": "30"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.specialistclearingagent": "CDRG"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.specialistclearingnumber": "8430"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.specialistpostnumber": "5"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.specialistpanel": "J"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.effectivedate": "2026-06-30"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.symbol": "AACB"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitydescription": "Artius II Acquisition Inc. Class A Ordinary Shares"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.cusip": "G0509J115"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sipsymbol": "AACB"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sharesoutstanding": "22.18"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.symbol": "AACB R"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitydescription": "Artius II Acquisition Inc. Rights"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.cusip": "G0509J123"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitytype": "D"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sipsymbol": "AACBR"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.tradedonfinra": "0"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.symbol": "AACB U"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitydescription": "Artius II Acquisition Inc. Units"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.cusip": "G0509J107"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sipsymbol": "AACBU"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sharesoutstanding": "0"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.symbol": "AACG"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitydescription": "ATA Creativity Global American Depositary Shares"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.cusip": "00211V106"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitytype": "H"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sipsymbol": "AACG"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sharesoutstanding": "87"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.symbol": "AACI"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitydescription": "Armada Acquisition Corp. III Class A Ordinary Share"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.cusip": "G0R38M101"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sipsymbol": "AACI"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sharesoutstanding": "25.52"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.symbol": "AACI U"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitydescription": "Armada Acquisition Corp. III Units"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.cusip": "G0R38M127"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sipsymbol": "AACIU"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.symbol": "AACI W"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitydescription": "Armada Acquisition Corp. III Warrant"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.cusip": "G0R38M119"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitytype": "C"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sipsymbol": "AACIW"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.symbol": "AACO"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitydescription": "Abony Acquisition Corp. I Class A Ordinary Share"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.cusip": "G00582109"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sipsymbol": "AACO"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sharesoutstanding": "23"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.symbol": "AACO U"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitydescription": "Abony Acquisition Corp. I Units"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.cusip": "G00582125"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sipsymbol": "AACOU"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.symbol": "AACO W"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitydescription": "Abony Acquisition Corp. I Warrants"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.cusip": "G00582117"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sipsymbol": "AACOW"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.symbol": "AACP"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitydescription": "Apogee Acquisition Corp Class A Ordinary Shares"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.cusip": "G04126101"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sipsymbol": "AACP"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sharesoutstanding": "17.72"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.symbol": "DYLG"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitydescription": "Global X Dow 30 Covered Call & Growth ETF"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.cusip": "37960A511"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sipsymbol": "DYLG"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sharesoutstanding": "0.22"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.effectivedate": "2023-07-26"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.symbol": "LND"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitydescription": "BrasilAgro - Companhia Brasileira de Propriedades Agra­colas"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.cusip": "10554B104"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sipsymbol": "LND"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.nyseindustrycode": "118C"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sharesoutstanding": "102.68"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.specialistpostnumber": "6"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.effectivedate": "2012-11-08"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.symbol": "LOMA"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.securitydescription": "Loma Negra Compañía Industrial Argentina Sociedad Anónima American Depositary Shares (ADSs), each representing five ordinary shares"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.cusip": "54150E104"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sipsymbol": "LOMA"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.nyseindustrycode": "110C"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.sharesoutstanding": "596.03"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.specialistpanel": "Q"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
grep -F '"nyse.nyseconsolidated.dailytaqmaster.csv.v4.3.effectivedate": "2017-11-01"' Nyse.NyseConsolidated.DailyTaqMaster.Csv.v4.3.Master.json
