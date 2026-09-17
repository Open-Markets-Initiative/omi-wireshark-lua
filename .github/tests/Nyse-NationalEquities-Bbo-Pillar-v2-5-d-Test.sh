set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NationalEquities.Bbo.Pillar.v2.5.d/QuoteMessage.pcap" \
  -X "lua_script:Nyse/NationalEquities/Bbo/Nyse_NationalEquities_Bbo_Pillar_v2_5_d_Dissector.lua" \
  -T json \
  > Nyse.NationalEquities.Bbo.Pillar.v2.5.d.QuoteMessage.json 2> Nyse.NationalEquities.Bbo.Pillar.v2.5.d.QuoteMessage.json.stderr \
  || { echo "--- tshark FAILED (QuoteMessage) ---"; cat Nyse.NationalEquities.Bbo.Pillar.v2.5.d.QuoteMessage.json.stderr; exit 1; }

grep "nyse.nationalequities.bbo.pillar.v2.5.d.sourcetimens" Nyse.NationalEquities.Bbo.Pillar.v2.5.d.QuoteMessage.json
grep "nyse.nationalequities.bbo.pillar.v2.5.d.symbolindex" Nyse.NationalEquities.Bbo.Pillar.v2.5.d.QuoteMessage.json
grep "nyse.nationalequities.bbo.pillar.v2.5.d.symbolseqnum" Nyse.NationalEquities.Bbo.Pillar.v2.5.d.QuoteMessage.json
grep "nyse.nationalequities.bbo.pillar.v2.5.d.askprice" Nyse.NationalEquities.Bbo.Pillar.v2.5.d.QuoteMessage.json
grep "nyse.nationalequities.bbo.pillar.v2.5.d.askvolume" Nyse.NationalEquities.Bbo.Pillar.v2.5.d.QuoteMessage.json
grep "nyse.nationalequities.bbo.pillar.v2.5.d.bidprice" Nyse.NationalEquities.Bbo.Pillar.v2.5.d.QuoteMessage.json
grep "nyse.nationalequities.bbo.pillar.v2.5.d.bidvolume" Nyse.NationalEquities.Bbo.Pillar.v2.5.d.QuoteMessage.json
grep "nyse.nationalequities.bbo.pillar.v2.5.d.quotecondition" Nyse.NationalEquities.Bbo.Pillar.v2.5.d.QuoteMessage.json
grep "nyse.nationalequities.bbo.pillar.v2.5.d.rpiindicator" Nyse.NationalEquities.Bbo.Pillar.v2.5.d.QuoteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NationalEquities.Bbo.Pillar.v2.5.d/SecurityStatusMessage.pcap" \
  -X "lua_script:Nyse/NationalEquities/Bbo/Nyse_NationalEquities_Bbo_Pillar_v2_5_d_Dissector.lua" \
  -T json \
  > Nyse.NationalEquities.Bbo.Pillar.v2.5.d.SecurityStatusMessage.json 2> Nyse.NationalEquities.Bbo.Pillar.v2.5.d.SecurityStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityStatusMessage) ---"; cat Nyse.NationalEquities.Bbo.Pillar.v2.5.d.SecurityStatusMessage.json.stderr; exit 1; }

grep "nyse.nationalequities.bbo.pillar.v2.5.d.sourcetime" Nyse.NationalEquities.Bbo.Pillar.v2.5.d.SecurityStatusMessage.json
grep "nyse.nationalequities.bbo.pillar.v2.5.d.sourcetimens" Nyse.NationalEquities.Bbo.Pillar.v2.5.d.SecurityStatusMessage.json
grep "nyse.nationalequities.bbo.pillar.v2.5.d.symbolindex" Nyse.NationalEquities.Bbo.Pillar.v2.5.d.SecurityStatusMessage.json
grep "nyse.nationalequities.bbo.pillar.v2.5.d.symbolseqnum" Nyse.NationalEquities.Bbo.Pillar.v2.5.d.SecurityStatusMessage.json
grep "nyse.nationalequities.bbo.pillar.v2.5.d.securitystatus" Nyse.NationalEquities.Bbo.Pillar.v2.5.d.SecurityStatusMessage.json
grep "nyse.nationalequities.bbo.pillar.v2.5.d.haltcondition" Nyse.NationalEquities.Bbo.Pillar.v2.5.d.SecurityStatusMessage.json
grep "nyse.nationalequities.bbo.pillar.v2.5.d.reserved4" Nyse.NationalEquities.Bbo.Pillar.v2.5.d.SecurityStatusMessage.json
grep "nyse.nationalequities.bbo.pillar.v2.5.d.price1" Nyse.NationalEquities.Bbo.Pillar.v2.5.d.SecurityStatusMessage.json
grep "nyse.nationalequities.bbo.pillar.v2.5.d.price2" Nyse.NationalEquities.Bbo.Pillar.v2.5.d.SecurityStatusMessage.json
grep "nyse.nationalequities.bbo.pillar.v2.5.d.ssrtriggeringexchangeid" Nyse.NationalEquities.Bbo.Pillar.v2.5.d.SecurityStatusMessage.json
grep "nyse.nationalequities.bbo.pillar.v2.5.d.ssrtriggeringvolume" Nyse.NationalEquities.Bbo.Pillar.v2.5.d.SecurityStatusMessage.json
grep "nyse.nationalequities.bbo.pillar.v2.5.d.time" Nyse.NationalEquities.Bbo.Pillar.v2.5.d.SecurityStatusMessage.json
grep "nyse.nationalequities.bbo.pillar.v2.5.d.ssrstate" Nyse.NationalEquities.Bbo.Pillar.v2.5.d.SecurityStatusMessage.json
grep "nyse.nationalequities.bbo.pillar.v2.5.d.marketstate" Nyse.NationalEquities.Bbo.Pillar.v2.5.d.SecurityStatusMessage.json
grep "nyse.nationalequities.bbo.pillar.v2.5.d.sessionstate" Nyse.NationalEquities.Bbo.Pillar.v2.5.d.SecurityStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NationalEquities.Bbo.Pillar.v2.5.d/SourceTimeReferenceMessage.pcap" \
  -X "lua_script:Nyse/NationalEquities/Bbo/Nyse_NationalEquities_Bbo_Pillar_v2_5_d_Dissector.lua" \
  -T json \
  > Nyse.NationalEquities.Bbo.Pillar.v2.5.d.SourceTimeReferenceMessage.json 2> Nyse.NationalEquities.Bbo.Pillar.v2.5.d.SourceTimeReferenceMessage.json.stderr \
  || { echo "--- tshark FAILED (SourceTimeReferenceMessage) ---"; cat Nyse.NationalEquities.Bbo.Pillar.v2.5.d.SourceTimeReferenceMessage.json.stderr; exit 1; }

grep "nyse.nationalequities.bbo.pillar.v2.5.d.id" Nyse.NationalEquities.Bbo.Pillar.v2.5.d.SourceTimeReferenceMessage.json
grep "nyse.nationalequities.bbo.pillar.v2.5.d.symbolseqnum" Nyse.NationalEquities.Bbo.Pillar.v2.5.d.SourceTimeReferenceMessage.json
grep "nyse.nationalequities.bbo.pillar.v2.5.d.sourcetime" Nyse.NationalEquities.Bbo.Pillar.v2.5.d.SourceTimeReferenceMessage.json
