set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/OtcMarkets/LinkAts.Multicast.Link.v4.3/EndOfSpinMessage.pcap" \
  -X "lua_script:OtcMarkets/LinkAts/Multicast/OtcMarkets_LinkAts_Multicast_Link_v4_3_Dissector.lua" \
  -T json \
  > OtcMarkets.LinkAts.Multicast.Link.v4.3.EndOfSpinMessage.json 2> OtcMarkets.LinkAts.Multicast.Link.v4.3.EndOfSpinMessage.json.stderr \
  || { echo "--- tshark FAILED (EndOfSpinMessage) ---"; cat OtcMarkets.LinkAts.Multicast.Link.v4.3.EndOfSpinMessage.json.stderr; exit 1; }

grep "otcmarkets.linkats.multicast.link.v4.3.channelseqnum" OtcMarkets.LinkAts.Multicast.Link.v4.3.EndOfSpinMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.spintype" OtcMarkets.LinkAts.Multicast.Link.v4.3.EndOfSpinMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.spinmsgct" OtcMarkets.LinkAts.Multicast.Link.v4.3.EndOfSpinMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.spinendtimemilli" OtcMarkets.LinkAts.Multicast.Link.v4.3.EndOfSpinMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.spinlastseqnum" OtcMarkets.LinkAts.Multicast.Link.v4.3.EndOfSpinMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/OtcMarkets/LinkAts.Multicast.Link.v4.3/Heartbeat.pcap" \
  -X "lua_script:OtcMarkets/LinkAts/Multicast/OtcMarkets_LinkAts_Multicast_Link_v4_3_Dissector.lua" \
  -T json \
  > OtcMarkets.LinkAts.Multicast.Link.v4.3.Heartbeat.json 2> OtcMarkets.LinkAts.Multicast.Link.v4.3.Heartbeat.json.stderr \
  || { echo "--- tshark FAILED (Heartbeat) ---"; cat OtcMarkets.LinkAts.Multicast.Link.v4.3.Heartbeat.json.stderr; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/OtcMarkets/LinkAts.Multicast.Link.v4.3/MarketCloseMessage.pcap" \
  -X "lua_script:OtcMarkets/LinkAts/Multicast/OtcMarkets_LinkAts_Multicast_Link_v4_3_Dissector.lua" \
  -T json \
  > OtcMarkets.LinkAts.Multicast.Link.v4.3.MarketCloseMessage.json 2> OtcMarkets.LinkAts.Multicast.Link.v4.3.MarketCloseMessage.json.stderr \
  || { echo "--- tshark FAILED (MarketCloseMessage) ---"; cat OtcMarkets.LinkAts.Multicast.Link.v4.3.MarketCloseMessage.json.stderr; exit 1; }

grep "otcmarkets.linkats.multicast.link.v4.3.channelseqnum" OtcMarkets.LinkAts.Multicast.Link.v4.3.MarketCloseMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.marketclosetimemilli" OtcMarkets.LinkAts.Multicast.Link.v4.3.MarketCloseMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.marketmsgct" OtcMarkets.LinkAts.Multicast.Link.v4.3.MarketCloseMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/OtcMarkets/LinkAts.Multicast.Link.v4.3/MarketOpenMessage.pcap" \
  -X "lua_script:OtcMarkets/LinkAts/Multicast/OtcMarkets_LinkAts_Multicast_Link_v4_3_Dissector.lua" \
  -T json \
  > OtcMarkets.LinkAts.Multicast.Link.v4.3.MarketOpenMessage.json 2> OtcMarkets.LinkAts.Multicast.Link.v4.3.MarketOpenMessage.json.stderr \
  || { echo "--- tshark FAILED (MarketOpenMessage) ---"; cat OtcMarkets.LinkAts.Multicast.Link.v4.3.MarketOpenMessage.json.stderr; exit 1; }

grep "otcmarkets.linkats.multicast.link.v4.3.channelseqnum" OtcMarkets.LinkAts.Multicast.Link.v4.3.MarketOpenMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.marketopen" OtcMarkets.LinkAts.Multicast.Link.v4.3.MarketOpenMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.marketclose" OtcMarkets.LinkAts.Multicast.Link.v4.3.MarketOpenMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/OtcMarkets/LinkAts.Multicast.Link.v4.3/QuoteMessage.pcap" \
  -X "lua_script:OtcMarkets/LinkAts/Multicast/OtcMarkets_LinkAts_Multicast_Link_v4_3_Dissector.lua" \
  -T json \
  > OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteMessage.json 2> OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteMessage.json.stderr \
  || { echo "--- tshark FAILED (QuoteMessage) ---"; cat OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteMessage.json.stderr; exit 1; }

grep "otcmarkets.linkats.multicast.link.v4.3.channelseqnum" OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.quoteid" OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.quoteaction" OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.quoteflags" OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.securityid" OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.mpid" OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.askprice" OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.asksize" OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.askqap" OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.asktimemilli" OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.bidprice" OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.bidsize" OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.bidqap" OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.bidtimemilli" OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.quotereferenceid" OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.extendedquoteflags" OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/OtcMarkets/LinkAts.Multicast.Link.v4.3/QuoteUpdateMessage.pcap" \
  -X "lua_script:OtcMarkets/LinkAts/Multicast/OtcMarkets_LinkAts_Multicast_Link_v4_3_Dissector.lua" \
  -T json \
  > OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteUpdateMessage.json 2> OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (QuoteUpdateMessage) ---"; cat OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteUpdateMessage.json.stderr; exit 1; }

grep "otcmarkets.linkats.multicast.link.v4.3.channelseqnum" OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteUpdateMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.quoteid" OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteUpdateMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.quoteflags" OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteUpdateMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.price" OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteUpdateMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.size" OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteUpdateMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.qap" OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteUpdateMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.quotetimemilli" OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteUpdateMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.quotereferenceid" OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteUpdateMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.extendedquoteflags" OtcMarkets.LinkAts.Multicast.Link.v4.3.QuoteUpdateMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/OtcMarkets/LinkAts.Multicast.Link.v4.3/SecurityMessage.pcap" \
  -X "lua_script:OtcMarkets/LinkAts/Multicast/OtcMarkets_LinkAts_Multicast_Link_v4_3_Dissector.lua" \
  -T json \
  > OtcMarkets.LinkAts.Multicast.Link.v4.3.SecurityMessage.json 2> OtcMarkets.LinkAts.Multicast.Link.v4.3.SecurityMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityMessage) ---"; cat OtcMarkets.LinkAts.Multicast.Link.v4.3.SecurityMessage.json.stderr; exit 1; }

grep "otcmarkets.linkats.multicast.link.v4.3.channelseqnum" OtcMarkets.LinkAts.Multicast.Link.v4.3.SecurityMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.symbol" OtcMarkets.LinkAts.Multicast.Link.v4.3.SecurityMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.lastupdatemilli" OtcMarkets.LinkAts.Multicast.Link.v4.3.SecurityMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.securityaction" OtcMarkets.LinkAts.Multicast.Link.v4.3.SecurityMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.assetclass" OtcMarkets.LinkAts.Multicast.Link.v4.3.SecurityMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.securityid" OtcMarkets.LinkAts.Multicast.Link.v4.3.SecurityMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.securityflags" OtcMarkets.LinkAts.Multicast.Link.v4.3.SecurityMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.tier" OtcMarkets.LinkAts.Multicast.Link.v4.3.SecurityMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.reportingstatus" OtcMarkets.LinkAts.Multicast.Link.v4.3.SecurityMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.securitystatus" OtcMarkets.LinkAts.Multicast.Link.v4.3.SecurityMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/OtcMarkets/LinkAts.Multicast.Link.v4.3/StartOfSpinMessage.pcap" \
  -X "lua_script:OtcMarkets/LinkAts/Multicast/OtcMarkets_LinkAts_Multicast_Link_v4_3_Dissector.lua" \
  -T json \
  > OtcMarkets.LinkAts.Multicast.Link.v4.3.StartOfSpinMessage.json 2> OtcMarkets.LinkAts.Multicast.Link.v4.3.StartOfSpinMessage.json.stderr \
  || { echo "--- tshark FAILED (StartOfSpinMessage) ---"; cat OtcMarkets.LinkAts.Multicast.Link.v4.3.StartOfSpinMessage.json.stderr; exit 1; }

grep "otcmarkets.linkats.multicast.link.v4.3.channelseqnum" OtcMarkets.LinkAts.Multicast.Link.v4.3.StartOfSpinMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.spintype" OtcMarkets.LinkAts.Multicast.Link.v4.3.StartOfSpinMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.spinstarttimemilli" OtcMarkets.LinkAts.Multicast.Link.v4.3.StartOfSpinMessage.json
grep "otcmarkets.linkats.multicast.link.v4.3.spinlastseqnum" OtcMarkets.LinkAts.Multicast.Link.v4.3.StartOfSpinMessage.json
