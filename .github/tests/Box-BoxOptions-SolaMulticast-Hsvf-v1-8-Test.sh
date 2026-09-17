set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Box/BoxOptions.SolaMulticast.Hsvf.v1.8/OptionQuoteMessage.pcap" \
  -X "lua_script:Box/BoxOptions/SolaMulticast/Box_BoxOptions_SolaMulticast_Hsvf_v1_8_Dissector.lua" \
  -T json \
  > Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json 2> Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionQuoteMessage) ---"; cat Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json.stderr; exit 1; }

grep "box.boxoptions.solamulticast.hsvf.v1.8.exchangeid" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.solamulticast.hsvf.v1.8.rootsymbol" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.solamulticast.hsvf.v1.8.expirymonthcode" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.solamulticast.hsvf.v1.8.filler1" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.solamulticast.hsvf.v1.8.strikeprice" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.solamulticast.hsvf.v1.8.strikepricefractionindicator" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.solamulticast.hsvf.v1.8.expiryyear" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.solamulticast.hsvf.v1.8.expiryday" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.solamulticast.hsvf.v1.8.bidprice" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.solamulticast.hsvf.v1.8.bidpricefractionindicator" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.solamulticast.hsvf.v1.8.bidsize" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.solamulticast.hsvf.v1.8.askprice" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.solamulticast.hsvf.v1.8.askpricefractionindicator" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.solamulticast.hsvf.v1.8.asksize" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.solamulticast.hsvf.v1.8.filler1" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.solamulticast.hsvf.v1.8.instrumentstatusmarker" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.solamulticast.hsvf.v1.8.publiccustomerbidsize" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.solamulticast.hsvf.v1.8.publiccustomerasksize" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
