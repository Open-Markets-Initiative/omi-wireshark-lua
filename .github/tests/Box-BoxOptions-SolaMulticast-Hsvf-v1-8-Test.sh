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
grep "box.boxoptions.solamulticast.hsvf.v1.8.strikeprice" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.solamulticast.hsvf.v1.8.strikepricefractionindicator" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.solamulticast.hsvf.v1.8.expiryyear" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.solamulticast.hsvf.v1.8.expiryday" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.solamulticast.hsvf.v1.8.bidpricequotenumeric" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.solamulticast.hsvf.v1.8.bidpricefractionindicator" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.solamulticast.hsvf.v1.8.bidsize" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.solamulticast.hsvf.v1.8.askpricequotenumeric" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.solamulticast.hsvf.v1.8.askpricefractionindicator" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.solamulticast.hsvf.v1.8.asksize" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.solamulticast.hsvf.v1.8.instrumentstatusmarker" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.solamulticast.hsvf.v1.8.publiccustomerbidsize" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
grep "box.boxoptions.solamulticast.hsvf.v1.8.publiccustomerasksize" Box.BoxOptions.SolaMulticast.Hsvf.v1.8.OptionQuoteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Box/BoxOptions.SolaMulticast.Hsvf.v1.8/MultipleMessages.pcap" \
  -X "lua_script:Box/BoxOptions/SolaMulticast/Box_BoxOptions_SolaMulticast_Hsvf_v1_8_Dissector.lua" \
  -T json \
  > Box.BoxOptions.SolaMulticast.Hsvf.v1.8.Multiplemessages.json 2> Box.BoxOptions.SolaMulticast.Hsvf.v1.8.Multiplemessages.json.stderr \
  || { echo "--- tshark FAILED (MultipleMessages) ---"; cat Box.BoxOptions.SolaMulticast.Hsvf.v1.8.Multiplemessages.json.stderr; exit 1; }

fields=$(grep -c "box.boxoptions.solamulticast.hsvf.v1.8." Box.BoxOptions.SolaMulticast.Hsvf.v1.8.Multiplemessages.json) \
  || { echo "--- no box.boxoptions.solamulticast.hsvf.v1.8 fields (MultipleMessages) ---"; exit 1; }
echo "  box.boxoptions.solamulticast.hsvf.v1.8 fields: $fields"

errors=$(grep -c '"_ws.expert.severity": "8388608"' Box.BoxOptions.SolaMulticast.Hsvf.v1.8.Multiplemessages.json || true)
[ "$errors" -eq 0 ] \
  || { echo "--- $errors expert errors (MultipleMessages) ---"; grep -o '"Lua Error[^"]*"' Box.BoxOptions.SolaMulticast.Hsvf.v1.8.Multiplemessages.json | sort -u | head; exit 1; }

[ "$(grep -c 'box.boxoptions.solamulticast.hsvf.v1.8.' Box.BoxOptions.SolaMulticast.Hsvf.v1.8.Multiplemessages.json)" -gt 1 ] || { echo "--- only one message decoded (MultipleMessages) ---"; exit 1; }
