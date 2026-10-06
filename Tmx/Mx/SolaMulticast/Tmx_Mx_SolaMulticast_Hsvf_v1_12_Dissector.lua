-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Tmx Mx SolaMulticast Hsvf 1.12 Protocol
local omi_tmx_mx_solamulticast_hsvf_v1_12 = Proto("Omi.Tmx.Mx.SolaMulticast.Hsvf.v1.12", "Tmx Mx SolaMulticast Hsvf 1.12")

-- Protocol table
local tmx_mx_solamulticast_hsvf_v1_12 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Tmx Mx SolaMulticast Hsvf 1.12 Fields
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.ask_price_fraction_indicator = ProtoField.new("Ask Price Fraction Indicator", "tmx.mx.solamulticast.hsvf.v1.12.askpricefractionindicator", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.ask_price_quote = ProtoField.new("Ask Price Quote", "tmx.mx.solamulticast.hsvf.v1.12.askpricequote", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.ask_price_sign = ProtoField.new("Ask Price Sign", "tmx.mx.solamulticast.hsvf.v1.12.askpricesign", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.ask_price_summary = ProtoField.new("Ask Price Summary", "tmx.mx.solamulticast.hsvf.v1.12.askpricesummary", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.ask_size = ProtoField.new("Ask Size", "tmx.mx.solamulticast.hsvf.v1.12.asksize", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.associated_product = ProtoField.new("Associated Product", "tmx.mx.solamulticast.hsvf.v1.12.associatedproduct", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.bid_price_fraction_indicator = ProtoField.new("Bid Price Fraction Indicator", "tmx.mx.solamulticast.hsvf.v1.12.bidpricefractionindicator", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.bid_price_quote = ProtoField.new("Bid Price Quote", "tmx.mx.solamulticast.hsvf.v1.12.bidpricequote", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.bid_price_sign = ProtoField.new("Bid Price Sign", "tmx.mx.solamulticast.hsvf.v1.12.bidpricesign", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.bid_price_summary = ProtoField.new("Bid Price Summary", "tmx.mx.solamulticast.hsvf.v1.12.bidpricesummary", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.bid_size = ProtoField.new("Bid Size", "tmx.mx.solamulticast.hsvf.v1.12.bidsize", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.bulletin_type = ProtoField.new("Bulletin Type", "tmx.mx.solamulticast.hsvf.v1.12.bulletintype", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.call_put_code = ProtoField.new("Call Put Code", "tmx.mx.solamulticast.hsvf.v1.12.callputcode", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.continue_marker = ProtoField.new("Continue Marker", "tmx.mx.solamulticast.hsvf.v1.12.continuemarker", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.contract_size = ProtoField.new("Contract Size", "tmx.mx.solamulticast.hsvf.v1.12.contractsize", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.currency = ProtoField.new("Currency", "tmx.mx.solamulticast.hsvf.v1.12.currency", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.delivery_type = ProtoField.new("Delivery Type", "tmx.mx.solamulticast.hsvf.v1.12.deliverytype", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.end_ = ProtoField.new("End", "tmx.mx.solamulticast.hsvf.v1.12.end", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.error_code = ProtoField.new("Error Code", "tmx.mx.solamulticast.hsvf.v1.12.errorcode", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.error_msg = ProtoField.new("Error Msg", "tmx.mx.solamulticast.hsvf.v1.12.errormsg", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.exchange_id = ProtoField.new("Exchange Id", "tmx.mx.solamulticast.hsvf.v1.12.exchangeid", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.expiry_date = ProtoField.new("Expiry Date", "tmx.mx.solamulticast.hsvf.v1.12.expirydate", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.expiry_day = ProtoField.new("Expiry Day", "tmx.mx.solamulticast.hsvf.v1.12.expiryday", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.expiry_month = ProtoField.new("Expiry Month", "tmx.mx.solamulticast.hsvf.v1.12.expirymonth", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.expiry_year = ProtoField.new("Expiry Year", "tmx.mx.solamulticast.hsvf.v1.12.expiryyear", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.external_price_at_source = ProtoField.new("External Price At Source", "tmx.mx.solamulticast.hsvf.v1.12.externalpriceatsource", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.external_price_fraction_indicator = ProtoField.new("External Price Fraction Indicator", "tmx.mx.solamulticast.hsvf.v1.12.externalpricefractionindicator", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.filler_1 = ProtoField.new("Filler 1", "tmx.mx.solamulticast.hsvf.v1.12.filler1", ftypes.BYTES)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.filler_2 = ProtoField.new("Filler 2", "tmx.mx.solamulticast.hsvf.v1.12.filler2", ftypes.BYTES)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.filler_6 = ProtoField.new("Filler 6", "tmx.mx.solamulticast.hsvf.v1.12.filler6", ftypes.BYTES)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.future_option_symbol = ProtoField.new("Future Option Symbol", "tmx.mx.solamulticast.hsvf.v1.12.futureoptionsymbol", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.future_product = ProtoField.new("Future Product", "tmx.mx.solamulticast.hsvf.v1.12.futureproduct", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.group_instrument = ProtoField.new("Group Instrument", "tmx.mx.solamulticast.hsvf.v1.12.groupinstrument", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.group_status = ProtoField.new("Group Status", "tmx.mx.solamulticast.hsvf.v1.12.groupstatus", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.high_price = ProtoField.new("High Price", "tmx.mx.solamulticast.hsvf.v1.12.highprice", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.high_price_fraction_indicator = ProtoField.new("High Price Fraction Indicator", "tmx.mx.solamulticast.hsvf.v1.12.highpricefractionindicator", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.high_price_sign = ProtoField.new("High Price Sign", "tmx.mx.solamulticast.hsvf.v1.12.highpricesign", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.hsvf_etx = ProtoField.new("Hsvf Etx", "tmx.mx.solamulticast.hsvf.v1.12.hsvfetx", ftypes.INT8)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.hsvf_stx = ProtoField.new("Hsvf Stx", "tmx.mx.solamulticast.hsvf.v1.12.hsvfstx", ftypes.INT8)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.instrument = ProtoField.new("Instrument", "tmx.mx.solamulticast.hsvf.v1.12.instrument", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.instrument_external_code = ProtoField.new("Instrument External Code", "tmx.mx.solamulticast.hsvf.v1.12.instrumentexternalcode", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.instrument_status_marker = ProtoField.new("Instrument Status Marker", "tmx.mx.solamulticast.hsvf.v1.12.instrumentstatusmarker", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.last_price = ProtoField.new("Last Price", "tmx.mx.solamulticast.hsvf.v1.12.lastprice", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.last_price_fraction_indicator = ProtoField.new("Last Price Fraction Indicator", "tmx.mx.solamulticast.hsvf.v1.12.lastpricefractionindicator", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.last_price_sign = ProtoField.new("Last Price Sign", "tmx.mx.solamulticast.hsvf.v1.12.lastpricesign", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.leg_ratio = ProtoField.new("Leg Ratio", "tmx.mx.solamulticast.hsvf.v1.12.legratio", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.leg_ratio_sign = ProtoField.new("Leg Ratio Sign", "tmx.mx.solamulticast.hsvf.v1.12.legratiosign", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.leg_symbol = ProtoField.new("Leg Symbol", "tmx.mx.solamulticast.hsvf.v1.12.legsymbol", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.level_of_market_depth = ProtoField.new("Level Of Market Depth", "tmx.mx.solamulticast.hsvf.v1.12.levelofmarketdepth", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.line = ProtoField.new("Line", "tmx.mx.solamulticast.hsvf.v1.12.line", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.login_timestamp = ProtoField.new("Login Timestamp", "tmx.mx.solamulticast.hsvf.v1.12.logintimestamp", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.long_message_header = ProtoField.new("Long Message Header", "tmx.mx.solamulticast.hsvf.v1.12.longmessageheader", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.low_price = ProtoField.new("Low Price", "tmx.mx.solamulticast.hsvf.v1.12.lowprice", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.low_price_fraction_indicator = ProtoField.new("Low Price Fraction Indicator", "tmx.mx.solamulticast.hsvf.v1.12.lowpricefractionindicator", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.low_price_sign = ProtoField.new("Low Price Sign", "tmx.mx.solamulticast.hsvf.v1.12.lowpricesign", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.market_depth_level = ProtoField.new("Market Depth Level", "tmx.mx.solamulticast.hsvf.v1.12.marketdepthlevel", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.market_flow_indicator = ProtoField.new("Market Flow Indicator", "tmx.mx.solamulticast.hsvf.v1.12.marketflowindicator", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.maximum_number_of_contracts_per_order = ProtoField.new("Maximum Number Of Contracts Per Order", "tmx.mx.solamulticast.hsvf.v1.12.maximumnumberofcontractsperorder", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.maximum_threshold_price = ProtoField.new("Maximum Threshold Price", "tmx.mx.solamulticast.hsvf.v1.12.maximumthresholdprice", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.maximum_threshold_price_fraction_indicator = ProtoField.new("Maximum Threshold Price Fraction Indicator", "tmx.mx.solamulticast.hsvf.v1.12.maximumthresholdpricefractionindicator", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.message_timestamp = ProtoField.new("Message Timestamp", "tmx.mx.solamulticast.hsvf.v1.12.messagetimestamp", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.message_type = ProtoField.new("Message Type", "tmx.mx.solamulticast.hsvf.v1.12.messagetype", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.min_price = ProtoField.new("Min Price", "tmx.mx.solamulticast.hsvf.v1.12.minprice", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.min_price_fraction_indicator = ProtoField.new("Min Price Fraction Indicator", "tmx.mx.solamulticast.hsvf.v1.12.minpricefractionindicator", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.minimum_number_of_contracts_per_order = ProtoField.new("Minimum Number Of Contracts Per Order", "tmx.mx.solamulticast.hsvf.v1.12.minimumnumberofcontractsperorder", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.minimum_threshold_price = ProtoField.new("Minimum Threshold Price", "tmx.mx.solamulticast.hsvf.v1.12.minimumthresholdprice", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.minimum_threshold_price_fraction_indicator = ProtoField.new("Minimum Threshold Price Fraction Indicator", "tmx.mx.solamulticast.hsvf.v1.12.minimumthresholdpricefractionindicator", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.nb_entries = ProtoField.new("Nb Entries", "tmx.mx.solamulticast.hsvf.v1.12.nbentries", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.net_change = ProtoField.new("Net Change", "tmx.mx.solamulticast.hsvf.v1.12.netchange", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.net_change_fraction_indicator = ProtoField.new("Net Change Fraction Indicator", "tmx.mx.solamulticast.hsvf.v1.12.netchangefractionindicator", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.net_change_sign = ProtoField.new("Net Change Sign", "tmx.mx.solamulticast.hsvf.v1.12.netchangesign", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.number_of_ask_orders = ProtoField.new("Number Of Ask Orders", "tmx.mx.solamulticast.hsvf.v1.12.numberofaskorders", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.number_of_bid_orders = ProtoField.new("Number Of Bid Orders", "tmx.mx.solamulticast.hsvf.v1.12.numberofbidorders", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.number_of_legs = ProtoField.new("Number Of Legs", "tmx.mx.solamulticast.hsvf.v1.12.numberoflegs", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.number_of_level = ProtoField.new("Number Of Level", "tmx.mx.solamulticast.hsvf.v1.12.numberoflevel", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.open_interest = ProtoField.new("Open Interest", "tmx.mx.solamulticast.hsvf.v1.12.openinterest", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.open_interest_date = ProtoField.new("Open Interest Date", "tmx.mx.solamulticast.hsvf.v1.12.openinterestdate", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.open_price = ProtoField.new("Open Price", "tmx.mx.solamulticast.hsvf.v1.12.openprice", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.open_price_fraction_indicator = ProtoField.new("Open Price Fraction Indicator", "tmx.mx.solamulticast.hsvf.v1.12.openpricefractionindicator", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.open_price_sign = ProtoField.new("Open Price Sign", "tmx.mx.solamulticast.hsvf.v1.12.openpricesign", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.opening_price = ProtoField.new("Opening Price", "tmx.mx.solamulticast.hsvf.v1.12.openingprice", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.opening_price_fraction_indicator = ProtoField.new("Opening Price Fraction Indicator", "tmx.mx.solamulticast.hsvf.v1.12.openingpricefractionindicator", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.option_marker = ProtoField.new("Option Marker", "tmx.mx.solamulticast.hsvf.v1.12.optionmarker", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.option_symbol = ProtoField.new("Option Symbol", "tmx.mx.solamulticast.hsvf.v1.12.optionsymbol", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.option_type = ProtoField.new("Option Type", "tmx.mx.solamulticast.hsvf.v1.12.optiontype", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.previous_settlement = ProtoField.new("Previous Settlement", "tmx.mx.solamulticast.hsvf.v1.12.previoussettlement", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.previous_settlement_fraction_indicator = ProtoField.new("Previous Settlement Fraction Indicator", "tmx.mx.solamulticast.hsvf.v1.12.previoussettlementfractionindicator", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.previous_settlement_price = ProtoField.new("Previous Settlement Price", "tmx.mx.solamulticast.hsvf.v1.12.previoussettlementprice", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.previous_settlement_price_fraction_indicator = ProtoField.new("Previous Settlement Price Fraction Indicator", "tmx.mx.solamulticast.hsvf.v1.12.previoussettlementpricefractionindicator", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.price = ProtoField.new("Price", "tmx.mx.solamulticast.hsvf.v1.12.price", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.price_fraction_indicator = ProtoField.new("Price Fraction Indicator", "tmx.mx.solamulticast.hsvf.v1.12.pricefractionindicator", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.price_indicator_marker = ProtoField.new("Price Indicator Marker", "tmx.mx.solamulticast.hsvf.v1.12.priceindicatormarker", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.protocol = ProtoField.new("Protocol", "tmx.mx.solamulticast.hsvf.v1.12.protocol", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.pwd_1 = ProtoField.new("Pwd 1", "tmx.mx.solamulticast.hsvf.v1.12.pwd1", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.reason = ProtoField.new("Reason", "tmx.mx.solamulticast.hsvf.v1.12.reason", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.regular_bulletin_contents = ProtoField.new("Regular Bulletin Contents", "tmx.mx.solamulticast.hsvf.v1.12.regularbulletincontents", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.regular_text_bulletin = ProtoField.new("Regular Text Bulletin", "tmx.mx.solamulticast.hsvf.v1.12.regulartextbulletin", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.requested_market_side = ProtoField.new("Requested Market Side", "tmx.mx.solamulticast.hsvf.v1.12.requestedmarketside", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.requested_size = ProtoField.new("Requested Size", "tmx.mx.solamulticast.hsvf.v1.12.requestedsize", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.reserved = ProtoField.new("Reserved", "tmx.mx.solamulticast.hsvf.v1.12.reserved", ftypes.BYTES)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.root = ProtoField.new("Root", "tmx.mx.solamulticast.hsvf.v1.12.root", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.root_symbol = ProtoField.new("Root Symbol", "tmx.mx.solamulticast.hsvf.v1.12.rootsymbol", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scheduled_status_change_time = ProtoField.new("Scheduled Status Change Time", "tmx.mx.solamulticast.hsvf.v1.12.scheduledstatuschangetime", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.sequence_number = ProtoField.new("Sequence Number", "tmx.mx.solamulticast.hsvf.v1.12.sequencenumber", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.series_status = ProtoField.new("Series Status", "tmx.mx.solamulticast.hsvf.v1.12.seriesstatus", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.settlement_price = ProtoField.new("Settlement Price", "tmx.mx.solamulticast.hsvf.v1.12.settlementprice", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.settlement_price_fraction_indicator = ProtoField.new("Settlement Price Fraction Indicator", "tmx.mx.solamulticast.hsvf.v1.12.settlementpricefractionindicator", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.special_bulletin_contents = ProtoField.new("Special Bulletin Contents", "tmx.mx.solamulticast.hsvf.v1.12.specialbulletincontents", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.special_text_bulletin = ProtoField.new("Special Text Bulletin", "tmx.mx.solamulticast.hsvf.v1.12.specialtextbulletin", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.start = ProtoField.new("Start", "tmx.mx.solamulticast.hsvf.v1.12.start", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strategy_allow_implied = ProtoField.new("Strategy Allow Implied", "tmx.mx.solamulticast.hsvf.v1.12.strategyallowimplied", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strategy_code = ProtoField.new("Strategy Code", "tmx.mx.solamulticast.hsvf.v1.12.strategycode", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strategy_instrument_leg = ProtoField.new("Strategy Instrument Leg", "tmx.mx.solamulticast.hsvf.v1.12.strategyinstrumentleg", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strategy_market_depth_level = ProtoField.new("Strategy Market Depth Level", "tmx.mx.solamulticast.hsvf.v1.12.strategymarketdepthlevel", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strategy_symbol = ProtoField.new("Strategy Symbol", "tmx.mx.solamulticast.hsvf.v1.12.strategysymbol", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strike_price = ProtoField.new("Strike Price", "tmx.mx.solamulticast.hsvf.v1.12.strikeprice", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strike_price_currency = ProtoField.new("Strike Price Currency", "tmx.mx.solamulticast.hsvf.v1.12.strikepricecurrency", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strike_price_fraction_indicator = ProtoField.new("Strike Price Fraction Indicator", "tmx.mx.solamulticast.hsvf.v1.12.strikepricefractionindicator", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.symbol = ProtoField.new("Symbol", "tmx.mx.solamulticast.hsvf.v1.12.symbol", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.symbol_month = ProtoField.new("Symbol Month", "tmx.mx.solamulticast.hsvf.v1.12.symbolmonth", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.symbol_year = ProtoField.new("Symbol Year", "tmx.mx.solamulticast.hsvf.v1.12.symbolyear", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.tick = ProtoField.new("Tick", "tmx.mx.solamulticast.hsvf.v1.12.tick", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.tick_entry = ProtoField.new("Tick Entry", "tmx.mx.solamulticast.hsvf.v1.12.tickentry", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.tick_increment = ProtoField.new("Tick Increment", "tmx.mx.solamulticast.hsvf.v1.12.tickincrement", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.tick_increment_fraction_indicator = ProtoField.new("Tick Increment Fraction Indicator", "tmx.mx.solamulticast.hsvf.v1.12.tickincrementfractionindicator", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.tick_price = ProtoField.new("Tick Price", "tmx.mx.solamulticast.hsvf.v1.12.tickprice", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.tick_price_fraction_indicator = ProtoField.new("Tick Price Fraction Indicator", "tmx.mx.solamulticast.hsvf.v1.12.tickpricefractionindicator", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.tick_table_name = ProtoField.new("Tick Table Name", "tmx.mx.solamulticast.hsvf.v1.12.ticktablename", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.tick_table_short_name = ProtoField.new("Tick Table Short Name", "tmx.mx.solamulticast.hsvf.v1.12.ticktableshortname", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.tick_value = ProtoField.new("Tick Value", "tmx.mx.solamulticast.hsvf.v1.12.tickvalue", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.tick_value_fraction_indicator = ProtoField.new("Tick Value Fraction Indicator", "tmx.mx.solamulticast.hsvf.v1.12.tickvaluefractionindicator", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.time = ProtoField.new("Time", "tmx.mx.solamulticast.hsvf.v1.12.time", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.trade_number = ProtoField.new("Trade Number", "tmx.mx.solamulticast.hsvf.v1.12.tradenumber", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.trade_price = ProtoField.new("Trade Price", "tmx.mx.solamulticast.hsvf.v1.12.tradeprice", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.trade_price_fraction_indicator = ProtoField.new("Trade Price Fraction Indicator", "tmx.mx.solamulticast.hsvf.v1.12.tradepricefractionindicator", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.trade_price_sign = ProtoField.new("Trade Price Sign", "tmx.mx.solamulticast.hsvf.v1.12.tradepricesign", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.trade_timestamp = ProtoField.new("Trade Timestamp", "tmx.mx.solamulticast.hsvf.v1.12.tradetimestamp", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.underlying_root_symbol = ProtoField.new("Underlying Root Symbol", "tmx.mx.solamulticast.hsvf.v1.12.underlyingrootsymbol", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "tmx.mx.solamulticast.hsvf.v1.12.underlyingsymbol", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.underlying_symbol_month = ProtoField.new("Underlying Symbol Month", "tmx.mx.solamulticast.hsvf.v1.12.underlyingsymbolmonth", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.underlying_symbol_root = ProtoField.new("Underlying Symbol Root", "tmx.mx.solamulticast.hsvf.v1.12.underlyingsymbolroot", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.underlying_symbol_year = ProtoField.new("Underlying Symbol Year", "tmx.mx.solamulticast.hsvf.v1.12.underlyingsymbolyear", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.user_1 = ProtoField.new("User 1", "tmx.mx.solamulticast.hsvf.v1.12.user1", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.volume = ProtoField.new("Volume", "tmx.mx.solamulticast.hsvf.v1.12.volume", ftypes.STRING)

-- Tmx Mx SolaMulticast Hsvf 1.12 Framing
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.message_header = ProtoField.new("Message Header", "tmx.mx.solamulticast.hsvf.v1.12.messageheader", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.packet = ProtoField.new("Packet", "tmx.mx.solamulticast.hsvf.v1.12.packet", ftypes.STRING)

-- Tmx Mx SolaMulticast 1.12 Application Messages
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.beginning_of_future_options_summary_message = ProtoField.new("Beginning Of Future Options Summary Message", "tmx.mx.solamulticast.hsvf.v1.12.beginningoffutureoptionssummarymessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.beginning_of_futures_summary_message = ProtoField.new("Beginning Of Futures Summary Message", "tmx.mx.solamulticast.hsvf.v1.12.beginningoffuturessummarymessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.beginning_of_options_summary_message = ProtoField.new("Beginning Of Options Summary Message", "tmx.mx.solamulticast.hsvf.v1.12.beginningofoptionssummarymessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.beginning_of_strategy_summary_message = ProtoField.new("Beginning Of Strategy Summary Message", "tmx.mx.solamulticast.hsvf.v1.12.beginningofstrategysummarymessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.bulletins_message = ProtoField.new("Bulletins Message", "tmx.mx.solamulticast.hsvf.v1.12.bulletinsmessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.circuit_assurance_message = ProtoField.new("Circuit Assurance Message", "tmx.mx.solamulticast.hsvf.v1.12.circuitassurancemessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.end_of_sales_message = ProtoField.new("End Of Sales Message", "tmx.mx.solamulticast.hsvf.v1.12.endofsalesmessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.end_of_transmission_message = ProtoField.new("End Of Transmission Message", "tmx.mx.solamulticast.hsvf.v1.12.endoftransmissionmessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.error_message_message = ProtoField.new("Error Message Message", "tmx.mx.solamulticast.hsvf.v1.12.errormessagemessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.future_options_instrument_keys_message = ProtoField.new("Future Options Instrument Keys Message", "tmx.mx.solamulticast.hsvf.v1.12.futureoptionsinstrumentkeysmessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.future_options_market_depth_message = ProtoField.new("Future Options Market Depth Message", "tmx.mx.solamulticast.hsvf.v1.12.futureoptionsmarketdepthmessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.future_options_quote_message = ProtoField.new("Future Options Quote Message", "tmx.mx.solamulticast.hsvf.v1.12.futureoptionsquotemessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.future_options_request_for_quote_rfq_message = ProtoField.new("Future Options Request For Quote Rfq Message", "tmx.mx.solamulticast.hsvf.v1.12.futureoptionsrequestforquoterfqmessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.future_options_summary_message = ProtoField.new("Future Options Summary Message", "tmx.mx.solamulticast.hsvf.v1.12.futureoptionssummarymessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.future_options_trade_cancellation_message = ProtoField.new("Future Options Trade Cancellation Message", "tmx.mx.solamulticast.hsvf.v1.12.futureoptionstradecancellationmessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.future_options_trade_message = ProtoField.new("Future Options Trade Message", "tmx.mx.solamulticast.hsvf.v1.12.futureoptionstrademessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.futures_instrument_keys_message = ProtoField.new("Futures Instrument Keys Message", "tmx.mx.solamulticast.hsvf.v1.12.futuresinstrumentkeysmessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.futures_market_depth_message = ProtoField.new("Futures Market Depth Message", "tmx.mx.solamulticast.hsvf.v1.12.futuresmarketdepthmessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.futures_quote_message = ProtoField.new("Futures Quote Message", "tmx.mx.solamulticast.hsvf.v1.12.futuresquotemessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.futures_request_for_quote_rfq_message = ProtoField.new("Futures Request For Quote Rfq Message", "tmx.mx.solamulticast.hsvf.v1.12.futuresrequestforquoterfqmessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.futures_summary_message = ProtoField.new("Futures Summary Message", "tmx.mx.solamulticast.hsvf.v1.12.futuressummarymessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.futures_trade_cancellation_message = ProtoField.new("Futures Trade Cancellation Message", "tmx.mx.solamulticast.hsvf.v1.12.futurestradecancellationmessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.futures_trade_correction_message = ProtoField.new("Futures Trade Correction Message", "tmx.mx.solamulticast.hsvf.v1.12.futurestradecorrectionmessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.futures_trade_message = ProtoField.new("Futures Trade Message", "tmx.mx.solamulticast.hsvf.v1.12.futurestrademessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.group_status_message = ProtoField.new("Group Status Message", "tmx.mx.solamulticast.hsvf.v1.12.groupstatusmessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.group_status_strategies_message = ProtoField.new("Group Status Strategies Message", "tmx.mx.solamulticast.hsvf.v1.12.groupstatusstrategiesmessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.instrument_schedule_notice_future_message = ProtoField.new("Instrument Schedule Notice Future Message", "tmx.mx.solamulticast.hsvf.v1.12.instrumentschedulenoticefuturemessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.instrument_schedule_notice_futures_option_message = ProtoField.new("Instrument Schedule Notice Futures Option Message", "tmx.mx.solamulticast.hsvf.v1.12.instrumentschedulenoticefuturesoptionmessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.instrument_schedule_notice_option_message = ProtoField.new("Instrument Schedule Notice Option Message", "tmx.mx.solamulticast.hsvf.v1.12.instrumentschedulenoticeoptionmessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.instrument_schedule_notice_strategy_message = ProtoField.new("Instrument Schedule Notice Strategy Message", "tmx.mx.solamulticast.hsvf.v1.12.instrumentschedulenoticestrategymessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.login_acknowledgement_message = ProtoField.new("Login Acknowledgement Message", "tmx.mx.solamulticast.hsvf.v1.12.loginacknowledgementmessage", ftypes.BYTES)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.login_message = ProtoField.new("Login Message", "tmx.mx.solamulticast.hsvf.v1.12.loginmessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.logout_acknowledgement_message = ProtoField.new("Logout Acknowledgement Message", "tmx.mx.solamulticast.hsvf.v1.12.logoutacknowledgementmessage", ftypes.BYTES)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.logout_message = ProtoField.new("Logout Message", "tmx.mx.solamulticast.hsvf.v1.12.logoutmessage", ftypes.BYTES)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.option_instrument_keys_message = ProtoField.new("Option Instrument Keys Message", "tmx.mx.solamulticast.hsvf.v1.12.optioninstrumentkeysmessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.option_market_depth_message = ProtoField.new("Option Market Depth Message", "tmx.mx.solamulticast.hsvf.v1.12.optionmarketdepthmessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.option_quote_message = ProtoField.new("Option Quote Message", "tmx.mx.solamulticast.hsvf.v1.12.optionquotemessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.option_request_for_quote_rfq_message = ProtoField.new("Option Request For Quote Rfq Message", "tmx.mx.solamulticast.hsvf.v1.12.optionrequestforquoterfqmessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.option_summary_message = ProtoField.new("Option Summary Message", "tmx.mx.solamulticast.hsvf.v1.12.optionsummarymessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.option_trade_cancellation_message = ProtoField.new("Option Trade Cancellation Message", "tmx.mx.solamulticast.hsvf.v1.12.optiontradecancellationmessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.option_trade_message = ProtoField.new("Option Trade Message", "tmx.mx.solamulticast.hsvf.v1.12.optiontrademessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.retransmission_begin_message = ProtoField.new("Retransmission Begin Message", "tmx.mx.solamulticast.hsvf.v1.12.retransmissionbeginmessage", ftypes.BYTES)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.retransmission_end_message = ProtoField.new("Retransmission End Message", "tmx.mx.solamulticast.hsvf.v1.12.retransmissionendmessage", ftypes.BYTES)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "tmx.mx.solamulticast.hsvf.v1.12.retransmissionrequestmessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strategy_instrument_keys_message = ProtoField.new("Strategy Instrument Keys Message", "tmx.mx.solamulticast.hsvf.v1.12.strategyinstrumentkeysmessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strategy_market_depth_message = ProtoField.new("Strategy Market Depth Message", "tmx.mx.solamulticast.hsvf.v1.12.strategymarketdepthmessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strategy_quote_message = ProtoField.new("Strategy Quote Message", "tmx.mx.solamulticast.hsvf.v1.12.strategyquotemessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strategy_request_for_quote_rfq_message = ProtoField.new("Strategy Request For Quote Rfq Message", "tmx.mx.solamulticast.hsvf.v1.12.strategyrequestforquoterfqmessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strategy_summary_message = ProtoField.new("Strategy Summary Message", "tmx.mx.solamulticast.hsvf.v1.12.strategysummarymessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strategy_trade_cancellation_message = ProtoField.new("Strategy Trade Cancellation Message", "tmx.mx.solamulticast.hsvf.v1.12.strategytradecancellationmessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strategy_trade_message = ProtoField.new("Strategy Trade Message", "tmx.mx.solamulticast.hsvf.v1.12.strategytrademessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.tick_table_message = ProtoField.new("Tick Table Message", "tmx.mx.solamulticast.hsvf.v1.12.ticktablemessage", ftypes.STRING)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.underlying_instrument_keys_message = ProtoField.new("Underlying Instrument Keys Message", "tmx.mx.solamulticast.hsvf.v1.12.underlyinginstrumentkeysmessage", ftypes.STRING)

-- Tmx Mx SolaMulticast Hsvf 1.12 Generated Fields
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.market_depth_level_index = ProtoField.new("Market Depth Level Index", "tmx.mx.solamulticast.hsvf.v1.12.marketdepthlevelindex", ftypes.UINT16)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strategy_instrument_leg_index = ProtoField.new("Strategy Instrument Leg Index", "tmx.mx.solamulticast.hsvf.v1.12.strategyinstrumentlegindex", ftypes.UINT16)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strategy_market_depth_level_index = ProtoField.new("Strategy Market Depth Level Index", "tmx.mx.solamulticast.hsvf.v1.12.strategymarketdepthlevelindex", ftypes.UINT16)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.tick_entry_index = ProtoField.new("Tick Entry Index", "tmx.mx.solamulticast.hsvf.v1.12.tickentryindex", ftypes.UINT16)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_ask_price_quote = ProtoField.new("Scaled Ask Price Quote", "tmx.mx.solamulticast.hsvf.v1.12.scaledaskpricequote", ftypes.DOUBLE)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_ask_price_summary = ProtoField.new("Scaled Ask Price Summary", "tmx.mx.solamulticast.hsvf.v1.12.scaledaskpricesummary", ftypes.DOUBLE)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_bid_price_quote = ProtoField.new("Scaled Bid Price Quote", "tmx.mx.solamulticast.hsvf.v1.12.scaledbidpricequote", ftypes.DOUBLE)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_bid_price_summary = ProtoField.new("Scaled Bid Price Summary", "tmx.mx.solamulticast.hsvf.v1.12.scaledbidpricesummary", ftypes.DOUBLE)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_external_price_at_source = ProtoField.new("Scaled External Price At Source", "tmx.mx.solamulticast.hsvf.v1.12.scaledexternalpriceatsource", ftypes.DOUBLE)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_high_price = ProtoField.new("Scaled High Price", "tmx.mx.solamulticast.hsvf.v1.12.scaledhighprice", ftypes.DOUBLE)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_last_price = ProtoField.new("Scaled Last Price", "tmx.mx.solamulticast.hsvf.v1.12.scaledlastprice", ftypes.DOUBLE)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_low_price = ProtoField.new("Scaled Low Price", "tmx.mx.solamulticast.hsvf.v1.12.scaledlowprice", ftypes.DOUBLE)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_maximum_threshold_price = ProtoField.new("Scaled Maximum Threshold Price", "tmx.mx.solamulticast.hsvf.v1.12.scaledmaximumthresholdprice", ftypes.DOUBLE)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_min_price = ProtoField.new("Scaled Min Price", "tmx.mx.solamulticast.hsvf.v1.12.scaledminprice", ftypes.DOUBLE)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_minimum_threshold_price = ProtoField.new("Scaled Minimum Threshold Price", "tmx.mx.solamulticast.hsvf.v1.12.scaledminimumthresholdprice", ftypes.DOUBLE)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_net_change = ProtoField.new("Scaled Net Change", "tmx.mx.solamulticast.hsvf.v1.12.scalednetchange", ftypes.DOUBLE)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_open_price = ProtoField.new("Scaled Open Price", "tmx.mx.solamulticast.hsvf.v1.12.scaledopenprice", ftypes.DOUBLE)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_opening_price = ProtoField.new("Scaled Opening Price", "tmx.mx.solamulticast.hsvf.v1.12.scaledopeningprice", ftypes.DOUBLE)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_previous_settlement = ProtoField.new("Scaled Previous Settlement", "tmx.mx.solamulticast.hsvf.v1.12.scaledprevioussettlement", ftypes.DOUBLE)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_previous_settlement_price = ProtoField.new("Scaled Previous Settlement Price", "tmx.mx.solamulticast.hsvf.v1.12.scaledprevioussettlementprice", ftypes.DOUBLE)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_price = ProtoField.new("Scaled Price", "tmx.mx.solamulticast.hsvf.v1.12.scaledprice", ftypes.DOUBLE)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_settlement_price = ProtoField.new("Scaled Settlement Price", "tmx.mx.solamulticast.hsvf.v1.12.scaledsettlementprice", ftypes.DOUBLE)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_strike_price = ProtoField.new("Scaled Strike Price", "tmx.mx.solamulticast.hsvf.v1.12.scaledstrikeprice", ftypes.DOUBLE)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_tick_increment = ProtoField.new("Scaled Tick Increment", "tmx.mx.solamulticast.hsvf.v1.12.scaledtickincrement", ftypes.DOUBLE)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_tick_price = ProtoField.new("Scaled Tick Price", "tmx.mx.solamulticast.hsvf.v1.12.scaledtickprice", ftypes.DOUBLE)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_tick_value = ProtoField.new("Scaled Tick Value", "tmx.mx.solamulticast.hsvf.v1.12.scaledtickvalue", ftypes.DOUBLE)
omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_trade_price = ProtoField.new("Scaled Trade Price", "tmx.mx.solamulticast.hsvf.v1.12.scaledtradeprice", ftypes.DOUBLE)

-----------------------------------------------------------------------
-- Tmx Mx SolaMulticast Hsvf 1.12 Formatting
-----------------------------------------------------------------------

-- Scaled Strike Price format (true = decimal-scaled, false = raw mantissa)
tmx_mx_solamulticast_hsvf_v1_12.format_decimals = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Tmx Mx SolaMulticast Hsvf 1.12 Element Dissection Options
show.structs = true
show.application_messages = true
show.repeating_groups = true
show.headers = true
show.indexes = true

-- Register Tmx Mx SolaMulticast Hsvf 1.12 Show Options
omi_tmx_mx_solamulticast_hsvf_v1_12.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_tmx_mx_solamulticast_hsvf_v1_12.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_tmx_mx_solamulticast_hsvf_v1_12.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_tmx_mx_solamulticast_hsvf_v1_12.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_tmx_mx_solamulticast_hsvf_v1_12.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_tmx_mx_solamulticast_hsvf_v1_12.prefs.format_decimals = Pref.bool("Format Decimals", true, "Format decimal-scaled fields as scaled values (off = raw mantissa)")

-- Handle changed preferences
function omi_tmx_mx_solamulticast_hsvf_v1_12.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_tmx_mx_solamulticast_hsvf_v1_12.prefs.show_application_messages then
    show.application_messages = omi_tmx_mx_solamulticast_hsvf_v1_12.prefs.show_application_messages
  end
  if show.headers ~= omi_tmx_mx_solamulticast_hsvf_v1_12.prefs.show_headers then
    show.headers = omi_tmx_mx_solamulticast_hsvf_v1_12.prefs.show_headers
  end
  if show.repeating_groups ~= omi_tmx_mx_solamulticast_hsvf_v1_12.prefs.show_repeating_groups then
    show.repeating_groups = omi_tmx_mx_solamulticast_hsvf_v1_12.prefs.show_repeating_groups
  end
  if show.structs ~= omi_tmx_mx_solamulticast_hsvf_v1_12.prefs.show_structs then
    show.structs = omi_tmx_mx_solamulticast_hsvf_v1_12.prefs.show_structs
  end
  if show.indexes ~= omi_tmx_mx_solamulticast_hsvf_v1_12.prefs.show_indexes then
    show.indexes = omi_tmx_mx_solamulticast_hsvf_v1_12.prefs.show_indexes
  end
  if tmx_mx_solamulticast_hsvf_v1_12.format_decimals ~= omi_tmx_mx_solamulticast_hsvf_v1_12.prefs.format_decimals then
    tmx_mx_solamulticast_hsvf_v1_12.format_decimals = omi_tmx_mx_solamulticast_hsvf_v1_12.prefs.format_decimals
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


-----------------------------------------------------------------------
-- Tmx Mx SolaMulticast Hsvf 1.12 Fields
-----------------------------------------------------------------------

-- Ask Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.ask_price_fraction_indicator = {}

-- Size: Ask Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.ask_price_fraction_indicator.size = 1

-- Display: Ask Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.ask_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "Ask Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Ask Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Ask Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Ask Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Ask Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Ask Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Ask Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Ask Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Ask Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Ask Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Ask Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Ask Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Ask Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Ask Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Ask Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Ask Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Ask Price Fraction Indicator: Negative Million (G)"
  end

  return "Ask Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Ask Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.ask_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.ask_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.ask_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.ask_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Ask Price Quote
tmx_mx_solamulticast_hsvf_v1_12.ask_price_quote = {}

-- Size: Ask Price Quote
tmx_mx_solamulticast_hsvf_v1_12.ask_price_quote.size = 7

-- Display: Ask Price Quote
tmx_mx_solamulticast_hsvf_v1_12.ask_price_quote.display = function(value)
  return "Ask Price Quote: "..value
end

-- Dissect: Ask Price Quote
tmx_mx_solamulticast_hsvf_v1_12.ask_price_quote.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.ask_price_quote.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.ask_price_quote.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.ask_price_quote, range, value, display)

  return offset + length, value
end

-- Ask Price Sign
tmx_mx_solamulticast_hsvf_v1_12.ask_price_sign = {}

-- Size: Ask Price Sign
tmx_mx_solamulticast_hsvf_v1_12.ask_price_sign.size = 1

-- Display: Ask Price Sign
tmx_mx_solamulticast_hsvf_v1_12.ask_price_sign.display = function(value)
  return "Ask Price Sign: "..value
end

-- Dissect: Ask Price Sign
tmx_mx_solamulticast_hsvf_v1_12.ask_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.ask_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.ask_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.ask_price_sign, range, value, display)

  return offset + length, value
end

-- Ask Price Summary
tmx_mx_solamulticast_hsvf_v1_12.ask_price_summary = {}

-- Size: Ask Price Summary
tmx_mx_solamulticast_hsvf_v1_12.ask_price_summary.size = 7

-- Display: Ask Price Summary
tmx_mx_solamulticast_hsvf_v1_12.ask_price_summary.display = function(value)
  return "Ask Price Summary: "..value
end

-- Dissect: Ask Price Summary
tmx_mx_solamulticast_hsvf_v1_12.ask_price_summary.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.ask_price_summary.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.ask_price_summary.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.ask_price_summary, range, value, display)

  return offset + length, value
end

-- Ask Size
tmx_mx_solamulticast_hsvf_v1_12.ask_size = {}

-- Size: Ask Size
tmx_mx_solamulticast_hsvf_v1_12.ask_size.size = 5

-- Display: Ask Size
tmx_mx_solamulticast_hsvf_v1_12.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
tmx_mx_solamulticast_hsvf_v1_12.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.ask_size.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Bid Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.bid_price_fraction_indicator = {}

-- Size: Bid Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.bid_price_fraction_indicator.size = 1

-- Display: Bid Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.bid_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "Bid Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Bid Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Bid Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Bid Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Bid Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Bid Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Bid Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Bid Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Bid Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Bid Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Bid Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Bid Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Bid Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Bid Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Bid Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Bid Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Bid Price Fraction Indicator: Negative Million (G)"
  end

  return "Bid Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Bid Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.bid_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.bid_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.bid_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.bid_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Bid Price Quote
tmx_mx_solamulticast_hsvf_v1_12.bid_price_quote = {}

-- Size: Bid Price Quote
tmx_mx_solamulticast_hsvf_v1_12.bid_price_quote.size = 7

-- Display: Bid Price Quote
tmx_mx_solamulticast_hsvf_v1_12.bid_price_quote.display = function(value)
  return "Bid Price Quote: "..value
end

-- Dissect: Bid Price Quote
tmx_mx_solamulticast_hsvf_v1_12.bid_price_quote.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.bid_price_quote.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.bid_price_quote.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.bid_price_quote, range, value, display)

  return offset + length, value
end

-- Bid Price Sign
tmx_mx_solamulticast_hsvf_v1_12.bid_price_sign = {}

-- Size: Bid Price Sign
tmx_mx_solamulticast_hsvf_v1_12.bid_price_sign.size = 1

-- Display: Bid Price Sign
tmx_mx_solamulticast_hsvf_v1_12.bid_price_sign.display = function(value)
  return "Bid Price Sign: "..value
end

-- Dissect: Bid Price Sign
tmx_mx_solamulticast_hsvf_v1_12.bid_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.bid_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.bid_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.bid_price_sign, range, value, display)

  return offset + length, value
end

-- Bid Price Summary
tmx_mx_solamulticast_hsvf_v1_12.bid_price_summary = {}

-- Size: Bid Price Summary
tmx_mx_solamulticast_hsvf_v1_12.bid_price_summary.size = 7

-- Display: Bid Price Summary
tmx_mx_solamulticast_hsvf_v1_12.bid_price_summary.display = function(value)
  return "Bid Price Summary: "..value
end

-- Dissect: Bid Price Summary
tmx_mx_solamulticast_hsvf_v1_12.bid_price_summary.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.bid_price_summary.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.bid_price_summary.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.bid_price_summary, range, value, display)

  return offset + length, value
end

-- Bid Size
tmx_mx_solamulticast_hsvf_v1_12.bid_size = {}

-- Size: Bid Size
tmx_mx_solamulticast_hsvf_v1_12.bid_size.size = 5

-- Display: Bid Size
tmx_mx_solamulticast_hsvf_v1_12.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
tmx_mx_solamulticast_hsvf_v1_12.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.bid_size.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Bulletin Type
tmx_mx_solamulticast_hsvf_v1_12.bulletin_type = {}

-- Size: Bulletin Type
tmx_mx_solamulticast_hsvf_v1_12.bulletin_type.size = 1

-- Display: Bulletin Type
tmx_mx_solamulticast_hsvf_v1_12.bulletin_type.display = function(value)
  return "Bulletin Type: "..value
end

-- Dissect: Bulletin Type
tmx_mx_solamulticast_hsvf_v1_12.bulletin_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.bulletin_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.bulletin_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.bulletin_type, range, value, display)

  return offset + length, value
end

-- Call Put Code
tmx_mx_solamulticast_hsvf_v1_12.call_put_code = {}

-- Size: Call Put Code
tmx_mx_solamulticast_hsvf_v1_12.call_put_code.size = 1

-- Display: Call Put Code
tmx_mx_solamulticast_hsvf_v1_12.call_put_code.display = function(value)
  return "Call Put Code: "..value
end

-- Dissect: Call Put Code
tmx_mx_solamulticast_hsvf_v1_12.call_put_code.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.call_put_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.call_put_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.call_put_code, range, value, display)

  return offset + length, value
end

-- Continue Marker
tmx_mx_solamulticast_hsvf_v1_12.continue_marker = {}

-- Size: Continue Marker
tmx_mx_solamulticast_hsvf_v1_12.continue_marker.size = 1

-- Display: Continue Marker
tmx_mx_solamulticast_hsvf_v1_12.continue_marker.display = function(value)
  return "Continue Marker: "..value
end

-- Dissect: Continue Marker
tmx_mx_solamulticast_hsvf_v1_12.continue_marker.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.continue_marker.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.continue_marker.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.continue_marker, range, value, display)

  return offset + length, value
end

-- Contract Size
tmx_mx_solamulticast_hsvf_v1_12.contract_size = {}

-- Size: Contract Size
tmx_mx_solamulticast_hsvf_v1_12.contract_size.size = 8

-- Display: Contract Size
tmx_mx_solamulticast_hsvf_v1_12.contract_size.display = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
tmx_mx_solamulticast_hsvf_v1_12.contract_size.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.contract_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.contract_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.contract_size, range, value, display)

  return offset + length, value
end

-- Currency
tmx_mx_solamulticast_hsvf_v1_12.currency = {}

-- Size: Currency
tmx_mx_solamulticast_hsvf_v1_12.currency.size = 3

-- Display: Currency
tmx_mx_solamulticast_hsvf_v1_12.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
tmx_mx_solamulticast_hsvf_v1_12.currency.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solamulticast_hsvf_v1_12.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.currency, range, value, display)

  return offset + length, value
end

-- Delivery Type
tmx_mx_solamulticast_hsvf_v1_12.delivery_type = {}

-- Size: Delivery Type
tmx_mx_solamulticast_hsvf_v1_12.delivery_type.size = 1

-- Display: Delivery Type
tmx_mx_solamulticast_hsvf_v1_12.delivery_type.display = function(value)
  return "Delivery Type: "..value
end

-- Dissect: Delivery Type
tmx_mx_solamulticast_hsvf_v1_12.delivery_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.delivery_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.delivery_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.delivery_type, range, value, display)

  return offset + length, value
end

-- End
tmx_mx_solamulticast_hsvf_v1_12.end_ = {}

-- Size: End
tmx_mx_solamulticast_hsvf_v1_12.end_.size = 9

-- Display: End
tmx_mx_solamulticast_hsvf_v1_12.end_.display = function(value)
  return "End: "..value
end

-- Dissect: End
tmx_mx_solamulticast_hsvf_v1_12.end_.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.end_.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.end_.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.end_, range, value, display)

  return offset + length, value
end

-- Error Code
tmx_mx_solamulticast_hsvf_v1_12.error_code = {}

-- Size: Error Code
tmx_mx_solamulticast_hsvf_v1_12.error_code.size = 4

-- Display: Error Code
tmx_mx_solamulticast_hsvf_v1_12.error_code.display = function(value)
  return "Error Code: "..value
end

-- Dissect: Error Code
tmx_mx_solamulticast_hsvf_v1_12.error_code.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.error_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.error_code, range, value, display)

  return offset + length, value
end

-- Error Msg
tmx_mx_solamulticast_hsvf_v1_12.error_msg = {}

-- Size: Error Msg
tmx_mx_solamulticast_hsvf_v1_12.error_msg.size = 80

-- Display: Error Msg
tmx_mx_solamulticast_hsvf_v1_12.error_msg.display = function(value)
  return "Error Msg: "..value
end

-- Dissect: Error Msg
tmx_mx_solamulticast_hsvf_v1_12.error_msg.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.error_msg.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.error_msg.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.error_msg, range, value, display)

  return offset + length, value
end

-- Exchange Id
tmx_mx_solamulticast_hsvf_v1_12.exchange_id = {}

-- Size: Exchange Id
tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size = 1

-- Display: Exchange Id
tmx_mx_solamulticast_hsvf_v1_12.exchange_id.display = function(value)
  return "Exchange Id: "..value
end

-- Dissect: Exchange Id
tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.exchange_id, range, value, display)

  return offset + length, value
end

-- Expiry Date
tmx_mx_solamulticast_hsvf_v1_12.expiry_date = {}

-- Size: Expiry Date
tmx_mx_solamulticast_hsvf_v1_12.expiry_date.size = 6

-- Display: Expiry Date
tmx_mx_solamulticast_hsvf_v1_12.expiry_date.display = function(value)
  return "Expiry Date: "..value
end

-- Dissect: Expiry Date
tmx_mx_solamulticast_hsvf_v1_12.expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.expiry_date.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.expiry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.expiry_date, range, value, display)

  return offset + length, value
end

-- Expiry Day
tmx_mx_solamulticast_hsvf_v1_12.expiry_day = {}

-- Size: Expiry Day
tmx_mx_solamulticast_hsvf_v1_12.expiry_day.size = 2

-- Display: Expiry Day
tmx_mx_solamulticast_hsvf_v1_12.expiry_day.display = function(value)
  return "Expiry Day: "..value
end

-- Dissect: Expiry Day
tmx_mx_solamulticast_hsvf_v1_12.expiry_day.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.expiry_day.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.expiry_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.expiry_day, range, value, display)

  return offset + length, value
end

-- Expiry Month
tmx_mx_solamulticast_hsvf_v1_12.expiry_month = {}

-- Size: Expiry Month
tmx_mx_solamulticast_hsvf_v1_12.expiry_month.size = 1

-- Display: Expiry Month
tmx_mx_solamulticast_hsvf_v1_12.expiry_month.display = function(value)
  return "Expiry Month: "..value
end

-- Dissect: Expiry Month
tmx_mx_solamulticast_hsvf_v1_12.expiry_month.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.expiry_month.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.expiry_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.expiry_month, range, value, display)

  return offset + length, value
end

-- Expiry Year
tmx_mx_solamulticast_hsvf_v1_12.expiry_year = {}

-- Size: Expiry Year
tmx_mx_solamulticast_hsvf_v1_12.expiry_year.size = 2

-- Display: Expiry Year
tmx_mx_solamulticast_hsvf_v1_12.expiry_year.display = function(value)
  return "Expiry Year: "..value
end

-- Dissect: Expiry Year
tmx_mx_solamulticast_hsvf_v1_12.expiry_year.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.expiry_year.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.expiry_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.expiry_year, range, value, display)

  return offset + length, value
end

-- External Price At Source
tmx_mx_solamulticast_hsvf_v1_12.external_price_at_source = {}

-- Size: External Price At Source
tmx_mx_solamulticast_hsvf_v1_12.external_price_at_source.size = 7

-- Display: External Price At Source
tmx_mx_solamulticast_hsvf_v1_12.external_price_at_source.display = function(value)
  return "External Price At Source: "..value
end

-- Dissect: External Price At Source
tmx_mx_solamulticast_hsvf_v1_12.external_price_at_source.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.external_price_at_source.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.external_price_at_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.external_price_at_source, range, value, display)

  return offset + length, value
end

-- External Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.external_price_fraction_indicator = {}

-- Size: External Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.external_price_fraction_indicator.size = 1

-- Display: External Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.external_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "External Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "External Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "External Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "External Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "External Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "External Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "External Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "External Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "External Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "External Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "External Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "External Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "External Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "External Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "External Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "External Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "External Price Fraction Indicator: Negative Million (G)"
  end

  return "External Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: External Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.external_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.external_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.external_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.external_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Filler 1
tmx_mx_solamulticast_hsvf_v1_12.filler_1 = {}

-- Size: Filler 1
tmx_mx_solamulticast_hsvf_v1_12.filler_1.size = 1

-- Display: Filler 1
tmx_mx_solamulticast_hsvf_v1_12.filler_1.display = function(value)
  return "Filler 1: "..value
end

-- Dissect: Filler 1
tmx_mx_solamulticast_hsvf_v1_12.filler_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.filler_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tmx_mx_solamulticast_hsvf_v1_12.filler_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.filler_1, range, value, display)

  return offset + length, value
end

-- Filler 2
tmx_mx_solamulticast_hsvf_v1_12.filler_2 = {}

-- Size: Filler 2
tmx_mx_solamulticast_hsvf_v1_12.filler_2.size = 2

-- Display: Filler 2
tmx_mx_solamulticast_hsvf_v1_12.filler_2.display = function(value)
  return "Filler 2: "..value
end

-- Dissect: Filler 2
tmx_mx_solamulticast_hsvf_v1_12.filler_2.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.filler_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tmx_mx_solamulticast_hsvf_v1_12.filler_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.filler_2, range, value, display)

  return offset + length, value
end

-- Filler 6
tmx_mx_solamulticast_hsvf_v1_12.filler_6 = {}

-- Size: Filler 6
tmx_mx_solamulticast_hsvf_v1_12.filler_6.size = 6

-- Display: Filler 6
tmx_mx_solamulticast_hsvf_v1_12.filler_6.display = function(value)
  return "Filler 6: "..value
end

-- Dissect: Filler 6
tmx_mx_solamulticast_hsvf_v1_12.filler_6.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.filler_6.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tmx_mx_solamulticast_hsvf_v1_12.filler_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.filler_6, range, value, display)

  return offset + length, value
end

-- Group Instrument
tmx_mx_solamulticast_hsvf_v1_12.group_instrument = {}

-- Size: Group Instrument
tmx_mx_solamulticast_hsvf_v1_12.group_instrument.size = 2

-- Display: Group Instrument
tmx_mx_solamulticast_hsvf_v1_12.group_instrument.display = function(value)
  return "Group Instrument: "..value
end

-- Dissect: Group Instrument
tmx_mx_solamulticast_hsvf_v1_12.group_instrument.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.group_instrument.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.group_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.group_instrument, range, value, display)

  return offset + length, value
end

-- Group Status
tmx_mx_solamulticast_hsvf_v1_12.group_status = {}

-- Size: Group Status
tmx_mx_solamulticast_hsvf_v1_12.group_status.size = 1

-- Display: Group Status
tmx_mx_solamulticast_hsvf_v1_12.group_status.display = function(value)
  return "Group Status: "..value
end

-- Dissect: Group Status
tmx_mx_solamulticast_hsvf_v1_12.group_status.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.group_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.group_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.group_status, range, value, display)

  return offset + length, value
end

-- High Price
tmx_mx_solamulticast_hsvf_v1_12.high_price = {}

-- Size: High Price
tmx_mx_solamulticast_hsvf_v1_12.high_price.size = 7

-- Display: High Price
tmx_mx_solamulticast_hsvf_v1_12.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
tmx_mx_solamulticast_hsvf_v1_12.high_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.high_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.high_price, range, value, display)

  return offset + length, value
end

-- High Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.high_price_fraction_indicator = {}

-- Size: High Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.high_price_fraction_indicator.size = 1

-- Display: High Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.high_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "High Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "High Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "High Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "High Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "High Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "High Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "High Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "High Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "High Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "High Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "High Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "High Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "High Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "High Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "High Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "High Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "High Price Fraction Indicator: Negative Million (G)"
  end

  return "High Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: High Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.high_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.high_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.high_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.high_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- High Price Sign
tmx_mx_solamulticast_hsvf_v1_12.high_price_sign = {}

-- Size: High Price Sign
tmx_mx_solamulticast_hsvf_v1_12.high_price_sign.size = 1

-- Display: High Price Sign
tmx_mx_solamulticast_hsvf_v1_12.high_price_sign.display = function(value)
  return "High Price Sign: "..value
end

-- Dissect: High Price Sign
tmx_mx_solamulticast_hsvf_v1_12.high_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.high_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.high_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.high_price_sign, range, value, display)

  return offset + length, value
end

-- Hsvf Etx
tmx_mx_solamulticast_hsvf_v1_12.hsvf_etx = {}

-- Size: Hsvf Etx
tmx_mx_solamulticast_hsvf_v1_12.hsvf_etx.size = 1

-- Display: Hsvf Etx
tmx_mx_solamulticast_hsvf_v1_12.hsvf_etx.display = function(value)
  return "Hsvf Etx: "..value
end

-- Dissect: Hsvf Etx
tmx_mx_solamulticast_hsvf_v1_12.hsvf_etx.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.hsvf_etx.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = tmx_mx_solamulticast_hsvf_v1_12.hsvf_etx.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.hsvf_etx, range, value, display)

  return offset + length, value
end

-- Hsvf Stx
tmx_mx_solamulticast_hsvf_v1_12.hsvf_stx = {}

-- Size: Hsvf Stx
tmx_mx_solamulticast_hsvf_v1_12.hsvf_stx.size = 1

-- Display: Hsvf Stx
tmx_mx_solamulticast_hsvf_v1_12.hsvf_stx.display = function(value)
  if value == 2 then
    return "Hsvf Stx: Stx"
  end

  return "Hsvf Stx: Unknown("..value..")"
end

-- Dissect: Hsvf Stx
tmx_mx_solamulticast_hsvf_v1_12.hsvf_stx.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.hsvf_stx.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = tmx_mx_solamulticast_hsvf_v1_12.hsvf_stx.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.hsvf_stx, range, value, display)

  return offset + length, value
end

-- Instrument
tmx_mx_solamulticast_hsvf_v1_12.instrument = {}

-- Size: Instrument
tmx_mx_solamulticast_hsvf_v1_12.instrument.size = 4

-- Display: Instrument
tmx_mx_solamulticast_hsvf_v1_12.instrument.display = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
tmx_mx_solamulticast_hsvf_v1_12.instrument.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.instrument.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.instrument, range, value, display)

  return offset + length, value
end

-- Instrument External Code
tmx_mx_solamulticast_hsvf_v1_12.instrument_external_code = {}

-- Size: Instrument External Code
tmx_mx_solamulticast_hsvf_v1_12.instrument_external_code.size = 30

-- Display: Instrument External Code
tmx_mx_solamulticast_hsvf_v1_12.instrument_external_code.display = function(value)
  return "Instrument External Code: "..value
end

-- Dissect: Instrument External Code
tmx_mx_solamulticast_hsvf_v1_12.instrument_external_code.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.instrument_external_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.instrument_external_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.instrument_external_code, range, value, display)

  return offset + length, value
end

-- Instrument Status Marker
tmx_mx_solamulticast_hsvf_v1_12.instrument_status_marker = {}

-- Size: Instrument Status Marker
tmx_mx_solamulticast_hsvf_v1_12.instrument_status_marker.size = 1

-- Display: Instrument Status Marker
tmx_mx_solamulticast_hsvf_v1_12.instrument_status_marker.display = function(value)
  return "Instrument Status Marker: "..value
end

-- Dissect: Instrument Status Marker
tmx_mx_solamulticast_hsvf_v1_12.instrument_status_marker.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.instrument_status_marker.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.instrument_status_marker.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.instrument_status_marker, range, value, display)

  return offset + length, value
end

-- Last Price
tmx_mx_solamulticast_hsvf_v1_12.last_price = {}

-- Size: Last Price
tmx_mx_solamulticast_hsvf_v1_12.last_price.size = 7

-- Display: Last Price
tmx_mx_solamulticast_hsvf_v1_12.last_price.display = function(value)
  return "Last Price: "..value
end

-- Dissect: Last Price
tmx_mx_solamulticast_hsvf_v1_12.last_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.last_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.last_price, range, value, display)

  return offset + length, value
end

-- Last Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.last_price_fraction_indicator = {}

-- Size: Last Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.last_price_fraction_indicator.size = 1

-- Display: Last Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.last_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "Last Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Last Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Last Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Last Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Last Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Last Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Last Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Last Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Last Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Last Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Last Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Last Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Last Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Last Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Last Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Last Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Last Price Fraction Indicator: Negative Million (G)"
  end

  return "Last Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Last Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.last_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.last_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.last_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.last_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Last Price Sign
tmx_mx_solamulticast_hsvf_v1_12.last_price_sign = {}

-- Size: Last Price Sign
tmx_mx_solamulticast_hsvf_v1_12.last_price_sign.size = 1

-- Display: Last Price Sign
tmx_mx_solamulticast_hsvf_v1_12.last_price_sign.display = function(value)
  return "Last Price Sign: "..value
end

-- Dissect: Last Price Sign
tmx_mx_solamulticast_hsvf_v1_12.last_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.last_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.last_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.last_price_sign, range, value, display)

  return offset + length, value
end

-- Leg Ratio
tmx_mx_solamulticast_hsvf_v1_12.leg_ratio = {}

-- Size: Leg Ratio
tmx_mx_solamulticast_hsvf_v1_12.leg_ratio.size = 4

-- Display: Leg Ratio
tmx_mx_solamulticast_hsvf_v1_12.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
tmx_mx_solamulticast_hsvf_v1_12.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.leg_ratio.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Ratio Sign
tmx_mx_solamulticast_hsvf_v1_12.leg_ratio_sign = {}

-- Size: Leg Ratio Sign
tmx_mx_solamulticast_hsvf_v1_12.leg_ratio_sign.size = 1

-- Display: Leg Ratio Sign
tmx_mx_solamulticast_hsvf_v1_12.leg_ratio_sign.display = function(value)
  return "Leg Ratio Sign: "..value
end

-- Dissect: Leg Ratio Sign
tmx_mx_solamulticast_hsvf_v1_12.leg_ratio_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.leg_ratio_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.leg_ratio_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.leg_ratio_sign, range, value, display)

  return offset + length, value
end

-- Leg Symbol
tmx_mx_solamulticast_hsvf_v1_12.leg_symbol = {}

-- Size: Leg Symbol
tmx_mx_solamulticast_hsvf_v1_12.leg_symbol.size = 30

-- Display: Leg Symbol
tmx_mx_solamulticast_hsvf_v1_12.leg_symbol.display = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
tmx_mx_solamulticast_hsvf_v1_12.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.leg_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Level Of Market Depth
tmx_mx_solamulticast_hsvf_v1_12.level_of_market_depth = {}

-- Size: Level Of Market Depth
tmx_mx_solamulticast_hsvf_v1_12.level_of_market_depth.size = 1

-- Display: Level Of Market Depth
tmx_mx_solamulticast_hsvf_v1_12.level_of_market_depth.display = function(value)
  return "Level Of Market Depth: "..value
end

-- Dissect: Level Of Market Depth
tmx_mx_solamulticast_hsvf_v1_12.level_of_market_depth.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.level_of_market_depth.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.level_of_market_depth.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.level_of_market_depth, range, value, display)

  return offset + length, value
end

-- Line
tmx_mx_solamulticast_hsvf_v1_12.line = {}

-- Size: Line
tmx_mx_solamulticast_hsvf_v1_12.line.size = 2

-- Display: Line
tmx_mx_solamulticast_hsvf_v1_12.line.display = function(value)
  return "Line: "..value
end

-- Dissect: Line
tmx_mx_solamulticast_hsvf_v1_12.line.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.line.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.line.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.line, range, value, display)

  return offset + length, value
end

-- Login Timestamp
tmx_mx_solamulticast_hsvf_v1_12.login_timestamp = {}

-- Size: Login Timestamp
tmx_mx_solamulticast_hsvf_v1_12.login_timestamp.size = 6

-- Display: Login Timestamp
tmx_mx_solamulticast_hsvf_v1_12.login_timestamp.display = function(value)
  return "Login Timestamp: "..value
end

-- Dissect: Login Timestamp
tmx_mx_solamulticast_hsvf_v1_12.login_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.login_timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.login_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.login_timestamp, range, value, display)

  return offset + length, value
end

-- Low Price
tmx_mx_solamulticast_hsvf_v1_12.low_price = {}

-- Size: Low Price
tmx_mx_solamulticast_hsvf_v1_12.low_price.size = 7

-- Display: Low Price
tmx_mx_solamulticast_hsvf_v1_12.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
tmx_mx_solamulticast_hsvf_v1_12.low_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.low_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.low_price, range, value, display)

  return offset + length, value
end

-- Low Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.low_price_fraction_indicator = {}

-- Size: Low Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.low_price_fraction_indicator.size = 1

-- Display: Low Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.low_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "Low Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Low Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Low Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Low Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Low Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Low Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Low Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Low Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Low Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Low Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Low Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Low Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Low Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Low Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Low Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Low Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Low Price Fraction Indicator: Negative Million (G)"
  end

  return "Low Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Low Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.low_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.low_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.low_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.low_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Low Price Sign
tmx_mx_solamulticast_hsvf_v1_12.low_price_sign = {}

-- Size: Low Price Sign
tmx_mx_solamulticast_hsvf_v1_12.low_price_sign.size = 1

-- Display: Low Price Sign
tmx_mx_solamulticast_hsvf_v1_12.low_price_sign.display = function(value)
  return "Low Price Sign: "..value
end

-- Dissect: Low Price Sign
tmx_mx_solamulticast_hsvf_v1_12.low_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.low_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.low_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.low_price_sign, range, value, display)

  return offset + length, value
end

-- Market Flow Indicator
tmx_mx_solamulticast_hsvf_v1_12.market_flow_indicator = {}

-- Size: Market Flow Indicator
tmx_mx_solamulticast_hsvf_v1_12.market_flow_indicator.size = 2

-- Display: Market Flow Indicator
tmx_mx_solamulticast_hsvf_v1_12.market_flow_indicator.display = function(value)
  return "Market Flow Indicator: "..value
end

-- Dissect: Market Flow Indicator
tmx_mx_solamulticast_hsvf_v1_12.market_flow_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.market_flow_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.market_flow_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.market_flow_indicator, range, value, display)

  return offset + length, value
end

-- Maximum Number Of Contracts Per Order
tmx_mx_solamulticast_hsvf_v1_12.maximum_number_of_contracts_per_order = {}

-- Size: Maximum Number Of Contracts Per Order
tmx_mx_solamulticast_hsvf_v1_12.maximum_number_of_contracts_per_order.size = 6

-- Display: Maximum Number Of Contracts Per Order
tmx_mx_solamulticast_hsvf_v1_12.maximum_number_of_contracts_per_order.display = function(value)
  return "Maximum Number Of Contracts Per Order: "..value
end

-- Dissect: Maximum Number Of Contracts Per Order
tmx_mx_solamulticast_hsvf_v1_12.maximum_number_of_contracts_per_order.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.maximum_number_of_contracts_per_order.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.maximum_number_of_contracts_per_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.maximum_number_of_contracts_per_order, range, value, display)

  return offset + length, value
end

-- Maximum Threshold Price
tmx_mx_solamulticast_hsvf_v1_12.maximum_threshold_price = {}

-- Size: Maximum Threshold Price
tmx_mx_solamulticast_hsvf_v1_12.maximum_threshold_price.size = 7

-- Display: Maximum Threshold Price
tmx_mx_solamulticast_hsvf_v1_12.maximum_threshold_price.display = function(value)
  return "Maximum Threshold Price: "..value
end

-- Dissect: Maximum Threshold Price
tmx_mx_solamulticast_hsvf_v1_12.maximum_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.maximum_threshold_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.maximum_threshold_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.maximum_threshold_price, range, value, display)

  return offset + length, value
end

-- Maximum Threshold Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.maximum_threshold_price_fraction_indicator = {}

-- Size: Maximum Threshold Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.maximum_threshold_price_fraction_indicator.size = 1

-- Display: Maximum Threshold Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.maximum_threshold_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "Maximum Threshold Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Maximum Threshold Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Maximum Threshold Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Maximum Threshold Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Maximum Threshold Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Maximum Threshold Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Maximum Threshold Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Maximum Threshold Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Maximum Threshold Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Maximum Threshold Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Maximum Threshold Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Maximum Threshold Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Maximum Threshold Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Maximum Threshold Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Maximum Threshold Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Maximum Threshold Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Maximum Threshold Price Fraction Indicator: Negative Million (G)"
  end

  return "Maximum Threshold Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Maximum Threshold Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.maximum_threshold_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.maximum_threshold_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.maximum_threshold_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.maximum_threshold_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Message Timestamp
tmx_mx_solamulticast_hsvf_v1_12.message_timestamp = {}

-- Size: Message Timestamp
tmx_mx_solamulticast_hsvf_v1_12.message_timestamp.size = 12

-- Display: Message Timestamp
tmx_mx_solamulticast_hsvf_v1_12.message_timestamp.display = function(value)
  return "Message Timestamp: "..value
end

-- Dissect: Message Timestamp
tmx_mx_solamulticast_hsvf_v1_12.message_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.message_timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.message_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.message_timestamp, range, value, display)

  return offset + length, value
end

-- Message Type
tmx_mx_solamulticast_hsvf_v1_12.message_type = {}

-- Size: Message Type
tmx_mx_solamulticast_hsvf_v1_12.message_type.size = 2

-- Display: Message Type
tmx_mx_solamulticast_hsvf_v1_12.message_type.display = function(value)
  if value == "LI" then
    return "Message Type: Login Message (LI)"
  end
  if value == "LO" then
    return "Message Type: Logout Message (LO)"
  end
  if value == "KI" then
    return "Message Type: Login Acknowledgement Message (KI)"
  end
  if value == "KO" then
    return "Message Type: Logout Acknowledgement Message (KO)"
  end
  if value == "RT" then
    return "Message Type: Retransmission Request Message (RT)"
  end
  if value == "RB" then
    return "Message Type: Retransmission Begin Message (RB)"
  end
  if value == "RE" then
    return "Message Type: Retransmission End Message (RE)"
  end
  if value == "ER" then
    return "Message Type: Error Message Message (ER)"
  end
  if value == "C" then
    return "Message Type: Option Trade Message (C)"
  end
  if value == "CB" then
    return "Message Type: Future Options Trade Message (CB)"
  end
  if value == "CF" then
    return "Message Type: Futures Trade Message (CF)"
  end
  if value == "CS" then
    return "Message Type: Strategy Trade Message (CS)"
  end
  if value == "D" then
    return "Message Type: Option Request For Quote Rfq Message (D)"
  end
  if value == "DB" then
    return "Message Type: Future Options Request For Quote Rfq Message (DB)"
  end
  if value == "DF" then
    return "Message Type: Futures Request For Quote Rfq Message (DF)"
  end
  if value == "DS" then
    return "Message Type: Strategy Request For Quote Rfq Message (DS)"
  end
  if value == "E" then
    return "Message Type: Instrument Schedule Notice Option Message (E)"
  end
  if value == "EB" then
    return "Message Type: Instrument Schedule Notice Futures Option Message (EB)"
  end
  if value == "EF" then
    return "Message Type: Instrument Schedule Notice Future Message (EF)"
  end
  if value == "ES" then
    return "Message Type: Instrument Schedule Notice Strategy Message (ES)"
  end
  if value == "F" then
    return "Message Type: Option Quote Message (F)"
  end
  if value == "FB" then
    return "Message Type: Future Options Quote Message (FB)"
  end
  if value == "FF" then
    return "Message Type: Futures Quote Message (FF)"
  end
  if value == "FS" then
    return "Message Type: Strategy Quote Message (FS)"
  end
  if value == "H" then
    return "Message Type: Option Market Depth Message (H)"
  end
  if value == "HB" then
    return "Message Type: Future Options Market Depth Message (HB)"
  end
  if value == "HF" then
    return "Message Type: Futures Market Depth Message (HF)"
  end
  if value == "HS" then
    return "Message Type: Strategy Market Depth Message (HS)"
  end
  if value == "I" then
    return "Message Type: Option Trade Cancellation Message (I)"
  end
  if value == "IB" then
    return "Message Type: Future Options Trade Cancellation Message (IB)"
  end
  if value == "IF" then
    return "Message Type: Futures Trade Cancellation Message (IF)"
  end
  if value == "IS" then
    return "Message Type: Strategy Trade Cancellation Message (IS)"
  end
  if value == "J" then
    return "Message Type: Option Instrument Keys Message (J)"
  end
  if value == "JB" then
    return "Message Type: Future Options Instrument Keys Message (JB)"
  end
  if value == "JE" then
    return "Message Type: Underlying Instrument Keys Message (JE)"
  end
  if value == "JF" then
    return "Message Type: Futures Instrument Keys Message (JF)"
  end
  if value == "JS" then
    return "Message Type: Strategy Instrument Keys Message (JS)"
  end
  if value == "N" then
    return "Message Type: Option Summary Message (N)"
  end
  if value == "NB" then
    return "Message Type: Future Options Summary Message (NB)"
  end
  if value == "NF" then
    return "Message Type: Futures Summary Message (NF)"
  end
  if value == "NS" then
    return "Message Type: Strategy Summary Message (NS)"
  end
  if value == "Q" then
    return "Message Type: Beginning Of Options Summary Message (Q)"
  end
  if value == "QB" then
    return "Message Type: Beginning Of Future Options Summary Message (QB)"
  end
  if value == "QF" then
    return "Message Type: Beginning Of Futures Summary Message (QF)"
  end
  if value == "QS" then
    return "Message Type: Beginning Of Strategy Summary Message (QS)"
  end
  if value == "XF" then
    return "Message Type: Futures Trade Correction Message (XF)"
  end
  if value == "GR" then
    return "Message Type: Group Status Message (GR)"
  end
  if value == "GS" then
    return "Message Type: Group Status Strategies Message (GS)"
  end
  if value == "L" then
    return "Message Type: Bulletins Message (L)"
  end
  if value == "S" then
    return "Message Type: End Of Sales Message (S)"
  end
  if value == "TT" then
    return "Message Type: Tick Table Message (TT)"
  end
  if value == "U" then
    return "Message Type: End Of Transmission Message (U)"
  end
  if value == "V" then
    return "Message Type: Circuit Assurance Message (V)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
tmx_mx_solamulticast_hsvf_v1_12.message_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.message_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solamulticast_hsvf_v1_12.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.message_type, range, value, display)

  return offset + length, value
end

-- Min Price
tmx_mx_solamulticast_hsvf_v1_12.min_price = {}

-- Size: Min Price
tmx_mx_solamulticast_hsvf_v1_12.min_price.size = 7

-- Display: Min Price
tmx_mx_solamulticast_hsvf_v1_12.min_price.display = function(value)
  return "Min Price: "..value
end

-- Dissect: Min Price
tmx_mx_solamulticast_hsvf_v1_12.min_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.min_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.min_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.min_price, range, value, display)

  return offset + length, value
end

-- Min Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.min_price_fraction_indicator = {}

-- Size: Min Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.min_price_fraction_indicator.size = 1

-- Display: Min Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.min_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "Min Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Min Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Min Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Min Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Min Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Min Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Min Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Min Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Min Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Min Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Min Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Min Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Min Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Min Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Min Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Min Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Min Price Fraction Indicator: Negative Million (G)"
  end

  return "Min Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Min Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.min_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.min_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.min_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.min_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Minimum Number Of Contracts Per Order
tmx_mx_solamulticast_hsvf_v1_12.minimum_number_of_contracts_per_order = {}

-- Size: Minimum Number Of Contracts Per Order
tmx_mx_solamulticast_hsvf_v1_12.minimum_number_of_contracts_per_order.size = 6

-- Display: Minimum Number Of Contracts Per Order
tmx_mx_solamulticast_hsvf_v1_12.minimum_number_of_contracts_per_order.display = function(value)
  return "Minimum Number Of Contracts Per Order: "..value
end

-- Dissect: Minimum Number Of Contracts Per Order
tmx_mx_solamulticast_hsvf_v1_12.minimum_number_of_contracts_per_order.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.minimum_number_of_contracts_per_order.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.minimum_number_of_contracts_per_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.minimum_number_of_contracts_per_order, range, value, display)

  return offset + length, value
end

-- Minimum Threshold Price
tmx_mx_solamulticast_hsvf_v1_12.minimum_threshold_price = {}

-- Size: Minimum Threshold Price
tmx_mx_solamulticast_hsvf_v1_12.minimum_threshold_price.size = 7

-- Display: Minimum Threshold Price
tmx_mx_solamulticast_hsvf_v1_12.minimum_threshold_price.display = function(value)
  return "Minimum Threshold Price: "..value
end

-- Dissect: Minimum Threshold Price
tmx_mx_solamulticast_hsvf_v1_12.minimum_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.minimum_threshold_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.minimum_threshold_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.minimum_threshold_price, range, value, display)

  return offset + length, value
end

-- Minimum Threshold Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.minimum_threshold_price_fraction_indicator = {}

-- Size: Minimum Threshold Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.minimum_threshold_price_fraction_indicator.size = 1

-- Display: Minimum Threshold Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.minimum_threshold_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "Minimum Threshold Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Minimum Threshold Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Minimum Threshold Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Minimum Threshold Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Minimum Threshold Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Minimum Threshold Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Minimum Threshold Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Minimum Threshold Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Minimum Threshold Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Minimum Threshold Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Minimum Threshold Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Minimum Threshold Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Minimum Threshold Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Minimum Threshold Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Minimum Threshold Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Minimum Threshold Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Minimum Threshold Price Fraction Indicator: Negative Million (G)"
  end

  return "Minimum Threshold Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Minimum Threshold Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.minimum_threshold_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.minimum_threshold_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.minimum_threshold_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.minimum_threshold_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Nb Entries
tmx_mx_solamulticast_hsvf_v1_12.nb_entries = {}

-- Size: Nb Entries
tmx_mx_solamulticast_hsvf_v1_12.nb_entries.size = 2

-- Display: Nb Entries
tmx_mx_solamulticast_hsvf_v1_12.nb_entries.display = function(value)
  return "Nb Entries: "..value
end

-- Dissect: Nb Entries
tmx_mx_solamulticast_hsvf_v1_12.nb_entries.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.nb_entries.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.nb_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.nb_entries, range, value, display)

  return offset + length, value
end

-- Net Change
tmx_mx_solamulticast_hsvf_v1_12.net_change = {}

-- Size: Net Change
tmx_mx_solamulticast_hsvf_v1_12.net_change.size = 7

-- Display: Net Change
tmx_mx_solamulticast_hsvf_v1_12.net_change.display = function(value)
  return "Net Change: "..value
end

-- Dissect: Net Change
tmx_mx_solamulticast_hsvf_v1_12.net_change.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.net_change.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.net_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.net_change, range, value, display)

  return offset + length, value
end

-- Net Change Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.net_change_fraction_indicator = {}

-- Size: Net Change Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.net_change_fraction_indicator.size = 1

-- Display: Net Change Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.net_change_fraction_indicator.display = function(value)
  if value == "0" then
    return "Net Change Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Net Change Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Net Change Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Net Change Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Net Change Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Net Change Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Net Change Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Net Change Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Net Change Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Net Change Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Net Change Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Net Change Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Net Change Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Net Change Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Net Change Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Net Change Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Net Change Fraction Indicator: Negative Million (G)"
  end

  return "Net Change Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Net Change Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.net_change_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.net_change_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.net_change_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.net_change_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Net Change Sign
tmx_mx_solamulticast_hsvf_v1_12.net_change_sign = {}

-- Size: Net Change Sign
tmx_mx_solamulticast_hsvf_v1_12.net_change_sign.size = 1

-- Display: Net Change Sign
tmx_mx_solamulticast_hsvf_v1_12.net_change_sign.display = function(value)
  return "Net Change Sign: "..value
end

-- Dissect: Net Change Sign
tmx_mx_solamulticast_hsvf_v1_12.net_change_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.net_change_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.net_change_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.net_change_sign, range, value, display)

  return offset + length, value
end

-- Number Of Ask Orders
tmx_mx_solamulticast_hsvf_v1_12.number_of_ask_orders = {}

-- Size: Number Of Ask Orders
tmx_mx_solamulticast_hsvf_v1_12.number_of_ask_orders.size = 2

-- Display: Number Of Ask Orders
tmx_mx_solamulticast_hsvf_v1_12.number_of_ask_orders.display = function(value)
  return "Number Of Ask Orders: "..value
end

-- Dissect: Number Of Ask Orders
tmx_mx_solamulticast_hsvf_v1_12.number_of_ask_orders.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.number_of_ask_orders.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.number_of_ask_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.number_of_ask_orders, range, value, display)

  return offset + length, value
end

-- Number Of Bid Orders
tmx_mx_solamulticast_hsvf_v1_12.number_of_bid_orders = {}

-- Size: Number Of Bid Orders
tmx_mx_solamulticast_hsvf_v1_12.number_of_bid_orders.size = 2

-- Display: Number Of Bid Orders
tmx_mx_solamulticast_hsvf_v1_12.number_of_bid_orders.display = function(value)
  return "Number Of Bid Orders: "..value
end

-- Dissect: Number Of Bid Orders
tmx_mx_solamulticast_hsvf_v1_12.number_of_bid_orders.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.number_of_bid_orders.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.number_of_bid_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.number_of_bid_orders, range, value, display)

  return offset + length, value
end

-- Number Of Legs
tmx_mx_solamulticast_hsvf_v1_12.number_of_legs = {}

-- Size: Number Of Legs
tmx_mx_solamulticast_hsvf_v1_12.number_of_legs.size = 2

-- Display: Number Of Legs
tmx_mx_solamulticast_hsvf_v1_12.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
tmx_mx_solamulticast_hsvf_v1_12.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.number_of_legs.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Number Of Level
tmx_mx_solamulticast_hsvf_v1_12.number_of_level = {}

-- Size: Number Of Level
tmx_mx_solamulticast_hsvf_v1_12.number_of_level.size = 1

-- Display: Number Of Level
tmx_mx_solamulticast_hsvf_v1_12.number_of_level.display = function(value)
  return "Number Of Level: "..value
end

-- Dissect: Number Of Level
tmx_mx_solamulticast_hsvf_v1_12.number_of_level.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.number_of_level.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.number_of_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.number_of_level, range, value, display)

  return offset + length, value
end

-- Open Interest
tmx_mx_solamulticast_hsvf_v1_12.open_interest = {}

-- Size: Open Interest
tmx_mx_solamulticast_hsvf_v1_12.open_interest.size = 7

-- Display: Open Interest
tmx_mx_solamulticast_hsvf_v1_12.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
tmx_mx_solamulticast_hsvf_v1_12.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.open_interest.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Open Interest Date
tmx_mx_solamulticast_hsvf_v1_12.open_interest_date = {}

-- Size: Open Interest Date
tmx_mx_solamulticast_hsvf_v1_12.open_interest_date.size = 6

-- Display: Open Interest Date
tmx_mx_solamulticast_hsvf_v1_12.open_interest_date.display = function(value)
  return "Open Interest Date: "..value
end

-- Dissect: Open Interest Date
tmx_mx_solamulticast_hsvf_v1_12.open_interest_date.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.open_interest_date.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.open_interest_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.open_interest_date, range, value, display)

  return offset + length, value
end

-- Open Price
tmx_mx_solamulticast_hsvf_v1_12.open_price = {}

-- Size: Open Price
tmx_mx_solamulticast_hsvf_v1_12.open_price.size = 7

-- Display: Open Price
tmx_mx_solamulticast_hsvf_v1_12.open_price.display = function(value)
  return "Open Price: "..value
end

-- Dissect: Open Price
tmx_mx_solamulticast_hsvf_v1_12.open_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.open_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.open_price, range, value, display)

  return offset + length, value
end

-- Open Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.open_price_fraction_indicator = {}

-- Size: Open Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.open_price_fraction_indicator.size = 1

-- Display: Open Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.open_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "Open Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Open Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Open Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Open Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Open Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Open Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Open Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Open Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Open Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Open Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Open Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Open Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Open Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Open Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Open Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Open Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Open Price Fraction Indicator: Negative Million (G)"
  end

  return "Open Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Open Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.open_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.open_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.open_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.open_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Open Price Sign
tmx_mx_solamulticast_hsvf_v1_12.open_price_sign = {}

-- Size: Open Price Sign
tmx_mx_solamulticast_hsvf_v1_12.open_price_sign.size = 1

-- Display: Open Price Sign
tmx_mx_solamulticast_hsvf_v1_12.open_price_sign.display = function(value)
  return "Open Price Sign: "..value
end

-- Dissect: Open Price Sign
tmx_mx_solamulticast_hsvf_v1_12.open_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.open_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.open_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.open_price_sign, range, value, display)

  return offset + length, value
end

-- Opening Price
tmx_mx_solamulticast_hsvf_v1_12.opening_price = {}

-- Size: Opening Price
tmx_mx_solamulticast_hsvf_v1_12.opening_price.size = 7

-- Display: Opening Price
tmx_mx_solamulticast_hsvf_v1_12.opening_price.display = function(value)
  return "Opening Price: "..value
end

-- Dissect: Opening Price
tmx_mx_solamulticast_hsvf_v1_12.opening_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.opening_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Opening Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.opening_price_fraction_indicator = {}

-- Size: Opening Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.opening_price_fraction_indicator.size = 1

-- Display: Opening Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.opening_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "Opening Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Opening Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Opening Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Opening Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Opening Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Opening Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Opening Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Opening Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Opening Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Opening Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Opening Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Opening Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Opening Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Opening Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Opening Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Opening Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Opening Price Fraction Indicator: Negative Million (G)"
  end

  return "Opening Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Opening Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.opening_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.opening_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.opening_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.opening_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Option Marker
tmx_mx_solamulticast_hsvf_v1_12.option_marker = {}

-- Size: Option Marker
tmx_mx_solamulticast_hsvf_v1_12.option_marker.size = 2

-- Display: Option Marker
tmx_mx_solamulticast_hsvf_v1_12.option_marker.display = function(value)
  return "Option Marker: "..value
end

-- Dissect: Option Marker
tmx_mx_solamulticast_hsvf_v1_12.option_marker.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.option_marker.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solamulticast_hsvf_v1_12.option_marker.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.option_marker, range, value, display)

  return offset + length, value
end

-- Option Type
tmx_mx_solamulticast_hsvf_v1_12.option_type = {}

-- Size: Option Type
tmx_mx_solamulticast_hsvf_v1_12.option_type.size = 1

-- Display: Option Type
tmx_mx_solamulticast_hsvf_v1_12.option_type.display = function(value)
  return "Option Type: "..value
end

-- Dissect: Option Type
tmx_mx_solamulticast_hsvf_v1_12.option_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.option_type, range, value, display)

  return offset + length, value
end

-- Previous Settlement
tmx_mx_solamulticast_hsvf_v1_12.previous_settlement = {}

-- Size: Previous Settlement
tmx_mx_solamulticast_hsvf_v1_12.previous_settlement.size = 7

-- Display: Previous Settlement
tmx_mx_solamulticast_hsvf_v1_12.previous_settlement.display = function(value)
  return "Previous Settlement: "..value
end

-- Dissect: Previous Settlement
tmx_mx_solamulticast_hsvf_v1_12.previous_settlement.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.previous_settlement.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.previous_settlement.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.previous_settlement, range, value, display)

  return offset + length, value
end

-- Previous Settlement Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.previous_settlement_fraction_indicator = {}

-- Size: Previous Settlement Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.previous_settlement_fraction_indicator.size = 1

-- Display: Previous Settlement Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.previous_settlement_fraction_indicator.display = function(value)
  if value == "0" then
    return "Previous Settlement Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Previous Settlement Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Previous Settlement Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Previous Settlement Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Previous Settlement Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Previous Settlement Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Previous Settlement Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Previous Settlement Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Previous Settlement Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Previous Settlement Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Previous Settlement Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Previous Settlement Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Previous Settlement Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Previous Settlement Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Previous Settlement Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Previous Settlement Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Previous Settlement Fraction Indicator: Negative Million (G)"
  end

  return "Previous Settlement Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Previous Settlement Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.previous_settlement_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.previous_settlement_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.previous_settlement_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.previous_settlement_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Previous Settlement Price
tmx_mx_solamulticast_hsvf_v1_12.previous_settlement_price = {}

-- Size: Previous Settlement Price
tmx_mx_solamulticast_hsvf_v1_12.previous_settlement_price.size = 7

-- Display: Previous Settlement Price
tmx_mx_solamulticast_hsvf_v1_12.previous_settlement_price.display = function(value)
  return "Previous Settlement Price: "..value
end

-- Dissect: Previous Settlement Price
tmx_mx_solamulticast_hsvf_v1_12.previous_settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.previous_settlement_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.previous_settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.previous_settlement_price, range, value, display)

  return offset + length, value
end

-- Previous Settlement Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.previous_settlement_price_fraction_indicator = {}

-- Size: Previous Settlement Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.previous_settlement_price_fraction_indicator.size = 1

-- Display: Previous Settlement Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.previous_settlement_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "Previous Settlement Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Previous Settlement Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Previous Settlement Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Previous Settlement Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Previous Settlement Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Previous Settlement Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Previous Settlement Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Previous Settlement Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Previous Settlement Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Previous Settlement Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Previous Settlement Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Previous Settlement Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Previous Settlement Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Previous Settlement Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Previous Settlement Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Previous Settlement Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Previous Settlement Price Fraction Indicator: Negative Million (G)"
  end

  return "Previous Settlement Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Previous Settlement Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.previous_settlement_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.previous_settlement_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.previous_settlement_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.previous_settlement_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Price
tmx_mx_solamulticast_hsvf_v1_12.price = {}

-- Size: Price
tmx_mx_solamulticast_hsvf_v1_12.price.size = 7

-- Display: Price
tmx_mx_solamulticast_hsvf_v1_12.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
tmx_mx_solamulticast_hsvf_v1_12.price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.price, range, value, display)

  return offset + length, value
end

-- Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.price_fraction_indicator = {}

-- Size: Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.price_fraction_indicator.size = 1

-- Display: Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.price_fraction_indicator.display = function(value)
  if value == "0" then
    return "Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Price Fraction Indicator: Negative Million (G)"
  end

  return "Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Price Indicator Marker
tmx_mx_solamulticast_hsvf_v1_12.price_indicator_marker = {}

-- Size: Price Indicator Marker
tmx_mx_solamulticast_hsvf_v1_12.price_indicator_marker.size = 1

-- Display: Price Indicator Marker
tmx_mx_solamulticast_hsvf_v1_12.price_indicator_marker.display = function(value)
  return "Price Indicator Marker: "..value
end

-- Dissect: Price Indicator Marker
tmx_mx_solamulticast_hsvf_v1_12.price_indicator_marker.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.price_indicator_marker.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.price_indicator_marker.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.price_indicator_marker, range, value, display)

  return offset + length, value
end

-- Protocol
tmx_mx_solamulticast_hsvf_v1_12.protocol = {}

-- Size: Protocol
tmx_mx_solamulticast_hsvf_v1_12.protocol.size = 2

-- Display: Protocol
tmx_mx_solamulticast_hsvf_v1_12.protocol.display = function(value)
  return "Protocol: "..value
end

-- Dissect: Protocol
tmx_mx_solamulticast_hsvf_v1_12.protocol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.protocol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.protocol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.protocol, range, value, display)

  return offset + length, value
end

-- Pwd 1
tmx_mx_solamulticast_hsvf_v1_12.pwd_1 = {}

-- Size: Pwd 1
tmx_mx_solamulticast_hsvf_v1_12.pwd_1.size = 16

-- Display: Pwd 1
tmx_mx_solamulticast_hsvf_v1_12.pwd_1.display = function(value)
  return "Pwd 1: "..value
end

-- Dissect: Pwd 1
tmx_mx_solamulticast_hsvf_v1_12.pwd_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.pwd_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.pwd_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.pwd_1, range, value, display)

  return offset + length, value
end

-- Reason
tmx_mx_solamulticast_hsvf_v1_12.reason = {}

-- Size: Reason
tmx_mx_solamulticast_hsvf_v1_12.reason.size = 1

-- Display: Reason
tmx_mx_solamulticast_hsvf_v1_12.reason.display = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
tmx_mx_solamulticast_hsvf_v1_12.reason.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.reason, range, value, display)

  return offset + length, value
end

-- Regular Bulletin Contents
tmx_mx_solamulticast_hsvf_v1_12.regular_bulletin_contents = {}

-- Size: Regular Bulletin Contents
tmx_mx_solamulticast_hsvf_v1_12.regular_bulletin_contents.size = 79

-- Display: Regular Bulletin Contents
tmx_mx_solamulticast_hsvf_v1_12.regular_bulletin_contents.display = function(value)
  return "Regular Bulletin Contents: "..value
end

-- Dissect: Regular Bulletin Contents
tmx_mx_solamulticast_hsvf_v1_12.regular_bulletin_contents.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.regular_bulletin_contents.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.regular_bulletin_contents.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.regular_bulletin_contents, range, value, display)

  return offset + length, value
end

-- Requested Market Side
tmx_mx_solamulticast_hsvf_v1_12.requested_market_side = {}

-- Size: Requested Market Side
tmx_mx_solamulticast_hsvf_v1_12.requested_market_side.size = 1

-- Display: Requested Market Side
tmx_mx_solamulticast_hsvf_v1_12.requested_market_side.display = function(value)
  return "Requested Market Side: "..value
end

-- Dissect: Requested Market Side
tmx_mx_solamulticast_hsvf_v1_12.requested_market_side.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.requested_market_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.requested_market_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.requested_market_side, range, value, display)

  return offset + length, value
end

-- Requested Size
tmx_mx_solamulticast_hsvf_v1_12.requested_size = {}

-- Size: Requested Size
tmx_mx_solamulticast_hsvf_v1_12.requested_size.size = 8

-- Display: Requested Size
tmx_mx_solamulticast_hsvf_v1_12.requested_size.display = function(value)
  return "Requested Size: "..value
end

-- Dissect: Requested Size
tmx_mx_solamulticast_hsvf_v1_12.requested_size.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.requested_size.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.requested_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.requested_size, range, value, display)

  return offset + length, value
end

-- Reserved
tmx_mx_solamulticast_hsvf_v1_12.reserved = {}

-- Size: Reserved
tmx_mx_solamulticast_hsvf_v1_12.reserved.size = 1

-- Display: Reserved
tmx_mx_solamulticast_hsvf_v1_12.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
tmx_mx_solamulticast_hsvf_v1_12.reserved.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.reserved.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tmx_mx_solamulticast_hsvf_v1_12.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.reserved, range, value, display)

  return offset + length, value
end

-- Root
tmx_mx_solamulticast_hsvf_v1_12.root = {}

-- Size: Root
tmx_mx_solamulticast_hsvf_v1_12.root.size = 6

-- Display: Root
tmx_mx_solamulticast_hsvf_v1_12.root.display = function(value)
  return "Root: "..value
end

-- Dissect: Root
tmx_mx_solamulticast_hsvf_v1_12.root.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.root.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solamulticast_hsvf_v1_12.root.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.root, range, value, display)

  return offset + length, value
end

-- Root Symbol
tmx_mx_solamulticast_hsvf_v1_12.root_symbol = {}

-- Size: Root Symbol
tmx_mx_solamulticast_hsvf_v1_12.root_symbol.size = 6

-- Display: Root Symbol
tmx_mx_solamulticast_hsvf_v1_12.root_symbol.display = function(value)
  return "Root Symbol: "..value
end

-- Dissect: Root Symbol
tmx_mx_solamulticast_hsvf_v1_12.root_symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.root_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solamulticast_hsvf_v1_12.root_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.root_symbol, range, value, display)

  return offset + length, value
end

-- Scheduled Status Change Time
tmx_mx_solamulticast_hsvf_v1_12.scheduled_status_change_time = {}

-- Size: Scheduled Status Change Time
tmx_mx_solamulticast_hsvf_v1_12.scheduled_status_change_time.size = 6

-- Display: Scheduled Status Change Time
tmx_mx_solamulticast_hsvf_v1_12.scheduled_status_change_time.display = function(value)
  return "Scheduled Status Change Time: "..value
end

-- Dissect: Scheduled Status Change Time
tmx_mx_solamulticast_hsvf_v1_12.scheduled_status_change_time.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.scheduled_status_change_time.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.scheduled_status_change_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scheduled_status_change_time, range, value, display)

  return offset + length, value
end

-- Sequence Number
tmx_mx_solamulticast_hsvf_v1_12.sequence_number = {}

-- Size: Sequence Number
tmx_mx_solamulticast_hsvf_v1_12.sequence_number.size = 9

-- Display: Sequence Number
tmx_mx_solamulticast_hsvf_v1_12.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
tmx_mx_solamulticast_hsvf_v1_12.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Series Status
tmx_mx_solamulticast_hsvf_v1_12.series_status = {}

-- Size: Series Status
tmx_mx_solamulticast_hsvf_v1_12.series_status.size = 1

-- Display: Series Status
tmx_mx_solamulticast_hsvf_v1_12.series_status.display = function(value)
  return "Series Status: "..value
end

-- Dissect: Series Status
tmx_mx_solamulticast_hsvf_v1_12.series_status.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.series_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.series_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.series_status, range, value, display)

  return offset + length, value
end

-- Settlement Price
tmx_mx_solamulticast_hsvf_v1_12.settlement_price = {}

-- Size: Settlement Price
tmx_mx_solamulticast_hsvf_v1_12.settlement_price.size = 7

-- Display: Settlement Price
tmx_mx_solamulticast_hsvf_v1_12.settlement_price.display = function(value)
  return "Settlement Price: "..value
end

-- Dissect: Settlement Price
tmx_mx_solamulticast_hsvf_v1_12.settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.settlement_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Settlement Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.settlement_price_fraction_indicator = {}

-- Size: Settlement Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.settlement_price_fraction_indicator.size = 1

-- Display: Settlement Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.settlement_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "Settlement Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Settlement Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Settlement Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Settlement Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Settlement Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Settlement Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Settlement Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Settlement Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Settlement Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Settlement Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Settlement Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Settlement Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Settlement Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Settlement Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Settlement Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Settlement Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Settlement Price Fraction Indicator: Negative Million (G)"
  end

  return "Settlement Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Settlement Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.settlement_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.settlement_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.settlement_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.settlement_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Special Bulletin Contents
tmx_mx_solamulticast_hsvf_v1_12.special_bulletin_contents = {}

-- Size: Special Bulletin Contents
tmx_mx_solamulticast_hsvf_v1_12.special_bulletin_contents.size = 49

-- Display: Special Bulletin Contents
tmx_mx_solamulticast_hsvf_v1_12.special_bulletin_contents.display = function(value)
  return "Special Bulletin Contents: "..value
end

-- Dissect: Special Bulletin Contents
tmx_mx_solamulticast_hsvf_v1_12.special_bulletin_contents.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.special_bulletin_contents.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.special_bulletin_contents.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.special_bulletin_contents, range, value, display)

  return offset + length, value
end

-- Start
tmx_mx_solamulticast_hsvf_v1_12.start = {}

-- Size: Start
tmx_mx_solamulticast_hsvf_v1_12.start.size = 9

-- Display: Start
tmx_mx_solamulticast_hsvf_v1_12.start.display = function(value)
  return "Start: "..value
end

-- Dissect: Start
tmx_mx_solamulticast_hsvf_v1_12.start.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.start.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.start.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.start, range, value, display)

  return offset + length, value
end

-- Strategy Allow Implied
tmx_mx_solamulticast_hsvf_v1_12.strategy_allow_implied = {}

-- Size: Strategy Allow Implied
tmx_mx_solamulticast_hsvf_v1_12.strategy_allow_implied.size = 1

-- Display: Strategy Allow Implied
tmx_mx_solamulticast_hsvf_v1_12.strategy_allow_implied.display = function(value)
  return "Strategy Allow Implied: "..value
end

-- Dissect: Strategy Allow Implied
tmx_mx_solamulticast_hsvf_v1_12.strategy_allow_implied.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.strategy_allow_implied.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.strategy_allow_implied.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strategy_allow_implied, range, value, display)

  return offset + length, value
end

-- Strategy Code
tmx_mx_solamulticast_hsvf_v1_12.strategy_code = {}

-- Size: Strategy Code
tmx_mx_solamulticast_hsvf_v1_12.strategy_code.size = 2

-- Display: Strategy Code
tmx_mx_solamulticast_hsvf_v1_12.strategy_code.display = function(value)
  return "Strategy Code: "..value
end

-- Dissect: Strategy Code
tmx_mx_solamulticast_hsvf_v1_12.strategy_code.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.strategy_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.strategy_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strategy_code, range, value, display)

  return offset + length, value
end

-- Strategy Symbol
tmx_mx_solamulticast_hsvf_v1_12.strategy_symbol = {}

-- Size: Strategy Symbol
tmx_mx_solamulticast_hsvf_v1_12.strategy_symbol.size = 30

-- Display: Strategy Symbol
tmx_mx_solamulticast_hsvf_v1_12.strategy_symbol.display = function(value)
  return "Strategy Symbol: "..value
end

-- Dissect: Strategy Symbol
tmx_mx_solamulticast_hsvf_v1_12.strategy_symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.strategy_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.strategy_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strategy_symbol, range, value, display)

  return offset + length, value
end

-- Strike Price
tmx_mx_solamulticast_hsvf_v1_12.strike_price = {}

-- Size: Strike Price
tmx_mx_solamulticast_hsvf_v1_12.strike_price.size = 7

-- Display: Strike Price
tmx_mx_solamulticast_hsvf_v1_12.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
tmx_mx_solamulticast_hsvf_v1_12.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.strike_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Strike Price Currency
tmx_mx_solamulticast_hsvf_v1_12.strike_price_currency = {}

-- Size: Strike Price Currency
tmx_mx_solamulticast_hsvf_v1_12.strike_price_currency.size = 3

-- Display: Strike Price Currency
tmx_mx_solamulticast_hsvf_v1_12.strike_price_currency.display = function(value)
  return "Strike Price Currency: "..value
end

-- Dissect: Strike Price Currency
tmx_mx_solamulticast_hsvf_v1_12.strike_price_currency.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.strike_price_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solamulticast_hsvf_v1_12.strike_price_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strike_price_currency, range, value, display)

  return offset + length, value
end

-- Strike Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.strike_price_fraction_indicator = {}

-- Size: Strike Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.strike_price_fraction_indicator.size = 1

-- Display: Strike Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.strike_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "Strike Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Strike Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Strike Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Strike Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Strike Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Strike Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Strike Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Strike Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Strike Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Strike Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Strike Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Strike Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Strike Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Strike Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Strike Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Strike Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Strike Price Fraction Indicator: Negative Million (G)"
  end

  return "Strike Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Strike Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.strike_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.strike_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.strike_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strike_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Symbol
tmx_mx_solamulticast_hsvf_v1_12.symbol = {}

-- Size: Symbol
tmx_mx_solamulticast_hsvf_v1_12.symbol.size = 30

-- Display: Symbol
tmx_mx_solamulticast_hsvf_v1_12.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
tmx_mx_solamulticast_hsvf_v1_12.symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Month
tmx_mx_solamulticast_hsvf_v1_12.symbol_month = {}

-- Size: Symbol Month
tmx_mx_solamulticast_hsvf_v1_12.symbol_month.size = 1

-- Display: Symbol Month
tmx_mx_solamulticast_hsvf_v1_12.symbol_month.display = function(value)
  return "Symbol Month: "..value
end

-- Dissect: Symbol Month
tmx_mx_solamulticast_hsvf_v1_12.symbol_month.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.symbol_month.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.symbol_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.symbol_month, range, value, display)

  return offset + length, value
end

-- Symbol Year
tmx_mx_solamulticast_hsvf_v1_12.symbol_year = {}

-- Size: Symbol Year
tmx_mx_solamulticast_hsvf_v1_12.symbol_year.size = 2

-- Display: Symbol Year
tmx_mx_solamulticast_hsvf_v1_12.symbol_year.display = function(value)
  return "Symbol Year: "..value
end

-- Dissect: Symbol Year
tmx_mx_solamulticast_hsvf_v1_12.symbol_year.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.symbol_year.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.symbol_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.symbol_year, range, value, display)

  return offset + length, value
end

-- Tick
tmx_mx_solamulticast_hsvf_v1_12.tick = {}

-- Size: Tick
tmx_mx_solamulticast_hsvf_v1_12.tick.size = 1

-- Display: Tick
tmx_mx_solamulticast_hsvf_v1_12.tick.display = function(value)
  return "Tick: "..value
end

-- Dissect: Tick
tmx_mx_solamulticast_hsvf_v1_12.tick.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.tick.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.tick.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.tick, range, value, display)

  return offset + length, value
end

-- Tick Increment
tmx_mx_solamulticast_hsvf_v1_12.tick_increment = {}

-- Size: Tick Increment
tmx_mx_solamulticast_hsvf_v1_12.tick_increment.size = 7

-- Display: Tick Increment
tmx_mx_solamulticast_hsvf_v1_12.tick_increment.display = function(value)
  return "Tick Increment: "..value
end

-- Dissect: Tick Increment
tmx_mx_solamulticast_hsvf_v1_12.tick_increment.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.tick_increment.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.tick_increment.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.tick_increment, range, value, display)

  return offset + length, value
end

-- Tick Increment Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.tick_increment_fraction_indicator = {}

-- Size: Tick Increment Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.tick_increment_fraction_indicator.size = 1

-- Display: Tick Increment Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.tick_increment_fraction_indicator.display = function(value)
  if value == "0" then
    return "Tick Increment Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Tick Increment Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Tick Increment Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Tick Increment Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Tick Increment Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Tick Increment Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Tick Increment Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Tick Increment Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Tick Increment Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Tick Increment Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Tick Increment Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Tick Increment Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Tick Increment Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Tick Increment Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Tick Increment Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Tick Increment Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Tick Increment Fraction Indicator: Negative Million (G)"
  end

  return "Tick Increment Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Tick Increment Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.tick_increment_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.tick_increment_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.tick_increment_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.tick_increment_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Tick Price
tmx_mx_solamulticast_hsvf_v1_12.tick_price = {}

-- Size: Tick Price
tmx_mx_solamulticast_hsvf_v1_12.tick_price.size = 7

-- Display: Tick Price
tmx_mx_solamulticast_hsvf_v1_12.tick_price.display = function(value)
  return "Tick Price: "..value
end

-- Dissect: Tick Price
tmx_mx_solamulticast_hsvf_v1_12.tick_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.tick_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.tick_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.tick_price, range, value, display)

  return offset + length, value
end

-- Tick Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.tick_price_fraction_indicator = {}

-- Size: Tick Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.tick_price_fraction_indicator.size = 1

-- Display: Tick Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.tick_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "Tick Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Tick Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Tick Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Tick Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Tick Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Tick Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Tick Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Tick Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Tick Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Tick Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Tick Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Tick Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Tick Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Tick Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Tick Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Tick Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Tick Price Fraction Indicator: Negative Million (G)"
  end

  return "Tick Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Tick Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.tick_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.tick_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.tick_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.tick_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Tick Table Name
tmx_mx_solamulticast_hsvf_v1_12.tick_table_name = {}

-- Size: Tick Table Name
tmx_mx_solamulticast_hsvf_v1_12.tick_table_name.size = 50

-- Display: Tick Table Name
tmx_mx_solamulticast_hsvf_v1_12.tick_table_name.display = function(value)
  return "Tick Table Name: "..value
end

-- Dissect: Tick Table Name
tmx_mx_solamulticast_hsvf_v1_12.tick_table_name.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.tick_table_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.tick_table_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.tick_table_name, range, value, display)

  return offset + length, value
end

-- Tick Table Short Name
tmx_mx_solamulticast_hsvf_v1_12.tick_table_short_name = {}

-- Size: Tick Table Short Name
tmx_mx_solamulticast_hsvf_v1_12.tick_table_short_name.size = 2

-- Display: Tick Table Short Name
tmx_mx_solamulticast_hsvf_v1_12.tick_table_short_name.display = function(value)
  return "Tick Table Short Name: "..value
end

-- Dissect: Tick Table Short Name
tmx_mx_solamulticast_hsvf_v1_12.tick_table_short_name.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.tick_table_short_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.tick_table_short_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.tick_table_short_name, range, value, display)

  return offset + length, value
end

-- Tick Value
tmx_mx_solamulticast_hsvf_v1_12.tick_value = {}

-- Size: Tick Value
tmx_mx_solamulticast_hsvf_v1_12.tick_value.size = 7

-- Display: Tick Value
tmx_mx_solamulticast_hsvf_v1_12.tick_value.display = function(value)
  return "Tick Value: "..value
end

-- Dissect: Tick Value
tmx_mx_solamulticast_hsvf_v1_12.tick_value.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.tick_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.tick_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.tick_value, range, value, display)

  return offset + length, value
end

-- Tick Value Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.tick_value_fraction_indicator = {}

-- Size: Tick Value Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.tick_value_fraction_indicator.size = 1

-- Display: Tick Value Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.tick_value_fraction_indicator.display = function(value)
  if value == "0" then
    return "Tick Value Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Tick Value Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Tick Value Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Tick Value Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Tick Value Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Tick Value Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Tick Value Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Tick Value Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Tick Value Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Tick Value Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Tick Value Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Tick Value Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Tick Value Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Tick Value Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Tick Value Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Tick Value Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Tick Value Fraction Indicator: Negative Million (G)"
  end

  return "Tick Value Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Tick Value Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.tick_value_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.tick_value_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.tick_value_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.tick_value_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Time
tmx_mx_solamulticast_hsvf_v1_12.time = {}

-- Size: Time
tmx_mx_solamulticast_hsvf_v1_12.time.size = 6

-- Display: Time
tmx_mx_solamulticast_hsvf_v1_12.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
tmx_mx_solamulticast_hsvf_v1_12.time.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.time.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.time, range, value, display)

  return offset + length, value
end

-- Trade Number
tmx_mx_solamulticast_hsvf_v1_12.trade_number = {}

-- Size: Trade Number
tmx_mx_solamulticast_hsvf_v1_12.trade_number.size = 8

-- Display: Trade Number
tmx_mx_solamulticast_hsvf_v1_12.trade_number.display = function(value)
  return "Trade Number: "..value
end

-- Dissect: Trade Number
tmx_mx_solamulticast_hsvf_v1_12.trade_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.trade_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.trade_number, range, value, display)

  return offset + length, value
end

-- Trade Price
tmx_mx_solamulticast_hsvf_v1_12.trade_price = {}

-- Size: Trade Price
tmx_mx_solamulticast_hsvf_v1_12.trade_price.size = 7

-- Display: Trade Price
tmx_mx_solamulticast_hsvf_v1_12.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
tmx_mx_solamulticast_hsvf_v1_12.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.trade_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.trade_price_fraction_indicator = {}

-- Size: Trade Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.trade_price_fraction_indicator.size = 1

-- Display: Trade Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.trade_price_fraction_indicator.display = function(value)
  if value == "0" then
    return "Trade Price Fraction Indicator: Whole (0)"
  end
  if value == "1" then
    return "Trade Price Fraction Indicator: Ten (1)"
  end
  if value == "2" then
    return "Trade Price Fraction Indicator: Hundred (2)"
  end
  if value == "3" then
    return "Trade Price Fraction Indicator: Thousand (3)"
  end
  if value == "4" then
    return "Trade Price Fraction Indicator: Ten Thousand (4)"
  end
  if value == "5" then
    return "Trade Price Fraction Indicator: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Trade Price Fraction Indicator: Million (6)"
  end
  if value == "7" then
    return "Trade Price Fraction Indicator: Ten Million (7)"
  end
  if value == "8" then
    return "Trade Price Fraction Indicator: Hundred Million (8)"
  end
  if value == "9" then
    return "Trade Price Fraction Indicator: Billion (9)"
  end
  if value == "A" then
    return "Trade Price Fraction Indicator: Negative Whole (A)"
  end
  if value == "B" then
    return "Trade Price Fraction Indicator: Negative Ten (B)"
  end
  if value == "C" then
    return "Trade Price Fraction Indicator: Negative Hundred (C)"
  end
  if value == "D" then
    return "Trade Price Fraction Indicator: Negative Thousand (D)"
  end
  if value == "E" then
    return "Trade Price Fraction Indicator: Negative Ten Thousand (E)"
  end
  if value == "F" then
    return "Trade Price Fraction Indicator: Negative Hundred Thousand (F)"
  end
  if value == "G" then
    return "Trade Price Fraction Indicator: Negative Million (G)"
  end

  return "Trade Price Fraction Indicator: Unknown("..value..")"
end

-- Dissect: Trade Price Fraction Indicator
tmx_mx_solamulticast_hsvf_v1_12.trade_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.trade_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.trade_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.trade_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Trade Price Sign
tmx_mx_solamulticast_hsvf_v1_12.trade_price_sign = {}

-- Size: Trade Price Sign
tmx_mx_solamulticast_hsvf_v1_12.trade_price_sign.size = 1

-- Display: Trade Price Sign
tmx_mx_solamulticast_hsvf_v1_12.trade_price_sign.display = function(value)
  return "Trade Price Sign: "..value
end

-- Dissect: Trade Price Sign
tmx_mx_solamulticast_hsvf_v1_12.trade_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.trade_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.trade_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.trade_price_sign, range, value, display)

  return offset + length, value
end

-- Trade Timestamp
tmx_mx_solamulticast_hsvf_v1_12.trade_timestamp = {}

-- Size: Trade Timestamp
tmx_mx_solamulticast_hsvf_v1_12.trade_timestamp.size = 9

-- Display: Trade Timestamp
tmx_mx_solamulticast_hsvf_v1_12.trade_timestamp.display = function(value)
  return "Trade Timestamp: "..value
end

-- Dissect: Trade Timestamp
tmx_mx_solamulticast_hsvf_v1_12.trade_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.trade_timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.trade_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.trade_timestamp, range, value, display)

  return offset + length, value
end

-- Underlying Root Symbol
tmx_mx_solamulticast_hsvf_v1_12.underlying_root_symbol = {}

-- Size: Underlying Root Symbol
tmx_mx_solamulticast_hsvf_v1_12.underlying_root_symbol.size = 6

-- Display: Underlying Root Symbol
tmx_mx_solamulticast_hsvf_v1_12.underlying_root_symbol.display = function(value)
  return "Underlying Root Symbol: "..value
end

-- Dissect: Underlying Root Symbol
tmx_mx_solamulticast_hsvf_v1_12.underlying_root_symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.underlying_root_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solamulticast_hsvf_v1_12.underlying_root_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.underlying_root_symbol, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol = {}

-- Size: Underlying Symbol
tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol.size = 12

-- Display: Underlying Symbol
tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Underlying Symbol Month
tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol_month = {}

-- Size: Underlying Symbol Month
tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol_month.size = 1

-- Display: Underlying Symbol Month
tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol_month.display = function(value)
  return "Underlying Symbol Month: "..value
end

-- Dissect: Underlying Symbol Month
tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol_month.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol_month.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.underlying_symbol_month, range, value, display)

  return offset + length, value
end

-- Underlying Symbol Root
tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol_root = {}

-- Size: Underlying Symbol Root
tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol_root.size = 12

-- Display: Underlying Symbol Root
tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol_root.display = function(value)
  return "Underlying Symbol Root: "..value
end

-- Dissect: Underlying Symbol Root
tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol_root.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol_root.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol_root.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.underlying_symbol_root, range, value, display)

  return offset + length, value
end

-- Underlying Symbol Year
tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol_year = {}

-- Size: Underlying Symbol Year
tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol_year.size = 2

-- Display: Underlying Symbol Year
tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol_year.display = function(value)
  return "Underlying Symbol Year: "..value
end

-- Dissect: Underlying Symbol Year
tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol_year.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol_year.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.underlying_symbol_year, range, value, display)

  return offset + length, value
end

-- User 1
tmx_mx_solamulticast_hsvf_v1_12.user_1 = {}

-- Size: User 1
tmx_mx_solamulticast_hsvf_v1_12.user_1.size = 16

-- Display: User 1
tmx_mx_solamulticast_hsvf_v1_12.user_1.display = function(value)
  return "User 1: "..value
end

-- Dissect: User 1
tmx_mx_solamulticast_hsvf_v1_12.user_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.user_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solamulticast_hsvf_v1_12.user_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.user_1, range, value, display)

  return offset + length, value
end

-- Volume
tmx_mx_solamulticast_hsvf_v1_12.volume = {}

-- Size: Volume
tmx_mx_solamulticast_hsvf_v1_12.volume.size = 8

-- Display: Volume
tmx_mx_solamulticast_hsvf_v1_12.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
tmx_mx_solamulticast_hsvf_v1_12.volume.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = tmx_mx_solamulticast_hsvf_v1_12.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.volume, range, value, display)

  return offset + length, value
end

-- Scaled Ask Price Quote
tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_quote = {}

-- Display: Scaled Ask Price Quote
tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_quote.display = function(value)
  return "Scaled Ask Price Quote: " .. string.format("%g", value)
end

-- Display: Scaled Ask Price Quote with an unrecognised code
tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_quote.display_uncoded = function(value)
  return "Scaled Ask Price Quote: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Ask Price Quote
tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_quote.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.ask_price_quote.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if ask_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_quote.display(value)
  elseif ask_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_quote.display(value)
  elseif ask_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_quote.display(value)
  elseif ask_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_quote.display(value)
  elseif ask_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_quote.display(value)
  elseif ask_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_quote.display(value)
  elseif ask_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_quote.display(value)
  elseif ask_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_quote.display(value)
  elseif ask_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_quote.display(value)
  elseif ask_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_quote.display(value)
  else
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_quote.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_ask_price_quote, range, value, display)
  local mantissa_display = tmx_mx_solamulticast_hsvf_v1_12.ask_price_quote.display(mantissa)

  field_tree:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.ask_price_quote, range, mantissa, mantissa_display)

  local ask_price_fraction_indicator_entry = field_tree:add("Ask Price Fraction Indicator: " .. tostring(ask_price_fraction_indicator))
  ask_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Ask Price Summary
tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_summary = {}

-- Display: Scaled Ask Price Summary
tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_summary.display = function(value)
  return "Scaled Ask Price Summary: " .. string.format("%g", value)
end

-- Display: Scaled Ask Price Summary with an unrecognised code
tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_summary.display_uncoded = function(value)
  return "Scaled Ask Price Summary: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Ask Price Summary
tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_summary.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.ask_price_summary.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if ask_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_summary.display(value)
  elseif ask_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_summary.display(value)
  elseif ask_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_summary.display(value)
  elseif ask_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_summary.display(value)
  elseif ask_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_summary.display(value)
  elseif ask_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_summary.display(value)
  elseif ask_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_summary.display(value)
  elseif ask_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_summary.display(value)
  elseif ask_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_summary.display(value)
  elseif ask_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_summary.display(value)
  else
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_summary.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_ask_price_summary, range, value, display)
  local mantissa_display = tmx_mx_solamulticast_hsvf_v1_12.ask_price_summary.display(mantissa)

  field_tree:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.ask_price_summary, range, mantissa, mantissa_display)

  local ask_price_fraction_indicator_entry = field_tree:add("Ask Price Fraction Indicator: " .. tostring(ask_price_fraction_indicator))
  ask_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Bid Price Quote
tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_quote = {}

-- Display: Scaled Bid Price Quote
tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_quote.display = function(value)
  return "Scaled Bid Price Quote: " .. string.format("%g", value)
end

-- Display: Scaled Bid Price Quote with an unrecognised code
tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_quote.display_uncoded = function(value)
  return "Scaled Bid Price Quote: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Bid Price Quote
tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_quote.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.bid_price_quote.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if bid_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_quote.display(value)
  elseif bid_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_quote.display(value)
  elseif bid_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_quote.display(value)
  elseif bid_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_quote.display(value)
  elseif bid_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_quote.display(value)
  elseif bid_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_quote.display(value)
  elseif bid_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_quote.display(value)
  elseif bid_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_quote.display(value)
  elseif bid_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_quote.display(value)
  elseif bid_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_quote.display(value)
  else
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_quote.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_bid_price_quote, range, value, display)
  local mantissa_display = tmx_mx_solamulticast_hsvf_v1_12.bid_price_quote.display(mantissa)

  field_tree:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.bid_price_quote, range, mantissa, mantissa_display)

  local bid_price_fraction_indicator_entry = field_tree:add("Bid Price Fraction Indicator: " .. tostring(bid_price_fraction_indicator))
  bid_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Bid Price Summary
tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_summary = {}

-- Display: Scaled Bid Price Summary
tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_summary.display = function(value)
  return "Scaled Bid Price Summary: " .. string.format("%g", value)
end

-- Display: Scaled Bid Price Summary with an unrecognised code
tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_summary.display_uncoded = function(value)
  return "Scaled Bid Price Summary: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Bid Price Summary
tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_summary.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.bid_price_summary.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if bid_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_summary.display(value)
  elseif bid_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_summary.display(value)
  elseif bid_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_summary.display(value)
  elseif bid_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_summary.display(value)
  elseif bid_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_summary.display(value)
  elseif bid_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_summary.display(value)
  elseif bid_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_summary.display(value)
  elseif bid_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_summary.display(value)
  elseif bid_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_summary.display(value)
  elseif bid_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_summary.display(value)
  else
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_summary.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_bid_price_summary, range, value, display)
  local mantissa_display = tmx_mx_solamulticast_hsvf_v1_12.bid_price_summary.display(mantissa)

  field_tree:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.bid_price_summary, range, mantissa, mantissa_display)

  local bid_price_fraction_indicator_entry = field_tree:add("Bid Price Fraction Indicator: " .. tostring(bid_price_fraction_indicator))
  bid_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled External Price At Source
tmx_mx_solamulticast_hsvf_v1_12.scaled_external_price_at_source = {}

-- Display: Scaled External Price At Source
tmx_mx_solamulticast_hsvf_v1_12.scaled_external_price_at_source.display = function(value)
  return "Scaled External Price At Source: " .. string.format("%g", value)
end

-- Display: Scaled External Price At Source with an unrecognised code
tmx_mx_solamulticast_hsvf_v1_12.scaled_external_price_at_source.display_uncoded = function(value)
  return "Scaled External Price At Source: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled External Price At Source
tmx_mx_solamulticast_hsvf_v1_12.scaled_external_price_at_source.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.external_price_at_source.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if external_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_external_price_at_source.display(value)
  elseif external_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_external_price_at_source.display(value)
  elseif external_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_external_price_at_source.display(value)
  elseif external_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_external_price_at_source.display(value)
  elseif external_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_external_price_at_source.display(value)
  elseif external_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_external_price_at_source.display(value)
  elseif external_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_external_price_at_source.display(value)
  elseif external_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_external_price_at_source.display(value)
  elseif external_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_external_price_at_source.display(value)
  elseif external_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_external_price_at_source.display(value)
  else
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_external_price_at_source.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_external_price_at_source, range, value, display)
  local mantissa_display = tmx_mx_solamulticast_hsvf_v1_12.external_price_at_source.display(mantissa)

  field_tree:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.external_price_at_source, range, mantissa, mantissa_display)

  local external_price_fraction_indicator_entry = field_tree:add("External Price Fraction Indicator: " .. tostring(external_price_fraction_indicator))
  external_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled High Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_high_price = {}

-- Display: Scaled High Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_high_price.display = function(value)
  return "Scaled High Price: " .. string.format("%g", value)
end

-- Display: Scaled High Price with an unrecognised code
tmx_mx_solamulticast_hsvf_v1_12.scaled_high_price.display_uncoded = function(value)
  return "Scaled High Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled High Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_high_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.high_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if high_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_high_price.display(value)
  elseif high_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_high_price.display(value)
  elseif high_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_high_price.display(value)
  elseif high_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_high_price.display(value)
  elseif high_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_high_price.display(value)
  elseif high_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_high_price.display(value)
  elseif high_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_high_price.display(value)
  elseif high_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_high_price.display(value)
  elseif high_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_high_price.display(value)
  elseif high_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_high_price.display(value)
  else
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_high_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_high_price, range, value, display)
  local mantissa_display = tmx_mx_solamulticast_hsvf_v1_12.high_price.display(mantissa)

  field_tree:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.high_price, range, mantissa, mantissa_display)

  local high_price_fraction_indicator_entry = field_tree:add("High Price Fraction Indicator: " .. tostring(high_price_fraction_indicator))
  high_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Last Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_last_price = {}

-- Display: Scaled Last Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_last_price.display = function(value)
  return "Scaled Last Price: " .. string.format("%g", value)
end

-- Display: Scaled Last Price with an unrecognised code
tmx_mx_solamulticast_hsvf_v1_12.scaled_last_price.display_uncoded = function(value)
  return "Scaled Last Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Last Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_last_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.last_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if last_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_last_price.display(value)
  elseif last_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_last_price.display(value)
  elseif last_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_last_price.display(value)
  elseif last_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_last_price.display(value)
  elseif last_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_last_price.display(value)
  elseif last_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_last_price.display(value)
  elseif last_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_last_price.display(value)
  elseif last_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_last_price.display(value)
  elseif last_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_last_price.display(value)
  elseif last_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_last_price.display(value)
  else
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_last_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_last_price, range, value, display)
  local mantissa_display = tmx_mx_solamulticast_hsvf_v1_12.last_price.display(mantissa)

  field_tree:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.last_price, range, mantissa, mantissa_display)

  local last_price_fraction_indicator_entry = field_tree:add("Last Price Fraction Indicator: " .. tostring(last_price_fraction_indicator))
  last_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Low Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_low_price = {}

-- Display: Scaled Low Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_low_price.display = function(value)
  return "Scaled Low Price: " .. string.format("%g", value)
end

-- Display: Scaled Low Price with an unrecognised code
tmx_mx_solamulticast_hsvf_v1_12.scaled_low_price.display_uncoded = function(value)
  return "Scaled Low Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Low Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_low_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.low_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if low_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_low_price.display(value)
  elseif low_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_low_price.display(value)
  elseif low_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_low_price.display(value)
  elseif low_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_low_price.display(value)
  elseif low_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_low_price.display(value)
  elseif low_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_low_price.display(value)
  elseif low_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_low_price.display(value)
  elseif low_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_low_price.display(value)
  elseif low_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_low_price.display(value)
  elseif low_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_low_price.display(value)
  else
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_low_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_low_price, range, value, display)
  local mantissa_display = tmx_mx_solamulticast_hsvf_v1_12.low_price.display(mantissa)

  field_tree:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.low_price, range, mantissa, mantissa_display)

  local low_price_fraction_indicator_entry = field_tree:add("Low Price Fraction Indicator: " .. tostring(low_price_fraction_indicator))
  low_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Maximum Threshold Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_maximum_threshold_price = {}

-- Display: Scaled Maximum Threshold Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_maximum_threshold_price.display = function(value)
  return "Scaled Maximum Threshold Price: " .. string.format("%g", value)
end

-- Display: Scaled Maximum Threshold Price with an unrecognised code
tmx_mx_solamulticast_hsvf_v1_12.scaled_maximum_threshold_price.display_uncoded = function(value)
  return "Scaled Maximum Threshold Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Maximum Threshold Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_maximum_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.maximum_threshold_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if maximum_threshold_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_maximum_threshold_price.display(value)
  elseif maximum_threshold_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_maximum_threshold_price.display(value)
  elseif maximum_threshold_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_maximum_threshold_price.display(value)
  elseif maximum_threshold_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_maximum_threshold_price.display(value)
  elseif maximum_threshold_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_maximum_threshold_price.display(value)
  elseif maximum_threshold_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_maximum_threshold_price.display(value)
  elseif maximum_threshold_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_maximum_threshold_price.display(value)
  elseif maximum_threshold_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_maximum_threshold_price.display(value)
  elseif maximum_threshold_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_maximum_threshold_price.display(value)
  elseif maximum_threshold_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_maximum_threshold_price.display(value)
  else
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_maximum_threshold_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_maximum_threshold_price, range, value, display)
  local mantissa_display = tmx_mx_solamulticast_hsvf_v1_12.maximum_threshold_price.display(mantissa)

  field_tree:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.maximum_threshold_price, range, mantissa, mantissa_display)

  local maximum_threshold_price_fraction_indicator_entry = field_tree:add("Maximum Threshold Price Fraction Indicator: " .. tostring(maximum_threshold_price_fraction_indicator))
  maximum_threshold_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Min Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_min_price = {}

-- Display: Scaled Min Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_min_price.display = function(value)
  return "Scaled Min Price: " .. string.format("%g", value)
end

-- Display: Scaled Min Price with an unrecognised code
tmx_mx_solamulticast_hsvf_v1_12.scaled_min_price.display_uncoded = function(value)
  return "Scaled Min Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Min Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_min_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.min_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if min_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_min_price.display(value)
  elseif min_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_min_price.display(value)
  elseif min_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_min_price.display(value)
  elseif min_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_min_price.display(value)
  elseif min_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_min_price.display(value)
  elseif min_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_min_price.display(value)
  elseif min_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_min_price.display(value)
  elseif min_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_min_price.display(value)
  elseif min_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_min_price.display(value)
  elseif min_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_min_price.display(value)
  else
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_min_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_min_price, range, value, display)
  local mantissa_display = tmx_mx_solamulticast_hsvf_v1_12.min_price.display(mantissa)

  field_tree:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.min_price, range, mantissa, mantissa_display)

  local min_price_fraction_indicator_entry = field_tree:add("Min Price Fraction Indicator: " .. tostring(min_price_fraction_indicator))
  min_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Minimum Threshold Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_minimum_threshold_price = {}

-- Display: Scaled Minimum Threshold Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_minimum_threshold_price.display = function(value)
  return "Scaled Minimum Threshold Price: " .. string.format("%g", value)
end

-- Display: Scaled Minimum Threshold Price with an unrecognised code
tmx_mx_solamulticast_hsvf_v1_12.scaled_minimum_threshold_price.display_uncoded = function(value)
  return "Scaled Minimum Threshold Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Minimum Threshold Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_minimum_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.minimum_threshold_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if minimum_threshold_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_minimum_threshold_price.display(value)
  elseif minimum_threshold_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_minimum_threshold_price.display(value)
  elseif minimum_threshold_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_minimum_threshold_price.display(value)
  elseif minimum_threshold_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_minimum_threshold_price.display(value)
  elseif minimum_threshold_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_minimum_threshold_price.display(value)
  elseif minimum_threshold_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_minimum_threshold_price.display(value)
  elseif minimum_threshold_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_minimum_threshold_price.display(value)
  elseif minimum_threshold_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_minimum_threshold_price.display(value)
  elseif minimum_threshold_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_minimum_threshold_price.display(value)
  elseif minimum_threshold_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_minimum_threshold_price.display(value)
  else
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_minimum_threshold_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_minimum_threshold_price, range, value, display)
  local mantissa_display = tmx_mx_solamulticast_hsvf_v1_12.minimum_threshold_price.display(mantissa)

  field_tree:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.minimum_threshold_price, range, mantissa, mantissa_display)

  local minimum_threshold_price_fraction_indicator_entry = field_tree:add("Minimum Threshold Price Fraction Indicator: " .. tostring(minimum_threshold_price_fraction_indicator))
  minimum_threshold_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Net Change
tmx_mx_solamulticast_hsvf_v1_12.scaled_net_change = {}

-- Display: Scaled Net Change
tmx_mx_solamulticast_hsvf_v1_12.scaled_net_change.display = function(value)
  return "Scaled Net Change: " .. string.format("%g", value)
end

-- Display: Scaled Net Change with an unrecognised code
tmx_mx_solamulticast_hsvf_v1_12.scaled_net_change.display_uncoded = function(value)
  return "Scaled Net Change: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Net Change
tmx_mx_solamulticast_hsvf_v1_12.scaled_net_change.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.net_change.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if net_change_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_net_change.display(value)
  elseif net_change_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_net_change.display(value)
  elseif net_change_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_net_change.display(value)
  elseif net_change_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_net_change.display(value)
  elseif net_change_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_net_change.display(value)
  elseif net_change_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_net_change.display(value)
  elseif net_change_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_net_change.display(value)
  elseif net_change_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_net_change.display(value)
  elseif net_change_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_net_change.display(value)
  elseif net_change_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_net_change.display(value)
  else
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_net_change.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_net_change, range, value, display)
  local mantissa_display = tmx_mx_solamulticast_hsvf_v1_12.net_change.display(mantissa)

  field_tree:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.net_change, range, mantissa, mantissa_display)

  local net_change_fraction_indicator_entry = field_tree:add("Net Change Fraction Indicator: " .. tostring(net_change_fraction_indicator))
  net_change_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Open Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_open_price = {}

-- Display: Scaled Open Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_open_price.display = function(value)
  return "Scaled Open Price: " .. string.format("%g", value)
end

-- Display: Scaled Open Price with an unrecognised code
tmx_mx_solamulticast_hsvf_v1_12.scaled_open_price.display_uncoded = function(value)
  return "Scaled Open Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Open Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_open_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.open_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if open_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_open_price.display(value)
  elseif open_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_open_price.display(value)
  elseif open_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_open_price.display(value)
  elseif open_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_open_price.display(value)
  elseif open_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_open_price.display(value)
  elseif open_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_open_price.display(value)
  elseif open_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_open_price.display(value)
  elseif open_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_open_price.display(value)
  elseif open_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_open_price.display(value)
  elseif open_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_open_price.display(value)
  else
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_open_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_open_price, range, value, display)
  local mantissa_display = tmx_mx_solamulticast_hsvf_v1_12.open_price.display(mantissa)

  field_tree:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.open_price, range, mantissa, mantissa_display)

  local open_price_fraction_indicator_entry = field_tree:add("Open Price Fraction Indicator: " .. tostring(open_price_fraction_indicator))
  open_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Opening Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_opening_price = {}

-- Display: Scaled Opening Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_opening_price.display = function(value)
  return "Scaled Opening Price: " .. string.format("%g", value)
end

-- Display: Scaled Opening Price with an unrecognised code
tmx_mx_solamulticast_hsvf_v1_12.scaled_opening_price.display_uncoded = function(value)
  return "Scaled Opening Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Opening Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_opening_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.opening_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if opening_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_opening_price.display(value)
  elseif opening_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_opening_price.display(value)
  elseif opening_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_opening_price.display(value)
  elseif opening_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_opening_price.display(value)
  elseif opening_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_opening_price.display(value)
  elseif opening_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_opening_price.display(value)
  elseif opening_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_opening_price.display(value)
  elseif opening_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_opening_price.display(value)
  elseif opening_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_opening_price.display(value)
  elseif opening_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_opening_price.display(value)
  else
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_opening_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_opening_price, range, value, display)
  local mantissa_display = tmx_mx_solamulticast_hsvf_v1_12.opening_price.display(mantissa)

  field_tree:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.opening_price, range, mantissa, mantissa_display)

  local opening_price_fraction_indicator_entry = field_tree:add("Opening Price Fraction Indicator: " .. tostring(opening_price_fraction_indicator))
  opening_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Previous Settlement
tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement = {}

-- Display: Scaled Previous Settlement
tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement.display = function(value)
  return "Scaled Previous Settlement: " .. string.format("%g", value)
end

-- Display: Scaled Previous Settlement with an unrecognised code
tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement.display_uncoded = function(value)
  return "Scaled Previous Settlement: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Previous Settlement
tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.previous_settlement.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if previous_settlement_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement.display(value)
  elseif previous_settlement_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement.display(value)
  elseif previous_settlement_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement.display(value)
  elseif previous_settlement_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement.display(value)
  elseif previous_settlement_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement.display(value)
  elseif previous_settlement_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement.display(value)
  elseif previous_settlement_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement.display(value)
  elseif previous_settlement_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement.display(value)
  elseif previous_settlement_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement.display(value)
  elseif previous_settlement_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement.display(value)
  else
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_previous_settlement, range, value, display)
  local mantissa_display = tmx_mx_solamulticast_hsvf_v1_12.previous_settlement.display(mantissa)

  field_tree:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.previous_settlement, range, mantissa, mantissa_display)

  local previous_settlement_fraction_indicator_entry = field_tree:add("Previous Settlement Fraction Indicator: " .. tostring(previous_settlement_fraction_indicator))
  previous_settlement_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Previous Settlement Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement_price = {}

-- Display: Scaled Previous Settlement Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement_price.display = function(value)
  return "Scaled Previous Settlement Price: " .. string.format("%g", value)
end

-- Display: Scaled Previous Settlement Price with an unrecognised code
tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement_price.display_uncoded = function(value)
  return "Scaled Previous Settlement Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Previous Settlement Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.previous_settlement_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if previous_settlement_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement_price.display(value)
  elseif previous_settlement_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement_price.display(value)
  elseif previous_settlement_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement_price.display(value)
  elseif previous_settlement_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement_price.display(value)
  elseif previous_settlement_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement_price.display(value)
  elseif previous_settlement_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement_price.display(value)
  elseif previous_settlement_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement_price.display(value)
  elseif previous_settlement_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement_price.display(value)
  elseif previous_settlement_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement_price.display(value)
  elseif previous_settlement_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement_price.display(value)
  else
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_previous_settlement_price, range, value, display)
  local mantissa_display = tmx_mx_solamulticast_hsvf_v1_12.previous_settlement_price.display(mantissa)

  field_tree:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.previous_settlement_price, range, mantissa, mantissa_display)

  local previous_settlement_price_fraction_indicator_entry = field_tree:add("Previous Settlement Price Fraction Indicator: " .. tostring(previous_settlement_price_fraction_indicator))
  previous_settlement_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_price = {}

-- Display: Scaled Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_price.display = function(value)
  return "Scaled Price: " .. string.format("%g", value)
end

-- Display: Scaled Price with an unrecognised code
tmx_mx_solamulticast_hsvf_v1_12.scaled_price.display_uncoded = function(value)
  return "Scaled Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.price.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_price.display(value)
  elseif price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_price.display(value)
  elseif price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_price.display(value)
  elseif price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_price.display(value)
  elseif price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_price.display(value)
  elseif price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_price.display(value)
  elseif price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_price.display(value)
  elseif price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_price.display(value)
  elseif price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_price.display(value)
  elseif price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_price.display(value)
  else
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_price, range, value, display)
  local mantissa_display = tmx_mx_solamulticast_hsvf_v1_12.price.display(mantissa)

  field_tree:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.price, range, mantissa, mantissa_display)

  local price_fraction_indicator_entry = field_tree:add("Price Fraction Indicator: " .. tostring(price_fraction_indicator))
  price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Settlement Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_settlement_price = {}

-- Display: Scaled Settlement Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_settlement_price.display = function(value)
  return "Scaled Settlement Price: " .. string.format("%g", value)
end

-- Display: Scaled Settlement Price with an unrecognised code
tmx_mx_solamulticast_hsvf_v1_12.scaled_settlement_price.display_uncoded = function(value)
  return "Scaled Settlement Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Settlement Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.settlement_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if settlement_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_settlement_price.display(value)
  elseif settlement_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_settlement_price.display(value)
  elseif settlement_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_settlement_price.display(value)
  elseif settlement_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_settlement_price.display(value)
  elseif settlement_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_settlement_price.display(value)
  elseif settlement_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_settlement_price.display(value)
  elseif settlement_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_settlement_price.display(value)
  elseif settlement_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_settlement_price.display(value)
  elseif settlement_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_settlement_price.display(value)
  elseif settlement_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_settlement_price.display(value)
  else
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_settlement_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_settlement_price, range, value, display)
  local mantissa_display = tmx_mx_solamulticast_hsvf_v1_12.settlement_price.display(mantissa)

  field_tree:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.settlement_price, range, mantissa, mantissa_display)

  local settlement_price_fraction_indicator_entry = field_tree:add("Settlement Price Fraction Indicator: " .. tostring(settlement_price_fraction_indicator))
  settlement_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Strike Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_strike_price = {}

-- Display: Scaled Strike Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_strike_price.display = function(value)
  return "Scaled Strike Price: " .. string.format("%g", value)
end

-- Display: Scaled Strike Price with an unrecognised code
tmx_mx_solamulticast_hsvf_v1_12.scaled_strike_price.display_uncoded = function(value)
  return "Scaled Strike Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Strike Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.strike_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if strike_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_strike_price.display(value)
  elseif strike_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_strike_price.display(value)
  elseif strike_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_strike_price.display(value)
  elseif strike_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_strike_price.display(value)
  elseif strike_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_strike_price.display(value)
  elseif strike_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_strike_price.display(value)
  elseif strike_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_strike_price.display(value)
  elseif strike_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_strike_price.display(value)
  elseif strike_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_strike_price.display(value)
  elseif strike_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_strike_price.display(value)
  else
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_strike_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_strike_price, range, value, display)
  local mantissa_display = tmx_mx_solamulticast_hsvf_v1_12.strike_price.display(mantissa)

  field_tree:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strike_price, range, mantissa, mantissa_display)

  local strike_price_fraction_indicator_entry = field_tree:add("Strike Price Fraction Indicator: " .. tostring(strike_price_fraction_indicator))
  strike_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Tick Increment
tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_increment = {}

-- Display: Scaled Tick Increment
tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_increment.display = function(value)
  return "Scaled Tick Increment: " .. string.format("%g", value)
end

-- Display: Scaled Tick Increment with an unrecognised code
tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_increment.display_uncoded = function(value)
  return "Scaled Tick Increment: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Tick Increment
tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_increment.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.tick_increment.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if tick_increment_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_increment.display(value)
  elseif tick_increment_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_increment.display(value)
  elseif tick_increment_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_increment.display(value)
  elseif tick_increment_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_increment.display(value)
  elseif tick_increment_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_increment.display(value)
  elseif tick_increment_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_increment.display(value)
  elseif tick_increment_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_increment.display(value)
  elseif tick_increment_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_increment.display(value)
  elseif tick_increment_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_increment.display(value)
  elseif tick_increment_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_increment.display(value)
  else
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_increment.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_tick_increment, range, value, display)
  local mantissa_display = tmx_mx_solamulticast_hsvf_v1_12.tick_increment.display(mantissa)

  field_tree:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.tick_increment, range, mantissa, mantissa_display)

  local tick_increment_fraction_indicator_entry = field_tree:add("Tick Increment Fraction Indicator: " .. tostring(tick_increment_fraction_indicator))
  tick_increment_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Tick Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_price = {}

-- Display: Scaled Tick Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_price.display = function(value)
  return "Scaled Tick Price: " .. string.format("%g", value)
end

-- Display: Scaled Tick Price with an unrecognised code
tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_price.display_uncoded = function(value)
  return "Scaled Tick Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Tick Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.tick_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if tick_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_price.display(value)
  elseif tick_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_price.display(value)
  elseif tick_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_price.display(value)
  elseif tick_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_price.display(value)
  elseif tick_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_price.display(value)
  elseif tick_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_price.display(value)
  elseif tick_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_price.display(value)
  elseif tick_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_price.display(value)
  elseif tick_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_price.display(value)
  elseif tick_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_price.display(value)
  else
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_tick_price, range, value, display)
  local mantissa_display = tmx_mx_solamulticast_hsvf_v1_12.tick_price.display(mantissa)

  field_tree:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.tick_price, range, mantissa, mantissa_display)

  local tick_price_fraction_indicator_entry = field_tree:add("Tick Price Fraction Indicator: " .. tostring(tick_price_fraction_indicator))
  tick_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Tick Value
tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_value = {}

-- Display: Scaled Tick Value
tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_value.display = function(value)
  return "Scaled Tick Value: " .. string.format("%g", value)
end

-- Display: Scaled Tick Value with an unrecognised code
tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_value.display_uncoded = function(value)
  return "Scaled Tick Value: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Tick Value
tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_value.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.tick_value.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if tick_value_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_value.display(value)
  elseif tick_value_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_value.display(value)
  elseif tick_value_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_value.display(value)
  elseif tick_value_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_value.display(value)
  elseif tick_value_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_value.display(value)
  elseif tick_value_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_value.display(value)
  elseif tick_value_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_value.display(value)
  elseif tick_value_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_value.display(value)
  elseif tick_value_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_value.display(value)
  elseif tick_value_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_value.display(value)
  else
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_value.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_tick_value, range, value, display)
  local mantissa_display = tmx_mx_solamulticast_hsvf_v1_12.tick_value.display(mantissa)

  field_tree:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.tick_value, range, mantissa, mantissa_display)

  local tick_value_fraction_indicator_entry = field_tree:add("Tick Value Fraction Indicator: " .. tostring(tick_value_fraction_indicator))
  tick_value_fraction_indicator_entry:set_generated()

  return offset + length, value
end

-- Scaled Trade Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_trade_price = {}

-- Display: Scaled Trade Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_trade_price.display = function(value)
  return "Scaled Trade Price: " .. string.format("%g", value)
end

-- Display: Scaled Trade Price with an unrecognised code
tmx_mx_solamulticast_hsvf_v1_12.scaled_trade_price.display_uncoded = function(value)
  return "Scaled Trade Price: " .. string.format("%g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Trade Price
tmx_mx_solamulticast_hsvf_v1_12.scaled_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solamulticast_hsvf_v1_12.trade_price.size
  local range = buffer(offset, length)
  local mantissa = range:string()

  local value
  local display
  if trade_price_fraction_indicator == "0" then
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_trade_price.display(value)
  elseif trade_price_fraction_indicator == "1" then
    value = mantissa / (10 ^ 1)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_trade_price.display(value)
  elseif trade_price_fraction_indicator == "2" then
    value = mantissa / (10 ^ 2)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_trade_price.display(value)
  elseif trade_price_fraction_indicator == "3" then
    value = mantissa / (10 ^ 3)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_trade_price.display(value)
  elseif trade_price_fraction_indicator == "4" then
    value = mantissa / (10 ^ 4)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_trade_price.display(value)
  elseif trade_price_fraction_indicator == "5" then
    value = mantissa / (10 ^ 5)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_trade_price.display(value)
  elseif trade_price_fraction_indicator == "6" then
    value = mantissa / (10 ^ 6)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_trade_price.display(value)
  elseif trade_price_fraction_indicator == "7" then
    value = mantissa / (10 ^ 7)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_trade_price.display(value)
  elseif trade_price_fraction_indicator == "8" then
    value = mantissa / (10 ^ 8)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_trade_price.display(value)
  elseif trade_price_fraction_indicator == "9" then
    value = mantissa / (10 ^ 9)
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_trade_price.display(value)
  else
    value = mantissa
    display = tmx_mx_solamulticast_hsvf_v1_12.scaled_trade_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.scaled_trade_price, range, value, display)
  local mantissa_display = tmx_mx_solamulticast_hsvf_v1_12.trade_price.display(mantissa)

  field_tree:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.trade_price, range, mantissa, mantissa_display)

  local trade_price_fraction_indicator_entry = field_tree:add("Trade Price Fraction Indicator: " .. tostring(trade_price_fraction_indicator))
  trade_price_fraction_indicator_entry:set_generated()

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Tmx Mx SolaMulticast Hsvf 1.12
-----------------------------------------------------------------------

-- Long Message Header
tmx_mx_solamulticast_hsvf_v1_12.long_message_header = {}

-- Size: Long Message Header
tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size =
  tmx_mx_solamulticast_hsvf_v1_12.message_timestamp.size

-- Display: Long Message Header
tmx_mx_solamulticast_hsvf_v1_12.long_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Message Header
tmx_mx_solamulticast_hsvf_v1_12.long_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Timestamp: N
  index, message_timestamp = tmx_mx_solamulticast_hsvf_v1_12.message_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Message Header
tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.long_message_header, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.long_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Circuit Assurance Message
tmx_mx_solamulticast_hsvf_v1_12.circuit_assurance_message = {}

-- Size: Circuit Assurance Message
tmx_mx_solamulticast_hsvf_v1_12.circuit_assurance_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.time.size

-- Display: Circuit Assurance Message
tmx_mx_solamulticast_hsvf_v1_12.circuit_assurance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Circuit Assurance Message
tmx_mx_solamulticast_hsvf_v1_12.circuit_assurance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Time: N
  index, time = tmx_mx_solamulticast_hsvf_v1_12.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Circuit Assurance Message
tmx_mx_solamulticast_hsvf_v1_12.circuit_assurance_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.circuit_assurance_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.circuit_assurance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.circuit_assurance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.circuit_assurance_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Transmission Message
tmx_mx_solamulticast_hsvf_v1_12.end_of_transmission_message = {}

-- Size: End Of Transmission Message
tmx_mx_solamulticast_hsvf_v1_12.end_of_transmission_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.time.size

-- Display: End Of Transmission Message
tmx_mx_solamulticast_hsvf_v1_12.end_of_transmission_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Transmission Message
tmx_mx_solamulticast_hsvf_v1_12.end_of_transmission_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Time: N
  index, time = tmx_mx_solamulticast_hsvf_v1_12.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Transmission Message
tmx_mx_solamulticast_hsvf_v1_12.end_of_transmission_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.end_of_transmission_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.end_of_transmission_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.end_of_transmission_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.end_of_transmission_message.fields(buffer, offset, packet, parent)
  end
end

-- Tick Entry
tmx_mx_solamulticast_hsvf_v1_12.tick_entry = {}

-- Size: Tick Entry
tmx_mx_solamulticast_hsvf_v1_12.tick_entry.size =
  tmx_mx_solamulticast_hsvf_v1_12.min_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.min_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.tick_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.tick_price_fraction_indicator.size

-- Display: Tick Entry
tmx_mx_solamulticast_hsvf_v1_12.tick_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Entry
tmx_mx_solamulticast_hsvf_v1_12.tick_entry.fields = function(buffer, offset, packet, parent, tick_entry_index)
  local index = offset

  -- Implicit Tick Entry Index
  if tick_entry_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.tick_entry_index, tick_entry_index)
    iteration:set_generated()
  end

  -- Min Price: N
  index, min_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_min_price.dissect(buffer, index, packet, parent)

  -- Min Price Fraction Indicator: X
  index, min_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.min_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Tick Price: N
  index, tick_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_price.dissect(buffer, index, packet, parent)

  -- Tick Price Fraction Indicator: X
  index, tick_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.tick_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Entry
tmx_mx_solamulticast_hsvf_v1_12.tick_entry.dissect = function(buffer, offset, packet, parent, tick_entry_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.tick_entry, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.tick_entry.fields(buffer, offset, packet, parent, tick_entry_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.tick_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.tick_entry.fields(buffer, offset, packet, parent, tick_entry_index)
  end
end

-- Tick Table Message
tmx_mx_solamulticast_hsvf_v1_12.tick_table_message = {}

-- Calculate size of: Tick Table Message
tmx_mx_solamulticast_hsvf_v1_12.tick_table_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.tick_table_name.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.tick_table_short_name.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.nb_entries.size

  -- Calculate field size from count
  local tick_entry_count = buffer(offset + index - 2, 2):string()
  index = index + tick_entry_count * 16

  return index
end

-- Display: Tick Table Message
tmx_mx_solamulticast_hsvf_v1_12.tick_table_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Table Message
tmx_mx_solamulticast_hsvf_v1_12.tick_table_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Tick Table Name: X
  index, tick_table_name = tmx_mx_solamulticast_hsvf_v1_12.tick_table_name.dissect(buffer, index, packet, parent)

  -- Tick Table Short Name: X
  index, tick_table_short_name = tmx_mx_solamulticast_hsvf_v1_12.tick_table_short_name.dissect(buffer, index, packet, parent)

  -- Nb Entries: N
  index, nb_entries = tmx_mx_solamulticast_hsvf_v1_12.nb_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Tick Entry
  for tick_entry_index = 1, nb_entries do
    index, tick_entry = tmx_mx_solamulticast_hsvf_v1_12.tick_entry.dissect(buffer, index, packet, parent, tick_entry_index)
  end

  return index
end

-- Dissect: Tick Table Message
tmx_mx_solamulticast_hsvf_v1_12.tick_table_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.tick_table_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.tick_table_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.tick_table_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.tick_table_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Sales Message
tmx_mx_solamulticast_hsvf_v1_12.end_of_sales_message = {}

-- Size: End Of Sales Message
tmx_mx_solamulticast_hsvf_v1_12.end_of_sales_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.reserved.size + 
  tmx_mx_solamulticast_hsvf_v1_12.time.size

-- Display: End Of Sales Message
tmx_mx_solamulticast_hsvf_v1_12.end_of_sales_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Sales Message
tmx_mx_solamulticast_hsvf_v1_12.end_of_sales_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Reserved: X
  index, reserved = tmx_mx_solamulticast_hsvf_v1_12.reserved.dissect(buffer, index, packet, parent)

  -- Time: N
  index, time = tmx_mx_solamulticast_hsvf_v1_12.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Sales Message
tmx_mx_solamulticast_hsvf_v1_12.end_of_sales_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.end_of_sales_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.end_of_sales_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.end_of_sales_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.end_of_sales_message.fields(buffer, offset, packet, parent)
  end
end

-- Special Text Bulletin
tmx_mx_solamulticast_hsvf_v1_12.special_text_bulletin = {}

-- Size: Special Text Bulletin
tmx_mx_solamulticast_hsvf_v1_12.special_text_bulletin.size =
  tmx_mx_solamulticast_hsvf_v1_12.symbol.size + 
  tmx_mx_solamulticast_hsvf_v1_12.special_bulletin_contents.size + 
  tmx_mx_solamulticast_hsvf_v1_12.continue_marker.size

-- Display: Special Text Bulletin
tmx_mx_solamulticast_hsvf_v1_12.special_text_bulletin.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Special Text Bulletin
tmx_mx_solamulticast_hsvf_v1_12.special_text_bulletin.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: X
  index, symbol = tmx_mx_solamulticast_hsvf_v1_12.symbol.dissect(buffer, index, packet, parent)

  -- Special Bulletin Contents: X
  index, special_bulletin_contents = tmx_mx_solamulticast_hsvf_v1_12.special_bulletin_contents.dissect(buffer, index, packet, parent)

  -- Continue Marker: N
  index, continue_marker = tmx_mx_solamulticast_hsvf_v1_12.continue_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Special Text Bulletin
tmx_mx_solamulticast_hsvf_v1_12.special_text_bulletin.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.special_text_bulletin, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.special_text_bulletin.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.special_text_bulletin.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.special_text_bulletin.fields(buffer, offset, packet, parent)
  end
end

-- Regular Text Bulletin
tmx_mx_solamulticast_hsvf_v1_12.regular_text_bulletin = {}

-- Size: Regular Text Bulletin
tmx_mx_solamulticast_hsvf_v1_12.regular_text_bulletin.size =
  tmx_mx_solamulticast_hsvf_v1_12.regular_bulletin_contents.size + 
  tmx_mx_solamulticast_hsvf_v1_12.continue_marker.size

-- Display: Regular Text Bulletin
tmx_mx_solamulticast_hsvf_v1_12.regular_text_bulletin.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Regular Text Bulletin
tmx_mx_solamulticast_hsvf_v1_12.regular_text_bulletin.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Regular Bulletin Contents: X
  index, regular_bulletin_contents = tmx_mx_solamulticast_hsvf_v1_12.regular_bulletin_contents.dissect(buffer, index, packet, parent)

  -- Continue Marker: N
  index, continue_marker = tmx_mx_solamulticast_hsvf_v1_12.continue_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Regular Text Bulletin
tmx_mx_solamulticast_hsvf_v1_12.regular_text_bulletin.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.regular_text_bulletin, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.regular_text_bulletin.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.regular_text_bulletin.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.regular_text_bulletin.fields(buffer, offset, packet, parent)
  end
end

-- Bulletin
tmx_mx_solamulticast_hsvf_v1_12.bulletin = {}

-- Dissect: Bulletin
tmx_mx_solamulticast_hsvf_v1_12.bulletin.dissect = function(buffer, offset, packet, parent, bulletin_type)
  -- Dissect Regular Text Bulletin
  if bulletin_type == "1" then
    return tmx_mx_solamulticast_hsvf_v1_12.regular_text_bulletin.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Special Text Bulletin
  if bulletin_type == "2" then
    return tmx_mx_solamulticast_hsvf_v1_12.special_text_bulletin.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Bulletins Message
tmx_mx_solamulticast_hsvf_v1_12.bulletins_message = {}

-- Calculate size of: Bulletins Message
tmx_mx_solamulticast_hsvf_v1_12.bulletins_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.reserved.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.bulletin_type.size

  -- Calculate runtime size of Bulletin field
  local bulletin_offset = offset + index
  local bulletin_type = buffer(bulletin_offset - 1, 1):string()
  index = index + tmx_mx_solamulticast_hsvf_v1_12.bulletin.size(buffer, bulletin_offset, bulletin_type)

  return index
end

-- Display: Bulletins Message
tmx_mx_solamulticast_hsvf_v1_12.bulletins_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulletins Message
tmx_mx_solamulticast_hsvf_v1_12.bulletins_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Reserved: X
  index, reserved = tmx_mx_solamulticast_hsvf_v1_12.reserved.dissect(buffer, index, packet, parent)

  -- Bulletin Type: X
  index, bulletin_type = tmx_mx_solamulticast_hsvf_v1_12.bulletin_type.dissect(buffer, index, packet, parent)

  -- Bulletin: Runtime Type with 2 branches
  index = tmx_mx_solamulticast_hsvf_v1_12.bulletin.dissect(buffer, index, packet, parent, bulletin_type)

  return index
end

-- Dissect: Bulletins Message
tmx_mx_solamulticast_hsvf_v1_12.bulletins_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.bulletins_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.bulletins_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.bulletins_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.bulletins_message.fields(buffer, offset, packet, parent)
  end
end

-- Group Status Strategies Message
tmx_mx_solamulticast_hsvf_v1_12.group_status_strategies_message = {}

-- Size: Group Status Strategies Message
tmx_mx_solamulticast_hsvf_v1_12.group_status_strategies_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.group_instrument.size + 
  tmx_mx_solamulticast_hsvf_v1_12.group_status.size

-- Display: Group Status Strategies Message
tmx_mx_solamulticast_hsvf_v1_12.group_status_strategies_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Status Strategies Message
tmx_mx_solamulticast_hsvf_v1_12.group_status_strategies_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_solamulticast_hsvf_v1_12.group_instrument.dissect(buffer, index, packet, parent)

  -- Group Status: A
  index, group_status = tmx_mx_solamulticast_hsvf_v1_12.group_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Status Strategies Message
tmx_mx_solamulticast_hsvf_v1_12.group_status_strategies_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.group_status_strategies_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.group_status_strategies_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.group_status_strategies_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.group_status_strategies_message.fields(buffer, offset, packet, parent)
  end
end

-- Group Status Message
tmx_mx_solamulticast_hsvf_v1_12.group_status_message = {}

-- Size: Group Status Message
tmx_mx_solamulticast_hsvf_v1_12.group_status_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.root_symbol.size + 
  tmx_mx_solamulticast_hsvf_v1_12.group_status.size

-- Display: Group Status Message
tmx_mx_solamulticast_hsvf_v1_12.group_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Status Message
tmx_mx_solamulticast_hsvf_v1_12.group_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: X
  index, root_symbol = tmx_mx_solamulticast_hsvf_v1_12.root_symbol.dissect(buffer, index, packet, parent)

  -- Group Status: A
  index, group_status = tmx_mx_solamulticast_hsvf_v1_12.group_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Status Message
tmx_mx_solamulticast_hsvf_v1_12.group_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.group_status_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.group_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.group_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.group_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Future Product
tmx_mx_solamulticast_hsvf_v1_12.future_product = {}

-- Size: Future Product
tmx_mx_solamulticast_hsvf_v1_12.future_product.size =
  tmx_mx_solamulticast_hsvf_v1_12.root.size + 
  tmx_mx_solamulticast_hsvf_v1_12.symbol_month.size + 
  tmx_mx_solamulticast_hsvf_v1_12.symbol_year.size + 
  tmx_mx_solamulticast_hsvf_v1_12.expiry_day.size

-- Display: Future Product
tmx_mx_solamulticast_hsvf_v1_12.future_product.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Product
tmx_mx_solamulticast_hsvf_v1_12.future_product.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Root: A
  index, root = tmx_mx_solamulticast_hsvf_v1_12.root.dissect(buffer, index, packet, parent)

  -- Symbol Month: A
  index, symbol_month = tmx_mx_solamulticast_hsvf_v1_12.symbol_month.dissect(buffer, index, packet, parent)

  -- Symbol Year: N
  index, symbol_year = tmx_mx_solamulticast_hsvf_v1_12.symbol_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solamulticast_hsvf_v1_12.expiry_day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Product
tmx_mx_solamulticast_hsvf_v1_12.future_product.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.future_product, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.future_product.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.future_product.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.future_product.fields(buffer, offset, packet, parent)
  end
end

-- Futures Trade Correction Message
tmx_mx_solamulticast_hsvf_v1_12.futures_trade_correction_message = {}

-- Size: Futures Trade Correction Message
tmx_mx_solamulticast_hsvf_v1_12.futures_trade_correction_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.future_product.size + 
  tmx_mx_solamulticast_hsvf_v1_12.volume.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.net_change_sign.size + 
  tmx_mx_solamulticast_hsvf_v1_12.net_change.size + 
  tmx_mx_solamulticast_hsvf_v1_12.net_change_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.filler_6.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_timestamp.size + 
  tmx_mx_solamulticast_hsvf_v1_12.price_indicator_marker.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_number.size

-- Display: Futures Trade Correction Message
tmx_mx_solamulticast_hsvf_v1_12.futures_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Trade Correction Message
tmx_mx_solamulticast_hsvf_v1_12.futures_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Product: Struct of 4 fields
  index, future_product = tmx_mx_solamulticast_hsvf_v1_12.future_product.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solamulticast_hsvf_v1_12.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign: X
  index, net_change_sign = tmx_mx_solamulticast_hsvf_v1_12.net_change_sign.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_solamulticast_hsvf_v1_12.scaled_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_solamulticast_hsvf_v1_12.filler_6.dissect(buffer, index, packet, parent)

  -- Trade Timestamp: N
  index, trade_timestamp = tmx_mx_solamulticast_hsvf_v1_12.trade_timestamp.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker: X
  index, price_indicator_marker = tmx_mx_solamulticast_hsvf_v1_12.price_indicator_marker.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_solamulticast_hsvf_v1_12.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Trade Correction Message
tmx_mx_solamulticast_hsvf_v1_12.futures_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.futures_trade_correction_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.futures_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.futures_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.futures_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Beginning Of Strategy Summary Message
tmx_mx_solamulticast_hsvf_v1_12.beginning_of_strategy_summary_message = {}

-- Size: Beginning Of Strategy Summary Message
tmx_mx_solamulticast_hsvf_v1_12.beginning_of_strategy_summary_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size

-- Display: Beginning Of Strategy Summary Message
tmx_mx_solamulticast_hsvf_v1_12.beginning_of_strategy_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Beginning Of Strategy Summary Message
tmx_mx_solamulticast_hsvf_v1_12.beginning_of_strategy_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Strategy Summary Message
tmx_mx_solamulticast_hsvf_v1_12.beginning_of_strategy_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.beginning_of_strategy_summary_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.beginning_of_strategy_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.beginning_of_strategy_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.beginning_of_strategy_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Beginning Of Futures Summary Message
tmx_mx_solamulticast_hsvf_v1_12.beginning_of_futures_summary_message = {}

-- Size: Beginning Of Futures Summary Message
tmx_mx_solamulticast_hsvf_v1_12.beginning_of_futures_summary_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size

-- Display: Beginning Of Futures Summary Message
tmx_mx_solamulticast_hsvf_v1_12.beginning_of_futures_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Beginning Of Futures Summary Message
tmx_mx_solamulticast_hsvf_v1_12.beginning_of_futures_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Futures Summary Message
tmx_mx_solamulticast_hsvf_v1_12.beginning_of_futures_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.beginning_of_futures_summary_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.beginning_of_futures_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.beginning_of_futures_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.beginning_of_futures_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Beginning Of Future Options Summary Message
tmx_mx_solamulticast_hsvf_v1_12.beginning_of_future_options_summary_message = {}

-- Size: Beginning Of Future Options Summary Message
tmx_mx_solamulticast_hsvf_v1_12.beginning_of_future_options_summary_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size

-- Display: Beginning Of Future Options Summary Message
tmx_mx_solamulticast_hsvf_v1_12.beginning_of_future_options_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Beginning Of Future Options Summary Message
tmx_mx_solamulticast_hsvf_v1_12.beginning_of_future_options_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Future Options Summary Message
tmx_mx_solamulticast_hsvf_v1_12.beginning_of_future_options_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.beginning_of_future_options_summary_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.beginning_of_future_options_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.beginning_of_future_options_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.beginning_of_future_options_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Beginning Of Options Summary Message
tmx_mx_solamulticast_hsvf_v1_12.beginning_of_options_summary_message = {}

-- Size: Beginning Of Options Summary Message
tmx_mx_solamulticast_hsvf_v1_12.beginning_of_options_summary_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size

-- Display: Beginning Of Options Summary Message
tmx_mx_solamulticast_hsvf_v1_12.beginning_of_options_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Beginning Of Options Summary Message
tmx_mx_solamulticast_hsvf_v1_12.beginning_of_options_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Options Summary Message
tmx_mx_solamulticast_hsvf_v1_12.beginning_of_options_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.beginning_of_options_summary_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.beginning_of_options_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.beginning_of_options_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.beginning_of_options_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Summary Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_summary_message = {}

-- Size: Strategy Summary Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_summary_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.strategy_symbol.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_price_sign.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_price_summary.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_size.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_price_sign.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_price_summary.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_size.size + 
  tmx_mx_solamulticast_hsvf_v1_12.last_price_sign.size + 
  tmx_mx_solamulticast_hsvf_v1_12.last_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.last_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.open_price_sign.size + 
  tmx_mx_solamulticast_hsvf_v1_12.open_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.open_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.high_price_sign.size + 
  tmx_mx_solamulticast_hsvf_v1_12.high_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.high_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.low_price_sign.size + 
  tmx_mx_solamulticast_hsvf_v1_12.low_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.low_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.net_change_sign.size + 
  tmx_mx_solamulticast_hsvf_v1_12.net_change.size + 
  tmx_mx_solamulticast_hsvf_v1_12.net_change_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.volume.size + 
  tmx_mx_solamulticast_hsvf_v1_12.reason.size

-- Display: Strategy Summary Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Summary Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Strategy Symbol: X
  index, strategy_symbol = tmx_mx_solamulticast_hsvf_v1_12.strategy_symbol.dissect(buffer, index, packet, parent)

  -- Bid Price Sign: X
  index, bid_price_sign = tmx_mx_solamulticast_hsvf_v1_12.bid_price_sign.dissect(buffer, index, packet, parent)

  -- Bid Price Summary: N
  index, bid_price_summary = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_summary.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_solamulticast_hsvf_v1_12.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price Sign: X
  index, ask_price_sign = tmx_mx_solamulticast_hsvf_v1_12.ask_price_sign.dissect(buffer, index, packet, parent)

  -- Ask Price Summary: N
  index, ask_price_summary = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_summary.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_solamulticast_hsvf_v1_12.ask_size.dissect(buffer, index, packet, parent)

  -- Last Price Sign: X
  index, last_price_sign = tmx_mx_solamulticast_hsvf_v1_12.last_price_sign.dissect(buffer, index, packet, parent)

  -- Last Price: N
  index, last_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_last_price.dissect(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.last_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Open Price Sign: X
  index, open_price_sign = tmx_mx_solamulticast_hsvf_v1_12.open_price_sign.dissect(buffer, index, packet, parent)

  -- Open Price: N
  index, open_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_open_price.dissect(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: X
  index, open_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.open_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- High Price Sign: X
  index, high_price_sign = tmx_mx_solamulticast_hsvf_v1_12.high_price_sign.dissect(buffer, index, packet, parent)

  -- High Price: N
  index, high_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_high_price.dissect(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.high_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Low Price Sign: X
  index, low_price_sign = tmx_mx_solamulticast_hsvf_v1_12.low_price_sign.dissect(buffer, index, packet, parent)

  -- Low Price: N
  index, low_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_low_price.dissect(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.low_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign: X
  index, net_change_sign = tmx_mx_solamulticast_hsvf_v1_12.net_change_sign.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_solamulticast_hsvf_v1_12.scaled_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solamulticast_hsvf_v1_12.volume.dissect(buffer, index, packet, parent)

  -- Reason: X
  index, reason = tmx_mx_solamulticast_hsvf_v1_12.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Summary Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strategy_summary_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.strategy_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.strategy_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.strategy_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Futures Summary Message
tmx_mx_solamulticast_hsvf_v1_12.futures_summary_message = {}

-- Size: Futures Summary Message
tmx_mx_solamulticast_hsvf_v1_12.futures_summary_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.future_product.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_price_summary.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_size.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_price_summary.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_size.size + 
  tmx_mx_solamulticast_hsvf_v1_12.last_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.last_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.open_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.open_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.high_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.high_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.low_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.low_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.settlement_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.settlement_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.net_change_sign.size + 
  tmx_mx_solamulticast_hsvf_v1_12.net_change.size + 
  tmx_mx_solamulticast_hsvf_v1_12.net_change_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.volume.size + 
  tmx_mx_solamulticast_hsvf_v1_12.previous_settlement.size + 
  tmx_mx_solamulticast_hsvf_v1_12.previous_settlement_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.open_interest.size + 
  tmx_mx_solamulticast_hsvf_v1_12.open_interest_date.size + 
  tmx_mx_solamulticast_hsvf_v1_12.reason.size + 
  tmx_mx_solamulticast_hsvf_v1_12.external_price_at_source.size + 
  tmx_mx_solamulticast_hsvf_v1_12.external_price_fraction_indicator.size

-- Display: Futures Summary Message
tmx_mx_solamulticast_hsvf_v1_12.futures_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Summary Message
tmx_mx_solamulticast_hsvf_v1_12.futures_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Product: Struct of 4 fields
  index, future_product = tmx_mx_solamulticast_hsvf_v1_12.future_product.dissect(buffer, index, packet, parent)

  -- Bid Price Summary: N
  index, bid_price_summary = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_summary.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_solamulticast_hsvf_v1_12.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price Summary: N
  index, ask_price_summary = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_summary.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_solamulticast_hsvf_v1_12.ask_size.dissect(buffer, index, packet, parent)

  -- Last Price: N
  index, last_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_last_price.dissect(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.last_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Open Price: N
  index, open_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_open_price.dissect(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: X
  index, open_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.open_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- High Price: N
  index, high_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_high_price.dissect(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.high_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Low Price: N
  index, low_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_low_price.dissect(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.low_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Price: N
  index, settlement_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_settlement_price.dissect(buffer, index, packet, parent)

  -- Settlement Price Fraction Indicator: N
  index, settlement_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.settlement_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign: X
  index, net_change_sign = tmx_mx_solamulticast_hsvf_v1_12.net_change_sign.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_solamulticast_hsvf_v1_12.scaled_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solamulticast_hsvf_v1_12.volume.dissect(buffer, index, packet, parent)

  -- Previous Settlement: N
  index, previous_settlement = tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement.dissect(buffer, index, packet, parent)

  -- Previous Settlement Fraction Indicator: X
  index, previous_settlement_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.previous_settlement_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Open Interest: N
  index, open_interest = tmx_mx_solamulticast_hsvf_v1_12.open_interest.dissect(buffer, index, packet, parent)

  -- Open Interest Date: N
  index, open_interest_date = tmx_mx_solamulticast_hsvf_v1_12.open_interest_date.dissect(buffer, index, packet, parent)

  -- Reason: X
  index, reason = tmx_mx_solamulticast_hsvf_v1_12.reason.dissect(buffer, index, packet, parent)

  -- External Price At Source: N
  index, external_price_at_source = tmx_mx_solamulticast_hsvf_v1_12.scaled_external_price_at_source.dissect(buffer, index, packet, parent)

  -- External Price Fraction Indicator: X
  index, external_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.external_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Summary Message
tmx_mx_solamulticast_hsvf_v1_12.futures_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.futures_summary_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.futures_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.futures_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.futures_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Future Option Symbol
tmx_mx_solamulticast_hsvf_v1_12.future_option_symbol = {}

-- Size: Future Option Symbol
tmx_mx_solamulticast_hsvf_v1_12.future_option_symbol.size =
  tmx_mx_solamulticast_hsvf_v1_12.root.size + 
  tmx_mx_solamulticast_hsvf_v1_12.symbol_month.size + 
  tmx_mx_solamulticast_hsvf_v1_12.symbol_year.size + 
  tmx_mx_solamulticast_hsvf_v1_12.expiry_day.size + 
  tmx_mx_solamulticast_hsvf_v1_12.call_put_code.size + 
  tmx_mx_solamulticast_hsvf_v1_12.strike_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.strike_price_fraction_indicator.size

-- Display: Future Option Symbol
tmx_mx_solamulticast_hsvf_v1_12.future_option_symbol.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Option Symbol
tmx_mx_solamulticast_hsvf_v1_12.future_option_symbol.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Root: A
  index, root = tmx_mx_solamulticast_hsvf_v1_12.root.dissect(buffer, index, packet, parent)

  -- Symbol Month: A
  index, symbol_month = tmx_mx_solamulticast_hsvf_v1_12.symbol_month.dissect(buffer, index, packet, parent)

  -- Symbol Year: N
  index, symbol_year = tmx_mx_solamulticast_hsvf_v1_12.symbol_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solamulticast_hsvf_v1_12.expiry_day.dissect(buffer, index, packet, parent)

  -- Call Put Code: A
  index, call_put_code = tmx_mx_solamulticast_hsvf_v1_12.call_put_code.dissect(buffer, index, packet, parent)

  -- Strike Price: N
  index, strike_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_strike_price.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Option Symbol
tmx_mx_solamulticast_hsvf_v1_12.future_option_symbol.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.future_option_symbol, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.future_option_symbol.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.future_option_symbol.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.future_option_symbol.fields(buffer, offset, packet, parent)
  end
end

-- Future Options Summary Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_summary_message = {}

-- Size: Future Options Summary Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_summary_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.future_option_symbol.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_price_summary.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_size.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_price_summary.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_size.size + 
  tmx_mx_solamulticast_hsvf_v1_12.last_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.last_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.open_interest.size + 
  tmx_mx_solamulticast_hsvf_v1_12.open_interest_date.size + 
  tmx_mx_solamulticast_hsvf_v1_12.tick.size + 
  tmx_mx_solamulticast_hsvf_v1_12.volume.size + 
  tmx_mx_solamulticast_hsvf_v1_12.net_change_sign.size + 
  tmx_mx_solamulticast_hsvf_v1_12.net_change.size + 
  tmx_mx_solamulticast_hsvf_v1_12.net_change_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.opening_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.opening_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.high_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.high_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.low_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.low_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.filler_2.size + 
  tmx_mx_solamulticast_hsvf_v1_12.settlement_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.settlement_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.previous_settlement_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.previous_settlement_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.reason.size

-- Display: Future Options Summary Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Summary Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Option Symbol: Struct of 7 fields
  index, future_option_symbol = tmx_mx_solamulticast_hsvf_v1_12.future_option_symbol.dissect(buffer, index, packet, parent)

  -- Bid Price Summary: N
  index, bid_price_summary = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_summary.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_solamulticast_hsvf_v1_12.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price Summary: N
  index, ask_price_summary = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_summary.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_solamulticast_hsvf_v1_12.ask_size.dissect(buffer, index, packet, parent)

  -- Last Price: N
  index, last_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_last_price.dissect(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.last_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Open Interest: N
  index, open_interest = tmx_mx_solamulticast_hsvf_v1_12.open_interest.dissect(buffer, index, packet, parent)

  -- Open Interest Date: N
  index, open_interest_date = tmx_mx_solamulticast_hsvf_v1_12.open_interest_date.dissect(buffer, index, packet, parent)

  -- Tick: X
  index, tick = tmx_mx_solamulticast_hsvf_v1_12.tick.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solamulticast_hsvf_v1_12.volume.dissect(buffer, index, packet, parent)

  -- Net Change Sign: X
  index, net_change_sign = tmx_mx_solamulticast_hsvf_v1_12.net_change_sign.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_solamulticast_hsvf_v1_12.scaled_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Opening Price: N
  index, opening_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_opening_price.dissect(buffer, index, packet, parent)

  -- Opening Price Fraction Indicator: X
  index, opening_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.opening_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- High Price: N
  index, high_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_high_price.dissect(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.high_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Low Price: N
  index, low_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_low_price.dissect(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.low_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Filler 2: X
  index, filler_2 = tmx_mx_solamulticast_hsvf_v1_12.filler_2.dissect(buffer, index, packet, parent)

  -- Settlement Price: N
  index, settlement_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_settlement_price.dissect(buffer, index, packet, parent)

  -- Settlement Price Fraction Indicator: N
  index, settlement_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.settlement_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Previous Settlement Price: N
  index, previous_settlement_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement_price.dissect(buffer, index, packet, parent)

  -- Previous Settlement Price Fraction Indicator: X
  index, previous_settlement_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.previous_settlement_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Reason: X
  index, reason = tmx_mx_solamulticast_hsvf_v1_12.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Summary Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.future_options_summary_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.future_options_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.future_options_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.future_options_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Symbol
tmx_mx_solamulticast_hsvf_v1_12.option_symbol = {}

-- Size: Option Symbol
tmx_mx_solamulticast_hsvf_v1_12.option_symbol.size =
  tmx_mx_solamulticast_hsvf_v1_12.root.size + 
  tmx_mx_solamulticast_hsvf_v1_12.expiry_month.size + 
  tmx_mx_solamulticast_hsvf_v1_12.filler_1.size + 
  tmx_mx_solamulticast_hsvf_v1_12.strike_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.strike_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.expiry_year.size + 
  tmx_mx_solamulticast_hsvf_v1_12.expiry_day.size

-- Display: Option Symbol
tmx_mx_solamulticast_hsvf_v1_12.option_symbol.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Symbol
tmx_mx_solamulticast_hsvf_v1_12.option_symbol.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Root: A
  index, root = tmx_mx_solamulticast_hsvf_v1_12.root.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_solamulticast_hsvf_v1_12.expiry_month.dissect(buffer, index, packet, parent)

  -- Filler 1: X
  index, filler_1 = tmx_mx_solamulticast_hsvf_v1_12.filler_1.dissect(buffer, index, packet, parent)

  -- Strike Price: N
  index, strike_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_strike_price.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_solamulticast_hsvf_v1_12.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solamulticast_hsvf_v1_12.expiry_day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Symbol
tmx_mx_solamulticast_hsvf_v1_12.option_symbol.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.option_symbol, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.option_symbol.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.option_symbol.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.option_symbol.fields(buffer, offset, packet, parent)
  end
end

-- Option Summary Message
tmx_mx_solamulticast_hsvf_v1_12.option_summary_message = {}

-- Size: Option Summary Message
tmx_mx_solamulticast_hsvf_v1_12.option_summary_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.option_symbol.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_price_summary.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_size.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_price_summary.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_size.size + 
  tmx_mx_solamulticast_hsvf_v1_12.last_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.last_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.open_interest.size + 
  tmx_mx_solamulticast_hsvf_v1_12.open_interest_date.size + 
  tmx_mx_solamulticast_hsvf_v1_12.tick.size + 
  tmx_mx_solamulticast_hsvf_v1_12.volume.size + 
  tmx_mx_solamulticast_hsvf_v1_12.net_change_sign.size + 
  tmx_mx_solamulticast_hsvf_v1_12.net_change.size + 
  tmx_mx_solamulticast_hsvf_v1_12.net_change_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.open_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.open_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.high_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.high_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.low_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.low_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.option_marker.size + 
  tmx_mx_solamulticast_hsvf_v1_12.settlement_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.settlement_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.previous_settlement_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.previous_settlement_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.reason.size

-- Display: Option Summary Message
tmx_mx_solamulticast_hsvf_v1_12.option_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Summary Message
tmx_mx_solamulticast_hsvf_v1_12.option_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Option Symbol: Struct of 7 fields
  index, option_symbol = tmx_mx_solamulticast_hsvf_v1_12.option_symbol.dissect(buffer, index, packet, parent)

  -- Bid Price Summary: N
  index, bid_price_summary = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_summary.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_solamulticast_hsvf_v1_12.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price Summary: N
  index, ask_price_summary = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_summary.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_solamulticast_hsvf_v1_12.ask_size.dissect(buffer, index, packet, parent)

  -- Last Price: N
  index, last_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_last_price.dissect(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.last_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Open Interest: N
  index, open_interest = tmx_mx_solamulticast_hsvf_v1_12.open_interest.dissect(buffer, index, packet, parent)

  -- Open Interest Date: N
  index, open_interest_date = tmx_mx_solamulticast_hsvf_v1_12.open_interest_date.dissect(buffer, index, packet, parent)

  -- Tick: X
  index, tick = tmx_mx_solamulticast_hsvf_v1_12.tick.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solamulticast_hsvf_v1_12.volume.dissect(buffer, index, packet, parent)

  -- Net Change Sign: X
  index, net_change_sign = tmx_mx_solamulticast_hsvf_v1_12.net_change_sign.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_solamulticast_hsvf_v1_12.scaled_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Open Price: N
  index, open_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_open_price.dissect(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: X
  index, open_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.open_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- High Price: N
  index, high_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_high_price.dissect(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.high_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Low Price: N
  index, low_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_low_price.dissect(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.low_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Option Marker: A
  index, option_marker = tmx_mx_solamulticast_hsvf_v1_12.option_marker.dissect(buffer, index, packet, parent)

  -- Settlement Price: N
  index, settlement_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_settlement_price.dissect(buffer, index, packet, parent)

  -- Settlement Price Fraction Indicator: N
  index, settlement_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.settlement_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Previous Settlement Price: N
  index, previous_settlement_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_previous_settlement_price.dissect(buffer, index, packet, parent)

  -- Previous Settlement Price Fraction Indicator: X
  index, previous_settlement_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.previous_settlement_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Reason: X
  index, reason = tmx_mx_solamulticast_hsvf_v1_12.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Summary Message
tmx_mx_solamulticast_hsvf_v1_12.option_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.option_summary_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.option_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.option_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.option_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Instrument Leg
tmx_mx_solamulticast_hsvf_v1_12.strategy_instrument_leg = {}

-- Size: Strategy Instrument Leg
tmx_mx_solamulticast_hsvf_v1_12.strategy_instrument_leg.size =
  tmx_mx_solamulticast_hsvf_v1_12.leg_ratio_sign.size + 
  tmx_mx_solamulticast_hsvf_v1_12.leg_ratio.size + 
  tmx_mx_solamulticast_hsvf_v1_12.leg_symbol.size

-- Display: Strategy Instrument Leg
tmx_mx_solamulticast_hsvf_v1_12.strategy_instrument_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Instrument Leg
tmx_mx_solamulticast_hsvf_v1_12.strategy_instrument_leg.fields = function(buffer, offset, packet, parent, strategy_instrument_leg_index)
  local index = offset

  -- Implicit Strategy Instrument Leg Index
  if strategy_instrument_leg_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strategy_instrument_leg_index, strategy_instrument_leg_index)
    iteration:set_generated()
  end

  -- Leg Ratio Sign: X
  index, leg_ratio_sign = tmx_mx_solamulticast_hsvf_v1_12.leg_ratio_sign.dissect(buffer, index, packet, parent)

  -- Leg Ratio: N
  index, leg_ratio = tmx_mx_solamulticast_hsvf_v1_12.leg_ratio.dissect(buffer, index, packet, parent)

  -- Leg Symbol: X
  index, leg_symbol = tmx_mx_solamulticast_hsvf_v1_12.leg_symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Instrument Leg
tmx_mx_solamulticast_hsvf_v1_12.strategy_instrument_leg.dissect = function(buffer, offset, packet, parent, strategy_instrument_leg_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strategy_instrument_leg, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.strategy_instrument_leg.fields(buffer, offset, packet, parent, strategy_instrument_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.strategy_instrument_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.strategy_instrument_leg.fields(buffer, offset, packet, parent, strategy_instrument_leg_index)
  end
end

-- Strategy Instrument Keys Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_instrument_keys_message = {}

-- Calculate size of: Strategy Instrument Keys Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_instrument_keys_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.strategy_symbol.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.expiry_year.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.expiry_month.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.expiry_day.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.maximum_number_of_contracts_per_order.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.minimum_number_of_contracts_per_order.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.maximum_threshold_price.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.maximum_threshold_price_fraction_indicator.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.minimum_threshold_price.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.minimum_threshold_price_fraction_indicator.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.tick_increment.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.tick_increment_fraction_indicator.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.market_flow_indicator.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.group_instrument.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.instrument.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.instrument_external_code.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.strategy_allow_implied.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.strategy_code.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.number_of_legs.size

  -- Calculate field size from count
  local strategy_instrument_leg_count = buffer(offset + index - 2, 2):string()
  index = index + strategy_instrument_leg_count * 35

  return index
end

-- Display: Strategy Instrument Keys Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_instrument_keys_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Instrument Keys Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_instrument_keys_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Strategy Symbol: X
  index, strategy_symbol = tmx_mx_solamulticast_hsvf_v1_12.strategy_symbol.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_solamulticast_hsvf_v1_12.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_solamulticast_hsvf_v1_12.expiry_month.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solamulticast_hsvf_v1_12.expiry_day.dissect(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: X
  index, maximum_number_of_contracts_per_order = tmx_mx_solamulticast_hsvf_v1_12.maximum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: X
  index, minimum_number_of_contracts_per_order = tmx_mx_solamulticast_hsvf_v1_12.minimum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price: N
  index, maximum_threshold_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_maximum_threshold_price.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.maximum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price: N
  index, minimum_threshold_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_minimum_threshold_price.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.minimum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Tick Increment: X
  index, tick_increment = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_increment.dissect(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: X
  index, tick_increment_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.tick_increment_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Market Flow Indicator: X
  index, market_flow_indicator = tmx_mx_solamulticast_hsvf_v1_12.market_flow_indicator.dissect(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_solamulticast_hsvf_v1_12.group_instrument.dissect(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = tmx_mx_solamulticast_hsvf_v1_12.instrument.dissect(buffer, index, packet, parent)

  -- Instrument External Code: X
  index, instrument_external_code = tmx_mx_solamulticast_hsvf_v1_12.instrument_external_code.dissect(buffer, index, packet, parent)

  -- Strategy Allow Implied: A
  index, strategy_allow_implied = tmx_mx_solamulticast_hsvf_v1_12.strategy_allow_implied.dissect(buffer, index, packet, parent)

  -- Strategy Code: X
  index, strategy_code = tmx_mx_solamulticast_hsvf_v1_12.strategy_code.dissect(buffer, index, packet, parent)

  -- Number Of Legs: N
  index, number_of_legs = tmx_mx_solamulticast_hsvf_v1_12.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Strategy Instrument Leg
  for strategy_instrument_leg_index = 1, number_of_legs do
    index, strategy_instrument_leg = tmx_mx_solamulticast_hsvf_v1_12.strategy_instrument_leg.dissect(buffer, index, packet, parent, strategy_instrument_leg_index)
  end

  return index
end

-- Dissect: Strategy Instrument Keys Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_instrument_keys_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strategy_instrument_keys_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.strategy_instrument_keys_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.strategy_instrument_keys_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.strategy_instrument_keys_message.fields(buffer, offset, packet, parent)
  end
end

-- Associated Product
tmx_mx_solamulticast_hsvf_v1_12.associated_product = {}

-- Size: Associated Product
tmx_mx_solamulticast_hsvf_v1_12.associated_product.size =
  tmx_mx_solamulticast_hsvf_v1_12.root_symbol.size + 
  tmx_mx_solamulticast_hsvf_v1_12.symbol_month.size + 
  tmx_mx_solamulticast_hsvf_v1_12.symbol_year.size + 
  tmx_mx_solamulticast_hsvf_v1_12.expiry_day.size

-- Display: Associated Product
tmx_mx_solamulticast_hsvf_v1_12.associated_product.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Associated Product
tmx_mx_solamulticast_hsvf_v1_12.associated_product.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Root Symbol: X
  index, root_symbol = tmx_mx_solamulticast_hsvf_v1_12.root_symbol.dissect(buffer, index, packet, parent)

  -- Symbol Month: A
  index, symbol_month = tmx_mx_solamulticast_hsvf_v1_12.symbol_month.dissect(buffer, index, packet, parent)

  -- Symbol Year: N
  index, symbol_year = tmx_mx_solamulticast_hsvf_v1_12.symbol_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_solamulticast_hsvf_v1_12.expiry_day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Associated Product
tmx_mx_solamulticast_hsvf_v1_12.associated_product.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.associated_product, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.associated_product.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.associated_product.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.associated_product.fields(buffer, offset, packet, parent)
  end
end

-- Futures Instrument Keys Message
tmx_mx_solamulticast_hsvf_v1_12.futures_instrument_keys_message = {}

-- Size: Futures Instrument Keys Message
tmx_mx_solamulticast_hsvf_v1_12.futures_instrument_keys_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.future_product.size + 
  tmx_mx_solamulticast_hsvf_v1_12.expiry_date.size + 
  tmx_mx_solamulticast_hsvf_v1_12.maximum_number_of_contracts_per_order.size + 
  tmx_mx_solamulticast_hsvf_v1_12.minimum_number_of_contracts_per_order.size + 
  tmx_mx_solamulticast_hsvf_v1_12.maximum_threshold_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.maximum_threshold_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.minimum_threshold_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.minimum_threshold_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.tick_increment.size + 
  tmx_mx_solamulticast_hsvf_v1_12.tick_increment_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.market_flow_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.group_instrument.size + 
  tmx_mx_solamulticast_hsvf_v1_12.instrument.size + 
  tmx_mx_solamulticast_hsvf_v1_12.instrument_external_code.size + 
  tmx_mx_solamulticast_hsvf_v1_12.contract_size.size + 
  tmx_mx_solamulticast_hsvf_v1_12.tick_value.size + 
  tmx_mx_solamulticast_hsvf_v1_12.tick_value_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.currency.size + 
  tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol.size + 
  tmx_mx_solamulticast_hsvf_v1_12.delivery_type.size + 
  tmx_mx_solamulticast_hsvf_v1_12.associated_product.size

-- Display: Futures Instrument Keys Message
tmx_mx_solamulticast_hsvf_v1_12.futures_instrument_keys_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Instrument Keys Message
tmx_mx_solamulticast_hsvf_v1_12.futures_instrument_keys_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Product: Struct of 4 fields
  index, future_product = tmx_mx_solamulticast_hsvf_v1_12.future_product.dissect(buffer, index, packet, parent)

  -- Expiry Date: N
  index, expiry_date = tmx_mx_solamulticast_hsvf_v1_12.expiry_date.dissect(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: X
  index, maximum_number_of_contracts_per_order = tmx_mx_solamulticast_hsvf_v1_12.maximum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: X
  index, minimum_number_of_contracts_per_order = tmx_mx_solamulticast_hsvf_v1_12.minimum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price: N
  index, maximum_threshold_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_maximum_threshold_price.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.maximum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price: N
  index, minimum_threshold_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_minimum_threshold_price.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.minimum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Tick Increment: X
  index, tick_increment = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_increment.dissect(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: X
  index, tick_increment_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.tick_increment_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Market Flow Indicator: X
  index, market_flow_indicator = tmx_mx_solamulticast_hsvf_v1_12.market_flow_indicator.dissect(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_solamulticast_hsvf_v1_12.group_instrument.dissect(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = tmx_mx_solamulticast_hsvf_v1_12.instrument.dissect(buffer, index, packet, parent)

  -- Instrument External Code: X
  index, instrument_external_code = tmx_mx_solamulticast_hsvf_v1_12.instrument_external_code.dissect(buffer, index, packet, parent)

  -- Contract Size: N
  index, contract_size = tmx_mx_solamulticast_hsvf_v1_12.contract_size.dissect(buffer, index, packet, parent)

  -- Tick Value: N
  index, tick_value = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_value.dissect(buffer, index, packet, parent)

  -- Tick Value Fraction Indicator: X
  index, tick_value_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.tick_value_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Currency: A
  index, currency = tmx_mx_solamulticast_hsvf_v1_12.currency.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: X
  index, underlying_symbol = tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Delivery Type: A
  index, delivery_type = tmx_mx_solamulticast_hsvf_v1_12.delivery_type.dissect(buffer, index, packet, parent)

  -- Associated Product: Struct of 4 fields
  index, associated_product = tmx_mx_solamulticast_hsvf_v1_12.associated_product.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Instrument Keys Message
tmx_mx_solamulticast_hsvf_v1_12.futures_instrument_keys_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.futures_instrument_keys_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.futures_instrument_keys_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.futures_instrument_keys_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.futures_instrument_keys_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Instrument Keys Message
tmx_mx_solamulticast_hsvf_v1_12.underlying_instrument_keys_message = {}

-- Size: Underlying Instrument Keys Message
tmx_mx_solamulticast_hsvf_v1_12.underlying_instrument_keys_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.group_instrument.size + 
  tmx_mx_solamulticast_hsvf_v1_12.instrument.size + 
  tmx_mx_solamulticast_hsvf_v1_12.instrument_external_code.size

-- Display: Underlying Instrument Keys Message
tmx_mx_solamulticast_hsvf_v1_12.underlying_instrument_keys_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Instrument Keys Message
tmx_mx_solamulticast_hsvf_v1_12.underlying_instrument_keys_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_solamulticast_hsvf_v1_12.group_instrument.dissect(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = tmx_mx_solamulticast_hsvf_v1_12.instrument.dissect(buffer, index, packet, parent)

  -- Instrument External Code: X
  index, instrument_external_code = tmx_mx_solamulticast_hsvf_v1_12.instrument_external_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Instrument Keys Message
tmx_mx_solamulticast_hsvf_v1_12.underlying_instrument_keys_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.underlying_instrument_keys_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.underlying_instrument_keys_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.underlying_instrument_keys_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.underlying_instrument_keys_message.fields(buffer, offset, packet, parent)
  end
end

-- Future Options Instrument Keys Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_instrument_keys_message = {}

-- Size: Future Options Instrument Keys Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_instrument_keys_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.future_option_symbol.size + 
  tmx_mx_solamulticast_hsvf_v1_12.expiry_date.size + 
  tmx_mx_solamulticast_hsvf_v1_12.strike_price_currency.size + 
  tmx_mx_solamulticast_hsvf_v1_12.maximum_number_of_contracts_per_order.size + 
  tmx_mx_solamulticast_hsvf_v1_12.minimum_number_of_contracts_per_order.size + 
  tmx_mx_solamulticast_hsvf_v1_12.maximum_threshold_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.maximum_threshold_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.minimum_threshold_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.minimum_threshold_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.tick_increment.size + 
  tmx_mx_solamulticast_hsvf_v1_12.tick_increment_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.market_flow_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.group_instrument.size + 
  tmx_mx_solamulticast_hsvf_v1_12.instrument.size + 
  tmx_mx_solamulticast_hsvf_v1_12.instrument_external_code.size + 
  tmx_mx_solamulticast_hsvf_v1_12.contract_size.size + 
  tmx_mx_solamulticast_hsvf_v1_12.tick_value.size + 
  tmx_mx_solamulticast_hsvf_v1_12.tick_value_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.currency.size + 
  tmx_mx_solamulticast_hsvf_v1_12.delivery_type.size + 
  tmx_mx_solamulticast_hsvf_v1_12.underlying_root_symbol.size + 
  tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol_month.size + 
  tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol_year.size

-- Display: Future Options Instrument Keys Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_instrument_keys_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Instrument Keys Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_instrument_keys_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Option Symbol: Struct of 7 fields
  index, future_option_symbol = tmx_mx_solamulticast_hsvf_v1_12.future_option_symbol.dissect(buffer, index, packet, parent)

  -- Expiry Date: N
  index, expiry_date = tmx_mx_solamulticast_hsvf_v1_12.expiry_date.dissect(buffer, index, packet, parent)

  -- Strike Price Currency: A
  index, strike_price_currency = tmx_mx_solamulticast_hsvf_v1_12.strike_price_currency.dissect(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: X
  index, maximum_number_of_contracts_per_order = tmx_mx_solamulticast_hsvf_v1_12.maximum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: X
  index, minimum_number_of_contracts_per_order = tmx_mx_solamulticast_hsvf_v1_12.minimum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price: N
  index, maximum_threshold_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_maximum_threshold_price.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.maximum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price: N
  index, minimum_threshold_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_minimum_threshold_price.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.minimum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Tick Increment: X
  index, tick_increment = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_increment.dissect(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: X
  index, tick_increment_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.tick_increment_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Market Flow Indicator: X
  index, market_flow_indicator = tmx_mx_solamulticast_hsvf_v1_12.market_flow_indicator.dissect(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_solamulticast_hsvf_v1_12.group_instrument.dissect(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = tmx_mx_solamulticast_hsvf_v1_12.instrument.dissect(buffer, index, packet, parent)

  -- Instrument External Code: X
  index, instrument_external_code = tmx_mx_solamulticast_hsvf_v1_12.instrument_external_code.dissect(buffer, index, packet, parent)

  -- Contract Size: N
  index, contract_size = tmx_mx_solamulticast_hsvf_v1_12.contract_size.dissect(buffer, index, packet, parent)

  -- Tick Value: N
  index, tick_value = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_value.dissect(buffer, index, packet, parent)

  -- Tick Value Fraction Indicator: X
  index, tick_value_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.tick_value_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Currency: A
  index, currency = tmx_mx_solamulticast_hsvf_v1_12.currency.dissect(buffer, index, packet, parent)

  -- Delivery Type: A
  index, delivery_type = tmx_mx_solamulticast_hsvf_v1_12.delivery_type.dissect(buffer, index, packet, parent)

  -- Underlying Root Symbol: A
  index, underlying_root_symbol = tmx_mx_solamulticast_hsvf_v1_12.underlying_root_symbol.dissect(buffer, index, packet, parent)

  -- Underlying Symbol Month: A
  index, underlying_symbol_month = tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol_month.dissect(buffer, index, packet, parent)

  -- Underlying Symbol Year: N
  index, underlying_symbol_year = tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol_year.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Instrument Keys Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_instrument_keys_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.future_options_instrument_keys_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.future_options_instrument_keys_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.future_options_instrument_keys_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.future_options_instrument_keys_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Instrument Keys Message
tmx_mx_solamulticast_hsvf_v1_12.option_instrument_keys_message = {}

-- Size: Option Instrument Keys Message
tmx_mx_solamulticast_hsvf_v1_12.option_instrument_keys_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.option_symbol.size + 
  tmx_mx_solamulticast_hsvf_v1_12.strike_price_currency.size + 
  tmx_mx_solamulticast_hsvf_v1_12.maximum_number_of_contracts_per_order.size + 
  tmx_mx_solamulticast_hsvf_v1_12.minimum_number_of_contracts_per_order.size + 
  tmx_mx_solamulticast_hsvf_v1_12.maximum_threshold_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.maximum_threshold_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.minimum_threshold_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.minimum_threshold_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.tick_increment.size + 
  tmx_mx_solamulticast_hsvf_v1_12.tick_increment_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.option_type.size + 
  tmx_mx_solamulticast_hsvf_v1_12.market_flow_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.group_instrument.size + 
  tmx_mx_solamulticast_hsvf_v1_12.instrument.size + 
  tmx_mx_solamulticast_hsvf_v1_12.instrument_external_code.size + 
  tmx_mx_solamulticast_hsvf_v1_12.option_marker.size + 
  tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol_root.size + 
  tmx_mx_solamulticast_hsvf_v1_12.contract_size.size + 
  tmx_mx_solamulticast_hsvf_v1_12.tick_value.size + 
  tmx_mx_solamulticast_hsvf_v1_12.tick_value_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.currency.size + 
  tmx_mx_solamulticast_hsvf_v1_12.delivery_type.size

-- Display: Option Instrument Keys Message
tmx_mx_solamulticast_hsvf_v1_12.option_instrument_keys_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Instrument Keys Message
tmx_mx_solamulticast_hsvf_v1_12.option_instrument_keys_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Option Symbol: Struct of 7 fields
  index, option_symbol = tmx_mx_solamulticast_hsvf_v1_12.option_symbol.dissect(buffer, index, packet, parent)

  -- Strike Price Currency: A
  index, strike_price_currency = tmx_mx_solamulticast_hsvf_v1_12.strike_price_currency.dissect(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: X
  index, maximum_number_of_contracts_per_order = tmx_mx_solamulticast_hsvf_v1_12.maximum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: X
  index, minimum_number_of_contracts_per_order = tmx_mx_solamulticast_hsvf_v1_12.minimum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price: N
  index, maximum_threshold_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_maximum_threshold_price.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.maximum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price: N
  index, minimum_threshold_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_minimum_threshold_price.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.minimum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Tick Increment: X
  index, tick_increment = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_increment.dissect(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: X
  index, tick_increment_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.tick_increment_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Option Type: A
  index, option_type = tmx_mx_solamulticast_hsvf_v1_12.option_type.dissect(buffer, index, packet, parent)

  -- Market Flow Indicator: X
  index, market_flow_indicator = tmx_mx_solamulticast_hsvf_v1_12.market_flow_indicator.dissect(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_solamulticast_hsvf_v1_12.group_instrument.dissect(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = tmx_mx_solamulticast_hsvf_v1_12.instrument.dissect(buffer, index, packet, parent)

  -- Instrument External Code: X
  index, instrument_external_code = tmx_mx_solamulticast_hsvf_v1_12.instrument_external_code.dissect(buffer, index, packet, parent)

  -- Option Marker: A
  index, option_marker = tmx_mx_solamulticast_hsvf_v1_12.option_marker.dissect(buffer, index, packet, parent)

  -- Underlying Symbol Root: X
  index, underlying_symbol_root = tmx_mx_solamulticast_hsvf_v1_12.underlying_symbol_root.dissect(buffer, index, packet, parent)

  -- Contract Size: N
  index, contract_size = tmx_mx_solamulticast_hsvf_v1_12.contract_size.dissect(buffer, index, packet, parent)

  -- Tick Value: N
  index, tick_value = tmx_mx_solamulticast_hsvf_v1_12.scaled_tick_value.dissect(buffer, index, packet, parent)

  -- Tick Value Fraction Indicator: X
  index, tick_value_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.tick_value_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Currency: A
  index, currency = tmx_mx_solamulticast_hsvf_v1_12.currency.dissect(buffer, index, packet, parent)

  -- Delivery Type: A
  index, delivery_type = tmx_mx_solamulticast_hsvf_v1_12.delivery_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Instrument Keys Message
tmx_mx_solamulticast_hsvf_v1_12.option_instrument_keys_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.option_instrument_keys_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.option_instrument_keys_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.option_instrument_keys_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.option_instrument_keys_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Trade Cancellation Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_trade_cancellation_message = {}

-- Size: Strategy Trade Cancellation Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_trade_cancellation_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.symbol.size + 
  tmx_mx_solamulticast_hsvf_v1_12.volume.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_price_sign.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.filler_6.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_timestamp.size + 
  tmx_mx_solamulticast_hsvf_v1_12.filler_1.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_number.size

-- Display: Strategy Trade Cancellation Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Trade Cancellation Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Symbol: X
  index, symbol = tmx_mx_solamulticast_hsvf_v1_12.symbol.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solamulticast_hsvf_v1_12.volume.dissect(buffer, index, packet, parent)

  -- Trade Price Sign: X
  index, trade_price_sign = tmx_mx_solamulticast_hsvf_v1_12.trade_price_sign.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_solamulticast_hsvf_v1_12.filler_6.dissect(buffer, index, packet, parent)

  -- Trade Timestamp: N
  index, trade_timestamp = tmx_mx_solamulticast_hsvf_v1_12.trade_timestamp.dissect(buffer, index, packet, parent)

  -- Filler 1: X
  index, filler_1 = tmx_mx_solamulticast_hsvf_v1_12.filler_1.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_solamulticast_hsvf_v1_12.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Trade Cancellation Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strategy_trade_cancellation_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.strategy_trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.strategy_trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.strategy_trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Futures Trade Cancellation Message
tmx_mx_solamulticast_hsvf_v1_12.futures_trade_cancellation_message = {}

-- Size: Futures Trade Cancellation Message
tmx_mx_solamulticast_hsvf_v1_12.futures_trade_cancellation_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.future_product.size + 
  tmx_mx_solamulticast_hsvf_v1_12.volume.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.filler_6.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_timestamp.size + 
  tmx_mx_solamulticast_hsvf_v1_12.price_indicator_marker.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_number.size

-- Display: Futures Trade Cancellation Message
tmx_mx_solamulticast_hsvf_v1_12.futures_trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Trade Cancellation Message
tmx_mx_solamulticast_hsvf_v1_12.futures_trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Product: Struct of 4 fields
  index, future_product = tmx_mx_solamulticast_hsvf_v1_12.future_product.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solamulticast_hsvf_v1_12.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_solamulticast_hsvf_v1_12.filler_6.dissect(buffer, index, packet, parent)

  -- Trade Timestamp: N
  index, trade_timestamp = tmx_mx_solamulticast_hsvf_v1_12.trade_timestamp.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker: X
  index, price_indicator_marker = tmx_mx_solamulticast_hsvf_v1_12.price_indicator_marker.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_solamulticast_hsvf_v1_12.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Trade Cancellation Message
tmx_mx_solamulticast_hsvf_v1_12.futures_trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.futures_trade_cancellation_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.futures_trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.futures_trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.futures_trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Future Options Trade Cancellation Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_trade_cancellation_message = {}

-- Size: Future Options Trade Cancellation Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_trade_cancellation_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.future_option_symbol.size + 
  tmx_mx_solamulticast_hsvf_v1_12.volume.size + 
  tmx_mx_solamulticast_hsvf_v1_12.price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.price_indicator_marker.size + 
  tmx_mx_solamulticast_hsvf_v1_12.filler_6.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_timestamp.size + 
  tmx_mx_solamulticast_hsvf_v1_12.filler_2.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_number.size

-- Display: Future Options Trade Cancellation Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Trade Cancellation Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Option Symbol: Struct of 7 fields
  index, future_option_symbol = tmx_mx_solamulticast_hsvf_v1_12.future_option_symbol.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solamulticast_hsvf_v1_12.volume.dissect(buffer, index, packet, parent)

  -- Price: N
  index, price = tmx_mx_solamulticast_hsvf_v1_12.scaled_price.dissect(buffer, index, packet, parent)

  -- Price Fraction Indicator: X
  index, price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker: X
  index, price_indicator_marker = tmx_mx_solamulticast_hsvf_v1_12.price_indicator_marker.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_solamulticast_hsvf_v1_12.filler_6.dissect(buffer, index, packet, parent)

  -- Trade Timestamp: N
  index, trade_timestamp = tmx_mx_solamulticast_hsvf_v1_12.trade_timestamp.dissect(buffer, index, packet, parent)

  -- Filler 2: X
  index, filler_2 = tmx_mx_solamulticast_hsvf_v1_12.filler_2.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_solamulticast_hsvf_v1_12.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Trade Cancellation Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.future_options_trade_cancellation_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.future_options_trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.future_options_trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.future_options_trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Trade Cancellation Message
tmx_mx_solamulticast_hsvf_v1_12.option_trade_cancellation_message = {}

-- Size: Option Trade Cancellation Message
tmx_mx_solamulticast_hsvf_v1_12.option_trade_cancellation_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.option_symbol.size + 
  tmx_mx_solamulticast_hsvf_v1_12.volume.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.filler_6.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_timestamp.size + 
  tmx_mx_solamulticast_hsvf_v1_12.filler_1.size + 
  tmx_mx_solamulticast_hsvf_v1_12.price_indicator_marker.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_number.size

-- Display: Option Trade Cancellation Message
tmx_mx_solamulticast_hsvf_v1_12.option_trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Trade Cancellation Message
tmx_mx_solamulticast_hsvf_v1_12.option_trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Option Symbol: Struct of 7 fields
  index, option_symbol = tmx_mx_solamulticast_hsvf_v1_12.option_symbol.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solamulticast_hsvf_v1_12.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_solamulticast_hsvf_v1_12.filler_6.dissect(buffer, index, packet, parent)

  -- Trade Timestamp: N
  index, trade_timestamp = tmx_mx_solamulticast_hsvf_v1_12.trade_timestamp.dissect(buffer, index, packet, parent)

  -- Filler 1: X
  index, filler_1 = tmx_mx_solamulticast_hsvf_v1_12.filler_1.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker: X
  index, price_indicator_marker = tmx_mx_solamulticast_hsvf_v1_12.price_indicator_marker.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_solamulticast_hsvf_v1_12.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Trade Cancellation Message
tmx_mx_solamulticast_hsvf_v1_12.option_trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.option_trade_cancellation_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.option_trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.option_trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.option_trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Market Depth Level
tmx_mx_solamulticast_hsvf_v1_12.strategy_market_depth_level = {}

-- Size: Strategy Market Depth Level
tmx_mx_solamulticast_hsvf_v1_12.strategy_market_depth_level.size =
  tmx_mx_solamulticast_hsvf_v1_12.level_of_market_depth.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_price_sign.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_price_quote.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_size.size + 
  tmx_mx_solamulticast_hsvf_v1_12.number_of_bid_orders.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_price_sign.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_price_quote.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_size.size + 
  tmx_mx_solamulticast_hsvf_v1_12.number_of_ask_orders.size

-- Display: Strategy Market Depth Level
tmx_mx_solamulticast_hsvf_v1_12.strategy_market_depth_level.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Market Depth Level
tmx_mx_solamulticast_hsvf_v1_12.strategy_market_depth_level.fields = function(buffer, offset, packet, parent, strategy_market_depth_level_index)
  local index = offset

  -- Implicit Strategy Market Depth Level Index
  if strategy_market_depth_level_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strategy_market_depth_level_index, strategy_market_depth_level_index)
    iteration:set_generated()
  end

  -- Level Of Market Depth: X
  index, level_of_market_depth = tmx_mx_solamulticast_hsvf_v1_12.level_of_market_depth.dissect(buffer, index, packet, parent)

  -- Bid Price Sign: X
  index, bid_price_sign = tmx_mx_solamulticast_hsvf_v1_12.bid_price_sign.dissect(buffer, index, packet, parent)

  -- Bid Price Quote: X
  index, bid_price_quote = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_quote.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_solamulticast_hsvf_v1_12.bid_size.dissect(buffer, index, packet, parent)

  -- Number Of Bid Orders: X
  index, number_of_bid_orders = tmx_mx_solamulticast_hsvf_v1_12.number_of_bid_orders.dissect(buffer, index, packet, parent)

  -- Ask Price Sign: X
  index, ask_price_sign = tmx_mx_solamulticast_hsvf_v1_12.ask_price_sign.dissect(buffer, index, packet, parent)

  -- Ask Price Quote: X
  index, ask_price_quote = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_quote.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_solamulticast_hsvf_v1_12.ask_size.dissect(buffer, index, packet, parent)

  -- Number Of Ask Orders: X
  index, number_of_ask_orders = tmx_mx_solamulticast_hsvf_v1_12.number_of_ask_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Market Depth Level
tmx_mx_solamulticast_hsvf_v1_12.strategy_market_depth_level.dissect = function(buffer, offset, packet, parent, strategy_market_depth_level_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strategy_market_depth_level, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.strategy_market_depth_level.fields(buffer, offset, packet, parent, strategy_market_depth_level_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.strategy_market_depth_level.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.strategy_market_depth_level.fields(buffer, offset, packet, parent, strategy_market_depth_level_index)
  end
end

-- Strategy Market Depth Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_market_depth_message = {}

-- Calculate size of: Strategy Market Depth Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_market_depth_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.symbol.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.instrument_status_marker.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.number_of_level.size

  -- Calculate field size from count
  local strategy_market_depth_level_count = buffer(offset + index - 1, 1):string()
  index = index + strategy_market_depth_level_count * 33

  return index
end

-- Display: Strategy Market Depth Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_market_depth_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Market Depth Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_market_depth_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Symbol: X
  index, symbol = tmx_mx_solamulticast_hsvf_v1_12.symbol.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_solamulticast_hsvf_v1_12.instrument_status_marker.dissect(buffer, index, packet, parent)

  -- Number Of Level: N
  index, number_of_level = tmx_mx_solamulticast_hsvf_v1_12.number_of_level.dissect(buffer, index, packet, parent)

  -- Repeating: Strategy Market Depth Level
  for strategy_market_depth_level_index = 1, number_of_level do
    index, strategy_market_depth_level = tmx_mx_solamulticast_hsvf_v1_12.strategy_market_depth_level.dissect(buffer, index, packet, parent, strategy_market_depth_level_index)
  end

  return index
end

-- Dissect: Strategy Market Depth Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_market_depth_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strategy_market_depth_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.strategy_market_depth_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.strategy_market_depth_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.strategy_market_depth_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Depth Level
tmx_mx_solamulticast_hsvf_v1_12.market_depth_level = {}

-- Size: Market Depth Level
tmx_mx_solamulticast_hsvf_v1_12.market_depth_level.size =
  tmx_mx_solamulticast_hsvf_v1_12.level_of_market_depth.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_price_quote.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_size.size + 
  tmx_mx_solamulticast_hsvf_v1_12.number_of_bid_orders.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_price_quote.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_size.size + 
  tmx_mx_solamulticast_hsvf_v1_12.number_of_ask_orders.size

-- Display: Market Depth Level
tmx_mx_solamulticast_hsvf_v1_12.market_depth_level.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Depth Level
tmx_mx_solamulticast_hsvf_v1_12.market_depth_level.fields = function(buffer, offset, packet, parent, market_depth_level_index)
  local index = offset

  -- Implicit Market Depth Level Index
  if market_depth_level_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.market_depth_level_index, market_depth_level_index)
    iteration:set_generated()
  end

  -- Level Of Market Depth: X
  index, level_of_market_depth = tmx_mx_solamulticast_hsvf_v1_12.level_of_market_depth.dissect(buffer, index, packet, parent)

  -- Bid Price Quote: X
  index, bid_price_quote = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_quote.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_solamulticast_hsvf_v1_12.bid_size.dissect(buffer, index, packet, parent)

  -- Number Of Bid Orders: X
  index, number_of_bid_orders = tmx_mx_solamulticast_hsvf_v1_12.number_of_bid_orders.dissect(buffer, index, packet, parent)

  -- Ask Price Quote: X
  index, ask_price_quote = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_quote.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_solamulticast_hsvf_v1_12.ask_size.dissect(buffer, index, packet, parent)

  -- Number Of Ask Orders: X
  index, number_of_ask_orders = tmx_mx_solamulticast_hsvf_v1_12.number_of_ask_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Depth Level
tmx_mx_solamulticast_hsvf_v1_12.market_depth_level.dissect = function(buffer, offset, packet, parent, market_depth_level_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.market_depth_level, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.market_depth_level.fields(buffer, offset, packet, parent, market_depth_level_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.market_depth_level.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.market_depth_level.fields(buffer, offset, packet, parent, market_depth_level_index)
  end
end

-- Futures Market Depth Message
tmx_mx_solamulticast_hsvf_v1_12.futures_market_depth_message = {}

-- Calculate size of: Futures Market Depth Message
tmx_mx_solamulticast_hsvf_v1_12.futures_market_depth_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.future_product.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.instrument_status_marker.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.number_of_level.size

  -- Calculate field size from count
  local market_depth_level_count = buffer(offset + index - 1, 1):string()
  index = index + market_depth_level_count * 31

  return index
end

-- Display: Futures Market Depth Message
tmx_mx_solamulticast_hsvf_v1_12.futures_market_depth_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Market Depth Message
tmx_mx_solamulticast_hsvf_v1_12.futures_market_depth_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Product: Struct of 4 fields
  index, future_product = tmx_mx_solamulticast_hsvf_v1_12.future_product.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_solamulticast_hsvf_v1_12.instrument_status_marker.dissect(buffer, index, packet, parent)

  -- Number Of Level: N
  index, number_of_level = tmx_mx_solamulticast_hsvf_v1_12.number_of_level.dissect(buffer, index, packet, parent)

  -- Repeating: Market Depth Level
  for market_depth_level_index = 1, number_of_level do
    index, market_depth_level = tmx_mx_solamulticast_hsvf_v1_12.market_depth_level.dissect(buffer, index, packet, parent, market_depth_level_index)
  end

  return index
end

-- Dissect: Futures Market Depth Message
tmx_mx_solamulticast_hsvf_v1_12.futures_market_depth_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.futures_market_depth_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.futures_market_depth_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.futures_market_depth_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.futures_market_depth_message.fields(buffer, offset, packet, parent)
  end
end

-- Future Options Market Depth Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_market_depth_message = {}

-- Calculate size of: Future Options Market Depth Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_market_depth_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.future_option_symbol.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.instrument_status_marker.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.number_of_level.size

  -- Calculate field size from count
  local market_depth_level_count = buffer(offset + index - 1, 1):string()
  index = index + market_depth_level_count * 31

  return index
end

-- Display: Future Options Market Depth Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_market_depth_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Market Depth Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_market_depth_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Option Symbol: Struct of 7 fields
  index, future_option_symbol = tmx_mx_solamulticast_hsvf_v1_12.future_option_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_solamulticast_hsvf_v1_12.instrument_status_marker.dissect(buffer, index, packet, parent)

  -- Number Of Level: N
  index, number_of_level = tmx_mx_solamulticast_hsvf_v1_12.number_of_level.dissect(buffer, index, packet, parent)

  -- Repeating: Market Depth Level
  for market_depth_level_index = 1, number_of_level do
    index, market_depth_level = tmx_mx_solamulticast_hsvf_v1_12.market_depth_level.dissect(buffer, index, packet, parent, market_depth_level_index)
  end

  return index
end

-- Dissect: Future Options Market Depth Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_market_depth_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.future_options_market_depth_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.future_options_market_depth_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.future_options_market_depth_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.future_options_market_depth_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Market Depth Message
tmx_mx_solamulticast_hsvf_v1_12.option_market_depth_message = {}

-- Calculate size of: Option Market Depth Message
tmx_mx_solamulticast_hsvf_v1_12.option_market_depth_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.option_symbol.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.instrument_status_marker.size

  index = index + tmx_mx_solamulticast_hsvf_v1_12.number_of_level.size

  -- Calculate field size from count
  local market_depth_level_count = buffer(offset + index - 1, 1):string()
  index = index + market_depth_level_count * 31

  return index
end

-- Display: Option Market Depth Message
tmx_mx_solamulticast_hsvf_v1_12.option_market_depth_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Market Depth Message
tmx_mx_solamulticast_hsvf_v1_12.option_market_depth_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Option Symbol: Struct of 7 fields
  index, option_symbol = tmx_mx_solamulticast_hsvf_v1_12.option_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_solamulticast_hsvf_v1_12.instrument_status_marker.dissect(buffer, index, packet, parent)

  -- Number Of Level: N
  index, number_of_level = tmx_mx_solamulticast_hsvf_v1_12.number_of_level.dissect(buffer, index, packet, parent)

  -- Repeating: Market Depth Level
  for market_depth_level_index = 1, number_of_level do
    index, market_depth_level = tmx_mx_solamulticast_hsvf_v1_12.market_depth_level.dissect(buffer, index, packet, parent, market_depth_level_index)
  end

  return index
end

-- Dissect: Option Market Depth Message
tmx_mx_solamulticast_hsvf_v1_12.option_market_depth_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.option_market_depth_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.option_market_depth_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.option_market_depth_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.option_market_depth_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Quote Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_quote_message = {}

-- Size: Strategy Quote Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_quote_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.symbol.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_price_sign.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_price_quote.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_size.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_price_sign.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_price_quote.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_size.size + 
  tmx_mx_solamulticast_hsvf_v1_12.instrument_status_marker.size

-- Display: Strategy Quote Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Quote Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Symbol: X
  index, symbol = tmx_mx_solamulticast_hsvf_v1_12.symbol.dissect(buffer, index, packet, parent)

  -- Bid Price Sign: X
  index, bid_price_sign = tmx_mx_solamulticast_hsvf_v1_12.bid_price_sign.dissect(buffer, index, packet, parent)

  -- Bid Price Quote: X
  index, bid_price_quote = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_quote.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_solamulticast_hsvf_v1_12.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price Sign: X
  index, ask_price_sign = tmx_mx_solamulticast_hsvf_v1_12.ask_price_sign.dissect(buffer, index, packet, parent)

  -- Ask Price Quote: X
  index, ask_price_quote = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_quote.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_solamulticast_hsvf_v1_12.ask_size.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_solamulticast_hsvf_v1_12.instrument_status_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Quote Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strategy_quote_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.strategy_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.strategy_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.strategy_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Futures Quote Message
tmx_mx_solamulticast_hsvf_v1_12.futures_quote_message = {}

-- Size: Futures Quote Message
tmx_mx_solamulticast_hsvf_v1_12.futures_quote_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.future_product.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_price_quote.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_size.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_price_quote.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_size.size + 
  tmx_mx_solamulticast_hsvf_v1_12.instrument_status_marker.size

-- Display: Futures Quote Message
tmx_mx_solamulticast_hsvf_v1_12.futures_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Quote Message
tmx_mx_solamulticast_hsvf_v1_12.futures_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Product: Struct of 4 fields
  index, future_product = tmx_mx_solamulticast_hsvf_v1_12.future_product.dissect(buffer, index, packet, parent)

  -- Bid Price Quote: X
  index, bid_price_quote = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_quote.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_solamulticast_hsvf_v1_12.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price Quote: X
  index, ask_price_quote = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_quote.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_solamulticast_hsvf_v1_12.ask_size.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_solamulticast_hsvf_v1_12.instrument_status_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Quote Message
tmx_mx_solamulticast_hsvf_v1_12.futures_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.futures_quote_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.futures_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.futures_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.futures_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Future Options Quote Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_quote_message = {}

-- Size: Future Options Quote Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_quote_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.future_option_symbol.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_price_quote.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_size.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_price_quote.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_size.size + 
  tmx_mx_solamulticast_hsvf_v1_12.instrument_status_marker.size + 
  tmx_mx_solamulticast_hsvf_v1_12.filler_1.size

-- Display: Future Options Quote Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Quote Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Option Symbol: Struct of 7 fields
  index, future_option_symbol = tmx_mx_solamulticast_hsvf_v1_12.future_option_symbol.dissect(buffer, index, packet, parent)

  -- Bid Price Quote: X
  index, bid_price_quote = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_quote.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_solamulticast_hsvf_v1_12.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price Quote: X
  index, ask_price_quote = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_quote.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_solamulticast_hsvf_v1_12.ask_size.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_solamulticast_hsvf_v1_12.instrument_status_marker.dissect(buffer, index, packet, parent)

  -- Filler 1: X
  index, filler_1 = tmx_mx_solamulticast_hsvf_v1_12.filler_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Quote Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.future_options_quote_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.future_options_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.future_options_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.future_options_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Quote Message
tmx_mx_solamulticast_hsvf_v1_12.option_quote_message = {}

-- Size: Option Quote Message
tmx_mx_solamulticast_hsvf_v1_12.option_quote_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.option_symbol.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_price_quote.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.bid_size.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_price_quote.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.ask_size.size + 
  tmx_mx_solamulticast_hsvf_v1_12.filler_1.size + 
  tmx_mx_solamulticast_hsvf_v1_12.instrument_status_marker.size

-- Display: Option Quote Message
tmx_mx_solamulticast_hsvf_v1_12.option_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Quote Message
tmx_mx_solamulticast_hsvf_v1_12.option_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Option Symbol: Struct of 7 fields
  index, option_symbol = tmx_mx_solamulticast_hsvf_v1_12.option_symbol.dissect(buffer, index, packet, parent)

  -- Bid Price Quote: X
  index, bid_price_quote = tmx_mx_solamulticast_hsvf_v1_12.scaled_bid_price_quote.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_solamulticast_hsvf_v1_12.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price Quote: X
  index, ask_price_quote = tmx_mx_solamulticast_hsvf_v1_12.scaled_ask_price_quote.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_solamulticast_hsvf_v1_12.ask_size.dissect(buffer, index, packet, parent)

  -- Filler 1: X
  index, filler_1 = tmx_mx_solamulticast_hsvf_v1_12.filler_1.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_solamulticast_hsvf_v1_12.instrument_status_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Quote Message
tmx_mx_solamulticast_hsvf_v1_12.option_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.option_quote_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.option_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.option_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.option_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Schedule Notice Strategy Message
tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_strategy_message = {}

-- Size: Instrument Schedule Notice Strategy Message
tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_strategy_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.strategy_symbol.size + 
  tmx_mx_solamulticast_hsvf_v1_12.series_status.size + 
  tmx_mx_solamulticast_hsvf_v1_12.scheduled_status_change_time.size

-- Display: Instrument Schedule Notice Strategy Message
tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_strategy_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Schedule Notice Strategy Message
tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_strategy_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Strategy Symbol: X
  index, strategy_symbol = tmx_mx_solamulticast_hsvf_v1_12.strategy_symbol.dissect(buffer, index, packet, parent)

  -- Series Status: A
  index, series_status = tmx_mx_solamulticast_hsvf_v1_12.series_status.dissect(buffer, index, packet, parent)

  -- Scheduled Status Change Time: N
  index, scheduled_status_change_time = tmx_mx_solamulticast_hsvf_v1_12.scheduled_status_change_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Schedule Notice Strategy Message
tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_strategy_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.instrument_schedule_notice_strategy_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_strategy_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_strategy_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_strategy_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Schedule Notice Future Message
tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_future_message = {}

-- Size: Instrument Schedule Notice Future Message
tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_future_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.future_product.size + 
  tmx_mx_solamulticast_hsvf_v1_12.series_status.size + 
  tmx_mx_solamulticast_hsvf_v1_12.scheduled_status_change_time.size

-- Display: Instrument Schedule Notice Future Message
tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_future_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Schedule Notice Future Message
tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_future_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Product: Struct of 4 fields
  index, future_product = tmx_mx_solamulticast_hsvf_v1_12.future_product.dissect(buffer, index, packet, parent)

  -- Series Status: A
  index, series_status = tmx_mx_solamulticast_hsvf_v1_12.series_status.dissect(buffer, index, packet, parent)

  -- Scheduled Status Change Time: N
  index, scheduled_status_change_time = tmx_mx_solamulticast_hsvf_v1_12.scheduled_status_change_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Schedule Notice Future Message
tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_future_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.instrument_schedule_notice_future_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_future_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_future_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_future_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Schedule Notice Futures Option Message
tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_futures_option_message = {}

-- Size: Instrument Schedule Notice Futures Option Message
tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_futures_option_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.future_option_symbol.size + 
  tmx_mx_solamulticast_hsvf_v1_12.series_status.size + 
  tmx_mx_solamulticast_hsvf_v1_12.scheduled_status_change_time.size

-- Display: Instrument Schedule Notice Futures Option Message
tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_futures_option_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Schedule Notice Futures Option Message
tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_futures_option_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Option Symbol: Struct of 7 fields
  index, future_option_symbol = tmx_mx_solamulticast_hsvf_v1_12.future_option_symbol.dissect(buffer, index, packet, parent)

  -- Series Status: A
  index, series_status = tmx_mx_solamulticast_hsvf_v1_12.series_status.dissect(buffer, index, packet, parent)

  -- Scheduled Status Change Time: N
  index, scheduled_status_change_time = tmx_mx_solamulticast_hsvf_v1_12.scheduled_status_change_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Schedule Notice Futures Option Message
tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_futures_option_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.instrument_schedule_notice_futures_option_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_futures_option_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_futures_option_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_futures_option_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Schedule Notice Option Message
tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_option_message = {}

-- Size: Instrument Schedule Notice Option Message
tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_option_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.option_symbol.size + 
  tmx_mx_solamulticast_hsvf_v1_12.series_status.size + 
  tmx_mx_solamulticast_hsvf_v1_12.scheduled_status_change_time.size

-- Display: Instrument Schedule Notice Option Message
tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_option_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Schedule Notice Option Message
tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_option_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Option Symbol: Struct of 7 fields
  index, option_symbol = tmx_mx_solamulticast_hsvf_v1_12.option_symbol.dissect(buffer, index, packet, parent)

  -- Series Status: A
  index, series_status = tmx_mx_solamulticast_hsvf_v1_12.series_status.dissect(buffer, index, packet, parent)

  -- Scheduled Status Change Time: N
  index, scheduled_status_change_time = tmx_mx_solamulticast_hsvf_v1_12.scheduled_status_change_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Schedule Notice Option Message
tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_option_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.instrument_schedule_notice_option_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_option_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_option_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_option_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Request For Quote Rfq Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_request_for_quote_rfq_message = {}

-- Size: Strategy Request For Quote Rfq Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_request_for_quote_rfq_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.symbol.size + 
  tmx_mx_solamulticast_hsvf_v1_12.requested_size.size + 
  tmx_mx_solamulticast_hsvf_v1_12.requested_market_side.size

-- Display: Strategy Request For Quote Rfq Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_request_for_quote_rfq_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Request For Quote Rfq Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_request_for_quote_rfq_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Symbol: X
  index, symbol = tmx_mx_solamulticast_hsvf_v1_12.symbol.dissect(buffer, index, packet, parent)

  -- Requested Size: X
  index, requested_size = tmx_mx_solamulticast_hsvf_v1_12.requested_size.dissect(buffer, index, packet, parent)

  -- Requested Market Side: X
  index, requested_market_side = tmx_mx_solamulticast_hsvf_v1_12.requested_market_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Request For Quote Rfq Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_request_for_quote_rfq_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strategy_request_for_quote_rfq_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.strategy_request_for_quote_rfq_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.strategy_request_for_quote_rfq_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.strategy_request_for_quote_rfq_message.fields(buffer, offset, packet, parent)
  end
end

-- Futures Request For Quote Rfq Message
tmx_mx_solamulticast_hsvf_v1_12.futures_request_for_quote_rfq_message = {}

-- Size: Futures Request For Quote Rfq Message
tmx_mx_solamulticast_hsvf_v1_12.futures_request_for_quote_rfq_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.future_product.size + 
  tmx_mx_solamulticast_hsvf_v1_12.requested_size.size + 
  tmx_mx_solamulticast_hsvf_v1_12.requested_market_side.size

-- Display: Futures Request For Quote Rfq Message
tmx_mx_solamulticast_hsvf_v1_12.futures_request_for_quote_rfq_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Request For Quote Rfq Message
tmx_mx_solamulticast_hsvf_v1_12.futures_request_for_quote_rfq_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Product: Struct of 4 fields
  index, future_product = tmx_mx_solamulticast_hsvf_v1_12.future_product.dissect(buffer, index, packet, parent)

  -- Requested Size: X
  index, requested_size = tmx_mx_solamulticast_hsvf_v1_12.requested_size.dissect(buffer, index, packet, parent)

  -- Requested Market Side: X
  index, requested_market_side = tmx_mx_solamulticast_hsvf_v1_12.requested_market_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Request For Quote Rfq Message
tmx_mx_solamulticast_hsvf_v1_12.futures_request_for_quote_rfq_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.futures_request_for_quote_rfq_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.futures_request_for_quote_rfq_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.futures_request_for_quote_rfq_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.futures_request_for_quote_rfq_message.fields(buffer, offset, packet, parent)
  end
end

-- Future Options Request For Quote Rfq Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_request_for_quote_rfq_message = {}

-- Size: Future Options Request For Quote Rfq Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_request_for_quote_rfq_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.future_option_symbol.size + 
  tmx_mx_solamulticast_hsvf_v1_12.requested_size.size + 
  tmx_mx_solamulticast_hsvf_v1_12.requested_market_side.size

-- Display: Future Options Request For Quote Rfq Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_request_for_quote_rfq_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Request For Quote Rfq Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_request_for_quote_rfq_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Option Symbol: Struct of 7 fields
  index, future_option_symbol = tmx_mx_solamulticast_hsvf_v1_12.future_option_symbol.dissect(buffer, index, packet, parent)

  -- Requested Size: X
  index, requested_size = tmx_mx_solamulticast_hsvf_v1_12.requested_size.dissect(buffer, index, packet, parent)

  -- Requested Market Side: X
  index, requested_market_side = tmx_mx_solamulticast_hsvf_v1_12.requested_market_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Request For Quote Rfq Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_request_for_quote_rfq_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.future_options_request_for_quote_rfq_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.future_options_request_for_quote_rfq_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.future_options_request_for_quote_rfq_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.future_options_request_for_quote_rfq_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Request For Quote Rfq Message
tmx_mx_solamulticast_hsvf_v1_12.option_request_for_quote_rfq_message = {}

-- Size: Option Request For Quote Rfq Message
tmx_mx_solamulticast_hsvf_v1_12.option_request_for_quote_rfq_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.option_symbol.size + 
  tmx_mx_solamulticast_hsvf_v1_12.requested_size.size + 
  tmx_mx_solamulticast_hsvf_v1_12.requested_market_side.size

-- Display: Option Request For Quote Rfq Message
tmx_mx_solamulticast_hsvf_v1_12.option_request_for_quote_rfq_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Request For Quote Rfq Message
tmx_mx_solamulticast_hsvf_v1_12.option_request_for_quote_rfq_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Option Symbol: Struct of 7 fields
  index, option_symbol = tmx_mx_solamulticast_hsvf_v1_12.option_symbol.dissect(buffer, index, packet, parent)

  -- Requested Size: X
  index, requested_size = tmx_mx_solamulticast_hsvf_v1_12.requested_size.dissect(buffer, index, packet, parent)

  -- Requested Market Side: X
  index, requested_market_side = tmx_mx_solamulticast_hsvf_v1_12.requested_market_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Request For Quote Rfq Message
tmx_mx_solamulticast_hsvf_v1_12.option_request_for_quote_rfq_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.option_request_for_quote_rfq_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.option_request_for_quote_rfq_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.option_request_for_quote_rfq_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.option_request_for_quote_rfq_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Trade Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_trade_message = {}

-- Size: Strategy Trade Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_trade_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.symbol.size + 
  tmx_mx_solamulticast_hsvf_v1_12.volume.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_price_sign.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.net_change_sign.size + 
  tmx_mx_solamulticast_hsvf_v1_12.net_change.size + 
  tmx_mx_solamulticast_hsvf_v1_12.net_change_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.filler_6.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_timestamp.size + 
  tmx_mx_solamulticast_hsvf_v1_12.price_indicator_marker.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_number.size

-- Display: Strategy Trade Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Trade Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Symbol: X
  index, symbol = tmx_mx_solamulticast_hsvf_v1_12.symbol.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solamulticast_hsvf_v1_12.volume.dissect(buffer, index, packet, parent)

  -- Trade Price Sign: X
  index, trade_price_sign = tmx_mx_solamulticast_hsvf_v1_12.trade_price_sign.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign: X
  index, net_change_sign = tmx_mx_solamulticast_hsvf_v1_12.net_change_sign.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_solamulticast_hsvf_v1_12.scaled_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_solamulticast_hsvf_v1_12.filler_6.dissect(buffer, index, packet, parent)

  -- Trade Timestamp: N
  index, trade_timestamp = tmx_mx_solamulticast_hsvf_v1_12.trade_timestamp.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker: X
  index, price_indicator_marker = tmx_mx_solamulticast_hsvf_v1_12.price_indicator_marker.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_solamulticast_hsvf_v1_12.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Trade Message
tmx_mx_solamulticast_hsvf_v1_12.strategy_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.strategy_trade_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.strategy_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.strategy_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.strategy_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Futures Trade Message
tmx_mx_solamulticast_hsvf_v1_12.futures_trade_message = {}

-- Size: Futures Trade Message
tmx_mx_solamulticast_hsvf_v1_12.futures_trade_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.future_product.size + 
  tmx_mx_solamulticast_hsvf_v1_12.volume.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.net_change_sign.size + 
  tmx_mx_solamulticast_hsvf_v1_12.net_change.size + 
  tmx_mx_solamulticast_hsvf_v1_12.net_change_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.filler_6.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_timestamp.size + 
  tmx_mx_solamulticast_hsvf_v1_12.price_indicator_marker.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_number.size

-- Display: Futures Trade Message
tmx_mx_solamulticast_hsvf_v1_12.futures_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Trade Message
tmx_mx_solamulticast_hsvf_v1_12.futures_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Product: Struct of 4 fields
  index, future_product = tmx_mx_solamulticast_hsvf_v1_12.future_product.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solamulticast_hsvf_v1_12.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign: X
  index, net_change_sign = tmx_mx_solamulticast_hsvf_v1_12.net_change_sign.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_solamulticast_hsvf_v1_12.scaled_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_solamulticast_hsvf_v1_12.filler_6.dissect(buffer, index, packet, parent)

  -- Trade Timestamp: N
  index, trade_timestamp = tmx_mx_solamulticast_hsvf_v1_12.trade_timestamp.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker: X
  index, price_indicator_marker = tmx_mx_solamulticast_hsvf_v1_12.price_indicator_marker.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_solamulticast_hsvf_v1_12.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Trade Message
tmx_mx_solamulticast_hsvf_v1_12.futures_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.futures_trade_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.futures_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.futures_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.futures_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Future Options Trade Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_trade_message = {}

-- Size: Future Options Trade Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_trade_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.future_option_symbol.size + 
  tmx_mx_solamulticast_hsvf_v1_12.volume.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.price_indicator_marker.size + 
  tmx_mx_solamulticast_hsvf_v1_12.net_change_sign.size + 
  tmx_mx_solamulticast_hsvf_v1_12.net_change.size + 
  tmx_mx_solamulticast_hsvf_v1_12.net_change_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.filler_6.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_timestamp.size + 
  tmx_mx_solamulticast_hsvf_v1_12.filler_2.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_number.size

-- Display: Future Options Trade Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Trade Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Option Symbol: Struct of 7 fields
  index, future_option_symbol = tmx_mx_solamulticast_hsvf_v1_12.future_option_symbol.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solamulticast_hsvf_v1_12.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker: X
  index, price_indicator_marker = tmx_mx_solamulticast_hsvf_v1_12.price_indicator_marker.dissect(buffer, index, packet, parent)

  -- Net Change Sign: X
  index, net_change_sign = tmx_mx_solamulticast_hsvf_v1_12.net_change_sign.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_solamulticast_hsvf_v1_12.scaled_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_solamulticast_hsvf_v1_12.filler_6.dissect(buffer, index, packet, parent)

  -- Trade Timestamp: N
  index, trade_timestamp = tmx_mx_solamulticast_hsvf_v1_12.trade_timestamp.dissect(buffer, index, packet, parent)

  -- Filler 2: X
  index, filler_2 = tmx_mx_solamulticast_hsvf_v1_12.filler_2.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_solamulticast_hsvf_v1_12.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Trade Message
tmx_mx_solamulticast_hsvf_v1_12.future_options_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.future_options_trade_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.future_options_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.future_options_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.future_options_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Trade Message
tmx_mx_solamulticast_hsvf_v1_12.option_trade_message = {}

-- Size: Option Trade Message
tmx_mx_solamulticast_hsvf_v1_12.option_trade_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.long_message_header.size + 
  tmx_mx_solamulticast_hsvf_v1_12.exchange_id.size + 
  tmx_mx_solamulticast_hsvf_v1_12.option_symbol.size + 
  tmx_mx_solamulticast_hsvf_v1_12.volume.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_price.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_price_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.net_change_sign.size + 
  tmx_mx_solamulticast_hsvf_v1_12.net_change.size + 
  tmx_mx_solamulticast_hsvf_v1_12.net_change_fraction_indicator.size + 
  tmx_mx_solamulticast_hsvf_v1_12.filler_6.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_timestamp.size + 
  tmx_mx_solamulticast_hsvf_v1_12.filler_1.size + 
  tmx_mx_solamulticast_hsvf_v1_12.price_indicator_marker.size + 
  tmx_mx_solamulticast_hsvf_v1_12.trade_number.size

-- Display: Option Trade Message
tmx_mx_solamulticast_hsvf_v1_12.option_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Trade Message
tmx_mx_solamulticast_hsvf_v1_12.option_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Message Header: Struct of 1 fields
  index, long_message_header = tmx_mx_solamulticast_hsvf_v1_12.long_message_header.dissect(buffer, index, packet, parent)

  -- Exchange Id: A
  index, exchange_id = tmx_mx_solamulticast_hsvf_v1_12.exchange_id.dissect(buffer, index, packet, parent)

  -- Option Symbol: Struct of 7 fields
  index, option_symbol = tmx_mx_solamulticast_hsvf_v1_12.option_symbol.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_solamulticast_hsvf_v1_12.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_solamulticast_hsvf_v1_12.scaled_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign: X
  index, net_change_sign = tmx_mx_solamulticast_hsvf_v1_12.net_change_sign.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_solamulticast_hsvf_v1_12.scaled_net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = tmx_mx_solamulticast_hsvf_v1_12.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_solamulticast_hsvf_v1_12.filler_6.dissect(buffer, index, packet, parent)

  -- Trade Timestamp: N
  index, trade_timestamp = tmx_mx_solamulticast_hsvf_v1_12.trade_timestamp.dissect(buffer, index, packet, parent)

  -- Filler 1: X
  index, filler_1 = tmx_mx_solamulticast_hsvf_v1_12.filler_1.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker: X
  index, price_indicator_marker = tmx_mx_solamulticast_hsvf_v1_12.price_indicator_marker.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_solamulticast_hsvf_v1_12.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Trade Message
tmx_mx_solamulticast_hsvf_v1_12.option_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.option_trade_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.option_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.option_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.option_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Error Message Message
tmx_mx_solamulticast_hsvf_v1_12.error_message_message = {}

-- Size: Error Message Message
tmx_mx_solamulticast_hsvf_v1_12.error_message_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.error_code.size + 
  tmx_mx_solamulticast_hsvf_v1_12.error_msg.size

-- Display: Error Message Message
tmx_mx_solamulticast_hsvf_v1_12.error_message_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Error Message Message
tmx_mx_solamulticast_hsvf_v1_12.error_message_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Error Code: N
  index, error_code = tmx_mx_solamulticast_hsvf_v1_12.error_code.dissect(buffer, index, packet, parent)

  -- Error Msg: X
  index, error_msg = tmx_mx_solamulticast_hsvf_v1_12.error_msg.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Error Message Message
tmx_mx_solamulticast_hsvf_v1_12.error_message_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.error_message_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.error_message_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.error_message_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.error_message_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission End Message
tmx_mx_solamulticast_hsvf_v1_12.retransmission_end_message = {}

-- Display: Retransmission End Message
tmx_mx_solamulticast_hsvf_v1_12.retransmission_end_message.display = function(packet, parent, length)
  return "Retransmission End Message"
end


-- Dissect: Retransmission End Message
tmx_mx_solamulticast_hsvf_v1_12.retransmission_end_message.dissect = function(buffer, offset, packet, parent)
  local display = tmx_mx_solamulticast_hsvf_v1_12.retransmission_end_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Retransmission Begin Message
tmx_mx_solamulticast_hsvf_v1_12.retransmission_begin_message = {}

-- Display: Retransmission Begin Message
tmx_mx_solamulticast_hsvf_v1_12.retransmission_begin_message.display = function(packet, parent, length)
  return "Retransmission Begin Message"
end


-- Dissect: Retransmission Begin Message
tmx_mx_solamulticast_hsvf_v1_12.retransmission_begin_message.dissect = function(buffer, offset, packet, parent)
  local display = tmx_mx_solamulticast_hsvf_v1_12.retransmission_begin_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Retransmission Request Message
tmx_mx_solamulticast_hsvf_v1_12.retransmission_request_message = {}

-- Size: Retransmission Request Message
tmx_mx_solamulticast_hsvf_v1_12.retransmission_request_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.line.size + 
  tmx_mx_solamulticast_hsvf_v1_12.start.size + 
  tmx_mx_solamulticast_hsvf_v1_12.end_.size

-- Display: Retransmission Request Message
tmx_mx_solamulticast_hsvf_v1_12.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
tmx_mx_solamulticast_hsvf_v1_12.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Line: X
  index, line = tmx_mx_solamulticast_hsvf_v1_12.line.dissect(buffer, index, packet, parent)

  -- Start: N
  index, start = tmx_mx_solamulticast_hsvf_v1_12.start.dissect(buffer, index, packet, parent)

  -- End: N
  index, end_ = tmx_mx_solamulticast_hsvf_v1_12.end_.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
tmx_mx_solamulticast_hsvf_v1_12.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.retransmission_request_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Logout Acknowledgement Message
tmx_mx_solamulticast_hsvf_v1_12.logout_acknowledgement_message = {}

-- Display: Logout Acknowledgement Message
tmx_mx_solamulticast_hsvf_v1_12.logout_acknowledgement_message.display = function(packet, parent, length)
  return "Logout Acknowledgement Message"
end


-- Dissect: Logout Acknowledgement Message
tmx_mx_solamulticast_hsvf_v1_12.logout_acknowledgement_message.dissect = function(buffer, offset, packet, parent)
  local display = tmx_mx_solamulticast_hsvf_v1_12.logout_acknowledgement_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Login Acknowledgement Message
tmx_mx_solamulticast_hsvf_v1_12.login_acknowledgement_message = {}

-- Display: Login Acknowledgement Message
tmx_mx_solamulticast_hsvf_v1_12.login_acknowledgement_message.display = function(packet, parent, length)
  return "Login Acknowledgement Message"
end


-- Dissect: Login Acknowledgement Message
tmx_mx_solamulticast_hsvf_v1_12.login_acknowledgement_message.dissect = function(buffer, offset, packet, parent)
  local display = tmx_mx_solamulticast_hsvf_v1_12.login_acknowledgement_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Logout Message
tmx_mx_solamulticast_hsvf_v1_12.logout_message = {}

-- Display: Logout Message
tmx_mx_solamulticast_hsvf_v1_12.logout_message.display = function(packet, parent, length)
  return "Logout Message"
end


-- Dissect: Logout Message
tmx_mx_solamulticast_hsvf_v1_12.logout_message.dissect = function(buffer, offset, packet, parent)
  local display = tmx_mx_solamulticast_hsvf_v1_12.logout_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Login Message
tmx_mx_solamulticast_hsvf_v1_12.login_message = {}

-- Size: Login Message
tmx_mx_solamulticast_hsvf_v1_12.login_message.size =
  tmx_mx_solamulticast_hsvf_v1_12.user_1.size + 
  tmx_mx_solamulticast_hsvf_v1_12.pwd_1.size + 
  tmx_mx_solamulticast_hsvf_v1_12.login_timestamp.size + 
  tmx_mx_solamulticast_hsvf_v1_12.protocol.size

-- Display: Login Message
tmx_mx_solamulticast_hsvf_v1_12.login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Message
tmx_mx_solamulticast_hsvf_v1_12.login_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User 1: X
  index, user_1 = tmx_mx_solamulticast_hsvf_v1_12.user_1.dissect(buffer, index, packet, parent)

  -- Pwd 1: X
  index, pwd_1 = tmx_mx_solamulticast_hsvf_v1_12.pwd_1.dissect(buffer, index, packet, parent)

  -- Login Timestamp: N
  index, login_timestamp = tmx_mx_solamulticast_hsvf_v1_12.login_timestamp.dissect(buffer, index, packet, parent)

  -- Protocol: X
  index, protocol = tmx_mx_solamulticast_hsvf_v1_12.protocol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
tmx_mx_solamulticast_hsvf_v1_12.login_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.login_message, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.login_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.login_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.login_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Body
tmx_mx_solamulticast_hsvf_v1_12.message_body = {}

-- Dissect: Message Body
tmx_mx_solamulticast_hsvf_v1_12.message_body.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Message
  if message_type == "LI" then
    return tmx_mx_solamulticast_hsvf_v1_12.login_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Message
  if message_type == "LO" then
    return tmx_mx_solamulticast_hsvf_v1_12.logout_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Acknowledgement Message
  if message_type == "KI" then
    return tmx_mx_solamulticast_hsvf_v1_12.login_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Acknowledgement Message
  if message_type == "KO" then
    return tmx_mx_solamulticast_hsvf_v1_12.logout_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if message_type == "RT" then
    return tmx_mx_solamulticast_hsvf_v1_12.retransmission_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Begin Message
  if message_type == "RB" then
    return tmx_mx_solamulticast_hsvf_v1_12.retransmission_begin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission End Message
  if message_type == "RE" then
    return tmx_mx_solamulticast_hsvf_v1_12.retransmission_end_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Error Message Message
  if message_type == "ER" then
    return tmx_mx_solamulticast_hsvf_v1_12.error_message_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Trade Message
  if message_type == "C" then
    return tmx_mx_solamulticast_hsvf_v1_12.option_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Trade Message
  if message_type == "CB" then
    return tmx_mx_solamulticast_hsvf_v1_12.future_options_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Trade Message
  if message_type == "CF" then
    return tmx_mx_solamulticast_hsvf_v1_12.futures_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Trade Message
  if message_type == "CS" then
    return tmx_mx_solamulticast_hsvf_v1_12.strategy_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Request For Quote Rfq Message
  if message_type == "D" then
    return tmx_mx_solamulticast_hsvf_v1_12.option_request_for_quote_rfq_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Request For Quote Rfq Message
  if message_type == "DB" then
    return tmx_mx_solamulticast_hsvf_v1_12.future_options_request_for_quote_rfq_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Request For Quote Rfq Message
  if message_type == "DF" then
    return tmx_mx_solamulticast_hsvf_v1_12.futures_request_for_quote_rfq_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Request For Quote Rfq Message
  if message_type == "DS" then
    return tmx_mx_solamulticast_hsvf_v1_12.strategy_request_for_quote_rfq_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Schedule Notice Option Message
  if message_type == "E" then
    return tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_option_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Schedule Notice Futures Option Message
  if message_type == "EB" then
    return tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_futures_option_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Schedule Notice Future Message
  if message_type == "EF" then
    return tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_future_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Schedule Notice Strategy Message
  if message_type == "ES" then
    return tmx_mx_solamulticast_hsvf_v1_12.instrument_schedule_notice_strategy_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Quote Message
  if message_type == "F" then
    return tmx_mx_solamulticast_hsvf_v1_12.option_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Quote Message
  if message_type == "FB" then
    return tmx_mx_solamulticast_hsvf_v1_12.future_options_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Quote Message
  if message_type == "FF" then
    return tmx_mx_solamulticast_hsvf_v1_12.futures_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Quote Message
  if message_type == "FS" then
    return tmx_mx_solamulticast_hsvf_v1_12.strategy_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Market Depth Message
  if message_type == "H" then
    return tmx_mx_solamulticast_hsvf_v1_12.option_market_depth_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Market Depth Message
  if message_type == "HB" then
    return tmx_mx_solamulticast_hsvf_v1_12.future_options_market_depth_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Market Depth Message
  if message_type == "HF" then
    return tmx_mx_solamulticast_hsvf_v1_12.futures_market_depth_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Market Depth Message
  if message_type == "HS" then
    return tmx_mx_solamulticast_hsvf_v1_12.strategy_market_depth_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Trade Cancellation Message
  if message_type == "I" then
    return tmx_mx_solamulticast_hsvf_v1_12.option_trade_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Trade Cancellation Message
  if message_type == "IB" then
    return tmx_mx_solamulticast_hsvf_v1_12.future_options_trade_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Trade Cancellation Message
  if message_type == "IF" then
    return tmx_mx_solamulticast_hsvf_v1_12.futures_trade_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Trade Cancellation Message
  if message_type == "IS" then
    return tmx_mx_solamulticast_hsvf_v1_12.strategy_trade_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Instrument Keys Message
  if message_type == "J" then
    return tmx_mx_solamulticast_hsvf_v1_12.option_instrument_keys_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Instrument Keys Message
  if message_type == "JB" then
    return tmx_mx_solamulticast_hsvf_v1_12.future_options_instrument_keys_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Instrument Keys Message
  if message_type == "JE" then
    return tmx_mx_solamulticast_hsvf_v1_12.underlying_instrument_keys_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Instrument Keys Message
  if message_type == "JF" then
    return tmx_mx_solamulticast_hsvf_v1_12.futures_instrument_keys_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Instrument Keys Message
  if message_type == "JS" then
    return tmx_mx_solamulticast_hsvf_v1_12.strategy_instrument_keys_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Summary Message
  if message_type == "N" then
    return tmx_mx_solamulticast_hsvf_v1_12.option_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Summary Message
  if message_type == "NB" then
    return tmx_mx_solamulticast_hsvf_v1_12.future_options_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Summary Message
  if message_type == "NF" then
    return tmx_mx_solamulticast_hsvf_v1_12.futures_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Summary Message
  if message_type == "NS" then
    return tmx_mx_solamulticast_hsvf_v1_12.strategy_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Beginning Of Options Summary Message
  if message_type == "Q" then
    return tmx_mx_solamulticast_hsvf_v1_12.beginning_of_options_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Beginning Of Future Options Summary Message
  if message_type == "QB" then
    return tmx_mx_solamulticast_hsvf_v1_12.beginning_of_future_options_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Beginning Of Futures Summary Message
  if message_type == "QF" then
    return tmx_mx_solamulticast_hsvf_v1_12.beginning_of_futures_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Beginning Of Strategy Summary Message
  if message_type == "QS" then
    return tmx_mx_solamulticast_hsvf_v1_12.beginning_of_strategy_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Trade Correction Message
  if message_type == "XF" then
    return tmx_mx_solamulticast_hsvf_v1_12.futures_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Group Status Message
  if message_type == "GR" then
    return tmx_mx_solamulticast_hsvf_v1_12.group_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Group Status Strategies Message
  if message_type == "GS" then
    return tmx_mx_solamulticast_hsvf_v1_12.group_status_strategies_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bulletins Message
  if message_type == "L" then
    return tmx_mx_solamulticast_hsvf_v1_12.bulletins_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Sales Message
  if message_type == "S" then
    return tmx_mx_solamulticast_hsvf_v1_12.end_of_sales_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Table Message
  if message_type == "TT" then
    return tmx_mx_solamulticast_hsvf_v1_12.tick_table_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Transmission Message
  if message_type == "U" then
    return tmx_mx_solamulticast_hsvf_v1_12.end_of_transmission_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Circuit Assurance Message
  if message_type == "V" then
    return tmx_mx_solamulticast_hsvf_v1_12.circuit_assurance_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
tmx_mx_solamulticast_hsvf_v1_12.message_header = {}

-- Size: Message Header
tmx_mx_solamulticast_hsvf_v1_12.message_header.size =
  tmx_mx_solamulticast_hsvf_v1_12.sequence_number.size + 
  tmx_mx_solamulticast_hsvf_v1_12.message_type.size

-- Display: Message Header
tmx_mx_solamulticast_hsvf_v1_12.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
tmx_mx_solamulticast_hsvf_v1_12.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: N
  index, sequence_number = tmx_mx_solamulticast_hsvf_v1_12.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Type: X
  index, message_type = tmx_mx_solamulticast_hsvf_v1_12.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
tmx_mx_solamulticast_hsvf_v1_12.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12.fields.message_header, buffer(offset, 0))
    local index = tmx_mx_solamulticast_hsvf_v1_12.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solamulticast_hsvf_v1_12.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solamulticast_hsvf_v1_12.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
tmx_mx_solamulticast_hsvf_v1_12.packet = {}

-- Verify required size of Udp packet
tmx_mx_solamulticast_hsvf_v1_12.packet.requiredsize = function(buffer)
  return buffer:len() >= tmx_mx_solamulticast_hsvf_v1_12.hsvf_stx.size + tmx_mx_solamulticast_hsvf_v1_12.message_header.size
end

-- Dissect Packet
tmx_mx_solamulticast_hsvf_v1_12.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Hsvf Stx: character
    index, hsvf_stx = tmx_mx_solamulticast_hsvf_v1_12.hsvf_stx.dissect(buffer, index, packet, parent)

    -- Message Header: Struct of 2 fields
    index, message_header = tmx_mx_solamulticast_hsvf_v1_12.message_header.dissect(buffer, index, packet, parent)

    -- Dependency element: Message Type
    local message_type = trim_right_spaces(buffer(index - 2, 2):string())

    -- Message Body: Runtime Type with 53 branches
    index = tmx_mx_solamulticast_hsvf_v1_12.message_body.dissect(buffer, index, packet, parent, message_type)

    -- Hsvf Etx: character
    index, hsvf_etx = tmx_mx_solamulticast_hsvf_v1_12.hsvf_etx.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_tmx_mx_solamulticast_hsvf_v1_12.init()
end

-- Dissector for Tmx Mx SolaMulticast Hsvf 1.12
function omi_tmx_mx_solamulticast_hsvf_v1_12.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_tmx_mx_solamulticast_hsvf_v1_12.name

  -- Dissect protocol
  local protocol = parent:add(omi_tmx_mx_solamulticast_hsvf_v1_12, buffer(), omi_tmx_mx_solamulticast_hsvf_v1_12.description, "("..buffer:len().." Bytes)")
  return tmx_mx_solamulticast_hsvf_v1_12.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Hsvf Stx Field
tmx_mx_solamulticast_hsvf_v1_12.hsvf_stx.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(0, 1):int()

  if value == 2 then
    return true
  end

  return false
end

-- Dissector Heuristic for Tmx Mx SolaMulticast Hsvf 1.12 (Udp)
local function omi_tmx_mx_solamulticast_hsvf_v1_12_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not tmx_mx_solamulticast_hsvf_v1_12.packet.requiredsize(buffer) then return false end

  -- Verify Hsvf Stx
  if not tmx_mx_solamulticast_hsvf_v1_12.hsvf_stx.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_tmx_mx_solamulticast_hsvf_v1_12
  omi_tmx_mx_solamulticast_hsvf_v1_12.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Tmx Mx SolaMulticast Hsvf 1.12
omi_tmx_mx_solamulticast_hsvf_v1_12:register_heuristic("udp", omi_tmx_mx_solamulticast_hsvf_v1_12_udp_heuristic)

-- Register Tmx Mx SolaMulticast Hsvf 1.12 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_tmx_mx_solamulticast_hsvf_v1_12)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: TMX Group
--   Version: 1.12
--   Date: Friday, March 23, 2018
--   Specification: hsvf-mx-005e-mx-sola-hsvf-multicast-specifications-guide-v1-12-2.pdf
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
