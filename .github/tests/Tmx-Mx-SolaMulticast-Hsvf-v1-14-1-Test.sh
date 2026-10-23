set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Tmx/Mx.SolaMulticast.Hsvf.v1.14.1/OptionMarketDepthMessage.pcap" \
  -X "lua_script:Tmx/Mx/SolaMulticast/Tmx_Mx_SolaMulticast_Hsvf_v1_14_1_Dissector.lua" \
  -T json \
  > Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.OptionMarketDepthMessage.json 2> Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.OptionMarketDepthMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionMarketDepthMessage) ---"; cat Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.OptionMarketDepthMessage.json.stderr; exit 1; }

grep "tmx.mx.solamulticast.hsvf.v1.14.1.exchangeid" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.OptionMarketDepthMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.rootsymbol" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.OptionMarketDepthMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.expirymonth" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.OptionMarketDepthMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.expiryyear" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.OptionMarketDepthMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.expiryday" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.OptionMarketDepthMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.instrumentstatusmarker" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.OptionMarketDepthMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.numberoflevels" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.OptionMarketDepthMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Tmx/Mx.SolaMulticast.Hsvf.v1.14.1/OptionTradeMessage.pcap" \
  -X "lua_script:Tmx/Mx/SolaMulticast/Tmx_Mx_SolaMulticast_Hsvf_v1_14_1_Dissector.lua" \
  -T json \
  > Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.OptionTradeMessage.json 2> Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.OptionTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionTradeMessage) ---"; cat Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.OptionTradeMessage.json.stderr; exit 1; }

grep "tmx.mx.solamulticast.hsvf.v1.14.1.exchangeid" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.OptionTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.rootsymbol" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.OptionTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.expirymonth" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.OptionTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.expiryyear" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.OptionTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.expiryday" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.OptionTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.volume" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.OptionTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.netchangesign" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.OptionTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.priceindicatormarker" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.OptionTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.tradenumber" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.OptionTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.auctionid" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.OptionTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Tmx/Mx.SolaMulticast.Hsvf.v1.14.1/StrategyAuctionBeginningMessage.pcap" \
  -X "lua_script:Tmx/Mx/SolaMulticast/Tmx_Mx_SolaMulticast_Hsvf_v1_14_1_Dissector.lua" \
  -T json \
  > Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyAuctionBeginningMessage.json 2> Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyAuctionBeginningMessage.json.stderr \
  || { echo "--- tshark FAILED (StrategyAuctionBeginningMessage) ---"; cat Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyAuctionBeginningMessage.json.stderr; exit 1; }

grep "tmx.mx.solamulticast.hsvf.v1.14.1.exchangeid" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyAuctionBeginningMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.strategysymbol" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyAuctionBeginningMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.auctionid" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyAuctionBeginningMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.initialorderside" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyAuctionBeginningMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.initialorderquantity" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyAuctionBeginningMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.auctionexpirytimestamp" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyAuctionBeginningMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.auctionduration" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyAuctionBeginningMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.initialquantityassured" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyAuctionBeginningMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Tmx/Mx.SolaMulticast.Hsvf.v1.14.1/StrategyInstrumentKeysMessage.pcap" \
  -X "lua_script:Tmx/Mx/SolaMulticast/Tmx_Mx_SolaMulticast_Hsvf_v1_14_1_Dissector.lua" \
  -T json \
  > Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyInstrumentKeysMessage.json 2> Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyInstrumentKeysMessage.json.stderr \
  || { echo "--- tshark FAILED (StrategyInstrumentKeysMessage) ---"; cat Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyInstrumentKeysMessage.json.stderr; exit 1; }

grep "tmx.mx.solamulticast.hsvf.v1.14.1.exchangeid" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyInstrumentKeysMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.strategysymbol" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyInstrumentKeysMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.expiryyear" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyInstrumentKeysMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.expirymonthstrategy" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyInstrumentKeysMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.expiryday" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyInstrumentKeysMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.maximumnumberofcontractsperorder" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyInstrumentKeysMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.minimumnumberofcontractsperorder" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyInstrumentKeysMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.marketflowindicator" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyInstrumentKeysMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.groupinstrument" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyInstrumentKeysMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.instrument" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyInstrumentKeysMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.instrumentexternalcode" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyInstrumentKeysMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.strategyallowimplied" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyInstrumentKeysMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.strategycode" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyInstrumentKeysMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.strategytype" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyInstrumentKeysMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.lasttradingdatetime" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyInstrumentKeysMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.variablelegsstrategycode" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyInstrumentKeysMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.numberoflegs" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyInstrumentKeysMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Tmx/Mx.SolaMulticast.Hsvf.v1.14.1/StrategyMarketDepthMessage.pcap" \
  -X "lua_script:Tmx/Mx/SolaMulticast/Tmx_Mx_SolaMulticast_Hsvf_v1_14_1_Dissector.lua" \
  -T json \
  > Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyMarketDepthMessage.json 2> Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyMarketDepthMessage.json.stderr \
  || { echo "--- tshark FAILED (StrategyMarketDepthMessage) ---"; cat Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyMarketDepthMessage.json.stderr; exit 1; }

grep "tmx.mx.solamulticast.hsvf.v1.14.1.exchangeid" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyMarketDepthMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.symbol" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyMarketDepthMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.instrumentstatusmarker" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyMarketDepthMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.numberoflevels" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyMarketDepthMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Tmx/Mx.SolaMulticast.Hsvf.v1.14.1/StrategyTradeMessage.pcap" \
  -X "lua_script:Tmx/Mx/SolaMulticast/Tmx_Mx_SolaMulticast_Hsvf_v1_14_1_Dissector.lua" \
  -T json \
  > Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyTradeMessage.json 2> Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (StrategyTradeMessage) ---"; cat Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyTradeMessage.json.stderr; exit 1; }

grep "tmx.mx.solamulticast.hsvf.v1.14.1.exchangeid" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.symbol" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.volume" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.tradepricesign" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.netchangesign" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.priceindicatormarker" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.tradenumber" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyTradeMessage.json
grep "tmx.mx.solamulticast.hsvf.v1.14.1.auctionid" Tmx.Mx.SolaMulticast.Hsvf.v1.14.1.StrategyTradeMessage.json
