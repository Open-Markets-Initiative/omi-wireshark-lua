set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Tmx/Mx.SolaMulticast.Hsvf.v1.14/OptionMarketDepthMessage.pcap" \
  -X "lua_script:Tmx/Mx/SolaMulticast/Tmx_Mx_SolaMulticast_Hsvf_v1_14_Dissector.lua" \
  -T json \
  > Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionMarketDepthMessage.json 2> Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionMarketDepthMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionMarketDepthMessage) ---"; cat Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionMarketDepthMessage.json.stderr; exit 1; }

grep "tmx.mx.solamulticast.hsvf.v1.14.exchangeid" Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionMarketDepthMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.root" Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionMarketDepthMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.expirymonth" Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionMarketDepthMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.strikeprice" Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionMarketDepthMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.strikepricefractionindicator" Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionMarketDepthMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.expiryyear" Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionMarketDepthMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.expiryday" Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionMarketDepthMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.instrumentstatusmarker" Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionMarketDepthMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.numberoflevels" Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionMarketDepthMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Tmx/Mx.SolaMulticast.Hsvf.v1.14/OptionTradeMessage.pcap" \
  -X "lua_script:Tmx/Mx/SolaMulticast/Tmx_Mx_SolaMulticast_Hsvf_v1_14_Dissector.lua" \
  -T json \
  > Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionTradeMessage.json 2> Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionTradeMessage) ---"; cat Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionTradeMessage.json.stderr; exit 1; }

grep "tmx.mx.solamulticast.hsvf.v1.14.exchangeid" Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.root" Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.expirymonth" Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.strikeprice" Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.strikepricefractionindicator" Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.expiryyear" Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.expiryday" Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.volume" Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.tradeprice" Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.tradepricefractionindicator" Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.netchangesign" Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.netchange" Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.netchangefractionindicator" Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.priceindicatormarker" Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.tradenumber" Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.auctionid" Tmx.Mx.SolaMulticast.Hsvf.v1.14.OptionTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Tmx/Mx.SolaMulticast.Hsvf.v1.14/StrategyAuctionBeginningMessage.pcap" \
  -X "lua_script:Tmx/Mx/SolaMulticast/Tmx_Mx_SolaMulticast_Hsvf_v1_14_Dissector.lua" \
  -T json \
  > Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json 2> Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json.stderr \
  || { echo "--- tshark FAILED (StrategyAuctionBeginningMessage) ---"; cat Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json.stderr; exit 1; }

grep "tmx.mx.solamulticast.hsvf.v1.14.exchangeid" Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.strategysymbol" Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.auctionid" Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.initialorderside" Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.initialorderquantity" Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.initialorderprice" Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.initialorderpricefractionindicator" Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.auctionexpirytimestamp" Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.auctionduration" Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.initialquantityassured" Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Tmx/Mx.SolaMulticast.Hsvf.v1.14/StrategyMarketDepthMessage.pcap" \
  -X "lua_script:Tmx/Mx/SolaMulticast/Tmx_Mx_SolaMulticast_Hsvf_v1_14_Dissector.lua" \
  -T json \
  > Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyMarketDepthMessage.json 2> Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyMarketDepthMessage.json.stderr \
  || { echo "--- tshark FAILED (StrategyMarketDepthMessage) ---"; cat Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyMarketDepthMessage.json.stderr; exit 1; }

grep "tmx.mx.solamulticast.hsvf.v1.14.exchangeid" Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyMarketDepthMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.symbolstrategy" Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyMarketDepthMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.instrumentstatusmarker" Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyMarketDepthMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.numberoflevels" Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyMarketDepthMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Tmx/Mx.SolaMulticast.Hsvf.v1.14/StrategyTradeMessage.pcap" \
  -X "lua_script:Tmx/Mx/SolaMulticast/Tmx_Mx_SolaMulticast_Hsvf_v1_14_Dissector.lua" \
  -T json \
  > Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyTradeMessage.json 2> Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (StrategyTradeMessage) ---"; cat Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyTradeMessage.json.stderr; exit 1; }

grep "tmx.mx.solamulticast.hsvf.v1.14.exchangeid" Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.symbolstrategy" Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.volume" Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.tradepricesign" Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.tradeprice" Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.tradepricefractionindicator" Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.netchangesign" Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.netchange" Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.netchangefractionindicator" Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.priceindicatormarker" Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.tradenumber" Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.auctionid" Tmx.Mx.SolaMulticast.Hsvf.v1.14.StrategyTradeMessage.json
