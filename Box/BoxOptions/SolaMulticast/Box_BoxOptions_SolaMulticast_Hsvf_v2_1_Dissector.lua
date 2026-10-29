-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Box BoxOptions SolaMulticast Hsvf 2.1 Protocol
local omi_box_boxoptions_solamulticast_hsvf_v2_1 = Proto("Omi.Box.BoxOptions.SolaMulticast.Hsvf.v2.1", "Box BoxOptions SolaMulticast Hsvf 2.1")

-- Protocol table
local box_boxoptions_solamulticast_hsvf_v2_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Box BoxOptions SolaMulticast Hsvf 2.1 Fields
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price = ProtoField.new("Ask Price", "box.boxoptions.solamulticast.hsvf.v2.1.askprice", ftypes.UINT24, nil, nil, nil, "Ask price for the option series")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_fraction_indicator = ProtoField.new("Ask Price Fraction Indicator", "box.boxoptions.solamulticast.hsvf.v2.1.askpricefractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions.")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_negative_hundred_pair = ProtoField.new("Ask Price Negative Hundred Pair", "box.boxoptions.solamulticast.hsvf.v2.1.askpricenegativehundredpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_negative_hundred_thousand_pair = ProtoField.new("Ask Price Negative Hundred Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.askpricenegativehundredthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_negative_million_pair = ProtoField.new("Ask Price Negative Million Pair", "box.boxoptions.solamulticast.hsvf.v2.1.askpricenegativemillionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_negative_ten_pair = ProtoField.new("Ask Price Negative Ten Pair", "box.boxoptions.solamulticast.hsvf.v2.1.askpricenegativetenpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_negative_ten_thousand_pair = ProtoField.new("Ask Price Negative Ten Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.askpricenegativetenthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_negative_thousand_pair = ProtoField.new("Ask Price Negative Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.askpricenegativethousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_negative_whole_pair = ProtoField.new("Ask Price Negative Whole Pair", "box.boxoptions.solamulticast.hsvf.v2.1.askpricenegativewholepair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_numeric_pair = ProtoField.new("Ask Price Numeric Pair", "box.boxoptions.solamulticast.hsvf.v2.1.askpricenumericpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_quote_negative_hundred_pair = ProtoField.new("Ask Price Quote Negative Hundred Pair", "box.boxoptions.solamulticast.hsvf.v2.1.askpricequotenegativehundredpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_quote_negative_hundred_thousand_pair = ProtoField.new("Ask Price Quote Negative Hundred Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.askpricequotenegativehundredthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_quote_negative_million_pair = ProtoField.new("Ask Price Quote Negative Million Pair", "box.boxoptions.solamulticast.hsvf.v2.1.askpricequotenegativemillionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_quote_negative_ten_pair = ProtoField.new("Ask Price Quote Negative Ten Pair", "box.boxoptions.solamulticast.hsvf.v2.1.askpricequotenegativetenpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_quote_negative_ten_thousand_pair = ProtoField.new("Ask Price Quote Negative Ten Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.askpricequotenegativetenthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_quote_negative_thousand_pair = ProtoField.new("Ask Price Quote Negative Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.askpricequotenegativethousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_quote_negative_whole_pair = ProtoField.new("Ask Price Quote Negative Whole Pair", "box.boxoptions.solamulticast.hsvf.v2.1.askpricequotenegativewholepair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_quote_numeric = ProtoField.new("Ask Price Quote Numeric", "box.boxoptions.solamulticast.hsvf.v2.1.askpricequotenumeric", ftypes.UINT24, nil, nil, nil, "Ask price for the option series")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_quote_numeric_pair = ProtoField.new("Ask Price Quote Numeric Pair", "box.boxoptions.solamulticast.hsvf.v2.1.askpricequotenumericpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_quote_opening = ProtoField.new("Ask Price Quote Opening", "box.boxoptions.solamulticast.hsvf.v2.1.askpricequoteopening", ftypes.STRING, nil, nil, nil, "Ask price for the option series")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_quote_opening_pair = ProtoField.new("Ask Price Quote Opening Pair", "box.boxoptions.solamulticast.hsvf.v2.1.askpricequoteopeningpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_quote_unknown_fraction_pair = ProtoField.new("Ask Price Quote Unknown Fraction Pair", "box.boxoptions.solamulticast.hsvf.v2.1.askpricequoteunknownfractionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_sign = ProtoField.new("Ask Price Sign", "box.boxoptions.solamulticast.hsvf.v2.1.askpricesign", ftypes.STRING, nil, nil, nil, "For Ask Price field")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_unknown_fraction_pair = ProtoField.new("Ask Price Unknown Fraction Pair", "box.boxoptions.solamulticast.hsvf.v2.1.askpriceunknownfractionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_size = ProtoField.new("Ask Size", "box.boxoptions.solamulticast.hsvf.v2.1.asksize", ftypes.UINT24, nil, nil, nil, "Number of option contracts represented by the Ask Price")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.auction_type = ProtoField.new("Auction Type", "box.boxoptions.solamulticast.hsvf.v2.1.auctiontype", ftypes.STRING, nil, nil, nil, "Indicating the auction type")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price = ProtoField.new("Bid Price", "box.boxoptions.solamulticast.hsvf.v2.1.bidprice", ftypes.UINT24, nil, nil, nil, "Bid price for the option series")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_fraction_indicator = ProtoField.new("Bid Price Fraction Indicator", "box.boxoptions.solamulticast.hsvf.v2.1.bidpricefractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_negative_hundred_pair = ProtoField.new("Bid Price Negative Hundred Pair", "box.boxoptions.solamulticast.hsvf.v2.1.bidpricenegativehundredpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_negative_hundred_thousand_pair = ProtoField.new("Bid Price Negative Hundred Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.bidpricenegativehundredthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_negative_million_pair = ProtoField.new("Bid Price Negative Million Pair", "box.boxoptions.solamulticast.hsvf.v2.1.bidpricenegativemillionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_negative_ten_pair = ProtoField.new("Bid Price Negative Ten Pair", "box.boxoptions.solamulticast.hsvf.v2.1.bidpricenegativetenpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_negative_ten_thousand_pair = ProtoField.new("Bid Price Negative Ten Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.bidpricenegativetenthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_negative_thousand_pair = ProtoField.new("Bid Price Negative Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.bidpricenegativethousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_negative_whole_pair = ProtoField.new("Bid Price Negative Whole Pair", "box.boxoptions.solamulticast.hsvf.v2.1.bidpricenegativewholepair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_numeric_pair = ProtoField.new("Bid Price Numeric Pair", "box.boxoptions.solamulticast.hsvf.v2.1.bidpricenumericpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_quote_negative_hundred_pair = ProtoField.new("Bid Price Quote Negative Hundred Pair", "box.boxoptions.solamulticast.hsvf.v2.1.bidpricequotenegativehundredpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_quote_negative_hundred_thousand_pair = ProtoField.new("Bid Price Quote Negative Hundred Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.bidpricequotenegativehundredthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_quote_negative_million_pair = ProtoField.new("Bid Price Quote Negative Million Pair", "box.boxoptions.solamulticast.hsvf.v2.1.bidpricequotenegativemillionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_quote_negative_ten_pair = ProtoField.new("Bid Price Quote Negative Ten Pair", "box.boxoptions.solamulticast.hsvf.v2.1.bidpricequotenegativetenpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_quote_negative_ten_thousand_pair = ProtoField.new("Bid Price Quote Negative Ten Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.bidpricequotenegativetenthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_quote_negative_thousand_pair = ProtoField.new("Bid Price Quote Negative Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.bidpricequotenegativethousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_quote_negative_whole_pair = ProtoField.new("Bid Price Quote Negative Whole Pair", "box.boxoptions.solamulticast.hsvf.v2.1.bidpricequotenegativewholepair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_quote_numeric = ProtoField.new("Bid Price Quote Numeric", "box.boxoptions.solamulticast.hsvf.v2.1.bidpricequotenumeric", ftypes.UINT24, nil, nil, nil, "Bid price for the option series")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_quote_numeric_pair = ProtoField.new("Bid Price Quote Numeric Pair", "box.boxoptions.solamulticast.hsvf.v2.1.bidpricequotenumericpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_quote_opening = ProtoField.new("Bid Price Quote Opening", "box.boxoptions.solamulticast.hsvf.v2.1.bidpricequoteopening", ftypes.STRING, nil, nil, nil, "Bid price for the option series")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_quote_opening_pair = ProtoField.new("Bid Price Quote Opening Pair", "box.boxoptions.solamulticast.hsvf.v2.1.bidpricequoteopeningpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_quote_unknown_fraction_pair = ProtoField.new("Bid Price Quote Unknown Fraction Pair", "box.boxoptions.solamulticast.hsvf.v2.1.bidpricequoteunknownfractionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_sign = ProtoField.new("Bid Price Sign", "box.boxoptions.solamulticast.hsvf.v2.1.bidpricesign", ftypes.STRING, nil, nil, nil, "For Bid Price field")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_unknown_fraction_pair = ProtoField.new("Bid Price Unknown Fraction Pair", "box.boxoptions.solamulticast.hsvf.v2.1.bidpriceunknownfractionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_size = ProtoField.new("Bid Size", "box.boxoptions.solamulticast.hsvf.v2.1.bidsize", ftypes.UINT24, nil, nil, nil, "Number of option contracts represented by the Bid Price")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.cmta = ProtoField.new("Cmta", "box.boxoptions.solamulticast.hsvf.v2.1.cmta", ftypes.STRING, nil, nil, nil, "Indicates the CMTA")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.complex_market_depth_level = ProtoField.new("Complex Market Depth Level", "box.boxoptions.solamulticast.hsvf.v2.1.complexmarketdepthlevel", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.complex_order_instrument_allow_implied = ProtoField.new("Complex Order Instrument Allow Implied", "box.boxoptions.solamulticast.hsvf.v2.1.complexorderinstrumentallowimplied", ftypes.STRING, nil, nil, nil, "Complex Order Instrument support of Implied Price")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.complex_order_instrument_symbol = ProtoField.new("Complex Order Instrument Symbol", "box.boxoptions.solamulticast.hsvf.v2.1.complexorderinstrumentsymbol", ftypes.STRING, nil, nil, nil, "Complex Order Instrument symbol. The individual legs are defined in message type JS.")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.deletion_type = ProtoField.new("Deletion Type", "box.boxoptions.solamulticast.hsvf.v2.1.deletiontype", ftypes.UINT8)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.delivery_month = ProtoField.new("Delivery Month", "box.boxoptions.solamulticast.hsvf.v2.1.deliverymonth", ftypes.STRING, nil, nil, nil, "Delivery month code of the leg of the Complex Order Instrument expiring first")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.end_of_the_exposition = ProtoField.new("End Of The Exposition", "box.boxoptions.solamulticast.hsvf.v2.1.endoftheexposition", ftypes.UINT32, nil, nil, nil, "HHMMSSCC")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.exchange_id = ProtoField.new("Exchange Id", "box.boxoptions.solamulticast.hsvf.v2.1.exchangeid", ftypes.STRING, nil, nil, nil, "Q by default")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.expiry_day = ProtoField.new("Expiry Day", "box.boxoptions.solamulticast.hsvf.v2.1.expiryday", ftypes.UINT8, nil, nil, nil, "Expiry day of the leg of the Complex Order Instrument expiring first")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.expiry_month_code = ProtoField.new("Expiry Month Code", "box.boxoptions.solamulticast.hsvf.v2.1.expirymonthcode", ftypes.STRING, nil, nil, nil, "Delivery month for the contract")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.expiry_year = ProtoField.new("Expiry Year", "box.boxoptions.solamulticast.hsvf.v2.1.expiryyear", ftypes.UINT8, nil, nil, nil, "Expiration year of the leg of the Complex Order Instrument expiring first. Format is YY.")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.filler_1 = ProtoField.new("Filler 1", "box.boxoptions.solamulticast.hsvf.v2.1.filler1", ftypes.BYTES, nil, nil, nil, "Filler")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.filler_2 = ProtoField.new("Filler 2", "box.boxoptions.solamulticast.hsvf.v2.1.filler2", ftypes.BYTES)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.filler_5 = ProtoField.new("Filler 5", "box.boxoptions.solamulticast.hsvf.v2.1.filler5", ftypes.BYTES, nil, nil, nil, "Filler")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.filler_6 = ProtoField.new("Filler 6", "box.boxoptions.solamulticast.hsvf.v2.1.filler6", ftypes.BYTES, nil, nil, nil, "Filler (set to zeros)")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.filler_7 = ProtoField.new("Filler 7", "box.boxoptions.solamulticast.hsvf.v2.1.filler7", ftypes.BYTES, nil, nil, nil, "Filler")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.filler_8 = ProtoField.new("Filler 8", "box.boxoptions.solamulticast.hsvf.v2.1.filler8", ftypes.BYTES, nil, nil, nil, "Filler")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.firm_id = ProtoField.new("Firm Id", "box.boxoptions.solamulticast.hsvf.v2.1.firmid", ftypes.STRING, nil, nil, nil, "Indicates the FirmId")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.group = ProtoField.new("Group", "box.boxoptions.solamulticast.hsvf.v2.1.group", ftypes.STRING, nil, nil, nil, "Group of the instrument")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.group_instrument = ProtoField.new("Group Instrument", "box.boxoptions.solamulticast.hsvf.v2.1.groupinstrument", ftypes.STRING, nil, nil, nil, "Group of the instrument")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.group_of_the_complex_order_instrument = ProtoField.new("Group Of The Complex Order Instrument", "box.boxoptions.solamulticast.hsvf.v2.1.groupofthecomplexorderinstrument", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.group_status = ProtoField.new("Group Status", "box.boxoptions.solamulticast.hsvf.v2.1.groupstatus", ftypes.STRING, nil, nil, nil, "Value is O")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.high_price = ProtoField.new("High Price", "box.boxoptions.solamulticast.hsvf.v2.1.highprice", ftypes.UINT24, nil, nil, nil, "Highest trade price of the day or current high price if sent after a cancellation")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.high_price_fraction_indicator = ProtoField.new("High Price Fraction Indicator", "box.boxoptions.solamulticast.hsvf.v2.1.highpricefractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.high_price_negative_hundred_pair = ProtoField.new("High Price Negative Hundred Pair", "box.boxoptions.solamulticast.hsvf.v2.1.highpricenegativehundredpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.high_price_negative_hundred_thousand_pair = ProtoField.new("High Price Negative Hundred Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.highpricenegativehundredthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.high_price_negative_million_pair = ProtoField.new("High Price Negative Million Pair", "box.boxoptions.solamulticast.hsvf.v2.1.highpricenegativemillionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.high_price_negative_ten_pair = ProtoField.new("High Price Negative Ten Pair", "box.boxoptions.solamulticast.hsvf.v2.1.highpricenegativetenpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.high_price_negative_ten_thousand_pair = ProtoField.new("High Price Negative Ten Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.highpricenegativetenthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.high_price_negative_thousand_pair = ProtoField.new("High Price Negative Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.highpricenegativethousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.high_price_negative_whole_pair = ProtoField.new("High Price Negative Whole Pair", "box.boxoptions.solamulticast.hsvf.v2.1.highpricenegativewholepair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.high_price_numeric_pair = ProtoField.new("High Price Numeric Pair", "box.boxoptions.solamulticast.hsvf.v2.1.highpricenumericpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.high_price_sign = ProtoField.new("High Price Sign", "box.boxoptions.solamulticast.hsvf.v2.1.highpricesign", ftypes.STRING, nil, nil, nil, "+ or - sign")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.high_price_unknown_fraction_pair = ProtoField.new("High Price Unknown Fraction Pair", "box.boxoptions.solamulticast.hsvf.v2.1.highpriceunknownfractionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.hsvf_etx = ProtoField.new("Hsvf Etx", "box.boxoptions.solamulticast.hsvf.v2.1.hsvfetx", ftypes.INT8, nil, nil, nil, "End of Hsvf message")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.hsvf_stx = ProtoField.new("Hsvf Stx", "box.boxoptions.solamulticast.hsvf.v2.1.hsvfstx", ftypes.INT8, nil, nil, nil, "Start of Hsvf message")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.improvement_order_side = ProtoField.new("Improvement Order Side", "box.boxoptions.solamulticast.hsvf.v2.1.improvementorderside", ftypes.STRING, nil, nil, nil, "Side")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.improvement_phase_expiry_time = ProtoField.new("Improvement Phase Expiry Time", "box.boxoptions.solamulticast.hsvf.v2.1.improvementphaseexpirytime", ftypes.STRING, nil, nil, nil, "Indicates the expiry time of the Improvement Phase (value is in HHMMSSCC)")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.improvement_phase_sequential_number = ProtoField.new("Improvement Phase Sequential Number", "box.boxoptions.solamulticast.hsvf.v2.1.improvementphasesequentialnumber", ftypes.UINT24, nil, nil, nil, "Indicates the number of an Improvement Phase. Sequential number unique per Instrument and per trading day")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.improvement_process_expiry_duration = ProtoField.new("Improvement Process Expiry Duration", "box.boxoptions.solamulticast.hsvf.v2.1.improvementprocessexpiryduration", ftypes.DOUBLE, nil, nil, nil, "Indicates the expiry duration of the Improvement Phase (value is in SSCC)")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.initial_order_price = ProtoField.new("Initial Order Price", "box.boxoptions.solamulticast.hsvf.v2.1.initialorderprice", ftypes.UINT24, nil, nil, nil, "Indicates the price of the Initial Order")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.initial_order_price_fraction_indicator = ProtoField.new("Initial Order Price Fraction Indicator", "box.boxoptions.solamulticast.hsvf.v2.1.initialorderpricefractionindicator", ftypes.STRING, nil, nil, nil, "Fraction Indicator Code")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.initial_order_price_negative_hundred_pair = ProtoField.new("Initial Order Price Negative Hundred Pair", "box.boxoptions.solamulticast.hsvf.v2.1.initialorderpricenegativehundredpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.initial_order_price_negative_hundred_thousand_pair = ProtoField.new("Initial Order Price Negative Hundred Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.initialorderpricenegativehundredthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.initial_order_price_negative_million_pair = ProtoField.new("Initial Order Price Negative Million Pair", "box.boxoptions.solamulticast.hsvf.v2.1.initialorderpricenegativemillionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.initial_order_price_negative_ten_pair = ProtoField.new("Initial Order Price Negative Ten Pair", "box.boxoptions.solamulticast.hsvf.v2.1.initialorderpricenegativetenpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.initial_order_price_negative_ten_thousand_pair = ProtoField.new("Initial Order Price Negative Ten Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.initialorderpricenegativetenthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.initial_order_price_negative_thousand_pair = ProtoField.new("Initial Order Price Negative Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.initialorderpricenegativethousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.initial_order_price_negative_whole_pair = ProtoField.new("Initial Order Price Negative Whole Pair", "box.boxoptions.solamulticast.hsvf.v2.1.initialorderpricenegativewholepair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.initial_order_price_numeric_pair = ProtoField.new("Initial Order Price Numeric Pair", "box.boxoptions.solamulticast.hsvf.v2.1.initialorderpricenumericpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.initial_order_price_sign = ProtoField.new("Initial Order Price Sign", "box.boxoptions.solamulticast.hsvf.v2.1.initialorderpricesign", ftypes.STRING, nil, nil, nil, "+ or - sign")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.initial_order_price_unknown_fraction_pair = ProtoField.new("Initial Order Price Unknown Fraction Pair", "box.boxoptions.solamulticast.hsvf.v2.1.initialorderpriceunknownfractionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.initial_order_quantity = ProtoField.new("Initial Order Quantity", "box.boxoptions.solamulticast.hsvf.v2.1.initialorderquantity", ftypes.STRING, nil, nil, nil, "Indicates the quantity of the Initial Order")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.initial_order_side = ProtoField.new("Initial Order Side", "box.boxoptions.solamulticast.hsvf.v2.1.initialorderside", ftypes.STRING, nil, nil, nil, "Indicates the dealer side of the Initial Order")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.instrument = ProtoField.new("Instrument", "box.boxoptions.solamulticast.hsvf.v2.1.instrument", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.instrument_description = ProtoField.new("Instrument Description", "box.boxoptions.solamulticast.hsvf.v2.1.instrumentdescription", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.instrument_external_code = ProtoField.new("Instrument External Code", "box.boxoptions.solamulticast.hsvf.v2.1.instrumentexternalcode", ftypes.STRING, nil, nil, nil, "External identifier used by traders when entering an order")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.instrument_leg = ProtoField.new("Instrument Leg", "box.boxoptions.solamulticast.hsvf.v2.1.instrumentleg", ftypes.STRING, nil, nil, nil, "Instrument Leg Repeating Group")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.instrument_status_marker = ProtoField.new("Instrument Status Marker", "box.boxoptions.solamulticast.hsvf.v2.1.instrumentstatusmarker", ftypes.STRING, nil, nil, nil, "Indicates instrument status")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.last_price = ProtoField.new("Last Price", "box.boxoptions.solamulticast.hsvf.v2.1.lastprice", ftypes.UINT24, nil, nil, nil, "Closing or most recent trade price")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.last_price_fraction_indicator = ProtoField.new("Last Price Fraction Indicator", "box.boxoptions.solamulticast.hsvf.v2.1.lastpricefractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.last_price_negative_hundred_pair = ProtoField.new("Last Price Negative Hundred Pair", "box.boxoptions.solamulticast.hsvf.v2.1.lastpricenegativehundredpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.last_price_negative_hundred_thousand_pair = ProtoField.new("Last Price Negative Hundred Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.lastpricenegativehundredthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.last_price_negative_million_pair = ProtoField.new("Last Price Negative Million Pair", "box.boxoptions.solamulticast.hsvf.v2.1.lastpricenegativemillionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.last_price_negative_ten_pair = ProtoField.new("Last Price Negative Ten Pair", "box.boxoptions.solamulticast.hsvf.v2.1.lastpricenegativetenpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.last_price_negative_ten_thousand_pair = ProtoField.new("Last Price Negative Ten Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.lastpricenegativetenthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.last_price_negative_thousand_pair = ProtoField.new("Last Price Negative Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.lastpricenegativethousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.last_price_negative_whole_pair = ProtoField.new("Last Price Negative Whole Pair", "box.boxoptions.solamulticast.hsvf.v2.1.lastpricenegativewholepair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.last_price_numeric_pair = ProtoField.new("Last Price Numeric Pair", "box.boxoptions.solamulticast.hsvf.v2.1.lastpricenumericpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.last_price_sign = ProtoField.new("Last Price Sign", "box.boxoptions.solamulticast.hsvf.v2.1.lastpricesign", ftypes.STRING, nil, nil, nil, "Sign the Last Price")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.last_price_unknown_fraction_pair = ProtoField.new("Last Price Unknown Fraction Pair", "box.boxoptions.solamulticast.hsvf.v2.1.lastpriceunknownfractionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.leg_ratio = ProtoField.new("Leg Ratio", "box.boxoptions.solamulticast.hsvf.v2.1.legratio", ftypes.UINT32, nil, nil, nil, "Quantity (bought or sold)")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.leg_ratio_sign = ProtoField.new("Leg Ratio Sign", "box.boxoptions.solamulticast.hsvf.v2.1.legratiosign", ftypes.STRING, nil, nil, nil, "+ : Buy the leg")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.leg_symbol = ProtoField.new("Leg Symbol", "box.boxoptions.solamulticast.hsvf.v2.1.legsymbol", ftypes.STRING, nil, nil, nil, "Instrument External Code of the leg")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.level_of_market_depth = ProtoField.new("Level Of Market Depth", "box.boxoptions.solamulticast.hsvf.v2.1.levelofmarketdepth", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.limit_entered_for_an_order = ProtoField.new("Limit Entered For An Order", "box.boxoptions.solamulticast.hsvf.v2.1.limitenteredforanorder", ftypes.UINT24, nil, nil, nil, "For a buy order, represents the highest price that the order issuer is willing to pay For a sell order, represents the lowest price at which the order issuer is willing to sell")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.limit_entered_for_an_order_negative_hundred_pair = ProtoField.new("Limit Entered For An Order Negative Hundred Pair", "box.boxoptions.solamulticast.hsvf.v2.1.limitenteredforanordernegativehundredpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.limit_entered_for_an_order_negative_hundred_thousand_pair = ProtoField.new("Limit Entered For An Order Negative Hundred Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.limitenteredforanordernegativehundredthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.limit_entered_for_an_order_negative_million_pair = ProtoField.new("Limit Entered For An Order Negative Million Pair", "box.boxoptions.solamulticast.hsvf.v2.1.limitenteredforanordernegativemillionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.limit_entered_for_an_order_negative_ten_pair = ProtoField.new("Limit Entered For An Order Negative Ten Pair", "box.boxoptions.solamulticast.hsvf.v2.1.limitenteredforanordernegativetenpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.limit_entered_for_an_order_negative_ten_thousand_pair = ProtoField.new("Limit Entered For An Order Negative Ten Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.limitenteredforanordernegativetenthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.limit_entered_for_an_order_negative_thousand_pair = ProtoField.new("Limit Entered For An Order Negative Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.limitenteredforanordernegativethousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.limit_entered_for_an_order_negative_whole_pair = ProtoField.new("Limit Entered For An Order Negative Whole Pair", "box.boxoptions.solamulticast.hsvf.v2.1.limitenteredforanordernegativewholepair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.limit_entered_for_an_order_numeric_pair = ProtoField.new("Limit Entered For An Order Numeric Pair", "box.boxoptions.solamulticast.hsvf.v2.1.limitenteredforanordernumericpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.limit_entered_for_an_order_sign = ProtoField.new("Limit Entered For An Order Sign", "box.boxoptions.solamulticast.hsvf.v2.1.limitenteredforanordersign", ftypes.STRING, nil, nil, nil, "+ or - sign")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.limit_entered_for_an_order_unknown_fraction_pair = ProtoField.new("Limit Entered For An Order Unknown Fraction Pair", "box.boxoptions.solamulticast.hsvf.v2.1.limitenteredforanorderunknownfractionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.limit_fraction_indicator = ProtoField.new("Limit Fraction Indicator", "box.boxoptions.solamulticast.hsvf.v2.1.limitfractionindicator", ftypes.STRING, nil, nil, nil, "Fraction Indicator Code")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.low_price = ProtoField.new("Low Price", "box.boxoptions.solamulticast.hsvf.v2.1.lowprice", ftypes.UINT24, nil, nil, nil, "Lowest trade price of the day or current low price if sent after a cancellation")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.low_price_fraction_indicator = ProtoField.new("Low Price Fraction Indicator", "box.boxoptions.solamulticast.hsvf.v2.1.lowpricefractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.low_price_negative_hundred_pair = ProtoField.new("Low Price Negative Hundred Pair", "box.boxoptions.solamulticast.hsvf.v2.1.lowpricenegativehundredpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.low_price_negative_hundred_thousand_pair = ProtoField.new("Low Price Negative Hundred Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.lowpricenegativehundredthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.low_price_negative_million_pair = ProtoField.new("Low Price Negative Million Pair", "box.boxoptions.solamulticast.hsvf.v2.1.lowpricenegativemillionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.low_price_negative_ten_pair = ProtoField.new("Low Price Negative Ten Pair", "box.boxoptions.solamulticast.hsvf.v2.1.lowpricenegativetenpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.low_price_negative_ten_thousand_pair = ProtoField.new("Low Price Negative Ten Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.lowpricenegativetenthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.low_price_negative_thousand_pair = ProtoField.new("Low Price Negative Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.lowpricenegativethousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.low_price_negative_whole_pair = ProtoField.new("Low Price Negative Whole Pair", "box.boxoptions.solamulticast.hsvf.v2.1.lowpricenegativewholepair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.low_price_numeric_pair = ProtoField.new("Low Price Numeric Pair", "box.boxoptions.solamulticast.hsvf.v2.1.lowpricenumericpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.low_price_sign = ProtoField.new("Low Price Sign", "box.boxoptions.solamulticast.hsvf.v2.1.lowpricesign", ftypes.STRING, nil, nil, nil, "+ or - sign")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.low_price_unknown_fraction_pair = ProtoField.new("Low Price Unknown Fraction Pair", "box.boxoptions.solamulticast.hsvf.v2.1.lowpriceunknownfractionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.market_depth_level = ProtoField.new("Market Depth Level", "box.boxoptions.solamulticast.hsvf.v2.1.marketdepthlevel", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.market_flow_indicator = ProtoField.new("Market Flow Indicator", "box.boxoptions.solamulticast.hsvf.v2.1.marketflowindicator", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.max_number_of_contracts_per_order = ProtoField.new("Max Number Of Contracts Per Order", "box.boxoptions.solamulticast.hsvf.v2.1.maxnumberofcontractsperorder", ftypes.UINT24, nil, nil, nil, "Maximum authorized number of contract per order")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.max_threshold_price = ProtoField.new("Max Threshold Price", "box.boxoptions.solamulticast.hsvf.v2.1.maxthresholdprice", ftypes.UINT24, nil, nil, nil, "Maximum threshold price authorized for an option contract")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.max_threshold_price_fraction_indicator = ProtoField.new("Max Threshold Price Fraction Indicator", "box.boxoptions.solamulticast.hsvf.v2.1.maxthresholdpricefractionindicator", ftypes.STRING, nil, nil, nil, "Number of decimal places or fraction positions")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.max_threshold_price_negative_hundred_pair = ProtoField.new("Max Threshold Price Negative Hundred Pair", "box.boxoptions.solamulticast.hsvf.v2.1.maxthresholdpricenegativehundredpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.max_threshold_price_negative_hundred_thousand_pair = ProtoField.new("Max Threshold Price Negative Hundred Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.maxthresholdpricenegativehundredthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.max_threshold_price_negative_million_pair = ProtoField.new("Max Threshold Price Negative Million Pair", "box.boxoptions.solamulticast.hsvf.v2.1.maxthresholdpricenegativemillionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.max_threshold_price_negative_ten_pair = ProtoField.new("Max Threshold Price Negative Ten Pair", "box.boxoptions.solamulticast.hsvf.v2.1.maxthresholdpricenegativetenpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.max_threshold_price_negative_ten_thousand_pair = ProtoField.new("Max Threshold Price Negative Ten Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.maxthresholdpricenegativetenthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.max_threshold_price_negative_thousand_pair = ProtoField.new("Max Threshold Price Negative Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.maxthresholdpricenegativethousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.max_threshold_price_negative_whole_pair = ProtoField.new("Max Threshold Price Negative Whole Pair", "box.boxoptions.solamulticast.hsvf.v2.1.maxthresholdpricenegativewholepair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.max_threshold_price_numeric_pair = ProtoField.new("Max Threshold Price Numeric Pair", "box.boxoptions.solamulticast.hsvf.v2.1.maxthresholdpricenumericpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.max_threshold_price_sign = ProtoField.new("Max Threshold Price Sign", "box.boxoptions.solamulticast.hsvf.v2.1.maxthresholdpricesign", ftypes.STRING, nil, nil, nil, "+ or - sign")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.max_threshold_price_unknown_fraction_pair = ProtoField.new("Max Threshold Price Unknown Fraction Pair", "box.boxoptions.solamulticast.hsvf.v2.1.maxthresholdpriceunknownfractionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.maximum_number_of_contracts_per_order = ProtoField.new("Maximum Number Of Contracts Per Order", "box.boxoptions.solamulticast.hsvf.v2.1.maximumnumberofcontractsperorder", ftypes.UINT24, nil, nil, nil, "Maximum authorized number of contract per order")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.maximum_threshold_price = ProtoField.new("Maximum Threshold Price", "box.boxoptions.solamulticast.hsvf.v2.1.maximumthresholdprice", ftypes.UINT24, nil, nil, nil, "Maximum threshold price authorized for an option contract")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.maximum_threshold_price_fraction_indicator = ProtoField.new("Maximum Threshold Price Fraction Indicator", "box.boxoptions.solamulticast.hsvf.v2.1.maximumthresholdpricefractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.maximum_threshold_price_negative_hundred_pair = ProtoField.new("Maximum Threshold Price Negative Hundred Pair", "box.boxoptions.solamulticast.hsvf.v2.1.maximumthresholdpricenegativehundredpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.maximum_threshold_price_negative_hundred_thousand_pair = ProtoField.new("Maximum Threshold Price Negative Hundred Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.maximumthresholdpricenegativehundredthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.maximum_threshold_price_negative_million_pair = ProtoField.new("Maximum Threshold Price Negative Million Pair", "box.boxoptions.solamulticast.hsvf.v2.1.maximumthresholdpricenegativemillionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.maximum_threshold_price_negative_ten_pair = ProtoField.new("Maximum Threshold Price Negative Ten Pair", "box.boxoptions.solamulticast.hsvf.v2.1.maximumthresholdpricenegativetenpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.maximum_threshold_price_negative_ten_thousand_pair = ProtoField.new("Maximum Threshold Price Negative Ten Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.maximumthresholdpricenegativetenthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.maximum_threshold_price_negative_thousand_pair = ProtoField.new("Maximum Threshold Price Negative Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.maximumthresholdpricenegativethousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.maximum_threshold_price_negative_whole_pair = ProtoField.new("Maximum Threshold Price Negative Whole Pair", "box.boxoptions.solamulticast.hsvf.v2.1.maximumthresholdpricenegativewholepair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.maximum_threshold_price_numeric_pair = ProtoField.new("Maximum Threshold Price Numeric Pair", "box.boxoptions.solamulticast.hsvf.v2.1.maximumthresholdpricenumericpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.maximum_threshold_price_unknown_fraction_pair = ProtoField.new("Maximum Threshold Price Unknown Fraction Pair", "box.boxoptions.solamulticast.hsvf.v2.1.maximumthresholdpriceunknownfractionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.message_type = ProtoField.new("Message Type", "box.boxoptions.solamulticast.hsvf.v2.1.messagetype", ftypes.STRING, nil, nil, nil, "Identifies the type of message being sent")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.min_number_of_contracts_per_order = ProtoField.new("Min Number Of Contracts Per Order", "box.boxoptions.solamulticast.hsvf.v2.1.minnumberofcontractsperorder", ftypes.UINT24, nil, nil, nil, "Minimum authorized number of contract per order")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.min_threshold_price = ProtoField.new("Min Threshold Price", "box.boxoptions.solamulticast.hsvf.v2.1.minthresholdprice", ftypes.UINT24, nil, nil, nil, "Minimum threshold price authorized for an option contract")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.min_threshold_price_fraction_indicator = ProtoField.new("Min Threshold Price Fraction Indicator", "box.boxoptions.solamulticast.hsvf.v2.1.minthresholdpricefractionindicator", ftypes.STRING, nil, nil, nil, "Number of decimal places or fraction positions")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.min_threshold_price_negative_hundred_pair = ProtoField.new("Min Threshold Price Negative Hundred Pair", "box.boxoptions.solamulticast.hsvf.v2.1.minthresholdpricenegativehundredpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.min_threshold_price_negative_hundred_thousand_pair = ProtoField.new("Min Threshold Price Negative Hundred Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.minthresholdpricenegativehundredthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.min_threshold_price_negative_million_pair = ProtoField.new("Min Threshold Price Negative Million Pair", "box.boxoptions.solamulticast.hsvf.v2.1.minthresholdpricenegativemillionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.min_threshold_price_negative_ten_pair = ProtoField.new("Min Threshold Price Negative Ten Pair", "box.boxoptions.solamulticast.hsvf.v2.1.minthresholdpricenegativetenpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.min_threshold_price_negative_ten_thousand_pair = ProtoField.new("Min Threshold Price Negative Ten Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.minthresholdpricenegativetenthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.min_threshold_price_negative_thousand_pair = ProtoField.new("Min Threshold Price Negative Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.minthresholdpricenegativethousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.min_threshold_price_negative_whole_pair = ProtoField.new("Min Threshold Price Negative Whole Pair", "box.boxoptions.solamulticast.hsvf.v2.1.minthresholdpricenegativewholepair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.min_threshold_price_numeric_pair = ProtoField.new("Min Threshold Price Numeric Pair", "box.boxoptions.solamulticast.hsvf.v2.1.minthresholdpricenumericpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.min_threshold_price_sign = ProtoField.new("Min Threshold Price Sign", "box.boxoptions.solamulticast.hsvf.v2.1.minthresholdpricesign", ftypes.STRING, nil, nil, nil, "+ or - sign")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.min_threshold_price_unknown_fraction_pair = ProtoField.new("Min Threshold Price Unknown Fraction Pair", "box.boxoptions.solamulticast.hsvf.v2.1.minthresholdpriceunknownfractionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.minimum_number_of_contracts_per_order = ProtoField.new("Minimum Number Of Contracts Per Order", "box.boxoptions.solamulticast.hsvf.v2.1.minimumnumberofcontractsperorder", ftypes.UINT24, nil, nil, nil, "Minimum authorized number of contract per order")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.minimum_quantity_for_improvement_order = ProtoField.new("Minimum Quantity For Improvement Order", "box.boxoptions.solamulticast.hsvf.v2.1.minimumquantityforimprovementorder", ftypes.UINT32, nil, nil, nil, "Enables market makers to know the minimum quantity for an Improvement Order during the Improvement Phase")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.minimum_threshold_price = ProtoField.new("Minimum Threshold Price", "box.boxoptions.solamulticast.hsvf.v2.1.minimumthresholdprice", ftypes.UINT24, nil, nil, nil, "Minimum threshold price authorized for an option contract")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.minimum_threshold_price_fraction_indicator = ProtoField.new("Minimum Threshold Price Fraction Indicator", "box.boxoptions.solamulticast.hsvf.v2.1.minimumthresholdpricefractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.minimum_threshold_price_negative_hundred_pair = ProtoField.new("Minimum Threshold Price Negative Hundred Pair", "box.boxoptions.solamulticast.hsvf.v2.1.minimumthresholdpricenegativehundredpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.minimum_threshold_price_negative_hundred_thousand_pair = ProtoField.new("Minimum Threshold Price Negative Hundred Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.minimumthresholdpricenegativehundredthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.minimum_threshold_price_negative_million_pair = ProtoField.new("Minimum Threshold Price Negative Million Pair", "box.boxoptions.solamulticast.hsvf.v2.1.minimumthresholdpricenegativemillionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.minimum_threshold_price_negative_ten_pair = ProtoField.new("Minimum Threshold Price Negative Ten Pair", "box.boxoptions.solamulticast.hsvf.v2.1.minimumthresholdpricenegativetenpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.minimum_threshold_price_negative_ten_thousand_pair = ProtoField.new("Minimum Threshold Price Negative Ten Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.minimumthresholdpricenegativetenthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.minimum_threshold_price_negative_thousand_pair = ProtoField.new("Minimum Threshold Price Negative Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.minimumthresholdpricenegativethousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.minimum_threshold_price_negative_whole_pair = ProtoField.new("Minimum Threshold Price Negative Whole Pair", "box.boxoptions.solamulticast.hsvf.v2.1.minimumthresholdpricenegativewholepair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.minimum_threshold_price_numeric_pair = ProtoField.new("Minimum Threshold Price Numeric Pair", "box.boxoptions.solamulticast.hsvf.v2.1.minimumthresholdpricenumericpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.minimum_threshold_price_unknown_fraction_pair = ProtoField.new("Minimum Threshold Price Unknown Fraction Pair", "box.boxoptions.solamulticast.hsvf.v2.1.minimumthresholdpriceunknownfractionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.net_change = ProtoField.new("Net Change", "box.boxoptions.solamulticast.hsvf.v2.1.netchange", ftypes.UINT24, nil, nil, nil, "Net change equals last trade price minus previous close")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.net_change_fraction_indicator = ProtoField.new("Net Change Fraction Indicator", "box.boxoptions.solamulticast.hsvf.v2.1.netchangefractionindicator", ftypes.STRING, nil, nil, nil, "Fraction indicator for the net change price")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.net_change_negative_hundred_pair = ProtoField.new("Net Change Negative Hundred Pair", "box.boxoptions.solamulticast.hsvf.v2.1.netchangenegativehundredpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.net_change_negative_hundred_thousand_pair = ProtoField.new("Net Change Negative Hundred Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.netchangenegativehundredthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.net_change_negative_million_pair = ProtoField.new("Net Change Negative Million Pair", "box.boxoptions.solamulticast.hsvf.v2.1.netchangenegativemillionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.net_change_negative_ten_pair = ProtoField.new("Net Change Negative Ten Pair", "box.boxoptions.solamulticast.hsvf.v2.1.netchangenegativetenpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.net_change_negative_ten_thousand_pair = ProtoField.new("Net Change Negative Ten Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.netchangenegativetenthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.net_change_negative_thousand_pair = ProtoField.new("Net Change Negative Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.netchangenegativethousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.net_change_negative_whole_pair = ProtoField.new("Net Change Negative Whole Pair", "box.boxoptions.solamulticast.hsvf.v2.1.netchangenegativewholepair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.net_change_numeric_pair = ProtoField.new("Net Change Numeric Pair", "box.boxoptions.solamulticast.hsvf.v2.1.netchangenumericpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.net_change_sign = ProtoField.new("Net Change Sign", "box.boxoptions.solamulticast.hsvf.v2.1.netchangesign", ftypes.STRING, nil, nil, nil, "For the net change field")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.net_change_unknown_fraction_pair = ProtoField.new("Net Change Unknown Fraction Pair", "box.boxoptions.solamulticast.hsvf.v2.1.netchangeunknownfractionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.number_of_ask_orders = ProtoField.new("Number Of Ask Orders", "box.boxoptions.solamulticast.hsvf.v2.1.numberofaskorders", ftypes.STRING, nil, nil, nil, "Number of Ask Orders, present at a given moment, in the order book")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.number_of_bid_orders = ProtoField.new("Number Of Bid Orders", "box.boxoptions.solamulticast.hsvf.v2.1.numberofbidorders", ftypes.STRING, nil, nil, nil, "Number of bid orders, present at a given moment, in the order book")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.number_of_legs = ProtoField.new("Number Of Legs", "box.boxoptions.solamulticast.hsvf.v2.1.numberoflegs", ftypes.UINT8, nil, nil, nil, "Number of legs in the Complex Order Instrument")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.number_of_levels = ProtoField.new("Number Of Levels", "box.boxoptions.solamulticast.hsvf.v2.1.numberoflevels", ftypes.UINT8, nil, nil, nil, "Number of level for the trading instrument")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.numeric_tick_increment = ProtoField.new("Numeric Tick Increment", "box.boxoptions.solamulticast.hsvf.v2.1.numerictickincrement", ftypes.UINT24, nil, nil, nil, "Precision with which the price of an order limit can be expressed")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.open_price = ProtoField.new("Open Price", "box.boxoptions.solamulticast.hsvf.v2.1.openprice", ftypes.UINT24, nil, nil, nil, "Price of the first trade of the day")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.open_price_fraction_indicator = ProtoField.new("Open Price Fraction Indicator", "box.boxoptions.solamulticast.hsvf.v2.1.openpricefractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.open_price_negative_hundred_pair = ProtoField.new("Open Price Negative Hundred Pair", "box.boxoptions.solamulticast.hsvf.v2.1.openpricenegativehundredpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.open_price_negative_hundred_thousand_pair = ProtoField.new("Open Price Negative Hundred Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.openpricenegativehundredthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.open_price_negative_million_pair = ProtoField.new("Open Price Negative Million Pair", "box.boxoptions.solamulticast.hsvf.v2.1.openpricenegativemillionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.open_price_negative_ten_pair = ProtoField.new("Open Price Negative Ten Pair", "box.boxoptions.solamulticast.hsvf.v2.1.openpricenegativetenpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.open_price_negative_ten_thousand_pair = ProtoField.new("Open Price Negative Ten Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.openpricenegativetenthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.open_price_negative_thousand_pair = ProtoField.new("Open Price Negative Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.openpricenegativethousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.open_price_negative_whole_pair = ProtoField.new("Open Price Negative Whole Pair", "box.boxoptions.solamulticast.hsvf.v2.1.openpricenegativewholepair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.open_price_numeric_pair = ProtoField.new("Open Price Numeric Pair", "box.boxoptions.solamulticast.hsvf.v2.1.openpricenumericpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.open_price_sign = ProtoField.new("Open Price Sign", "box.boxoptions.solamulticast.hsvf.v2.1.openpricesign", ftypes.STRING, nil, nil, nil, "+ or - sign")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.open_price_unknown_fraction_pair = ProtoField.new("Open Price Unknown Fraction Pair", "box.boxoptions.solamulticast.hsvf.v2.1.openpriceunknownfractionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.opra_trade_marker = ProtoField.new("Opra Trade Marker", "box.boxoptions.solamulticast.hsvf.v2.1.opratrademarker", ftypes.STRING, nil, nil, nil, "Contains the OPRA Trade Marker for both Non FLEX Single-Leg Floor (QOO) and FLEX Single-Leg Floor (FOO)")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.option_marker = ProtoField.new("Option Marker", "box.boxoptions.solamulticast.hsvf.v2.1.optionmarker", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.option_type = ProtoField.new("Option Type", "box.boxoptions.solamulticast.hsvf.v2.1.optiontype", ftypes.STRING, nil, nil, nil, "Type of option")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.order_quantity = ProtoField.new("Order Quantity", "box.boxoptions.solamulticast.hsvf.v2.1.orderquantity", ftypes.UINT32, nil, nil, nil, "Indicator Code")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.order_sequence_number = ProtoField.new("Order Sequence Number", "box.boxoptions.solamulticast.hsvf.v2.1.ordersequencenumber", ftypes.UINT24, nil, nil, nil, "Allocated by the trading engine at each valid order entry")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.order_side = ProtoField.new("Order Side", "box.boxoptions.solamulticast.hsvf.v2.1.orderside", ftypes.STRING, nil, nil, nil, "The must be filled side")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.percentage_assured_to_initial_order = ProtoField.new("Percentage Assured To Initial Order", "box.boxoptions.solamulticast.hsvf.v2.1.percentageassuredtoinitialorder", ftypes.STRING, nil, nil, nil, "Indicates the minimum guaranteed percentage quantity given to the Initiating Recipient to Initial Order. Ex: 00040.00 stands for 40.00 %")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.price_indicator_marker = ProtoField.new("Price Indicator Marker", "box.boxoptions.solamulticast.hsvf.v2.1.priceindicatormarker", ftypes.STRING, nil, nil, nil, "Identifies the type of transaction")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.public_customer_ask_size = ProtoField.new("Public Customer Ask Size", "box.boxoptions.solamulticast.hsvf.v2.1.publiccustomerasksize", ftypes.UINT24, nil, nil, nil, "Number of option contracts represented by Public Customer orders on the ask side")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.public_customer_bid_size = ProtoField.new("Public Customer Bid Size", "box.boxoptions.solamulticast.hsvf.v2.1.publiccustomerbidsize", ftypes.UINT24, nil, nil, nil, "Number of option contracts represented by Public Customer orders on the bid side")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_ask_price = ProtoField.new("Raw Ask Price", "box.boxoptions.solamulticast.hsvf.v2.1.rawaskprice", ftypes.UINT24, nil, nil, nil, "Ask price for the option series")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_ask_price_quote = ProtoField.new("Raw Ask Price Quote", "box.boxoptions.solamulticast.hsvf.v2.1.rawaskpricequote", ftypes.UINT24, nil, nil, nil, "Ask price for the option series")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_ask_price_quote_text = ProtoField.new("Raw Ask Price Quote Text", "box.boxoptions.solamulticast.hsvf.v2.1.rawaskpricequotetext", ftypes.STRING, nil, nil, nil, "Ask price for the option series")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_bid_price = ProtoField.new("Raw Bid Price", "box.boxoptions.solamulticast.hsvf.v2.1.rawbidprice", ftypes.UINT24, nil, nil, nil, "Bid price for the option series")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_bid_price_quote = ProtoField.new("Raw Bid Price Quote", "box.boxoptions.solamulticast.hsvf.v2.1.rawbidpricequote", ftypes.UINT24, nil, nil, nil, "Bid price for the option series")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_bid_price_quote_text = ProtoField.new("Raw Bid Price Quote Text", "box.boxoptions.solamulticast.hsvf.v2.1.rawbidpricequotetext", ftypes.STRING, nil, nil, nil, "Bid price for the option series")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_high_price = ProtoField.new("Raw High Price", "box.boxoptions.solamulticast.hsvf.v2.1.rawhighprice", ftypes.UINT24, nil, nil, nil, "Highest trade price of the day or current high price if sent after a cancellation")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_initial_order_price = ProtoField.new("Raw Initial Order Price", "box.boxoptions.solamulticast.hsvf.v2.1.rawinitialorderprice", ftypes.UINT24, nil, nil, nil, "Indicates the price of the Initial Order")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_last_price = ProtoField.new("Raw Last Price", "box.boxoptions.solamulticast.hsvf.v2.1.rawlastprice", ftypes.UINT24, nil, nil, nil, "Closing or most recent trade price")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_limit_entered_for_an_order = ProtoField.new("Raw Limit Entered For An Order", "box.boxoptions.solamulticast.hsvf.v2.1.rawlimitenteredforanorder", ftypes.UINT24, nil, nil, nil, "For a buy order, represents the highest price that the order issuer is willing to pay For a sell order, represents the lowest price at which the order issuer is willing to sell")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_low_price = ProtoField.new("Raw Low Price", "box.boxoptions.solamulticast.hsvf.v2.1.rawlowprice", ftypes.UINT24, nil, nil, nil, "Lowest trade price of the day or current low price if sent after a cancellation")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_max_threshold_price = ProtoField.new("Raw Max Threshold Price", "box.boxoptions.solamulticast.hsvf.v2.1.rawmaxthresholdprice", ftypes.UINT24, nil, nil, nil, "Maximum threshold price authorized for an option contract")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_maximum_threshold_price = ProtoField.new("Raw Maximum Threshold Price", "box.boxoptions.solamulticast.hsvf.v2.1.rawmaximumthresholdprice", ftypes.UINT24, nil, nil, nil, "Maximum threshold price authorized for an option contract")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_min_threshold_price = ProtoField.new("Raw Min Threshold Price", "box.boxoptions.solamulticast.hsvf.v2.1.rawminthresholdprice", ftypes.UINT24, nil, nil, nil, "Minimum threshold price authorized for an option contract")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_minimum_threshold_price = ProtoField.new("Raw Minimum Threshold Price", "box.boxoptions.solamulticast.hsvf.v2.1.rawminimumthresholdprice", ftypes.UINT24, nil, nil, nil, "Minimum threshold price authorized for an option contract")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_net_change = ProtoField.new("Raw Net Change", "box.boxoptions.solamulticast.hsvf.v2.1.rawnetchange", ftypes.UINT24, nil, nil, nil, "Net change equals last trade price minus previous close")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_open_price = ProtoField.new("Raw Open Price", "box.boxoptions.solamulticast.hsvf.v2.1.rawopenprice", ftypes.UINT24, nil, nil, nil, "Price of the first trade of the day")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_reference_price = ProtoField.new("Raw Reference Price", "box.boxoptions.solamulticast.hsvf.v2.1.rawreferenceprice", ftypes.UINT24, nil, nil, nil, "Reference Price of the Option")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_strike_price = ProtoField.new("Raw Strike Price", "box.boxoptions.solamulticast.hsvf.v2.1.rawstrikeprice", ftypes.UINT24, nil, nil, nil, "Strike Price of the option in full")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_tick_increment = ProtoField.new("Raw Tick Increment", "box.boxoptions.solamulticast.hsvf.v2.1.rawtickincrement", ftypes.STRING, nil, nil, nil, "Precision with which the price of an order limit can be expressed")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_trade_price = ProtoField.new("Raw Trade Price", "box.boxoptions.solamulticast.hsvf.v2.1.rawtradeprice", ftypes.UINT24, nil, nil, nil, "Price at which the transaction took place")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.reference_price = ProtoField.new("Reference Price", "box.boxoptions.solamulticast.hsvf.v2.1.referenceprice", ftypes.UINT24, nil, nil, nil, "Reference Price of the Option")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.reference_price_fraction_indicator = ProtoField.new("Reference Price Fraction Indicator", "box.boxoptions.solamulticast.hsvf.v2.1.referencepricefractionindicator", ftypes.STRING, nil, nil, nil, "Number of decimal places or fraction positions")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.reference_price_negative_hundred_pair = ProtoField.new("Reference Price Negative Hundred Pair", "box.boxoptions.solamulticast.hsvf.v2.1.referencepricenegativehundredpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.reference_price_negative_hundred_thousand_pair = ProtoField.new("Reference Price Negative Hundred Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.referencepricenegativehundredthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.reference_price_negative_million_pair = ProtoField.new("Reference Price Negative Million Pair", "box.boxoptions.solamulticast.hsvf.v2.1.referencepricenegativemillionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.reference_price_negative_ten_pair = ProtoField.new("Reference Price Negative Ten Pair", "box.boxoptions.solamulticast.hsvf.v2.1.referencepricenegativetenpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.reference_price_negative_ten_thousand_pair = ProtoField.new("Reference Price Negative Ten Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.referencepricenegativetenthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.reference_price_negative_thousand_pair = ProtoField.new("Reference Price Negative Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.referencepricenegativethousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.reference_price_negative_whole_pair = ProtoField.new("Reference Price Negative Whole Pair", "box.boxoptions.solamulticast.hsvf.v2.1.referencepricenegativewholepair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.reference_price_numeric_pair = ProtoField.new("Reference Price Numeric Pair", "box.boxoptions.solamulticast.hsvf.v2.1.referencepricenumericpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.reference_price_unknown_fraction_pair = ProtoField.new("Reference Price Unknown Fraction Pair", "box.boxoptions.solamulticast.hsvf.v2.1.referencepriceunknownfractionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.requested_size = ProtoField.new("Requested Size", "box.boxoptions.solamulticast.hsvf.v2.1.requestedsize", ftypes.UINT32, nil, nil, nil, "Size of the market requested")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.reserved = ProtoField.new("Reserved", "box.boxoptions.solamulticast.hsvf.v2.1.reserved", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.root_symbol = ProtoField.new("Root Symbol", "box.boxoptions.solamulticast.hsvf.v2.1.rootsymbol", ftypes.STRING, nil, nil, nil, "Root of the instrument group")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scheduled_time = ProtoField.new("Scheduled Time", "box.boxoptions.solamulticast.hsvf.v2.1.scheduledtime", ftypes.UINT24, nil, nil, nil, "Opening time of the instrument group (HHMMSS)")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.sequence_number = ProtoField.new("Sequence Number", "box.boxoptions.solamulticast.hsvf.v2.1.sequencenumber", ftypes.UINT32, nil, nil, nil, "Sequence numbers will range from ascii decimal 000000001 to 999999999")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.strike_price = ProtoField.new("Strike Price", "box.boxoptions.solamulticast.hsvf.v2.1.strikeprice", ftypes.UINT24, nil, nil, nil, "Strike Price of the option in full")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.strike_price_currency = ProtoField.new("Strike Price Currency", "box.boxoptions.solamulticast.hsvf.v2.1.strikepricecurrency", ftypes.STRING, nil, nil, nil, "Currency used for the Option Strike Price")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.strike_price_fraction_indicator = ProtoField.new("Strike Price Fraction Indicator", "box.boxoptions.solamulticast.hsvf.v2.1.strikepricefractionindicator", ftypes.STRING, nil, nil, nil, "Defines the number of decimal places or fraction positions")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.strike_price_negative_hundred_pair = ProtoField.new("Strike Price Negative Hundred Pair", "box.boxoptions.solamulticast.hsvf.v2.1.strikepricenegativehundredpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.strike_price_negative_hundred_thousand_pair = ProtoField.new("Strike Price Negative Hundred Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.strikepricenegativehundredthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.strike_price_negative_million_pair = ProtoField.new("Strike Price Negative Million Pair", "box.boxoptions.solamulticast.hsvf.v2.1.strikepricenegativemillionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.strike_price_negative_ten_pair = ProtoField.new("Strike Price Negative Ten Pair", "box.boxoptions.solamulticast.hsvf.v2.1.strikepricenegativetenpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.strike_price_negative_ten_thousand_pair = ProtoField.new("Strike Price Negative Ten Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.strikepricenegativetenthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.strike_price_negative_thousand_pair = ProtoField.new("Strike Price Negative Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.strikepricenegativethousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.strike_price_negative_whole_pair = ProtoField.new("Strike Price Negative Whole Pair", "box.boxoptions.solamulticast.hsvf.v2.1.strikepricenegativewholepair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.strike_price_numeric_pair = ProtoField.new("Strike Price Numeric Pair", "box.boxoptions.solamulticast.hsvf.v2.1.strikepricenumericpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.strike_price_unknown_fraction_pair = ProtoField.new("Strike Price Unknown Fraction Pair", "box.boxoptions.solamulticast.hsvf.v2.1.strikepriceunknownfractionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.tick = ProtoField.new("Tick", "box.boxoptions.solamulticast.hsvf.v2.1.tick", ftypes.STRING, nil, nil, nil, "Determined by the difference between last price and the previous different trade price")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.tick_increment = ProtoField.new("Tick Increment", "box.boxoptions.solamulticast.hsvf.v2.1.tickincrement", ftypes.UINT24, nil, nil, nil, "Precision with which the price of an order limit can be expressed")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.tick_increment_fraction_indicator = ProtoField.new("Tick Increment Fraction Indicator", "box.boxoptions.solamulticast.hsvf.v2.1.tickincrementfractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.tick_increment_negative_hundred_pair = ProtoField.new("Tick Increment Negative Hundred Pair", "box.boxoptions.solamulticast.hsvf.v2.1.tickincrementnegativehundredpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.tick_increment_negative_hundred_thousand_pair = ProtoField.new("Tick Increment Negative Hundred Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.tickincrementnegativehundredthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.tick_increment_negative_million_pair = ProtoField.new("Tick Increment Negative Million Pair", "box.boxoptions.solamulticast.hsvf.v2.1.tickincrementnegativemillionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.tick_increment_negative_ten_pair = ProtoField.new("Tick Increment Negative Ten Pair", "box.boxoptions.solamulticast.hsvf.v2.1.tickincrementnegativetenpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.tick_increment_negative_ten_thousand_pair = ProtoField.new("Tick Increment Negative Ten Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.tickincrementnegativetenthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.tick_increment_negative_thousand_pair = ProtoField.new("Tick Increment Negative Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.tickincrementnegativethousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.tick_increment_negative_whole_pair = ProtoField.new("Tick Increment Negative Whole Pair", "box.boxoptions.solamulticast.hsvf.v2.1.tickincrementnegativewholepair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.tick_increment_numeric_pair = ProtoField.new("Tick Increment Numeric Pair", "box.boxoptions.solamulticast.hsvf.v2.1.tickincrementnumericpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.tick_increment_tick_table_pair = ProtoField.new("Tick Increment Tick Table Pair", "box.boxoptions.solamulticast.hsvf.v2.1.tickincrementticktablepair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.tick_increment_unknown_fraction_pair = ProtoField.new("Tick Increment Unknown Fraction Pair", "box.boxoptions.solamulticast.hsvf.v2.1.tickincrementunknownfractionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.time = ProtoField.new("Time", "box.boxoptions.solamulticast.hsvf.v2.1.time", ftypes.UINT24, nil, nil, nil, "Time at which the message is transmitted")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.timestamp = ProtoField.new("Timestamp", "box.boxoptions.solamulticast.hsvf.v2.1.timestamp", ftypes.UINT24, nil, nil, nil, "Time of transaction:HHMMSS")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.trade_price = ProtoField.new("Trade Price", "box.boxoptions.solamulticast.hsvf.v2.1.tradeprice", ftypes.UINT24, nil, nil, nil, "Price at which the transaction took place")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.trade_price_fraction_indicator = ProtoField.new("Trade Price Fraction Indicator", "box.boxoptions.solamulticast.hsvf.v2.1.tradepricefractionindicator", ftypes.STRING, nil, nil, nil, "Defines number of decimal places or fraction positions")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.trade_price_negative_hundred_pair = ProtoField.new("Trade Price Negative Hundred Pair", "box.boxoptions.solamulticast.hsvf.v2.1.tradepricenegativehundredpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.trade_price_negative_hundred_thousand_pair = ProtoField.new("Trade Price Negative Hundred Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.tradepricenegativehundredthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.trade_price_negative_million_pair = ProtoField.new("Trade Price Negative Million Pair", "box.boxoptions.solamulticast.hsvf.v2.1.tradepricenegativemillionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.trade_price_negative_ten_pair = ProtoField.new("Trade Price Negative Ten Pair", "box.boxoptions.solamulticast.hsvf.v2.1.tradepricenegativetenpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.trade_price_negative_ten_thousand_pair = ProtoField.new("Trade Price Negative Ten Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.tradepricenegativetenthousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.trade_price_negative_thousand_pair = ProtoField.new("Trade Price Negative Thousand Pair", "box.boxoptions.solamulticast.hsvf.v2.1.tradepricenegativethousandpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.trade_price_negative_whole_pair = ProtoField.new("Trade Price Negative Whole Pair", "box.boxoptions.solamulticast.hsvf.v2.1.tradepricenegativewholepair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.trade_price_numeric_pair = ProtoField.new("Trade Price Numeric Pair", "box.boxoptions.solamulticast.hsvf.v2.1.tradepricenumericpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.trade_price_sign = ProtoField.new("Trade Price Sign", "box.boxoptions.solamulticast.hsvf.v2.1.tradepricesign", ftypes.STRING, nil, nil, nil, "For Trade Price field (sign)")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.trade_price_unknown_fraction_pair = ProtoField.new("Trade Price Unknown Fraction Pair", "box.boxoptions.solamulticast.hsvf.v2.1.tradepriceunknownfractionpair", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.trading_engine_timestamp = ProtoField.new("Trading Engine Timestamp", "box.boxoptions.solamulticast.hsvf.v2.1.tradingenginetimestamp", ftypes.UINT32, nil, nil, nil, "Time stamp generated by the SOLA Trading Engine (HHMMSSmmm)")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.type_of_clearing_account = ProtoField.new("Type Of Clearing Account", "box.boxoptions.solamulticast.hsvf.v2.1.typeofclearingaccount", ftypes.STRING, nil, nil, nil, "Indicates the account type for which an order was entered using the clearing house member's account typology.")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.type_of_instrument = ProtoField.new("Type Of Instrument", "box.boxoptions.solamulticast.hsvf.v2.1.typeofinstrument", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.type_of_market = ProtoField.new("Type Of Market", "box.boxoptions.solamulticast.hsvf.v2.1.typeofmarket", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.type_of_options = ProtoField.new("Type Of Options", "box.boxoptions.solamulticast.hsvf.v2.1.typeofoptions", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.type_of_order = ProtoField.new("Type Of Order", "box.boxoptions.solamulticast.hsvf.v2.1.typeoforder", ftypes.STRING, nil, nil, nil, "Type of limit entered")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.type_of_underlying = ProtoField.new("Type Of Underlying", "box.boxoptions.solamulticast.hsvf.v2.1.typeofunderlying", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "box.boxoptions.solamulticast.hsvf.v2.1.underlyingsymbol", ftypes.STRING, nil, nil, nil, "Symbol root for the underlying security")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.underlying_symbol_root = ProtoField.new("Underlying Symbol Root", "box.boxoptions.solamulticast.hsvf.v2.1.underlyingsymbolroot", ftypes.STRING, nil, nil, nil, "Symbol root for the underlying security")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.volume = ProtoField.new("Volume", "box.boxoptions.solamulticast.hsvf.v2.1.volume", ftypes.UINT32, nil, nil, nil, "Number of contracts for the trade")

-- Box BoxOptions SolaMulticast Hsvf 2.1 Framing
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.message_header = ProtoField.new("Message Header", "box.boxoptions.solamulticast.hsvf.v2.1.messageheader", ftypes.STRING, nil, nil, nil, "Hsvf Udp Market Data Packet Header")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.packet = ProtoField.new("Packet", "box.boxoptions.solamulticast.hsvf.v2.1.packet", ftypes.STRING, nil, nil, nil, "Hsvf Udp Packet")

-- Box BoxOptions SolaMulticast 2.1 Application Messages
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.beginning_of_complex_order_summary_message = ProtoField.new("Beginning Of Complex Order Summary Message", "box.boxoptions.solamulticast.hsvf.v2.1.beginningofcomplexordersummarymessage", ftypes.STRING, nil, nil, nil, "This message indicates that the beginning and the end of day Complex Order summaries")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.beginning_of_options_summary_message = ProtoField.new("Beginning Of Options Summary Message", "box.boxoptions.solamulticast.hsvf.v2.1.beginningofoptionssummarymessage", ftypes.STRING, nil, nil, nil, "This message indicates that the beginning and the end of day option summaries")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.circuit_assurance_message = ProtoField.new("Circuit Assurance Message", "box.boxoptions.solamulticast.hsvf.v2.1.circuitassurancemessage", ftypes.STRING, nil, nil, nil, "This message is sent out if no messages are sent by BOX for more than one second after the broadcast has started")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.complex_order_instrument_keys_message = ProtoField.new("Complex Order Instrument Keys Message", "box.boxoptions.solamulticast.hsvf.v2.1.complexorderinstrumentkeysmessage", ftypes.STRING, nil, nil, nil, "Complex Order Instrument Keys")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.complex_order_market_depth_message = ProtoField.new("Complex Order Market Depth Message", "box.boxoptions.solamulticast.hsvf.v2.1.complexordermarketdepthmessage", ftypes.STRING, nil, nil, nil, "Complex Order Market Depth")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.complex_order_quote_message = ProtoField.new("Complex Order Quote Message", "box.boxoptions.solamulticast.hsvf.v2.1.complexorderquotemessage", ftypes.STRING, nil, nil, nil, "Option Request for Quote")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.complex_order_summary_message = ProtoField.new("Complex Order Summary Message", "box.boxoptions.solamulticast.hsvf.v2.1.complexordersummarymessage", ftypes.STRING, nil, nil, nil, "Complex Order Summary")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.complex_order_trade_cancellation_message = ProtoField.new("Complex Order Trade Cancellation Message", "box.boxoptions.solamulticast.hsvf.v2.1.complexordertradecancellationmessage", ftypes.STRING, nil, nil, nil, "Complex Order Trade Cancellation")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.end_of_auction_or_exposition_on_complex_instruments_message = ProtoField.new("End Of Auction Or Exposition On Complex Instruments Message", "box.boxoptions.solamulticast.hsvf.v2.1.endofauctionorexpositiononcomplexinstrumentsmessage", ftypes.STRING, nil, nil, nil, "End of Auction or Exposition on Complex Instruments")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.end_of_auction_or_exposition_on_option_message = ProtoField.new("End Of Auction Or Exposition On Option Message", "box.boxoptions.solamulticast.hsvf.v2.1.endofauctionorexpositiononoptionmessage", ftypes.STRING, nil, nil, nil, "End of Auction or Exposition on Option")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.end_of_sales_message = ProtoField.new("End Of Sales Message", "box.boxoptions.solamulticast.hsvf.v2.1.endofsalesmessage", ftypes.STRING, nil, nil, nil, "This message is sent when there is no more trading activity to be transmitted")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.end_of_transmission_message = ProtoField.new("End Of Transmission Message", "box.boxoptions.solamulticast.hsvf.v2.1.endoftransmissionmessage", ftypes.STRING, nil, nil, nil, "This message will be sent to indicate that the day's transmission is complete")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.group_opening_time_message = ProtoField.new("Group Opening Time Message", "box.boxoptions.solamulticast.hsvf.v2.1.groupopeningtimemessage", ftypes.STRING, nil, nil, nil, "Group Opening Time")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.group_status_message = ProtoField.new("Group Status Message", "box.boxoptions.solamulticast.hsvf.v2.1.groupstatusmessage", ftypes.STRING, nil, nil, nil, "This message will be sent when a group of trading instruments enters a new status")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.option_instrument_keys_message = ProtoField.new("Option Instrument Keys Message", "box.boxoptions.solamulticast.hsvf.v2.1.optioninstrumentkeysmessage", ftypes.STRING, nil, nil, nil, "Option Instrument Keys")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.option_market_depth_message = ProtoField.new("Option Market Depth Message", "box.boxoptions.solamulticast.hsvf.v2.1.optionmarketdepthmessage", ftypes.STRING, nil, nil, nil, "Option Market Depth")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.option_quote_message = ProtoField.new("Option Quote Message", "box.boxoptions.solamulticast.hsvf.v2.1.optionquotemessage", ftypes.STRING, nil, nil, nil, "Option Quote")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.option_request_for_quote_message = ProtoField.new("Option Request For Quote Message", "box.boxoptions.solamulticast.hsvf.v2.1.optionrequestforquotemessage", ftypes.STRING, nil, nil, nil, "Option Request for Quote")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.option_summary_message = ProtoField.new("Option Summary Message", "box.boxoptions.solamulticast.hsvf.v2.1.optionsummarymessage", ftypes.STRING, nil, nil, nil, "Option Summary")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.option_trade_cancellation_message = ProtoField.new("Option Trade Cancellation Message", "box.boxoptions.solamulticast.hsvf.v2.1.optiontradecancellationmessage", ftypes.STRING, nil, nil, nil, "A cancellation will reduce the total volume, value and transactions by the amount of the cancelled trade")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.option_trade_message = ProtoField.new("Option Trade Message", "box.boxoptions.solamulticast.hsvf.v2.1.optiontrademessage", ftypes.STRING)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.start_of_auction_on_complex_order_message = ProtoField.new("Start Of Auction On Complex Order Message", "box.boxoptions.solamulticast.hsvf.v2.1.startofauctiononcomplexordermessage", ftypes.STRING, nil, nil, nil, "Start of Auction on Complex Order")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.start_of_auction_on_option_message = ProtoField.new("Start Of Auction On Option Message", "box.boxoptions.solamulticast.hsvf.v2.1.startofauctiononoptionmessage", ftypes.STRING, nil, nil, nil, "Start of Auction on Option")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.start_of_exposition_on_complex_order_message = ProtoField.new("Start Of Exposition On Complex Order Message", "box.boxoptions.solamulticast.hsvf.v2.1.startofexpositiononcomplexordermessage", ftypes.STRING, nil, nil, nil, "Start of Exposition on Complex Order")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.start_of_exposition_on_option_message = ProtoField.new("Start Of Exposition On Option Message", "box.boxoptions.solamulticast.hsvf.v2.1.startofexpositiononoptionmessage", ftypes.STRING, nil, nil, nil, "Start of Exposition on Option")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.strategies_group_status_message = ProtoField.new("Strategies Group Status Message", "box.boxoptions.solamulticast.hsvf.v2.1.strategiesgroupstatusmessage", ftypes.STRING, nil, nil, nil, "This message will be sent when a group of complex trading instruments enters a new status")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.strategy_trade_message = ProtoField.new("Strategy Trade Message", "box.boxoptions.solamulticast.hsvf.v2.1.strategytrademessage", ftypes.STRING, nil, nil, nil, "Strategy Trade Trade")
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.system_timestamp_message = ProtoField.new("System Timestamp Message", "box.boxoptions.solamulticast.hsvf.v2.1.systemtimestampmessage", ftypes.STRING, nil, nil, nil, "This message is sent out every second and contains the time stamp when it was originally transmitted by the trading engine")

-- Box BoxOptions SolaMulticast Hsvf 2.1 Generated Fields
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.complex_market_depth_level_index = ProtoField.new("Complex Market Depth Level Index", "box.boxoptions.solamulticast.hsvf.v2.1.complexmarketdepthlevelindex", ftypes.UINT16)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.instrument_leg_index = ProtoField.new("Instrument Leg Index", "box.boxoptions.solamulticast.hsvf.v2.1.instrumentlegindex", ftypes.UINT16)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.market_depth_level_index = ProtoField.new("Market Depth Level Index", "box.boxoptions.solamulticast.hsvf.v2.1.marketdepthlevelindex", ftypes.UINT16)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_ask_price = ProtoField.new("Scaled Ask Price", "box.boxoptions.solamulticast.hsvf.v2.1.scaledaskprice", ftypes.DOUBLE)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_ask_price = ProtoField.new("Scaled Ask Price", "box.boxoptions.solamulticast.hsvf.v2.1.scaledaskprice", ftypes.DOUBLE)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_bid_price = ProtoField.new("Scaled Bid Price", "box.boxoptions.solamulticast.hsvf.v2.1.scaledbidprice", ftypes.DOUBLE)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_bid_price = ProtoField.new("Scaled Bid Price", "box.boxoptions.solamulticast.hsvf.v2.1.scaledbidprice", ftypes.DOUBLE)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_high_price = ProtoField.new("Scaled High Price", "box.boxoptions.solamulticast.hsvf.v2.1.scaledhighprice", ftypes.DOUBLE)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_initial_order_price = ProtoField.new("Scaled Initial Order Price", "box.boxoptions.solamulticast.hsvf.v2.1.scaledinitialorderprice", ftypes.DOUBLE)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_last_price = ProtoField.new("Scaled Last Price", "box.boxoptions.solamulticast.hsvf.v2.1.scaledlastprice", ftypes.DOUBLE)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_limit_entered_for_an_order = ProtoField.new("Scaled Limit Entered For An Order", "box.boxoptions.solamulticast.hsvf.v2.1.scaledlimitenteredforanorder", ftypes.DOUBLE)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_low_price = ProtoField.new("Scaled Low Price", "box.boxoptions.solamulticast.hsvf.v2.1.scaledlowprice", ftypes.DOUBLE)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_max_threshold_price = ProtoField.new("Scaled Max Threshold Price", "box.boxoptions.solamulticast.hsvf.v2.1.scaledmaxthresholdprice", ftypes.DOUBLE)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_maximum_threshold_price = ProtoField.new("Scaled Maximum Threshold Price", "box.boxoptions.solamulticast.hsvf.v2.1.scaledmaximumthresholdprice", ftypes.DOUBLE)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_min_threshold_price = ProtoField.new("Scaled Min Threshold Price", "box.boxoptions.solamulticast.hsvf.v2.1.scaledminthresholdprice", ftypes.DOUBLE)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_minimum_threshold_price = ProtoField.new("Scaled Minimum Threshold Price", "box.boxoptions.solamulticast.hsvf.v2.1.scaledminimumthresholdprice", ftypes.DOUBLE)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_net_change = ProtoField.new("Scaled Net Change", "box.boxoptions.solamulticast.hsvf.v2.1.scalednetchange", ftypes.DOUBLE)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_open_price = ProtoField.new("Scaled Open Price", "box.boxoptions.solamulticast.hsvf.v2.1.scaledopenprice", ftypes.DOUBLE)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_reference_price = ProtoField.new("Scaled Reference Price", "box.boxoptions.solamulticast.hsvf.v2.1.scaledreferenceprice", ftypes.DOUBLE)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_strike_price = ProtoField.new("Scaled Strike Price", "box.boxoptions.solamulticast.hsvf.v2.1.scaledstrikeprice", ftypes.DOUBLE)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_tick_increment = ProtoField.new("Scaled Tick Increment", "box.boxoptions.solamulticast.hsvf.v2.1.scaledtickincrement", ftypes.DOUBLE)
omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_trade_price = ProtoField.new("Scaled Trade Price", "box.boxoptions.solamulticast.hsvf.v2.1.scaledtradeprice", ftypes.DOUBLE)

-- Box BoxOptions SolaMulticast Hsvf 2.1 Expert Info
box_boxoptions_solamulticast_hsvf_v2_1.experts = {}
box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number = ProtoExpert.new("box.boxoptions.solamulticast.hsvf.v2.1.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_box_boxoptions_solamulticast_hsvf_v2_1.experts = { box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number }

-----------------------------------------------------------------------
-- Box BoxOptions SolaMulticast Hsvf 2.1 Formatting
-----------------------------------------------------------------------

-- Scaled Strike Price format (true = decimal-scaled, false = raw mantissa)
box_boxoptions_solamulticast_hsvf_v2_1.format_decimals = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Box BoxOptions SolaMulticast Hsvf 2.1 Element Dissection Options
show.structs = true
show.application_messages = true
show.repeating_groups = true
show.headers = true
show.indexes = true

-- Register Box BoxOptions SolaMulticast Hsvf 2.1 Show Options
omi_box_boxoptions_solamulticast_hsvf_v2_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_box_boxoptions_solamulticast_hsvf_v2_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_box_boxoptions_solamulticast_hsvf_v2_1.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_box_boxoptions_solamulticast_hsvf_v2_1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_box_boxoptions_solamulticast_hsvf_v2_1.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_box_boxoptions_solamulticast_hsvf_v2_1.prefs.format_decimals = Pref.bool("Format Decimals", true, "Format decimal-scaled fields as scaled values (off = raw mantissa)")

-- Handle changed preferences
function omi_box_boxoptions_solamulticast_hsvf_v2_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_box_boxoptions_solamulticast_hsvf_v2_1.prefs.show_application_messages then
    show.application_messages = omi_box_boxoptions_solamulticast_hsvf_v2_1.prefs.show_application_messages
  end
  if show.headers ~= omi_box_boxoptions_solamulticast_hsvf_v2_1.prefs.show_headers then
    show.headers = omi_box_boxoptions_solamulticast_hsvf_v2_1.prefs.show_headers
  end
  if show.repeating_groups ~= omi_box_boxoptions_solamulticast_hsvf_v2_1.prefs.show_repeating_groups then
    show.repeating_groups = omi_box_boxoptions_solamulticast_hsvf_v2_1.prefs.show_repeating_groups
  end
  if show.structs ~= omi_box_boxoptions_solamulticast_hsvf_v2_1.prefs.show_structs then
    show.structs = omi_box_boxoptions_solamulticast_hsvf_v2_1.prefs.show_structs
  end
  if show.indexes ~= omi_box_boxoptions_solamulticast_hsvf_v2_1.prefs.show_indexes then
    show.indexes = omi_box_boxoptions_solamulticast_hsvf_v2_1.prefs.show_indexes
  end
  if box_boxoptions_solamulticast_hsvf_v2_1.format_decimals ~= omi_box_boxoptions_solamulticast_hsvf_v2_1.prefs.format_decimals then
    box_boxoptions_solamulticast_hsvf_v2_1.format_decimals = omi_box_boxoptions_solamulticast_hsvf_v2_1.prefs.format_decimals
  end
end


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------

-- trim trailing spaces
trim_right_spaces = function(str)
  local finish = str:len()

  while finish > 0 and str:byte(finish) == 0x20 do
    finish = finish - 1
  end

  return str:sub(1, finish)
end

-- trim leading spaces
trim_left_spaces = function(str)
  local start = 1

  while start <= str:len() and str:byte(start) == 0x20 do
    start = start + 1
  end

  return str:sub(start)
end

-- trim leading zeros
trim_left_zeros = function(str)
  local start = 1

  while start < str:len() and str:byte(start) == 0x30 do
    start = start + 1
  end

  return str:sub(start)
end

-- is every character a digit
is_digits = function(str)
  if str:len() == 0 then
    return false
  end

  for index = 1, str:len() do
    local byte = str:byte(index)

    if byte < 0x30 or byte > 0x39 then
      return false
    end
  end

  return true
end

-- the number a digit run of implied decimal places spells
format_implied_decimal_text = function(str, places)
  local digits = trim_left_spaces(str)
  local sign = ""
  local first = digits:sub(1, 1)

  if first == "-" or first == "+" then
    sign = first
    digits = digits:sub(2)
  end

  if not is_digits(digits) then
    return nil
  end

  digits = trim_left_zeros(digits)

  while digits:len() <= places do
    digits = "0"..digits
  end

  return sign..digits:sub(1, digits:len() - places).."."..digits:sub(-places)
end


-----------------------------------------------------------------------
-- Box BoxOptions SolaMulticast Hsvf 2.1 Fields
-----------------------------------------------------------------------

-- Ask Price
box_boxoptions_solamulticast_hsvf_v2_1.ask_price = {}

-- Size: Ask Price
box_boxoptions_solamulticast_hsvf_v2_1.ask_price.size = 6

-- Display: Ask Price
box_boxoptions_solamulticast_hsvf_v2_1.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
box_boxoptions_solamulticast_hsvf_v2_1.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.ask_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price, range, value, "Ask Price: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Ask Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator = {}

-- Size: Ask Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.size = 1

-- Display: Ask Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.labels = {
  ["0"] = "Ask Price Fraction Indicator: Whole (0)",
  ["1"] = "Ask Price Fraction Indicator: Ten (1)",
  ["2"] = "Ask Price Fraction Indicator: Hundred (2)",
  ["3"] = "Ask Price Fraction Indicator: Thousand (3)",
  ["4"] = "Ask Price Fraction Indicator: Ten Thousand (4)",
  ["5"] = "Ask Price Fraction Indicator: Hundred Thousand (5)",
  ["6"] = "Ask Price Fraction Indicator: Million (6)",
  ["7"] = "Ask Price Fraction Indicator: Ten Million (7)",
  ["8"] = "Ask Price Fraction Indicator: Hundred Million (8)",
  ["9"] = "Ask Price Fraction Indicator: Billion (9)",
  ["A"] = "Ask Price Fraction Indicator: Negative Whole (A)",
  ["B"] = "Ask Price Fraction Indicator: Negative Ten (B)",
  ["C"] = "Ask Price Fraction Indicator: Negative Hundred (C)",
  ["D"] = "Ask Price Fraction Indicator: Negative Thousand (D)",
  ["E"] = "Ask Price Fraction Indicator: Negative Ten Thousand (E)",
  ["F"] = "Ask Price Fraction Indicator: Negative Hundred Thousand (F)",
  ["G"] = "Ask Price Fraction Indicator: Negative Million (G)",
}

box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.labels[value] or "Ask Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Ask Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Ask Price Quote Numeric
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_numeric = {}

-- Size: Ask Price Quote Numeric
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_numeric.size = 6

-- Display: Ask Price Quote Numeric
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_numeric.display = function(value)
  return "Ask Price Quote Numeric: "..value
end

-- Dissect: Ask Price Quote Numeric
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_numeric.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_numeric.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_quote_numeric, range, value, "Ask Price Quote Numeric: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Ask Price Quote Numeric is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_numeric.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_quote_numeric, range, value, display)

  return offset + length, value
end

-- Ask Price Quote Opening
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_opening = {}

-- Size: Ask Price Quote Opening
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_opening.size = 6

-- Display: Ask Price Quote Opening
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_opening.display = function(value)
  return "Ask Price Quote Opening: "..value
end

-- Dissect: Ask Price Quote Opening
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_opening.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_opening.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_opening.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_quote_opening, range, value, display)

  return offset + length, value
end

-- Ask Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_sign = {}

-- Size: Ask Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_sign.size = 1

-- Display: Ask Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_sign.labels = {
  ["+"] = "Ask Price Sign: Positive (+)",
  ["-"] = "Ask Price Sign: Negative (-)",
}

box_boxoptions_solamulticast_hsvf_v2_1.ask_price_sign.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_sign.labels[value] or "Ask Price Sign: Unknown("..value..")"
end

-- Dissect: Ask Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_sign, range, value, display)

  return offset + length, value
end

-- Ask Size
box_boxoptions_solamulticast_hsvf_v2_1.ask_size = {}

-- Size: Ask Size
box_boxoptions_solamulticast_hsvf_v2_1.ask_size.size = 5

-- Display: Ask Size
box_boxoptions_solamulticast_hsvf_v2_1.ask_size.display = function(value, buffer, offset, packet, parent)
  return "Ask Size: "..string.format("%.0f", value)
end

-- Dissect: Ask Size
box_boxoptions_solamulticast_hsvf_v2_1.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.ask_size.size
  local range = buffer(offset, length)
  local text = range:string()
  local powers = { ["C"] = 2, ["D"] = 3, ["E"] = 4, ["F"] = 5, ["G"] = 6, ["H"] = 7, ["I"] = 8, ["J"] = 9 }
  local value = 0
  local power = 0

  for index = 1, #text do
    local character = text:sub(index, index)
    if powers[character] then
      power = powers[character]
    else
      value = value * 10 + (tonumber(character) or 0)
    end
  end

  value = value * (10 ^ power)

  local display = box_boxoptions_solamulticast_hsvf_v2_1.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Auction Type
box_boxoptions_solamulticast_hsvf_v2_1.auction_type = {}

-- Size: Auction Type
box_boxoptions_solamulticast_hsvf_v2_1.auction_type.size = 1

-- Display: Auction Type
box_boxoptions_solamulticast_hsvf_v2_1.auction_type.labels = {
  ["G"] = "Auction Type: Regular Pip (G)",
  ["B"] = "Auction Type: Solicitation (B)",
  ["C"] = "Auction Type: Facilitation (C)",
  ["F"] = "Auction Type: Exposed Order (F)",
}

box_boxoptions_solamulticast_hsvf_v2_1.auction_type.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.auction_type.labels[value] or "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
box_boxoptions_solamulticast_hsvf_v2_1.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Bid Price
box_boxoptions_solamulticast_hsvf_v2_1.bid_price = {}

-- Size: Bid Price
box_boxoptions_solamulticast_hsvf_v2_1.bid_price.size = 6

-- Display: Bid Price
box_boxoptions_solamulticast_hsvf_v2_1.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
box_boxoptions_solamulticast_hsvf_v2_1.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.bid_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price, range, value, "Bid Price: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Bid Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator = {}

-- Size: Bid Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.size = 1

-- Display: Bid Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.labels = {
  ["0"] = "Bid Price Fraction Indicator: Whole (0)",
  ["1"] = "Bid Price Fraction Indicator: Ten (1)",
  ["2"] = "Bid Price Fraction Indicator: Hundred (2)",
  ["3"] = "Bid Price Fraction Indicator: Thousand (3)",
  ["4"] = "Bid Price Fraction Indicator: Ten Thousand (4)",
  ["5"] = "Bid Price Fraction Indicator: Hundred Thousand (5)",
  ["6"] = "Bid Price Fraction Indicator: Million (6)",
  ["7"] = "Bid Price Fraction Indicator: Ten Million (7)",
  ["8"] = "Bid Price Fraction Indicator: Hundred Million (8)",
  ["9"] = "Bid Price Fraction Indicator: Billion (9)",
  ["A"] = "Bid Price Fraction Indicator: Negative Whole (A)",
  ["B"] = "Bid Price Fraction Indicator: Negative Ten (B)",
  ["C"] = "Bid Price Fraction Indicator: Negative Hundred (C)",
  ["D"] = "Bid Price Fraction Indicator: Negative Thousand (D)",
  ["E"] = "Bid Price Fraction Indicator: Negative Ten Thousand (E)",
  ["F"] = "Bid Price Fraction Indicator: Negative Hundred Thousand (F)",
  ["G"] = "Bid Price Fraction Indicator: Negative Million (G)",
}

box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.labels[value] or "Bid Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Bid Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Bid Price Quote Numeric
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_numeric = {}

-- Size: Bid Price Quote Numeric
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_numeric.size = 6

-- Display: Bid Price Quote Numeric
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_numeric.display = function(value)
  return "Bid Price Quote Numeric: "..value
end

-- Dissect: Bid Price Quote Numeric
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_numeric.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_numeric.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_quote_numeric, range, value, "Bid Price Quote Numeric: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Bid Price Quote Numeric is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_numeric.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_quote_numeric, range, value, display)

  return offset + length, value
end

-- Bid Price Quote Opening
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_opening = {}

-- Size: Bid Price Quote Opening
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_opening.size = 6

-- Display: Bid Price Quote Opening
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_opening.display = function(value)
  return "Bid Price Quote Opening: "..value
end

-- Dissect: Bid Price Quote Opening
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_opening.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_opening.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_opening.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_quote_opening, range, value, display)

  return offset + length, value
end

-- Bid Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_sign = {}

-- Size: Bid Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_sign.size = 1

-- Display: Bid Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_sign.display = function(value)
  return "Bid Price Sign: "..value
end

-- Dissect: Bid Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_sign, range, value, display)

  return offset + length, value
end

-- Bid Size
box_boxoptions_solamulticast_hsvf_v2_1.bid_size = {}

-- Size: Bid Size
box_boxoptions_solamulticast_hsvf_v2_1.bid_size.size = 5

-- Display: Bid Size
box_boxoptions_solamulticast_hsvf_v2_1.bid_size.display = function(value, buffer, offset, packet, parent)
  return "Bid Size: "..string.format("%.0f", value)
end

-- Dissect: Bid Size
box_boxoptions_solamulticast_hsvf_v2_1.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.bid_size.size
  local range = buffer(offset, length)
  local text = range:string()
  local powers = { ["C"] = 2, ["D"] = 3, ["E"] = 4, ["F"] = 5, ["G"] = 6, ["H"] = 7, ["I"] = 8, ["J"] = 9 }
  local value = 0
  local power = 0

  for index = 1, #text do
    local character = text:sub(index, index)
    if powers[character] then
      power = powers[character]
    else
      value = value * 10 + (tonumber(character) or 0)
    end
  end

  value = value * (10 ^ power)

  local display = box_boxoptions_solamulticast_hsvf_v2_1.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Cmta
box_boxoptions_solamulticast_hsvf_v2_1.cmta = {}

-- Size: Cmta
box_boxoptions_solamulticast_hsvf_v2_1.cmta.size = 4

-- Display: Cmta
box_boxoptions_solamulticast_hsvf_v2_1.cmta.display = function(value)
  return "Cmta: "..value
end

-- Dissect: Cmta
box_boxoptions_solamulticast_hsvf_v2_1.cmta.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.cmta.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.cmta.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.cmta, range, value, display)

  return offset + length, value
end

-- Complex Order Instrument Allow Implied
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_allow_implied = {}

-- Size: Complex Order Instrument Allow Implied
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_allow_implied.size = 1

-- Display: Complex Order Instrument Allow Implied
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_allow_implied.labels = {
  ["N"] = "Complex Order Instrument Allow Implied: No (N)",
  ["C"] = "Complex Order Instrument Allow Implied: Continuous Implied (C)",
  ["S"] = "Complex Order Instrument Allow Implied: Snapshot Implied (S)",
}

box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_allow_implied.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_allow_implied.labels[value] or "Complex Order Instrument Allow Implied: Unknown("..value..")"
end

-- Dissect: Complex Order Instrument Allow Implied
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_allow_implied.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_allow_implied.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_allow_implied.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.complex_order_instrument_allow_implied, range, value, display)

  return offset + length, value
end

-- Complex Order Instrument Symbol
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_symbol = {}

-- Size: Complex Order Instrument Symbol
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_symbol.size = 30

-- Display: Complex Order Instrument Symbol
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_symbol.display = function(value)
  return "Complex Order Instrument Symbol: "..value
end

-- Dissect: Complex Order Instrument Symbol
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_symbol.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.complex_order_instrument_symbol, range, value, display)

  return offset + length, value
end

-- Deletion Type
box_boxoptions_solamulticast_hsvf_v2_1.deletion_type = {}

-- Size: Deletion Type
box_boxoptions_solamulticast_hsvf_v2_1.deletion_type.size = 1

-- Display: Deletion Type
box_boxoptions_solamulticast_hsvf_v2_1.deletion_type.labels = {
  [1] = "Deletion Type: Precise Order (1)",
  [3] = "Deletion Type: All Orders (3)",
}

box_boxoptions_solamulticast_hsvf_v2_1.deletion_type.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.deletion_type.labels[value] or "Deletion Type: Unknown("..value..")"
end

-- Dissect: Deletion Type
box_boxoptions_solamulticast_hsvf_v2_1.deletion_type.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.deletion_type.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.deletion_type, range, value, "Deletion Type: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Deletion Type is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.deletion_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.deletion_type, range, value, display)

  return offset + length, value
end

-- Delivery Month
box_boxoptions_solamulticast_hsvf_v2_1.delivery_month = {}

-- Size: Delivery Month
box_boxoptions_solamulticast_hsvf_v2_1.delivery_month.size = 1

-- Display: Delivery Month
box_boxoptions_solamulticast_hsvf_v2_1.delivery_month.labels = {
  ["M"] = "Delivery Month: January Put (M)",
  ["N"] = "Delivery Month: February Put (N)",
  ["O"] = "Delivery Month: March Put (O)",
  ["P"] = "Delivery Month: April Put (P)",
  ["Q"] = "Delivery Month: May Put (Q)",
  ["R"] = "Delivery Month: June Put (R)",
  ["S"] = "Delivery Month: July Put (S)",
  ["T"] = "Delivery Month: August Put (T)",
  ["U"] = "Delivery Month: September Put (U)",
  ["V"] = "Delivery Month: October Put (V)",
  ["W"] = "Delivery Month: November Put (W)",
}

box_boxoptions_solamulticast_hsvf_v2_1.delivery_month.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.delivery_month.labels[value] or "Delivery Month: Unknown("..value..")"
end

-- Dissect: Delivery Month
box_boxoptions_solamulticast_hsvf_v2_1.delivery_month.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.delivery_month.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.delivery_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.delivery_month, range, value, display)

  return offset + length, value
end

-- End Of The Exposition
box_boxoptions_solamulticast_hsvf_v2_1.end_of_the_exposition = {}

-- Size: End Of The Exposition
box_boxoptions_solamulticast_hsvf_v2_1.end_of_the_exposition.size = 8

-- Display: End Of The Exposition
box_boxoptions_solamulticast_hsvf_v2_1.end_of_the_exposition.display = function(value)
  if #value < 8 then
    return "End Of The Exposition: "..value
  end

  return "End Of The Exposition: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6).."."..value:sub(7, 8)
end

-- Dissect: End Of The Exposition
box_boxoptions_solamulticast_hsvf_v2_1.end_of_the_exposition.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.end_of_the_exposition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.end_of_the_exposition.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.end_of_the_exposition, range, value, display)

  return offset + length, value
end

-- Exchange Id
box_boxoptions_solamulticast_hsvf_v2_1.exchange_id = {}

-- Size: Exchange Id
box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.size = 1

-- Display: Exchange Id
box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.display = function(value)
  return "Exchange Id: "..value
end

-- Dissect: Exchange Id
box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.exchange_id, range, value, display)

  return offset + length, value
end

-- Expiry Day
box_boxoptions_solamulticast_hsvf_v2_1.expiry_day = {}

-- Size: Expiry Day
box_boxoptions_solamulticast_hsvf_v2_1.expiry_day.size = 2

-- Display: Expiry Day
box_boxoptions_solamulticast_hsvf_v2_1.expiry_day.display = function(value)
  return "Expiry Day: "..value
end

-- Dissect: Expiry Day
box_boxoptions_solamulticast_hsvf_v2_1.expiry_day.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.expiry_day.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.expiry_day, range, value, "Expiry Day: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Expiry Day is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.expiry_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.expiry_day, range, value, display)

  return offset + length, value
end

-- Expiry Month Code
box_boxoptions_solamulticast_hsvf_v2_1.expiry_month_code = {}

-- Size: Expiry Month Code
box_boxoptions_solamulticast_hsvf_v2_1.expiry_month_code.size = 1

-- Display: Expiry Month Code
box_boxoptions_solamulticast_hsvf_v2_1.expiry_month_code.labels = {
  ["M"] = "Expiry Month Code: January Put (M)",
  ["N"] = "Expiry Month Code: February Put (N)",
  ["O"] = "Expiry Month Code: March Put (O)",
  ["P"] = "Expiry Month Code: April Put (P)",
  ["Q"] = "Expiry Month Code: May Put (Q)",
  ["R"] = "Expiry Month Code: June Put (R)",
  ["S"] = "Expiry Month Code: July Put (S)",
  ["T"] = "Expiry Month Code: August Put (T)",
  ["U"] = "Expiry Month Code: September Put (U)",
  ["V"] = "Expiry Month Code: October Put (V)",
  ["W"] = "Expiry Month Code: November Put (W)",
}

box_boxoptions_solamulticast_hsvf_v2_1.expiry_month_code.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.expiry_month_code.labels[value] or "Expiry Month Code: Unknown("..value..")"
end

-- Dissect: Expiry Month Code
box_boxoptions_solamulticast_hsvf_v2_1.expiry_month_code.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.expiry_month_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.expiry_month_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.expiry_month_code, range, value, display)

  return offset + length, value
end

-- Expiry Year
box_boxoptions_solamulticast_hsvf_v2_1.expiry_year = {}

-- Size: Expiry Year
box_boxoptions_solamulticast_hsvf_v2_1.expiry_year.size = 2

-- Display: Expiry Year
box_boxoptions_solamulticast_hsvf_v2_1.expiry_year.display = function(value)
  return "Expiry Year: "..value
end

-- Dissect: Expiry Year
box_boxoptions_solamulticast_hsvf_v2_1.expiry_year.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.expiry_year.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.expiry_year, range, value, "Expiry Year: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Expiry Year is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.expiry_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.expiry_year, range, value, display)

  return offset + length, value
end

-- Filler 1
box_boxoptions_solamulticast_hsvf_v2_1.filler_1 = {}

-- Size: Filler 1
box_boxoptions_solamulticast_hsvf_v2_1.filler_1.size = 1

-- Display: Filler 1
box_boxoptions_solamulticast_hsvf_v2_1.filler_1.display = function(value)
  return "Filler 1: "..value
end

-- Dissect: Filler 1
box_boxoptions_solamulticast_hsvf_v2_1.filler_1.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.filler_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = box_boxoptions_solamulticast_hsvf_v2_1.filler_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.filler_1, range, value, display)

  return offset + length, value
end

-- Filler 2
box_boxoptions_solamulticast_hsvf_v2_1.filler_2 = {}

-- Size: Filler 2
box_boxoptions_solamulticast_hsvf_v2_1.filler_2.size = 2

-- Display: Filler 2
box_boxoptions_solamulticast_hsvf_v2_1.filler_2.display = function(value)
  return "Filler 2: "..value
end

-- Dissect: Filler 2
box_boxoptions_solamulticast_hsvf_v2_1.filler_2.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.filler_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = box_boxoptions_solamulticast_hsvf_v2_1.filler_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.filler_2, range, value, display)

  return offset + length, value
end

-- Filler 5
box_boxoptions_solamulticast_hsvf_v2_1.filler_5 = {}

-- Size: Filler 5
box_boxoptions_solamulticast_hsvf_v2_1.filler_5.size = 5

-- Display: Filler 5
box_boxoptions_solamulticast_hsvf_v2_1.filler_5.display = function(value)
  return "Filler 5: "..value
end

-- Dissect: Filler 5
box_boxoptions_solamulticast_hsvf_v2_1.filler_5.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.filler_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = box_boxoptions_solamulticast_hsvf_v2_1.filler_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.filler_5, range, value, display)

  return offset + length, value
end

-- Filler 6
box_boxoptions_solamulticast_hsvf_v2_1.filler_6 = {}

-- Size: Filler 6
box_boxoptions_solamulticast_hsvf_v2_1.filler_6.size = 6

-- Display: Filler 6
box_boxoptions_solamulticast_hsvf_v2_1.filler_6.display = function(value)
  return "Filler 6: "..value
end

-- Dissect: Filler 6
box_boxoptions_solamulticast_hsvf_v2_1.filler_6.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.filler_6.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = box_boxoptions_solamulticast_hsvf_v2_1.filler_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.filler_6, range, value, display)

  return offset + length, value
end

-- Filler 7
box_boxoptions_solamulticast_hsvf_v2_1.filler_7 = {}

-- Size: Filler 7
box_boxoptions_solamulticast_hsvf_v2_1.filler_7.size = 7

-- Display: Filler 7
box_boxoptions_solamulticast_hsvf_v2_1.filler_7.display = function(value)
  return "Filler 7: "..value
end

-- Dissect: Filler 7
box_boxoptions_solamulticast_hsvf_v2_1.filler_7.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.filler_7.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = box_boxoptions_solamulticast_hsvf_v2_1.filler_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.filler_7, range, value, display)

  return offset + length, value
end

-- Filler 8
box_boxoptions_solamulticast_hsvf_v2_1.filler_8 = {}

-- Size: Filler 8
box_boxoptions_solamulticast_hsvf_v2_1.filler_8.size = 8

-- Display: Filler 8
box_boxoptions_solamulticast_hsvf_v2_1.filler_8.display = function(value)
  return "Filler 8: "..value
end

-- Dissect: Filler 8
box_boxoptions_solamulticast_hsvf_v2_1.filler_8.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.filler_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = box_boxoptions_solamulticast_hsvf_v2_1.filler_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.filler_8, range, value, display)

  return offset + length, value
end

-- Firm Id
box_boxoptions_solamulticast_hsvf_v2_1.firm_id = {}

-- Size: Firm Id
box_boxoptions_solamulticast_hsvf_v2_1.firm_id.size = 4

-- Display: Firm Id
box_boxoptions_solamulticast_hsvf_v2_1.firm_id.display = function(value)
  return "Firm Id: "..value
end

-- Dissect: Firm Id
box_boxoptions_solamulticast_hsvf_v2_1.firm_id.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.firm_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Group
box_boxoptions_solamulticast_hsvf_v2_1.group = {}

-- Size: Group
box_boxoptions_solamulticast_hsvf_v2_1.group.size = 2

-- Display: Group
box_boxoptions_solamulticast_hsvf_v2_1.group.display = function(value)
  return "Group: "..value
end

-- Dissect: Group
box_boxoptions_solamulticast_hsvf_v2_1.group.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.group.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.group, range, value, display)

  return offset + length, value
end

-- Group Instrument
box_boxoptions_solamulticast_hsvf_v2_1.group_instrument = {}

-- Size: Group Instrument
box_boxoptions_solamulticast_hsvf_v2_1.group_instrument.size = 2

-- Display: Group Instrument
box_boxoptions_solamulticast_hsvf_v2_1.group_instrument.display = function(value)
  return "Group Instrument: "..value
end

-- Dissect: Group Instrument
box_boxoptions_solamulticast_hsvf_v2_1.group_instrument.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.group_instrument.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.group_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.group_instrument, range, value, display)

  return offset + length, value
end

-- Group Of The Complex Order Instrument
box_boxoptions_solamulticast_hsvf_v2_1.group_of_the_complex_order_instrument = {}

-- Size: Group Of The Complex Order Instrument
box_boxoptions_solamulticast_hsvf_v2_1.group_of_the_complex_order_instrument.size = 2

-- Display: Group Of The Complex Order Instrument
box_boxoptions_solamulticast_hsvf_v2_1.group_of_the_complex_order_instrument.display = function(value)
  return "Group Of The Complex Order Instrument: "..value
end

-- Dissect: Group Of The Complex Order Instrument
box_boxoptions_solamulticast_hsvf_v2_1.group_of_the_complex_order_instrument.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.group_of_the_complex_order_instrument.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.group_of_the_complex_order_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.group_of_the_complex_order_instrument, range, value, display)

  return offset + length, value
end

-- Group Status
box_boxoptions_solamulticast_hsvf_v2_1.group_status = {}

-- Size: Group Status
box_boxoptions_solamulticast_hsvf_v2_1.group_status.size = 1

-- Display: Group Status
box_boxoptions_solamulticast_hsvf_v2_1.group_status.labels = {
  ["Y"] = "Group Status: Preopening Phase (Y)",
  ["O"] = "Group Status: Opening Phase (O)",
  ["T"] = "Group Status: Opened For Trading (T)",
  ["F"] = "Group Status: Forbidden Phase (F)",
  ["H"] = "Group Status: Trading Halted (H)",
  ["A"] = "Group Status: Surveillance Intervention Phase (A)",
  ["C"] = "Group Status: Closed (C)",
}

box_boxoptions_solamulticast_hsvf_v2_1.group_status.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.group_status.labels[value] or "Group Status: Unknown("..value..")"
end

-- Dissect: Group Status
box_boxoptions_solamulticast_hsvf_v2_1.group_status.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.group_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.group_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.group_status, range, value, display)

  return offset + length, value
end

-- High Price
box_boxoptions_solamulticast_hsvf_v2_1.high_price = {}

-- Size: High Price
box_boxoptions_solamulticast_hsvf_v2_1.high_price.size = 6

-- Display: High Price
box_boxoptions_solamulticast_hsvf_v2_1.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
box_boxoptions_solamulticast_hsvf_v2_1.high_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.high_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.high_price, range, value, "High Price: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "High Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.high_price, range, value, display)

  return offset + length, value
end

-- High Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_indicator = {}

-- Size: High Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_indicator.size = 1

-- Display: High Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_indicator.labels = {
  ["0"] = "High Price Fraction Indicator: Whole (0)",
  ["1"] = "High Price Fraction Indicator: Ten (1)",
  ["2"] = "High Price Fraction Indicator: Hundred (2)",
  ["3"] = "High Price Fraction Indicator: Thousand (3)",
  ["4"] = "High Price Fraction Indicator: Ten Thousand (4)",
  ["5"] = "High Price Fraction Indicator: Hundred Thousand (5)",
  ["6"] = "High Price Fraction Indicator: Million (6)",
  ["7"] = "High Price Fraction Indicator: Ten Million (7)",
  ["8"] = "High Price Fraction Indicator: Hundred Million (8)",
  ["9"] = "High Price Fraction Indicator: Billion (9)",
  ["A"] = "High Price Fraction Indicator: Negative Whole (A)",
  ["B"] = "High Price Fraction Indicator: Negative Ten (B)",
  ["C"] = "High Price Fraction Indicator: Negative Hundred (C)",
  ["D"] = "High Price Fraction Indicator: Negative Thousand (D)",
  ["E"] = "High Price Fraction Indicator: Negative Ten Thousand (E)",
  ["F"] = "High Price Fraction Indicator: Negative Hundred Thousand (F)",
  ["G"] = "High Price Fraction Indicator: Negative Million (G)",
}

box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_indicator.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_indicator.labels[value] or "High Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: High Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.high_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- High Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.high_price_sign = {}

-- Size: High Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.high_price_sign.size = 1

-- Display: High Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.high_price_sign.labels = {
  ["+"] = "High Price Sign: Positive (+)",
  ["-"] = "High Price Sign: Negative (-)",
}

box_boxoptions_solamulticast_hsvf_v2_1.high_price_sign.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.high_price_sign.labels[value] or "High Price Sign: Unknown("..value..")"
end

-- Dissect: High Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.high_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.high_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.high_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.high_price_sign, range, value, display)

  return offset + length, value
end

-- Hsvf Etx
box_boxoptions_solamulticast_hsvf_v2_1.hsvf_etx = {}

-- Size: Hsvf Etx
box_boxoptions_solamulticast_hsvf_v2_1.hsvf_etx.size = 1

-- Display: Hsvf Etx
box_boxoptions_solamulticast_hsvf_v2_1.hsvf_etx.display = function(value)
  if value == 3 then
    return "Hsvf Etx: Etx"
  end

  return "Hsvf Etx: Unknown("..value..")"
end

-- Dissect: Hsvf Etx
box_boxoptions_solamulticast_hsvf_v2_1.hsvf_etx.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.hsvf_etx.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.hsvf_etx.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.hsvf_etx, range, value, display)

  return offset + length, value
end

-- Hsvf Stx
box_boxoptions_solamulticast_hsvf_v2_1.hsvf_stx = {}

-- Size: Hsvf Stx
box_boxoptions_solamulticast_hsvf_v2_1.hsvf_stx.size = 1

-- Display: Hsvf Stx
box_boxoptions_solamulticast_hsvf_v2_1.hsvf_stx.display = function(value)
  if value == 2 then
    return "Hsvf Stx: Stx"
  end

  return "Hsvf Stx: Unknown("..value..")"
end

-- Dissect: Hsvf Stx
box_boxoptions_solamulticast_hsvf_v2_1.hsvf_stx.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.hsvf_stx.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.hsvf_stx.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.hsvf_stx, range, value, display)

  return offset + length, value
end

-- Improvement Order Side
box_boxoptions_solamulticast_hsvf_v2_1.improvement_order_side = {}

-- Size: Improvement Order Side
box_boxoptions_solamulticast_hsvf_v2_1.improvement_order_side.size = 1

-- Display: Improvement Order Side
box_boxoptions_solamulticast_hsvf_v2_1.improvement_order_side.display = function(value)
  if value == "B" then
    return "Improvement Order Side: Buy (B)"
  end
  if value == "S" then
    return "Improvement Order Side: Sell (S)"
  end
  if value == " " then
    return "Improvement Order Side: All (<whitespace>)"
  end

  return "Improvement Order Side: Unknown("..value..")"
end

-- Dissect: Improvement Order Side
box_boxoptions_solamulticast_hsvf_v2_1.improvement_order_side.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.improvement_order_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.improvement_order_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.improvement_order_side, range, value, display)

  return offset + length, value
end

-- Improvement Phase Expiry Time
box_boxoptions_solamulticast_hsvf_v2_1.improvement_phase_expiry_time = {}

-- Size: Improvement Phase Expiry Time
box_boxoptions_solamulticast_hsvf_v2_1.improvement_phase_expiry_time.size = 8

-- Display: Improvement Phase Expiry Time
box_boxoptions_solamulticast_hsvf_v2_1.improvement_phase_expiry_time.display = function(value)
  if #value < 8 then
    return "Improvement Phase Expiry Time: "..value
  end

  return "Improvement Phase Expiry Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6).."."..value:sub(7, 8)
end

-- Dissect: Improvement Phase Expiry Time
box_boxoptions_solamulticast_hsvf_v2_1.improvement_phase_expiry_time.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.improvement_phase_expiry_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.improvement_phase_expiry_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.improvement_phase_expiry_time, range, value, display)

  return offset + length, value
end

-- Improvement Phase Sequential Number
box_boxoptions_solamulticast_hsvf_v2_1.improvement_phase_sequential_number = {}

-- Size: Improvement Phase Sequential Number
box_boxoptions_solamulticast_hsvf_v2_1.improvement_phase_sequential_number.size = 6

-- Display: Improvement Phase Sequential Number
box_boxoptions_solamulticast_hsvf_v2_1.improvement_phase_sequential_number.display = function(value)
  return "Improvement Phase Sequential Number: "..value
end

-- Dissect: Improvement Phase Sequential Number
box_boxoptions_solamulticast_hsvf_v2_1.improvement_phase_sequential_number.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.improvement_phase_sequential_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.improvement_phase_sequential_number, range, value, "Improvement Phase Sequential Number: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Improvement Phase Sequential Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.improvement_phase_sequential_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.improvement_phase_sequential_number, range, value, display)

  return offset + length, value
end

-- Improvement Process Expiry Duration
box_boxoptions_solamulticast_hsvf_v2_1.improvement_process_expiry_duration = {}

-- Size: Improvement Process Expiry Duration
box_boxoptions_solamulticast_hsvf_v2_1.improvement_process_expiry_duration.size = 4

-- Display: Improvement Process Expiry Duration
box_boxoptions_solamulticast_hsvf_v2_1.improvement_process_expiry_duration.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, box_boxoptions_solamulticast_hsvf_v2_1.improvement_process_expiry_duration.size):string(), 2)

  if text == nil then
    return "Improvement Process Expiry Duration: "..tostring(value)
  end

  return "Improvement Process Expiry Duration: "..text
end

-- Dissect: Improvement Process Expiry Duration
box_boxoptions_solamulticast_hsvf_v2_1.improvement_process_expiry_duration.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.improvement_process_expiry_duration.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.improvement_process_expiry_duration, range, value, "Improvement Process Expiry Duration: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Improvement Process Expiry Duration is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = box_boxoptions_solamulticast_hsvf_v2_1.improvement_process_expiry_duration.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.improvement_process_expiry_duration, range, value, display)

  return offset + length, value
end

-- Initial Order Price
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price = {}

-- Size: Initial Order Price
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price.size = 6

-- Display: Initial Order Price
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price.display = function(value)
  return "Initial Order Price: "..value
end

-- Dissect: Initial Order Price
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.initial_order_price, range, value, "Initial Order Price: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Initial Order Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.initial_order_price, range, value, display)

  return offset + length, value
end

-- Initial Order Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_indicator = {}

-- Size: Initial Order Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_indicator.size = 1

-- Display: Initial Order Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_indicator.labels = {
  ["0"] = "Initial Order Price Fraction Indicator: Whole (0)",
  ["1"] = "Initial Order Price Fraction Indicator: Ten (1)",
  ["2"] = "Initial Order Price Fraction Indicator: Hundred (2)",
  ["3"] = "Initial Order Price Fraction Indicator: Thousand (3)",
  ["4"] = "Initial Order Price Fraction Indicator: Ten Thousand (4)",
  ["5"] = "Initial Order Price Fraction Indicator: Hundred Thousand (5)",
  ["6"] = "Initial Order Price Fraction Indicator: Million (6)",
  ["7"] = "Initial Order Price Fraction Indicator: Ten Million (7)",
  ["8"] = "Initial Order Price Fraction Indicator: Hundred Million (8)",
  ["9"] = "Initial Order Price Fraction Indicator: Billion (9)",
  ["A"] = "Initial Order Price Fraction Indicator: Negative Whole (A)",
  ["B"] = "Initial Order Price Fraction Indicator: Negative Ten (B)",
  ["C"] = "Initial Order Price Fraction Indicator: Negative Hundred (C)",
  ["D"] = "Initial Order Price Fraction Indicator: Negative Thousand (D)",
  ["E"] = "Initial Order Price Fraction Indicator: Negative Ten Thousand (E)",
  ["F"] = "Initial Order Price Fraction Indicator: Negative Hundred Thousand (F)",
  ["G"] = "Initial Order Price Fraction Indicator: Negative Million (G)",
}

box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_indicator.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_indicator.labels[value] or "Initial Order Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Initial Order Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.initial_order_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Initial Order Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_sign = {}

-- Size: Initial Order Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_sign.size = 1

-- Display: Initial Order Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_sign.labels = {
  ["+"] = "Initial Order Price Sign: Positive (+)",
  ["-"] = "Initial Order Price Sign: Negative (-)",
}

box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_sign.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_sign.labels[value] or "Initial Order Price Sign: Unknown("..value..")"
end

-- Dissect: Initial Order Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.initial_order_price_sign, range, value, display)

  return offset + length, value
end

-- Initial Order Quantity
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_quantity = {}

-- Size: Initial Order Quantity
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_quantity.size = 8

-- Display: Initial Order Quantity
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_quantity.display = function(value)
  return "Initial Order Quantity: "..value
end

-- Dissect: Initial Order Quantity
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_quantity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.initial_order_quantity, range, value, display)

  return offset + length, value
end

-- Initial Order Side
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_side = {}

-- Size: Initial Order Side
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_side.size = 1

-- Display: Initial Order Side
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_side.labels = {
  ["B"] = "Initial Order Side: Buy (B)",
  ["S"] = "Initial Order Side: Sell (S)",
}

box_boxoptions_solamulticast_hsvf_v2_1.initial_order_side.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.initial_order_side.labels[value] or "Initial Order Side: Unknown("..value..")"
end

-- Dissect: Initial Order Side
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_side.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.initial_order_side, range, value, display)

  return offset + length, value
end

-- Instrument
box_boxoptions_solamulticast_hsvf_v2_1.instrument = {}

-- Size: Instrument
box_boxoptions_solamulticast_hsvf_v2_1.instrument.size = 4

-- Display: Instrument
box_boxoptions_solamulticast_hsvf_v2_1.instrument.display = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
box_boxoptions_solamulticast_hsvf_v2_1.instrument.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.instrument.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.instrument, range, value, display)

  return offset + length, value
end

-- Instrument External Code
box_boxoptions_solamulticast_hsvf_v2_1.instrument_external_code = {}

-- Size: Instrument External Code
box_boxoptions_solamulticast_hsvf_v2_1.instrument_external_code.size = 30

-- Display: Instrument External Code
box_boxoptions_solamulticast_hsvf_v2_1.instrument_external_code.display = function(value)
  return "Instrument External Code: "..value
end

-- Dissect: Instrument External Code
box_boxoptions_solamulticast_hsvf_v2_1.instrument_external_code.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.instrument_external_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_boxoptions_solamulticast_hsvf_v2_1.instrument_external_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.instrument_external_code, range, value, display)

  return offset + length, value
end

-- Instrument Status Marker
box_boxoptions_solamulticast_hsvf_v2_1.instrument_status_marker = {}

-- Size: Instrument Status Marker
box_boxoptions_solamulticast_hsvf_v2_1.instrument_status_marker.size = 1

-- Display: Instrument Status Marker
box_boxoptions_solamulticast_hsvf_v2_1.instrument_status_marker.labels = {
  ["Y"] = "Instrument Status Marker: Preopening Phase (Y)",
  ["O"] = "Instrument Status Marker: Opening Phase (O)",
  ["T"] = "Instrument Status Marker: Opened For Trading (T)",
  ["F"] = "Instrument Status Marker: Forbidden Phase (F)",
  ["H"] = "Instrument Status Marker: Trading Halted (H)",
  ["R"] = "Instrument Status Marker: Reserved Phase (R)",
  ["S"] = "Instrument Status Marker: Suspended Phase (S)",
  ["A"] = "Instrument Status Marker: Surveillance Intervention Phase (A)",
  ["C"] = "Instrument Status Marker: Closed (C)",
}

box_boxoptions_solamulticast_hsvf_v2_1.instrument_status_marker.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.instrument_status_marker.labels[value] or "Instrument Status Marker: Unknown("..value..")"
end

-- Dissect: Instrument Status Marker
box_boxoptions_solamulticast_hsvf_v2_1.instrument_status_marker.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.instrument_status_marker.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.instrument_status_marker.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.instrument_status_marker, range, value, display)

  return offset + length, value
end

-- Last Price
box_boxoptions_solamulticast_hsvf_v2_1.last_price = {}

-- Size: Last Price
box_boxoptions_solamulticast_hsvf_v2_1.last_price.size = 6

-- Display: Last Price
box_boxoptions_solamulticast_hsvf_v2_1.last_price.display = function(value)
  return "Last Price: "..value
end

-- Dissect: Last Price
box_boxoptions_solamulticast_hsvf_v2_1.last_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.last_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.last_price, range, value, "Last Price: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Last Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.last_price, range, value, display)

  return offset + length, value
end

-- Last Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_indicator = {}

-- Size: Last Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_indicator.size = 1

-- Display: Last Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_indicator.labels = {
  ["0"] = "Last Price Fraction Indicator: Whole (0)",
  ["1"] = "Last Price Fraction Indicator: Ten (1)",
  ["2"] = "Last Price Fraction Indicator: Hundred (2)",
  ["3"] = "Last Price Fraction Indicator: Thousand (3)",
  ["4"] = "Last Price Fraction Indicator: Ten Thousand (4)",
  ["5"] = "Last Price Fraction Indicator: Hundred Thousand (5)",
  ["6"] = "Last Price Fraction Indicator: Million (6)",
  ["7"] = "Last Price Fraction Indicator: Ten Million (7)",
  ["8"] = "Last Price Fraction Indicator: Hundred Million (8)",
  ["9"] = "Last Price Fraction Indicator: Billion (9)",
  ["A"] = "Last Price Fraction Indicator: Negative Whole (A)",
  ["B"] = "Last Price Fraction Indicator: Negative Ten (B)",
  ["C"] = "Last Price Fraction Indicator: Negative Hundred (C)",
  ["D"] = "Last Price Fraction Indicator: Negative Thousand (D)",
  ["E"] = "Last Price Fraction Indicator: Negative Ten Thousand (E)",
  ["F"] = "Last Price Fraction Indicator: Negative Hundred Thousand (F)",
  ["G"] = "Last Price Fraction Indicator: Negative Million (G)",
}

box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_indicator.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_indicator.labels[value] or "Last Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Last Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.last_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Last Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.last_price_sign = {}

-- Size: Last Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.last_price_sign.size = 1

-- Display: Last Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.last_price_sign.display = function(value)
  return "Last Price Sign: "..value
end

-- Dissect: Last Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.last_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.last_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.last_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.last_price_sign, range, value, display)

  return offset + length, value
end

-- Leg Ratio
box_boxoptions_solamulticast_hsvf_v2_1.leg_ratio = {}

-- Size: Leg Ratio
box_boxoptions_solamulticast_hsvf_v2_1.leg_ratio.size = 8

-- Display: Leg Ratio
box_boxoptions_solamulticast_hsvf_v2_1.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
box_boxoptions_solamulticast_hsvf_v2_1.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.leg_ratio.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.leg_ratio, range, value, "Leg Ratio: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Leg Ratio is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Ratio Sign
box_boxoptions_solamulticast_hsvf_v2_1.leg_ratio_sign = {}

-- Size: Leg Ratio Sign
box_boxoptions_solamulticast_hsvf_v2_1.leg_ratio_sign.size = 1

-- Display: Leg Ratio Sign
box_boxoptions_solamulticast_hsvf_v2_1.leg_ratio_sign.labels = {
  ["+"] = "Leg Ratio Sign: Positive (+)",
  ["-"] = "Leg Ratio Sign: Negative (-)",
}

box_boxoptions_solamulticast_hsvf_v2_1.leg_ratio_sign.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.leg_ratio_sign.labels[value] or "Leg Ratio Sign: Unknown("..value..")"
end

-- Dissect: Leg Ratio Sign
box_boxoptions_solamulticast_hsvf_v2_1.leg_ratio_sign.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.leg_ratio_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.leg_ratio_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.leg_ratio_sign, range, value, display)

  return offset + length, value
end

-- Leg Symbol
box_boxoptions_solamulticast_hsvf_v2_1.leg_symbol = {}

-- Size: Leg Symbol
box_boxoptions_solamulticast_hsvf_v2_1.leg_symbol.size = 30

-- Display: Leg Symbol
box_boxoptions_solamulticast_hsvf_v2_1.leg_symbol.display = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
box_boxoptions_solamulticast_hsvf_v2_1.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.leg_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_boxoptions_solamulticast_hsvf_v2_1.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Level Of Market Depth
box_boxoptions_solamulticast_hsvf_v2_1.level_of_market_depth = {}

-- Size: Level Of Market Depth
box_boxoptions_solamulticast_hsvf_v2_1.level_of_market_depth.size = 1

-- Display: Level Of Market Depth
box_boxoptions_solamulticast_hsvf_v2_1.level_of_market_depth.labels = {
  ["1"] = "Level Of Market Depth: Level 1 (1)",
  ["2"] = "Level Of Market Depth: Level 2 (2)",
  ["3"] = "Level Of Market Depth: Level 3 (3)",
  ["4"] = "Level Of Market Depth: Level 4 (4)",
  ["5"] = "Level Of Market Depth: Level 5 (5)",
  ["6"] = "Level Of Market Depth: Level 6 (6)",
  ["A"] = "Level Of Market Depth: Implied Price (A)",
  ["P"] = "Level Of Market Depth: Public Customer Volume (P)",
}

box_boxoptions_solamulticast_hsvf_v2_1.level_of_market_depth.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.level_of_market_depth.labels[value] or "Level Of Market Depth: Unknown("..value..")"
end

-- Dissect: Level Of Market Depth
box_boxoptions_solamulticast_hsvf_v2_1.level_of_market_depth.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.level_of_market_depth.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.level_of_market_depth.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.level_of_market_depth, range, value, display)

  return offset + length, value
end

-- Limit Entered For An Order
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order = {}

-- Size: Limit Entered For An Order
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order.size = 6

-- Display: Limit Entered For An Order
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order.display = function(value)
  return "Limit Entered For An Order: "..value
end

-- Dissect: Limit Entered For An Order
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.limit_entered_for_an_order, range, value, "Limit Entered For An Order: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Limit Entered For An Order is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.limit_entered_for_an_order, range, value, display)

  return offset + length, value
end

-- Limit Entered For An Order Sign
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_sign = {}

-- Size: Limit Entered For An Order Sign
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_sign.size = 1

-- Display: Limit Entered For An Order Sign
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_sign.labels = {
  ["+"] = "Limit Entered For An Order Sign: Positive (+)",
  ["-"] = "Limit Entered For An Order Sign: Negative (-)",
}

box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_sign.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_sign.labels[value] or "Limit Entered For An Order Sign: Unknown("..value..")"
end

-- Dissect: Limit Entered For An Order Sign
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_sign.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.limit_entered_for_an_order_sign, range, value, display)

  return offset + length, value
end

-- Limit Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.limit_fraction_indicator = {}

-- Size: Limit Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.limit_fraction_indicator.size = 1

-- Display: Limit Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.limit_fraction_indicator.labels = {
  ["0"] = "Limit Fraction Indicator: Whole (0)",
  ["1"] = "Limit Fraction Indicator: Ten (1)",
  ["2"] = "Limit Fraction Indicator: Hundred (2)",
  ["3"] = "Limit Fraction Indicator: Thousand (3)",
  ["4"] = "Limit Fraction Indicator: Ten Thousand (4)",
  ["5"] = "Limit Fraction Indicator: Hundred Thousand (5)",
  ["6"] = "Limit Fraction Indicator: Million (6)",
  ["7"] = "Limit Fraction Indicator: Ten Million (7)",
  ["8"] = "Limit Fraction Indicator: Hundred Million (8)",
  ["9"] = "Limit Fraction Indicator: Billion (9)",
  ["A"] = "Limit Fraction Indicator: Negative Whole (A)",
  ["B"] = "Limit Fraction Indicator: Negative Ten (B)",
  ["C"] = "Limit Fraction Indicator: Negative Hundred (C)",
  ["D"] = "Limit Fraction Indicator: Negative Thousand (D)",
  ["E"] = "Limit Fraction Indicator: Negative Ten Thousand (E)",
  ["F"] = "Limit Fraction Indicator: Negative Hundred Thousand (F)",
  ["G"] = "Limit Fraction Indicator: Negative Million (G)",
}

box_boxoptions_solamulticast_hsvf_v2_1.limit_fraction_indicator.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.limit_fraction_indicator.labels[value] or "Limit Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Limit Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.limit_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.limit_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.limit_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.limit_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Low Price
box_boxoptions_solamulticast_hsvf_v2_1.low_price = {}

-- Size: Low Price
box_boxoptions_solamulticast_hsvf_v2_1.low_price.size = 6

-- Display: Low Price
box_boxoptions_solamulticast_hsvf_v2_1.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
box_boxoptions_solamulticast_hsvf_v2_1.low_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.low_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.low_price, range, value, "Low Price: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Low Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.low_price, range, value, display)

  return offset + length, value
end

-- Low Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_indicator = {}

-- Size: Low Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_indicator.size = 1

-- Display: Low Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_indicator.labels = {
  ["0"] = "Low Price Fraction Indicator: Whole (0)",
  ["1"] = "Low Price Fraction Indicator: Ten (1)",
  ["2"] = "Low Price Fraction Indicator: Hundred (2)",
  ["3"] = "Low Price Fraction Indicator: Thousand (3)",
  ["4"] = "Low Price Fraction Indicator: Ten Thousand (4)",
  ["5"] = "Low Price Fraction Indicator: Hundred Thousand (5)",
  ["6"] = "Low Price Fraction Indicator: Million (6)",
  ["7"] = "Low Price Fraction Indicator: Ten Million (7)",
  ["8"] = "Low Price Fraction Indicator: Hundred Million (8)",
  ["9"] = "Low Price Fraction Indicator: Billion (9)",
  ["A"] = "Low Price Fraction Indicator: Negative Whole (A)",
  ["B"] = "Low Price Fraction Indicator: Negative Ten (B)",
  ["C"] = "Low Price Fraction Indicator: Negative Hundred (C)",
  ["D"] = "Low Price Fraction Indicator: Negative Thousand (D)",
  ["E"] = "Low Price Fraction Indicator: Negative Ten Thousand (E)",
  ["F"] = "Low Price Fraction Indicator: Negative Hundred Thousand (F)",
  ["G"] = "Low Price Fraction Indicator: Negative Million (G)",
}

box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_indicator.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_indicator.labels[value] or "Low Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Low Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.low_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Low Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.low_price_sign = {}

-- Size: Low Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.low_price_sign.size = 1

-- Display: Low Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.low_price_sign.labels = {
  ["+"] = "Low Price Sign: Positive (+)",
  ["-"] = "Low Price Sign: Negative (-)",
}

box_boxoptions_solamulticast_hsvf_v2_1.low_price_sign.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.low_price_sign.labels[value] or "Low Price Sign: Unknown("..value..")"
end

-- Dissect: Low Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.low_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.low_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.low_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.low_price_sign, range, value, display)

  return offset + length, value
end

-- Max Number Of Contracts Per Order
box_boxoptions_solamulticast_hsvf_v2_1.max_number_of_contracts_per_order = {}

-- Size: Max Number Of Contracts Per Order
box_boxoptions_solamulticast_hsvf_v2_1.max_number_of_contracts_per_order.size = 6

-- Display: Max Number Of Contracts Per Order
box_boxoptions_solamulticast_hsvf_v2_1.max_number_of_contracts_per_order.display = function(value)
  return "Max Number Of Contracts Per Order: "..value
end

-- Dissect: Max Number Of Contracts Per Order
box_boxoptions_solamulticast_hsvf_v2_1.max_number_of_contracts_per_order.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.max_number_of_contracts_per_order.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.max_number_of_contracts_per_order, range, value, "Max Number Of Contracts Per Order: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Max Number Of Contracts Per Order is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.max_number_of_contracts_per_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.max_number_of_contracts_per_order, range, value, display)

  return offset + length, value
end

-- Max Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price = {}

-- Size: Max Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price.size = 6

-- Display: Max Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price.display = function(value)
  return "Max Threshold Price: "..value
end

-- Dissect: Max Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.max_threshold_price, range, value, "Max Threshold Price: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Max Threshold Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.max_threshold_price, range, value, display)

  return offset + length, value
end

-- Max Threshold Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_indicator = {}

-- Size: Max Threshold Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_indicator.size = 1

-- Display: Max Threshold Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_indicator.labels = {
  ["0"] = "Max Threshold Price Fraction Indicator: Whole (0)",
  ["1"] = "Max Threshold Price Fraction Indicator: Ten (1)",
  ["2"] = "Max Threshold Price Fraction Indicator: Hundred (2)",
  ["3"] = "Max Threshold Price Fraction Indicator: Thousand (3)",
  ["4"] = "Max Threshold Price Fraction Indicator: Ten Thousand (4)",
  ["5"] = "Max Threshold Price Fraction Indicator: Hundred Thousand (5)",
  ["6"] = "Max Threshold Price Fraction Indicator: Million (6)",
  ["7"] = "Max Threshold Price Fraction Indicator: Ten Million (7)",
  ["8"] = "Max Threshold Price Fraction Indicator: Hundred Million (8)",
  ["9"] = "Max Threshold Price Fraction Indicator: Billion (9)",
  ["A"] = "Max Threshold Price Fraction Indicator: Negative Whole (A)",
  ["B"] = "Max Threshold Price Fraction Indicator: Negative Ten (B)",
  ["C"] = "Max Threshold Price Fraction Indicator: Negative Hundred (C)",
  ["D"] = "Max Threshold Price Fraction Indicator: Negative Thousand (D)",
  ["E"] = "Max Threshold Price Fraction Indicator: Negative Ten Thousand (E)",
  ["F"] = "Max Threshold Price Fraction Indicator: Negative Hundred Thousand (F)",
  ["G"] = "Max Threshold Price Fraction Indicator: Negative Million (G)",
}

box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_indicator.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_indicator.labels[value] or "Max Threshold Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Max Threshold Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.max_threshold_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Max Threshold Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_sign = {}

-- Size: Max Threshold Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_sign.size = 1

-- Display: Max Threshold Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_sign.labels = {
  ["+"] = "Max Threshold Price Sign: Positive (+)",
  ["-"] = "Max Threshold Price Sign: Negative (-)",
}

box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_sign.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_sign.labels[value] or "Max Threshold Price Sign: Unknown("..value..")"
end

-- Dissect: Max Threshold Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.max_threshold_price_sign, range, value, display)

  return offset + length, value
end

-- Maximum Number Of Contracts Per Order
box_boxoptions_solamulticast_hsvf_v2_1.maximum_number_of_contracts_per_order = {}

-- Size: Maximum Number Of Contracts Per Order
box_boxoptions_solamulticast_hsvf_v2_1.maximum_number_of_contracts_per_order.size = 6

-- Display: Maximum Number Of Contracts Per Order
box_boxoptions_solamulticast_hsvf_v2_1.maximum_number_of_contracts_per_order.display = function(value)
  return "Maximum Number Of Contracts Per Order: "..value
end

-- Dissect: Maximum Number Of Contracts Per Order
box_boxoptions_solamulticast_hsvf_v2_1.maximum_number_of_contracts_per_order.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.maximum_number_of_contracts_per_order.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.maximum_number_of_contracts_per_order, range, value, "Maximum Number Of Contracts Per Order: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Maximum Number Of Contracts Per Order is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.maximum_number_of_contracts_per_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.maximum_number_of_contracts_per_order, range, value, display)

  return offset + length, value
end

-- Maximum Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price = {}

-- Size: Maximum Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price.size = 6

-- Display: Maximum Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price.display = function(value)
  return "Maximum Threshold Price: "..value
end

-- Dissect: Maximum Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.maximum_threshold_price, range, value, "Maximum Threshold Price: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Maximum Threshold Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.maximum_threshold_price, range, value, display)

  return offset + length, value
end

-- Maximum Threshold Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_indicator = {}

-- Size: Maximum Threshold Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_indicator.size = 1

-- Display: Maximum Threshold Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_indicator.labels = {
  ["0"] = "Maximum Threshold Price Fraction Indicator: Whole (0)",
  ["1"] = "Maximum Threshold Price Fraction Indicator: Ten (1)",
  ["2"] = "Maximum Threshold Price Fraction Indicator: Hundred (2)",
  ["3"] = "Maximum Threshold Price Fraction Indicator: Thousand (3)",
  ["4"] = "Maximum Threshold Price Fraction Indicator: Ten Thousand (4)",
  ["5"] = "Maximum Threshold Price Fraction Indicator: Hundred Thousand (5)",
  ["6"] = "Maximum Threshold Price Fraction Indicator: Million (6)",
  ["7"] = "Maximum Threshold Price Fraction Indicator: Ten Million (7)",
  ["8"] = "Maximum Threshold Price Fraction Indicator: Hundred Million (8)",
  ["9"] = "Maximum Threshold Price Fraction Indicator: Billion (9)",
  ["A"] = "Maximum Threshold Price Fraction Indicator: Negative Whole (A)",
  ["B"] = "Maximum Threshold Price Fraction Indicator: Negative Ten (B)",
  ["C"] = "Maximum Threshold Price Fraction Indicator: Negative Hundred (C)",
  ["D"] = "Maximum Threshold Price Fraction Indicator: Negative Thousand (D)",
  ["E"] = "Maximum Threshold Price Fraction Indicator: Negative Ten Thousand (E)",
  ["F"] = "Maximum Threshold Price Fraction Indicator: Negative Hundred Thousand (F)",
  ["G"] = "Maximum Threshold Price Fraction Indicator: Negative Million (G)",
}

box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_indicator.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_indicator.labels[value] or "Maximum Threshold Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Maximum Threshold Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.maximum_threshold_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Message Type
box_boxoptions_solamulticast_hsvf_v2_1.message_type = {}

-- Size: Message Type
box_boxoptions_solamulticast_hsvf_v2_1.message_type.size = 2

-- Display: Message Type
box_boxoptions_solamulticast_hsvf_v2_1.message_type.labels = {
  ["U"] = "Message Type: End Of Transmission Message (U)",
  ["V"] = "Message Type: Circuit Assurance Message (V)",
  ["Z"] = "Message Type: System Timestamp Message (Z)",
  ["C"] = "Message Type: Option Trade Message (C)",
  ["CS"] = "Message Type: Strategy Trade Message (CS)",
  ["D"] = "Message Type: Option Request For Quote Message (D)",
  ["F"] = "Message Type: Option Quote Message (F)",
  ["FS"] = "Message Type: Complex Order Quote Message (FS)",
  ["GC"] = "Message Type: Group Opening Time Message (GC)",
  ["GR"] = "Message Type: Group Status Message (GR)",
  ["GS"] = "Message Type: Strategies Group Status Message (GS)",
  ["H"] = "Message Type: Option Market Depth Message (H)",
  ["HS"] = "Message Type: Complex Order Market Depth Message (HS)",
  ["I"] = "Message Type: Option Trade Cancellation Message (I)",
  ["IS"] = "Message Type: Complex Order Trade Cancellation Message (IS)",
  ["J"] = "Message Type: Option Instrument Keys Message (J)",
  ["JS"] = "Message Type: Complex Order Instrument Keys Message (JS)",
  ["N"] = "Message Type: Option Summary Message (N)",
  ["NS"] = "Message Type: Complex Order Summary Message (NS)",
  ["Q"] = "Message Type: Beginning Of Options Summary Message (Q)",
  ["QS"] = "Message Type: Beginning Of Complex Order Summary Message (QS)",
  ["S"] = "Message Type: End Of Sales Message (S)",
  ["M"] = "Message Type: Start Of Auction On Option Message (M)",
  ["MS"] = "Message Type: Start Of Auction On Complex Order Message (MS)",
  ["O"] = "Message Type: Start Of Exposition On Option Message (O)",
  ["OS"] = "Message Type: Start Of Exposition On Complex Order Message (OS)",
  ["T"] = "Message Type: End Of Auction Or Exposition On Option Message (T)",
  ["TS"] = "Message Type: End Of Auction Or Exposition On Complex Instruments Message (TS)",
}

box_boxoptions_solamulticast_hsvf_v2_1.message_type.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
box_boxoptions_solamulticast_hsvf_v2_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.message_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_boxoptions_solamulticast_hsvf_v2_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Min Number Of Contracts Per Order
box_boxoptions_solamulticast_hsvf_v2_1.min_number_of_contracts_per_order = {}

-- Size: Min Number Of Contracts Per Order
box_boxoptions_solamulticast_hsvf_v2_1.min_number_of_contracts_per_order.size = 6

-- Display: Min Number Of Contracts Per Order
box_boxoptions_solamulticast_hsvf_v2_1.min_number_of_contracts_per_order.display = function(value)
  return "Min Number Of Contracts Per Order: "..value
end

-- Dissect: Min Number Of Contracts Per Order
box_boxoptions_solamulticast_hsvf_v2_1.min_number_of_contracts_per_order.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.min_number_of_contracts_per_order.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.min_number_of_contracts_per_order, range, value, "Min Number Of Contracts Per Order: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Min Number Of Contracts Per Order is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.min_number_of_contracts_per_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.min_number_of_contracts_per_order, range, value, display)

  return offset + length, value
end

-- Min Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price = {}

-- Size: Min Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price.size = 6

-- Display: Min Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price.display = function(value)
  return "Min Threshold Price: "..value
end

-- Dissect: Min Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.min_threshold_price, range, value, "Min Threshold Price: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Min Threshold Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.min_threshold_price, range, value, display)

  return offset + length, value
end

-- Min Threshold Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_indicator = {}

-- Size: Min Threshold Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_indicator.size = 1

-- Display: Min Threshold Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_indicator.labels = {
  ["0"] = "Min Threshold Price Fraction Indicator: Whole (0)",
  ["1"] = "Min Threshold Price Fraction Indicator: Ten (1)",
  ["2"] = "Min Threshold Price Fraction Indicator: Hundred (2)",
  ["3"] = "Min Threshold Price Fraction Indicator: Thousand (3)",
  ["4"] = "Min Threshold Price Fraction Indicator: Ten Thousand (4)",
  ["5"] = "Min Threshold Price Fraction Indicator: Hundred Thousand (5)",
  ["6"] = "Min Threshold Price Fraction Indicator: Million (6)",
  ["7"] = "Min Threshold Price Fraction Indicator: Ten Million (7)",
  ["8"] = "Min Threshold Price Fraction Indicator: Hundred Million (8)",
  ["9"] = "Min Threshold Price Fraction Indicator: Billion (9)",
  ["A"] = "Min Threshold Price Fraction Indicator: Negative Whole (A)",
  ["B"] = "Min Threshold Price Fraction Indicator: Negative Ten (B)",
  ["C"] = "Min Threshold Price Fraction Indicator: Negative Hundred (C)",
  ["D"] = "Min Threshold Price Fraction Indicator: Negative Thousand (D)",
  ["E"] = "Min Threshold Price Fraction Indicator: Negative Ten Thousand (E)",
  ["F"] = "Min Threshold Price Fraction Indicator: Negative Hundred Thousand (F)",
  ["G"] = "Min Threshold Price Fraction Indicator: Negative Million (G)",
}

box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_indicator.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_indicator.labels[value] or "Min Threshold Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Min Threshold Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.min_threshold_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Min Threshold Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_sign = {}

-- Size: Min Threshold Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_sign.size = 1

-- Display: Min Threshold Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_sign.labels = {
  ["+"] = "Min Threshold Price Sign: Positive (+)",
  ["-"] = "Min Threshold Price Sign: Negative (-)",
}

box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_sign.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_sign.labels[value] or "Min Threshold Price Sign: Unknown("..value..")"
end

-- Dissect: Min Threshold Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.min_threshold_price_sign, range, value, display)

  return offset + length, value
end

-- Minimum Number Of Contracts Per Order
box_boxoptions_solamulticast_hsvf_v2_1.minimum_number_of_contracts_per_order = {}

-- Size: Minimum Number Of Contracts Per Order
box_boxoptions_solamulticast_hsvf_v2_1.minimum_number_of_contracts_per_order.size = 6

-- Display: Minimum Number Of Contracts Per Order
box_boxoptions_solamulticast_hsvf_v2_1.minimum_number_of_contracts_per_order.display = function(value)
  return "Minimum Number Of Contracts Per Order: "..value
end

-- Dissect: Minimum Number Of Contracts Per Order
box_boxoptions_solamulticast_hsvf_v2_1.minimum_number_of_contracts_per_order.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.minimum_number_of_contracts_per_order.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.minimum_number_of_contracts_per_order, range, value, "Minimum Number Of Contracts Per Order: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Minimum Number Of Contracts Per Order is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.minimum_number_of_contracts_per_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.minimum_number_of_contracts_per_order, range, value, display)

  return offset + length, value
end

-- Minimum Quantity For Improvement Order
box_boxoptions_solamulticast_hsvf_v2_1.minimum_quantity_for_improvement_order = {}

-- Size: Minimum Quantity For Improvement Order
box_boxoptions_solamulticast_hsvf_v2_1.minimum_quantity_for_improvement_order.size = 8

-- Display: Minimum Quantity For Improvement Order
box_boxoptions_solamulticast_hsvf_v2_1.minimum_quantity_for_improvement_order.display = function(value)
  return "Minimum Quantity For Improvement Order: "..value
end

-- Dissect: Minimum Quantity For Improvement Order
box_boxoptions_solamulticast_hsvf_v2_1.minimum_quantity_for_improvement_order.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.minimum_quantity_for_improvement_order.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.minimum_quantity_for_improvement_order, range, value, "Minimum Quantity For Improvement Order: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Minimum Quantity For Improvement Order is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.minimum_quantity_for_improvement_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.minimum_quantity_for_improvement_order, range, value, display)

  return offset + length, value
end

-- Minimum Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price = {}

-- Size: Minimum Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price.size = 6

-- Display: Minimum Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price.display = function(value)
  return "Minimum Threshold Price: "..value
end

-- Dissect: Minimum Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.minimum_threshold_price, range, value, "Minimum Threshold Price: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Minimum Threshold Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.minimum_threshold_price, range, value, display)

  return offset + length, value
end

-- Minimum Threshold Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_indicator = {}

-- Size: Minimum Threshold Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_indicator.size = 1

-- Display: Minimum Threshold Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_indicator.labels = {
  ["0"] = "Minimum Threshold Price Fraction Indicator: Whole (0)",
  ["1"] = "Minimum Threshold Price Fraction Indicator: Ten (1)",
  ["2"] = "Minimum Threshold Price Fraction Indicator: Hundred (2)",
  ["3"] = "Minimum Threshold Price Fraction Indicator: Thousand (3)",
  ["4"] = "Minimum Threshold Price Fraction Indicator: Ten Thousand (4)",
  ["5"] = "Minimum Threshold Price Fraction Indicator: Hundred Thousand (5)",
  ["6"] = "Minimum Threshold Price Fraction Indicator: Million (6)",
  ["7"] = "Minimum Threshold Price Fraction Indicator: Ten Million (7)",
  ["8"] = "Minimum Threshold Price Fraction Indicator: Hundred Million (8)",
  ["9"] = "Minimum Threshold Price Fraction Indicator: Billion (9)",
  ["A"] = "Minimum Threshold Price Fraction Indicator: Negative Whole (A)",
  ["B"] = "Minimum Threshold Price Fraction Indicator: Negative Ten (B)",
  ["C"] = "Minimum Threshold Price Fraction Indicator: Negative Hundred (C)",
  ["D"] = "Minimum Threshold Price Fraction Indicator: Negative Thousand (D)",
  ["E"] = "Minimum Threshold Price Fraction Indicator: Negative Ten Thousand (E)",
  ["F"] = "Minimum Threshold Price Fraction Indicator: Negative Hundred Thousand (F)",
  ["G"] = "Minimum Threshold Price Fraction Indicator: Negative Million (G)",
}

box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_indicator.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_indicator.labels[value] or "Minimum Threshold Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Minimum Threshold Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.minimum_threshold_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Net Change
box_boxoptions_solamulticast_hsvf_v2_1.net_change = {}

-- Size: Net Change
box_boxoptions_solamulticast_hsvf_v2_1.net_change.size = 6

-- Display: Net Change
box_boxoptions_solamulticast_hsvf_v2_1.net_change.display = function(value)
  return "Net Change: "..value
end

-- Dissect: Net Change
box_boxoptions_solamulticast_hsvf_v2_1.net_change.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.net_change.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.net_change, range, value, "Net Change: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Net Change is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.net_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.net_change, range, value, display)

  return offset + length, value
end

-- Net Change Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_indicator = {}

-- Size: Net Change Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_indicator.size = 1

-- Display: Net Change Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_indicator.labels = {
  ["0"] = "Net Change Fraction Indicator: Whole (0)",
  ["1"] = "Net Change Fraction Indicator: Ten (1)",
  ["2"] = "Net Change Fraction Indicator: Hundred (2)",
  ["3"] = "Net Change Fraction Indicator: Thousand (3)",
  ["4"] = "Net Change Fraction Indicator: Ten Thousand (4)",
  ["5"] = "Net Change Fraction Indicator: Hundred Thousand (5)",
  ["6"] = "Net Change Fraction Indicator: Million (6)",
  ["7"] = "Net Change Fraction Indicator: Ten Million (7)",
  ["8"] = "Net Change Fraction Indicator: Hundred Million (8)",
  ["9"] = "Net Change Fraction Indicator: Billion (9)",
  ["A"] = "Net Change Fraction Indicator: Negative Whole (A)",
  ["B"] = "Net Change Fraction Indicator: Negative Ten (B)",
  ["C"] = "Net Change Fraction Indicator: Negative Hundred (C)",
  ["D"] = "Net Change Fraction Indicator: Negative Thousand (D)",
  ["E"] = "Net Change Fraction Indicator: Negative Ten Thousand (E)",
  ["F"] = "Net Change Fraction Indicator: Negative Hundred Thousand (F)",
  ["G"] = "Net Change Fraction Indicator: Negative Million (G)",
}

box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_indicator.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_indicator.labels[value] or "Net Change Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Net Change Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.net_change_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Net Change Sign
box_boxoptions_solamulticast_hsvf_v2_1.net_change_sign = {}

-- Size: Net Change Sign
box_boxoptions_solamulticast_hsvf_v2_1.net_change_sign.size = 1

-- Display: Net Change Sign
box_boxoptions_solamulticast_hsvf_v2_1.net_change_sign.labels = {
  ["+"] = "Net Change Sign: Positive (+)",
  ["-"] = "Net Change Sign: Negative (-)",
}

box_boxoptions_solamulticast_hsvf_v2_1.net_change_sign.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.net_change_sign.labels[value] or "Net Change Sign: Unknown("..value..")"
end

-- Dissect: Net Change Sign
box_boxoptions_solamulticast_hsvf_v2_1.net_change_sign.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.net_change_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.net_change_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.net_change_sign, range, value, display)

  return offset + length, value
end

-- Number Of Ask Orders
box_boxoptions_solamulticast_hsvf_v2_1.number_of_ask_orders = {}

-- Size: Number Of Ask Orders
box_boxoptions_solamulticast_hsvf_v2_1.number_of_ask_orders.size = 2

-- Display: Number Of Ask Orders
box_boxoptions_solamulticast_hsvf_v2_1.number_of_ask_orders.display = function(value, buffer, offset, packet, parent)
  return "Number Of Ask Orders: "..string.format("%.0f", value)
end

-- Dissect: Number Of Ask Orders
box_boxoptions_solamulticast_hsvf_v2_1.number_of_ask_orders.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.number_of_ask_orders.size
  local range = buffer(offset, length)
  local text = range:string()
  local powers = { ["C"] = 2, ["D"] = 3, ["E"] = 4, ["F"] = 5, ["G"] = 6, ["H"] = 7, ["I"] = 8, ["J"] = 9 }
  local value = 0
  local power = 0

  for index = 1, #text do
    local character = text:sub(index, index)
    if powers[character] then
      power = powers[character]
    else
      value = value * 10 + (tonumber(character) or 0)
    end
  end

  value = value * (10 ^ power)

  local display = box_boxoptions_solamulticast_hsvf_v2_1.number_of_ask_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.number_of_ask_orders, range, value, display)

  return offset + length, value
end

-- Number Of Bid Orders
box_boxoptions_solamulticast_hsvf_v2_1.number_of_bid_orders = {}

-- Size: Number Of Bid Orders
box_boxoptions_solamulticast_hsvf_v2_1.number_of_bid_orders.size = 2

-- Display: Number Of Bid Orders
box_boxoptions_solamulticast_hsvf_v2_1.number_of_bid_orders.display = function(value, buffer, offset, packet, parent)
  return "Number Of Bid Orders: "..string.format("%.0f", value)
end

-- Dissect: Number Of Bid Orders
box_boxoptions_solamulticast_hsvf_v2_1.number_of_bid_orders.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.number_of_bid_orders.size
  local range = buffer(offset, length)
  local text = range:string()
  local powers = { ["C"] = 2, ["D"] = 3, ["E"] = 4, ["F"] = 5, ["G"] = 6, ["H"] = 7, ["I"] = 8, ["J"] = 9 }
  local value = 0
  local power = 0

  for index = 1, #text do
    local character = text:sub(index, index)
    if powers[character] then
      power = powers[character]
    else
      value = value * 10 + (tonumber(character) or 0)
    end
  end

  value = value * (10 ^ power)

  local display = box_boxoptions_solamulticast_hsvf_v2_1.number_of_bid_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.number_of_bid_orders, range, value, display)

  return offset + length, value
end

-- Number Of Legs
box_boxoptions_solamulticast_hsvf_v2_1.number_of_legs = {}

-- Size: Number Of Legs
box_boxoptions_solamulticast_hsvf_v2_1.number_of_legs.size = 2

-- Display: Number Of Legs
box_boxoptions_solamulticast_hsvf_v2_1.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
box_boxoptions_solamulticast_hsvf_v2_1.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.number_of_legs.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.number_of_legs, range, value, "Number Of Legs: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Number Of Legs is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Number Of Levels
box_boxoptions_solamulticast_hsvf_v2_1.number_of_levels = {}

-- Size: Number Of Levels
box_boxoptions_solamulticast_hsvf_v2_1.number_of_levels.size = 1

-- Display: Number Of Levels
box_boxoptions_solamulticast_hsvf_v2_1.number_of_levels.display = function(value)
  return "Number Of Levels: "..value
end

-- Dissect: Number Of Levels
box_boxoptions_solamulticast_hsvf_v2_1.number_of_levels.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.number_of_levels.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.number_of_levels, range, value, "Number Of Levels: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Number Of Levels is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.number_of_levels.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.number_of_levels, range, value, display)

  return offset + length, value
end

-- Numeric Tick Increment
box_boxoptions_solamulticast_hsvf_v2_1.numeric_tick_increment = {}

-- Size: Numeric Tick Increment
box_boxoptions_solamulticast_hsvf_v2_1.numeric_tick_increment.size = 6

-- Display: Numeric Tick Increment
box_boxoptions_solamulticast_hsvf_v2_1.numeric_tick_increment.display = function(value)
  return "Numeric Tick Increment: "..value
end

-- Dissect: Numeric Tick Increment
box_boxoptions_solamulticast_hsvf_v2_1.numeric_tick_increment.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.numeric_tick_increment.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.numeric_tick_increment, range, value, "Numeric Tick Increment: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Numeric Tick Increment is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.numeric_tick_increment.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.numeric_tick_increment, range, value, display)

  return offset + length, value
end

-- Open Price
box_boxoptions_solamulticast_hsvf_v2_1.open_price = {}

-- Size: Open Price
box_boxoptions_solamulticast_hsvf_v2_1.open_price.size = 6

-- Display: Open Price
box_boxoptions_solamulticast_hsvf_v2_1.open_price.display = function(value)
  return "Open Price: "..value
end

-- Dissect: Open Price
box_boxoptions_solamulticast_hsvf_v2_1.open_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.open_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.open_price, range, value, "Open Price: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Open Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.open_price, range, value, display)

  return offset + length, value
end

-- Open Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_indicator = {}

-- Size: Open Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_indicator.size = 1

-- Display: Open Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_indicator.labels = {
  ["0"] = "Open Price Fraction Indicator: Whole (0)",
  ["1"] = "Open Price Fraction Indicator: Ten (1)",
  ["2"] = "Open Price Fraction Indicator: Hundred (2)",
  ["3"] = "Open Price Fraction Indicator: Thousand (3)",
  ["4"] = "Open Price Fraction Indicator: Ten Thousand (4)",
  ["5"] = "Open Price Fraction Indicator: Hundred Thousand (5)",
  ["6"] = "Open Price Fraction Indicator: Million (6)",
  ["7"] = "Open Price Fraction Indicator: Ten Million (7)",
  ["8"] = "Open Price Fraction Indicator: Hundred Million (8)",
  ["9"] = "Open Price Fraction Indicator: Billion (9)",
  ["A"] = "Open Price Fraction Indicator: Negative Whole (A)",
  ["B"] = "Open Price Fraction Indicator: Negative Ten (B)",
  ["C"] = "Open Price Fraction Indicator: Negative Hundred (C)",
  ["D"] = "Open Price Fraction Indicator: Negative Thousand (D)",
  ["E"] = "Open Price Fraction Indicator: Negative Ten Thousand (E)",
  ["F"] = "Open Price Fraction Indicator: Negative Hundred Thousand (F)",
  ["G"] = "Open Price Fraction Indicator: Negative Million (G)",
}

box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_indicator.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_indicator.labels[value] or "Open Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Open Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.open_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Open Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.open_price_sign = {}

-- Size: Open Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.open_price_sign.size = 1

-- Display: Open Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.open_price_sign.labels = {
  ["+"] = "Open Price Sign: Positive (+)",
  ["-"] = "Open Price Sign: Negative (-)",
}

box_boxoptions_solamulticast_hsvf_v2_1.open_price_sign.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.open_price_sign.labels[value] or "Open Price Sign: Unknown("..value..")"
end

-- Dissect: Open Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.open_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.open_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.open_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.open_price_sign, range, value, display)

  return offset + length, value
end

-- Opra Trade Marker
box_boxoptions_solamulticast_hsvf_v2_1.opra_trade_marker = {}

-- Size: Opra Trade Marker
box_boxoptions_solamulticast_hsvf_v2_1.opra_trade_marker.size = 1

-- Display: Opra Trade Marker
box_boxoptions_solamulticast_hsvf_v2_1.opra_trade_marker.display = function(value)
  return "Opra Trade Marker: "..value
end

-- Dissect: Opra Trade Marker
box_boxoptions_solamulticast_hsvf_v2_1.opra_trade_marker.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.opra_trade_marker.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.opra_trade_marker.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.opra_trade_marker, range, value, display)

  return offset + length, value
end

-- Option Type
box_boxoptions_solamulticast_hsvf_v2_1.option_type = {}

-- Size: Option Type
box_boxoptions_solamulticast_hsvf_v2_1.option_type.size = 1

-- Display: Option Type
box_boxoptions_solamulticast_hsvf_v2_1.option_type.labels = {
  ["A"] = "Option Type: American (A)",
  ["E"] = "Option Type: European (E)",
}

box_boxoptions_solamulticast_hsvf_v2_1.option_type.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.option_type.labels[value] or "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
box_boxoptions_solamulticast_hsvf_v2_1.option_type.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.option_type, range, value, display)

  return offset + length, value
end

-- Order Quantity
box_boxoptions_solamulticast_hsvf_v2_1.order_quantity = {}

-- Size: Order Quantity
box_boxoptions_solamulticast_hsvf_v2_1.order_quantity.size = 8

-- Display: Order Quantity
box_boxoptions_solamulticast_hsvf_v2_1.order_quantity.display = function(value)
  return "Order Quantity: "..value
end

-- Dissect: Order Quantity
box_boxoptions_solamulticast_hsvf_v2_1.order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.order_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.order_quantity, range, value, "Order Quantity: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Order Quantity is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.order_quantity, range, value, display)

  return offset + length, value
end

-- Order Sequence Number
box_boxoptions_solamulticast_hsvf_v2_1.order_sequence_number = {}

-- Size: Order Sequence Number
box_boxoptions_solamulticast_hsvf_v2_1.order_sequence_number.size = 6

-- Display: Order Sequence Number
box_boxoptions_solamulticast_hsvf_v2_1.order_sequence_number.display = function(value)
  return "Order Sequence Number: "..value
end

-- Dissect: Order Sequence Number
box_boxoptions_solamulticast_hsvf_v2_1.order_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.order_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.order_sequence_number, range, value, "Order Sequence Number: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Order Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.order_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.order_sequence_number, range, value, display)

  return offset + length, value
end

-- Order Side
box_boxoptions_solamulticast_hsvf_v2_1.order_side = {}

-- Size: Order Side
box_boxoptions_solamulticast_hsvf_v2_1.order_side.size = 1

-- Display: Order Side
box_boxoptions_solamulticast_hsvf_v2_1.order_side.labels = {
  ["B"] = "Order Side: Buy (B)",
  ["S"] = "Order Side: Sell (S)",
}

box_boxoptions_solamulticast_hsvf_v2_1.order_side.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.order_side.labels[value] or "Order Side: Unknown("..value..")"
end

-- Dissect: Order Side
box_boxoptions_solamulticast_hsvf_v2_1.order_side.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.order_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.order_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.order_side, range, value, display)

  return offset + length, value
end

-- Percentage Assured To Initial Order
box_boxoptions_solamulticast_hsvf_v2_1.percentage_assured_to_initial_order = {}

-- Size: Percentage Assured To Initial Order
box_boxoptions_solamulticast_hsvf_v2_1.percentage_assured_to_initial_order.size = 8

-- Display: Percentage Assured To Initial Order
box_boxoptions_solamulticast_hsvf_v2_1.percentage_assured_to_initial_order.display = function(value)
  return "Percentage Assured To Initial Order: "..value
end

-- Dissect: Percentage Assured To Initial Order
box_boxoptions_solamulticast_hsvf_v2_1.percentage_assured_to_initial_order.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.percentage_assured_to_initial_order.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.percentage_assured_to_initial_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.percentage_assured_to_initial_order, range, value, display)

  return offset + length, value
end

-- Price Indicator Marker
box_boxoptions_solamulticast_hsvf_v2_1.price_indicator_marker = {}

-- Size: Price Indicator Marker
box_boxoptions_solamulticast_hsvf_v2_1.price_indicator_marker.size = 1

-- Display: Price Indicator Marker
box_boxoptions_solamulticast_hsvf_v2_1.price_indicator_marker.display = function(value)
  if value == "A" then
    return "Price Indicator Marker: As Of Trade (A)"
  end
  if value == "C" then
    return "Price Indicator Marker: Trades Performed At The End Of A Pip Allocation Phase (C)"
  end
  if value == "L" then
    return "Price Indicator Marker: Late Trade (L)"
  end
  if value == "O" then
    return "Price Indicator Marker: Trades Performed During The Opening (O)"
  end
  if value == "W" then
    return "Price Indicator Marker: Trades Resulting From The Transmission Of An Iso Inbound Order (W)"
  end
  if value == "X" then
    return "Price Indicator Marker: Trades Performed When The Market Is Crossed (X)"
  end
  if value == "G" then
    return "Price Indicator Marker: Contingent Trade Price Of The Trade Was Not Controlled Against The Nbbo (G)"
  end
  if value == "I" then
    return "Price Indicator Marker: Trade Involving An Implied Order Or Leg Trade Of A Complex Order Instrument (I)"
  end
  if value == "P" then
    return "Price Indicator Marker: Trade Done On A Complex Order Instrument (P)"
  end
  if value == " " then
    return "Price Indicator Marker: Actual Transaction Took Place (<whitespace>)"
  end

  return "Price Indicator Marker: Unknown("..value..")"
end

-- Dissect: Price Indicator Marker
box_boxoptions_solamulticast_hsvf_v2_1.price_indicator_marker.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.price_indicator_marker.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.price_indicator_marker.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.price_indicator_marker, range, value, display)

  return offset + length, value
end

-- Public Customer Ask Size
box_boxoptions_solamulticast_hsvf_v2_1.public_customer_ask_size = {}

-- Size: Public Customer Ask Size
box_boxoptions_solamulticast_hsvf_v2_1.public_customer_ask_size.size = 5

-- Display: Public Customer Ask Size
box_boxoptions_solamulticast_hsvf_v2_1.public_customer_ask_size.display = function(value, buffer, offset, packet, parent)
  return "Public Customer Ask Size: "..string.format("%.0f", value)
end

-- Dissect: Public Customer Ask Size
box_boxoptions_solamulticast_hsvf_v2_1.public_customer_ask_size.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.public_customer_ask_size.size
  local range = buffer(offset, length)
  local text = range:string()
  local powers = { ["C"] = 2, ["D"] = 3, ["E"] = 4, ["F"] = 5, ["G"] = 6, ["H"] = 7, ["I"] = 8, ["J"] = 9 }
  local value = 0
  local power = 0

  for index = 1, #text do
    local character = text:sub(index, index)
    if powers[character] then
      power = powers[character]
    else
      value = value * 10 + (tonumber(character) or 0)
    end
  end

  value = value * (10 ^ power)

  local display = box_boxoptions_solamulticast_hsvf_v2_1.public_customer_ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.public_customer_ask_size, range, value, display)

  return offset + length, value
end

-- Public Customer Bid Size
box_boxoptions_solamulticast_hsvf_v2_1.public_customer_bid_size = {}

-- Size: Public Customer Bid Size
box_boxoptions_solamulticast_hsvf_v2_1.public_customer_bid_size.size = 5

-- Display: Public Customer Bid Size
box_boxoptions_solamulticast_hsvf_v2_1.public_customer_bid_size.display = function(value, buffer, offset, packet, parent)
  return "Public Customer Bid Size: "..string.format("%.0f", value)
end

-- Dissect: Public Customer Bid Size
box_boxoptions_solamulticast_hsvf_v2_1.public_customer_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.public_customer_bid_size.size
  local range = buffer(offset, length)
  local text = range:string()
  local powers = { ["C"] = 2, ["D"] = 3, ["E"] = 4, ["F"] = 5, ["G"] = 6, ["H"] = 7, ["I"] = 8, ["J"] = 9 }
  local value = 0
  local power = 0

  for index = 1, #text do
    local character = text:sub(index, index)
    if powers[character] then
      power = powers[character]
    else
      value = value * 10 + (tonumber(character) or 0)
    end
  end

  value = value * (10 ^ power)

  local display = box_boxoptions_solamulticast_hsvf_v2_1.public_customer_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.public_customer_bid_size, range, value, display)

  return offset + length, value
end

-- Raw Ask Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price = {}

-- Size: Raw Ask Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price.size = 6

-- Display: Raw Ask Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price.display = function(value)
  return "Raw Ask Price: "..value
end

-- Dissect: Raw Ask Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_ask_price, range, value, "Raw Ask Price: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Raw Ask Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_ask_price, range, value, display)

  return offset + length, value
end

-- Raw Ask Price Quote
box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price_quote = {}

-- Size: Raw Ask Price Quote
box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price_quote.size = 6

-- Display: Raw Ask Price Quote
box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price_quote.display = function(value)
  return "Raw Ask Price Quote: "..value
end

-- Dissect: Raw Ask Price Quote
box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price_quote.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price_quote.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_ask_price_quote, range, value, "Raw Ask Price Quote: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Raw Ask Price Quote is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price_quote.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_ask_price_quote, range, value, display)

  return offset + length, value
end

-- Raw Ask Price Quote Text
box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price_quote_text = {}

-- Size: Raw Ask Price Quote Text
box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price_quote_text.size = 6

-- Display: Raw Ask Price Quote Text
box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price_quote_text.display = function(value)
  return "Raw Ask Price Quote Text: "..value
end

-- Dissect: Raw Ask Price Quote Text
box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price_quote_text.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price_quote_text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price_quote_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_ask_price_quote_text, range, value, display)

  return offset + length, value
end

-- Raw Bid Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price = {}

-- Size: Raw Bid Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price.size = 6

-- Display: Raw Bid Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price.display = function(value)
  return "Raw Bid Price: "..value
end

-- Dissect: Raw Bid Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_bid_price, range, value, "Raw Bid Price: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Raw Bid Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_bid_price, range, value, display)

  return offset + length, value
end

-- Raw Bid Price Quote
box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price_quote = {}

-- Size: Raw Bid Price Quote
box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price_quote.size = 6

-- Display: Raw Bid Price Quote
box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price_quote.display = function(value)
  return "Raw Bid Price Quote: "..value
end

-- Dissect: Raw Bid Price Quote
box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price_quote.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price_quote.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_bid_price_quote, range, value, "Raw Bid Price Quote: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Raw Bid Price Quote is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price_quote.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_bid_price_quote, range, value, display)

  return offset + length, value
end

-- Raw Bid Price Quote Text
box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price_quote_text = {}

-- Size: Raw Bid Price Quote Text
box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price_quote_text.size = 6

-- Display: Raw Bid Price Quote Text
box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price_quote_text.display = function(value)
  return "Raw Bid Price Quote Text: "..value
end

-- Dissect: Raw Bid Price Quote Text
box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price_quote_text.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price_quote_text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price_quote_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_bid_price_quote_text, range, value, display)

  return offset + length, value
end

-- Raw High Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_high_price = {}

-- Size: Raw High Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_high_price.size = 6

-- Display: Raw High Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_high_price.display = function(value)
  return "Raw High Price: "..value
end

-- Dissect: Raw High Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_high_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.raw_high_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_high_price, range, value, "Raw High Price: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Raw High Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.raw_high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_high_price, range, value, display)

  return offset + length, value
end

-- Raw Initial Order Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_initial_order_price = {}

-- Size: Raw Initial Order Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_initial_order_price.size = 6

-- Display: Raw Initial Order Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_initial_order_price.display = function(value)
  return "Raw Initial Order Price: "..value
end

-- Dissect: Raw Initial Order Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_initial_order_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.raw_initial_order_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_initial_order_price, range, value, "Raw Initial Order Price: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Raw Initial Order Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.raw_initial_order_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_initial_order_price, range, value, display)

  return offset + length, value
end

-- Raw Last Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_last_price = {}

-- Size: Raw Last Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_last_price.size = 6

-- Display: Raw Last Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_last_price.display = function(value)
  return "Raw Last Price: "..value
end

-- Dissect: Raw Last Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_last_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.raw_last_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_last_price, range, value, "Raw Last Price: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Raw Last Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.raw_last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_last_price, range, value, display)

  return offset + length, value
end

-- Raw Limit Entered For An Order
box_boxoptions_solamulticast_hsvf_v2_1.raw_limit_entered_for_an_order = {}

-- Size: Raw Limit Entered For An Order
box_boxoptions_solamulticast_hsvf_v2_1.raw_limit_entered_for_an_order.size = 6

-- Display: Raw Limit Entered For An Order
box_boxoptions_solamulticast_hsvf_v2_1.raw_limit_entered_for_an_order.display = function(value)
  return "Raw Limit Entered For An Order: "..value
end

-- Dissect: Raw Limit Entered For An Order
box_boxoptions_solamulticast_hsvf_v2_1.raw_limit_entered_for_an_order.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.raw_limit_entered_for_an_order.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_limit_entered_for_an_order, range, value, "Raw Limit Entered For An Order: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Raw Limit Entered For An Order is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.raw_limit_entered_for_an_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_limit_entered_for_an_order, range, value, display)

  return offset + length, value
end

-- Raw Low Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_low_price = {}

-- Size: Raw Low Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_low_price.size = 6

-- Display: Raw Low Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_low_price.display = function(value)
  return "Raw Low Price: "..value
end

-- Dissect: Raw Low Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_low_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.raw_low_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_low_price, range, value, "Raw Low Price: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Raw Low Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.raw_low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_low_price, range, value, display)

  return offset + length, value
end

-- Raw Max Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_max_threshold_price = {}

-- Size: Raw Max Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_max_threshold_price.size = 6

-- Display: Raw Max Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_max_threshold_price.display = function(value)
  return "Raw Max Threshold Price: "..value
end

-- Dissect: Raw Max Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_max_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.raw_max_threshold_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_max_threshold_price, range, value, "Raw Max Threshold Price: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Raw Max Threshold Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.raw_max_threshold_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_max_threshold_price, range, value, display)

  return offset + length, value
end

-- Raw Maximum Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_maximum_threshold_price = {}

-- Size: Raw Maximum Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_maximum_threshold_price.size = 6

-- Display: Raw Maximum Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_maximum_threshold_price.display = function(value)
  return "Raw Maximum Threshold Price: "..value
end

-- Dissect: Raw Maximum Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_maximum_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.raw_maximum_threshold_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_maximum_threshold_price, range, value, "Raw Maximum Threshold Price: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Raw Maximum Threshold Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.raw_maximum_threshold_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_maximum_threshold_price, range, value, display)

  return offset + length, value
end

-- Raw Min Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_min_threshold_price = {}

-- Size: Raw Min Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_min_threshold_price.size = 6

-- Display: Raw Min Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_min_threshold_price.display = function(value)
  return "Raw Min Threshold Price: "..value
end

-- Dissect: Raw Min Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_min_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.raw_min_threshold_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_min_threshold_price, range, value, "Raw Min Threshold Price: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Raw Min Threshold Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.raw_min_threshold_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_min_threshold_price, range, value, display)

  return offset + length, value
end

-- Raw Minimum Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_minimum_threshold_price = {}

-- Size: Raw Minimum Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_minimum_threshold_price.size = 6

-- Display: Raw Minimum Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_minimum_threshold_price.display = function(value)
  return "Raw Minimum Threshold Price: "..value
end

-- Dissect: Raw Minimum Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_minimum_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.raw_minimum_threshold_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_minimum_threshold_price, range, value, "Raw Minimum Threshold Price: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Raw Minimum Threshold Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.raw_minimum_threshold_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_minimum_threshold_price, range, value, display)

  return offset + length, value
end

-- Raw Net Change
box_boxoptions_solamulticast_hsvf_v2_1.raw_net_change = {}

-- Size: Raw Net Change
box_boxoptions_solamulticast_hsvf_v2_1.raw_net_change.size = 6

-- Display: Raw Net Change
box_boxoptions_solamulticast_hsvf_v2_1.raw_net_change.display = function(value)
  return "Raw Net Change: "..value
end

-- Dissect: Raw Net Change
box_boxoptions_solamulticast_hsvf_v2_1.raw_net_change.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.raw_net_change.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_net_change, range, value, "Raw Net Change: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Raw Net Change is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.raw_net_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_net_change, range, value, display)

  return offset + length, value
end

-- Raw Open Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_open_price = {}

-- Size: Raw Open Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_open_price.size = 6

-- Display: Raw Open Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_open_price.display = function(value)
  return "Raw Open Price: "..value
end

-- Dissect: Raw Open Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_open_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.raw_open_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_open_price, range, value, "Raw Open Price: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Raw Open Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.raw_open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_open_price, range, value, display)

  return offset + length, value
end

-- Raw Reference Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_reference_price = {}

-- Size: Raw Reference Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_reference_price.size = 6

-- Display: Raw Reference Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_reference_price.display = function(value)
  return "Raw Reference Price: "..value
end

-- Dissect: Raw Reference Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.raw_reference_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_reference_price, range, value, "Raw Reference Price: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Raw Reference Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.raw_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_reference_price, range, value, display)

  return offset + length, value
end

-- Raw Strike Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_strike_price = {}

-- Size: Raw Strike Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_strike_price.size = 7

-- Display: Raw Strike Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_strike_price.display = function(value)
  return "Raw Strike Price: "..value
end

-- Dissect: Raw Strike Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.raw_strike_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_strike_price, range, value, "Raw Strike Price: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Raw Strike Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.raw_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_strike_price, range, value, display)

  return offset + length, value
end

-- Raw Tick Increment
box_boxoptions_solamulticast_hsvf_v2_1.raw_tick_increment = {}

-- Size: Raw Tick Increment
box_boxoptions_solamulticast_hsvf_v2_1.raw_tick_increment.size = 6

-- Display: Raw Tick Increment
box_boxoptions_solamulticast_hsvf_v2_1.raw_tick_increment.display = function(value)
  return "Raw Tick Increment: "..value
end

-- Dissect: Raw Tick Increment
box_boxoptions_solamulticast_hsvf_v2_1.raw_tick_increment.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.raw_tick_increment.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.raw_tick_increment.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_tick_increment, range, value, display)

  return offset + length, value
end

-- Raw Trade Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_trade_price = {}

-- Size: Raw Trade Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_trade_price.size = 6

-- Display: Raw Trade Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_trade_price.display = function(value)
  return "Raw Trade Price: "..value
end

-- Dissect: Raw Trade Price
box_boxoptions_solamulticast_hsvf_v2_1.raw_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.raw_trade_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_trade_price, range, value, "Raw Trade Price: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Raw Trade Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.raw_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.raw_trade_price, range, value, display)

  return offset + length, value
end

-- Reference Price
box_boxoptions_solamulticast_hsvf_v2_1.reference_price = {}

-- Size: Reference Price
box_boxoptions_solamulticast_hsvf_v2_1.reference_price.size = 6

-- Display: Reference Price
box_boxoptions_solamulticast_hsvf_v2_1.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Dissect: Reference Price
box_boxoptions_solamulticast_hsvf_v2_1.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.reference_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.reference_price, range, value, "Reference Price: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Reference Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Reference Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_indicator = {}

-- Size: Reference Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_indicator.size = 1

-- Display: Reference Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_indicator.labels = {
  ["0"] = "Reference Price Fraction Indicator: Whole (0)",
  ["1"] = "Reference Price Fraction Indicator: Ten (1)",
  ["2"] = "Reference Price Fraction Indicator: Hundred (2)",
  ["3"] = "Reference Price Fraction Indicator: Thousand (3)",
  ["4"] = "Reference Price Fraction Indicator: Ten Thousand (4)",
  ["5"] = "Reference Price Fraction Indicator: Hundred Thousand (5)",
  ["6"] = "Reference Price Fraction Indicator: Million (6)",
  ["7"] = "Reference Price Fraction Indicator: Ten Million (7)",
  ["8"] = "Reference Price Fraction Indicator: Hundred Million (8)",
  ["9"] = "Reference Price Fraction Indicator: Billion (9)",
  ["A"] = "Reference Price Fraction Indicator: Negative Whole (A)",
  ["B"] = "Reference Price Fraction Indicator: Negative Ten (B)",
  ["C"] = "Reference Price Fraction Indicator: Negative Hundred (C)",
  ["D"] = "Reference Price Fraction Indicator: Negative Thousand (D)",
  ["E"] = "Reference Price Fraction Indicator: Negative Ten Thousand (E)",
  ["F"] = "Reference Price Fraction Indicator: Negative Hundred Thousand (F)",
  ["G"] = "Reference Price Fraction Indicator: Negative Million (G)",
}

box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_indicator.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_indicator.labels[value] or "Reference Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Reference Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.reference_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Requested Size
box_boxoptions_solamulticast_hsvf_v2_1.requested_size = {}

-- Size: Requested Size
box_boxoptions_solamulticast_hsvf_v2_1.requested_size.size = 8

-- Display: Requested Size
box_boxoptions_solamulticast_hsvf_v2_1.requested_size.display = function(value, buffer, offset, packet, parent)
  return "Requested Size: "..string.format("%.0f", value)
end

-- Dissect: Requested Size
box_boxoptions_solamulticast_hsvf_v2_1.requested_size.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.requested_size.size
  local range = buffer(offset, length)
  local text = range:string()
  local powers = { ["C"] = 2, ["D"] = 3, ["E"] = 4, ["F"] = 5, ["G"] = 6, ["H"] = 7, ["I"] = 8, ["J"] = 9 }
  local value = 0
  local power = 0

  for index = 1, #text do
    local character = text:sub(index, index)
    if powers[character] then
      power = powers[character]
    else
      value = value * 10 + (tonumber(character) or 0)
    end
  end

  value = value * (10 ^ power)

  local display = box_boxoptions_solamulticast_hsvf_v2_1.requested_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.requested_size, range, value, display)

  return offset + length, value
end

-- Reserved
box_boxoptions_solamulticast_hsvf_v2_1.reserved = {}

-- Size: Reserved
box_boxoptions_solamulticast_hsvf_v2_1.reserved.size = 1

-- Display: Reserved
box_boxoptions_solamulticast_hsvf_v2_1.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
box_boxoptions_solamulticast_hsvf_v2_1.reserved.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.reserved.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = box_boxoptions_solamulticast_hsvf_v2_1.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.reserved, range, value, display)

  return offset + length, value
end

-- Root Symbol
box_boxoptions_solamulticast_hsvf_v2_1.root_symbol = {}

-- Size: Root Symbol
box_boxoptions_solamulticast_hsvf_v2_1.root_symbol.size = 6

-- Display: Root Symbol
box_boxoptions_solamulticast_hsvf_v2_1.root_symbol.display = function(value)
  return "Root Symbol: "..value
end

-- Dissect: Root Symbol
box_boxoptions_solamulticast_hsvf_v2_1.root_symbol.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.root_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_boxoptions_solamulticast_hsvf_v2_1.root_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.root_symbol, range, value, display)

  return offset + length, value
end

-- Scheduled Time
box_boxoptions_solamulticast_hsvf_v2_1.scheduled_time = {}

-- Size: Scheduled Time
box_boxoptions_solamulticast_hsvf_v2_1.scheduled_time.size = 6

-- Display: Scheduled Time
box_boxoptions_solamulticast_hsvf_v2_1.scheduled_time.display = function(value)
  if #value < 6 then
    return "Scheduled Time: "..value
  end

  return "Scheduled Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Scheduled Time
box_boxoptions_solamulticast_hsvf_v2_1.scheduled_time.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.scheduled_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.scheduled_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scheduled_time, range, value, display)

  return offset + length, value
end

-- Sequence Number
box_boxoptions_solamulticast_hsvf_v2_1.sequence_number = {}

-- Size: Sequence Number
box_boxoptions_solamulticast_hsvf_v2_1.sequence_number.size = 9

-- Display: Sequence Number
box_boxoptions_solamulticast_hsvf_v2_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
box_boxoptions_solamulticast_hsvf_v2_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.sequence_number, range, value, "Sequence Number: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Strike Price
box_boxoptions_solamulticast_hsvf_v2_1.strike_price = {}

-- Size: Strike Price
box_boxoptions_solamulticast_hsvf_v2_1.strike_price.size = 7

-- Display: Strike Price
box_boxoptions_solamulticast_hsvf_v2_1.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
box_boxoptions_solamulticast_hsvf_v2_1.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.strike_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.strike_price, range, value, "Strike Price: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Strike Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Strike Price Currency
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_currency = {}

-- Size: Strike Price Currency
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_currency.size = 3

-- Display: Strike Price Currency
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_currency.labels = {
  ["USD"] = "Strike Price Currency: Us Dollars (USD)",
}

box_boxoptions_solamulticast_hsvf_v2_1.strike_price_currency.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.strike_price_currency.labels[value] or "Strike Price Currency: Unknown("..value..")"
end

-- Dissect: Strike Price Currency
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_currency.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_currency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.strike_price_currency, range, value, display)

  return offset + length, value
end

-- Strike Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_indicator = {}

-- Size: Strike Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_indicator.size = 1

-- Display: Strike Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_indicator.labels = {
  ["0"] = "Strike Price Fraction Indicator: Whole (0)",
  ["1"] = "Strike Price Fraction Indicator: Ten (1)",
  ["2"] = "Strike Price Fraction Indicator: Hundred (2)",
  ["3"] = "Strike Price Fraction Indicator: Thousand (3)",
  ["4"] = "Strike Price Fraction Indicator: Ten Thousand (4)",
  ["5"] = "Strike Price Fraction Indicator: Hundred Thousand (5)",
  ["6"] = "Strike Price Fraction Indicator: Million (6)",
  ["7"] = "Strike Price Fraction Indicator: Ten Million (7)",
  ["8"] = "Strike Price Fraction Indicator: Hundred Million (8)",
  ["9"] = "Strike Price Fraction Indicator: Billion (9)",
  ["A"] = "Strike Price Fraction Indicator: Negative Whole (A)",
  ["B"] = "Strike Price Fraction Indicator: Negative Ten (B)",
  ["C"] = "Strike Price Fraction Indicator: Negative Hundred (C)",
  ["D"] = "Strike Price Fraction Indicator: Negative Thousand (D)",
  ["E"] = "Strike Price Fraction Indicator: Negative Ten Thousand (E)",
  ["F"] = "Strike Price Fraction Indicator: Negative Hundred Thousand (F)",
  ["G"] = "Strike Price Fraction Indicator: Negative Million (G)",
}

box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_indicator.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_indicator.labels[value] or "Strike Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Strike Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.strike_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Tick
box_boxoptions_solamulticast_hsvf_v2_1.tick = {}

-- Size: Tick
box_boxoptions_solamulticast_hsvf_v2_1.tick.size = 1

-- Display: Tick
box_boxoptions_solamulticast_hsvf_v2_1.tick.labels = {
  ["+"] = "Tick: Uptick (+)",
  ["-"] = "Tick: Downtick (-)",
}

box_boxoptions_solamulticast_hsvf_v2_1.tick.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.tick.labels[value] or "Tick: Unknown("..value..")"
end

-- Dissect: Tick
box_boxoptions_solamulticast_hsvf_v2_1.tick.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.tick.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.tick.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.tick, range, value, display)

  return offset + length, value
end

-- Tick Increment
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment = {}

-- Size: Tick Increment
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment.size = 6

-- Display: Tick Increment
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment.display = function(value)
  return "Tick Increment: "..value
end

-- Dissect: Tick Increment
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.tick_increment, range, value, "Tick Increment: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Tick Increment is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.tick_increment, range, value, display)

  return offset + length, value
end

-- Tick Increment Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_indicator = {}

-- Size: Tick Increment Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_indicator.size = 1

-- Display: Tick Increment Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_indicator.labels = {
  ["0"] = "Tick Increment Fraction Indicator: Whole (0)",
  ["1"] = "Tick Increment Fraction Indicator: Ten (1)",
  ["2"] = "Tick Increment Fraction Indicator: Hundred (2)",
  ["3"] = "Tick Increment Fraction Indicator: Thousand (3)",
  ["4"] = "Tick Increment Fraction Indicator: Ten Thousand (4)",
  ["5"] = "Tick Increment Fraction Indicator: Hundred Thousand (5)",
  ["6"] = "Tick Increment Fraction Indicator: Million (6)",
  ["7"] = "Tick Increment Fraction Indicator: Ten Million (7)",
  ["8"] = "Tick Increment Fraction Indicator: Hundred Million (8)",
  ["9"] = "Tick Increment Fraction Indicator: Billion (9)",
  ["A"] = "Tick Increment Fraction Indicator: Negative Whole (A)",
  ["B"] = "Tick Increment Fraction Indicator: Negative Ten (B)",
  ["C"] = "Tick Increment Fraction Indicator: Negative Hundred (C)",
  ["D"] = "Tick Increment Fraction Indicator: Negative Thousand (D)",
  ["E"] = "Tick Increment Fraction Indicator: Negative Ten Thousand (E)",
  ["F"] = "Tick Increment Fraction Indicator: Negative Hundred Thousand (F)",
  ["G"] = "Tick Increment Fraction Indicator: Negative Million (G)",
}

box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_indicator.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_indicator.labels[value] or "Tick Increment Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Tick Increment Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.tick_increment_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Time
box_boxoptions_solamulticast_hsvf_v2_1.time = {}

-- Size: Time
box_boxoptions_solamulticast_hsvf_v2_1.time.size = 6

-- Display: Time
box_boxoptions_solamulticast_hsvf_v2_1.time.display = function(value)
  if #value < 6 then
    return "Time: "..value
  end

  return "Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Time
box_boxoptions_solamulticast_hsvf_v2_1.time.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.time, range, value, display)

  return offset + length, value
end

-- Timestamp
box_boxoptions_solamulticast_hsvf_v2_1.timestamp = {}

-- Size: Timestamp
box_boxoptions_solamulticast_hsvf_v2_1.timestamp.size = 6

-- Display: Timestamp
box_boxoptions_solamulticast_hsvf_v2_1.timestamp.display = function(value)
  if #value < 6 then
    return "Timestamp: "..value
  end

  return "Timestamp: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Timestamp
box_boxoptions_solamulticast_hsvf_v2_1.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.timestamp.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Price
box_boxoptions_solamulticast_hsvf_v2_1.trade_price = {}

-- Size: Trade Price
box_boxoptions_solamulticast_hsvf_v2_1.trade_price.size = 6

-- Display: Trade Price
box_boxoptions_solamulticast_hsvf_v2_1.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
box_boxoptions_solamulticast_hsvf_v2_1.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.trade_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.trade_price, range, value, "Trade Price: Not Applicable")
    item:add_proto_expert_info(box_boxoptions_solamulticast_hsvf_v2_1.experts.not_a_number, "Trade Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = box_boxoptions_solamulticast_hsvf_v2_1.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_indicator = {}

-- Size: Trade Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_indicator.size = 1

-- Display: Trade Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_indicator.labels = {
  ["0"] = "Trade Price Fraction Indicator: Whole (0)",
  ["1"] = "Trade Price Fraction Indicator: Ten (1)",
  ["2"] = "Trade Price Fraction Indicator: Hundred (2)",
  ["3"] = "Trade Price Fraction Indicator: Thousand (3)",
  ["4"] = "Trade Price Fraction Indicator: Ten Thousand (4)",
  ["5"] = "Trade Price Fraction Indicator: Hundred Thousand (5)",
  ["6"] = "Trade Price Fraction Indicator: Million (6)",
  ["7"] = "Trade Price Fraction Indicator: Ten Million (7)",
  ["8"] = "Trade Price Fraction Indicator: Hundred Million (8)",
  ["9"] = "Trade Price Fraction Indicator: Billion (9)",
  ["A"] = "Trade Price Fraction Indicator: Negative Whole (A)",
  ["B"] = "Trade Price Fraction Indicator: Negative Ten (B)",
  ["C"] = "Trade Price Fraction Indicator: Negative Hundred (C)",
  ["D"] = "Trade Price Fraction Indicator: Negative Thousand (D)",
  ["E"] = "Trade Price Fraction Indicator: Negative Ten Thousand (E)",
  ["F"] = "Trade Price Fraction Indicator: Negative Hundred Thousand (F)",
  ["G"] = "Trade Price Fraction Indicator: Negative Million (G)",
}

box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_indicator.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_indicator.labels[value] or "Trade Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Trade Price Fraction Indicator
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.trade_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Trade Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_sign = {}

-- Size: Trade Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_sign.size = 1

-- Display: Trade Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_sign.display = function(value)
  return "Trade Price Sign: "..value
end

-- Dissect: Trade Price Sign
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.trade_price_sign, range, value, display)

  return offset + length, value
end

-- Trading Engine Timestamp
box_boxoptions_solamulticast_hsvf_v2_1.trading_engine_timestamp = {}

-- Size: Trading Engine Timestamp
box_boxoptions_solamulticast_hsvf_v2_1.trading_engine_timestamp.size = 9

-- Display: Trading Engine Timestamp
box_boxoptions_solamulticast_hsvf_v2_1.trading_engine_timestamp.display = function(value)
  if #value < 9 then
    return "Trading Engine Timestamp: "..value
  end

  return "Trading Engine Timestamp: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6).."."..value:sub(7, 9)
end

-- Dissect: Trading Engine Timestamp
box_boxoptions_solamulticast_hsvf_v2_1.trading_engine_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.trading_engine_timestamp.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.trading_engine_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.trading_engine_timestamp, range, value, display)

  return offset + length, value
end

-- Type Of Clearing Account
box_boxoptions_solamulticast_hsvf_v2_1.type_of_clearing_account = {}

-- Size: Type Of Clearing Account
box_boxoptions_solamulticast_hsvf_v2_1.type_of_clearing_account.size = 1

-- Display: Type Of Clearing Account
box_boxoptions_solamulticast_hsvf_v2_1.type_of_clearing_account.labels = {
  ["6"] = "Type Of Clearing Account: Public Customer (6)",
  ["7"] = "Type Of Clearing Account: Broker Dealer (7)",
  ["8"] = "Type Of Clearing Account: Market Maker (8)",
  ["T"] = "Type Of Clearing Account: Professional Customer (T)",
  ["W"] = "Type Of Clearing Account: Broker Dealer Cleared As Customer (W)",
  ["X"] = "Type Of Clearing Account: Away Market Maker (X)",
}

box_boxoptions_solamulticast_hsvf_v2_1.type_of_clearing_account.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.type_of_clearing_account.labels[value] or "Type Of Clearing Account: Unknown("..value..")"
end

-- Dissect: Type Of Clearing Account
box_boxoptions_solamulticast_hsvf_v2_1.type_of_clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.type_of_clearing_account.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.type_of_clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.type_of_clearing_account, range, value, display)

  return offset + length, value
end

-- Type Of Instrument
box_boxoptions_solamulticast_hsvf_v2_1.type_of_instrument = {}

-- Size: Type Of Instrument
box_boxoptions_solamulticast_hsvf_v2_1.type_of_instrument.size = 1

-- Display: Type Of Instrument
box_boxoptions_solamulticast_hsvf_v2_1.type_of_instrument.labels = {
  ["O"] = "Type Of Instrument: Options (O)",
  ["F"] = "Type Of Instrument: Flex Option (F)",
}

box_boxoptions_solamulticast_hsvf_v2_1.type_of_instrument.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.type_of_instrument.labels[value] or "Type Of Instrument: Unknown("..value..")"
end

-- Dissect: Type Of Instrument
box_boxoptions_solamulticast_hsvf_v2_1.type_of_instrument.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.type_of_instrument.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.type_of_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.type_of_instrument, range, value, display)

  return offset + length, value
end

-- Type Of Market
box_boxoptions_solamulticast_hsvf_v2_1.type_of_market = {}

-- Size: Type Of Market
box_boxoptions_solamulticast_hsvf_v2_1.type_of_market.size = 1

-- Display: Type Of Market
box_boxoptions_solamulticast_hsvf_v2_1.type_of_market.display = function(value)
  return "Type Of Market: "..value
end

-- Dissect: Type Of Market
box_boxoptions_solamulticast_hsvf_v2_1.type_of_market.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.type_of_market.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.type_of_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.type_of_market, range, value, display)

  return offset + length, value
end

-- Type Of Options
box_boxoptions_solamulticast_hsvf_v2_1.type_of_options = {}

-- Size: Type Of Options
box_boxoptions_solamulticast_hsvf_v2_1.type_of_options.size = 1

-- Display: Type Of Options
box_boxoptions_solamulticast_hsvf_v2_1.type_of_options.display = function(value)
  if value == " " then
    return "Type Of Options: Regular (<whitespace>)"
  end

  return "Type Of Options: Unknown("..value..")"
end

-- Dissect: Type Of Options
box_boxoptions_solamulticast_hsvf_v2_1.type_of_options.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.type_of_options.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.type_of_options.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.type_of_options, range, value, display)

  return offset + length, value
end

-- Type Of Order
box_boxoptions_solamulticast_hsvf_v2_1.type_of_order = {}

-- Size: Type Of Order
box_boxoptions_solamulticast_hsvf_v2_1.type_of_order.size = 1

-- Display: Type Of Order
box_boxoptions_solamulticast_hsvf_v2_1.type_of_order.labels = {
  ["P"] = "Type Of Order: Exposed Order (P)",
}

box_boxoptions_solamulticast_hsvf_v2_1.type_of_order.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.type_of_order.labels[value] or "Type Of Order: Unknown("..value..")"
end

-- Dissect: Type Of Order
box_boxoptions_solamulticast_hsvf_v2_1.type_of_order.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.type_of_order.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.type_of_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.type_of_order, range, value, display)

  return offset + length, value
end

-- Type Of Underlying
box_boxoptions_solamulticast_hsvf_v2_1.type_of_underlying = {}

-- Size: Type Of Underlying
box_boxoptions_solamulticast_hsvf_v2_1.type_of_underlying.size = 1

-- Display: Type Of Underlying
box_boxoptions_solamulticast_hsvf_v2_1.type_of_underlying.labels = {
  ["E"] = "Type Of Underlying: Equities Or Etf (E)",
}

box_boxoptions_solamulticast_hsvf_v2_1.type_of_underlying.display = function(value)
  return box_boxoptions_solamulticast_hsvf_v2_1.type_of_underlying.labels[value] or "Type Of Underlying: Unknown("..value..")"
end

-- Dissect: Type Of Underlying
box_boxoptions_solamulticast_hsvf_v2_1.type_of_underlying.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.type_of_underlying.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solamulticast_hsvf_v2_1.type_of_underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.type_of_underlying, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
box_boxoptions_solamulticast_hsvf_v2_1.underlying_symbol = {}

-- Size: Underlying Symbol
box_boxoptions_solamulticast_hsvf_v2_1.underlying_symbol.size = 10

-- Display: Underlying Symbol
box_boxoptions_solamulticast_hsvf_v2_1.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
box_boxoptions_solamulticast_hsvf_v2_1.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_boxoptions_solamulticast_hsvf_v2_1.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Underlying Symbol Root
box_boxoptions_solamulticast_hsvf_v2_1.underlying_symbol_root = {}

-- Size: Underlying Symbol Root
box_boxoptions_solamulticast_hsvf_v2_1.underlying_symbol_root.size = 10

-- Display: Underlying Symbol Root
box_boxoptions_solamulticast_hsvf_v2_1.underlying_symbol_root.display = function(value)
  return "Underlying Symbol Root: "..value
end

-- Dissect: Underlying Symbol Root
box_boxoptions_solamulticast_hsvf_v2_1.underlying_symbol_root.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.underlying_symbol_root.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_boxoptions_solamulticast_hsvf_v2_1.underlying_symbol_root.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.underlying_symbol_root, range, value, display)

  return offset + length, value
end

-- Volume
box_boxoptions_solamulticast_hsvf_v2_1.volume = {}

-- Size: Volume
box_boxoptions_solamulticast_hsvf_v2_1.volume.size = 8

-- Display: Volume
box_boxoptions_solamulticast_hsvf_v2_1.volume.display = function(value, buffer, offset, packet, parent)
  return "Volume: "..string.format("%.0f", value)
end

-- Dissect: Volume
box_boxoptions_solamulticast_hsvf_v2_1.volume.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.volume.size
  local range = buffer(offset, length)
  local text = range:string()
  local powers = { ["C"] = 2, ["D"] = 3, ["E"] = 4, ["F"] = 5, ["G"] = 6, ["H"] = 7, ["I"] = 8, ["J"] = 9 }
  local value = 0
  local power = 0

  for index = 1, #text do
    local character = text:sub(index, index)
    if powers[character] then
      power = powers[character]
    else
      value = value * 10 + (tonumber(character) or 0)
    end
  end

  value = value * (10 ^ power)

  local display = box_boxoptions_solamulticast_hsvf_v2_1.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.volume, range, value, display)

  return offset + length, value
end

-- Scaled Ask Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price = {}

-- Display: Scaled Ask Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price.display = function(value)
  return "Scaled Ask Price: " .. string.format("%g", value)
end

-- Display: Scaled Ask Price with an unrecognised code
box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price.display_uncoded = function(value)
  return "Scaled Ask Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Ask Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.ask_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()
  local ask_price_fraction_indicator = buffer(offset + length, box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.size):string()

  local value
  local display
  if ask_price_fraction_indicator == "0" then
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price.display(value)
  elseif ask_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price.display(value)
  elseif ask_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price.display(value)
  elseif ask_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price.display(value)
  elseif ask_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price.display(value)
  elseif ask_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price.display(value)
  elseif ask_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price.display(value)
  elseif ask_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price.display(value)
  elseif ask_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price.display(value)
  elseif ask_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price.display(value)
  else
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_ask_price, range, value, display)
  local mantissa_display = box_boxoptions_solamulticast_hsvf_v2_1.ask_price.display(mantissa)

  field_tree:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price, range, mantissa, mantissa_display)

  local ask_price_fraction_indicator_entry = field_tree:add("Ask Price Fraction Indicator: " .. tostring(ask_price_fraction_indicator))
  ask_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Ask Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price = {}

-- Display: Scaled Ask Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price.display = function(value)
  return "Scaled Ask Price: " .. string.format("%g", value)
end

-- Display: Scaled Ask Price with an unrecognised code
box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price.display_uncoded = function(value)
  return "Scaled Ask Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Ask Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_numeric.size
  local range = buffer(offset, length)
  local mantissa = range:string()
  local ask_price_fraction_indicator = buffer(offset + length, box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.size):string()

  local value
  local display
  if ask_price_fraction_indicator == "0" then
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price.display(value)
  elseif ask_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price.display(value)
  elseif ask_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price.display(value)
  elseif ask_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price.display(value)
  elseif ask_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price.display(value)
  elseif ask_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price.display(value)
  elseif ask_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price.display(value)
  elseif ask_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price.display(value)
  elseif ask_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price.display(value)
  elseif ask_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price.display(value)
  else
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_ask_price, range, value, display)
  local mantissa_display = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_numeric.display(mantissa)

  field_tree:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_quote_numeric, range, mantissa, mantissa_display)

  local ask_price_fraction_indicator_entry = field_tree:add("Ask Price Fraction Indicator: " .. tostring(ask_price_fraction_indicator))
  ask_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Bid Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price = {}

-- Display: Scaled Bid Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price.display = function(value)
  return "Scaled Bid Price: " .. string.format("%g", value)
end

-- Display: Scaled Bid Price with an unrecognised code
box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price.display_uncoded = function(value)
  return "Scaled Bid Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Bid Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.bid_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()
  local bid_price_fraction_indicator = buffer(offset + length, box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.size):string()

  local value
  local display
  if bid_price_fraction_indicator == "0" then
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price.display(value)
  elseif bid_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price.display(value)
  elseif bid_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price.display(value)
  elseif bid_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price.display(value)
  elseif bid_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price.display(value)
  elseif bid_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price.display(value)
  elseif bid_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price.display(value)
  elseif bid_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price.display(value)
  elseif bid_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price.display(value)
  elseif bid_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price.display(value)
  else
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_bid_price, range, value, display)
  local mantissa_display = box_boxoptions_solamulticast_hsvf_v2_1.bid_price.display(mantissa)

  field_tree:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price, range, mantissa, mantissa_display)

  local bid_price_fraction_indicator_entry = field_tree:add("Bid Price Fraction Indicator: " .. tostring(bid_price_fraction_indicator))
  bid_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Bid Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price = {}

-- Display: Scaled Bid Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price.display = function(value)
  return "Scaled Bid Price: " .. string.format("%g", value)
end

-- Display: Scaled Bid Price with an unrecognised code
box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price.display_uncoded = function(value)
  return "Scaled Bid Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Bid Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_numeric.size
  local range = buffer(offset, length)
  local mantissa = range:string()
  local bid_price_fraction_indicator = buffer(offset + length, box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.size):string()

  local value
  local display
  if bid_price_fraction_indicator == "0" then
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price.display(value)
  elseif bid_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price.display(value)
  elseif bid_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price.display(value)
  elseif bid_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price.display(value)
  elseif bid_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price.display(value)
  elseif bid_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price.display(value)
  elseif bid_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price.display(value)
  elseif bid_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price.display(value)
  elseif bid_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price.display(value)
  elseif bid_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price.display(value)
  else
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_bid_price, range, value, display)
  local mantissa_display = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_numeric.display(mantissa)

  field_tree:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_quote_numeric, range, mantissa, mantissa_display)

  local bid_price_fraction_indicator_entry = field_tree:add("Bid Price Fraction Indicator: " .. tostring(bid_price_fraction_indicator))
  bid_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled High Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_high_price = {}

-- Display: Scaled High Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_high_price.display = function(value)
  return "Scaled High Price: " .. string.format("%g", value)
end

-- Display: Scaled High Price with an unrecognised code
box_boxoptions_solamulticast_hsvf_v2_1.scaled_high_price.display_uncoded = function(value)
  return "Scaled High Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled High Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_high_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.high_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()
  local high_price_fraction_indicator = buffer(offset + length, box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_indicator.size):string()

  local value
  local display
  if high_price_fraction_indicator == "0" then
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_high_price.display(value)
  elseif high_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_high_price.display(value)
  elseif high_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_high_price.display(value)
  elseif high_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_high_price.display(value)
  elseif high_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_high_price.display(value)
  elseif high_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_high_price.display(value)
  elseif high_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_high_price.display(value)
  elseif high_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_high_price.display(value)
  elseif high_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_high_price.display(value)
  elseif high_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_high_price.display(value)
  else
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_high_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_high_price, range, value, display)
  local mantissa_display = box_boxoptions_solamulticast_hsvf_v2_1.high_price.display(mantissa)

  field_tree:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.high_price, range, mantissa, mantissa_display)

  local high_price_fraction_indicator_entry = field_tree:add("High Price Fraction Indicator: " .. tostring(high_price_fraction_indicator))
  high_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Initial Order Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_initial_order_price = {}

-- Display: Scaled Initial Order Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_initial_order_price.display = function(value)
  return "Scaled Initial Order Price: " .. string.format("%g", value)
end

-- Display: Scaled Initial Order Price with an unrecognised code
box_boxoptions_solamulticast_hsvf_v2_1.scaled_initial_order_price.display_uncoded = function(value)
  return "Scaled Initial Order Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Initial Order Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_initial_order_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()
  local initial_order_price_fraction_indicator = buffer(offset + length, box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_indicator.size):string()

  local value
  local display
  if initial_order_price_fraction_indicator == "0" then
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_initial_order_price.display(value)
  elseif initial_order_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_initial_order_price.display(value)
  elseif initial_order_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_initial_order_price.display(value)
  elseif initial_order_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_initial_order_price.display(value)
  elseif initial_order_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_initial_order_price.display(value)
  elseif initial_order_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_initial_order_price.display(value)
  elseif initial_order_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_initial_order_price.display(value)
  elseif initial_order_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_initial_order_price.display(value)
  elseif initial_order_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_initial_order_price.display(value)
  elseif initial_order_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_initial_order_price.display(value)
  else
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_initial_order_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_initial_order_price, range, value, display)
  local mantissa_display = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price.display(mantissa)

  field_tree:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.initial_order_price, range, mantissa, mantissa_display)

  local initial_order_price_fraction_indicator_entry = field_tree:add("Initial Order Price Fraction Indicator: " .. tostring(initial_order_price_fraction_indicator))
  initial_order_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Last Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_last_price = {}

-- Display: Scaled Last Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_last_price.display = function(value)
  return "Scaled Last Price: " .. string.format("%g", value)
end

-- Display: Scaled Last Price with an unrecognised code
box_boxoptions_solamulticast_hsvf_v2_1.scaled_last_price.display_uncoded = function(value)
  return "Scaled Last Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Last Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_last_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.last_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()
  local last_price_fraction_indicator = buffer(offset + length, box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_indicator.size):string()

  local value
  local display
  if last_price_fraction_indicator == "0" then
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_last_price.display(value)
  elseif last_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_last_price.display(value)
  elseif last_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_last_price.display(value)
  elseif last_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_last_price.display(value)
  elseif last_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_last_price.display(value)
  elseif last_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_last_price.display(value)
  elseif last_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_last_price.display(value)
  elseif last_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_last_price.display(value)
  elseif last_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_last_price.display(value)
  elseif last_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_last_price.display(value)
  else
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_last_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_last_price, range, value, display)
  local mantissa_display = box_boxoptions_solamulticast_hsvf_v2_1.last_price.display(mantissa)

  field_tree:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.last_price, range, mantissa, mantissa_display)

  local last_price_fraction_indicator_entry = field_tree:add("Last Price Fraction Indicator: " .. tostring(last_price_fraction_indicator))
  last_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Limit Entered For An Order
box_boxoptions_solamulticast_hsvf_v2_1.scaled_limit_entered_for_an_order = {}

-- Display: Scaled Limit Entered For An Order
box_boxoptions_solamulticast_hsvf_v2_1.scaled_limit_entered_for_an_order.display = function(value)
  return "Scaled Limit Entered For An Order: " .. string.format("%g", value)
end

-- Display: Scaled Limit Entered For An Order with an unrecognised code
box_boxoptions_solamulticast_hsvf_v2_1.scaled_limit_entered_for_an_order.display_uncoded = function(value)
  return "Scaled Limit Entered For An Order: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Limit Entered For An Order
box_boxoptions_solamulticast_hsvf_v2_1.scaled_limit_entered_for_an_order.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order.size
  local range = buffer(offset, length)
  local mantissa = range:string()
  local limit_fraction_indicator = buffer(offset + length, box_boxoptions_solamulticast_hsvf_v2_1.limit_fraction_indicator.size):string()

  local value
  local display
  if limit_fraction_indicator == "0" then
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_limit_entered_for_an_order.display(value)
  elseif limit_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_limit_entered_for_an_order.display(value)
  elseif limit_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_limit_entered_for_an_order.display(value)
  elseif limit_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_limit_entered_for_an_order.display(value)
  elseif limit_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_limit_entered_for_an_order.display(value)
  elseif limit_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_limit_entered_for_an_order.display(value)
  elseif limit_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_limit_entered_for_an_order.display(value)
  elseif limit_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_limit_entered_for_an_order.display(value)
  elseif limit_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_limit_entered_for_an_order.display(value)
  elseif limit_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_limit_entered_for_an_order.display(value)
  else
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_limit_entered_for_an_order.display_uncoded(value)
  end

  local field_tree = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_limit_entered_for_an_order, range, value, display)
  local mantissa_display = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order.display(mantissa)

  field_tree:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.limit_entered_for_an_order, range, mantissa, mantissa_display)

  local limit_fraction_indicator_entry = field_tree:add("Limit Fraction Indicator: " .. tostring(limit_fraction_indicator))
  limit_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Low Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_low_price = {}

-- Display: Scaled Low Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_low_price.display = function(value)
  return "Scaled Low Price: " .. string.format("%g", value)
end

-- Display: Scaled Low Price with an unrecognised code
box_boxoptions_solamulticast_hsvf_v2_1.scaled_low_price.display_uncoded = function(value)
  return "Scaled Low Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Low Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_low_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.low_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()
  local low_price_fraction_indicator = buffer(offset + length, box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_indicator.size):string()

  local value
  local display
  if low_price_fraction_indicator == "0" then
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_low_price.display(value)
  elseif low_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_low_price.display(value)
  elseif low_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_low_price.display(value)
  elseif low_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_low_price.display(value)
  elseif low_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_low_price.display(value)
  elseif low_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_low_price.display(value)
  elseif low_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_low_price.display(value)
  elseif low_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_low_price.display(value)
  elseif low_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_low_price.display(value)
  elseif low_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_low_price.display(value)
  else
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_low_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_low_price, range, value, display)
  local mantissa_display = box_boxoptions_solamulticast_hsvf_v2_1.low_price.display(mantissa)

  field_tree:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.low_price, range, mantissa, mantissa_display)

  local low_price_fraction_indicator_entry = field_tree:add("Low Price Fraction Indicator: " .. tostring(low_price_fraction_indicator))
  low_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Max Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_max_threshold_price = {}

-- Display: Scaled Max Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_max_threshold_price.display = function(value)
  return "Scaled Max Threshold Price: " .. string.format("%g", value)
end

-- Display: Scaled Max Threshold Price with an unrecognised code
box_boxoptions_solamulticast_hsvf_v2_1.scaled_max_threshold_price.display_uncoded = function(value)
  return "Scaled Max Threshold Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Max Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_max_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()
  local max_threshold_price_fraction_indicator = buffer(offset + length, box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_indicator.size):string()

  local value
  local display
  if max_threshold_price_fraction_indicator == "0" then
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_max_threshold_price.display(value)
  elseif max_threshold_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_max_threshold_price.display(value)
  elseif max_threshold_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_max_threshold_price.display(value)
  elseif max_threshold_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_max_threshold_price.display(value)
  elseif max_threshold_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_max_threshold_price.display(value)
  elseif max_threshold_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_max_threshold_price.display(value)
  elseif max_threshold_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_max_threshold_price.display(value)
  elseif max_threshold_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_max_threshold_price.display(value)
  elseif max_threshold_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_max_threshold_price.display(value)
  elseif max_threshold_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_max_threshold_price.display(value)
  else
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_max_threshold_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_max_threshold_price, range, value, display)
  local mantissa_display = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price.display(mantissa)

  field_tree:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.max_threshold_price, range, mantissa, mantissa_display)

  local max_threshold_price_fraction_indicator_entry = field_tree:add("Max Threshold Price Fraction Indicator: " .. tostring(max_threshold_price_fraction_indicator))
  max_threshold_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Maximum Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_maximum_threshold_price = {}

-- Display: Scaled Maximum Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_maximum_threshold_price.display = function(value)
  return "Scaled Maximum Threshold Price: " .. string.format("%g", value)
end

-- Display: Scaled Maximum Threshold Price with an unrecognised code
box_boxoptions_solamulticast_hsvf_v2_1.scaled_maximum_threshold_price.display_uncoded = function(value)
  return "Scaled Maximum Threshold Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Maximum Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_maximum_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()
  local maximum_threshold_price_fraction_indicator = buffer(offset + length, box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_indicator.size):string()

  local value
  local display
  if maximum_threshold_price_fraction_indicator == "0" then
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_maximum_threshold_price.display(value)
  elseif maximum_threshold_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_maximum_threshold_price.display(value)
  elseif maximum_threshold_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_maximum_threshold_price.display(value)
  elseif maximum_threshold_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_maximum_threshold_price.display(value)
  elseif maximum_threshold_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_maximum_threshold_price.display(value)
  elseif maximum_threshold_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_maximum_threshold_price.display(value)
  elseif maximum_threshold_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_maximum_threshold_price.display(value)
  elseif maximum_threshold_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_maximum_threshold_price.display(value)
  elseif maximum_threshold_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_maximum_threshold_price.display(value)
  elseif maximum_threshold_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_maximum_threshold_price.display(value)
  else
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_maximum_threshold_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_maximum_threshold_price, range, value, display)
  local mantissa_display = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price.display(mantissa)

  field_tree:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.maximum_threshold_price, range, mantissa, mantissa_display)

  local maximum_threshold_price_fraction_indicator_entry = field_tree:add("Maximum Threshold Price Fraction Indicator: " .. tostring(maximum_threshold_price_fraction_indicator))
  maximum_threshold_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Min Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_min_threshold_price = {}

-- Display: Scaled Min Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_min_threshold_price.display = function(value)
  return "Scaled Min Threshold Price: " .. string.format("%g", value)
end

-- Display: Scaled Min Threshold Price with an unrecognised code
box_boxoptions_solamulticast_hsvf_v2_1.scaled_min_threshold_price.display_uncoded = function(value)
  return "Scaled Min Threshold Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Min Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_min_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()
  local min_threshold_price_fraction_indicator = buffer(offset + length, box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_indicator.size):string()

  local value
  local display
  if min_threshold_price_fraction_indicator == "0" then
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_min_threshold_price.display(value)
  elseif min_threshold_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_min_threshold_price.display(value)
  elseif min_threshold_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_min_threshold_price.display(value)
  elseif min_threshold_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_min_threshold_price.display(value)
  elseif min_threshold_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_min_threshold_price.display(value)
  elseif min_threshold_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_min_threshold_price.display(value)
  elseif min_threshold_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_min_threshold_price.display(value)
  elseif min_threshold_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_min_threshold_price.display(value)
  elseif min_threshold_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_min_threshold_price.display(value)
  elseif min_threshold_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_min_threshold_price.display(value)
  else
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_min_threshold_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_min_threshold_price, range, value, display)
  local mantissa_display = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price.display(mantissa)

  field_tree:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.min_threshold_price, range, mantissa, mantissa_display)

  local min_threshold_price_fraction_indicator_entry = field_tree:add("Min Threshold Price Fraction Indicator: " .. tostring(min_threshold_price_fraction_indicator))
  min_threshold_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Minimum Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_minimum_threshold_price = {}

-- Display: Scaled Minimum Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_minimum_threshold_price.display = function(value)
  return "Scaled Minimum Threshold Price: " .. string.format("%g", value)
end

-- Display: Scaled Minimum Threshold Price with an unrecognised code
box_boxoptions_solamulticast_hsvf_v2_1.scaled_minimum_threshold_price.display_uncoded = function(value)
  return "Scaled Minimum Threshold Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Minimum Threshold Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_minimum_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()
  local minimum_threshold_price_fraction_indicator = buffer(offset + length, box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_indicator.size):string()

  local value
  local display
  if minimum_threshold_price_fraction_indicator == "0" then
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_minimum_threshold_price.display(value)
  elseif minimum_threshold_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_minimum_threshold_price.display(value)
  elseif minimum_threshold_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_minimum_threshold_price.display(value)
  elseif minimum_threshold_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_minimum_threshold_price.display(value)
  elseif minimum_threshold_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_minimum_threshold_price.display(value)
  elseif minimum_threshold_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_minimum_threshold_price.display(value)
  elseif minimum_threshold_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_minimum_threshold_price.display(value)
  elseif minimum_threshold_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_minimum_threshold_price.display(value)
  elseif minimum_threshold_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_minimum_threshold_price.display(value)
  elseif minimum_threshold_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_minimum_threshold_price.display(value)
  else
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_minimum_threshold_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_minimum_threshold_price, range, value, display)
  local mantissa_display = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price.display(mantissa)

  field_tree:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.minimum_threshold_price, range, mantissa, mantissa_display)

  local minimum_threshold_price_fraction_indicator_entry = field_tree:add("Minimum Threshold Price Fraction Indicator: " .. tostring(minimum_threshold_price_fraction_indicator))
  minimum_threshold_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Net Change
box_boxoptions_solamulticast_hsvf_v2_1.scaled_net_change = {}

-- Display: Scaled Net Change
box_boxoptions_solamulticast_hsvf_v2_1.scaled_net_change.display = function(value)
  return "Scaled Net Change: " .. string.format("%g", value)
end

-- Display: Scaled Net Change with an unrecognised code
box_boxoptions_solamulticast_hsvf_v2_1.scaled_net_change.display_uncoded = function(value)
  return "Scaled Net Change: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Net Change
box_boxoptions_solamulticast_hsvf_v2_1.scaled_net_change.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.net_change.size
  local range = buffer(offset, length)
  local mantissa = range:string()
  local net_change_fraction_indicator = buffer(offset + length, box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_indicator.size):string()

  local value
  local display
  if net_change_fraction_indicator == "0" then
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_net_change.display(value)
  elseif net_change_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_net_change.display(value)
  elseif net_change_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_net_change.display(value)
  elseif net_change_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_net_change.display(value)
  elseif net_change_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_net_change.display(value)
  elseif net_change_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_net_change.display(value)
  elseif net_change_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_net_change.display(value)
  elseif net_change_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_net_change.display(value)
  elseif net_change_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_net_change.display(value)
  elseif net_change_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_net_change.display(value)
  else
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_net_change.display_uncoded(value)
  end

  local field_tree = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_net_change, range, value, display)
  local mantissa_display = box_boxoptions_solamulticast_hsvf_v2_1.net_change.display(mantissa)

  field_tree:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.net_change, range, mantissa, mantissa_display)

  local net_change_fraction_indicator_entry = field_tree:add("Net Change Fraction Indicator: " .. tostring(net_change_fraction_indicator))
  net_change_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Open Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_open_price = {}

-- Display: Scaled Open Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_open_price.display = function(value)
  return "Scaled Open Price: " .. string.format("%g", value)
end

-- Display: Scaled Open Price with an unrecognised code
box_boxoptions_solamulticast_hsvf_v2_1.scaled_open_price.display_uncoded = function(value)
  return "Scaled Open Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Open Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_open_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.open_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()
  local open_price_fraction_indicator = buffer(offset + length, box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_indicator.size):string()

  local value
  local display
  if open_price_fraction_indicator == "0" then
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_open_price.display(value)
  elseif open_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_open_price.display(value)
  elseif open_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_open_price.display(value)
  elseif open_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_open_price.display(value)
  elseif open_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_open_price.display(value)
  elseif open_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_open_price.display(value)
  elseif open_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_open_price.display(value)
  elseif open_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_open_price.display(value)
  elseif open_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_open_price.display(value)
  elseif open_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_open_price.display(value)
  else
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_open_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_open_price, range, value, display)
  local mantissa_display = box_boxoptions_solamulticast_hsvf_v2_1.open_price.display(mantissa)

  field_tree:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.open_price, range, mantissa, mantissa_display)

  local open_price_fraction_indicator_entry = field_tree:add("Open Price Fraction Indicator: " .. tostring(open_price_fraction_indicator))
  open_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Reference Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_reference_price = {}

-- Display: Scaled Reference Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_reference_price.display = function(value)
  return "Scaled Reference Price: " .. string.format("%g", value)
end

-- Display: Scaled Reference Price with an unrecognised code
box_boxoptions_solamulticast_hsvf_v2_1.scaled_reference_price.display_uncoded = function(value)
  return "Scaled Reference Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Reference Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.reference_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()
  local reference_price_fraction_indicator = buffer(offset + length, box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_indicator.size):string()

  local value
  local display
  if reference_price_fraction_indicator == "0" then
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_reference_price.display(value)
  elseif reference_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_reference_price.display(value)
  elseif reference_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_reference_price.display(value)
  elseif reference_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_reference_price.display(value)
  elseif reference_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_reference_price.display(value)
  elseif reference_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_reference_price.display(value)
  elseif reference_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_reference_price.display(value)
  elseif reference_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_reference_price.display(value)
  elseif reference_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_reference_price.display(value)
  elseif reference_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_reference_price.display(value)
  else
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_reference_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_reference_price, range, value, display)
  local mantissa_display = box_boxoptions_solamulticast_hsvf_v2_1.reference_price.display(mantissa)

  field_tree:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.reference_price, range, mantissa, mantissa_display)

  local reference_price_fraction_indicator_entry = field_tree:add("Reference Price Fraction Indicator: " .. tostring(reference_price_fraction_indicator))
  reference_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Strike Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_strike_price = {}

-- Display: Scaled Strike Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_strike_price.display = function(value)
  return "Scaled Strike Price: " .. string.format("%g", value)
end

-- Display: Scaled Strike Price with an unrecognised code
box_boxoptions_solamulticast_hsvf_v2_1.scaled_strike_price.display_uncoded = function(value)
  return "Scaled Strike Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Strike Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.strike_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()
  local strike_price_fraction_indicator = buffer(offset + length, box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_indicator.size):string()

  local value
  local display
  if strike_price_fraction_indicator == "0" then
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_strike_price.display(value)
  elseif strike_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_strike_price.display(value)
  elseif strike_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_strike_price.display(value)
  elseif strike_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_strike_price.display(value)
  elseif strike_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_strike_price.display(value)
  elseif strike_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_strike_price.display(value)
  elseif strike_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_strike_price.display(value)
  elseif strike_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_strike_price.display(value)
  elseif strike_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_strike_price.display(value)
  elseif strike_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_strike_price.display(value)
  else
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_strike_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_strike_price, range, value, display)
  local mantissa_display = box_boxoptions_solamulticast_hsvf_v2_1.strike_price.display(mantissa)

  field_tree:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.strike_price, range, mantissa, mantissa_display)

  local strike_price_fraction_indicator_entry = field_tree:add("Strike Price Fraction Indicator: " .. tostring(strike_price_fraction_indicator))
  strike_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Tick Increment
box_boxoptions_solamulticast_hsvf_v2_1.scaled_tick_increment = {}

-- Display: Scaled Tick Increment
box_boxoptions_solamulticast_hsvf_v2_1.scaled_tick_increment.display = function(value)
  return "Scaled Tick Increment: " .. string.format("%g", value)
end

-- Display: Scaled Tick Increment with an unrecognised code
box_boxoptions_solamulticast_hsvf_v2_1.scaled_tick_increment.display_uncoded = function(value)
  return "Scaled Tick Increment: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Tick Increment
box_boxoptions_solamulticast_hsvf_v2_1.scaled_tick_increment.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment.size
  local range = buffer(offset, length)
  local mantissa = range:string()
  local tick_increment_fraction_indicator = buffer(offset + length, box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_indicator.size):string()

  local value
  local display
  if tick_increment_fraction_indicator == "0" then
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_tick_increment.display(value)
  elseif tick_increment_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_tick_increment.display(value)
  elseif tick_increment_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_tick_increment.display(value)
  elseif tick_increment_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_tick_increment.display(value)
  elseif tick_increment_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_tick_increment.display(value)
  elseif tick_increment_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_tick_increment.display(value)
  elseif tick_increment_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_tick_increment.display(value)
  elseif tick_increment_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_tick_increment.display(value)
  elseif tick_increment_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_tick_increment.display(value)
  elseif tick_increment_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_tick_increment.display(value)
  else
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_tick_increment.display_uncoded(value)
  end

  local field_tree = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_tick_increment, range, value, display)
  local mantissa_display = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment.display(mantissa)

  field_tree:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.tick_increment, range, mantissa, mantissa_display)

  local tick_increment_fraction_indicator_entry = field_tree:add("Tick Increment Fraction Indicator: " .. tostring(tick_increment_fraction_indicator))
  tick_increment_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Trade Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_trade_price = {}

-- Display: Scaled Trade Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_trade_price.display = function(value)
  return "Scaled Trade Price: " .. string.format("%g", value)
end

-- Display: Scaled Trade Price with an unrecognised code
box_boxoptions_solamulticast_hsvf_v2_1.scaled_trade_price.display_uncoded = function(value)
  return "Scaled Trade Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Trade Price
box_boxoptions_solamulticast_hsvf_v2_1.scaled_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solamulticast_hsvf_v2_1.trade_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()
  local trade_price_fraction_indicator = buffer(offset + length, box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_indicator.size):string()

  local value
  local display
  if trade_price_fraction_indicator == "0" then
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_trade_price.display(value)
  elseif trade_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_trade_price.display(value)
  elseif trade_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_trade_price.display(value)
  elseif trade_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_trade_price.display(value)
  elseif trade_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_trade_price.display(value)
  elseif trade_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_trade_price.display(value)
  elseif trade_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_trade_price.display(value)
  elseif trade_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_trade_price.display(value)
  elseif trade_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_trade_price.display(value)
  elseif trade_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_trade_price.display(value)
  else
    value = mantissa
    display = box_boxoptions_solamulticast_hsvf_v2_1.scaled_trade_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.scaled_trade_price, range, value, display)
  local mantissa_display = box_boxoptions_solamulticast_hsvf_v2_1.trade_price.display(mantissa)

  field_tree:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.trade_price, range, mantissa, mantissa_display)

  local trade_price_fraction_indicator_entry = field_tree:add("Trade Price Fraction Indicator: " .. tostring(trade_price_fraction_indicator))
  trade_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Box BoxOptions SolaMulticast Hsvf 2.1
-----------------------------------------------------------------------

-- End Of Auction Or Exposition On Complex Instruments Message
box_boxoptions_solamulticast_hsvf_v2_1.end_of_auction_or_exposition_on_complex_instruments_message = {}

-- Size: End Of Auction Or Exposition On Complex Instruments Message
box_boxoptions_solamulticast_hsvf_v2_1.end_of_auction_or_exposition_on_complex_instruments_message.size =
  box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_symbol.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.deletion_type.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.order_sequence_number.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.order_side.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.improvement_phase_sequential_number.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.auction_type.size

-- Display: End Of Auction Or Exposition On Complex Instruments Message
box_boxoptions_solamulticast_hsvf_v2_1.end_of_auction_or_exposition_on_complex_instruments_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Auction Or Exposition On Complex Instruments Message
box_boxoptions_solamulticast_hsvf_v2_1.end_of_auction_or_exposition_on_complex_instruments_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.dissect(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: X
  index, complex_order_instrument_symbol = box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_symbol.dissect(buffer, index, packet, parent)

  -- Deletion Type: N
  index, deletion_type = box_boxoptions_solamulticast_hsvf_v2_1.deletion_type.dissect(buffer, index, packet, parent)

  -- Order Sequence Number: N
  index, order_sequence_number = box_boxoptions_solamulticast_hsvf_v2_1.order_sequence_number.dissect(buffer, index, packet, parent)

  -- Order Side: X
  index, order_side = box_boxoptions_solamulticast_hsvf_v2_1.order_side.dissect(buffer, index, packet, parent)

  -- Improvement Phase Sequential Number: N
  index, improvement_phase_sequential_number = box_boxoptions_solamulticast_hsvf_v2_1.improvement_phase_sequential_number.dissect(buffer, index, packet, parent)

  -- Auction Type: X
  index, auction_type = box_boxoptions_solamulticast_hsvf_v2_1.auction_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Auction Or Exposition On Complex Instruments Message
box_boxoptions_solamulticast_hsvf_v2_1.end_of_auction_or_exposition_on_complex_instruments_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.end_of_auction_or_exposition_on_complex_instruments_message, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.end_of_auction_or_exposition_on_complex_instruments_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.end_of_auction_or_exposition_on_complex_instruments_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.end_of_auction_or_exposition_on_complex_instruments_message.fields(buffer, offset, packet, parent)
  end
end

-- Strike Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_unknown_fraction_pair = {}

-- Size: Strike Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_unknown_fraction_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_strike_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_indicator.size

-- Display: Strike Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_unknown_fraction_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strike Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_unknown_fraction_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Strike Price: N
  index, raw_strike_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_strike_price.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strike Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_unknown_fraction_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.strike_price_unknown_fraction_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_unknown_fraction_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_unknown_fraction_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.strike_price_unknown_fraction_pair.fields(buffer, offset, packet, parent)
  end
end

-- Strike Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_numeric_pair = {}

-- Size: Strike Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_numeric_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.strike_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_indicator.size

-- Display: Strike Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_numeric_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strike Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_numeric_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Strike Price: N
  index, strike_price = box_boxoptions_solamulticast_hsvf_v2_1.scaled_strike_price.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strike Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_numeric_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.strike_price_numeric_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_numeric_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_numeric_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.strike_price_numeric_pair.fields(buffer, offset, packet, parent)
  end
end

-- Strike Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_million_pair = {}

-- Size: Strike Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_million_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_strike_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_indicator.size

-- Display: Strike Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_million_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strike Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_million_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Strike Price: N
  index, raw_strike_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_strike_price.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strike Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_million_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.strike_price_negative_million_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_million_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_million_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_million_pair.fields(buffer, offset, packet, parent)
  end
end

-- Strike Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_hundred_thousand_pair = {}

-- Size: Strike Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_hundred_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_strike_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_indicator.size

-- Display: Strike Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_hundred_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strike Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_hundred_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Strike Price: N
  index, raw_strike_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_strike_price.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strike Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_hundred_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.strike_price_negative_hundred_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_hundred_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Strike Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_ten_thousand_pair = {}

-- Size: Strike Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_ten_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_strike_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_indicator.size

-- Display: Strike Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_ten_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strike Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_ten_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Strike Price: N
  index, raw_strike_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_strike_price.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strike Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_ten_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.strike_price_negative_ten_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_ten_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Strike Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_thousand_pair = {}

-- Size: Strike Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_strike_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_indicator.size

-- Display: Strike Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strike Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Strike Price: N
  index, raw_strike_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_strike_price.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strike Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.strike_price_negative_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Strike Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_hundred_pair = {}

-- Size: Strike Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_hundred_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_strike_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_indicator.size

-- Display: Strike Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_hundred_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strike Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_hundred_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Strike Price: N
  index, raw_strike_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_strike_price.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strike Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_hundred_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.strike_price_negative_hundred_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_hundred_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_hundred_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_hundred_pair.fields(buffer, offset, packet, parent)
  end
end

-- Strike Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_ten_pair = {}

-- Size: Strike Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_ten_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_strike_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_indicator.size

-- Display: Strike Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_ten_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strike Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_ten_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Strike Price: N
  index, raw_strike_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_strike_price.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strike Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_ten_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.strike_price_negative_ten_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_ten_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_ten_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_ten_pair.fields(buffer, offset, packet, parent)
  end
end

-- Strike Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_whole_pair = {}

-- Size: Strike Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_whole_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_strike_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_indicator.size

-- Display: Strike Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_whole_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strike Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_whole_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Strike Price: N
  index, raw_strike_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_strike_price.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strike Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_whole_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.strike_price_negative_whole_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_whole_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_whole_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_whole_pair.fields(buffer, offset, packet, parent)
  end
end

-- Strike Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_pair = {}

-- Dispatch: Strike Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_pair.dispatch = {
  ["A"] = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_whole_pair.dissect,
  ["B"] = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_ten_pair.dissect,
  ["C"] = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_hundred_pair.dissect,
  ["D"] = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_thousand_pair.dissect,
  ["E"] = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_ten_thousand_pair.dissect,
  ["F"] = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_hundred_thousand_pair.dissect,
  ["G"] = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_negative_million_pair.dissect,
  ["0"] = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_numeric_pair.dissect,
  ["1"] = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_numeric_pair.dissect,
  ["2"] = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_numeric_pair.dissect,
  ["3"] = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_numeric_pair.dissect,
  ["4"] = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_numeric_pair.dissect,
  ["5"] = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_numeric_pair.dissect,
  ["6"] = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_numeric_pair.dissect,
  ["7"] = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_numeric_pair.dissect,
  ["8"] = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_numeric_pair.dissect,
  ["9"] = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_numeric_pair.dissect,
}

-- Dissect: Strike Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_pair.dissect = function(buffer, offset, packet, parent, strike_price_fraction_indicator)
  local dissect = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_pair.dispatch[strike_price_fraction_indicator]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Dissect Strike Price Unknown Fraction Pair
  return box_boxoptions_solamulticast_hsvf_v2_1.strike_price_unknown_fraction_pair.dissect(buffer, offset, packet, parent)
end

-- Instrument Description
box_boxoptions_solamulticast_hsvf_v2_1.instrument_description = {}

-- Calculate size of: Instrument Description
box_boxoptions_solamulticast_hsvf_v2_1.instrument_description.size = function(buffer, offset)
  local index = 0

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.root_symbol.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.expiry_month_code.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.filler_1.size

  -- Calculate runtime size of Strike Price Fraction Pair field
  local strike_price_fraction_pair_offset = offset + index
  local strike_price_fraction_pair_type = buffer(strike_price_fraction_pair_offset + 7, 1):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_pair.size(buffer, strike_price_fraction_pair_offset, strike_price_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.expiry_year.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.expiry_day.size

  return index
end

-- Display: Instrument Description
box_boxoptions_solamulticast_hsvf_v2_1.instrument_description.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Description
box_boxoptions_solamulticast_hsvf_v2_1.instrument_description.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Root Symbol: X
  index, root_symbol = box_boxoptions_solamulticast_hsvf_v2_1.root_symbol.dissect(buffer, index, packet, parent)

  -- Expiry Month Code: A
  index, expiry_month_code = box_boxoptions_solamulticast_hsvf_v2_1.expiry_month_code.dissect(buffer, index, packet, parent)

  -- Filler 1: 1 Byte
  index, filler_1 = box_boxoptions_solamulticast_hsvf_v2_1.filler_1.dissect(buffer, index, packet, parent)

  -- Dependency element: Strike Price Fraction Indicator
  local strike_price_fraction_indicator = buffer(index + 7, 1):string()

  -- Strike Price Fraction Pair: Runtime Type with 9 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_fraction_pair.dissect(buffer, index, packet, parent, strike_price_fraction_indicator)

  -- Expiry Year: N
  index, expiry_year = box_boxoptions_solamulticast_hsvf_v2_1.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = box_boxoptions_solamulticast_hsvf_v2_1.expiry_day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Description
box_boxoptions_solamulticast_hsvf_v2_1.instrument_description.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.instrument_description, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.instrument_description.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.instrument_description.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.instrument_description.fields(buffer, offset, packet, parent)
  end
end

-- End Of Auction Or Exposition On Option Message
box_boxoptions_solamulticast_hsvf_v2_1.end_of_auction_or_exposition_on_option_message = {}

-- Calculate size of: End Of Auction Or Exposition On Option Message
box_boxoptions_solamulticast_hsvf_v2_1.end_of_auction_or_exposition_on_option_message.size = function(buffer, offset)
  local index = 0

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.instrument_description.size(buffer, offset + index)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.deletion_type.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.order_sequence_number.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.improvement_order_side.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.improvement_phase_sequential_number.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.auction_type.size

  return index
end

-- Display: End Of Auction Or Exposition On Option Message
box_boxoptions_solamulticast_hsvf_v2_1.end_of_auction_or_exposition_on_option_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Auction Or Exposition On Option Message
box_boxoptions_solamulticast_hsvf_v2_1.end_of_auction_or_exposition_on_option_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.dissect(buffer, index, packet, parent)

  -- Instrument Description: Struct of 6 fields
  index, instrument_description = box_boxoptions_solamulticast_hsvf_v2_1.instrument_description.dissect(buffer, index, packet, parent)

  -- Deletion Type: N
  index, deletion_type = box_boxoptions_solamulticast_hsvf_v2_1.deletion_type.dissect(buffer, index, packet, parent)

  -- Order Sequence Number: N
  index, order_sequence_number = box_boxoptions_solamulticast_hsvf_v2_1.order_sequence_number.dissect(buffer, index, packet, parent)

  -- Improvement Order Side: X
  index, improvement_order_side = box_boxoptions_solamulticast_hsvf_v2_1.improvement_order_side.dissect(buffer, index, packet, parent)

  -- Improvement Phase Sequential Number: N
  index, improvement_phase_sequential_number = box_boxoptions_solamulticast_hsvf_v2_1.improvement_phase_sequential_number.dissect(buffer, index, packet, parent)

  -- Auction Type: X
  index, auction_type = box_boxoptions_solamulticast_hsvf_v2_1.auction_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Auction Or Exposition On Option Message
box_boxoptions_solamulticast_hsvf_v2_1.end_of_auction_or_exposition_on_option_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.end_of_auction_or_exposition_on_option_message, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.end_of_auction_or_exposition_on_option_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.end_of_auction_or_exposition_on_option_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.end_of_auction_or_exposition_on_option_message.fields(buffer, offset, packet, parent)
  end
end

-- Limit Entered For An Order Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_unknown_fraction_pair = {}

-- Size: Limit Entered For An Order Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_unknown_fraction_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_limit_entered_for_an_order.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.limit_fraction_indicator.size

-- Display: Limit Entered For An Order Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_unknown_fraction_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Limit Entered For An Order Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_unknown_fraction_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Limit Entered For An Order: N
  index, raw_limit_entered_for_an_order = box_boxoptions_solamulticast_hsvf_v2_1.raw_limit_entered_for_an_order.dissect(buffer, index, packet, parent)

  -- Limit Fraction Indicator: X
  index, limit_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.limit_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Limit Entered For An Order Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_unknown_fraction_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.limit_entered_for_an_order_unknown_fraction_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_unknown_fraction_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_unknown_fraction_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_unknown_fraction_pair.fields(buffer, offset, packet, parent)
  end
end

-- Limit Entered For An Order Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_numeric_pair = {}

-- Size: Limit Entered For An Order Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_numeric_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.limit_fraction_indicator.size

-- Display: Limit Entered For An Order Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_numeric_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Limit Entered For An Order Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_numeric_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Limit Entered For An Order: N
  index, limit_entered_for_an_order = box_boxoptions_solamulticast_hsvf_v2_1.scaled_limit_entered_for_an_order.dissect(buffer, index, packet, parent)

  -- Limit Fraction Indicator: X
  index, limit_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.limit_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Limit Entered For An Order Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_numeric_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.limit_entered_for_an_order_numeric_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_numeric_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_numeric_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_numeric_pair.fields(buffer, offset, packet, parent)
  end
end

-- Limit Entered For An Order Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_million_pair = {}

-- Size: Limit Entered For An Order Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_million_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_limit_entered_for_an_order.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.limit_fraction_indicator.size

-- Display: Limit Entered For An Order Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_million_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Limit Entered For An Order Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_million_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Limit Entered For An Order: N
  index, raw_limit_entered_for_an_order = box_boxoptions_solamulticast_hsvf_v2_1.raw_limit_entered_for_an_order.dissect(buffer, index, packet, parent)

  -- Limit Fraction Indicator: X
  index, limit_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.limit_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Limit Entered For An Order Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_million_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.limit_entered_for_an_order_negative_million_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_million_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_million_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_million_pair.fields(buffer, offset, packet, parent)
  end
end

-- Limit Entered For An Order Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_hundred_thousand_pair = {}

-- Size: Limit Entered For An Order Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_hundred_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_limit_entered_for_an_order.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.limit_fraction_indicator.size

-- Display: Limit Entered For An Order Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_hundred_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Limit Entered For An Order Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_hundred_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Limit Entered For An Order: N
  index, raw_limit_entered_for_an_order = box_boxoptions_solamulticast_hsvf_v2_1.raw_limit_entered_for_an_order.dissect(buffer, index, packet, parent)

  -- Limit Fraction Indicator: X
  index, limit_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.limit_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Limit Entered For An Order Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_hundred_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.limit_entered_for_an_order_negative_hundred_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_hundred_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Limit Entered For An Order Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_ten_thousand_pair = {}

-- Size: Limit Entered For An Order Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_ten_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_limit_entered_for_an_order.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.limit_fraction_indicator.size

-- Display: Limit Entered For An Order Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_ten_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Limit Entered For An Order Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_ten_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Limit Entered For An Order: N
  index, raw_limit_entered_for_an_order = box_boxoptions_solamulticast_hsvf_v2_1.raw_limit_entered_for_an_order.dissect(buffer, index, packet, parent)

  -- Limit Fraction Indicator: X
  index, limit_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.limit_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Limit Entered For An Order Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_ten_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.limit_entered_for_an_order_negative_ten_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_ten_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Limit Entered For An Order Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_thousand_pair = {}

-- Size: Limit Entered For An Order Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_limit_entered_for_an_order.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.limit_fraction_indicator.size

-- Display: Limit Entered For An Order Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Limit Entered For An Order Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Limit Entered For An Order: N
  index, raw_limit_entered_for_an_order = box_boxoptions_solamulticast_hsvf_v2_1.raw_limit_entered_for_an_order.dissect(buffer, index, packet, parent)

  -- Limit Fraction Indicator: X
  index, limit_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.limit_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Limit Entered For An Order Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.limit_entered_for_an_order_negative_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Limit Entered For An Order Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_hundred_pair = {}

-- Size: Limit Entered For An Order Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_hundred_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_limit_entered_for_an_order.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.limit_fraction_indicator.size

-- Display: Limit Entered For An Order Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_hundred_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Limit Entered For An Order Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_hundred_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Limit Entered For An Order: N
  index, raw_limit_entered_for_an_order = box_boxoptions_solamulticast_hsvf_v2_1.raw_limit_entered_for_an_order.dissect(buffer, index, packet, parent)

  -- Limit Fraction Indicator: X
  index, limit_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.limit_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Limit Entered For An Order Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_hundred_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.limit_entered_for_an_order_negative_hundred_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_hundred_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_hundred_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_hundred_pair.fields(buffer, offset, packet, parent)
  end
end

-- Limit Entered For An Order Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_ten_pair = {}

-- Size: Limit Entered For An Order Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_ten_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_limit_entered_for_an_order.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.limit_fraction_indicator.size

-- Display: Limit Entered For An Order Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_ten_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Limit Entered For An Order Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_ten_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Limit Entered For An Order: N
  index, raw_limit_entered_for_an_order = box_boxoptions_solamulticast_hsvf_v2_1.raw_limit_entered_for_an_order.dissect(buffer, index, packet, parent)

  -- Limit Fraction Indicator: X
  index, limit_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.limit_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Limit Entered For An Order Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_ten_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.limit_entered_for_an_order_negative_ten_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_ten_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_ten_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_ten_pair.fields(buffer, offset, packet, parent)
  end
end

-- Limit Entered For An Order Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_whole_pair = {}

-- Size: Limit Entered For An Order Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_whole_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_limit_entered_for_an_order.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.limit_fraction_indicator.size

-- Display: Limit Entered For An Order Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_whole_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Limit Entered For An Order Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_whole_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Limit Entered For An Order: N
  index, raw_limit_entered_for_an_order = box_boxoptions_solamulticast_hsvf_v2_1.raw_limit_entered_for_an_order.dissect(buffer, index, packet, parent)

  -- Limit Fraction Indicator: X
  index, limit_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.limit_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Limit Entered For An Order Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_whole_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.limit_entered_for_an_order_negative_whole_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_whole_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_whole_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_whole_pair.fields(buffer, offset, packet, parent)
  end
end

-- Limit Entered For An Order Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_fraction_pair = {}

-- Dispatch: Limit Entered For An Order Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_fraction_pair.dispatch = {
  ["A"] = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_whole_pair.dissect,
  ["B"] = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_ten_pair.dissect,
  ["C"] = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_hundred_pair.dissect,
  ["D"] = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_thousand_pair.dissect,
  ["E"] = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_ten_thousand_pair.dissect,
  ["F"] = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_hundred_thousand_pair.dissect,
  ["G"] = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_negative_million_pair.dissect,
  ["0"] = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_numeric_pair.dissect,
  ["1"] = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_numeric_pair.dissect,
  ["2"] = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_numeric_pair.dissect,
  ["3"] = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_numeric_pair.dissect,
  ["4"] = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_numeric_pair.dissect,
  ["5"] = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_numeric_pair.dissect,
  ["6"] = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_numeric_pair.dissect,
  ["7"] = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_numeric_pair.dissect,
  ["8"] = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_numeric_pair.dissect,
  ["9"] = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_numeric_pair.dissect,
}

-- Dissect: Limit Entered For An Order Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_fraction_pair.dissect = function(buffer, offset, packet, parent, limit_fraction_indicator)
  local dissect = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_fraction_pair.dispatch[limit_fraction_indicator]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Dissect Limit Entered For An Order Unknown Fraction Pair
  return box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_unknown_fraction_pair.dissect(buffer, offset, packet, parent)
end

-- Start Of Exposition On Complex Order Message
box_boxoptions_solamulticast_hsvf_v2_1.start_of_exposition_on_complex_order_message = {}

-- Calculate size of: Start Of Exposition On Complex Order Message
box_boxoptions_solamulticast_hsvf_v2_1.start_of_exposition_on_complex_order_message.size = function(buffer, offset)
  local index = 0

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_symbol.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.order_side.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.type_of_order.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_sign.size

  -- Calculate runtime size of Limit Entered For An Order Fraction Pair field
  local limit_entered_for_an_order_fraction_pair_offset = offset + index
  local limit_entered_for_an_order_fraction_pair_type = buffer(limit_entered_for_an_order_fraction_pair_offset + 6, 1):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_fraction_pair.size(buffer, limit_entered_for_an_order_fraction_pair_offset, limit_entered_for_an_order_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.order_quantity.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.order_sequence_number.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.filler_6.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.type_of_clearing_account.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.filler_1.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.end_of_the_exposition.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.auction_type.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.firm_id.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.cmta.size

  return index
end

-- Display: Start Of Exposition On Complex Order Message
box_boxoptions_solamulticast_hsvf_v2_1.start_of_exposition_on_complex_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Exposition On Complex Order Message
box_boxoptions_solamulticast_hsvf_v2_1.start_of_exposition_on_complex_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.dissect(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: X
  index, complex_order_instrument_symbol = box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_symbol.dissect(buffer, index, packet, parent)

  -- Order Side: X
  index, order_side = box_boxoptions_solamulticast_hsvf_v2_1.order_side.dissect(buffer, index, packet, parent)

  -- Type Of Order: X
  index, type_of_order = box_boxoptions_solamulticast_hsvf_v2_1.type_of_order.dissect(buffer, index, packet, parent)

  -- Limit Entered For An Order Sign: X
  index, limit_entered_for_an_order_sign = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_sign.dissect(buffer, index, packet, parent)

  -- Dependency element: Limit Fraction Indicator
  local limit_fraction_indicator = buffer(index + 6, 1):string()

  -- Limit Entered For An Order Fraction Pair: Runtime Type with 9 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_fraction_pair.dissect(buffer, index, packet, parent, limit_fraction_indicator)

  -- Order Quantity: X
  index, order_quantity = box_boxoptions_solamulticast_hsvf_v2_1.order_quantity.dissect(buffer, index, packet, parent)

  -- Order Sequence Number: N
  index, order_sequence_number = box_boxoptions_solamulticast_hsvf_v2_1.order_sequence_number.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = box_boxoptions_solamulticast_hsvf_v2_1.filler_6.dissect(buffer, index, packet, parent)

  -- Type Of Clearing Account: X
  index, type_of_clearing_account = box_boxoptions_solamulticast_hsvf_v2_1.type_of_clearing_account.dissect(buffer, index, packet, parent)

  -- Filler 1: 1 Byte
  index, filler_1 = box_boxoptions_solamulticast_hsvf_v2_1.filler_1.dissect(buffer, index, packet, parent)

  -- End Of The Exposition: N
  index, end_of_the_exposition = box_boxoptions_solamulticast_hsvf_v2_1.end_of_the_exposition.dissect(buffer, index, packet, parent)

  -- Auction Type: X
  index, auction_type = box_boxoptions_solamulticast_hsvf_v2_1.auction_type.dissect(buffer, index, packet, parent)

  -- Firm Id: X
  index, firm_id = box_boxoptions_solamulticast_hsvf_v2_1.firm_id.dissect(buffer, index, packet, parent)

  -- Cmta: X
  index, cmta = box_boxoptions_solamulticast_hsvf_v2_1.cmta.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Exposition On Complex Order Message
box_boxoptions_solamulticast_hsvf_v2_1.start_of_exposition_on_complex_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.start_of_exposition_on_complex_order_message, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.start_of_exposition_on_complex_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.start_of_exposition_on_complex_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.start_of_exposition_on_complex_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Exposition On Option Message
box_boxoptions_solamulticast_hsvf_v2_1.start_of_exposition_on_option_message = {}

-- Calculate size of: Start Of Exposition On Option Message
box_boxoptions_solamulticast_hsvf_v2_1.start_of_exposition_on_option_message.size = function(buffer, offset)
  local index = 0

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.instrument_description.size(buffer, offset + index)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.order_side.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.type_of_order.size

  -- Calculate runtime size of Limit Entered For An Order Fraction Pair field
  local limit_entered_for_an_order_fraction_pair_offset = offset + index
  local limit_entered_for_an_order_fraction_pair_type = buffer(limit_entered_for_an_order_fraction_pair_offset + 6, 1):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_fraction_pair.size(buffer, limit_entered_for_an_order_fraction_pair_offset, limit_entered_for_an_order_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.order_quantity.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.order_sequence_number.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.filler_6.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.type_of_clearing_account.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.filler_1.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.end_of_the_exposition.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.auction_type.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.firm_id.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.cmta.size

  return index
end

-- Display: Start Of Exposition On Option Message
box_boxoptions_solamulticast_hsvf_v2_1.start_of_exposition_on_option_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Exposition On Option Message
box_boxoptions_solamulticast_hsvf_v2_1.start_of_exposition_on_option_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.dissect(buffer, index, packet, parent)

  -- Instrument Description: Struct of 6 fields
  index, instrument_description = box_boxoptions_solamulticast_hsvf_v2_1.instrument_description.dissect(buffer, index, packet, parent)

  -- Order Side: X
  index, order_side = box_boxoptions_solamulticast_hsvf_v2_1.order_side.dissect(buffer, index, packet, parent)

  -- Type Of Order: X
  index, type_of_order = box_boxoptions_solamulticast_hsvf_v2_1.type_of_order.dissect(buffer, index, packet, parent)

  -- Dependency element: Limit Fraction Indicator
  local limit_fraction_indicator = buffer(index + 6, 1):string()

  -- Limit Entered For An Order Fraction Pair: Runtime Type with 9 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.limit_entered_for_an_order_fraction_pair.dissect(buffer, index, packet, parent, limit_fraction_indicator)

  -- Order Quantity: X
  index, order_quantity = box_boxoptions_solamulticast_hsvf_v2_1.order_quantity.dissect(buffer, index, packet, parent)

  -- Order Sequence Number: N
  index, order_sequence_number = box_boxoptions_solamulticast_hsvf_v2_1.order_sequence_number.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = box_boxoptions_solamulticast_hsvf_v2_1.filler_6.dissect(buffer, index, packet, parent)

  -- Type Of Clearing Account: X
  index, type_of_clearing_account = box_boxoptions_solamulticast_hsvf_v2_1.type_of_clearing_account.dissect(buffer, index, packet, parent)

  -- Filler 1: 1 Byte
  index, filler_1 = box_boxoptions_solamulticast_hsvf_v2_1.filler_1.dissect(buffer, index, packet, parent)

  -- End Of The Exposition: N
  index, end_of_the_exposition = box_boxoptions_solamulticast_hsvf_v2_1.end_of_the_exposition.dissect(buffer, index, packet, parent)

  -- Auction Type: X
  index, auction_type = box_boxoptions_solamulticast_hsvf_v2_1.auction_type.dissect(buffer, index, packet, parent)

  -- Firm Id: X
  index, firm_id = box_boxoptions_solamulticast_hsvf_v2_1.firm_id.dissect(buffer, index, packet, parent)

  -- Cmta: X
  index, cmta = box_boxoptions_solamulticast_hsvf_v2_1.cmta.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Exposition On Option Message
box_boxoptions_solamulticast_hsvf_v2_1.start_of_exposition_on_option_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.start_of_exposition_on_option_message, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.start_of_exposition_on_option_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.start_of_exposition_on_option_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.start_of_exposition_on_option_message.fields(buffer, offset, packet, parent)
  end
end

-- Initial Order Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_unknown_fraction_pair = {}

-- Size: Initial Order Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_unknown_fraction_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_initial_order_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_indicator.size

-- Display: Initial Order Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_unknown_fraction_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Initial Order Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_unknown_fraction_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Initial Order Price: N
  index, raw_initial_order_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_initial_order_price.dissect(buffer, index, packet, parent)

  -- Initial Order Price Fraction Indicator: X
  index, initial_order_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Initial Order Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_unknown_fraction_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.initial_order_price_unknown_fraction_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_unknown_fraction_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_unknown_fraction_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_unknown_fraction_pair.fields(buffer, offset, packet, parent)
  end
end

-- Initial Order Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_numeric_pair = {}

-- Size: Initial Order Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_numeric_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_indicator.size

-- Display: Initial Order Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_numeric_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Initial Order Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_numeric_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Initial Order Price: N
  index, initial_order_price = box_boxoptions_solamulticast_hsvf_v2_1.scaled_initial_order_price.dissect(buffer, index, packet, parent)

  -- Initial Order Price Fraction Indicator: X
  index, initial_order_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Initial Order Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_numeric_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.initial_order_price_numeric_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_numeric_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_numeric_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_numeric_pair.fields(buffer, offset, packet, parent)
  end
end

-- Initial Order Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_million_pair = {}

-- Size: Initial Order Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_million_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_initial_order_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_indicator.size

-- Display: Initial Order Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_million_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Initial Order Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_million_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Initial Order Price: N
  index, raw_initial_order_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_initial_order_price.dissect(buffer, index, packet, parent)

  -- Initial Order Price Fraction Indicator: X
  index, initial_order_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Initial Order Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_million_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.initial_order_price_negative_million_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_million_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_million_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_million_pair.fields(buffer, offset, packet, parent)
  end
end

-- Initial Order Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_hundred_thousand_pair = {}

-- Size: Initial Order Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_hundred_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_initial_order_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_indicator.size

-- Display: Initial Order Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_hundred_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Initial Order Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_hundred_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Initial Order Price: N
  index, raw_initial_order_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_initial_order_price.dissect(buffer, index, packet, parent)

  -- Initial Order Price Fraction Indicator: X
  index, initial_order_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Initial Order Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_hundred_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.initial_order_price_negative_hundred_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_hundred_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Initial Order Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_ten_thousand_pair = {}

-- Size: Initial Order Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_ten_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_initial_order_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_indicator.size

-- Display: Initial Order Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_ten_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Initial Order Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_ten_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Initial Order Price: N
  index, raw_initial_order_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_initial_order_price.dissect(buffer, index, packet, parent)

  -- Initial Order Price Fraction Indicator: X
  index, initial_order_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Initial Order Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_ten_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.initial_order_price_negative_ten_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_ten_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Initial Order Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_thousand_pair = {}

-- Size: Initial Order Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_initial_order_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_indicator.size

-- Display: Initial Order Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Initial Order Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Initial Order Price: N
  index, raw_initial_order_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_initial_order_price.dissect(buffer, index, packet, parent)

  -- Initial Order Price Fraction Indicator: X
  index, initial_order_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Initial Order Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.initial_order_price_negative_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Initial Order Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_hundred_pair = {}

-- Size: Initial Order Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_hundred_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_initial_order_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_indicator.size

-- Display: Initial Order Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_hundred_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Initial Order Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_hundred_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Initial Order Price: N
  index, raw_initial_order_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_initial_order_price.dissect(buffer, index, packet, parent)

  -- Initial Order Price Fraction Indicator: X
  index, initial_order_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Initial Order Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_hundred_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.initial_order_price_negative_hundred_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_hundred_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_hundred_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_hundred_pair.fields(buffer, offset, packet, parent)
  end
end

-- Initial Order Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_ten_pair = {}

-- Size: Initial Order Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_ten_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_initial_order_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_indicator.size

-- Display: Initial Order Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_ten_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Initial Order Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_ten_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Initial Order Price: N
  index, raw_initial_order_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_initial_order_price.dissect(buffer, index, packet, parent)

  -- Initial Order Price Fraction Indicator: X
  index, initial_order_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Initial Order Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_ten_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.initial_order_price_negative_ten_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_ten_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_ten_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_ten_pair.fields(buffer, offset, packet, parent)
  end
end

-- Initial Order Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_whole_pair = {}

-- Size: Initial Order Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_whole_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_initial_order_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_indicator.size

-- Display: Initial Order Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_whole_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Initial Order Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_whole_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Initial Order Price: N
  index, raw_initial_order_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_initial_order_price.dissect(buffer, index, packet, parent)

  -- Initial Order Price Fraction Indicator: X
  index, initial_order_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Initial Order Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_whole_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.initial_order_price_negative_whole_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_whole_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_whole_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_whole_pair.fields(buffer, offset, packet, parent)
  end
end

-- Initial Order Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_pair = {}

-- Dispatch: Initial Order Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_pair.dispatch = {
  ["A"] = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_whole_pair.dissect,
  ["B"] = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_ten_pair.dissect,
  ["C"] = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_hundred_pair.dissect,
  ["D"] = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_thousand_pair.dissect,
  ["E"] = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_ten_thousand_pair.dissect,
  ["F"] = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_hundred_thousand_pair.dissect,
  ["G"] = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_negative_million_pair.dissect,
  ["0"] = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_numeric_pair.dissect,
  ["1"] = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_numeric_pair.dissect,
  ["2"] = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_numeric_pair.dissect,
  ["3"] = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_numeric_pair.dissect,
  ["4"] = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_numeric_pair.dissect,
  ["5"] = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_numeric_pair.dissect,
  ["6"] = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_numeric_pair.dissect,
  ["7"] = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_numeric_pair.dissect,
  ["8"] = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_numeric_pair.dissect,
  ["9"] = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_numeric_pair.dissect,
}

-- Dissect: Initial Order Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_pair.dissect = function(buffer, offset, packet, parent, initial_order_price_fraction_indicator)
  local dissect = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_pair.dispatch[initial_order_price_fraction_indicator]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Dissect Initial Order Price Unknown Fraction Pair
  return box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_unknown_fraction_pair.dissect(buffer, offset, packet, parent)
end

-- Start Of Auction On Complex Order Message
box_boxoptions_solamulticast_hsvf_v2_1.start_of_auction_on_complex_order_message = {}

-- Calculate size of: Start Of Auction On Complex Order Message
box_boxoptions_solamulticast_hsvf_v2_1.start_of_auction_on_complex_order_message.size = function(buffer, offset)
  local index = 0

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_symbol.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.improvement_phase_sequential_number.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_sign.size

  -- Calculate runtime size of Initial Order Price Fraction Pair field
  local initial_order_price_fraction_pair_offset = offset + index
  local initial_order_price_fraction_pair_type = buffer(initial_order_price_fraction_pair_offset + 6, 1):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_pair.size(buffer, initial_order_price_fraction_pair_offset, initial_order_price_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.initial_order_quantity.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.initial_order_side.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.improvement_phase_expiry_time.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.improvement_process_expiry_duration.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.minimum_quantity_for_improvement_order.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.percentage_assured_to_initial_order.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.auction_type.size

  return index
end

-- Display: Start Of Auction On Complex Order Message
box_boxoptions_solamulticast_hsvf_v2_1.start_of_auction_on_complex_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Auction On Complex Order Message
box_boxoptions_solamulticast_hsvf_v2_1.start_of_auction_on_complex_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.dissect(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: X
  index, complex_order_instrument_symbol = box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_symbol.dissect(buffer, index, packet, parent)

  -- Improvement Phase Sequential Number: N
  index, improvement_phase_sequential_number = box_boxoptions_solamulticast_hsvf_v2_1.improvement_phase_sequential_number.dissect(buffer, index, packet, parent)

  -- Initial Order Price Sign: X
  index, initial_order_price_sign = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_sign.dissect(buffer, index, packet, parent)

  -- Dependency element: Initial Order Price Fraction Indicator
  local initial_order_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Initial Order Price Fraction Pair: Runtime Type with 9 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_pair.dissect(buffer, index, packet, parent, initial_order_price_fraction_indicator)

  -- Initial Order Quantity: X
  index, initial_order_quantity = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_quantity.dissect(buffer, index, packet, parent)

  -- Initial Order Side: A
  index, initial_order_side = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_side.dissect(buffer, index, packet, parent)

  -- Improvement Phase Expiry Time: A
  index, improvement_phase_expiry_time = box_boxoptions_solamulticast_hsvf_v2_1.improvement_phase_expiry_time.dissect(buffer, index, packet, parent)

  -- Improvement Process Expiry Duration: N
  index, improvement_process_expiry_duration = box_boxoptions_solamulticast_hsvf_v2_1.improvement_process_expiry_duration.dissect(buffer, index, packet, parent)

  -- Minimum Quantity For Improvement Order: X
  index, minimum_quantity_for_improvement_order = box_boxoptions_solamulticast_hsvf_v2_1.minimum_quantity_for_improvement_order.dissect(buffer, index, packet, parent)

  -- Percentage Assured To Initial Order: X
  index, percentage_assured_to_initial_order = box_boxoptions_solamulticast_hsvf_v2_1.percentage_assured_to_initial_order.dissect(buffer, index, packet, parent)

  -- Auction Type: X
  index, auction_type = box_boxoptions_solamulticast_hsvf_v2_1.auction_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Auction On Complex Order Message
box_boxoptions_solamulticast_hsvf_v2_1.start_of_auction_on_complex_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.start_of_auction_on_complex_order_message, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.start_of_auction_on_complex_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.start_of_auction_on_complex_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.start_of_auction_on_complex_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Auction On Option Message
box_boxoptions_solamulticast_hsvf_v2_1.start_of_auction_on_option_message = {}

-- Calculate size of: Start Of Auction On Option Message
box_boxoptions_solamulticast_hsvf_v2_1.start_of_auction_on_option_message.size = function(buffer, offset)
  local index = 0

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.instrument_description.size(buffer, offset + index)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.improvement_phase_sequential_number.size

  -- Calculate runtime size of Initial Order Price Fraction Pair field
  local initial_order_price_fraction_pair_offset = offset + index
  local initial_order_price_fraction_pair_type = buffer(initial_order_price_fraction_pair_offset + 6, 1):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_pair.size(buffer, initial_order_price_fraction_pair_offset, initial_order_price_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.initial_order_quantity.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.initial_order_side.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.improvement_phase_expiry_time.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.improvement_process_expiry_duration.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.minimum_quantity_for_improvement_order.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.percentage_assured_to_initial_order.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.auction_type.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.filler_1.size

  return index
end

-- Display: Start Of Auction On Option Message
box_boxoptions_solamulticast_hsvf_v2_1.start_of_auction_on_option_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Auction On Option Message
box_boxoptions_solamulticast_hsvf_v2_1.start_of_auction_on_option_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.dissect(buffer, index, packet, parent)

  -- Instrument Description: Struct of 6 fields
  index, instrument_description = box_boxoptions_solamulticast_hsvf_v2_1.instrument_description.dissect(buffer, index, packet, parent)

  -- Improvement Phase Sequential Number: N
  index, improvement_phase_sequential_number = box_boxoptions_solamulticast_hsvf_v2_1.improvement_phase_sequential_number.dissect(buffer, index, packet, parent)

  -- Dependency element: Initial Order Price Fraction Indicator
  local initial_order_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Initial Order Price Fraction Pair: Runtime Type with 9 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_price_fraction_pair.dissect(buffer, index, packet, parent, initial_order_price_fraction_indicator)

  -- Initial Order Quantity: X
  index, initial_order_quantity = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_quantity.dissect(buffer, index, packet, parent)

  -- Initial Order Side: A
  index, initial_order_side = box_boxoptions_solamulticast_hsvf_v2_1.initial_order_side.dissect(buffer, index, packet, parent)

  -- Improvement Phase Expiry Time: A
  index, improvement_phase_expiry_time = box_boxoptions_solamulticast_hsvf_v2_1.improvement_phase_expiry_time.dissect(buffer, index, packet, parent)

  -- Improvement Process Expiry Duration: N
  index, improvement_process_expiry_duration = box_boxoptions_solamulticast_hsvf_v2_1.improvement_process_expiry_duration.dissect(buffer, index, packet, parent)

  -- Minimum Quantity For Improvement Order: X
  index, minimum_quantity_for_improvement_order = box_boxoptions_solamulticast_hsvf_v2_1.minimum_quantity_for_improvement_order.dissect(buffer, index, packet, parent)

  -- Percentage Assured To Initial Order: X
  index, percentage_assured_to_initial_order = box_boxoptions_solamulticast_hsvf_v2_1.percentage_assured_to_initial_order.dissect(buffer, index, packet, parent)

  -- Auction Type: X
  index, auction_type = box_boxoptions_solamulticast_hsvf_v2_1.auction_type.dissect(buffer, index, packet, parent)

  -- Filler 1: 1 Byte
  index, filler_1 = box_boxoptions_solamulticast_hsvf_v2_1.filler_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Auction On Option Message
box_boxoptions_solamulticast_hsvf_v2_1.start_of_auction_on_option_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.start_of_auction_on_option_message, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.start_of_auction_on_option_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.start_of_auction_on_option_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.start_of_auction_on_option_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Sales Message
box_boxoptions_solamulticast_hsvf_v2_1.end_of_sales_message = {}

-- Size: End Of Sales Message
box_boxoptions_solamulticast_hsvf_v2_1.end_of_sales_message.size =
  box_boxoptions_solamulticast_hsvf_v2_1.reserved.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.time.size

-- Display: End Of Sales Message
box_boxoptions_solamulticast_hsvf_v2_1.end_of_sales_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Sales Message
box_boxoptions_solamulticast_hsvf_v2_1.end_of_sales_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved: A
  index, reserved = box_boxoptions_solamulticast_hsvf_v2_1.reserved.dissect(buffer, index, packet, parent)

  -- Time: N
  index, time = box_boxoptions_solamulticast_hsvf_v2_1.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Sales Message
box_boxoptions_solamulticast_hsvf_v2_1.end_of_sales_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.end_of_sales_message, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.end_of_sales_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.end_of_sales_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.end_of_sales_message.fields(buffer, offset, packet, parent)
  end
end

-- Beginning Of Complex Order Summary Message
box_boxoptions_solamulticast_hsvf_v2_1.beginning_of_complex_order_summary_message = {}

-- Size: Beginning Of Complex Order Summary Message
box_boxoptions_solamulticast_hsvf_v2_1.beginning_of_complex_order_summary_message.size =
  box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.size

-- Display: Beginning Of Complex Order Summary Message
box_boxoptions_solamulticast_hsvf_v2_1.beginning_of_complex_order_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Beginning Of Complex Order Summary Message
box_boxoptions_solamulticast_hsvf_v2_1.beginning_of_complex_order_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Complex Order Summary Message
box_boxoptions_solamulticast_hsvf_v2_1.beginning_of_complex_order_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.beginning_of_complex_order_summary_message, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.beginning_of_complex_order_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.beginning_of_complex_order_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.beginning_of_complex_order_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Beginning Of Options Summary Message
box_boxoptions_solamulticast_hsvf_v2_1.beginning_of_options_summary_message = {}

-- Size: Beginning Of Options Summary Message
box_boxoptions_solamulticast_hsvf_v2_1.beginning_of_options_summary_message.size =
  box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.size

-- Display: Beginning Of Options Summary Message
box_boxoptions_solamulticast_hsvf_v2_1.beginning_of_options_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Beginning Of Options Summary Message
box_boxoptions_solamulticast_hsvf_v2_1.beginning_of_options_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Options Summary Message
box_boxoptions_solamulticast_hsvf_v2_1.beginning_of_options_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.beginning_of_options_summary_message, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.beginning_of_options_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.beginning_of_options_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.beginning_of_options_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Net Change Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_unknown_fraction_pair = {}

-- Size: Net Change Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_unknown_fraction_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_net_change.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_indicator.size

-- Display: Net Change Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_unknown_fraction_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Net Change Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_unknown_fraction_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Net Change: N
  index, raw_net_change = box_boxoptions_solamulticast_hsvf_v2_1.raw_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Net Change Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_unknown_fraction_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.net_change_unknown_fraction_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.net_change_unknown_fraction_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.net_change_unknown_fraction_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.net_change_unknown_fraction_pair.fields(buffer, offset, packet, parent)
  end
end

-- Net Change Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_numeric_pair = {}

-- Size: Net Change Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_numeric_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.net_change.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_indicator.size

-- Display: Net Change Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_numeric_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Net Change Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_numeric_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Net Change: N
  index, net_change = box_boxoptions_solamulticast_hsvf_v2_1.scaled_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Net Change Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_numeric_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.net_change_numeric_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.net_change_numeric_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.net_change_numeric_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.net_change_numeric_pair.fields(buffer, offset, packet, parent)
  end
end

-- Net Change Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_million_pair = {}

-- Size: Net Change Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_million_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_net_change.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_indicator.size

-- Display: Net Change Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_million_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Net Change Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_million_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Net Change: N
  index, raw_net_change = box_boxoptions_solamulticast_hsvf_v2_1.raw_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Net Change Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_million_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.net_change_negative_million_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_million_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_million_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_million_pair.fields(buffer, offset, packet, parent)
  end
end

-- Net Change Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_hundred_thousand_pair = {}

-- Size: Net Change Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_hundred_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_net_change.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_indicator.size

-- Display: Net Change Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_hundred_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Net Change Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_hundred_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Net Change: N
  index, raw_net_change = box_boxoptions_solamulticast_hsvf_v2_1.raw_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Net Change Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_hundred_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.net_change_negative_hundred_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_hundred_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Net Change Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_ten_thousand_pair = {}

-- Size: Net Change Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_ten_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_net_change.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_indicator.size

-- Display: Net Change Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_ten_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Net Change Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_ten_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Net Change: N
  index, raw_net_change = box_boxoptions_solamulticast_hsvf_v2_1.raw_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Net Change Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_ten_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.net_change_negative_ten_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_ten_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Net Change Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_thousand_pair = {}

-- Size: Net Change Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_net_change.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_indicator.size

-- Display: Net Change Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Net Change Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Net Change: N
  index, raw_net_change = box_boxoptions_solamulticast_hsvf_v2_1.raw_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Net Change Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.net_change_negative_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Net Change Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_hundred_pair = {}

-- Size: Net Change Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_hundred_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_net_change.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_indicator.size

-- Display: Net Change Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_hundred_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Net Change Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_hundred_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Net Change: N
  index, raw_net_change = box_boxoptions_solamulticast_hsvf_v2_1.raw_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Net Change Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_hundred_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.net_change_negative_hundred_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_hundred_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_hundred_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_hundred_pair.fields(buffer, offset, packet, parent)
  end
end

-- Net Change Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_ten_pair = {}

-- Size: Net Change Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_ten_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_net_change.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_indicator.size

-- Display: Net Change Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_ten_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Net Change Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_ten_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Net Change: N
  index, raw_net_change = box_boxoptions_solamulticast_hsvf_v2_1.raw_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Net Change Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_ten_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.net_change_negative_ten_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_ten_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_ten_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_ten_pair.fields(buffer, offset, packet, parent)
  end
end

-- Net Change Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_whole_pair = {}

-- Size: Net Change Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_whole_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_net_change.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_indicator.size

-- Display: Net Change Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_whole_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Net Change Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_whole_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Net Change: N
  index, raw_net_change = box_boxoptions_solamulticast_hsvf_v2_1.raw_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Net Change Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_whole_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.net_change_negative_whole_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_whole_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_whole_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_whole_pair.fields(buffer, offset, packet, parent)
  end
end

-- Net Change Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_pair = {}

-- Dispatch: Net Change Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_pair.dispatch = {
  ["A"] = box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_whole_pair.dissect,
  ["B"] = box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_ten_pair.dissect,
  ["C"] = box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_hundred_pair.dissect,
  ["D"] = box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_thousand_pair.dissect,
  ["E"] = box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_ten_thousand_pair.dissect,
  ["F"] = box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_hundred_thousand_pair.dissect,
  ["G"] = box_boxoptions_solamulticast_hsvf_v2_1.net_change_negative_million_pair.dissect,
  ["0"] = box_boxoptions_solamulticast_hsvf_v2_1.net_change_numeric_pair.dissect,
  ["1"] = box_boxoptions_solamulticast_hsvf_v2_1.net_change_numeric_pair.dissect,
  ["2"] = box_boxoptions_solamulticast_hsvf_v2_1.net_change_numeric_pair.dissect,
  ["3"] = box_boxoptions_solamulticast_hsvf_v2_1.net_change_numeric_pair.dissect,
  ["4"] = box_boxoptions_solamulticast_hsvf_v2_1.net_change_numeric_pair.dissect,
  ["5"] = box_boxoptions_solamulticast_hsvf_v2_1.net_change_numeric_pair.dissect,
  ["6"] = box_boxoptions_solamulticast_hsvf_v2_1.net_change_numeric_pair.dissect,
  ["7"] = box_boxoptions_solamulticast_hsvf_v2_1.net_change_numeric_pair.dissect,
  ["8"] = box_boxoptions_solamulticast_hsvf_v2_1.net_change_numeric_pair.dissect,
  ["9"] = box_boxoptions_solamulticast_hsvf_v2_1.net_change_numeric_pair.dissect,
}

-- Dissect: Net Change Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_pair.dissect = function(buffer, offset, packet, parent, net_change_fraction_indicator)
  local dissect = box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_pair.dispatch[net_change_fraction_indicator]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Dissect Net Change Unknown Fraction Pair
  return box_boxoptions_solamulticast_hsvf_v2_1.net_change_unknown_fraction_pair.dissect(buffer, offset, packet, parent)
end

-- Low Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_unknown_fraction_pair = {}

-- Size: Low Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_unknown_fraction_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_low_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_indicator.size

-- Display: Low Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_unknown_fraction_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Low Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_unknown_fraction_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Low Price: N
  index, raw_low_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_low_price.dissect(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Low Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_unknown_fraction_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.low_price_unknown_fraction_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.low_price_unknown_fraction_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.low_price_unknown_fraction_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.low_price_unknown_fraction_pair.fields(buffer, offset, packet, parent)
  end
end

-- Low Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_numeric_pair = {}

-- Size: Low Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_numeric_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.low_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_indicator.size

-- Display: Low Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_numeric_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Low Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_numeric_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Low Price: N
  index, low_price = box_boxoptions_solamulticast_hsvf_v2_1.scaled_low_price.dissect(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Low Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_numeric_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.low_price_numeric_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.low_price_numeric_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.low_price_numeric_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.low_price_numeric_pair.fields(buffer, offset, packet, parent)
  end
end

-- Low Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_million_pair = {}

-- Size: Low Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_million_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_low_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_indicator.size

-- Display: Low Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_million_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Low Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_million_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Low Price: N
  index, raw_low_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_low_price.dissect(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Low Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_million_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.low_price_negative_million_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_million_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_million_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_million_pair.fields(buffer, offset, packet, parent)
  end
end

-- Low Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_hundred_thousand_pair = {}

-- Size: Low Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_hundred_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_low_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_indicator.size

-- Display: Low Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_hundred_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Low Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_hundred_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Low Price: N
  index, raw_low_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_low_price.dissect(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Low Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_hundred_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.low_price_negative_hundred_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_hundred_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Low Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_ten_thousand_pair = {}

-- Size: Low Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_ten_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_low_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_indicator.size

-- Display: Low Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_ten_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Low Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_ten_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Low Price: N
  index, raw_low_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_low_price.dissect(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Low Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_ten_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.low_price_negative_ten_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_ten_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Low Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_thousand_pair = {}

-- Size: Low Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_low_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_indicator.size

-- Display: Low Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Low Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Low Price: N
  index, raw_low_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_low_price.dissect(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Low Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.low_price_negative_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Low Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_hundred_pair = {}

-- Size: Low Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_hundred_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_low_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_indicator.size

-- Display: Low Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_hundred_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Low Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_hundred_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Low Price: N
  index, raw_low_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_low_price.dissect(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Low Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_hundred_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.low_price_negative_hundred_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_hundred_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_hundred_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_hundred_pair.fields(buffer, offset, packet, parent)
  end
end

-- Low Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_ten_pair = {}

-- Size: Low Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_ten_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_low_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_indicator.size

-- Display: Low Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_ten_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Low Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_ten_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Low Price: N
  index, raw_low_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_low_price.dissect(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Low Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_ten_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.low_price_negative_ten_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_ten_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_ten_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_ten_pair.fields(buffer, offset, packet, parent)
  end
end

-- Low Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_whole_pair = {}

-- Size: Low Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_whole_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_low_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_indicator.size

-- Display: Low Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_whole_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Low Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_whole_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Low Price: N
  index, raw_low_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_low_price.dissect(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Low Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_whole_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.low_price_negative_whole_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_whole_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_whole_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_whole_pair.fields(buffer, offset, packet, parent)
  end
end

-- Low Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_pair = {}

-- Dispatch: Low Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_pair.dispatch = {
  ["A"] = box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_whole_pair.dissect,
  ["B"] = box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_ten_pair.dissect,
  ["C"] = box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_hundred_pair.dissect,
  ["D"] = box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_thousand_pair.dissect,
  ["E"] = box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_ten_thousand_pair.dissect,
  ["F"] = box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_hundred_thousand_pair.dissect,
  ["G"] = box_boxoptions_solamulticast_hsvf_v2_1.low_price_negative_million_pair.dissect,
  ["0"] = box_boxoptions_solamulticast_hsvf_v2_1.low_price_numeric_pair.dissect,
  ["1"] = box_boxoptions_solamulticast_hsvf_v2_1.low_price_numeric_pair.dissect,
  ["2"] = box_boxoptions_solamulticast_hsvf_v2_1.low_price_numeric_pair.dissect,
  ["3"] = box_boxoptions_solamulticast_hsvf_v2_1.low_price_numeric_pair.dissect,
  ["4"] = box_boxoptions_solamulticast_hsvf_v2_1.low_price_numeric_pair.dissect,
  ["5"] = box_boxoptions_solamulticast_hsvf_v2_1.low_price_numeric_pair.dissect,
  ["6"] = box_boxoptions_solamulticast_hsvf_v2_1.low_price_numeric_pair.dissect,
  ["7"] = box_boxoptions_solamulticast_hsvf_v2_1.low_price_numeric_pair.dissect,
  ["8"] = box_boxoptions_solamulticast_hsvf_v2_1.low_price_numeric_pair.dissect,
  ["9"] = box_boxoptions_solamulticast_hsvf_v2_1.low_price_numeric_pair.dissect,
}

-- Dissect: Low Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_pair.dissect = function(buffer, offset, packet, parent, low_price_fraction_indicator)
  local dissect = box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_pair.dispatch[low_price_fraction_indicator]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Dissect Low Price Unknown Fraction Pair
  return box_boxoptions_solamulticast_hsvf_v2_1.low_price_unknown_fraction_pair.dissect(buffer, offset, packet, parent)
end

-- High Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_unknown_fraction_pair = {}

-- Size: High Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_unknown_fraction_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_high_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_indicator.size

-- Display: High Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_unknown_fraction_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: High Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_unknown_fraction_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw High Price: N
  index, raw_high_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_high_price.dissect(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: High Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_unknown_fraction_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.high_price_unknown_fraction_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.high_price_unknown_fraction_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.high_price_unknown_fraction_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.high_price_unknown_fraction_pair.fields(buffer, offset, packet, parent)
  end
end

-- High Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_numeric_pair = {}

-- Size: High Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_numeric_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.high_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_indicator.size

-- Display: High Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_numeric_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: High Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_numeric_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- High Price: N
  index, high_price = box_boxoptions_solamulticast_hsvf_v2_1.scaled_high_price.dissect(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: High Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_numeric_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.high_price_numeric_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.high_price_numeric_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.high_price_numeric_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.high_price_numeric_pair.fields(buffer, offset, packet, parent)
  end
end

-- High Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_million_pair = {}

-- Size: High Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_million_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_high_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_indicator.size

-- Display: High Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_million_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: High Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_million_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw High Price: N
  index, raw_high_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_high_price.dissect(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: High Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_million_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.high_price_negative_million_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_million_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_million_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_million_pair.fields(buffer, offset, packet, parent)
  end
end

-- High Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_hundred_thousand_pair = {}

-- Size: High Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_hundred_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_high_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_indicator.size

-- Display: High Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_hundred_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: High Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_hundred_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw High Price: N
  index, raw_high_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_high_price.dissect(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: High Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_hundred_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.high_price_negative_hundred_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_hundred_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- High Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_ten_thousand_pair = {}

-- Size: High Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_ten_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_high_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_indicator.size

-- Display: High Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_ten_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: High Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_ten_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw High Price: N
  index, raw_high_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_high_price.dissect(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: High Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_ten_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.high_price_negative_ten_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_ten_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- High Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_thousand_pair = {}

-- Size: High Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_high_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_indicator.size

-- Display: High Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: High Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw High Price: N
  index, raw_high_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_high_price.dissect(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: High Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.high_price_negative_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- High Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_hundred_pair = {}

-- Size: High Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_hundred_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_high_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_indicator.size

-- Display: High Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_hundred_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: High Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_hundred_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw High Price: N
  index, raw_high_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_high_price.dissect(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: High Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_hundred_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.high_price_negative_hundred_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_hundred_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_hundred_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_hundred_pair.fields(buffer, offset, packet, parent)
  end
end

-- High Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_ten_pair = {}

-- Size: High Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_ten_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_high_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_indicator.size

-- Display: High Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_ten_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: High Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_ten_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw High Price: N
  index, raw_high_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_high_price.dissect(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: High Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_ten_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.high_price_negative_ten_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_ten_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_ten_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_ten_pair.fields(buffer, offset, packet, parent)
  end
end

-- High Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_whole_pair = {}

-- Size: High Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_whole_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_high_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_indicator.size

-- Display: High Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_whole_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: High Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_whole_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw High Price: N
  index, raw_high_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_high_price.dissect(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: High Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_whole_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.high_price_negative_whole_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_whole_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_whole_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_whole_pair.fields(buffer, offset, packet, parent)
  end
end

-- High Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_pair = {}

-- Dispatch: High Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_pair.dispatch = {
  ["A"] = box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_whole_pair.dissect,
  ["B"] = box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_ten_pair.dissect,
  ["C"] = box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_hundred_pair.dissect,
  ["D"] = box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_thousand_pair.dissect,
  ["E"] = box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_ten_thousand_pair.dissect,
  ["F"] = box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_hundred_thousand_pair.dissect,
  ["G"] = box_boxoptions_solamulticast_hsvf_v2_1.high_price_negative_million_pair.dissect,
  ["0"] = box_boxoptions_solamulticast_hsvf_v2_1.high_price_numeric_pair.dissect,
  ["1"] = box_boxoptions_solamulticast_hsvf_v2_1.high_price_numeric_pair.dissect,
  ["2"] = box_boxoptions_solamulticast_hsvf_v2_1.high_price_numeric_pair.dissect,
  ["3"] = box_boxoptions_solamulticast_hsvf_v2_1.high_price_numeric_pair.dissect,
  ["4"] = box_boxoptions_solamulticast_hsvf_v2_1.high_price_numeric_pair.dissect,
  ["5"] = box_boxoptions_solamulticast_hsvf_v2_1.high_price_numeric_pair.dissect,
  ["6"] = box_boxoptions_solamulticast_hsvf_v2_1.high_price_numeric_pair.dissect,
  ["7"] = box_boxoptions_solamulticast_hsvf_v2_1.high_price_numeric_pair.dissect,
  ["8"] = box_boxoptions_solamulticast_hsvf_v2_1.high_price_numeric_pair.dissect,
  ["9"] = box_boxoptions_solamulticast_hsvf_v2_1.high_price_numeric_pair.dissect,
}

-- Dissect: High Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_pair.dissect = function(buffer, offset, packet, parent, high_price_fraction_indicator)
  local dissect = box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_pair.dispatch[high_price_fraction_indicator]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Dissect High Price Unknown Fraction Pair
  return box_boxoptions_solamulticast_hsvf_v2_1.high_price_unknown_fraction_pair.dissect(buffer, offset, packet, parent)
end

-- Open Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_unknown_fraction_pair = {}

-- Size: Open Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_unknown_fraction_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_open_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_indicator.size

-- Display: Open Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_unknown_fraction_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_unknown_fraction_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Open Price: N
  index, raw_open_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_open_price.dissect(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: X
  index, open_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_unknown_fraction_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.open_price_unknown_fraction_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.open_price_unknown_fraction_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.open_price_unknown_fraction_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.open_price_unknown_fraction_pair.fields(buffer, offset, packet, parent)
  end
end

-- Open Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_numeric_pair = {}

-- Size: Open Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_numeric_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.open_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_indicator.size

-- Display: Open Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_numeric_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_numeric_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Open Price: N
  index, open_price = box_boxoptions_solamulticast_hsvf_v2_1.scaled_open_price.dissect(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: X
  index, open_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_numeric_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.open_price_numeric_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.open_price_numeric_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.open_price_numeric_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.open_price_numeric_pair.fields(buffer, offset, packet, parent)
  end
end

-- Open Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_million_pair = {}

-- Size: Open Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_million_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_open_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_indicator.size

-- Display: Open Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_million_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_million_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Open Price: N
  index, raw_open_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_open_price.dissect(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: X
  index, open_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_million_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.open_price_negative_million_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_million_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_million_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_million_pair.fields(buffer, offset, packet, parent)
  end
end

-- Open Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_hundred_thousand_pair = {}

-- Size: Open Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_hundred_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_open_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_indicator.size

-- Display: Open Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_hundred_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_hundred_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Open Price: N
  index, raw_open_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_open_price.dissect(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: X
  index, open_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_hundred_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.open_price_negative_hundred_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_hundred_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Open Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_ten_thousand_pair = {}

-- Size: Open Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_ten_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_open_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_indicator.size

-- Display: Open Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_ten_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_ten_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Open Price: N
  index, raw_open_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_open_price.dissect(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: X
  index, open_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_ten_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.open_price_negative_ten_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_ten_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Open Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_thousand_pair = {}

-- Size: Open Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_open_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_indicator.size

-- Display: Open Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Open Price: N
  index, raw_open_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_open_price.dissect(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: X
  index, open_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.open_price_negative_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Open Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_hundred_pair = {}

-- Size: Open Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_hundred_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_open_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_indicator.size

-- Display: Open Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_hundred_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_hundred_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Open Price: N
  index, raw_open_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_open_price.dissect(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: X
  index, open_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_hundred_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.open_price_negative_hundred_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_hundred_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_hundred_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_hundred_pair.fields(buffer, offset, packet, parent)
  end
end

-- Open Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_ten_pair = {}

-- Size: Open Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_ten_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_open_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_indicator.size

-- Display: Open Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_ten_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_ten_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Open Price: N
  index, raw_open_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_open_price.dissect(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: X
  index, open_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_ten_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.open_price_negative_ten_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_ten_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_ten_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_ten_pair.fields(buffer, offset, packet, parent)
  end
end

-- Open Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_whole_pair = {}

-- Size: Open Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_whole_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_open_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_indicator.size

-- Display: Open Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_whole_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_whole_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Open Price: N
  index, raw_open_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_open_price.dissect(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: X
  index, open_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_whole_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.open_price_negative_whole_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_whole_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_whole_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_whole_pair.fields(buffer, offset, packet, parent)
  end
end

-- Open Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_pair = {}

-- Dispatch: Open Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_pair.dispatch = {
  ["A"] = box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_whole_pair.dissect,
  ["B"] = box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_ten_pair.dissect,
  ["C"] = box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_hundred_pair.dissect,
  ["D"] = box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_thousand_pair.dissect,
  ["E"] = box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_ten_thousand_pair.dissect,
  ["F"] = box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_hundred_thousand_pair.dissect,
  ["G"] = box_boxoptions_solamulticast_hsvf_v2_1.open_price_negative_million_pair.dissect,
  ["0"] = box_boxoptions_solamulticast_hsvf_v2_1.open_price_numeric_pair.dissect,
  ["1"] = box_boxoptions_solamulticast_hsvf_v2_1.open_price_numeric_pair.dissect,
  ["2"] = box_boxoptions_solamulticast_hsvf_v2_1.open_price_numeric_pair.dissect,
  ["3"] = box_boxoptions_solamulticast_hsvf_v2_1.open_price_numeric_pair.dissect,
  ["4"] = box_boxoptions_solamulticast_hsvf_v2_1.open_price_numeric_pair.dissect,
  ["5"] = box_boxoptions_solamulticast_hsvf_v2_1.open_price_numeric_pair.dissect,
  ["6"] = box_boxoptions_solamulticast_hsvf_v2_1.open_price_numeric_pair.dissect,
  ["7"] = box_boxoptions_solamulticast_hsvf_v2_1.open_price_numeric_pair.dissect,
  ["8"] = box_boxoptions_solamulticast_hsvf_v2_1.open_price_numeric_pair.dissect,
  ["9"] = box_boxoptions_solamulticast_hsvf_v2_1.open_price_numeric_pair.dissect,
}

-- Dissect: Open Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_pair.dissect = function(buffer, offset, packet, parent, open_price_fraction_indicator)
  local dissect = box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_pair.dispatch[open_price_fraction_indicator]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Dissect Open Price Unknown Fraction Pair
  return box_boxoptions_solamulticast_hsvf_v2_1.open_price_unknown_fraction_pair.dissect(buffer, offset, packet, parent)
end

-- Last Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_unknown_fraction_pair = {}

-- Size: Last Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_unknown_fraction_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_last_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_indicator.size

-- Display: Last Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_unknown_fraction_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_unknown_fraction_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Last Price: N
  index, raw_last_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_last_price.dissect(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_unknown_fraction_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.last_price_unknown_fraction_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.last_price_unknown_fraction_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.last_price_unknown_fraction_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.last_price_unknown_fraction_pair.fields(buffer, offset, packet, parent)
  end
end

-- Last Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_numeric_pair = {}

-- Size: Last Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_numeric_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.last_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_indicator.size

-- Display: Last Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_numeric_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_numeric_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Price: N
  index, last_price = box_boxoptions_solamulticast_hsvf_v2_1.scaled_last_price.dissect(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_numeric_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.last_price_numeric_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.last_price_numeric_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.last_price_numeric_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.last_price_numeric_pair.fields(buffer, offset, packet, parent)
  end
end

-- Last Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_million_pair = {}

-- Size: Last Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_million_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_last_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_indicator.size

-- Display: Last Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_million_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_million_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Last Price: N
  index, raw_last_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_last_price.dissect(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_million_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.last_price_negative_million_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_million_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_million_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_million_pair.fields(buffer, offset, packet, parent)
  end
end

-- Last Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_hundred_thousand_pair = {}

-- Size: Last Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_hundred_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_last_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_indicator.size

-- Display: Last Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_hundred_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_hundred_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Last Price: N
  index, raw_last_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_last_price.dissect(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_hundred_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.last_price_negative_hundred_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_hundred_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Last Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_ten_thousand_pair = {}

-- Size: Last Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_ten_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_last_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_indicator.size

-- Display: Last Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_ten_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_ten_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Last Price: N
  index, raw_last_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_last_price.dissect(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_ten_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.last_price_negative_ten_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_ten_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Last Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_thousand_pair = {}

-- Size: Last Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_last_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_indicator.size

-- Display: Last Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Last Price: N
  index, raw_last_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_last_price.dissect(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.last_price_negative_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Last Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_hundred_pair = {}

-- Size: Last Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_hundred_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_last_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_indicator.size

-- Display: Last Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_hundred_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_hundred_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Last Price: N
  index, raw_last_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_last_price.dissect(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_hundred_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.last_price_negative_hundred_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_hundred_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_hundred_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_hundred_pair.fields(buffer, offset, packet, parent)
  end
end

-- Last Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_ten_pair = {}

-- Size: Last Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_ten_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_last_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_indicator.size

-- Display: Last Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_ten_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_ten_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Last Price: N
  index, raw_last_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_last_price.dissect(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_ten_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.last_price_negative_ten_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_ten_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_ten_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_ten_pair.fields(buffer, offset, packet, parent)
  end
end

-- Last Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_whole_pair = {}

-- Size: Last Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_whole_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_last_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_indicator.size

-- Display: Last Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_whole_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_whole_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Last Price: N
  index, raw_last_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_last_price.dissect(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_whole_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.last_price_negative_whole_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_whole_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_whole_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_whole_pair.fields(buffer, offset, packet, parent)
  end
end

-- Last Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_pair = {}

-- Dispatch: Last Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_pair.dispatch = {
  ["A"] = box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_whole_pair.dissect,
  ["B"] = box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_ten_pair.dissect,
  ["C"] = box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_hundred_pair.dissect,
  ["D"] = box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_thousand_pair.dissect,
  ["E"] = box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_ten_thousand_pair.dissect,
  ["F"] = box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_hundred_thousand_pair.dissect,
  ["G"] = box_boxoptions_solamulticast_hsvf_v2_1.last_price_negative_million_pair.dissect,
  ["0"] = box_boxoptions_solamulticast_hsvf_v2_1.last_price_numeric_pair.dissect,
  ["1"] = box_boxoptions_solamulticast_hsvf_v2_1.last_price_numeric_pair.dissect,
  ["2"] = box_boxoptions_solamulticast_hsvf_v2_1.last_price_numeric_pair.dissect,
  ["3"] = box_boxoptions_solamulticast_hsvf_v2_1.last_price_numeric_pair.dissect,
  ["4"] = box_boxoptions_solamulticast_hsvf_v2_1.last_price_numeric_pair.dissect,
  ["5"] = box_boxoptions_solamulticast_hsvf_v2_1.last_price_numeric_pair.dissect,
  ["6"] = box_boxoptions_solamulticast_hsvf_v2_1.last_price_numeric_pair.dissect,
  ["7"] = box_boxoptions_solamulticast_hsvf_v2_1.last_price_numeric_pair.dissect,
  ["8"] = box_boxoptions_solamulticast_hsvf_v2_1.last_price_numeric_pair.dissect,
  ["9"] = box_boxoptions_solamulticast_hsvf_v2_1.last_price_numeric_pair.dissect,
}

-- Dissect: Last Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_pair.dissect = function(buffer, offset, packet, parent, last_price_fraction_indicator)
  local dissect = box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_pair.dispatch[last_price_fraction_indicator]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Dissect Last Price Unknown Fraction Pair
  return box_boxoptions_solamulticast_hsvf_v2_1.last_price_unknown_fraction_pair.dissect(buffer, offset, packet, parent)
end

-- Ask Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_unknown_fraction_pair = {}

-- Size: Ask Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_unknown_fraction_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.size

-- Display: Ask Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_unknown_fraction_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_unknown_fraction_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Ask Price: N
  index, raw_ask_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_unknown_fraction_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_unknown_fraction_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_unknown_fraction_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_unknown_fraction_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_unknown_fraction_pair.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_numeric_pair = {}

-- Size: Ask Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_numeric_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.ask_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.size

-- Display: Ask Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_numeric_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_numeric_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ask Price: N
  index, ask_price = box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_numeric_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_numeric_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_numeric_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_numeric_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_numeric_pair.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_million_pair = {}

-- Size: Ask Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_million_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.size

-- Display: Ask Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_million_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_million_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Ask Price: N
  index, raw_ask_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_million_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_negative_million_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_million_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_million_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_million_pair.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_hundred_thousand_pair = {}

-- Size: Ask Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_hundred_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.size

-- Display: Ask Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_hundred_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_hundred_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Ask Price: N
  index, raw_ask_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_hundred_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_negative_hundred_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_hundred_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_ten_thousand_pair = {}

-- Size: Ask Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_ten_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.size

-- Display: Ask Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_ten_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_ten_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Ask Price: N
  index, raw_ask_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_ten_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_negative_ten_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_ten_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_thousand_pair = {}

-- Size: Ask Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.size

-- Display: Ask Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Ask Price: N
  index, raw_ask_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_negative_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_hundred_pair = {}

-- Size: Ask Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_hundred_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.size

-- Display: Ask Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_hundred_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_hundred_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Ask Price: N
  index, raw_ask_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_hundred_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_negative_hundred_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_hundred_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_hundred_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_hundred_pair.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_ten_pair = {}

-- Size: Ask Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_ten_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.size

-- Display: Ask Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_ten_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_ten_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Ask Price: N
  index, raw_ask_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_ten_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_negative_ten_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_ten_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_ten_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_ten_pair.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_whole_pair = {}

-- Size: Ask Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_whole_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.size

-- Display: Ask Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_whole_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_whole_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Ask Price: N
  index, raw_ask_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_whole_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_negative_whole_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_whole_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_whole_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_whole_pair.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_pair = {}

-- Dispatch: Ask Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_pair.dispatch = {
  ["A"] = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_whole_pair.dissect,
  ["B"] = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_ten_pair.dissect,
  ["C"] = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_hundred_pair.dissect,
  ["D"] = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_thousand_pair.dissect,
  ["E"] = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_ten_thousand_pair.dissect,
  ["F"] = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_hundred_thousand_pair.dissect,
  ["G"] = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_negative_million_pair.dissect,
  ["0"] = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_numeric_pair.dissect,
  ["1"] = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_numeric_pair.dissect,
  ["2"] = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_numeric_pair.dissect,
  ["3"] = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_numeric_pair.dissect,
  ["4"] = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_numeric_pair.dissect,
  ["5"] = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_numeric_pair.dissect,
  ["6"] = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_numeric_pair.dissect,
  ["7"] = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_numeric_pair.dissect,
  ["8"] = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_numeric_pair.dissect,
  ["9"] = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_numeric_pair.dissect,
}

-- Dissect: Ask Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_pair.dissect = function(buffer, offset, packet, parent, ask_price_fraction_indicator)
  local dissect = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_pair.dispatch[ask_price_fraction_indicator]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Dissect Ask Price Unknown Fraction Pair
  return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_unknown_fraction_pair.dissect(buffer, offset, packet, parent)
end

-- Bid Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_unknown_fraction_pair = {}

-- Size: Bid Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_unknown_fraction_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.size

-- Display: Bid Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_unknown_fraction_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_unknown_fraction_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Bid Price: N
  index, raw_bid_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_unknown_fraction_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_unknown_fraction_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_unknown_fraction_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_unknown_fraction_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_unknown_fraction_pair.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_numeric_pair = {}

-- Size: Bid Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_numeric_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.bid_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.size

-- Display: Bid Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_numeric_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_numeric_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Price: N
  index, bid_price = box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_numeric_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_numeric_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_numeric_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_numeric_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_numeric_pair.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_million_pair = {}

-- Size: Bid Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_million_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.size

-- Display: Bid Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_million_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_million_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Bid Price: N
  index, raw_bid_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_million_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_negative_million_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_million_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_million_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_million_pair.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_hundred_thousand_pair = {}

-- Size: Bid Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_hundred_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.size

-- Display: Bid Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_hundred_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_hundred_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Bid Price: N
  index, raw_bid_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_hundred_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_negative_hundred_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_hundred_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_ten_thousand_pair = {}

-- Size: Bid Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_ten_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.size

-- Display: Bid Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_ten_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_ten_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Bid Price: N
  index, raw_bid_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_ten_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_negative_ten_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_ten_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_thousand_pair = {}

-- Size: Bid Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.size

-- Display: Bid Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Bid Price: N
  index, raw_bid_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_negative_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_hundred_pair = {}

-- Size: Bid Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_hundred_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.size

-- Display: Bid Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_hundred_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_hundred_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Bid Price: N
  index, raw_bid_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_hundred_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_negative_hundred_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_hundred_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_hundred_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_hundred_pair.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_ten_pair = {}

-- Size: Bid Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_ten_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.size

-- Display: Bid Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_ten_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_ten_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Bid Price: N
  index, raw_bid_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_ten_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_negative_ten_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_ten_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_ten_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_ten_pair.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_whole_pair = {}

-- Size: Bid Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_whole_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.size

-- Display: Bid Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_whole_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_whole_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Bid Price: N
  index, raw_bid_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_whole_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_negative_whole_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_whole_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_whole_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_whole_pair.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_pair = {}

-- Dispatch: Bid Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_pair.dispatch = {
  ["A"] = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_whole_pair.dissect,
  ["B"] = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_ten_pair.dissect,
  ["C"] = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_hundred_pair.dissect,
  ["D"] = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_thousand_pair.dissect,
  ["E"] = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_ten_thousand_pair.dissect,
  ["F"] = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_hundred_thousand_pair.dissect,
  ["G"] = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_negative_million_pair.dissect,
  ["0"] = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_numeric_pair.dissect,
  ["1"] = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_numeric_pair.dissect,
  ["2"] = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_numeric_pair.dissect,
  ["3"] = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_numeric_pair.dissect,
  ["4"] = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_numeric_pair.dissect,
  ["5"] = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_numeric_pair.dissect,
  ["6"] = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_numeric_pair.dissect,
  ["7"] = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_numeric_pair.dissect,
  ["8"] = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_numeric_pair.dissect,
  ["9"] = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_numeric_pair.dissect,
}

-- Dissect: Bid Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_pair.dissect = function(buffer, offset, packet, parent, bid_price_fraction_indicator)
  local dissect = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_pair.dispatch[bid_price_fraction_indicator]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Dissect Bid Price Unknown Fraction Pair
  return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_unknown_fraction_pair.dissect(buffer, offset, packet, parent)
end

-- Complex Order Summary Message
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_summary_message = {}

-- Calculate size of: Complex Order Summary Message
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_summary_message.size = function(buffer, offset)
  local index = 0

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_symbol.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.bid_price_sign.size

  -- Calculate runtime size of Bid Price Fraction Pair field
  local bid_price_fraction_pair_offset = offset + index
  local bid_price_fraction_pair_type = buffer(bid_price_fraction_pair_offset + 6, 1):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_pair.size(buffer, bid_price_fraction_pair_offset, bid_price_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.bid_size.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.ask_price_sign.size

  -- Calculate runtime size of Ask Price Fraction Pair field
  local ask_price_fraction_pair_offset = offset + index
  local ask_price_fraction_pair_type = buffer(ask_price_fraction_pair_offset + 6, 1):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_pair.size(buffer, ask_price_fraction_pair_offset, ask_price_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.ask_size.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.last_price_sign.size

  -- Calculate runtime size of Last Price Fraction Pair field
  local last_price_fraction_pair_offset = offset + index
  local last_price_fraction_pair_type = buffer(last_price_fraction_pair_offset + 6, 1):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_pair.size(buffer, last_price_fraction_pair_offset, last_price_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.open_price_sign.size

  -- Calculate runtime size of Open Price Fraction Pair field
  local open_price_fraction_pair_offset = offset + index
  local open_price_fraction_pair_type = buffer(open_price_fraction_pair_offset + 6, 1):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_pair.size(buffer, open_price_fraction_pair_offset, open_price_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.high_price_sign.size

  -- Calculate runtime size of High Price Fraction Pair field
  local high_price_fraction_pair_offset = offset + index
  local high_price_fraction_pair_type = buffer(high_price_fraction_pair_offset + 6, 1):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_pair.size(buffer, high_price_fraction_pair_offset, high_price_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.low_price_sign.size

  -- Calculate runtime size of Low Price Fraction Pair field
  local low_price_fraction_pair_offset = offset + index
  local low_price_fraction_pair_type = buffer(low_price_fraction_pair_offset + 6, 1):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_pair.size(buffer, low_price_fraction_pair_offset, low_price_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.net_change_sign.size

  -- Calculate runtime size of Net Change Fraction Pair field
  local net_change_fraction_pair_offset = offset + index
  local net_change_fraction_pair_type = buffer(net_change_fraction_pair_offset + 6, 1):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_pair.size(buffer, net_change_fraction_pair_offset, net_change_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.volume.size

  return index
end

-- Display: Complex Order Summary Message
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Summary Message
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.dissect(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: X
  index, complex_order_instrument_symbol = box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_symbol.dissect(buffer, index, packet, parent)

  -- Bid Price Sign: X
  index, bid_price_sign = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_sign.dissect(buffer, index, packet, parent)

  -- Dependency element: Bid Price Fraction Indicator
  local bid_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Bid Price Fraction Pair: Runtime Type with 9 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_pair.dissect(buffer, index, packet, parent, bid_price_fraction_indicator)

  -- Bid Size: X
  index, bid_size = box_boxoptions_solamulticast_hsvf_v2_1.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price Sign: X
  index, ask_price_sign = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_sign.dissect(buffer, index, packet, parent)

  -- Dependency element: Ask Price Fraction Indicator
  local ask_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Ask Price Fraction Pair: Runtime Type with 9 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_pair.dissect(buffer, index, packet, parent, ask_price_fraction_indicator)

  -- Ask Size: X
  index, ask_size = box_boxoptions_solamulticast_hsvf_v2_1.ask_size.dissect(buffer, index, packet, parent)

  -- Last Price Sign: X
  index, last_price_sign = box_boxoptions_solamulticast_hsvf_v2_1.last_price_sign.dissect(buffer, index, packet, parent)

  -- Dependency element: Last Price Fraction Indicator
  local last_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Last Price Fraction Pair: Runtime Type with 9 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_pair.dissect(buffer, index, packet, parent, last_price_fraction_indicator)

  -- Open Price Sign: X
  index, open_price_sign = box_boxoptions_solamulticast_hsvf_v2_1.open_price_sign.dissect(buffer, index, packet, parent)

  -- Dependency element: Open Price Fraction Indicator
  local open_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Open Price Fraction Pair: Runtime Type with 9 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_pair.dissect(buffer, index, packet, parent, open_price_fraction_indicator)

  -- High Price Sign: X
  index, high_price_sign = box_boxoptions_solamulticast_hsvf_v2_1.high_price_sign.dissect(buffer, index, packet, parent)

  -- Dependency element: High Price Fraction Indicator
  local high_price_fraction_indicator = buffer(index + 6, 1):string()

  -- High Price Fraction Pair: Runtime Type with 9 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_pair.dissect(buffer, index, packet, parent, high_price_fraction_indicator)

  -- Low Price Sign: X
  index, low_price_sign = box_boxoptions_solamulticast_hsvf_v2_1.low_price_sign.dissect(buffer, index, packet, parent)

  -- Dependency element: Low Price Fraction Indicator
  local low_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Low Price Fraction Pair: Runtime Type with 9 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_pair.dissect(buffer, index, packet, parent, low_price_fraction_indicator)

  -- Net Change Sign: X
  index, net_change_sign = box_boxoptions_solamulticast_hsvf_v2_1.net_change_sign.dissect(buffer, index, packet, parent)

  -- Dependency element: Net Change Fraction Indicator
  local net_change_fraction_indicator = buffer(index + 6, 1):string()

  -- Net Change Fraction Pair: Runtime Type with 9 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_pair.dissect(buffer, index, packet, parent, net_change_fraction_indicator)

  -- Volume: N
  index, volume = box_boxoptions_solamulticast_hsvf_v2_1.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Summary Message
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.complex_order_summary_message, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.complex_order_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.complex_order_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.complex_order_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Reference Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_unknown_fraction_pair = {}

-- Size: Reference Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_unknown_fraction_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_reference_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_indicator.size

-- Display: Reference Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_unknown_fraction_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reference Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_unknown_fraction_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Reference Price: N
  index, raw_reference_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_reference_price.dissect(buffer, index, packet, parent)

  -- Reference Price Fraction Indicator: X
  index, reference_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reference Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_unknown_fraction_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.reference_price_unknown_fraction_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_unknown_fraction_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_unknown_fraction_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.reference_price_unknown_fraction_pair.fields(buffer, offset, packet, parent)
  end
end

-- Reference Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_numeric_pair = {}

-- Size: Reference Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_numeric_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.reference_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_indicator.size

-- Display: Reference Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_numeric_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reference Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_numeric_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reference Price: N
  index, reference_price = box_boxoptions_solamulticast_hsvf_v2_1.scaled_reference_price.dissect(buffer, index, packet, parent)

  -- Reference Price Fraction Indicator: X
  index, reference_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reference Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_numeric_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.reference_price_numeric_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_numeric_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_numeric_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.reference_price_numeric_pair.fields(buffer, offset, packet, parent)
  end
end

-- Reference Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_million_pair = {}

-- Size: Reference Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_million_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_reference_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_indicator.size

-- Display: Reference Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_million_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reference Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_million_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Reference Price: N
  index, raw_reference_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_reference_price.dissect(buffer, index, packet, parent)

  -- Reference Price Fraction Indicator: X
  index, reference_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reference Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_million_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.reference_price_negative_million_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_million_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_million_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_million_pair.fields(buffer, offset, packet, parent)
  end
end

-- Reference Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_hundred_thousand_pair = {}

-- Size: Reference Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_hundred_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_reference_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_indicator.size

-- Display: Reference Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_hundred_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reference Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_hundred_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Reference Price: N
  index, raw_reference_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_reference_price.dissect(buffer, index, packet, parent)

  -- Reference Price Fraction Indicator: X
  index, reference_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reference Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_hundred_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.reference_price_negative_hundred_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_hundred_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Reference Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_ten_thousand_pair = {}

-- Size: Reference Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_ten_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_reference_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_indicator.size

-- Display: Reference Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_ten_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reference Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_ten_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Reference Price: N
  index, raw_reference_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_reference_price.dissect(buffer, index, packet, parent)

  -- Reference Price Fraction Indicator: X
  index, reference_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reference Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_ten_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.reference_price_negative_ten_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_ten_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Reference Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_thousand_pair = {}

-- Size: Reference Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_reference_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_indicator.size

-- Display: Reference Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reference Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Reference Price: N
  index, raw_reference_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_reference_price.dissect(buffer, index, packet, parent)

  -- Reference Price Fraction Indicator: X
  index, reference_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reference Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.reference_price_negative_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Reference Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_hundred_pair = {}

-- Size: Reference Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_hundred_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_reference_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_indicator.size

-- Display: Reference Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_hundred_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reference Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_hundred_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Reference Price: N
  index, raw_reference_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_reference_price.dissect(buffer, index, packet, parent)

  -- Reference Price Fraction Indicator: X
  index, reference_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reference Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_hundred_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.reference_price_negative_hundred_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_hundred_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_hundred_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_hundred_pair.fields(buffer, offset, packet, parent)
  end
end

-- Reference Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_ten_pair = {}

-- Size: Reference Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_ten_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_reference_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_indicator.size

-- Display: Reference Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_ten_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reference Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_ten_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Reference Price: N
  index, raw_reference_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_reference_price.dissect(buffer, index, packet, parent)

  -- Reference Price Fraction Indicator: X
  index, reference_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reference Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_ten_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.reference_price_negative_ten_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_ten_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_ten_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_ten_pair.fields(buffer, offset, packet, parent)
  end
end

-- Reference Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_whole_pair = {}

-- Size: Reference Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_whole_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_reference_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_indicator.size

-- Display: Reference Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_whole_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reference Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_whole_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Reference Price: N
  index, raw_reference_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_reference_price.dissect(buffer, index, packet, parent)

  -- Reference Price Fraction Indicator: X
  index, reference_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reference Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_whole_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.reference_price_negative_whole_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_whole_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_whole_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_whole_pair.fields(buffer, offset, packet, parent)
  end
end

-- Reference Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_pair = {}

-- Dispatch: Reference Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_pair.dispatch = {
  ["A"] = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_whole_pair.dissect,
  ["B"] = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_ten_pair.dissect,
  ["C"] = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_hundred_pair.dissect,
  ["D"] = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_thousand_pair.dissect,
  ["E"] = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_ten_thousand_pair.dissect,
  ["F"] = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_hundred_thousand_pair.dissect,
  ["G"] = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_negative_million_pair.dissect,
  ["0"] = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_numeric_pair.dissect,
  ["1"] = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_numeric_pair.dissect,
  ["2"] = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_numeric_pair.dissect,
  ["3"] = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_numeric_pair.dissect,
  ["4"] = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_numeric_pair.dissect,
  ["5"] = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_numeric_pair.dissect,
  ["6"] = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_numeric_pair.dissect,
  ["7"] = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_numeric_pair.dissect,
  ["8"] = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_numeric_pair.dissect,
  ["9"] = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_numeric_pair.dissect,
}

-- Dissect: Reference Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_pair.dissect = function(buffer, offset, packet, parent, reference_price_fraction_indicator)
  local dissect = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_pair.dispatch[reference_price_fraction_indicator]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Dissect Reference Price Unknown Fraction Pair
  return box_boxoptions_solamulticast_hsvf_v2_1.reference_price_unknown_fraction_pair.dissect(buffer, offset, packet, parent)
end

-- Option Marker
box_boxoptions_solamulticast_hsvf_v2_1.option_marker = {}

-- Size: Option Marker
box_boxoptions_solamulticast_hsvf_v2_1.option_marker.size =
  box_boxoptions_solamulticast_hsvf_v2_1.type_of_market.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.type_of_options.size

-- Display: Option Marker
box_boxoptions_solamulticast_hsvf_v2_1.option_marker.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Marker
box_boxoptions_solamulticast_hsvf_v2_1.option_marker.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Type Of Market: A
  index, type_of_market = box_boxoptions_solamulticast_hsvf_v2_1.type_of_market.dissect(buffer, index, packet, parent)

  -- Type Of Options: A
  index, type_of_options = box_boxoptions_solamulticast_hsvf_v2_1.type_of_options.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Marker
box_boxoptions_solamulticast_hsvf_v2_1.option_marker.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.option_marker, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.option_marker.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.option_marker.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.option_marker.fields(buffer, offset, packet, parent)
  end
end

-- Option Summary Message
box_boxoptions_solamulticast_hsvf_v2_1.option_summary_message = {}

-- Calculate size of: Option Summary Message
box_boxoptions_solamulticast_hsvf_v2_1.option_summary_message.size = function(buffer, offset)
  local index = 0

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.instrument_description.size(buffer, offset + index)

  -- Calculate runtime size of Bid Price Fraction Pair field
  local bid_price_fraction_pair_offset = offset + index
  local bid_price_fraction_pair_type = buffer(bid_price_fraction_pair_offset + 6, 1):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_pair.size(buffer, bid_price_fraction_pair_offset, bid_price_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.bid_size.size

  -- Calculate runtime size of Ask Price Fraction Pair field
  local ask_price_fraction_pair_offset = offset + index
  local ask_price_fraction_pair_type = buffer(ask_price_fraction_pair_offset + 6, 1):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_pair.size(buffer, ask_price_fraction_pair_offset, ask_price_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.ask_size.size

  -- Calculate runtime size of Last Price Fraction Pair field
  local last_price_fraction_pair_offset = offset + index
  local last_price_fraction_pair_type = buffer(last_price_fraction_pair_offset + 6, 1):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_pair.size(buffer, last_price_fraction_pair_offset, last_price_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.filler_7.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.tick.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.volume.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.net_change_sign.size

  -- Calculate runtime size of Net Change Fraction Pair field
  local net_change_fraction_pair_offset = offset + index
  local net_change_fraction_pair_type = buffer(net_change_fraction_pair_offset + 6, 1):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_pair.size(buffer, net_change_fraction_pair_offset, net_change_fraction_pair_type)

  -- Calculate runtime size of Open Price Fraction Pair field
  local open_price_fraction_pair_offset = offset + index
  local open_price_fraction_pair_type = buffer(open_price_fraction_pair_offset + 6, 1):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_pair.size(buffer, open_price_fraction_pair_offset, open_price_fraction_pair_type)

  -- Calculate runtime size of High Price Fraction Pair field
  local high_price_fraction_pair_offset = offset + index
  local high_price_fraction_pair_type = buffer(high_price_fraction_pair_offset + 6, 1):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_pair.size(buffer, high_price_fraction_pair_offset, high_price_fraction_pair_type)

  -- Calculate runtime size of Low Price Fraction Pair field
  local low_price_fraction_pair_offset = offset + index
  local low_price_fraction_pair_type = buffer(low_price_fraction_pair_offset + 6, 1):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_pair.size(buffer, low_price_fraction_pair_offset, low_price_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.option_marker.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.underlying_symbol.size

  -- Calculate runtime size of Reference Price Fraction Pair field
  local reference_price_fraction_pair_offset = offset + index
  local reference_price_fraction_pair_type = buffer(reference_price_fraction_pair_offset + 6, 1):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_pair.size(buffer, reference_price_fraction_pair_offset, reference_price_fraction_pair_type)

  return index
end

-- Display: Option Summary Message
box_boxoptions_solamulticast_hsvf_v2_1.option_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Summary Message
box_boxoptions_solamulticast_hsvf_v2_1.option_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.dissect(buffer, index, packet, parent)

  -- Instrument Description: Struct of 6 fields
  index, instrument_description = box_boxoptions_solamulticast_hsvf_v2_1.instrument_description.dissect(buffer, index, packet, parent)

  -- Dependency element: Bid Price Fraction Indicator
  local bid_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Bid Price Fraction Pair: Runtime Type with 9 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_pair.dissect(buffer, index, packet, parent, bid_price_fraction_indicator)

  -- Bid Size: X
  index, bid_size = box_boxoptions_solamulticast_hsvf_v2_1.bid_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Ask Price Fraction Indicator
  local ask_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Ask Price Fraction Pair: Runtime Type with 9 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_pair.dissect(buffer, index, packet, parent, ask_price_fraction_indicator)

  -- Ask Size: X
  index, ask_size = box_boxoptions_solamulticast_hsvf_v2_1.ask_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Last Price Fraction Indicator
  local last_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Last Price Fraction Pair: Runtime Type with 9 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.last_price_fraction_pair.dissect(buffer, index, packet, parent, last_price_fraction_indicator)

  -- Filler 7: N
  index, filler_7 = box_boxoptions_solamulticast_hsvf_v2_1.filler_7.dissect(buffer, index, packet, parent)

  -- Tick: X
  index, tick = box_boxoptions_solamulticast_hsvf_v2_1.tick.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = box_boxoptions_solamulticast_hsvf_v2_1.volume.dissect(buffer, index, packet, parent)

  -- Net Change Sign: X
  index, net_change_sign = box_boxoptions_solamulticast_hsvf_v2_1.net_change_sign.dissect(buffer, index, packet, parent)

  -- Dependency element: Net Change Fraction Indicator
  local net_change_fraction_indicator = buffer(index + 6, 1):string()

  -- Net Change Fraction Pair: Runtime Type with 9 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_pair.dissect(buffer, index, packet, parent, net_change_fraction_indicator)

  -- Dependency element: Open Price Fraction Indicator
  local open_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Open Price Fraction Pair: Runtime Type with 9 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.open_price_fraction_pair.dissect(buffer, index, packet, parent, open_price_fraction_indicator)

  -- Dependency element: High Price Fraction Indicator
  local high_price_fraction_indicator = buffer(index + 6, 1):string()

  -- High Price Fraction Pair: Runtime Type with 9 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.high_price_fraction_pair.dissect(buffer, index, packet, parent, high_price_fraction_indicator)

  -- Dependency element: Low Price Fraction Indicator
  local low_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Low Price Fraction Pair: Runtime Type with 9 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.low_price_fraction_pair.dissect(buffer, index, packet, parent, low_price_fraction_indicator)

  -- Option Marker: Struct of 2 fields
  index, option_marker = box_boxoptions_solamulticast_hsvf_v2_1.option_marker.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: X
  index, underlying_symbol = box_boxoptions_solamulticast_hsvf_v2_1.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Dependency element: Reference Price Fraction Indicator
  local reference_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Reference Price Fraction Pair: Runtime Type with 9 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.reference_price_fraction_pair.dissect(buffer, index, packet, parent, reference_price_fraction_indicator)

  return index
end

-- Dissect: Option Summary Message
box_boxoptions_solamulticast_hsvf_v2_1.option_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.option_summary_message, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.option_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.option_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.option_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Leg
box_boxoptions_solamulticast_hsvf_v2_1.instrument_leg = {}

-- Size: Instrument Leg
box_boxoptions_solamulticast_hsvf_v2_1.instrument_leg.size =
  box_boxoptions_solamulticast_hsvf_v2_1.leg_ratio_sign.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.leg_ratio.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.leg_symbol.size

-- Display: Instrument Leg
box_boxoptions_solamulticast_hsvf_v2_1.instrument_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Leg
box_boxoptions_solamulticast_hsvf_v2_1.instrument_leg.fields = function(buffer, offset, packet, parent, instrument_leg_index)
  local index = offset

  -- Implicit Instrument Leg Index
  if instrument_leg_index ~= nil and show.indexes then
    local iteration = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.instrument_leg_index, instrument_leg_index)
    iteration:set_generated()
  end

  -- Leg Ratio Sign: X
  index, leg_ratio_sign = box_boxoptions_solamulticast_hsvf_v2_1.leg_ratio_sign.dissect(buffer, index, packet, parent)

  -- Leg Ratio: N
  index, leg_ratio = box_boxoptions_solamulticast_hsvf_v2_1.leg_ratio.dissect(buffer, index, packet, parent)

  -- Leg Symbol: X
  index, leg_symbol = box_boxoptions_solamulticast_hsvf_v2_1.leg_symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Leg
box_boxoptions_solamulticast_hsvf_v2_1.instrument_leg.dissect = function(buffer, offset, packet, parent, instrument_leg_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.instrument_leg, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.instrument_leg.fields(buffer, offset, packet, parent, instrument_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.instrument_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.instrument_leg.fields(buffer, offset, packet, parent, instrument_leg_index)
  end
end

-- Tick Increment Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_unknown_fraction_pair = {}

-- Size: Tick Increment Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_unknown_fraction_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_tick_increment.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_indicator.size

-- Display: Tick Increment Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_unknown_fraction_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Increment Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_unknown_fraction_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Tick Increment: X
  index, raw_tick_increment = box_boxoptions_solamulticast_hsvf_v2_1.raw_tick_increment.dissect(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: N
  index, tick_increment_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Increment Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_unknown_fraction_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.tick_increment_unknown_fraction_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_unknown_fraction_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_unknown_fraction_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_unknown_fraction_pair.fields(buffer, offset, packet, parent)
  end
end

-- Tick Increment Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_numeric_pair = {}

-- Size: Tick Increment Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_numeric_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.tick_increment.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_indicator.size

-- Display: Tick Increment Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_numeric_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Increment Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_numeric_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tick Increment: X
  index, tick_increment = box_boxoptions_solamulticast_hsvf_v2_1.scaled_tick_increment.dissect(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: N
  index, tick_increment_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Increment Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_numeric_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.tick_increment_numeric_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_numeric_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_numeric_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_numeric_pair.fields(buffer, offset, packet, parent)
  end
end

-- Tick Increment Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_million_pair = {}

-- Size: Tick Increment Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_million_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.numeric_tick_increment.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_indicator.size

-- Display: Tick Increment Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_million_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Increment Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_million_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Numeric Tick Increment: X
  index, numeric_tick_increment = box_boxoptions_solamulticast_hsvf_v2_1.numeric_tick_increment.dissect(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: N
  index, tick_increment_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Increment Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_million_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.tick_increment_negative_million_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_million_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_million_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_million_pair.fields(buffer, offset, packet, parent)
  end
end

-- Tick Increment Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_hundred_thousand_pair = {}

-- Size: Tick Increment Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_hundred_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.numeric_tick_increment.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_indicator.size

-- Display: Tick Increment Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_hundred_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Increment Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_hundred_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Numeric Tick Increment: X
  index, numeric_tick_increment = box_boxoptions_solamulticast_hsvf_v2_1.numeric_tick_increment.dissect(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: N
  index, tick_increment_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Increment Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_hundred_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.tick_increment_negative_hundred_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_hundred_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Tick Increment Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_ten_thousand_pair = {}

-- Size: Tick Increment Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_ten_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.numeric_tick_increment.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_indicator.size

-- Display: Tick Increment Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_ten_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Increment Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_ten_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Numeric Tick Increment: X
  index, numeric_tick_increment = box_boxoptions_solamulticast_hsvf_v2_1.numeric_tick_increment.dissect(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: N
  index, tick_increment_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Increment Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_ten_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.tick_increment_negative_ten_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_ten_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Tick Increment Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_thousand_pair = {}

-- Size: Tick Increment Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.numeric_tick_increment.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_indicator.size

-- Display: Tick Increment Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Increment Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Numeric Tick Increment: X
  index, numeric_tick_increment = box_boxoptions_solamulticast_hsvf_v2_1.numeric_tick_increment.dissect(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: N
  index, tick_increment_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Increment Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.tick_increment_negative_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Tick Increment Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_hundred_pair = {}

-- Size: Tick Increment Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_hundred_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.numeric_tick_increment.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_indicator.size

-- Display: Tick Increment Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_hundred_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Increment Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_hundred_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Numeric Tick Increment: X
  index, numeric_tick_increment = box_boxoptions_solamulticast_hsvf_v2_1.numeric_tick_increment.dissect(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: N
  index, tick_increment_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Increment Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_hundred_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.tick_increment_negative_hundred_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_hundred_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_hundred_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_hundred_pair.fields(buffer, offset, packet, parent)
  end
end

-- Tick Increment Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_ten_pair = {}

-- Size: Tick Increment Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_ten_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.numeric_tick_increment.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_indicator.size

-- Display: Tick Increment Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_ten_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Increment Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_ten_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Numeric Tick Increment: X
  index, numeric_tick_increment = box_boxoptions_solamulticast_hsvf_v2_1.numeric_tick_increment.dissect(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: N
  index, tick_increment_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Increment Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_ten_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.tick_increment_negative_ten_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_ten_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_ten_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_ten_pair.fields(buffer, offset, packet, parent)
  end
end

-- Tick Increment Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_whole_pair = {}

-- Size: Tick Increment Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_whole_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.numeric_tick_increment.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_indicator.size

-- Display: Tick Increment Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_whole_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Increment Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_whole_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Numeric Tick Increment: X
  index, numeric_tick_increment = box_boxoptions_solamulticast_hsvf_v2_1.numeric_tick_increment.dissect(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: N
  index, tick_increment_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Increment Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_whole_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.tick_increment_negative_whole_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_whole_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_whole_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_whole_pair.fields(buffer, offset, packet, parent)
  end
end

-- Tick Increment Tick Table Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_tick_table_pair = {}

-- Size: Tick Increment Tick Table Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_tick_table_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_tick_increment.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_indicator.size

-- Display: Tick Increment Tick Table Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_tick_table_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Increment Tick Table Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_tick_table_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Tick Increment: X
  index, raw_tick_increment = box_boxoptions_solamulticast_hsvf_v2_1.raw_tick_increment.dissect(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: N
  index, tick_increment_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Increment Tick Table Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_tick_table_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.tick_increment_tick_table_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_tick_table_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_tick_table_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_tick_table_pair.fields(buffer, offset, packet, parent)
  end
end

-- Tick Increment Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_pair = {}

-- Dissect: Tick Increment Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_pair.dissect = function(buffer, offset, packet, parent, raw_tick_increment, tick_increment_fraction_indicator, tick_increment_fraction_indicator)
  -- Dissect Tick Increment Tick Table Pair
  if raw_tick_increment == "0000T1" and tick_increment_fraction_indicator == "2" then
    return box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_tick_table_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Negative Whole Pair
  if tick_increment_fraction_indicator == "A" then
    return box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_whole_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Negative Ten Pair
  if tick_increment_fraction_indicator == "B" then
    return box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_ten_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Negative Hundred Pair
  if tick_increment_fraction_indicator == "C" then
    return box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_hundred_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Negative Thousand Pair
  if tick_increment_fraction_indicator == "D" then
    return box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_thousand_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Negative Ten Thousand Pair
  if tick_increment_fraction_indicator == "E" then
    return box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_ten_thousand_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Negative Hundred Thousand Pair
  if tick_increment_fraction_indicator == "F" then
    return box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_hundred_thousand_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Negative Million Pair
  if tick_increment_fraction_indicator == "G" then
    return box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_negative_million_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Numeric Pair
  if tick_increment_fraction_indicator == "0" then
    return box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Numeric Pair
  if tick_increment_fraction_indicator == "1" then
    return box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Numeric Pair
  if tick_increment_fraction_indicator == "2" then
    return box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Numeric Pair
  if tick_increment_fraction_indicator == "3" then
    return box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Numeric Pair
  if tick_increment_fraction_indicator == "4" then
    return box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Numeric Pair
  if tick_increment_fraction_indicator == "5" then
    return box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Numeric Pair
  if tick_increment_fraction_indicator == "6" then
    return box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Numeric Pair
  if tick_increment_fraction_indicator == "7" then
    return box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Numeric Pair
  if tick_increment_fraction_indicator == "8" then
    return box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Increment Numeric Pair
  if tick_increment_fraction_indicator == "9" then
    return box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_numeric_pair.dissect(buffer, offset, packet, parent)
  end

  -- Dissect Tick Increment Unknown Fraction Pair
  return box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_unknown_fraction_pair.dissect(buffer, offset, packet, parent)
end

-- Min Threshold Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_unknown_fraction_pair = {}

-- Size: Min Threshold Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_unknown_fraction_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_min_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_indicator.size

-- Display: Min Threshold Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_unknown_fraction_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Min Threshold Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_unknown_fraction_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Min Threshold Price: X
  index, raw_min_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_min_threshold_price.dissect(buffer, index, packet, parent)

  -- Min Threshold Price Fraction Indicator: X
  index, min_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Min Threshold Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_unknown_fraction_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.min_threshold_price_unknown_fraction_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_unknown_fraction_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_unknown_fraction_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_unknown_fraction_pair.fields(buffer, offset, packet, parent)
  end
end

-- Min Threshold Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_numeric_pair = {}

-- Size: Min Threshold Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_numeric_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_indicator.size

-- Display: Min Threshold Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_numeric_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Min Threshold Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_numeric_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Min Threshold Price: X
  index, min_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.scaled_min_threshold_price.dissect(buffer, index, packet, parent)

  -- Min Threshold Price Fraction Indicator: X
  index, min_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Min Threshold Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_numeric_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.min_threshold_price_numeric_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_numeric_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_numeric_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_numeric_pair.fields(buffer, offset, packet, parent)
  end
end

-- Min Threshold Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_million_pair = {}

-- Size: Min Threshold Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_million_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_min_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_indicator.size

-- Display: Min Threshold Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_million_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Min Threshold Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_million_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Min Threshold Price: X
  index, raw_min_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_min_threshold_price.dissect(buffer, index, packet, parent)

  -- Min Threshold Price Fraction Indicator: X
  index, min_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Min Threshold Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_million_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.min_threshold_price_negative_million_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_million_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_million_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_million_pair.fields(buffer, offset, packet, parent)
  end
end

-- Min Threshold Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_hundred_thousand_pair = {}

-- Size: Min Threshold Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_hundred_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_min_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_indicator.size

-- Display: Min Threshold Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_hundred_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Min Threshold Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_hundred_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Min Threshold Price: X
  index, raw_min_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_min_threshold_price.dissect(buffer, index, packet, parent)

  -- Min Threshold Price Fraction Indicator: X
  index, min_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Min Threshold Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_hundred_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.min_threshold_price_negative_hundred_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_hundred_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Min Threshold Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_ten_thousand_pair = {}

-- Size: Min Threshold Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_ten_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_min_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_indicator.size

-- Display: Min Threshold Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_ten_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Min Threshold Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_ten_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Min Threshold Price: X
  index, raw_min_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_min_threshold_price.dissect(buffer, index, packet, parent)

  -- Min Threshold Price Fraction Indicator: X
  index, min_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Min Threshold Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_ten_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.min_threshold_price_negative_ten_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_ten_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Min Threshold Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_thousand_pair = {}

-- Size: Min Threshold Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_min_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_indicator.size

-- Display: Min Threshold Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Min Threshold Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Min Threshold Price: X
  index, raw_min_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_min_threshold_price.dissect(buffer, index, packet, parent)

  -- Min Threshold Price Fraction Indicator: X
  index, min_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Min Threshold Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.min_threshold_price_negative_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Min Threshold Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_hundred_pair = {}

-- Size: Min Threshold Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_hundred_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_min_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_indicator.size

-- Display: Min Threshold Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_hundred_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Min Threshold Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_hundred_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Min Threshold Price: X
  index, raw_min_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_min_threshold_price.dissect(buffer, index, packet, parent)

  -- Min Threshold Price Fraction Indicator: X
  index, min_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Min Threshold Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_hundred_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.min_threshold_price_negative_hundred_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_hundred_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_hundred_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_hundred_pair.fields(buffer, offset, packet, parent)
  end
end

-- Min Threshold Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_ten_pair = {}

-- Size: Min Threshold Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_ten_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_min_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_indicator.size

-- Display: Min Threshold Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_ten_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Min Threshold Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_ten_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Min Threshold Price: X
  index, raw_min_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_min_threshold_price.dissect(buffer, index, packet, parent)

  -- Min Threshold Price Fraction Indicator: X
  index, min_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Min Threshold Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_ten_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.min_threshold_price_negative_ten_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_ten_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_ten_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_ten_pair.fields(buffer, offset, packet, parent)
  end
end

-- Min Threshold Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_whole_pair = {}

-- Size: Min Threshold Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_whole_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_min_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_indicator.size

-- Display: Min Threshold Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_whole_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Min Threshold Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_whole_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Min Threshold Price: X
  index, raw_min_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_min_threshold_price.dissect(buffer, index, packet, parent)

  -- Min Threshold Price Fraction Indicator: X
  index, min_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Min Threshold Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_whole_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.min_threshold_price_negative_whole_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_whole_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_whole_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_whole_pair.fields(buffer, offset, packet, parent)
  end
end

-- Min Threshold Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_pair = {}

-- Dispatch: Min Threshold Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_pair.dispatch = {
  ["A"] = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_whole_pair.dissect,
  ["B"] = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_ten_pair.dissect,
  ["C"] = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_hundred_pair.dissect,
  ["D"] = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_thousand_pair.dissect,
  ["E"] = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_ten_thousand_pair.dissect,
  ["F"] = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_hundred_thousand_pair.dissect,
  ["G"] = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_negative_million_pair.dissect,
  ["0"] = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_numeric_pair.dissect,
  ["1"] = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_numeric_pair.dissect,
  ["2"] = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_numeric_pair.dissect,
  ["3"] = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_numeric_pair.dissect,
  ["4"] = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_numeric_pair.dissect,
  ["5"] = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_numeric_pair.dissect,
  ["6"] = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_numeric_pair.dissect,
  ["7"] = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_numeric_pair.dissect,
  ["8"] = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_numeric_pair.dissect,
  ["9"] = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_numeric_pair.dissect,
}

-- Dissect: Min Threshold Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_pair.dissect = function(buffer, offset, packet, parent, min_threshold_price_fraction_indicator)
  local dissect = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_pair.dispatch[min_threshold_price_fraction_indicator]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Dissect Min Threshold Price Unknown Fraction Pair
  return box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_unknown_fraction_pair.dissect(buffer, offset, packet, parent)
end

-- Max Threshold Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_unknown_fraction_pair = {}

-- Size: Max Threshold Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_unknown_fraction_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_max_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_indicator.size

-- Display: Max Threshold Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_unknown_fraction_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Max Threshold Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_unknown_fraction_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Max Threshold Price: X
  index, raw_max_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_max_threshold_price.dissect(buffer, index, packet, parent)

  -- Max Threshold Price Fraction Indicator: X
  index, max_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Max Threshold Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_unknown_fraction_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.max_threshold_price_unknown_fraction_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_unknown_fraction_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_unknown_fraction_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_unknown_fraction_pair.fields(buffer, offset, packet, parent)
  end
end

-- Max Threshold Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_numeric_pair = {}

-- Size: Max Threshold Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_numeric_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_indicator.size

-- Display: Max Threshold Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_numeric_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Max Threshold Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_numeric_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Max Threshold Price: X
  index, max_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.scaled_max_threshold_price.dissect(buffer, index, packet, parent)

  -- Max Threshold Price Fraction Indicator: X
  index, max_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Max Threshold Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_numeric_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.max_threshold_price_numeric_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_numeric_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_numeric_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_numeric_pair.fields(buffer, offset, packet, parent)
  end
end

-- Max Threshold Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_million_pair = {}

-- Size: Max Threshold Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_million_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_max_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_indicator.size

-- Display: Max Threshold Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_million_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Max Threshold Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_million_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Max Threshold Price: X
  index, raw_max_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_max_threshold_price.dissect(buffer, index, packet, parent)

  -- Max Threshold Price Fraction Indicator: X
  index, max_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Max Threshold Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_million_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.max_threshold_price_negative_million_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_million_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_million_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_million_pair.fields(buffer, offset, packet, parent)
  end
end

-- Max Threshold Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_hundred_thousand_pair = {}

-- Size: Max Threshold Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_hundred_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_max_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_indicator.size

-- Display: Max Threshold Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_hundred_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Max Threshold Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_hundred_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Max Threshold Price: X
  index, raw_max_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_max_threshold_price.dissect(buffer, index, packet, parent)

  -- Max Threshold Price Fraction Indicator: X
  index, max_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Max Threshold Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_hundred_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.max_threshold_price_negative_hundred_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_hundred_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Max Threshold Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_ten_thousand_pair = {}

-- Size: Max Threshold Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_ten_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_max_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_indicator.size

-- Display: Max Threshold Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_ten_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Max Threshold Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_ten_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Max Threshold Price: X
  index, raw_max_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_max_threshold_price.dissect(buffer, index, packet, parent)

  -- Max Threshold Price Fraction Indicator: X
  index, max_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Max Threshold Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_ten_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.max_threshold_price_negative_ten_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_ten_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Max Threshold Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_thousand_pair = {}

-- Size: Max Threshold Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_max_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_indicator.size

-- Display: Max Threshold Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Max Threshold Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Max Threshold Price: X
  index, raw_max_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_max_threshold_price.dissect(buffer, index, packet, parent)

  -- Max Threshold Price Fraction Indicator: X
  index, max_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Max Threshold Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.max_threshold_price_negative_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Max Threshold Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_hundred_pair = {}

-- Size: Max Threshold Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_hundred_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_max_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_indicator.size

-- Display: Max Threshold Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_hundred_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Max Threshold Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_hundred_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Max Threshold Price: X
  index, raw_max_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_max_threshold_price.dissect(buffer, index, packet, parent)

  -- Max Threshold Price Fraction Indicator: X
  index, max_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Max Threshold Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_hundred_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.max_threshold_price_negative_hundred_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_hundred_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_hundred_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_hundred_pair.fields(buffer, offset, packet, parent)
  end
end

-- Max Threshold Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_ten_pair = {}

-- Size: Max Threshold Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_ten_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_max_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_indicator.size

-- Display: Max Threshold Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_ten_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Max Threshold Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_ten_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Max Threshold Price: X
  index, raw_max_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_max_threshold_price.dissect(buffer, index, packet, parent)

  -- Max Threshold Price Fraction Indicator: X
  index, max_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Max Threshold Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_ten_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.max_threshold_price_negative_ten_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_ten_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_ten_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_ten_pair.fields(buffer, offset, packet, parent)
  end
end

-- Max Threshold Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_whole_pair = {}

-- Size: Max Threshold Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_whole_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_max_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_indicator.size

-- Display: Max Threshold Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_whole_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Max Threshold Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_whole_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Max Threshold Price: X
  index, raw_max_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_max_threshold_price.dissect(buffer, index, packet, parent)

  -- Max Threshold Price Fraction Indicator: X
  index, max_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Max Threshold Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_whole_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.max_threshold_price_negative_whole_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_whole_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_whole_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_whole_pair.fields(buffer, offset, packet, parent)
  end
end

-- Max Threshold Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_pair = {}

-- Dispatch: Max Threshold Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_pair.dispatch = {
  ["A"] = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_whole_pair.dissect,
  ["B"] = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_ten_pair.dissect,
  ["C"] = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_hundred_pair.dissect,
  ["D"] = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_thousand_pair.dissect,
  ["E"] = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_ten_thousand_pair.dissect,
  ["F"] = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_hundred_thousand_pair.dissect,
  ["G"] = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_negative_million_pair.dissect,
  ["0"] = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_numeric_pair.dissect,
  ["1"] = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_numeric_pair.dissect,
  ["2"] = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_numeric_pair.dissect,
  ["3"] = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_numeric_pair.dissect,
  ["4"] = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_numeric_pair.dissect,
  ["5"] = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_numeric_pair.dissect,
  ["6"] = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_numeric_pair.dissect,
  ["7"] = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_numeric_pair.dissect,
  ["8"] = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_numeric_pair.dissect,
  ["9"] = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_numeric_pair.dissect,
}

-- Dissect: Max Threshold Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_pair.dissect = function(buffer, offset, packet, parent, max_threshold_price_fraction_indicator)
  local dissect = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_pair.dispatch[max_threshold_price_fraction_indicator]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Dissect Max Threshold Price Unknown Fraction Pair
  return box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_unknown_fraction_pair.dissect(buffer, offset, packet, parent)
end

-- Complex Order Instrument Keys Message
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_keys_message = {}

-- Calculate size of: Complex Order Instrument Keys Message
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_keys_message.size = function(buffer, offset)
  local index = 0

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_symbol.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.expiry_year.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.delivery_month.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.expiry_day.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.max_number_of_contracts_per_order.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.min_number_of_contracts_per_order.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_sign.size

  -- Calculate runtime size of Max Threshold Price Fraction Pair field
  local max_threshold_price_fraction_pair_offset = offset + index
  local max_threshold_price_fraction_pair_type = buffer(max_threshold_price_fraction_pair_offset + 6, 1):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_pair.size(buffer, max_threshold_price_fraction_pair_offset, max_threshold_price_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_sign.size

  -- Calculate runtime size of Min Threshold Price Fraction Pair field
  local min_threshold_price_fraction_pair_offset = offset + index
  local min_threshold_price_fraction_pair_type = buffer(min_threshold_price_fraction_pair_offset + 6, 1):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_pair.size(buffer, min_threshold_price_fraction_pair_offset, min_threshold_price_fraction_pair_type)

  -- Calculate runtime size of Tick Increment Fraction Pair field
  local tick_increment_fraction_pair_offset = offset + index
  local tick_increment_fraction_pair_type = buffer(tick_increment_fraction_pair_offset - 0, 6):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_pair.size(buffer, tick_increment_fraction_pair_offset, tick_increment_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.filler_2.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.group.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.instrument.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.instrument_external_code.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_allow_implied.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.number_of_legs.size

  -- Calculate field size from count
  local instrument_leg_count = buffer(offset + index - 2, 2):string()
  index = index + instrument_leg_count * 39

  return index
end

-- Display: Complex Order Instrument Keys Message
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_keys_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Instrument Keys Message
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_keys_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.dissect(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: X
  index, complex_order_instrument_symbol = box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_symbol.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = box_boxoptions_solamulticast_hsvf_v2_1.expiry_year.dissect(buffer, index, packet, parent)

  -- Delivery Month: A
  index, delivery_month = box_boxoptions_solamulticast_hsvf_v2_1.delivery_month.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = box_boxoptions_solamulticast_hsvf_v2_1.expiry_day.dissect(buffer, index, packet, parent)

  -- Max Number Of Contracts Per Order: X
  index, max_number_of_contracts_per_order = box_boxoptions_solamulticast_hsvf_v2_1.max_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Min Number Of Contracts Per Order: X
  index, min_number_of_contracts_per_order = box_boxoptions_solamulticast_hsvf_v2_1.min_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Max Threshold Price Sign: X
  index, max_threshold_price_sign = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_sign.dissect(buffer, index, packet, parent)

  -- Dependency element: Max Threshold Price Fraction Indicator
  local max_threshold_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Max Threshold Price Fraction Pair: Runtime Type with 9 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.max_threshold_price_fraction_pair.dissect(buffer, index, packet, parent, max_threshold_price_fraction_indicator)

  -- Min Threshold Price Sign: X
  index, min_threshold_price_sign = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_sign.dissect(buffer, index, packet, parent)

  -- Dependency element: Min Threshold Price Fraction Indicator
  local min_threshold_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Min Threshold Price Fraction Pair: Runtime Type with 9 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.min_threshold_price_fraction_pair.dissect(buffer, index, packet, parent, min_threshold_price_fraction_indicator)

  -- Dependency element: Raw Tick Increment
  local raw_tick_increment = buffer(index, 6):string()

  -- Dependency element: Tick Increment Fraction Indicator
  local tick_increment_fraction_indicator = buffer(index + 6, 1):string()

  -- Dependency element: Tick Increment Fraction Indicator
  local tick_increment_fraction_indicator = buffer(index + 6, 1):string()

  -- Tick Increment Fraction Pair: Runtime Type with 10 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_pair.dissect(buffer, index, packet, parent, raw_tick_increment, tick_increment_fraction_indicator, tick_increment_fraction_indicator)

  -- Filler 2: X
  index, filler_2 = box_boxoptions_solamulticast_hsvf_v2_1.filler_2.dissect(buffer, index, packet, parent)

  -- Group: X
  index, group = box_boxoptions_solamulticast_hsvf_v2_1.group.dissect(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = box_boxoptions_solamulticast_hsvf_v2_1.instrument.dissect(buffer, index, packet, parent)

  -- Instrument External Code: X
  index, instrument_external_code = box_boxoptions_solamulticast_hsvf_v2_1.instrument_external_code.dissect(buffer, index, packet, parent)

  -- Complex Order Instrument Allow Implied: A
  index, complex_order_instrument_allow_implied = box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_allow_implied.dissect(buffer, index, packet, parent)

  -- Number Of Legs: N
  index, number_of_legs = box_boxoptions_solamulticast_hsvf_v2_1.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Instrument Leg
  for instrument_leg_index = 1, number_of_legs do
    index, instrument_leg = box_boxoptions_solamulticast_hsvf_v2_1.instrument_leg.dissect(buffer, index, packet, parent, instrument_leg_index)
  end

  return index
end

-- Dissect: Complex Order Instrument Keys Message
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_keys_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.complex_order_instrument_keys_message, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_keys_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_keys_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_keys_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Flow Indicator
box_boxoptions_solamulticast_hsvf_v2_1.market_flow_indicator = {}

-- Size: Market Flow Indicator
box_boxoptions_solamulticast_hsvf_v2_1.market_flow_indicator.size =
  box_boxoptions_solamulticast_hsvf_v2_1.type_of_instrument.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.type_of_underlying.size

-- Display: Market Flow Indicator
box_boxoptions_solamulticast_hsvf_v2_1.market_flow_indicator.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Flow Indicator
box_boxoptions_solamulticast_hsvf_v2_1.market_flow_indicator.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Type Of Instrument: X
  index, type_of_instrument = box_boxoptions_solamulticast_hsvf_v2_1.type_of_instrument.dissect(buffer, index, packet, parent)

  -- Type Of Underlying: X
  index, type_of_underlying = box_boxoptions_solamulticast_hsvf_v2_1.type_of_underlying.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Flow Indicator
box_boxoptions_solamulticast_hsvf_v2_1.market_flow_indicator.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.market_flow_indicator, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.market_flow_indicator.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.market_flow_indicator.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.market_flow_indicator.fields(buffer, offset, packet, parent)
  end
end

-- Minimum Threshold Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_unknown_fraction_pair = {}

-- Size: Minimum Threshold Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_unknown_fraction_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_minimum_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_indicator.size

-- Display: Minimum Threshold Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_unknown_fraction_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Minimum Threshold Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_unknown_fraction_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Minimum Threshold Price: X
  index, raw_minimum_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_minimum_threshold_price.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Minimum Threshold Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_unknown_fraction_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.minimum_threshold_price_unknown_fraction_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_unknown_fraction_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_unknown_fraction_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_unknown_fraction_pair.fields(buffer, offset, packet, parent)
  end
end

-- Minimum Threshold Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_numeric_pair = {}

-- Size: Minimum Threshold Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_numeric_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_indicator.size

-- Display: Minimum Threshold Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_numeric_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Minimum Threshold Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_numeric_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Minimum Threshold Price: X
  index, minimum_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.scaled_minimum_threshold_price.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Minimum Threshold Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_numeric_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.minimum_threshold_price_numeric_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_numeric_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_numeric_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_numeric_pair.fields(buffer, offset, packet, parent)
  end
end

-- Minimum Threshold Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_million_pair = {}

-- Size: Minimum Threshold Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_million_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_minimum_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_indicator.size

-- Display: Minimum Threshold Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_million_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Minimum Threshold Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_million_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Minimum Threshold Price: X
  index, raw_minimum_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_minimum_threshold_price.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Minimum Threshold Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_million_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.minimum_threshold_price_negative_million_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_million_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_million_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_million_pair.fields(buffer, offset, packet, parent)
  end
end

-- Minimum Threshold Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_hundred_thousand_pair = {}

-- Size: Minimum Threshold Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_hundred_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_minimum_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_indicator.size

-- Display: Minimum Threshold Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_hundred_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Minimum Threshold Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_hundred_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Minimum Threshold Price: X
  index, raw_minimum_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_minimum_threshold_price.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Minimum Threshold Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_hundred_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.minimum_threshold_price_negative_hundred_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_hundred_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Minimum Threshold Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_ten_thousand_pair = {}

-- Size: Minimum Threshold Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_ten_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_minimum_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_indicator.size

-- Display: Minimum Threshold Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_ten_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Minimum Threshold Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_ten_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Minimum Threshold Price: X
  index, raw_minimum_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_minimum_threshold_price.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Minimum Threshold Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_ten_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.minimum_threshold_price_negative_ten_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_ten_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Minimum Threshold Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_thousand_pair = {}

-- Size: Minimum Threshold Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_minimum_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_indicator.size

-- Display: Minimum Threshold Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Minimum Threshold Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Minimum Threshold Price: X
  index, raw_minimum_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_minimum_threshold_price.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Minimum Threshold Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.minimum_threshold_price_negative_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Minimum Threshold Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_hundred_pair = {}

-- Size: Minimum Threshold Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_hundred_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_minimum_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_indicator.size

-- Display: Minimum Threshold Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_hundred_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Minimum Threshold Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_hundred_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Minimum Threshold Price: X
  index, raw_minimum_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_minimum_threshold_price.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Minimum Threshold Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_hundred_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.minimum_threshold_price_negative_hundred_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_hundred_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_hundred_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_hundred_pair.fields(buffer, offset, packet, parent)
  end
end

-- Minimum Threshold Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_ten_pair = {}

-- Size: Minimum Threshold Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_ten_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_minimum_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_indicator.size

-- Display: Minimum Threshold Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_ten_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Minimum Threshold Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_ten_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Minimum Threshold Price: X
  index, raw_minimum_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_minimum_threshold_price.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Minimum Threshold Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_ten_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.minimum_threshold_price_negative_ten_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_ten_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_ten_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_ten_pair.fields(buffer, offset, packet, parent)
  end
end

-- Minimum Threshold Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_whole_pair = {}

-- Size: Minimum Threshold Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_whole_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_minimum_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_indicator.size

-- Display: Minimum Threshold Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_whole_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Minimum Threshold Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_whole_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Minimum Threshold Price: X
  index, raw_minimum_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_minimum_threshold_price.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Minimum Threshold Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_whole_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.minimum_threshold_price_negative_whole_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_whole_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_whole_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_whole_pair.fields(buffer, offset, packet, parent)
  end
end

-- Minimum Threshold Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_pair = {}

-- Dispatch: Minimum Threshold Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_pair.dispatch = {
  ["A"] = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_whole_pair.dissect,
  ["B"] = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_ten_pair.dissect,
  ["C"] = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_hundred_pair.dissect,
  ["D"] = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_thousand_pair.dissect,
  ["E"] = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_ten_thousand_pair.dissect,
  ["F"] = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_hundred_thousand_pair.dissect,
  ["G"] = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_negative_million_pair.dissect,
  ["0"] = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_numeric_pair.dissect,
  ["1"] = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_numeric_pair.dissect,
  ["2"] = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_numeric_pair.dissect,
  ["3"] = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_numeric_pair.dissect,
  ["4"] = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_numeric_pair.dissect,
  ["5"] = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_numeric_pair.dissect,
  ["6"] = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_numeric_pair.dissect,
  ["7"] = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_numeric_pair.dissect,
  ["8"] = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_numeric_pair.dissect,
  ["9"] = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_numeric_pair.dissect,
}

-- Dissect: Minimum Threshold Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_pair.dissect = function(buffer, offset, packet, parent, minimum_threshold_price_fraction_indicator)
  local dissect = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_pair.dispatch[minimum_threshold_price_fraction_indicator]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Dissect Minimum Threshold Price Unknown Fraction Pair
  return box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_unknown_fraction_pair.dissect(buffer, offset, packet, parent)
end

-- Maximum Threshold Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_unknown_fraction_pair = {}

-- Size: Maximum Threshold Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_unknown_fraction_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_maximum_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_indicator.size

-- Display: Maximum Threshold Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_unknown_fraction_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Maximum Threshold Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_unknown_fraction_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Maximum Threshold Price: X
  index, raw_maximum_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_maximum_threshold_price.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Maximum Threshold Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_unknown_fraction_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.maximum_threshold_price_unknown_fraction_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_unknown_fraction_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_unknown_fraction_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_unknown_fraction_pair.fields(buffer, offset, packet, parent)
  end
end

-- Maximum Threshold Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_numeric_pair = {}

-- Size: Maximum Threshold Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_numeric_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_indicator.size

-- Display: Maximum Threshold Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_numeric_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Maximum Threshold Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_numeric_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Maximum Threshold Price: X
  index, maximum_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.scaled_maximum_threshold_price.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Maximum Threshold Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_numeric_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.maximum_threshold_price_numeric_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_numeric_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_numeric_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_numeric_pair.fields(buffer, offset, packet, parent)
  end
end

-- Maximum Threshold Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_million_pair = {}

-- Size: Maximum Threshold Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_million_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_maximum_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_indicator.size

-- Display: Maximum Threshold Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_million_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Maximum Threshold Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_million_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Maximum Threshold Price: X
  index, raw_maximum_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_maximum_threshold_price.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Maximum Threshold Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_million_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.maximum_threshold_price_negative_million_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_million_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_million_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_million_pair.fields(buffer, offset, packet, parent)
  end
end

-- Maximum Threshold Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_hundred_thousand_pair = {}

-- Size: Maximum Threshold Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_hundred_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_maximum_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_indicator.size

-- Display: Maximum Threshold Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_hundred_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Maximum Threshold Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_hundred_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Maximum Threshold Price: X
  index, raw_maximum_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_maximum_threshold_price.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Maximum Threshold Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_hundred_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.maximum_threshold_price_negative_hundred_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_hundred_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Maximum Threshold Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_ten_thousand_pair = {}

-- Size: Maximum Threshold Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_ten_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_maximum_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_indicator.size

-- Display: Maximum Threshold Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_ten_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Maximum Threshold Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_ten_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Maximum Threshold Price: X
  index, raw_maximum_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_maximum_threshold_price.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Maximum Threshold Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_ten_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.maximum_threshold_price_negative_ten_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_ten_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Maximum Threshold Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_thousand_pair = {}

-- Size: Maximum Threshold Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_maximum_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_indicator.size

-- Display: Maximum Threshold Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Maximum Threshold Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Maximum Threshold Price: X
  index, raw_maximum_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_maximum_threshold_price.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Maximum Threshold Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.maximum_threshold_price_negative_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Maximum Threshold Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_hundred_pair = {}

-- Size: Maximum Threshold Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_hundred_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_maximum_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_indicator.size

-- Display: Maximum Threshold Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_hundred_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Maximum Threshold Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_hundred_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Maximum Threshold Price: X
  index, raw_maximum_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_maximum_threshold_price.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Maximum Threshold Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_hundred_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.maximum_threshold_price_negative_hundred_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_hundred_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_hundred_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_hundred_pair.fields(buffer, offset, packet, parent)
  end
end

-- Maximum Threshold Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_ten_pair = {}

-- Size: Maximum Threshold Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_ten_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_maximum_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_indicator.size

-- Display: Maximum Threshold Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_ten_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Maximum Threshold Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_ten_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Maximum Threshold Price: X
  index, raw_maximum_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_maximum_threshold_price.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Maximum Threshold Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_ten_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.maximum_threshold_price_negative_ten_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_ten_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_ten_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_ten_pair.fields(buffer, offset, packet, parent)
  end
end

-- Maximum Threshold Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_whole_pair = {}

-- Size: Maximum Threshold Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_whole_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_maximum_threshold_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_indicator.size

-- Display: Maximum Threshold Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_whole_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Maximum Threshold Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_whole_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Maximum Threshold Price: X
  index, raw_maximum_threshold_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_maximum_threshold_price.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Maximum Threshold Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_whole_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.maximum_threshold_price_negative_whole_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_whole_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_whole_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_whole_pair.fields(buffer, offset, packet, parent)
  end
end

-- Maximum Threshold Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_pair = {}

-- Dispatch: Maximum Threshold Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_pair.dispatch = {
  ["A"] = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_whole_pair.dissect,
  ["B"] = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_ten_pair.dissect,
  ["C"] = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_hundred_pair.dissect,
  ["D"] = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_thousand_pair.dissect,
  ["E"] = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_ten_thousand_pair.dissect,
  ["F"] = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_hundred_thousand_pair.dissect,
  ["G"] = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_negative_million_pair.dissect,
  ["0"] = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_numeric_pair.dissect,
  ["1"] = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_numeric_pair.dissect,
  ["2"] = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_numeric_pair.dissect,
  ["3"] = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_numeric_pair.dissect,
  ["4"] = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_numeric_pair.dissect,
  ["5"] = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_numeric_pair.dissect,
  ["6"] = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_numeric_pair.dissect,
  ["7"] = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_numeric_pair.dissect,
  ["8"] = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_numeric_pair.dissect,
  ["9"] = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_numeric_pair.dissect,
}

-- Dissect: Maximum Threshold Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_pair.dissect = function(buffer, offset, packet, parent, maximum_threshold_price_fraction_indicator)
  local dissect = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_pair.dispatch[maximum_threshold_price_fraction_indicator]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Dissect Maximum Threshold Price Unknown Fraction Pair
  return box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_unknown_fraction_pair.dissect(buffer, offset, packet, parent)
end

-- Option Instrument Keys Message
box_boxoptions_solamulticast_hsvf_v2_1.option_instrument_keys_message = {}

-- Calculate size of: Option Instrument Keys Message
box_boxoptions_solamulticast_hsvf_v2_1.option_instrument_keys_message.size = function(buffer, offset)
  local index = 0

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.instrument_description.size(buffer, offset + index)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.strike_price_currency.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.maximum_number_of_contracts_per_order.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.minimum_number_of_contracts_per_order.size

  -- Calculate runtime size of Maximum Threshold Price Fraction Pair field
  local maximum_threshold_price_fraction_pair_offset = offset + index
  local maximum_threshold_price_fraction_pair_type = buffer(maximum_threshold_price_fraction_pair_offset + 6, 1):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_pair.size(buffer, maximum_threshold_price_fraction_pair_offset, maximum_threshold_price_fraction_pair_type)

  -- Calculate runtime size of Minimum Threshold Price Fraction Pair field
  local minimum_threshold_price_fraction_pair_offset = offset + index
  local minimum_threshold_price_fraction_pair_type = buffer(minimum_threshold_price_fraction_pair_offset + 6, 1):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_pair.size(buffer, minimum_threshold_price_fraction_pair_offset, minimum_threshold_price_fraction_pair_type)

  -- Calculate runtime size of Tick Increment Fraction Pair field
  local tick_increment_fraction_pair_offset = offset + index
  local tick_increment_fraction_pair_type = buffer(tick_increment_fraction_pair_offset - 0, 6):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_pair.size(buffer, tick_increment_fraction_pair_offset, tick_increment_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.option_type.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.market_flow_indicator.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.group_instrument.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.instrument.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.instrument_external_code.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.option_marker.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.underlying_symbol_root.size

  return index
end

-- Display: Option Instrument Keys Message
box_boxoptions_solamulticast_hsvf_v2_1.option_instrument_keys_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Instrument Keys Message
box_boxoptions_solamulticast_hsvf_v2_1.option_instrument_keys_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.dissect(buffer, index, packet, parent)

  -- Instrument Description: Struct of 6 fields
  index, instrument_description = box_boxoptions_solamulticast_hsvf_v2_1.instrument_description.dissect(buffer, index, packet, parent)

  -- Strike Price Currency: X
  index, strike_price_currency = box_boxoptions_solamulticast_hsvf_v2_1.strike_price_currency.dissect(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: X
  index, maximum_number_of_contracts_per_order = box_boxoptions_solamulticast_hsvf_v2_1.maximum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: X
  index, minimum_number_of_contracts_per_order = box_boxoptions_solamulticast_hsvf_v2_1.minimum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Dependency element: Maximum Threshold Price Fraction Indicator
  local maximum_threshold_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Maximum Threshold Price Fraction Pair: Runtime Type with 9 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.maximum_threshold_price_fraction_pair.dissect(buffer, index, packet, parent, maximum_threshold_price_fraction_indicator)

  -- Dependency element: Minimum Threshold Price Fraction Indicator
  local minimum_threshold_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Minimum Threshold Price Fraction Pair: Runtime Type with 9 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.minimum_threshold_price_fraction_pair.dissect(buffer, index, packet, parent, minimum_threshold_price_fraction_indicator)

  -- Dependency element: Raw Tick Increment
  local raw_tick_increment = buffer(index, 6):string()

  -- Dependency element: Tick Increment Fraction Indicator
  local tick_increment_fraction_indicator = buffer(index + 6, 1):string()

  -- Dependency element: Tick Increment Fraction Indicator
  local tick_increment_fraction_indicator = buffer(index + 6, 1):string()

  -- Tick Increment Fraction Pair: Runtime Type with 10 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.tick_increment_fraction_pair.dissect(buffer, index, packet, parent, raw_tick_increment, tick_increment_fraction_indicator, tick_increment_fraction_indicator)

  -- Option Type: X
  index, option_type = box_boxoptions_solamulticast_hsvf_v2_1.option_type.dissect(buffer, index, packet, parent)

  -- Market Flow Indicator: Struct of 2 fields
  index, market_flow_indicator = box_boxoptions_solamulticast_hsvf_v2_1.market_flow_indicator.dissect(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = box_boxoptions_solamulticast_hsvf_v2_1.group_instrument.dissect(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = box_boxoptions_solamulticast_hsvf_v2_1.instrument.dissect(buffer, index, packet, parent)

  -- Instrument External Code: X
  index, instrument_external_code = box_boxoptions_solamulticast_hsvf_v2_1.instrument_external_code.dissect(buffer, index, packet, parent)

  -- Option Marker: Struct of 2 fields
  index, option_marker = box_boxoptions_solamulticast_hsvf_v2_1.option_marker.dissect(buffer, index, packet, parent)

  -- Underlying Symbol Root: X
  index, underlying_symbol_root = box_boxoptions_solamulticast_hsvf_v2_1.underlying_symbol_root.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Instrument Keys Message
box_boxoptions_solamulticast_hsvf_v2_1.option_instrument_keys_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.option_instrument_keys_message, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.option_instrument_keys_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.option_instrument_keys_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.option_instrument_keys_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_unknown_fraction_pair = {}

-- Size: Trade Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_unknown_fraction_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_trade_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_indicator.size

-- Display: Trade Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_unknown_fraction_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_unknown_fraction_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Trade Price: N
  index, raw_trade_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Price Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_unknown_fraction_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.trade_price_unknown_fraction_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_unknown_fraction_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_unknown_fraction_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.trade_price_unknown_fraction_pair.fields(buffer, offset, packet, parent)
  end
end

-- Trade Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_numeric_pair = {}

-- Size: Trade Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_numeric_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.trade_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_indicator.size

-- Display: Trade Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_numeric_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_numeric_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Price: N
  index, trade_price = box_boxoptions_solamulticast_hsvf_v2_1.scaled_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Price Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_numeric_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.trade_price_numeric_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_numeric_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_numeric_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.trade_price_numeric_pair.fields(buffer, offset, packet, parent)
  end
end

-- Trade Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_million_pair = {}

-- Size: Trade Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_million_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_trade_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_indicator.size

-- Display: Trade Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_million_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_million_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Trade Price: N
  index, raw_trade_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Price Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_million_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.trade_price_negative_million_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_million_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_million_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_million_pair.fields(buffer, offset, packet, parent)
  end
end

-- Trade Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_hundred_thousand_pair = {}

-- Size: Trade Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_hundred_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_trade_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_indicator.size

-- Display: Trade Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_hundred_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_hundred_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Trade Price: N
  index, raw_trade_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Price Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_hundred_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.trade_price_negative_hundred_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_hundred_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Trade Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_ten_thousand_pair = {}

-- Size: Trade Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_ten_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_trade_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_indicator.size

-- Display: Trade Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_ten_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_ten_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Trade Price: N
  index, raw_trade_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Price Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_ten_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.trade_price_negative_ten_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_ten_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Trade Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_thousand_pair = {}

-- Size: Trade Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_trade_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_indicator.size

-- Display: Trade Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Trade Price: N
  index, raw_trade_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Price Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.trade_price_negative_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Trade Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_hundred_pair = {}

-- Size: Trade Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_hundred_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_trade_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_indicator.size

-- Display: Trade Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_hundred_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_hundred_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Trade Price: N
  index, raw_trade_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Price Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_hundred_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.trade_price_negative_hundred_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_hundred_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_hundred_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_hundred_pair.fields(buffer, offset, packet, parent)
  end
end

-- Trade Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_ten_pair = {}

-- Size: Trade Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_ten_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_trade_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_indicator.size

-- Display: Trade Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_ten_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_ten_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Trade Price: N
  index, raw_trade_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Price Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_ten_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.trade_price_negative_ten_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_ten_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_ten_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_ten_pair.fields(buffer, offset, packet, parent)
  end
end

-- Trade Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_whole_pair = {}

-- Size: Trade Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_whole_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_trade_price.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_indicator.size

-- Display: Trade Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_whole_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_whole_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Trade Price: N
  index, raw_trade_price = box_boxoptions_solamulticast_hsvf_v2_1.raw_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Price Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_whole_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.trade_price_negative_whole_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_whole_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_whole_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_whole_pair.fields(buffer, offset, packet, parent)
  end
end

-- Trade Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_pair = {}

-- Dispatch: Trade Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_pair.dispatch = {
  ["A"] = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_whole_pair.dissect,
  ["B"] = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_ten_pair.dissect,
  ["C"] = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_hundred_pair.dissect,
  ["D"] = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_thousand_pair.dissect,
  ["E"] = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_ten_thousand_pair.dissect,
  ["F"] = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_hundred_thousand_pair.dissect,
  ["G"] = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_negative_million_pair.dissect,
  ["0"] = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_numeric_pair.dissect,
  ["1"] = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_numeric_pair.dissect,
  ["2"] = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_numeric_pair.dissect,
  ["3"] = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_numeric_pair.dissect,
  ["4"] = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_numeric_pair.dissect,
  ["5"] = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_numeric_pair.dissect,
  ["6"] = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_numeric_pair.dissect,
  ["7"] = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_numeric_pair.dissect,
  ["8"] = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_numeric_pair.dissect,
  ["9"] = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_numeric_pair.dissect,
}

-- Dissect: Trade Price Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_pair.dissect = function(buffer, offset, packet, parent, trade_price_fraction_indicator)
  local dissect = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_pair.dispatch[trade_price_fraction_indicator]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Dissect Trade Price Unknown Fraction Pair
  return box_boxoptions_solamulticast_hsvf_v2_1.trade_price_unknown_fraction_pair.dissect(buffer, offset, packet, parent)
end

-- Complex Order Trade Cancellation Message
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_trade_cancellation_message = {}

-- Calculate size of: Complex Order Trade Cancellation Message
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_trade_cancellation_message.size = function(buffer, offset)
  local index = 0

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_symbol.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.volume.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.trade_price_sign.size

  -- Calculate runtime size of Trade Price Fraction Pair field
  local trade_price_fraction_pair_offset = offset + index
  local trade_price_fraction_pair_type = buffer(trade_price_fraction_pair_offset + 6, 1):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_pair.size(buffer, trade_price_fraction_pair_offset, trade_price_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.opra_trade_marker.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.filler_5.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.timestamp.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.price_indicator_marker.size

  return index
end

-- Display: Complex Order Trade Cancellation Message
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Trade Cancellation Message
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.dissect(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: X
  index, complex_order_instrument_symbol = box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_symbol.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = box_boxoptions_solamulticast_hsvf_v2_1.volume.dissect(buffer, index, packet, parent)

  -- Trade Price Sign: X
  index, trade_price_sign = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_sign.dissect(buffer, index, packet, parent)

  -- Dependency element: Trade Price Fraction Indicator
  local trade_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Trade Price Fraction Pair: Runtime Type with 9 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_pair.dissect(buffer, index, packet, parent, trade_price_fraction_indicator)

  -- Opra Trade Marker: X
  index, opra_trade_marker = box_boxoptions_solamulticast_hsvf_v2_1.opra_trade_marker.dissect(buffer, index, packet, parent)

  -- Filler 5: N
  index, filler_5 = box_boxoptions_solamulticast_hsvf_v2_1.filler_5.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = box_boxoptions_solamulticast_hsvf_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker: A
  index, price_indicator_marker = box_boxoptions_solamulticast_hsvf_v2_1.price_indicator_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Trade Cancellation Message
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.complex_order_trade_cancellation_message, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.complex_order_trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.complex_order_trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.complex_order_trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Trade Cancellation Message
box_boxoptions_solamulticast_hsvf_v2_1.option_trade_cancellation_message = {}

-- Calculate size of: Option Trade Cancellation Message
box_boxoptions_solamulticast_hsvf_v2_1.option_trade_cancellation_message.size = function(buffer, offset)
  local index = 0

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.instrument_description.size(buffer, offset + index)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.volume.size

  -- Calculate runtime size of Trade Price Fraction Pair field
  local trade_price_fraction_pair_offset = offset + index
  local trade_price_fraction_pair_type = buffer(trade_price_fraction_pair_offset + 6, 1):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_pair.size(buffer, trade_price_fraction_pair_offset, trade_price_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.opra_trade_marker.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.filler_5.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.timestamp.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.filler_8.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.price_indicator_marker.size

  return index
end

-- Display: Option Trade Cancellation Message
box_boxoptions_solamulticast_hsvf_v2_1.option_trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Trade Cancellation Message
box_boxoptions_solamulticast_hsvf_v2_1.option_trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.dissect(buffer, index, packet, parent)

  -- Instrument Description: Struct of 6 fields
  index, instrument_description = box_boxoptions_solamulticast_hsvf_v2_1.instrument_description.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = box_boxoptions_solamulticast_hsvf_v2_1.volume.dissect(buffer, index, packet, parent)

  -- Dependency element: Trade Price Fraction Indicator
  local trade_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Trade Price Fraction Pair: Runtime Type with 9 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_pair.dissect(buffer, index, packet, parent, trade_price_fraction_indicator)

  -- Opra Trade Marker: X
  index, opra_trade_marker = box_boxoptions_solamulticast_hsvf_v2_1.opra_trade_marker.dissect(buffer, index, packet, parent)

  -- Filler 5: N
  index, filler_5 = box_boxoptions_solamulticast_hsvf_v2_1.filler_5.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = box_boxoptions_solamulticast_hsvf_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Filler 8: N
  index, filler_8 = box_boxoptions_solamulticast_hsvf_v2_1.filler_8.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker: A
  index, price_indicator_marker = box_boxoptions_solamulticast_hsvf_v2_1.price_indicator_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Trade Cancellation Message
box_boxoptions_solamulticast_hsvf_v2_1.option_trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.option_trade_cancellation_message, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.option_trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.option_trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.option_trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Quote Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_unknown_fraction_pair = {}

-- Size: Ask Price Quote Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_unknown_fraction_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price_quote_text.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.size

-- Display: Ask Price Quote Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_unknown_fraction_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Price Quote Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_unknown_fraction_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Ask Price Quote Text: X
  index, raw_ask_price_quote_text = box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price_quote_text.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Price Quote Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_unknown_fraction_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_quote_unknown_fraction_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_unknown_fraction_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_unknown_fraction_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_unknown_fraction_pair.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Quote Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_numeric_pair = {}

-- Size: Ask Price Quote Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_numeric_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_numeric.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.size

-- Display: Ask Price Quote Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_numeric_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Price Quote Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_numeric_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ask Price Quote Numeric: X
  index, ask_price_quote_numeric = box_boxoptions_solamulticast_hsvf_v2_1.scaled_ask_price.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Price Quote Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_numeric_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_quote_numeric_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_numeric_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_numeric_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_numeric_pair.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Quote Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_million_pair = {}

-- Size: Ask Price Quote Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_million_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price_quote.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.size

-- Display: Ask Price Quote Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_million_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Price Quote Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_million_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Ask Price Quote: X
  index, raw_ask_price_quote = box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price_quote.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Price Quote Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_million_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_quote_negative_million_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_million_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_million_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_million_pair.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Quote Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_hundred_thousand_pair = {}

-- Size: Ask Price Quote Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_hundred_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price_quote.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.size

-- Display: Ask Price Quote Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_hundred_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Price Quote Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_hundred_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Ask Price Quote: X
  index, raw_ask_price_quote = box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price_quote.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Price Quote Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_hundred_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_quote_negative_hundred_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_hundred_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Quote Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_ten_thousand_pair = {}

-- Size: Ask Price Quote Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_ten_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price_quote.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.size

-- Display: Ask Price Quote Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_ten_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Price Quote Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_ten_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Ask Price Quote: X
  index, raw_ask_price_quote = box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price_quote.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Price Quote Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_ten_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_quote_negative_ten_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_ten_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Quote Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_thousand_pair = {}

-- Size: Ask Price Quote Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price_quote.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.size

-- Display: Ask Price Quote Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Price Quote Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Ask Price Quote: X
  index, raw_ask_price_quote = box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price_quote.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Price Quote Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_quote_negative_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Quote Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_hundred_pair = {}

-- Size: Ask Price Quote Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_hundred_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price_quote.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.size

-- Display: Ask Price Quote Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_hundred_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Price Quote Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_hundred_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Ask Price Quote: X
  index, raw_ask_price_quote = box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price_quote.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Price Quote Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_hundred_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_quote_negative_hundred_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_hundred_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_hundred_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_hundred_pair.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Quote Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_ten_pair = {}

-- Size: Ask Price Quote Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_ten_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price_quote.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.size

-- Display: Ask Price Quote Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_ten_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Price Quote Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_ten_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Ask Price Quote: X
  index, raw_ask_price_quote = box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price_quote.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Price Quote Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_ten_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_quote_negative_ten_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_ten_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_ten_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_ten_pair.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Quote Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_whole_pair = {}

-- Size: Ask Price Quote Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_whole_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price_quote.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.size

-- Display: Ask Price Quote Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_whole_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Price Quote Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_whole_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Ask Price Quote: X
  index, raw_ask_price_quote = box_boxoptions_solamulticast_hsvf_v2_1.raw_ask_price_quote.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Price Quote Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_whole_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_quote_negative_whole_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_whole_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_whole_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_whole_pair.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Quote Opening Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_opening_pair = {}

-- Size: Ask Price Quote Opening Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_opening_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_opening.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.size

-- Display: Ask Price Quote Opening Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_opening_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Price Quote Opening Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_opening_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ask Price Quote Opening: X
  index, ask_price_quote_opening = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_opening.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Price Quote Opening Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_opening_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.ask_price_quote_opening_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_opening_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_opening_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_opening_pair.fields(buffer, offset, packet, parent)
  end
end

-- Ask Price Quote Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_fraction_pair = {}

-- Dissect: Ask Price Quote Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_fraction_pair.dissect = function(buffer, offset, packet, parent, ask_price_quote_opening, ask_price_fraction_indicator, ask_price_fraction_indicator)
  -- Dissect Ask Price Quote Opening Pair
  if ask_price_quote_opening == "000OUV" and ask_price_fraction_indicator == "0" then
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_opening_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ask Price Quote Negative Whole Pair
  if ask_price_fraction_indicator == "A" then
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_whole_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ask Price Quote Negative Ten Pair
  if ask_price_fraction_indicator == "B" then
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_ten_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ask Price Quote Negative Hundred Pair
  if ask_price_fraction_indicator == "C" then
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_hundred_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ask Price Quote Negative Thousand Pair
  if ask_price_fraction_indicator == "D" then
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_thousand_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ask Price Quote Negative Ten Thousand Pair
  if ask_price_fraction_indicator == "E" then
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_ten_thousand_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ask Price Quote Negative Hundred Thousand Pair
  if ask_price_fraction_indicator == "F" then
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_hundred_thousand_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ask Price Quote Negative Million Pair
  if ask_price_fraction_indicator == "G" then
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_negative_million_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ask Price Quote Numeric Pair
  if ask_price_fraction_indicator == "0" then
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ask Price Quote Numeric Pair
  if ask_price_fraction_indicator == "1" then
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ask Price Quote Numeric Pair
  if ask_price_fraction_indicator == "2" then
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ask Price Quote Numeric Pair
  if ask_price_fraction_indicator == "3" then
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ask Price Quote Numeric Pair
  if ask_price_fraction_indicator == "4" then
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ask Price Quote Numeric Pair
  if ask_price_fraction_indicator == "5" then
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ask Price Quote Numeric Pair
  if ask_price_fraction_indicator == "6" then
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ask Price Quote Numeric Pair
  if ask_price_fraction_indicator == "7" then
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ask Price Quote Numeric Pair
  if ask_price_fraction_indicator == "8" then
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ask Price Quote Numeric Pair
  if ask_price_fraction_indicator == "9" then
    return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_numeric_pair.dissect(buffer, offset, packet, parent)
  end

  -- Dissect Ask Price Quote Unknown Fraction Pair
  return box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_unknown_fraction_pair.dissect(buffer, offset, packet, parent)
end

-- Bid Price Quote Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_unknown_fraction_pair = {}

-- Size: Bid Price Quote Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_unknown_fraction_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price_quote_text.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.size

-- Display: Bid Price Quote Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_unknown_fraction_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Price Quote Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_unknown_fraction_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Bid Price Quote Text: X
  index, raw_bid_price_quote_text = box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price_quote_text.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Price Quote Unknown Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_unknown_fraction_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_quote_unknown_fraction_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_unknown_fraction_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_unknown_fraction_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_unknown_fraction_pair.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Quote Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_numeric_pair = {}

-- Size: Bid Price Quote Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_numeric_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_numeric.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.size

-- Display: Bid Price Quote Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_numeric_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Price Quote Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_numeric_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Price Quote Numeric: X
  index, bid_price_quote_numeric = box_boxoptions_solamulticast_hsvf_v2_1.scaled_bid_price.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Price Quote Numeric Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_numeric_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_quote_numeric_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_numeric_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_numeric_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_numeric_pair.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Quote Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_million_pair = {}

-- Size: Bid Price Quote Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_million_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price_quote.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.size

-- Display: Bid Price Quote Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_million_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Price Quote Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_million_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Bid Price Quote: X
  index, raw_bid_price_quote = box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price_quote.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Price Quote Negative Million Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_million_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_quote_negative_million_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_million_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_million_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_million_pair.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Quote Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_hundred_thousand_pair = {}

-- Size: Bid Price Quote Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_hundred_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price_quote.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.size

-- Display: Bid Price Quote Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_hundred_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Price Quote Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_hundred_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Bid Price Quote: X
  index, raw_bid_price_quote = box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price_quote.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Price Quote Negative Hundred Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_hundred_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_quote_negative_hundred_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_hundred_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_hundred_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Quote Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_ten_thousand_pair = {}

-- Size: Bid Price Quote Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_ten_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price_quote.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.size

-- Display: Bid Price Quote Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_ten_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Price Quote Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_ten_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Bid Price Quote: X
  index, raw_bid_price_quote = box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price_quote.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Price Quote Negative Ten Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_ten_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_quote_negative_ten_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_ten_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_ten_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Quote Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_thousand_pair = {}

-- Size: Bid Price Quote Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_thousand_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price_quote.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.size

-- Display: Bid Price Quote Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_thousand_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Price Quote Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_thousand_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Bid Price Quote: X
  index, raw_bid_price_quote = box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price_quote.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Price Quote Negative Thousand Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_thousand_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_quote_negative_thousand_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_thousand_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_thousand_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_thousand_pair.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Quote Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_hundred_pair = {}

-- Size: Bid Price Quote Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_hundred_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price_quote.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.size

-- Display: Bid Price Quote Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_hundred_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Price Quote Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_hundred_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Bid Price Quote: X
  index, raw_bid_price_quote = box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price_quote.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Price Quote Negative Hundred Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_hundred_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_quote_negative_hundred_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_hundred_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_hundred_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_hundred_pair.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Quote Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_ten_pair = {}

-- Size: Bid Price Quote Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_ten_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price_quote.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.size

-- Display: Bid Price Quote Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_ten_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Price Quote Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_ten_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Bid Price Quote: X
  index, raw_bid_price_quote = box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price_quote.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Price Quote Negative Ten Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_ten_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_quote_negative_ten_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_ten_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_ten_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_ten_pair.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Quote Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_whole_pair = {}

-- Size: Bid Price Quote Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_whole_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price_quote.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.size

-- Display: Bid Price Quote Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_whole_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Price Quote Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_whole_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Raw Bid Price Quote: X
  index, raw_bid_price_quote = box_boxoptions_solamulticast_hsvf_v2_1.raw_bid_price_quote.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Price Quote Negative Whole Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_whole_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_quote_negative_whole_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_whole_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_whole_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_whole_pair.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Quote Opening Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_opening_pair = {}

-- Size: Bid Price Quote Opening Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_opening_pair.size =
  box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_opening.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.size

-- Display: Bid Price Quote Opening Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_opening_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Price Quote Opening Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_opening_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Price Quote Opening: X
  index, bid_price_quote_opening = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_opening.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Price Quote Opening Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_opening_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.bid_price_quote_opening_pair, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_opening_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_opening_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_opening_pair.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Quote Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_fraction_pair = {}

-- Dissect: Bid Price Quote Fraction Pair
box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_fraction_pair.dissect = function(buffer, offset, packet, parent, bid_price_quote_opening, bid_price_fraction_indicator, bid_price_fraction_indicator)
  -- Dissect Bid Price Quote Opening Pair
  if bid_price_quote_opening == "000OUV" and bid_price_fraction_indicator == "0" then
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_opening_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bid Price Quote Negative Whole Pair
  if bid_price_fraction_indicator == "A" then
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_whole_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bid Price Quote Negative Ten Pair
  if bid_price_fraction_indicator == "B" then
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_ten_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bid Price Quote Negative Hundred Pair
  if bid_price_fraction_indicator == "C" then
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_hundred_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bid Price Quote Negative Thousand Pair
  if bid_price_fraction_indicator == "D" then
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_thousand_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bid Price Quote Negative Ten Thousand Pair
  if bid_price_fraction_indicator == "E" then
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_ten_thousand_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bid Price Quote Negative Hundred Thousand Pair
  if bid_price_fraction_indicator == "F" then
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_hundred_thousand_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bid Price Quote Negative Million Pair
  if bid_price_fraction_indicator == "G" then
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_negative_million_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bid Price Quote Numeric Pair
  if bid_price_fraction_indicator == "0" then
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bid Price Quote Numeric Pair
  if bid_price_fraction_indicator == "1" then
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bid Price Quote Numeric Pair
  if bid_price_fraction_indicator == "2" then
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bid Price Quote Numeric Pair
  if bid_price_fraction_indicator == "3" then
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bid Price Quote Numeric Pair
  if bid_price_fraction_indicator == "4" then
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bid Price Quote Numeric Pair
  if bid_price_fraction_indicator == "5" then
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bid Price Quote Numeric Pair
  if bid_price_fraction_indicator == "6" then
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bid Price Quote Numeric Pair
  if bid_price_fraction_indicator == "7" then
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bid Price Quote Numeric Pair
  if bid_price_fraction_indicator == "8" then
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_numeric_pair.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bid Price Quote Numeric Pair
  if bid_price_fraction_indicator == "9" then
    return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_numeric_pair.dissect(buffer, offset, packet, parent)
  end

  -- Dissect Bid Price Quote Unknown Fraction Pair
  return box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_unknown_fraction_pair.dissect(buffer, offset, packet, parent)
end

-- Complex Market Depth Level
box_boxoptions_solamulticast_hsvf_v2_1.complex_market_depth_level = {}

-- Calculate size of: Complex Market Depth Level
box_boxoptions_solamulticast_hsvf_v2_1.complex_market_depth_level.size = function(buffer, offset)
  local index = 0

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.level_of_market_depth.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.bid_price_sign.size

  -- Calculate runtime size of Bid Price Quote Fraction Pair field
  local bid_price_quote_fraction_pair_offset = offset + index
  local bid_price_quote_fraction_pair_type = buffer(bid_price_quote_fraction_pair_offset - 0, 6):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_fraction_pair.size(buffer, bid_price_quote_fraction_pair_offset, bid_price_quote_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.bid_size.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.number_of_bid_orders.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.ask_price_sign.size

  -- Calculate runtime size of Ask Price Quote Fraction Pair field
  local ask_price_quote_fraction_pair_offset = offset + index
  local ask_price_quote_fraction_pair_type = buffer(ask_price_quote_fraction_pair_offset - 0, 6):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_fraction_pair.size(buffer, ask_price_quote_fraction_pair_offset, ask_price_quote_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.ask_size.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.number_of_ask_orders.size

  return index
end

-- Display: Complex Market Depth Level
box_boxoptions_solamulticast_hsvf_v2_1.complex_market_depth_level.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Market Depth Level
box_boxoptions_solamulticast_hsvf_v2_1.complex_market_depth_level.fields = function(buffer, offset, packet, parent, complex_market_depth_level_index)
  local index = offset

  -- Implicit Complex Market Depth Level Index
  if complex_market_depth_level_index ~= nil and show.indexes then
    local iteration = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.complex_market_depth_level_index, complex_market_depth_level_index)
    iteration:set_generated()
  end

  -- Level Of Market Depth: X
  index, level_of_market_depth = box_boxoptions_solamulticast_hsvf_v2_1.level_of_market_depth.dissect(buffer, index, packet, parent)

  -- Bid Price Sign: X
  index, bid_price_sign = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_sign.dissect(buffer, index, packet, parent)

  -- Dependency element: Bid Price Quote Opening
  local bid_price_quote_opening = buffer(index, 6):string()

  -- Dependency element: Bid Price Fraction Indicator
  local bid_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Dependency element: Bid Price Fraction Indicator
  local bid_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Bid Price Quote Fraction Pair: Runtime Type with 10 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_fraction_pair.dissect(buffer, index, packet, parent, bid_price_quote_opening, bid_price_fraction_indicator, bid_price_fraction_indicator)

  -- Bid Size: X
  index, bid_size = box_boxoptions_solamulticast_hsvf_v2_1.bid_size.dissect(buffer, index, packet, parent)

  -- Number Of Bid Orders: X
  index, number_of_bid_orders = box_boxoptions_solamulticast_hsvf_v2_1.number_of_bid_orders.dissect(buffer, index, packet, parent)

  -- Ask Price Sign: X
  index, ask_price_sign = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_sign.dissect(buffer, index, packet, parent)

  -- Dependency element: Ask Price Quote Opening
  local ask_price_quote_opening = buffer(index, 6):string()

  -- Dependency element: Ask Price Fraction Indicator
  local ask_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Dependency element: Ask Price Fraction Indicator
  local ask_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Ask Price Quote Fraction Pair: Runtime Type with 10 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_fraction_pair.dissect(buffer, index, packet, parent, ask_price_quote_opening, ask_price_fraction_indicator, ask_price_fraction_indicator)

  -- Ask Size: X
  index, ask_size = box_boxoptions_solamulticast_hsvf_v2_1.ask_size.dissect(buffer, index, packet, parent)

  -- Number Of Ask Orders: X
  index, number_of_ask_orders = box_boxoptions_solamulticast_hsvf_v2_1.number_of_ask_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Market Depth Level
box_boxoptions_solamulticast_hsvf_v2_1.complex_market_depth_level.dissect = function(buffer, offset, packet, parent, complex_market_depth_level_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.complex_market_depth_level, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.complex_market_depth_level.fields(buffer, offset, packet, parent, complex_market_depth_level_index)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.complex_market_depth_level.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.complex_market_depth_level.fields(buffer, offset, packet, parent, complex_market_depth_level_index)
  end
end

-- Complex Order Market Depth Message
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_market_depth_message = {}

-- Calculate size of: Complex Order Market Depth Message
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_market_depth_message.size = function(buffer, offset)
  local index = 0

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_symbol.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.instrument_status_marker.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.number_of_levels.size

  -- Calculate field size from count
  local complex_market_depth_level_count = buffer(offset + index - 1, 1):string()
  for i = 1, complex_market_depth_level_count do
    index = index + box_boxoptions_solamulticast_hsvf_v2_1.complex_market_depth_level.size(buffer, offset + index)
  end
  return index
end

-- Display: Complex Order Market Depth Message
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_market_depth_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Market Depth Message
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_market_depth_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.dissect(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: X
  index, complex_order_instrument_symbol = box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = box_boxoptions_solamulticast_hsvf_v2_1.instrument_status_marker.dissect(buffer, index, packet, parent)

  -- Number Of Levels: N
  index, number_of_levels = box_boxoptions_solamulticast_hsvf_v2_1.number_of_levels.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Market Depth Level
  for complex_market_depth_level_index = 1, number_of_levels do
    index, complex_market_depth_level = box_boxoptions_solamulticast_hsvf_v2_1.complex_market_depth_level.dissect(buffer, index, packet, parent, complex_market_depth_level_index)
  end

  return index
end

-- Dissect: Complex Order Market Depth Message
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_market_depth_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.complex_order_market_depth_message, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.complex_order_market_depth_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.complex_order_market_depth_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.complex_order_market_depth_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Depth Level
box_boxoptions_solamulticast_hsvf_v2_1.market_depth_level = {}

-- Calculate size of: Market Depth Level
box_boxoptions_solamulticast_hsvf_v2_1.market_depth_level.size = function(buffer, offset)
  local index = 0

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.level_of_market_depth.size

  -- Calculate runtime size of Bid Price Quote Fraction Pair field
  local bid_price_quote_fraction_pair_offset = offset + index
  local bid_price_quote_fraction_pair_type = buffer(bid_price_quote_fraction_pair_offset - 0, 6):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_fraction_pair.size(buffer, bid_price_quote_fraction_pair_offset, bid_price_quote_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.bid_size.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.number_of_bid_orders.size

  -- Calculate runtime size of Ask Price Quote Fraction Pair field
  local ask_price_quote_fraction_pair_offset = offset + index
  local ask_price_quote_fraction_pair_type = buffer(ask_price_quote_fraction_pair_offset - 0, 6):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_fraction_pair.size(buffer, ask_price_quote_fraction_pair_offset, ask_price_quote_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.ask_size.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.number_of_ask_orders.size

  return index
end

-- Display: Market Depth Level
box_boxoptions_solamulticast_hsvf_v2_1.market_depth_level.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Depth Level
box_boxoptions_solamulticast_hsvf_v2_1.market_depth_level.fields = function(buffer, offset, packet, parent, market_depth_level_index)
  local index = offset

  -- Implicit Market Depth Level Index
  if market_depth_level_index ~= nil and show.indexes then
    local iteration = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.market_depth_level_index, market_depth_level_index)
    iteration:set_generated()
  end

  -- Level Of Market Depth: X
  index, level_of_market_depth = box_boxoptions_solamulticast_hsvf_v2_1.level_of_market_depth.dissect(buffer, index, packet, parent)

  -- Dependency element: Bid Price Quote Opening
  local bid_price_quote_opening = buffer(index, 6):string()

  -- Dependency element: Bid Price Fraction Indicator
  local bid_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Dependency element: Bid Price Fraction Indicator
  local bid_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Bid Price Quote Fraction Pair: Runtime Type with 10 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_fraction_pair.dissect(buffer, index, packet, parent, bid_price_quote_opening, bid_price_fraction_indicator, bid_price_fraction_indicator)

  -- Bid Size: X
  index, bid_size = box_boxoptions_solamulticast_hsvf_v2_1.bid_size.dissect(buffer, index, packet, parent)

  -- Number Of Bid Orders: X
  index, number_of_bid_orders = box_boxoptions_solamulticast_hsvf_v2_1.number_of_bid_orders.dissect(buffer, index, packet, parent)

  -- Dependency element: Ask Price Quote Opening
  local ask_price_quote_opening = buffer(index, 6):string()

  -- Dependency element: Ask Price Fraction Indicator
  local ask_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Dependency element: Ask Price Fraction Indicator
  local ask_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Ask Price Quote Fraction Pair: Runtime Type with 10 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_fraction_pair.dissect(buffer, index, packet, parent, ask_price_quote_opening, ask_price_fraction_indicator, ask_price_fraction_indicator)

  -- Ask Size: X
  index, ask_size = box_boxoptions_solamulticast_hsvf_v2_1.ask_size.dissect(buffer, index, packet, parent)

  -- Number Of Ask Orders: X
  index, number_of_ask_orders = box_boxoptions_solamulticast_hsvf_v2_1.number_of_ask_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Depth Level
box_boxoptions_solamulticast_hsvf_v2_1.market_depth_level.dissect = function(buffer, offset, packet, parent, market_depth_level_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.market_depth_level, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.market_depth_level.fields(buffer, offset, packet, parent, market_depth_level_index)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.market_depth_level.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.market_depth_level.fields(buffer, offset, packet, parent, market_depth_level_index)
  end
end

-- Option Market Depth Message
box_boxoptions_solamulticast_hsvf_v2_1.option_market_depth_message = {}

-- Calculate size of: Option Market Depth Message
box_boxoptions_solamulticast_hsvf_v2_1.option_market_depth_message.size = function(buffer, offset)
  local index = 0

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.instrument_description.size(buffer, offset + index)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.instrument_status_marker.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.number_of_levels.size

  -- Calculate field size from count
  local market_depth_level_count = buffer(offset + index - 1, 1):string()
  for i = 1, market_depth_level_count do
    index = index + box_boxoptions_solamulticast_hsvf_v2_1.market_depth_level.size(buffer, offset + index)
  end
  return index
end

-- Display: Option Market Depth Message
box_boxoptions_solamulticast_hsvf_v2_1.option_market_depth_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Market Depth Message
box_boxoptions_solamulticast_hsvf_v2_1.option_market_depth_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.dissect(buffer, index, packet, parent)

  -- Instrument Description: Struct of 6 fields
  index, instrument_description = box_boxoptions_solamulticast_hsvf_v2_1.instrument_description.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = box_boxoptions_solamulticast_hsvf_v2_1.instrument_status_marker.dissect(buffer, index, packet, parent)

  -- Number Of Levels: N
  index, number_of_levels = box_boxoptions_solamulticast_hsvf_v2_1.number_of_levels.dissect(buffer, index, packet, parent)

  -- Repeating: Market Depth Level
  for market_depth_level_index = 1, number_of_levels do
    index, market_depth_level = box_boxoptions_solamulticast_hsvf_v2_1.market_depth_level.dissect(buffer, index, packet, parent, market_depth_level_index)
  end

  return index
end

-- Dissect: Option Market Depth Message
box_boxoptions_solamulticast_hsvf_v2_1.option_market_depth_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.option_market_depth_message, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.option_market_depth_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.option_market_depth_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.option_market_depth_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategies Group Status Message
box_boxoptions_solamulticast_hsvf_v2_1.strategies_group_status_message = {}

-- Size: Strategies Group Status Message
box_boxoptions_solamulticast_hsvf_v2_1.strategies_group_status_message.size =
  box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.group_of_the_complex_order_instrument.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.group_status.size

-- Display: Strategies Group Status Message
box_boxoptions_solamulticast_hsvf_v2_1.strategies_group_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategies Group Status Message
box_boxoptions_solamulticast_hsvf_v2_1.strategies_group_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.dissect(buffer, index, packet, parent)

  -- Group Of The Complex Order Instrument: X
  index, group_of_the_complex_order_instrument = box_boxoptions_solamulticast_hsvf_v2_1.group_of_the_complex_order_instrument.dissect(buffer, index, packet, parent)

  -- Group Status: A
  index, group_status = box_boxoptions_solamulticast_hsvf_v2_1.group_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategies Group Status Message
box_boxoptions_solamulticast_hsvf_v2_1.strategies_group_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.strategies_group_status_message, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.strategies_group_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.strategies_group_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.strategies_group_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Group Status Message
box_boxoptions_solamulticast_hsvf_v2_1.group_status_message = {}

-- Size: Group Status Message
box_boxoptions_solamulticast_hsvf_v2_1.group_status_message.size =
  box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.root_symbol.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.group_status.size

-- Display: Group Status Message
box_boxoptions_solamulticast_hsvf_v2_1.group_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Status Message
box_boxoptions_solamulticast_hsvf_v2_1.group_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: X
  index, root_symbol = box_boxoptions_solamulticast_hsvf_v2_1.root_symbol.dissect(buffer, index, packet, parent)

  -- Group Status: A
  index, group_status = box_boxoptions_solamulticast_hsvf_v2_1.group_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Status Message
box_boxoptions_solamulticast_hsvf_v2_1.group_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.group_status_message, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.group_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.group_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.group_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Group Opening Time Message
box_boxoptions_solamulticast_hsvf_v2_1.group_opening_time_message = {}

-- Size: Group Opening Time Message
box_boxoptions_solamulticast_hsvf_v2_1.group_opening_time_message.size =
  box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.root_symbol.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.group_status.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.scheduled_time.size

-- Display: Group Opening Time Message
box_boxoptions_solamulticast_hsvf_v2_1.group_opening_time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Opening Time Message
box_boxoptions_solamulticast_hsvf_v2_1.group_opening_time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: X
  index, root_symbol = box_boxoptions_solamulticast_hsvf_v2_1.root_symbol.dissect(buffer, index, packet, parent)

  -- Group Status: A
  index, group_status = box_boxoptions_solamulticast_hsvf_v2_1.group_status.dissect(buffer, index, packet, parent)

  -- Scheduled Time: N
  index, scheduled_time = box_boxoptions_solamulticast_hsvf_v2_1.scheduled_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Opening Time Message
box_boxoptions_solamulticast_hsvf_v2_1.group_opening_time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.group_opening_time_message, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.group_opening_time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.group_opening_time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.group_opening_time_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Order Quote Message
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_quote_message = {}

-- Calculate size of: Complex Order Quote Message
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_symbol.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.bid_price_sign.size

  -- Calculate runtime size of Bid Price Quote Fraction Pair field
  local bid_price_quote_fraction_pair_offset = offset + index
  local bid_price_quote_fraction_pair_type = buffer(bid_price_quote_fraction_pair_offset - 0, 6):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_fraction_pair.size(buffer, bid_price_quote_fraction_pair_offset, bid_price_quote_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.bid_size.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.ask_price_sign.size

  -- Calculate runtime size of Ask Price Quote Fraction Pair field
  local ask_price_quote_fraction_pair_offset = offset + index
  local ask_price_quote_fraction_pair_type = buffer(ask_price_quote_fraction_pair_offset - 0, 6):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_fraction_pair.size(buffer, ask_price_quote_fraction_pair_offset, ask_price_quote_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.ask_size.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.instrument_status_marker.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.public_customer_bid_size.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.public_customer_ask_size.size

  return index
end

-- Display: Complex Order Quote Message
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Quote Message
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.dissect(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: X
  index, complex_order_instrument_symbol = box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_symbol.dissect(buffer, index, packet, parent)

  -- Bid Price Sign: X
  index, bid_price_sign = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_sign.dissect(buffer, index, packet, parent)

  -- Dependency element: Bid Price Quote Opening
  local bid_price_quote_opening = buffer(index, 6):string()

  -- Dependency element: Bid Price Fraction Indicator
  local bid_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Dependency element: Bid Price Fraction Indicator
  local bid_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Bid Price Quote Fraction Pair: Runtime Type with 10 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_fraction_pair.dissect(buffer, index, packet, parent, bid_price_quote_opening, bid_price_fraction_indicator, bid_price_fraction_indicator)

  -- Bid Size: X
  index, bid_size = box_boxoptions_solamulticast_hsvf_v2_1.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price Sign: X
  index, ask_price_sign = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_sign.dissect(buffer, index, packet, parent)

  -- Dependency element: Ask Price Quote Opening
  local ask_price_quote_opening = buffer(index, 6):string()

  -- Dependency element: Ask Price Fraction Indicator
  local ask_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Dependency element: Ask Price Fraction Indicator
  local ask_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Ask Price Quote Fraction Pair: Runtime Type with 10 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_fraction_pair.dissect(buffer, index, packet, parent, ask_price_quote_opening, ask_price_fraction_indicator, ask_price_fraction_indicator)

  -- Ask Size: X
  index, ask_size = box_boxoptions_solamulticast_hsvf_v2_1.ask_size.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = box_boxoptions_solamulticast_hsvf_v2_1.instrument_status_marker.dissect(buffer, index, packet, parent)

  -- Public Customer Bid Size: X
  index, public_customer_bid_size = box_boxoptions_solamulticast_hsvf_v2_1.public_customer_bid_size.dissect(buffer, index, packet, parent)

  -- Public Customer Ask Size: X
  index, public_customer_ask_size = box_boxoptions_solamulticast_hsvf_v2_1.public_customer_ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Quote Message
box_boxoptions_solamulticast_hsvf_v2_1.complex_order_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.complex_order_quote_message, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.complex_order_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.complex_order_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.complex_order_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Quote Message
box_boxoptions_solamulticast_hsvf_v2_1.option_quote_message = {}

-- Calculate size of: Option Quote Message
box_boxoptions_solamulticast_hsvf_v2_1.option_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.instrument_description.size(buffer, offset + index)

  -- Calculate runtime size of Bid Price Quote Fraction Pair field
  local bid_price_quote_fraction_pair_offset = offset + index
  local bid_price_quote_fraction_pair_type = buffer(bid_price_quote_fraction_pair_offset - 0, 6):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_fraction_pair.size(buffer, bid_price_quote_fraction_pair_offset, bid_price_quote_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.bid_size.size

  -- Calculate runtime size of Ask Price Quote Fraction Pair field
  local ask_price_quote_fraction_pair_offset = offset + index
  local ask_price_quote_fraction_pair_type = buffer(ask_price_quote_fraction_pair_offset - 0, 6):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_fraction_pair.size(buffer, ask_price_quote_fraction_pair_offset, ask_price_quote_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.ask_size.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.filler_1.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.instrument_status_marker.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.public_customer_bid_size.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.public_customer_ask_size.size

  return index
end

-- Display: Option Quote Message
box_boxoptions_solamulticast_hsvf_v2_1.option_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Quote Message
box_boxoptions_solamulticast_hsvf_v2_1.option_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.dissect(buffer, index, packet, parent)

  -- Instrument Description: Struct of 6 fields
  index, instrument_description = box_boxoptions_solamulticast_hsvf_v2_1.instrument_description.dissect(buffer, index, packet, parent)

  -- Dependency element: Bid Price Quote Opening
  local bid_price_quote_opening = buffer(index, 6):string()

  -- Dependency element: Bid Price Fraction Indicator
  local bid_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Dependency element: Bid Price Fraction Indicator
  local bid_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Bid Price Quote Fraction Pair: Runtime Type with 10 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.bid_price_quote_fraction_pair.dissect(buffer, index, packet, parent, bid_price_quote_opening, bid_price_fraction_indicator, bid_price_fraction_indicator)

  -- Bid Size: X
  index, bid_size = box_boxoptions_solamulticast_hsvf_v2_1.bid_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Ask Price Quote Opening
  local ask_price_quote_opening = buffer(index, 6):string()

  -- Dependency element: Ask Price Fraction Indicator
  local ask_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Dependency element: Ask Price Fraction Indicator
  local ask_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Ask Price Quote Fraction Pair: Runtime Type with 10 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.ask_price_quote_fraction_pair.dissect(buffer, index, packet, parent, ask_price_quote_opening, ask_price_fraction_indicator, ask_price_fraction_indicator)

  -- Ask Size: X
  index, ask_size = box_boxoptions_solamulticast_hsvf_v2_1.ask_size.dissect(buffer, index, packet, parent)

  -- Filler 1: 1 Byte
  index, filler_1 = box_boxoptions_solamulticast_hsvf_v2_1.filler_1.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = box_boxoptions_solamulticast_hsvf_v2_1.instrument_status_marker.dissect(buffer, index, packet, parent)

  -- Public Customer Bid Size: X
  index, public_customer_bid_size = box_boxoptions_solamulticast_hsvf_v2_1.public_customer_bid_size.dissect(buffer, index, packet, parent)

  -- Public Customer Ask Size: X
  index, public_customer_ask_size = box_boxoptions_solamulticast_hsvf_v2_1.public_customer_ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Quote Message
box_boxoptions_solamulticast_hsvf_v2_1.option_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.option_quote_message, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.option_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.option_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.option_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Request For Quote Message
box_boxoptions_solamulticast_hsvf_v2_1.option_request_for_quote_message = {}

-- Calculate size of: Option Request For Quote Message
box_boxoptions_solamulticast_hsvf_v2_1.option_request_for_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.instrument_description.size(buffer, offset + index)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.requested_size.size

  return index
end

-- Display: Option Request For Quote Message
box_boxoptions_solamulticast_hsvf_v2_1.option_request_for_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Request For Quote Message
box_boxoptions_solamulticast_hsvf_v2_1.option_request_for_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.dissect(buffer, index, packet, parent)

  -- Instrument Description: Struct of 6 fields
  index, instrument_description = box_boxoptions_solamulticast_hsvf_v2_1.instrument_description.dissect(buffer, index, packet, parent)

  -- Requested Size: X
  index, requested_size = box_boxoptions_solamulticast_hsvf_v2_1.requested_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Request For Quote Message
box_boxoptions_solamulticast_hsvf_v2_1.option_request_for_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.option_request_for_quote_message, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.option_request_for_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.option_request_for_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.option_request_for_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Trade Message
box_boxoptions_solamulticast_hsvf_v2_1.strategy_trade_message = {}

-- Calculate size of: Strategy Trade Message
box_boxoptions_solamulticast_hsvf_v2_1.strategy_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_symbol.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.volume.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.trade_price_sign.size

  -- Calculate runtime size of Trade Price Fraction Pair field
  local trade_price_fraction_pair_offset = offset + index
  local trade_price_fraction_pair_type = buffer(trade_price_fraction_pair_offset + 6, 1):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_pair.size(buffer, trade_price_fraction_pair_offset, trade_price_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.net_change_sign.size

  -- Calculate runtime size of Net Change Fraction Pair field
  local net_change_fraction_pair_offset = offset + index
  local net_change_fraction_pair_type = buffer(net_change_fraction_pair_offset + 6, 1):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_pair.size(buffer, net_change_fraction_pair_offset, net_change_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.opra_trade_marker.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.filler_5.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.timestamp.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.price_indicator_marker.size

  return index
end

-- Display: Strategy Trade Message
box_boxoptions_solamulticast_hsvf_v2_1.strategy_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Trade Message
box_boxoptions_solamulticast_hsvf_v2_1.strategy_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.dissect(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: X
  index, complex_order_instrument_symbol = box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_symbol.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = box_boxoptions_solamulticast_hsvf_v2_1.volume.dissect(buffer, index, packet, parent)

  -- Trade Price Sign: X
  index, trade_price_sign = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_sign.dissect(buffer, index, packet, parent)

  -- Dependency element: Trade Price Fraction Indicator
  local trade_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Trade Price Fraction Pair: Runtime Type with 9 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_pair.dissect(buffer, index, packet, parent, trade_price_fraction_indicator)

  -- Net Change Sign: X
  index, net_change_sign = box_boxoptions_solamulticast_hsvf_v2_1.net_change_sign.dissect(buffer, index, packet, parent)

  -- Dependency element: Net Change Fraction Indicator
  local net_change_fraction_indicator = buffer(index + 6, 1):string()

  -- Net Change Fraction Pair: Runtime Type with 9 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_pair.dissect(buffer, index, packet, parent, net_change_fraction_indicator)

  -- Opra Trade Marker: X
  index, opra_trade_marker = box_boxoptions_solamulticast_hsvf_v2_1.opra_trade_marker.dissect(buffer, index, packet, parent)

  -- Filler 5: N
  index, filler_5 = box_boxoptions_solamulticast_hsvf_v2_1.filler_5.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = box_boxoptions_solamulticast_hsvf_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker: A
  index, price_indicator_marker = box_boxoptions_solamulticast_hsvf_v2_1.price_indicator_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Trade Message
box_boxoptions_solamulticast_hsvf_v2_1.strategy_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.strategy_trade_message, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.strategy_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.strategy_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.strategy_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Trade Message
box_boxoptions_solamulticast_hsvf_v2_1.option_trade_message = {}

-- Calculate size of: Option Trade Message
box_boxoptions_solamulticast_hsvf_v2_1.option_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.instrument_description.size(buffer, offset + index)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.volume.size

  -- Calculate runtime size of Trade Price Fraction Pair field
  local trade_price_fraction_pair_offset = offset + index
  local trade_price_fraction_pair_type = buffer(trade_price_fraction_pair_offset + 6, 1):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_pair.size(buffer, trade_price_fraction_pair_offset, trade_price_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.net_change_sign.size

  -- Calculate runtime size of Net Change Fraction Pair field
  local net_change_fraction_pair_offset = offset + index
  local net_change_fraction_pair_type = buffer(net_change_fraction_pair_offset + 6, 1):string()
  index = index + box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_pair.size(buffer, net_change_fraction_pair_offset, net_change_fraction_pair_type)

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.opra_trade_marker.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.filler_5.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.timestamp.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.filler_8.size

  index = index + box_boxoptions_solamulticast_hsvf_v2_1.price_indicator_marker.size

  return index
end

-- Display: Option Trade Message
box_boxoptions_solamulticast_hsvf_v2_1.option_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Trade Message
box_boxoptions_solamulticast_hsvf_v2_1.option_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.dissect(buffer, index, packet, parent)

  -- Instrument Description: Struct of 6 fields
  index, instrument_description = box_boxoptions_solamulticast_hsvf_v2_1.instrument_description.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = box_boxoptions_solamulticast_hsvf_v2_1.volume.dissect(buffer, index, packet, parent)

  -- Dependency element: Trade Price Fraction Indicator
  local trade_price_fraction_indicator = buffer(index + 6, 1):string()

  -- Trade Price Fraction Pair: Runtime Type with 9 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.trade_price_fraction_pair.dissect(buffer, index, packet, parent, trade_price_fraction_indicator)

  -- Net Change Sign: X
  index, net_change_sign = box_boxoptions_solamulticast_hsvf_v2_1.net_change_sign.dissect(buffer, index, packet, parent)

  -- Dependency element: Net Change Fraction Indicator
  local net_change_fraction_indicator = buffer(index + 6, 1):string()

  -- Net Change Fraction Pair: Runtime Type with 9 branches
  index = box_boxoptions_solamulticast_hsvf_v2_1.net_change_fraction_pair.dissect(buffer, index, packet, parent, net_change_fraction_indicator)

  -- Opra Trade Marker: X
  index, opra_trade_marker = box_boxoptions_solamulticast_hsvf_v2_1.opra_trade_marker.dissect(buffer, index, packet, parent)

  -- Filler 5: N
  index, filler_5 = box_boxoptions_solamulticast_hsvf_v2_1.filler_5.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = box_boxoptions_solamulticast_hsvf_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Filler 8: N
  index, filler_8 = box_boxoptions_solamulticast_hsvf_v2_1.filler_8.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker: A
  index, price_indicator_marker = box_boxoptions_solamulticast_hsvf_v2_1.price_indicator_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Trade Message
box_boxoptions_solamulticast_hsvf_v2_1.option_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.option_trade_message, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.option_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.option_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.option_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- System Timestamp Message
box_boxoptions_solamulticast_hsvf_v2_1.system_timestamp_message = {}

-- Size: System Timestamp Message
box_boxoptions_solamulticast_hsvf_v2_1.system_timestamp_message.size =
  box_boxoptions_solamulticast_hsvf_v2_1.trading_engine_timestamp.size

-- Display: System Timestamp Message
box_boxoptions_solamulticast_hsvf_v2_1.system_timestamp_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Timestamp Message
box_boxoptions_solamulticast_hsvf_v2_1.system_timestamp_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Engine Timestamp: N
  index, trading_engine_timestamp = box_boxoptions_solamulticast_hsvf_v2_1.trading_engine_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Timestamp Message
box_boxoptions_solamulticast_hsvf_v2_1.system_timestamp_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.system_timestamp_message, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.system_timestamp_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.system_timestamp_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.system_timestamp_message.fields(buffer, offset, packet, parent)
  end
end

-- Circuit Assurance Message
box_boxoptions_solamulticast_hsvf_v2_1.circuit_assurance_message = {}

-- Size: Circuit Assurance Message
box_boxoptions_solamulticast_hsvf_v2_1.circuit_assurance_message.size =
  box_boxoptions_solamulticast_hsvf_v2_1.time.size

-- Display: Circuit Assurance Message
box_boxoptions_solamulticast_hsvf_v2_1.circuit_assurance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Circuit Assurance Message
box_boxoptions_solamulticast_hsvf_v2_1.circuit_assurance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: N
  index, time = box_boxoptions_solamulticast_hsvf_v2_1.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Circuit Assurance Message
box_boxoptions_solamulticast_hsvf_v2_1.circuit_assurance_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.circuit_assurance_message, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.circuit_assurance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.circuit_assurance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.circuit_assurance_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Transmission Message
box_boxoptions_solamulticast_hsvf_v2_1.end_of_transmission_message = {}

-- Size: End Of Transmission Message
box_boxoptions_solamulticast_hsvf_v2_1.end_of_transmission_message.size =
  box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.time.size

-- Display: End Of Transmission Message
box_boxoptions_solamulticast_hsvf_v2_1.end_of_transmission_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Transmission Message
box_boxoptions_solamulticast_hsvf_v2_1.end_of_transmission_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_boxoptions_solamulticast_hsvf_v2_1.exchange_id.dissect(buffer, index, packet, parent)

  -- Time: N
  index, time = box_boxoptions_solamulticast_hsvf_v2_1.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Transmission Message
box_boxoptions_solamulticast_hsvf_v2_1.end_of_transmission_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.end_of_transmission_message, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.end_of_transmission_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.end_of_transmission_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.end_of_transmission_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Body
box_boxoptions_solamulticast_hsvf_v2_1.message_body = {}

-- Dispatch: Message Body
box_boxoptions_solamulticast_hsvf_v2_1.message_body.dispatch = {
  ["U"] = box_boxoptions_solamulticast_hsvf_v2_1.end_of_transmission_message.dissect,
  ["V"] = box_boxoptions_solamulticast_hsvf_v2_1.circuit_assurance_message.dissect,
  ["Z"] = box_boxoptions_solamulticast_hsvf_v2_1.system_timestamp_message.dissect,
  ["C"] = box_boxoptions_solamulticast_hsvf_v2_1.option_trade_message.dissect,
  ["CS"] = box_boxoptions_solamulticast_hsvf_v2_1.strategy_trade_message.dissect,
  ["D"] = box_boxoptions_solamulticast_hsvf_v2_1.option_request_for_quote_message.dissect,
  ["F"] = box_boxoptions_solamulticast_hsvf_v2_1.option_quote_message.dissect,
  ["FS"] = box_boxoptions_solamulticast_hsvf_v2_1.complex_order_quote_message.dissect,
  ["GC"] = box_boxoptions_solamulticast_hsvf_v2_1.group_opening_time_message.dissect,
  ["GR"] = box_boxoptions_solamulticast_hsvf_v2_1.group_status_message.dissect,
  ["GS"] = box_boxoptions_solamulticast_hsvf_v2_1.strategies_group_status_message.dissect,
  ["H"] = box_boxoptions_solamulticast_hsvf_v2_1.option_market_depth_message.dissect,
  ["HS"] = box_boxoptions_solamulticast_hsvf_v2_1.complex_order_market_depth_message.dissect,
  ["I"] = box_boxoptions_solamulticast_hsvf_v2_1.option_trade_cancellation_message.dissect,
  ["IS"] = box_boxoptions_solamulticast_hsvf_v2_1.complex_order_trade_cancellation_message.dissect,
  ["J"] = box_boxoptions_solamulticast_hsvf_v2_1.option_instrument_keys_message.dissect,
  ["JS"] = box_boxoptions_solamulticast_hsvf_v2_1.complex_order_instrument_keys_message.dissect,
  ["N"] = box_boxoptions_solamulticast_hsvf_v2_1.option_summary_message.dissect,
  ["NS"] = box_boxoptions_solamulticast_hsvf_v2_1.complex_order_summary_message.dissect,
  ["Q"] = box_boxoptions_solamulticast_hsvf_v2_1.beginning_of_options_summary_message.dissect,
  ["QS"] = box_boxoptions_solamulticast_hsvf_v2_1.beginning_of_complex_order_summary_message.dissect,
  ["S"] = box_boxoptions_solamulticast_hsvf_v2_1.end_of_sales_message.dissect,
  ["M"] = box_boxoptions_solamulticast_hsvf_v2_1.start_of_auction_on_option_message.dissect,
  ["MS"] = box_boxoptions_solamulticast_hsvf_v2_1.start_of_auction_on_complex_order_message.dissect,
  ["O"] = box_boxoptions_solamulticast_hsvf_v2_1.start_of_exposition_on_option_message.dissect,
  ["OS"] = box_boxoptions_solamulticast_hsvf_v2_1.start_of_exposition_on_complex_order_message.dissect,
  ["T"] = box_boxoptions_solamulticast_hsvf_v2_1.end_of_auction_or_exposition_on_option_message.dissect,
  ["TS"] = box_boxoptions_solamulticast_hsvf_v2_1.end_of_auction_or_exposition_on_complex_instruments_message.dissect,
}

-- Dissect: Message Body
box_boxoptions_solamulticast_hsvf_v2_1.message_body.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = box_boxoptions_solamulticast_hsvf_v2_1.message_body.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
box_boxoptions_solamulticast_hsvf_v2_1.message_header = {}

-- Size: Message Header
box_boxoptions_solamulticast_hsvf_v2_1.message_header.size =
  box_boxoptions_solamulticast_hsvf_v2_1.sequence_number.size + 
  box_boxoptions_solamulticast_hsvf_v2_1.message_type.size

-- Display: Message Header
box_boxoptions_solamulticast_hsvf_v2_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
box_boxoptions_solamulticast_hsvf_v2_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: N
  index, sequence_number = box_boxoptions_solamulticast_hsvf_v2_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Type: X
  index, message_type = box_boxoptions_solamulticast_hsvf_v2_1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
box_boxoptions_solamulticast_hsvf_v2_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1.fields.message_header, buffer(offset, 0))
    local index = box_boxoptions_solamulticast_hsvf_v2_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solamulticast_hsvf_v2_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solamulticast_hsvf_v2_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
box_boxoptions_solamulticast_hsvf_v2_1.packet = {}

-- Verify required size of Udp packet
box_boxoptions_solamulticast_hsvf_v2_1.packet.requiredsize = function(buffer)
  return buffer:len() >= box_boxoptions_solamulticast_hsvf_v2_1.hsvf_stx.size + box_boxoptions_solamulticast_hsvf_v2_1.message_header.size
end

-- Dissect Packet
box_boxoptions_solamulticast_hsvf_v2_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Hsvf Stx: character
    index, hsvf_stx = box_boxoptions_solamulticast_hsvf_v2_1.hsvf_stx.dissect(buffer, index, packet, parent)

    -- Message Header: Struct of 2 fields
    index, message_header = box_boxoptions_solamulticast_hsvf_v2_1.message_header.dissect(buffer, index, packet, parent)

    -- Dependency element: Message Type
    local message_type = trim_right_spaces(buffer(index - 2, 2):string())

    -- Message Body: Runtime Type with 28 branches
    index = box_boxoptions_solamulticast_hsvf_v2_1.message_body.dissect(buffer, index, packet, parent, message_type)

    -- Hsvf Etx: character
    index, hsvf_etx = box_boxoptions_solamulticast_hsvf_v2_1.hsvf_etx.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_box_boxoptions_solamulticast_hsvf_v2_1.init()
end

-- Dissector for Box BoxOptions SolaMulticast Hsvf 2.1
function omi_box_boxoptions_solamulticast_hsvf_v2_1.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_box_boxoptions_solamulticast_hsvf_v2_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_box_boxoptions_solamulticast_hsvf_v2_1, buffer(), omi_box_boxoptions_solamulticast_hsvf_v2_1.description, "("..buffer:len().." Bytes)")
  return box_boxoptions_solamulticast_hsvf_v2_1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Hsvf Stx Field
box_boxoptions_solamulticast_hsvf_v2_1.hsvf_stx.verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 0 + 1 then
    return false
  end

  -- Attempt to read field
  local value = buffer(0, 1):int()

  if value == 2 then
    return true
  end

  return false
end

-- Dissector Heuristic for Box BoxOptions SolaMulticast Hsvf 2.1 (Udp)
local function omi_box_boxoptions_solamulticast_hsvf_v2_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not box_boxoptions_solamulticast_hsvf_v2_1.packet.requiredsize(buffer) then return false end

  -- Verify Hsvf Stx
  if not box_boxoptions_solamulticast_hsvf_v2_1.hsvf_stx.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_box_boxoptions_solamulticast_hsvf_v2_1
  omi_box_boxoptions_solamulticast_hsvf_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Box BoxOptions SolaMulticast Hsvf 2.1
omi_box_boxoptions_solamulticast_hsvf_v2_1:register_heuristic("udp", omi_box_boxoptions_solamulticast_hsvf_v2_1_udp_heuristic)

-- Register Box BoxOptions SolaMulticast Hsvf 2.1 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_box_boxoptions_solamulticast_hsvf_v2_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Box Options Market
--   Version: 2.1
--   Date: Tuesday, December 9, 2025
--   Specification: BOX-SOLA-HSVF-Multicast-Specifications-Guide-v2.1.pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: GPL-2.0-or-later
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.
--   https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--   https://openmarketsinitiative.com
--
-- Protocol Compiler technologies used to produce this file are
-- the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-----------------------------------------------------------------------
