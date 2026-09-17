set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Box/BoxOptions.Sola.Multicast.Hsvf.v1.8/OptionQuoteMessage.pcap" \
  -X "lua_script:Box/BoxOptions/Multicast/Box_BoxOptions_Sola_Multicast_Hsvf_v1_8_Dissector.lua" \
  -T json \
  > Box.BoxOptions.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json 2> Box.BoxOptions.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionQuoteMessage) ---"; cat Box.BoxOptions.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json.stderr; exit 1; }

grep "box.boxoptions.sola.multicast.hsvf.v1.8.exchangeid" Box.BoxOptions.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.sola.multicast.hsvf.v1.8.rootsymbol" Box.BoxOptions.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.sola.multicast.hsvf.v1.8.expirymonthcode" Box.BoxOptions.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.sola.multicast.hsvf.v1.8.filler1" Box.BoxOptions.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.sola.multicast.hsvf.v1.8.strikeprice" Box.BoxOptions.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.sola.multicast.hsvf.v1.8.strikepricefractionindicator" Box.BoxOptions.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.sola.multicast.hsvf.v1.8.expiryyear" Box.BoxOptions.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.sola.multicast.hsvf.v1.8.expiryday" Box.BoxOptions.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.sola.multicast.hsvf.v1.8.bidprice" Box.BoxOptions.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.sola.multicast.hsvf.v1.8.bidpricefractionindicator" Box.BoxOptions.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.sola.multicast.hsvf.v1.8.bidsize" Box.BoxOptions.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.sola.multicast.hsvf.v1.8.askprice" Box.BoxOptions.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.sola.multicast.hsvf.v1.8.askpricefractionindicator" Box.BoxOptions.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.sola.multicast.hsvf.v1.8.asksize" Box.BoxOptions.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.sola.multicast.hsvf.v1.8.filler1" Box.BoxOptions.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.sola.multicast.hsvf.v1.8.instrumentstatusmarker" Box.BoxOptions.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.sola.multicast.hsvf.v1.8.publiccustomerbidsize" Box.BoxOptions.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.sola.multicast.hsvf.v1.8.publiccustomerasksize" Box.BoxOptions.Sola.Multicast.Hsvf.v1.8.OptionQuoteMessage.json
