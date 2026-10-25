-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax PearlOptions TopOfMarket Mach 2.3 Protocol
local omi_miax_pearloptions_topofmarket_mach_v2_3 = Proto("Omi.Miax.PearlOptions.TopOfMarket.Mach.v2.3", "Miax PearlOptions TopOfMarket Mach 2.3")

-- Protocol table
local miax_pearloptions_topofmarket_mach_v2_3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax PearlOptions TopOfMarket Mach 2.3 Fields
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.active_on_miax = ProtoField.new("Active On Miax", "miax.pearloptions.topofmarket.mach.v2.3.activeonmiax", ftypes.STRING, nil, nil, nil, "Indicates if this symbol is tradable on MIAX in the current session")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.application_message = ProtoField.new("Application Message", "miax.pearloptions.topofmarket.mach.v2.3.applicationmessage", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.bid_condition = ProtoField.new("Bid Condition", "miax.pearloptions.topofmarket.mach.v2.3.bidcondition", ftypes.STRING, nil, nil, nil, "Bid Condition Value")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.bid_price_2 = ProtoField.new("Bid Price 2", "miax.pearloptions.topofmarket.mach.v2.3.bidprice2", ftypes.DOUBLE, nil, nil, nil, "MIAX best bid price at the time stated in Timestamp and side specified in Message Type")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.bid_price_4 = ProtoField.new("Bid Price 4", "miax.pearloptions.topofmarket.mach.v2.3.bidprice4", ftypes.DOUBLE, nil, nil, nil, "MIAX best bid price at the time stated in Timestamp and side specified in Message Type")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.bid_priority_customer_size_2 = ProtoField.new("Bid Priority Customer Size 2", "miax.pearloptions.topofmarket.mach.v2.3.bidprioritycustomersize2", ftypes.UINT16, nil, nil, nil, "Aggregate size of Priority Customer contracts at the MIAX Best Bid Price")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.bid_priority_customer_size_4 = ProtoField.new("Bid Priority Customer Size 4", "miax.pearloptions.topofmarket.mach.v2.3.bidprioritycustomersize4", ftypes.UINT32, nil, nil, nil, "Aggregate size of Priority Customer contracts at the MIAX Best Bid Price")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.bid_size_2 = ProtoField.new("Bid Size 2", "miax.pearloptions.topofmarket.mach.v2.3.bidsize2", ftypes.UINT16, nil, nil, nil, "Aggregate size at MIAX best bid Price at the time stated in Timestamp and side specified in Message Type")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.bid_size_4 = ProtoField.new("Bid Size 4", "miax.pearloptions.topofmarket.mach.v2.3.bidsize4", ftypes.UINT32, nil, nil, nil, "Aggregate size at MIAX best bid Price at the time stated in Timestamp and side specified in Message Type")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.call_or_put = ProtoField.new("Call Or Put", "miax.pearloptions.topofmarket.mach.v2.3.callorput", ftypes.STRING, nil, nil, nil, "Option Type value")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.closing_time = ProtoField.new("Closing Time", "miax.pearloptions.topofmarket.mach.v2.3.closingtime", ftypes.STRING, nil, nil, nil, "Expressed in HH:MM:SS format. Eg: 16:15:00")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.correction_number = ProtoField.new("Correction Number", "miax.pearloptions.topofmarket.mach.v2.3.correctionnumber", ftypes.UINT8, nil, nil, nil, "Trade correction number. 0 for New trades. Greater than or equal to 0 for trades resulting from corrections/adjustments.")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.event_reason = ProtoField.new("Event Reason", "miax.pearloptions.topofmarket.mach.v2.3.eventreason", ftypes.STRING, nil, nil, nil, "Event Reason value")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.expected_event_time_nano_seconds = ProtoField.new("Expected Event Time Nano Seconds", "miax.pearloptions.topofmarket.mach.v2.3.expectedeventtimenanoseconds", ftypes.UINT32, nil, nil, nil, "Nano-seconds portion of the expected time of the event. Specifies number of nano-seconds since the seconds specified in “Expected Event Time Seconds” field.")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.expected_event_time_seconds = ProtoField.new("Expected Event Time Seconds", "miax.pearloptions.topofmarket.mach.v2.3.expectedeventtimeseconds", ftypes.UINT32, nil, nil, nil, "Seconds portion of the expected time of the event. Always use in conjunction with the Nano-seconds part field.")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.expiration_date = ProtoField.new("Expiration Date", "miax.pearloptions.topofmarket.mach.v2.3.expirationdate", ftypes.STRING, nil, nil, nil, "Expiration date of the option in YYYYMMDD format")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.liquidity_acceptance_increment_indicator = ProtoField.new("Liquidity Acceptance Increment Indicator", "miax.pearloptions.topofmarket.mach.v2.3.liquidityacceptanceincrementindicator", ftypes.STRING, nil, nil, nil, "This is the Minimum Price Variation for Quote/Order acceptance as per MIAX rules")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.long_term_option = ProtoField.new("Long Term Option", "miax.pearloptions.topofmarket.mach.v2.3.longtermoption", ftypes.STRING, nil, nil, nil, "“Y” = Far month expiration, “N” = Near month expiration (as defined by MIAX rules)")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.mbbo_condition = ProtoField.new("Mbbo Condition", "miax.pearloptions.topofmarket.mach.v2.3.mbbocondition", ftypes.STRING, nil, nil, nil, "MBBO Condition Values")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.mbbo_price_2 = ProtoField.new("Mbbo Price 2", "miax.pearloptions.topofmarket.mach.v2.3.mbboprice2", ftypes.DOUBLE, nil, nil, nil, "MIAX Best price at the time stated in Timestamp and side specified in Message Type")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.mbbo_price_4 = ProtoField.new("Mbbo Price 4", "miax.pearloptions.topofmarket.mach.v2.3.mbboprice4", ftypes.DOUBLE, nil, nil, nil, "MIAX Best price at the time stated in Timestamp and side specified in Message Type")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.mbbo_priority_customer_size_2 = ProtoField.new("Mbbo Priority Customer Size 2", "miax.pearloptions.topofmarket.mach.v2.3.mbboprioritycustomersize2", ftypes.UINT16, nil, nil, nil, "Aggregate size of Priority Customer contracts at the MIAX Best Price")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.mbbo_priority_customer_size_4 = ProtoField.new("Mbbo Priority Customer Size 4", "miax.pearloptions.topofmarket.mach.v2.3.mbboprioritycustomersize4", ftypes.UINT32, nil, nil, nil, "Aggregate size of Priority Customer contracts at the MIAX Best Price")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.mbbo_size_2 = ProtoField.new("Mbbo Size 2", "miax.pearloptions.topofmarket.mach.v2.3.mbbosize2", ftypes.UINT16, nil, nil, nil, "Aggregate size at MIAX Best Price at the time stated in Timestamp and side specified in Message Type")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.mbbo_size_4 = ProtoField.new("Mbbo Size 4", "miax.pearloptions.topofmarket.mach.v2.3.mbbosize4", ftypes.UINT32, nil, nil, nil, "Aggregate size at MIAX Best Price at the time stated in Timestamp and side specified in Message Type")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.message_type = ProtoField.new("Message Type", "miax.pearloptions.topofmarket.mach.v2.3.messagetype", ftypes.STRING, nil, nil, nil, "Code identifying this message type")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.miax_bbo_posting_increment_indicator = ProtoField.new("Miax Bbo Posting Increment Indicator", "miax.pearloptions.topofmarket.mach.v2.3.miaxbbopostingincrementindicator", ftypes.STRING, nil, nil, nil, "This is the Minimum Price Variation as agreed to by the Options industry (penny pilot program) and as published by MIAX")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.nanoseconds = ProtoField.new("Nanoseconds", "miax.pearloptions.topofmarket.mach.v2.3.nanoseconds", ftypes.UINT32, nil, nil, nil, "Time at which this product is added/updated on MIAX system today.")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.offer_condition = ProtoField.new("Offer Condition", "miax.pearloptions.topofmarket.mach.v2.3.offercondition", ftypes.STRING, nil, nil, nil, "Offer Condition value")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.offer_price_2 = ProtoField.new("Offer Price 2", "miax.pearloptions.topofmarket.mach.v2.3.offerprice2", ftypes.DOUBLE, nil, nil, nil, "MIAX best offer price at the time stated in Timestamp and side specified in Message Type")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.offer_price_4 = ProtoField.new("Offer Price 4", "miax.pearloptions.topofmarket.mach.v2.3.offerprice4", ftypes.DOUBLE, nil, nil, nil, "MIAX best offer price at the time stated in Timestamp and side specified in Message Type")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.offer_priority_customer_size_2 = ProtoField.new("Offer Priority Customer Size 2", "miax.pearloptions.topofmarket.mach.v2.3.offerprioritycustomersize2", ftypes.UINT16, nil, nil, nil, "Aggregate size of Priority Customer contracts at the MIAX Best Offer Price")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.offer_priority_customer_size_4 = ProtoField.new("Offer Priority Customer Size 4", "miax.pearloptions.topofmarket.mach.v2.3.offerprioritycustomersize4", ftypes.UINT32, nil, nil, nil, "Aggregate size of Priority Customer contracts at the MIAX Best Offer Price")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.offer_size_2 = ProtoField.new("Offer Size 2", "miax.pearloptions.topofmarket.mach.v2.3.offersize2", ftypes.UINT16, nil, nil, nil, "Aggregate size at MIAX best offer Price at the time stated in Timestamp and side specified in Message Type")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.offer_size_4 = ProtoField.new("Offer Size 4", "miax.pearloptions.topofmarket.mach.v2.3.offersize4", ftypes.UINT32, nil, nil, nil, "Aggregate size at MIAX best offer Price at the time stated in Timestamp and side specified in Message Type")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.opening_time = ProtoField.new("Opening Time", "miax.pearloptions.topofmarket.mach.v2.3.openingtime", ftypes.STRING, nil, nil, nil, "Expressed in HH:MM:SS format. Eg: 09:30:00")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.opening_underlying_market_code = ProtoField.new("Opening Underlying Market Code", "miax.pearloptions.topofmarket.mach.v2.3.openingunderlyingmarketcode", ftypes.STRING, nil, nil, nil, "Options opening will be triggered on receipt of Opening quote/trade from this Underlying market:")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.packet_length = ProtoField.new("Packet Length", "miax.pearloptions.topofmarket.mach.v2.3.packetlength", ftypes.UINT16, nil, nil, nil, "Length of the packet, including the header and application data")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.packet_type = ProtoField.new("Packet Type", "miax.pearloptions.topofmarket.mach.v2.3.packettype", ftypes.UINT8, nil, nil, nil, "protocol packet type")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.priority_quote_width = ProtoField.new("Priority Quote Width", "miax.pearloptions.topofmarket.mach.v2.3.priorityquotewidth", ftypes.DOUBLE, nil, nil, nil, "Maximum allowable width for a quote for this Option during regular trading in order to be considered as Priority Quote. 0 when Priority Quote Width is not applicable.")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.product_id = ProtoField.new("Product Id", "miax.pearloptions.topofmarket.mach.v2.3.productid", ftypes.UINT32, nil, nil, nil, "MIAX Product ID mapped to a given option. It is assigned per trading session and is valid for that session.")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.reference_correction_number = ProtoField.new("Reference Correction Number", "miax.pearloptions.topofmarket.mach.v2.3.referencecorrectionnumber", ftypes.UINT8, nil, nil, nil, "Correction Number of the trade that was just corrected/adjusted. 0 for new trades.")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.reference_trade_id = ProtoField.new("Reference Trade Id", "miax.pearloptions.topofmarket.mach.v2.3.referencetradeid", ftypes.UINT32, nil, nil, nil, "0 (zero) if new trade. Trade ID of the original trade if this trade originated as a correction of the original trade.")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.reserved_8 = ProtoField.new("Reserved 8", "miax.pearloptions.topofmarket.mach.v2.3.reserved8", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.restricted_option = ProtoField.new("Restricted Option", "miax.pearloptions.topofmarket.mach.v2.3.restrictedoption", ftypes.STRING, nil, nil, nil, "Restricted Option value")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.seconds = ProtoField.new("Seconds", "miax.pearloptions.topofmarket.mach.v2.3.seconds", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Seconds part of the time that applies to all messages that gets disseminated until this message gets sent again.")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.seconds_utc = ProtoField.new("Seconds", "miax.pearloptions.topofmarket.mach.v2.3.seconds.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Seconds part of the time that applies to all messages that gets disseminated until this message gets sent again.")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.security_symbol = ProtoField.new("Security Symbol", "miax.pearloptions.topofmarket.mach.v2.3.securitysymbol", ftypes.STRING, nil, nil, nil, "Option Security Symbol")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.sequence_number = ProtoField.new("Sequence Number", "miax.pearloptions.topofmarket.mach.v2.3.sequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of this data packet")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.session_id = ProtoField.new("Session Id", "miax.pearloptions.topofmarket.mach.v2.3.sessionid", ftypes.UINT32, nil, nil, nil, "MIAX assigned ID for the current trading session")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.session_number = ProtoField.new("Session Number", "miax.pearloptions.topofmarket.mach.v2.3.sessionnumber", ftypes.UINT8, nil, nil, nil, "protocol packet type")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.strike_price = ProtoField.new("Strike Price", "miax.pearloptions.topofmarket.mach.v2.3.strikeprice", ftypes.DOUBLE, nil, nil, nil, "Explicit strike price of the option. Refer to data types for field processing notes")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.system_status = ProtoField.new("System Status", "miax.pearloptions.topofmarket.mach.v2.3.systemstatus", ftypes.STRING, nil, nil, nil, "Current system status")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.to_m_version = ProtoField.new("To M Version", "miax.pearloptions.topofmarket.mach.v2.3.tomversion", ftypes.STRING, nil, nil, nil, "Eg: ToM01.01")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.trade_condition = ProtoField.new("Trade Condition", "miax.pearloptions.topofmarket.mach.v2.3.tradecondition", ftypes.STRING, nil, nil, nil, "Trade Condition Value")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.trade_id = ProtoField.new("Trade Id", "miax.pearloptions.topofmarket.mach.v2.3.tradeid", ftypes.UINT32, nil, nil, nil, "Unique Trade ID assigned to every Trade.")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.trade_price = ProtoField.new("Trade Price", "miax.pearloptions.topofmarket.mach.v2.3.tradeprice", ftypes.DOUBLE, nil, nil, nil, "Price at which this product traded")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.trade_size = ProtoField.new("Trade Size", "miax.pearloptions.topofmarket.mach.v2.3.tradesize", ftypes.UINT32, nil, nil, nil, "Number of contracts executed in this trade")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.trading_status = ProtoField.new("Trading Status", "miax.pearloptions.topofmarket.mach.v2.3.tradingstatus", ftypes.STRING, nil, nil, nil, "Trading Status value")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "miax.pearloptions.topofmarket.mach.v2.3.underlyingsymbol", ftypes.STRING, nil, nil, nil, "Stock Symbol for the option.")

-- Miax PearlOptions TopOfMarket Mach 2.3 Framing
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.mach_message = ProtoField.new("Mach Message", "miax.pearloptions.topofmarket.mach.v2.3.machmessage", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.mach_packet_header = ProtoField.new("Mach Packet Header", "miax.pearloptions.topofmarket.mach.v2.3.machpacketheader", ftypes.STRING, nil, nil, nil, "Mach packet header (12 bytes)")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.packet = ProtoField.new("Packet", "miax.pearloptions.topofmarket.mach.v2.3.packet", ftypes.STRING)

-- Miax PearlOptions TopOfMarket 2.3 Application Messages
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.last_sale_message = ProtoField.new("Last Sale Message", "miax.pearloptions.topofmarket.mach.v2.3.lastsalemessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate Trades that are resulting from executions on MIAX during the current trading session.")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.simple_double_sided_top_of_market_compact_message = ProtoField.new("Simple Double Sided Top Of Market Compact Message", "miax.pearloptions.topofmarket.mach.v2.3.simpledoublesidedtopofmarketcompactmessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used, in the refresh service only, to disseminate both sides of the MIAX Top of Market for options with low premiums and small aggregate MIAX Best Bid or Offer (MBBO) size.")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.simple_double_sided_top_of_market_wide_message = ProtoField.new("Simple Double Sided Top Of Market Wide Message", "miax.pearloptions.topofmarket.mach.v2.3.simpledoublesidedtopofmarketwidemessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate the “seconds” part of the timestamp that is applicable to all messages that are sent in the current second.This is the message format that will be used, in the refresh service only, to disseminate both sides of the MIAX Top of Market for options with high premiums or large aggregate MIAX Best Bid or Offer (MBBO) sizes.")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.simple_series_update_message = ProtoField.new("Simple Series Update Message", "miax.pearloptions.topofmarket.mach.v2.3.simpleseriesupdatemessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate all Option series traded on MIAX for the current session. The product ID sent in this message is what will be disseminated in Top of Market BBO and Last Sale messages.")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.simple_top_of_market_bid_compact_message = ProtoField.new("Simple Top Of Market Bid Compact Message", "miax.pearloptions.topofmarket.mach.v2.3.simpletopofmarketbidcompactmessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate each side of the MIAX Top of Market for options with low premiums and small aggregate MIAX Best Bid or Offer (MBBO) size")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.simple_top_of_market_bid_wide_message = ProtoField.new("Simple Top Of Market Bid Wide Message", "miax.pearloptions.topofmarket.mach.v2.3.simpletopofmarketbidwidemessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate MIAX Top of Market for options with high premiums or large aggregate MIAX Best Bid or Offer (MBBO) size.")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.simple_top_of_market_offer_compact_message = ProtoField.new("Simple Top Of Market Offer Compact Message", "miax.pearloptions.topofmarket.mach.v2.3.simpletopofmarketoffercompactmessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate each side of the MIAX Top of Market for options with low premiums and small aggregate MIAX Best Bid or Offer (MBBO) size")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.simple_top_of_market_offer_wide_message = ProtoField.new("Simple Top Of Market Offer Wide Message", "miax.pearloptions.topofmarket.mach.v2.3.simpletopofmarketofferwidemessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate MIAX Top of Market for options with high premiums or large aggregate MIAX Best Bid or Offer (MBBO) size.")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.system_state_message = ProtoField.new("System State Message", "miax.pearloptions.topofmarket.mach.v2.3.systemstatemessage", ftypes.STRING, nil, nil, nil, "This message format is used to notify the firms of the state changes of the system. This is a notification that applies to each Underlying group. Firms can use notifications as triggers in their system to ensure electronic synchronization of systems.")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.system_time_message = ProtoField.new("System Time Message", "miax.pearloptions.topofmarket.mach.v2.3.systemtimemessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate the “seconds” part of the timestamp that is applicable to all messages that are sent in the current second.")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "miax.pearloptions.topofmarket.mach.v2.3.tradecancelmessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate canceled Trades that are resulting from Trade cancellations or corrections on MIAX during the current trading session")
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.underlying_trading_status_notification_message = ProtoField.new("Underlying Trading Status Notification Message", "miax.pearloptions.topofmarket.mach.v2.3.underlyingtradingstatusnotificationmessage", ftypes.STRING, nil, nil, nil, "This message format will be used to notify firms of changes to the trading status of all the options of an underlying")

-- Miax PearlOptions TopOfMarket Mach 2.3 Generated Fields
omi_miax_pearloptions_topofmarket_mach_v2_3.fields.timestamp = ProtoField.new("Timestamp", "miax.pearloptions.topofmarket.mach.v2.3.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Miax PearlOptions TopOfMarket Mach 2.3 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
miax_pearloptions_topofmarket_mach_v2_3.absolute_time_base = 0

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
miax_pearloptions_topofmarket_mach_v2_3.format_timestamp = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Miax PearlOptions TopOfMarket Mach 2.3 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true

-- Register Miax PearlOptions TopOfMarket Mach 2.3 Show Options
omi_miax_pearloptions_topofmarket_mach_v2_3.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_miax_pearloptions_topofmarket_mach_v2_3.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_miax_pearloptions_topofmarket_mach_v2_3.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_miax_pearloptions_topofmarket_mach_v2_3.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

omi_miax_pearloptions_topofmarket_mach_v2_3.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_miax_pearloptions_topofmarket_mach_v2_3.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_miax_pearloptions_topofmarket_mach_v2_3.prefs.show_application_messages then
    show.application_messages = omi_miax_pearloptions_topofmarket_mach_v2_3.prefs.show_application_messages
  end
  if show.headers ~= omi_miax_pearloptions_topofmarket_mach_v2_3.prefs.show_headers then
    show.headers = omi_miax_pearloptions_topofmarket_mach_v2_3.prefs.show_headers
  end
  if show.structs ~= omi_miax_pearloptions_topofmarket_mach_v2_3.prefs.show_structs then
    show.structs = omi_miax_pearloptions_topofmarket_mach_v2_3.prefs.show_structs
  end
  if miax_pearloptions_topofmarket_mach_v2_3.format_timestamp ~= omi_miax_pearloptions_topofmarket_mach_v2_3.prefs.format_timestamp then
    miax_pearloptions_topofmarket_mach_v2_3.format_timestamp = omi_miax_pearloptions_topofmarket_mach_v2_3.prefs.format_timestamp
  end
  if miax_pearloptions_topofmarket_mach_v2_3.absolute_time_base ~= omi_miax_pearloptions_topofmarket_mach_v2_3.prefs.absolute_time_base then
    miax_pearloptions_topofmarket_mach_v2_3.absolute_time_base = omi_miax_pearloptions_topofmarket_mach_v2_3.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
miax_pearloptions_topofmarket_mach_v2_3.conversation = {}
miax_pearloptions_topofmarket_mach_v2_3.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
miax_pearloptions_topofmarket_mach_v2_3.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
miax_pearloptions_topofmarket_mach_v2_3.conversation.data = function(packet)
  local key = miax_pearloptions_topofmarket_mach_v2_3.conversation.key(packet)
  local data = miax_pearloptions_topofmarket_mach_v2_3.conversation.flows[key]
  if data == nil then
    data = { seconds = { last = nil, frames = {} } }
    miax_pearloptions_topofmarket_mach_v2_3.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
miax_pearloptions_topofmarket_mach_v2_3.conversation.current = nil


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
-- Miax PearlOptions TopOfMarket Mach 2.3 Fields
-----------------------------------------------------------------------

-- Active On Miax
miax_pearloptions_topofmarket_mach_v2_3.active_on_miax = {}

-- Size: Active On Miax
miax_pearloptions_topofmarket_mach_v2_3.active_on_miax.size = 1

-- Display: Active On Miax
miax_pearloptions_topofmarket_mach_v2_3.active_on_miax.labels = {
  ["A"] = "Active On Miax: Active (A)",
  ["I"] = "Active On Miax: Inactive (I)",
}

miax_pearloptions_topofmarket_mach_v2_3.active_on_miax.display = function(value)
  return miax_pearloptions_topofmarket_mach_v2_3.active_on_miax.labels[value] or "Active On Miax: Unknown("..value..")"
end

-- Dissect: Active On Miax
miax_pearloptions_topofmarket_mach_v2_3.active_on_miax.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.active_on_miax.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v2_3.active_on_miax.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.active_on_miax, range, value, display)

  return offset + length, value
end

-- Bid Condition
miax_pearloptions_topofmarket_mach_v2_3.bid_condition = {}

-- Size: Bid Condition
miax_pearloptions_topofmarket_mach_v2_3.bid_condition.size = 1

-- Display: Bid Condition
miax_pearloptions_topofmarket_mach_v2_3.bid_condition.labels = {
  ["A"] = "Bid Condition: Regular (A)",
  ["B"] = "Bid Condition: Public Customer Interest (B)",
  ["C"] = "Bid Condition: Not Firm (C)",
  ["R"] = "Bid Condition: Reserved (R)",
  ["T"] = "Bid Condition: Trading Halt (T)",
}

miax_pearloptions_topofmarket_mach_v2_3.bid_condition.display = function(value)
  return miax_pearloptions_topofmarket_mach_v2_3.bid_condition.labels[value] or "Bid Condition: Unknown("..value..")"
end

-- Dissect: Bid Condition
miax_pearloptions_topofmarket_mach_v2_3.bid_condition.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.bid_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v2_3.bid_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.bid_condition, range, value, display)

  return offset + length, value
end

-- Bid Price 2
miax_pearloptions_topofmarket_mach_v2_3.bid_price_2 = {}

-- Size: Bid Price 2
miax_pearloptions_topofmarket_mach_v2_3.bid_price_2.size = 2

-- Display: Bid Price 2
miax_pearloptions_topofmarket_mach_v2_3.bid_price_2.display = function(value)
  return "Bid Price 2: "..value
end

-- Translate: Bid Price 2
miax_pearloptions_topofmarket_mach_v2_3.bid_price_2.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price 2
miax_pearloptions_topofmarket_mach_v2_3.bid_price_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.bid_price_2.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_pearloptions_topofmarket_mach_v2_3.bid_price_2.translate(raw)
  local display = miax_pearloptions_topofmarket_mach_v2_3.bid_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.bid_price_2, range, value, display)

  return offset + length, value
end

-- Bid Price 4
miax_pearloptions_topofmarket_mach_v2_3.bid_price_4 = {}

-- Size: Bid Price 4
miax_pearloptions_topofmarket_mach_v2_3.bid_price_4.size = 4

-- Display: Bid Price 4
miax_pearloptions_topofmarket_mach_v2_3.bid_price_4.display = function(value)
  return "Bid Price 4: "..value
end

-- Translate: Bid Price 4
miax_pearloptions_topofmarket_mach_v2_3.bid_price_4.translate = function(raw)
  return raw/10000
end

-- Dissect: Bid Price 4
miax_pearloptions_topofmarket_mach_v2_3.bid_price_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.bid_price_4.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_pearloptions_topofmarket_mach_v2_3.bid_price_4.translate(raw)
  local display = miax_pearloptions_topofmarket_mach_v2_3.bid_price_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.bid_price_4, range, value, display)

  return offset + length, value
end

-- Bid Priority Customer Size 2
miax_pearloptions_topofmarket_mach_v2_3.bid_priority_customer_size_2 = {}

-- Size: Bid Priority Customer Size 2
miax_pearloptions_topofmarket_mach_v2_3.bid_priority_customer_size_2.size = 2

-- Display: Bid Priority Customer Size 2
miax_pearloptions_topofmarket_mach_v2_3.bid_priority_customer_size_2.display = function(value)
  return "Bid Priority Customer Size 2: "..value
end

-- Dissect: Bid Priority Customer Size 2
miax_pearloptions_topofmarket_mach_v2_3.bid_priority_customer_size_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.bid_priority_customer_size_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v2_3.bid_priority_customer_size_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.bid_priority_customer_size_2, range, value, display)

  return offset + length, value
end

-- Bid Priority Customer Size 4
miax_pearloptions_topofmarket_mach_v2_3.bid_priority_customer_size_4 = {}

-- Size: Bid Priority Customer Size 4
miax_pearloptions_topofmarket_mach_v2_3.bid_priority_customer_size_4.size = 4

-- Display: Bid Priority Customer Size 4
miax_pearloptions_topofmarket_mach_v2_3.bid_priority_customer_size_4.display = function(value)
  return "Bid Priority Customer Size 4: "..value
end

-- Dissect: Bid Priority Customer Size 4
miax_pearloptions_topofmarket_mach_v2_3.bid_priority_customer_size_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.bid_priority_customer_size_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v2_3.bid_priority_customer_size_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.bid_priority_customer_size_4, range, value, display)

  return offset + length, value
end

-- Bid Size 2
miax_pearloptions_topofmarket_mach_v2_3.bid_size_2 = {}

-- Size: Bid Size 2
miax_pearloptions_topofmarket_mach_v2_3.bid_size_2.size = 2

-- Display: Bid Size 2
miax_pearloptions_topofmarket_mach_v2_3.bid_size_2.display = function(value)
  return "Bid Size 2: "..value
end

-- Dissect: Bid Size 2
miax_pearloptions_topofmarket_mach_v2_3.bid_size_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.bid_size_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v2_3.bid_size_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.bid_size_2, range, value, display)

  return offset + length, value
end

-- Bid Size 4
miax_pearloptions_topofmarket_mach_v2_3.bid_size_4 = {}

-- Size: Bid Size 4
miax_pearloptions_topofmarket_mach_v2_3.bid_size_4.size = 4

-- Display: Bid Size 4
miax_pearloptions_topofmarket_mach_v2_3.bid_size_4.display = function(value)
  return "Bid Size 4: "..value
end

-- Dissect: Bid Size 4
miax_pearloptions_topofmarket_mach_v2_3.bid_size_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.bid_size_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v2_3.bid_size_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.bid_size_4, range, value, display)

  return offset + length, value
end

-- Call Or Put
miax_pearloptions_topofmarket_mach_v2_3.call_or_put = {}

-- Size: Call Or Put
miax_pearloptions_topofmarket_mach_v2_3.call_or_put.size = 1

-- Display: Call Or Put
miax_pearloptions_topofmarket_mach_v2_3.call_or_put.labels = {
  ["C"] = "Call Or Put: Call (C)",
  ["P"] = "Call Or Put: Put (P)",
}

miax_pearloptions_topofmarket_mach_v2_3.call_or_put.display = function(value)
  return miax_pearloptions_topofmarket_mach_v2_3.call_or_put.labels[value] or "Call Or Put: Unknown("..value..")"
end

-- Dissect: Call Or Put
miax_pearloptions_topofmarket_mach_v2_3.call_or_put.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.call_or_put.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v2_3.call_or_put.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.call_or_put, range, value, display)

  return offset + length, value
end

-- Closing Time
miax_pearloptions_topofmarket_mach_v2_3.closing_time = {}

-- Size: Closing Time
miax_pearloptions_topofmarket_mach_v2_3.closing_time.size = 8

-- Display: Closing Time
miax_pearloptions_topofmarket_mach_v2_3.closing_time.display = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
miax_pearloptions_topofmarket_mach_v2_3.closing_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.closing_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_topofmarket_mach_v2_3.closing_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.closing_time, range, value, display)

  return offset + length, value
end

-- Correction Number
miax_pearloptions_topofmarket_mach_v2_3.correction_number = {}

-- Size: Correction Number
miax_pearloptions_topofmarket_mach_v2_3.correction_number.size = 1

-- Display: Correction Number
miax_pearloptions_topofmarket_mach_v2_3.correction_number.display = function(value)
  return "Correction Number: "..value
end

-- Dissect: Correction Number
miax_pearloptions_topofmarket_mach_v2_3.correction_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.correction_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v2_3.correction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.correction_number, range, value, display)

  return offset + length, value
end

-- Event Reason
miax_pearloptions_topofmarket_mach_v2_3.event_reason = {}

-- Size: Event Reason
miax_pearloptions_topofmarket_mach_v2_3.event_reason.size = 1

-- Display: Event Reason
miax_pearloptions_topofmarket_mach_v2_3.event_reason.labels = {
  ["A"] = "Event Reason: Automatic (A)",
  ["M"] = "Event Reason: Manual (M)",
}

miax_pearloptions_topofmarket_mach_v2_3.event_reason.display = function(value)
  return miax_pearloptions_topofmarket_mach_v2_3.event_reason.labels[value] or "Event Reason: Unknown("..value..")"
end

-- Dissect: Event Reason
miax_pearloptions_topofmarket_mach_v2_3.event_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.event_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v2_3.event_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.event_reason, range, value, display)

  return offset + length, value
end

-- Expected Event Time Nano Seconds
miax_pearloptions_topofmarket_mach_v2_3.expected_event_time_nano_seconds = {}

-- Size: Expected Event Time Nano Seconds
miax_pearloptions_topofmarket_mach_v2_3.expected_event_time_nano_seconds.size = 4

-- Display: Expected Event Time Nano Seconds
miax_pearloptions_topofmarket_mach_v2_3.expected_event_time_nano_seconds.display = function(value)
  return "Expected Event Time Nano Seconds: "..value
end

-- Dissect: Expected Event Time Nano Seconds
miax_pearloptions_topofmarket_mach_v2_3.expected_event_time_nano_seconds.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.expected_event_time_nano_seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v2_3.expected_event_time_nano_seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.expected_event_time_nano_seconds, range, value, display)

  return offset + length, value
end

-- Expected Event Time Seconds
miax_pearloptions_topofmarket_mach_v2_3.expected_event_time_seconds = {}

-- Size: Expected Event Time Seconds
miax_pearloptions_topofmarket_mach_v2_3.expected_event_time_seconds.size = 4

-- Display: Expected Event Time Seconds
miax_pearloptions_topofmarket_mach_v2_3.expected_event_time_seconds.display = function(value)
  return "Expected Event Time Seconds: "..value
end

-- Dissect: Expected Event Time Seconds
miax_pearloptions_topofmarket_mach_v2_3.expected_event_time_seconds.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.expected_event_time_seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v2_3.expected_event_time_seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.expected_event_time_seconds, range, value, display)

  return offset + length, value
end

-- Expiration Date
miax_pearloptions_topofmarket_mach_v2_3.expiration_date = {}

-- Size: Expiration Date
miax_pearloptions_topofmarket_mach_v2_3.expiration_date.size = 8

-- Display: Expiration Date
miax_pearloptions_topofmarket_mach_v2_3.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
miax_pearloptions_topofmarket_mach_v2_3.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.expiration_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_topofmarket_mach_v2_3.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Liquidity Acceptance Increment Indicator
miax_pearloptions_topofmarket_mach_v2_3.liquidity_acceptance_increment_indicator = {}

-- Size: Liquidity Acceptance Increment Indicator
miax_pearloptions_topofmarket_mach_v2_3.liquidity_acceptance_increment_indicator.size = 1

-- Display: Liquidity Acceptance Increment Indicator
miax_pearloptions_topofmarket_mach_v2_3.liquidity_acceptance_increment_indicator.labels = {
  ["P"] = "Liquidity Acceptance Increment Indicator: Penny (P)",
  ["N"] = "Liquidity Acceptance Increment Indicator: Penny Or Nickel (N)",
  ["D"] = "Liquidity Acceptance Increment Indicator: Nickel Or Dime (D)",
}

miax_pearloptions_topofmarket_mach_v2_3.liquidity_acceptance_increment_indicator.display = function(value)
  return miax_pearloptions_topofmarket_mach_v2_3.liquidity_acceptance_increment_indicator.labels[value] or "Liquidity Acceptance Increment Indicator: Unknown("..value..")"
end

-- Dissect: Liquidity Acceptance Increment Indicator
miax_pearloptions_topofmarket_mach_v2_3.liquidity_acceptance_increment_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.liquidity_acceptance_increment_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v2_3.liquidity_acceptance_increment_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.liquidity_acceptance_increment_indicator, range, value, display)

  return offset + length, value
end

-- Long Term Option
miax_pearloptions_topofmarket_mach_v2_3.long_term_option = {}

-- Size: Long Term Option
miax_pearloptions_topofmarket_mach_v2_3.long_term_option.size = 1

-- Display: Long Term Option
miax_pearloptions_topofmarket_mach_v2_3.long_term_option.labels = {
  ["Y"] = "Long Term Option: Far Month Expiration (Y)",
  ["N"] = "Long Term Option: Near Month Expiration (N)",
}

miax_pearloptions_topofmarket_mach_v2_3.long_term_option.display = function(value)
  return miax_pearloptions_topofmarket_mach_v2_3.long_term_option.labels[value] or "Long Term Option: Unknown("..value..")"
end

-- Dissect: Long Term Option
miax_pearloptions_topofmarket_mach_v2_3.long_term_option.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.long_term_option.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v2_3.long_term_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.long_term_option, range, value, display)

  return offset + length, value
end

-- Mbbo Condition
miax_pearloptions_topofmarket_mach_v2_3.mbbo_condition = {}

-- Size: Mbbo Condition
miax_pearloptions_topofmarket_mach_v2_3.mbbo_condition.size = 1

-- Display: Mbbo Condition
miax_pearloptions_topofmarket_mach_v2_3.mbbo_condition.labels = {
  ["A"] = "Mbbo Condition: Regular (A)",
  ["B"] = "Mbbo Condition: Public Customer Interest (B)",
  ["C"] = "Mbbo Condition: Not Firm (C)",
  ["R"] = "Mbbo Condition: Reserved (R)",
  ["T"] = "Mbbo Condition: Trading Halt (T)",
}

miax_pearloptions_topofmarket_mach_v2_3.mbbo_condition.display = function(value)
  return miax_pearloptions_topofmarket_mach_v2_3.mbbo_condition.labels[value] or "Mbbo Condition: Unknown("..value..")"
end

-- Dissect: Mbbo Condition
miax_pearloptions_topofmarket_mach_v2_3.mbbo_condition.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.mbbo_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v2_3.mbbo_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.mbbo_condition, range, value, display)

  return offset + length, value
end

-- Mbbo Price 2
miax_pearloptions_topofmarket_mach_v2_3.mbbo_price_2 = {}

-- Size: Mbbo Price 2
miax_pearloptions_topofmarket_mach_v2_3.mbbo_price_2.size = 2

-- Display: Mbbo Price 2
miax_pearloptions_topofmarket_mach_v2_3.mbbo_price_2.display = function(value)
  return "Mbbo Price 2: "..value
end

-- Translate: Mbbo Price 2
miax_pearloptions_topofmarket_mach_v2_3.mbbo_price_2.translate = function(raw)
  return raw/100
end

-- Dissect: Mbbo Price 2
miax_pearloptions_topofmarket_mach_v2_3.mbbo_price_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.mbbo_price_2.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_pearloptions_topofmarket_mach_v2_3.mbbo_price_2.translate(raw)
  local display = miax_pearloptions_topofmarket_mach_v2_3.mbbo_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.mbbo_price_2, range, value, display)

  return offset + length, value
end

-- Mbbo Price 4
miax_pearloptions_topofmarket_mach_v2_3.mbbo_price_4 = {}

-- Size: Mbbo Price 4
miax_pearloptions_topofmarket_mach_v2_3.mbbo_price_4.size = 4

-- Display: Mbbo Price 4
miax_pearloptions_topofmarket_mach_v2_3.mbbo_price_4.display = function(value)
  return "Mbbo Price 4: "..value
end

-- Translate: Mbbo Price 4
miax_pearloptions_topofmarket_mach_v2_3.mbbo_price_4.translate = function(raw)
  return raw/10000
end

-- Dissect: Mbbo Price 4
miax_pearloptions_topofmarket_mach_v2_3.mbbo_price_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.mbbo_price_4.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_pearloptions_topofmarket_mach_v2_3.mbbo_price_4.translate(raw)
  local display = miax_pearloptions_topofmarket_mach_v2_3.mbbo_price_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.mbbo_price_4, range, value, display)

  return offset + length, value
end

-- Mbbo Priority Customer Size 2
miax_pearloptions_topofmarket_mach_v2_3.mbbo_priority_customer_size_2 = {}

-- Size: Mbbo Priority Customer Size 2
miax_pearloptions_topofmarket_mach_v2_3.mbbo_priority_customer_size_2.size = 2

-- Display: Mbbo Priority Customer Size 2
miax_pearloptions_topofmarket_mach_v2_3.mbbo_priority_customer_size_2.display = function(value)
  return "Mbbo Priority Customer Size 2: "..value
end

-- Dissect: Mbbo Priority Customer Size 2
miax_pearloptions_topofmarket_mach_v2_3.mbbo_priority_customer_size_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.mbbo_priority_customer_size_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v2_3.mbbo_priority_customer_size_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.mbbo_priority_customer_size_2, range, value, display)

  return offset + length, value
end

-- Mbbo Priority Customer Size 4
miax_pearloptions_topofmarket_mach_v2_3.mbbo_priority_customer_size_4 = {}

-- Size: Mbbo Priority Customer Size 4
miax_pearloptions_topofmarket_mach_v2_3.mbbo_priority_customer_size_4.size = 4

-- Display: Mbbo Priority Customer Size 4
miax_pearloptions_topofmarket_mach_v2_3.mbbo_priority_customer_size_4.display = function(value)
  return "Mbbo Priority Customer Size 4: "..value
end

-- Dissect: Mbbo Priority Customer Size 4
miax_pearloptions_topofmarket_mach_v2_3.mbbo_priority_customer_size_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.mbbo_priority_customer_size_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v2_3.mbbo_priority_customer_size_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.mbbo_priority_customer_size_4, range, value, display)

  return offset + length, value
end

-- Mbbo Size 2
miax_pearloptions_topofmarket_mach_v2_3.mbbo_size_2 = {}

-- Size: Mbbo Size 2
miax_pearloptions_topofmarket_mach_v2_3.mbbo_size_2.size = 2

-- Display: Mbbo Size 2
miax_pearloptions_topofmarket_mach_v2_3.mbbo_size_2.display = function(value)
  return "Mbbo Size 2: "..value
end

-- Dissect: Mbbo Size 2
miax_pearloptions_topofmarket_mach_v2_3.mbbo_size_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.mbbo_size_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v2_3.mbbo_size_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.mbbo_size_2, range, value, display)

  return offset + length, value
end

-- Mbbo Size 4
miax_pearloptions_topofmarket_mach_v2_3.mbbo_size_4 = {}

-- Size: Mbbo Size 4
miax_pearloptions_topofmarket_mach_v2_3.mbbo_size_4.size = 4

-- Display: Mbbo Size 4
miax_pearloptions_topofmarket_mach_v2_3.mbbo_size_4.display = function(value)
  return "Mbbo Size 4: "..value
end

-- Dissect: Mbbo Size 4
miax_pearloptions_topofmarket_mach_v2_3.mbbo_size_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.mbbo_size_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v2_3.mbbo_size_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.mbbo_size_4, range, value, display)

  return offset + length, value
end

-- Message Type
miax_pearloptions_topofmarket_mach_v2_3.message_type = {}

-- Size: Message Type
miax_pearloptions_topofmarket_mach_v2_3.message_type.size = 1

-- Display: Message Type
miax_pearloptions_topofmarket_mach_v2_3.message_type.labels = {
  ["1"] = "Message Type: System Time Message (1)",
  ["P"] = "Message Type: Simple Series Update Message (P)",
  ["S"] = "Message Type: System State Message (S)",
  ["B"] = "Message Type: Simple Top Of Market Bid Compact Message (B)",
  ["O"] = "Message Type: Simple Top Of Market Offer Compact Message (O)",
  ["W"] = "Message Type: Simple Top Of Market Bid Wide Message (W)",
  ["A"] = "Message Type: Simple Top Of Market Offer Wide Message (A)",
  ["d"] = "Message Type: Simple Double Sided Top Of Market Compact Message (d)",
  ["D"] = "Message Type: Simple Double Sided Top Of Market Wide Message (D)",
  ["T"] = "Message Type: Last Sale Message (T)",
  ["X"] = "Message Type: Trade Cancel Message (X)",
  ["H"] = "Message Type: Underlying Trading Status Notification Message (H)",
}

miax_pearloptions_topofmarket_mach_v2_3.message_type.display = function(value)
  return miax_pearloptions_topofmarket_mach_v2_3.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
miax_pearloptions_topofmarket_mach_v2_3.message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v2_3.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.message_type, range, value, display)

  return offset + length, value
end

-- Miax Bbo Posting Increment Indicator
miax_pearloptions_topofmarket_mach_v2_3.miax_bbo_posting_increment_indicator = {}

-- Size: Miax Bbo Posting Increment Indicator
miax_pearloptions_topofmarket_mach_v2_3.miax_bbo_posting_increment_indicator.size = 1

-- Display: Miax Bbo Posting Increment Indicator
miax_pearloptions_topofmarket_mach_v2_3.miax_bbo_posting_increment_indicator.labels = {
  ["P"] = "Miax Bbo Posting Increment Indicator: Penny (P)",
  ["N"] = "Miax Bbo Posting Increment Indicator: Penny Or Nickel (N)",
  ["D"] = "Miax Bbo Posting Increment Indicator: Nickel Or Dime (D)",
}

miax_pearloptions_topofmarket_mach_v2_3.miax_bbo_posting_increment_indicator.display = function(value)
  return miax_pearloptions_topofmarket_mach_v2_3.miax_bbo_posting_increment_indicator.labels[value] or "Miax Bbo Posting Increment Indicator: Unknown("..value..")"
end

-- Dissect: Miax Bbo Posting Increment Indicator
miax_pearloptions_topofmarket_mach_v2_3.miax_bbo_posting_increment_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.miax_bbo_posting_increment_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v2_3.miax_bbo_posting_increment_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.miax_bbo_posting_increment_indicator, range, value, display)

  return offset + length, value
end

-- Nanoseconds
miax_pearloptions_topofmarket_mach_v2_3.nanoseconds = {}

-- Size: Nanoseconds
miax_pearloptions_topofmarket_mach_v2_3.nanoseconds.size = 4

-- Display: Nanoseconds
miax_pearloptions_topofmarket_mach_v2_3.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
miax_pearloptions_topofmarket_mach_v2_3.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v2_3.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Offer Condition
miax_pearloptions_topofmarket_mach_v2_3.offer_condition = {}

-- Size: Offer Condition
miax_pearloptions_topofmarket_mach_v2_3.offer_condition.size = 1

-- Display: Offer Condition
miax_pearloptions_topofmarket_mach_v2_3.offer_condition.labels = {
  ["A"] = "Offer Condition: Regular (A)",
  ["B"] = "Offer Condition: Public Customer Interest (B)",
  ["C"] = "Offer Condition: Not Firm (C)",
  ["R"] = "Offer Condition: Reserved (R)",
  ["T"] = "Offer Condition: Trading Halt (T)",
}

miax_pearloptions_topofmarket_mach_v2_3.offer_condition.display = function(value)
  return miax_pearloptions_topofmarket_mach_v2_3.offer_condition.labels[value] or "Offer Condition: Unknown("..value..")"
end

-- Dissect: Offer Condition
miax_pearloptions_topofmarket_mach_v2_3.offer_condition.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.offer_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v2_3.offer_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.offer_condition, range, value, display)

  return offset + length, value
end

-- Offer Price 2
miax_pearloptions_topofmarket_mach_v2_3.offer_price_2 = {}

-- Size: Offer Price 2
miax_pearloptions_topofmarket_mach_v2_3.offer_price_2.size = 2

-- Display: Offer Price 2
miax_pearloptions_topofmarket_mach_v2_3.offer_price_2.display = function(value)
  return "Offer Price 2: "..value
end

-- Translate: Offer Price 2
miax_pearloptions_topofmarket_mach_v2_3.offer_price_2.translate = function(raw)
  return raw/100
end

-- Dissect: Offer Price 2
miax_pearloptions_topofmarket_mach_v2_3.offer_price_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.offer_price_2.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_pearloptions_topofmarket_mach_v2_3.offer_price_2.translate(raw)
  local display = miax_pearloptions_topofmarket_mach_v2_3.offer_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.offer_price_2, range, value, display)

  return offset + length, value
end

-- Offer Price 4
miax_pearloptions_topofmarket_mach_v2_3.offer_price_4 = {}

-- Size: Offer Price 4
miax_pearloptions_topofmarket_mach_v2_3.offer_price_4.size = 4

-- Display: Offer Price 4
miax_pearloptions_topofmarket_mach_v2_3.offer_price_4.display = function(value)
  return "Offer Price 4: "..value
end

-- Translate: Offer Price 4
miax_pearloptions_topofmarket_mach_v2_3.offer_price_4.translate = function(raw)
  return raw/10000
end

-- Dissect: Offer Price 4
miax_pearloptions_topofmarket_mach_v2_3.offer_price_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.offer_price_4.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_pearloptions_topofmarket_mach_v2_3.offer_price_4.translate(raw)
  local display = miax_pearloptions_topofmarket_mach_v2_3.offer_price_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.offer_price_4, range, value, display)

  return offset + length, value
end

-- Offer Priority Customer Size 2
miax_pearloptions_topofmarket_mach_v2_3.offer_priority_customer_size_2 = {}

-- Size: Offer Priority Customer Size 2
miax_pearloptions_topofmarket_mach_v2_3.offer_priority_customer_size_2.size = 2

-- Display: Offer Priority Customer Size 2
miax_pearloptions_topofmarket_mach_v2_3.offer_priority_customer_size_2.display = function(value)
  return "Offer Priority Customer Size 2: "..value
end

-- Dissect: Offer Priority Customer Size 2
miax_pearloptions_topofmarket_mach_v2_3.offer_priority_customer_size_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.offer_priority_customer_size_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v2_3.offer_priority_customer_size_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.offer_priority_customer_size_2, range, value, display)

  return offset + length, value
end

-- Offer Priority Customer Size 4
miax_pearloptions_topofmarket_mach_v2_3.offer_priority_customer_size_4 = {}

-- Size: Offer Priority Customer Size 4
miax_pearloptions_topofmarket_mach_v2_3.offer_priority_customer_size_4.size = 4

-- Display: Offer Priority Customer Size 4
miax_pearloptions_topofmarket_mach_v2_3.offer_priority_customer_size_4.display = function(value)
  return "Offer Priority Customer Size 4: "..value
end

-- Dissect: Offer Priority Customer Size 4
miax_pearloptions_topofmarket_mach_v2_3.offer_priority_customer_size_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.offer_priority_customer_size_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v2_3.offer_priority_customer_size_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.offer_priority_customer_size_4, range, value, display)

  return offset + length, value
end

-- Offer Size 2
miax_pearloptions_topofmarket_mach_v2_3.offer_size_2 = {}

-- Size: Offer Size 2
miax_pearloptions_topofmarket_mach_v2_3.offer_size_2.size = 2

-- Display: Offer Size 2
miax_pearloptions_topofmarket_mach_v2_3.offer_size_2.display = function(value)
  return "Offer Size 2: "..value
end

-- Dissect: Offer Size 2
miax_pearloptions_topofmarket_mach_v2_3.offer_size_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.offer_size_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v2_3.offer_size_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.offer_size_2, range, value, display)

  return offset + length, value
end

-- Offer Size 4
miax_pearloptions_topofmarket_mach_v2_3.offer_size_4 = {}

-- Size: Offer Size 4
miax_pearloptions_topofmarket_mach_v2_3.offer_size_4.size = 4

-- Display: Offer Size 4
miax_pearloptions_topofmarket_mach_v2_3.offer_size_4.display = function(value)
  return "Offer Size 4: "..value
end

-- Dissect: Offer Size 4
miax_pearloptions_topofmarket_mach_v2_3.offer_size_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.offer_size_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v2_3.offer_size_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.offer_size_4, range, value, display)

  return offset + length, value
end

-- Opening Time
miax_pearloptions_topofmarket_mach_v2_3.opening_time = {}

-- Size: Opening Time
miax_pearloptions_topofmarket_mach_v2_3.opening_time.size = 8

-- Display: Opening Time
miax_pearloptions_topofmarket_mach_v2_3.opening_time.display = function(value)
  return "Opening Time: "..value
end

-- Dissect: Opening Time
miax_pearloptions_topofmarket_mach_v2_3.opening_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.opening_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_topofmarket_mach_v2_3.opening_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.opening_time, range, value, display)

  return offset + length, value
end

-- Opening Underlying Market Code
miax_pearloptions_topofmarket_mach_v2_3.opening_underlying_market_code = {}

-- Size: Opening Underlying Market Code
miax_pearloptions_topofmarket_mach_v2_3.opening_underlying_market_code.size = 1

-- Display: Opening Underlying Market Code
miax_pearloptions_topofmarket_mach_v2_3.opening_underlying_market_code.labels = {
  ["A"] = "Opening Underlying Market Code: Nyse Amex (A)",
  ["B"] = "Opening Underlying Market Code: Nasdaq Omx Bx (B)",
  ["C"] = "Opening Underlying Market Code: Nse (C)",
  ["D"] = "Opening Underlying Market Code: Finra Adf (D)",
  ["E"] = "Opening Underlying Market Code: Market Independent (E)",
  ["I"] = "Opening Underlying Market Code: Ise (I)",
  ["J"] = "Opening Underlying Market Code: Edga (J)",
  ["K"] = "Opening Underlying Market Code: Edgx (K)",
  ["M"] = "Opening Underlying Market Code: Cse (M)",
  ["N"] = "Opening Underlying Market Code: Nyse Euronext (N)",
  ["P"] = "Opening Underlying Market Code: Nyse Arca (P)",
  ["Q"] = "Opening Underlying Market Code: Nasdaq Omx Utp (Q)",
  ["T"] = "Opening Underlying Market Code: Nasdaq Omx Cta (T)",
  ["V"] = "Opening Underlying Market Code: Iex (V)",
  ["X"] = "Opening Underlying Market Code: Nasdaq Omx Phlx (X)",
  ["Y"] = "Opening Underlying Market Code: Bats Y (Y)",
  ["Z"] = "Opening Underlying Market Code: Bats (Z)",
}

miax_pearloptions_topofmarket_mach_v2_3.opening_underlying_market_code.display = function(value)
  return miax_pearloptions_topofmarket_mach_v2_3.opening_underlying_market_code.labels[value] or "Opening Underlying Market Code: Unknown("..value..")"
end

-- Dissect: Opening Underlying Market Code
miax_pearloptions_topofmarket_mach_v2_3.opening_underlying_market_code.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.opening_underlying_market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v2_3.opening_underlying_market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.opening_underlying_market_code, range, value, display)

  return offset + length, value
end

-- Packet Length
miax_pearloptions_topofmarket_mach_v2_3.packet_length = {}

-- Size: Packet Length
miax_pearloptions_topofmarket_mach_v2_3.packet_length.size = 2

-- Display: Packet Length
miax_pearloptions_topofmarket_mach_v2_3.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
miax_pearloptions_topofmarket_mach_v2_3.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v2_3.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Type
miax_pearloptions_topofmarket_mach_v2_3.packet_type = {}

-- Size: Packet Type
miax_pearloptions_topofmarket_mach_v2_3.packet_type.size = 1

-- Display: Packet Type
miax_pearloptions_topofmarket_mach_v2_3.packet_type.labels = {
  [0] = "Packet Type: Heartbeat (0)",
  [1] = "Packet Type: Start Of Session (1)",
  [2] = "Packet Type: End Of Session (2)",
  [3] = "Packet Type: Application Message (3)",
}

miax_pearloptions_topofmarket_mach_v2_3.packet_type.display = function(value)
  return miax_pearloptions_topofmarket_mach_v2_3.packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
miax_pearloptions_topofmarket_mach_v2_3.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.packet_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v2_3.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Priority Quote Width
miax_pearloptions_topofmarket_mach_v2_3.priority_quote_width = {}

-- Size: Priority Quote Width
miax_pearloptions_topofmarket_mach_v2_3.priority_quote_width.size = 4

-- Display: Priority Quote Width
miax_pearloptions_topofmarket_mach_v2_3.priority_quote_width.display = function(value)
  return "Priority Quote Width: "..value
end

-- Translate: Priority Quote Width
miax_pearloptions_topofmarket_mach_v2_3.priority_quote_width.translate = function(raw)
  return raw/10000
end

-- Dissect: Priority Quote Width
miax_pearloptions_topofmarket_mach_v2_3.priority_quote_width.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.priority_quote_width.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_pearloptions_topofmarket_mach_v2_3.priority_quote_width.translate(raw)
  local display = miax_pearloptions_topofmarket_mach_v2_3.priority_quote_width.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.priority_quote_width, range, value, display)

  return offset + length, value
end

-- Product Id
miax_pearloptions_topofmarket_mach_v2_3.product_id = {}

-- Size: Product Id
miax_pearloptions_topofmarket_mach_v2_3.product_id.size = 4

-- Display: Product Id
miax_pearloptions_topofmarket_mach_v2_3.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
miax_pearloptions_topofmarket_mach_v2_3.product_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v2_3.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.product_id, range, value, display)

  return offset + length, value
end

-- Reference Correction Number
miax_pearloptions_topofmarket_mach_v2_3.reference_correction_number = {}

-- Size: Reference Correction Number
miax_pearloptions_topofmarket_mach_v2_3.reference_correction_number.size = 1

-- Display: Reference Correction Number
miax_pearloptions_topofmarket_mach_v2_3.reference_correction_number.display = function(value)
  return "Reference Correction Number: "..value
end

-- Dissect: Reference Correction Number
miax_pearloptions_topofmarket_mach_v2_3.reference_correction_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.reference_correction_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v2_3.reference_correction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.reference_correction_number, range, value, display)

  return offset + length, value
end

-- Reference Trade Id
miax_pearloptions_topofmarket_mach_v2_3.reference_trade_id = {}

-- Size: Reference Trade Id
miax_pearloptions_topofmarket_mach_v2_3.reference_trade_id.size = 4

-- Display: Reference Trade Id
miax_pearloptions_topofmarket_mach_v2_3.reference_trade_id.display = function(value)
  return "Reference Trade Id: "..value
end

-- Dissect: Reference Trade Id
miax_pearloptions_topofmarket_mach_v2_3.reference_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.reference_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v2_3.reference_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.reference_trade_id, range, value, display)

  return offset + length, value
end

-- Reserved 8
miax_pearloptions_topofmarket_mach_v2_3.reserved_8 = {}

-- Size: Reserved 8
miax_pearloptions_topofmarket_mach_v2_3.reserved_8.size = 8

-- Display: Reserved 8
miax_pearloptions_topofmarket_mach_v2_3.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
miax_pearloptions_topofmarket_mach_v2_3.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_pearloptions_topofmarket_mach_v2_3.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Restricted Option
miax_pearloptions_topofmarket_mach_v2_3.restricted_option = {}

-- Size: Restricted Option
miax_pearloptions_topofmarket_mach_v2_3.restricted_option.size = 1

-- Display: Restricted Option
miax_pearloptions_topofmarket_mach_v2_3.restricted_option.labels = {
  ["Y"] = "Restricted Option: Accept Position Closing (Y)",
  ["N"] = "Restricted Option: Accept Open And Close (N)",
}

miax_pearloptions_topofmarket_mach_v2_3.restricted_option.display = function(value)
  return miax_pearloptions_topofmarket_mach_v2_3.restricted_option.labels[value] or "Restricted Option: Unknown("..value..")"
end

-- Dissect: Restricted Option
miax_pearloptions_topofmarket_mach_v2_3.restricted_option.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.restricted_option.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v2_3.restricted_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.restricted_option, range, value, display)

  return offset + length, value
end

-- Seconds
miax_pearloptions_topofmarket_mach_v2_3.seconds = {}

-- Size: Seconds
miax_pearloptions_topofmarket_mach_v2_3.seconds.size = 4

-- Store: Seconds
miax_pearloptions_topofmarket_mach_v2_3.seconds.current = nil

-- Generated: Seconds
miax_pearloptions_topofmarket_mach_v2_3.seconds.generated = function(value, range, packet, parent)
  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_miax_pearloptions_topofmarket_mach_v2_3.fields.seconds
  if miax_pearloptions_topofmarket_mach_v2_3.absolute_time_base == 1 then field = omi_miax_pearloptions_topofmarket_mach_v2_3.fields.seconds_utc end
  local seconds = parent:add(field, range, NSTime.new(value, 0))
  seconds:set_generated()
end

-- Dissect: Seconds
miax_pearloptions_topofmarket_mach_v2_3.seconds.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_miax_pearloptions_topofmarket_mach_v2_3.fields.seconds
  if miax_pearloptions_topofmarket_mach_v2_3.absolute_time_base == 1 then field = omi_miax_pearloptions_topofmarket_mach_v2_3.fields.seconds_utc end

  local seconds = value
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Security Symbol
miax_pearloptions_topofmarket_mach_v2_3.security_symbol = {}

-- Size: Security Symbol
miax_pearloptions_topofmarket_mach_v2_3.security_symbol.size = 6

-- Display: Security Symbol
miax_pearloptions_topofmarket_mach_v2_3.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
miax_pearloptions_topofmarket_mach_v2_3.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_topofmarket_mach_v2_3.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sequence Number
miax_pearloptions_topofmarket_mach_v2_3.sequence_number = {}

-- Size: Sequence Number
miax_pearloptions_topofmarket_mach_v2_3.sequence_number.size = 8

-- Display: Sequence Number
miax_pearloptions_topofmarket_mach_v2_3.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_pearloptions_topofmarket_mach_v2_3.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearloptions_topofmarket_mach_v2_3.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Id
miax_pearloptions_topofmarket_mach_v2_3.session_id = {}

-- Size: Session Id
miax_pearloptions_topofmarket_mach_v2_3.session_id.size = 4

-- Display: Session Id
miax_pearloptions_topofmarket_mach_v2_3.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_pearloptions_topofmarket_mach_v2_3.session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v2_3.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.session_id, range, value, display)

  return offset + length, value
end

-- Session Number
miax_pearloptions_topofmarket_mach_v2_3.session_number = {}

-- Size: Session Number
miax_pearloptions_topofmarket_mach_v2_3.session_number.size = 1

-- Display: Session Number
miax_pearloptions_topofmarket_mach_v2_3.session_number.display = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
miax_pearloptions_topofmarket_mach_v2_3.session_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.session_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v2_3.session_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.session_number, range, value, display)

  return offset + length, value
end

-- Strike Price
miax_pearloptions_topofmarket_mach_v2_3.strike_price = {}

-- Size: Strike Price
miax_pearloptions_topofmarket_mach_v2_3.strike_price.size = 4

-- Display: Strike Price
miax_pearloptions_topofmarket_mach_v2_3.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
miax_pearloptions_topofmarket_mach_v2_3.strike_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Strike Price
miax_pearloptions_topofmarket_mach_v2_3.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_pearloptions_topofmarket_mach_v2_3.strike_price.translate(raw)
  local display = miax_pearloptions_topofmarket_mach_v2_3.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.strike_price, range, value, display)

  return offset + length, value
end

-- System Status
miax_pearloptions_topofmarket_mach_v2_3.system_status = {}

-- Size: System Status
miax_pearloptions_topofmarket_mach_v2_3.system_status.size = 1

-- Display: System Status
miax_pearloptions_topofmarket_mach_v2_3.system_status.labels = {
  ["S"] = "System Status: Start Of System Hours (S)",
  ["C"] = "System Status: End Of System Hours (C)",
  ["1"] = "System Status: Start Test Session (1)",
  ["2"] = "System Status: End Of Test Session (2)",
}

miax_pearloptions_topofmarket_mach_v2_3.system_status.display = function(value)
  return miax_pearloptions_topofmarket_mach_v2_3.system_status.labels[value] or "System Status: Unknown("..value..")"
end

-- Dissect: System Status
miax_pearloptions_topofmarket_mach_v2_3.system_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.system_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v2_3.system_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.system_status, range, value, display)

  return offset + length, value
end

-- To M Version
miax_pearloptions_topofmarket_mach_v2_3.to_m_version = {}

-- Size: To M Version
miax_pearloptions_topofmarket_mach_v2_3.to_m_version.size = 8

-- Display: To M Version
miax_pearloptions_topofmarket_mach_v2_3.to_m_version.display = function(value)
  return "To M Version: "..value
end

-- Dissect: To M Version
miax_pearloptions_topofmarket_mach_v2_3.to_m_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.to_m_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_topofmarket_mach_v2_3.to_m_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.to_m_version, range, value, display)

  return offset + length, value
end

-- Trade Condition
miax_pearloptions_topofmarket_mach_v2_3.trade_condition = {}

-- Size: Trade Condition
miax_pearloptions_topofmarket_mach_v2_3.trade_condition.size = 1

-- Display: Trade Condition
miax_pearloptions_topofmarket_mach_v2_3.trade_condition.display = function(value)
  if value == " " then
    return "Trade Condition: Regular (<whitespace>)"
  end
  if value == "A" then
    return "Trade Condition: Cancel Of Trade Previously Reported Other Than As The Last Or Opening (A)"
  end
  if value == "B" then
    return "Trade Condition: Late And Is Out Of Sequence (B)"
  end
  if value == "C" then
    return "Trade Condition: Cancel Of The Last Reported Trade (C)"
  end
  if value == "D" then
    return "Trade Condition: Late And Is In Correct Sequence (D)"
  end
  if value == "E" then
    return "Trade Condition: Cancel Of The First Reported Trade (E)"
  end
  if value == "F" then
    return "Trade Condition: Late Report Of The Opening Trade And Is Out Of Sequence (F)"
  end
  if value == "G" then
    return "Trade Condition: Cancel Of The Only Reported Trade (G)"
  end
  if value == "H" then
    return "Trade Condition: Late Report Of The Opening Trade And Is In Correct Sequence (H)"
  end
  if value == "I" then
    return "Trade Condition: Reserved (I)"
  end
  if value == "J" then
    return "Trade Condition: Reopening Of An Option (J)"
  end
  if value == "K" then
    return "Trade Condition: Reserved (K)"
  end
  if value == "L" then
    return "Trade Condition: A Buy And A Sell In The Same Class (L)"
  end
  if value == "M" then
    return "Trade Condition: A Buy And A Sell In A Put And A Call (M)"
  end
  if value == "N" then
    return "Trade Condition: Reserved (N)"
  end
  if value == "O" then
    return "Trade Condition: Reserved (O)"
  end
  if value == "P" then
    return "Trade Condition: Buy Or Sell Of A Call Or Put (P)"
  end
  if value == "Q" then
    return "Trade Condition: Buy Of A Call And A Sell Of A Put For The Same Underlying Stock Or Index (Q)"
  end
  if value == "R" then
    return "Trade Condition: Execution Of An Order Which Was Stopped At A Price That Did Not Constitute A Trade Through On Another Market At The Time Of The Stop (R)"
  end
  if value == "S" then
    return "Trade Condition: Execution Of An Iso Order (S)"
  end
  if value == "T" then
    return "Trade Condition: Reserved (T)"
  end
  if value == "X" then
    return "Trade Condition: Trade Through Exempt (X)"
  end
  if value == "a" then
    return "Trade Condition: Paired Prime (a)"
  end
  if value == "b" then
    return "Trade Condition: Reserved (b)"
  end
  if value == "c" then
    return "Trade Condition: Prime Customer To Customer Cross Or Prime Qcc (c)"
  end
  if value == "d" then
    return "Trade Condition: Reserved (d)"
  end
  if value == "e" then
    return "Trade Condition: Reserved (e)"
  end
  if value == "f" then
    return "Trade Condition: Complex Transaction That Is Not Complex Stocktied And Does Not Involve Legging (f)"
  end
  if value == "g" then
    return "Trade Condition: Complex Prime Transaction That Is Not Complex Stocktied And Does Not Involve Legging (g)"
  end
  if value == "h" then
    return "Trade Condition: Complex Prime Customer To Customer Cross Or Complex Prime Qcc Transaction That Is Not Complex Stocktied (h)"
  end
  if value == "i" then
    return "Trade Condition: Reserved (i)"
  end
  if value == "j" then
    return "Trade Condition: Complex Legging Transaction That Is Not Complex Stocktied (j)"
  end
  if value == "k" then
    return "Trade Condition: Complex Prime Stocktied Transaction That Does Not Involve Legging (k)"
  end
  if value == "l" then
    return "Trade Condition: Complex Prime Legging Transaction That Is Not Complex Stocktied (l)"
  end
  if value == "m" then
    return "Trade Condition: Reserved (m)"
  end
  if value == "n" then
    return "Trade Condition: Complex Stocktied Transaction That Does Not Involve Legging (n)"
  end
  if value == "o" then
    return "Trade Condition: Complex Customer To Customer Cross Stocktied Or Complex Qcc Stocktied Transaction (o)"
  end
  if value == "p" then
    return "Trade Condition: Reserved (p)"
  end
  if value == "q" then
    return "Trade Condition: Reserved (q)"
  end
  if value == "r" then
    return "Trade Condition: Reserved (r)"
  end
  if value == "s" then
    return "Trade Condition: Reserved (s)"
  end
  if value == "t" then
    return "Trade Condition: Reserved (t)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
miax_pearloptions_topofmarket_mach_v2_3.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v2_3.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trade Id
miax_pearloptions_topofmarket_mach_v2_3.trade_id = {}

-- Size: Trade Id
miax_pearloptions_topofmarket_mach_v2_3.trade_id.size = 4

-- Display: Trade Id
miax_pearloptions_topofmarket_mach_v2_3.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
miax_pearloptions_topofmarket_mach_v2_3.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v2_3.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Price
miax_pearloptions_topofmarket_mach_v2_3.trade_price = {}

-- Size: Trade Price
miax_pearloptions_topofmarket_mach_v2_3.trade_price.size = 4

-- Display: Trade Price
miax_pearloptions_topofmarket_mach_v2_3.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
miax_pearloptions_topofmarket_mach_v2_3.trade_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Trade Price
miax_pearloptions_topofmarket_mach_v2_3.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.trade_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_pearloptions_topofmarket_mach_v2_3.trade_price.translate(raw)
  local display = miax_pearloptions_topofmarket_mach_v2_3.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Size
miax_pearloptions_topofmarket_mach_v2_3.trade_size = {}

-- Size: Trade Size
miax_pearloptions_topofmarket_mach_v2_3.trade_size.size = 4

-- Display: Trade Size
miax_pearloptions_topofmarket_mach_v2_3.trade_size.display = function(value)
  return "Trade Size: "..value
end

-- Dissect: Trade Size
miax_pearloptions_topofmarket_mach_v2_3.trade_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.trade_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v2_3.trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.trade_size, range, value, display)

  return offset + length, value
end

-- Trading Status
miax_pearloptions_topofmarket_mach_v2_3.trading_status = {}

-- Size: Trading Status
miax_pearloptions_topofmarket_mach_v2_3.trading_status.size = 1

-- Display: Trading Status
miax_pearloptions_topofmarket_mach_v2_3.trading_status.labels = {
  ["H"] = "Trading Status: Halted (H)",
  ["R"] = "Trading Status: Resumed (R)",
  ["O"] = "Trading Status: Opened (O)",
}

miax_pearloptions_topofmarket_mach_v2_3.trading_status.display = function(value)
  return miax_pearloptions_topofmarket_mach_v2_3.trading_status.labels[value] or "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
miax_pearloptions_topofmarket_mach_v2_3.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v2_3.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
miax_pearloptions_topofmarket_mach_v2_3.underlying_symbol = {}

-- Size: Underlying Symbol
miax_pearloptions_topofmarket_mach_v2_3.underlying_symbol.size = 11

-- Display: Underlying Symbol
miax_pearloptions_topofmarket_mach_v2_3.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
miax_pearloptions_topofmarket_mach_v2_3.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_topofmarket_mach_v2_3.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Timestamp
miax_pearloptions_topofmarket_mach_v2_3.timestamp = {}

-- Translate: Timestamp
miax_pearloptions_topofmarket_mach_v2_3.timestamp.translate = function(nanoseconds, stored_seconds)
  return UInt64.new(stored_seconds * 1000000000 + nanoseconds)
end

-- Display: Timestamp
miax_pearloptions_topofmarket_mach_v2_3.timestamp.display = function(nanoseconds, stored_seconds)
  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", stored_seconds)..string.format("%09d", nanoseconds)
end

-- Composite: Timestamp
miax_pearloptions_topofmarket_mach_v2_3.timestamp.composite = function(buffer, offset, stored_seconds, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v2_3.nanoseconds.size
  local range = buffer(offset, length)
  local nanoseconds = range:le_uint()
  local value = miax_pearloptions_topofmarket_mach_v2_3.timestamp.translate(nanoseconds, stored_seconds)
  local display = miax_pearloptions_topofmarket_mach_v2_3.timestamp.display(nanoseconds, stored_seconds, packet)
  parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.timestamp, range, value, display)

  miax_pearloptions_topofmarket_mach_v2_3.seconds.generated(stored_seconds, range, packet, parent)

  display = miax_pearloptions_topofmarket_mach_v2_3.nanoseconds.display(nanoseconds)
  parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.nanoseconds, range, nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
miax_pearloptions_topofmarket_mach_v2_3.timestamp.dissect = function(buffer, offset, packet, parent)
  if miax_pearloptions_topofmarket_mach_v2_3.format_timestamp then
    local stored_seconds = miax_pearloptions_topofmarket_mach_v2_3.seconds.current

    if stored_seconds ~= nil then
      return miax_pearloptions_topofmarket_mach_v2_3.timestamp.composite(buffer, offset, stored_seconds, packet, parent)
    end
  end

  return miax_pearloptions_topofmarket_mach_v2_3.nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Miax PearlOptions TopOfMarket Mach 2.3
-----------------------------------------------------------------------

-- Underlying Trading Status Notification Message
miax_pearloptions_topofmarket_mach_v2_3.underlying_trading_status_notification_message = {}

-- Size: Underlying Trading Status Notification Message
miax_pearloptions_topofmarket_mach_v2_3.underlying_trading_status_notification_message.size =
  miax_pearloptions_topofmarket_mach_v2_3.nanoseconds.size + 
  miax_pearloptions_topofmarket_mach_v2_3.underlying_symbol.size + 
  miax_pearloptions_topofmarket_mach_v2_3.trading_status.size + 
  miax_pearloptions_topofmarket_mach_v2_3.event_reason.size + 
  miax_pearloptions_topofmarket_mach_v2_3.expected_event_time_seconds.size + 
  miax_pearloptions_topofmarket_mach_v2_3.expected_event_time_nano_seconds.size

-- Display: Underlying Trading Status Notification Message
miax_pearloptions_topofmarket_mach_v2_3.underlying_trading_status_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Trading Status Notification Message
miax_pearloptions_topofmarket_mach_v2_3.underlying_trading_status_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearloptions_topofmarket_mach_v2_3.timestamp.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_pearloptions_topofmarket_mach_v2_3.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Trading Status: Alphanumeric
  index, trading_status = miax_pearloptions_topofmarket_mach_v2_3.trading_status.dissect(buffer, index, packet, parent)

  -- Event Reason: Alphanumeric
  index, event_reason = miax_pearloptions_topofmarket_mach_v2_3.event_reason.dissect(buffer, index, packet, parent)

  -- Expected Event Time Seconds: SecTime
  index, expected_event_time_seconds = miax_pearloptions_topofmarket_mach_v2_3.expected_event_time_seconds.dissect(buffer, index, packet, parent)

  -- Expected Event Time Nano Seconds: BinaryU
  index, expected_event_time_nano_seconds = miax_pearloptions_topofmarket_mach_v2_3.expected_event_time_nano_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Trading Status Notification Message
miax_pearloptions_topofmarket_mach_v2_3.underlying_trading_status_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.underlying_trading_status_notification_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v2_3.underlying_trading_status_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v2_3.underlying_trading_status_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v2_3.underlying_trading_status_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Message
miax_pearloptions_topofmarket_mach_v2_3.trade_cancel_message = {}

-- Size: Trade Cancel Message
miax_pearloptions_topofmarket_mach_v2_3.trade_cancel_message.size =
  miax_pearloptions_topofmarket_mach_v2_3.nanoseconds.size + 
  miax_pearloptions_topofmarket_mach_v2_3.product_id.size + 
  miax_pearloptions_topofmarket_mach_v2_3.trade_id.size + 
  miax_pearloptions_topofmarket_mach_v2_3.correction_number.size + 
  miax_pearloptions_topofmarket_mach_v2_3.trade_price.size + 
  miax_pearloptions_topofmarket_mach_v2_3.trade_size.size + 
  miax_pearloptions_topofmarket_mach_v2_3.trade_condition.size

-- Display: Trade Cancel Message
miax_pearloptions_topofmarket_mach_v2_3.trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Message
miax_pearloptions_topofmarket_mach_v2_3.trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearloptions_topofmarket_mach_v2_3.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v2_3.product_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_pearloptions_topofmarket_mach_v2_3.trade_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_pearloptions_topofmarket_mach_v2_3.correction_number.dissect(buffer, index, packet, parent)

  -- Trade Price: BinaryPrc4U
  index, trade_price = miax_pearloptions_topofmarket_mach_v2_3.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Size: BinaryU
  index, trade_size = miax_pearloptions_topofmarket_mach_v2_3.trade_size.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = miax_pearloptions_topofmarket_mach_v2_3.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
miax_pearloptions_topofmarket_mach_v2_3.trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.trade_cancel_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v2_3.trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v2_3.trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v2_3.trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Sale Message
miax_pearloptions_topofmarket_mach_v2_3.last_sale_message = {}

-- Size: Last Sale Message
miax_pearloptions_topofmarket_mach_v2_3.last_sale_message.size =
  miax_pearloptions_topofmarket_mach_v2_3.nanoseconds.size + 
  miax_pearloptions_topofmarket_mach_v2_3.product_id.size + 
  miax_pearloptions_topofmarket_mach_v2_3.trade_id.size + 
  miax_pearloptions_topofmarket_mach_v2_3.correction_number.size + 
  miax_pearloptions_topofmarket_mach_v2_3.reference_trade_id.size + 
  miax_pearloptions_topofmarket_mach_v2_3.reference_correction_number.size + 
  miax_pearloptions_topofmarket_mach_v2_3.trade_price.size + 
  miax_pearloptions_topofmarket_mach_v2_3.trade_size.size + 
  miax_pearloptions_topofmarket_mach_v2_3.trade_condition.size

-- Display: Last Sale Message
miax_pearloptions_topofmarket_mach_v2_3.last_sale_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Sale Message
miax_pearloptions_topofmarket_mach_v2_3.last_sale_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearloptions_topofmarket_mach_v2_3.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v2_3.product_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_pearloptions_topofmarket_mach_v2_3.trade_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_pearloptions_topofmarket_mach_v2_3.correction_number.dissect(buffer, index, packet, parent)

  -- Reference Trade Id: BinaryU
  index, reference_trade_id = miax_pearloptions_topofmarket_mach_v2_3.reference_trade_id.dissect(buffer, index, packet, parent)

  -- Reference Correction Number: BinaryU
  index, reference_correction_number = miax_pearloptions_topofmarket_mach_v2_3.reference_correction_number.dissect(buffer, index, packet, parent)

  -- Trade Price: BinaryPrc4U
  index, trade_price = miax_pearloptions_topofmarket_mach_v2_3.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Size: BinaryU
  index, trade_size = miax_pearloptions_topofmarket_mach_v2_3.trade_size.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = miax_pearloptions_topofmarket_mach_v2_3.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Sale Message
miax_pearloptions_topofmarket_mach_v2_3.last_sale_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.last_sale_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v2_3.last_sale_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v2_3.last_sale_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v2_3.last_sale_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Double Sided Top Of Market Wide Message
miax_pearloptions_topofmarket_mach_v2_3.simple_double_sided_top_of_market_wide_message = {}

-- Size: Simple Double Sided Top Of Market Wide Message
miax_pearloptions_topofmarket_mach_v2_3.simple_double_sided_top_of_market_wide_message.size =
  miax_pearloptions_topofmarket_mach_v2_3.nanoseconds.size + 
  miax_pearloptions_topofmarket_mach_v2_3.product_id.size + 
  miax_pearloptions_topofmarket_mach_v2_3.bid_price_4.size + 
  miax_pearloptions_topofmarket_mach_v2_3.bid_size_4.size + 
  miax_pearloptions_topofmarket_mach_v2_3.bid_priority_customer_size_4.size + 
  miax_pearloptions_topofmarket_mach_v2_3.bid_condition.size + 
  miax_pearloptions_topofmarket_mach_v2_3.offer_price_4.size + 
  miax_pearloptions_topofmarket_mach_v2_3.offer_size_4.size + 
  miax_pearloptions_topofmarket_mach_v2_3.offer_priority_customer_size_4.size + 
  miax_pearloptions_topofmarket_mach_v2_3.offer_condition.size

-- Display: Simple Double Sided Top Of Market Wide Message
miax_pearloptions_topofmarket_mach_v2_3.simple_double_sided_top_of_market_wide_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Double Sided Top Of Market Wide Message
miax_pearloptions_topofmarket_mach_v2_3.simple_double_sided_top_of_market_wide_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearloptions_topofmarket_mach_v2_3.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v2_3.product_id.dissect(buffer, index, packet, parent)

  -- Bid Price 4: BinaryPrc4U
  index, bid_price_4 = miax_pearloptions_topofmarket_mach_v2_3.bid_price_4.dissect(buffer, index, packet, parent)

  -- Bid Size 4: BinaryU
  index, bid_size_4 = miax_pearloptions_topofmarket_mach_v2_3.bid_size_4.dissect(buffer, index, packet, parent)

  -- Bid Priority Customer Size 4: BinaryU
  index, bid_priority_customer_size_4 = miax_pearloptions_topofmarket_mach_v2_3.bid_priority_customer_size_4.dissect(buffer, index, packet, parent)

  -- Bid Condition: Alphanumeric
  index, bid_condition = miax_pearloptions_topofmarket_mach_v2_3.bid_condition.dissect(buffer, index, packet, parent)

  -- Offer Price 4: BinaryPrc4U
  index, offer_price_4 = miax_pearloptions_topofmarket_mach_v2_3.offer_price_4.dissect(buffer, index, packet, parent)

  -- Offer Size 4: BinaryU
  index, offer_size_4 = miax_pearloptions_topofmarket_mach_v2_3.offer_size_4.dissect(buffer, index, packet, parent)

  -- Offer Priority Customer Size 4: BinaryU
  index, offer_priority_customer_size_4 = miax_pearloptions_topofmarket_mach_v2_3.offer_priority_customer_size_4.dissect(buffer, index, packet, parent)

  -- Offer Condition: Alphanumeric
  index, offer_condition = miax_pearloptions_topofmarket_mach_v2_3.offer_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Double Sided Top Of Market Wide Message
miax_pearloptions_topofmarket_mach_v2_3.simple_double_sided_top_of_market_wide_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.simple_double_sided_top_of_market_wide_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v2_3.simple_double_sided_top_of_market_wide_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v2_3.simple_double_sided_top_of_market_wide_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v2_3.simple_double_sided_top_of_market_wide_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Double Sided Top Of Market Compact Message
miax_pearloptions_topofmarket_mach_v2_3.simple_double_sided_top_of_market_compact_message = {}

-- Size: Simple Double Sided Top Of Market Compact Message
miax_pearloptions_topofmarket_mach_v2_3.simple_double_sided_top_of_market_compact_message.size =
  miax_pearloptions_topofmarket_mach_v2_3.nanoseconds.size + 
  miax_pearloptions_topofmarket_mach_v2_3.product_id.size + 
  miax_pearloptions_topofmarket_mach_v2_3.bid_price_2.size + 
  miax_pearloptions_topofmarket_mach_v2_3.bid_size_2.size + 
  miax_pearloptions_topofmarket_mach_v2_3.bid_priority_customer_size_2.size + 
  miax_pearloptions_topofmarket_mach_v2_3.bid_condition.size + 
  miax_pearloptions_topofmarket_mach_v2_3.offer_price_2.size + 
  miax_pearloptions_topofmarket_mach_v2_3.offer_size_2.size + 
  miax_pearloptions_topofmarket_mach_v2_3.offer_priority_customer_size_2.size + 
  miax_pearloptions_topofmarket_mach_v2_3.offer_condition.size

-- Display: Simple Double Sided Top Of Market Compact Message
miax_pearloptions_topofmarket_mach_v2_3.simple_double_sided_top_of_market_compact_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Double Sided Top Of Market Compact Message
miax_pearloptions_topofmarket_mach_v2_3.simple_double_sided_top_of_market_compact_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearloptions_topofmarket_mach_v2_3.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v2_3.product_id.dissect(buffer, index, packet, parent)

  -- Bid Price 2: BinaryPrc2U
  index, bid_price_2 = miax_pearloptions_topofmarket_mach_v2_3.bid_price_2.dissect(buffer, index, packet, parent)

  -- Bid Size 2: BinaryU
  index, bid_size_2 = miax_pearloptions_topofmarket_mach_v2_3.bid_size_2.dissect(buffer, index, packet, parent)

  -- Bid Priority Customer Size 2: BinaryU
  index, bid_priority_customer_size_2 = miax_pearloptions_topofmarket_mach_v2_3.bid_priority_customer_size_2.dissect(buffer, index, packet, parent)

  -- Bid Condition: Alphanumeric
  index, bid_condition = miax_pearloptions_topofmarket_mach_v2_3.bid_condition.dissect(buffer, index, packet, parent)

  -- Offer Price 2: BinaryPrc2U
  index, offer_price_2 = miax_pearloptions_topofmarket_mach_v2_3.offer_price_2.dissect(buffer, index, packet, parent)

  -- Offer Size 2: BinaryU
  index, offer_size_2 = miax_pearloptions_topofmarket_mach_v2_3.offer_size_2.dissect(buffer, index, packet, parent)

  -- Offer Priority Customer Size 2: BinaryU
  index, offer_priority_customer_size_2 = miax_pearloptions_topofmarket_mach_v2_3.offer_priority_customer_size_2.dissect(buffer, index, packet, parent)

  -- Offer Condition: Alphanumeric
  index, offer_condition = miax_pearloptions_topofmarket_mach_v2_3.offer_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Double Sided Top Of Market Compact Message
miax_pearloptions_topofmarket_mach_v2_3.simple_double_sided_top_of_market_compact_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.simple_double_sided_top_of_market_compact_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v2_3.simple_double_sided_top_of_market_compact_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v2_3.simple_double_sided_top_of_market_compact_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v2_3.simple_double_sided_top_of_market_compact_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Top Of Market Offer Wide Message
miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_offer_wide_message = {}

-- Size: Simple Top Of Market Offer Wide Message
miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_offer_wide_message.size =
  miax_pearloptions_topofmarket_mach_v2_3.nanoseconds.size + 
  miax_pearloptions_topofmarket_mach_v2_3.product_id.size + 
  miax_pearloptions_topofmarket_mach_v2_3.mbbo_price_4.size + 
  miax_pearloptions_topofmarket_mach_v2_3.mbbo_size_4.size + 
  miax_pearloptions_topofmarket_mach_v2_3.mbbo_priority_customer_size_4.size + 
  miax_pearloptions_topofmarket_mach_v2_3.mbbo_condition.size

-- Display: Simple Top Of Market Offer Wide Message
miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_offer_wide_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Top Of Market Offer Wide Message
miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_offer_wide_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearloptions_topofmarket_mach_v2_3.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v2_3.product_id.dissect(buffer, index, packet, parent)

  -- Mbbo Price 4: BinaryPrc4U
  index, mbbo_price_4 = miax_pearloptions_topofmarket_mach_v2_3.mbbo_price_4.dissect(buffer, index, packet, parent)

  -- Mbbo Size 4: BinaryU
  index, mbbo_size_4 = miax_pearloptions_topofmarket_mach_v2_3.mbbo_size_4.dissect(buffer, index, packet, parent)

  -- Mbbo Priority Customer Size 4: BinaryU
  index, mbbo_priority_customer_size_4 = miax_pearloptions_topofmarket_mach_v2_3.mbbo_priority_customer_size_4.dissect(buffer, index, packet, parent)

  -- Mbbo Condition: Alphanumeric
  index, mbbo_condition = miax_pearloptions_topofmarket_mach_v2_3.mbbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Top Of Market Offer Wide Message
miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_offer_wide_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.simple_top_of_market_offer_wide_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_offer_wide_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_offer_wide_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_offer_wide_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Top Of Market Bid Wide Message
miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_bid_wide_message = {}

-- Size: Simple Top Of Market Bid Wide Message
miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_bid_wide_message.size =
  miax_pearloptions_topofmarket_mach_v2_3.nanoseconds.size + 
  miax_pearloptions_topofmarket_mach_v2_3.product_id.size + 
  miax_pearloptions_topofmarket_mach_v2_3.mbbo_price_4.size + 
  miax_pearloptions_topofmarket_mach_v2_3.mbbo_size_4.size + 
  miax_pearloptions_topofmarket_mach_v2_3.mbbo_priority_customer_size_4.size + 
  miax_pearloptions_topofmarket_mach_v2_3.mbbo_condition.size

-- Display: Simple Top Of Market Bid Wide Message
miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_bid_wide_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Top Of Market Bid Wide Message
miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_bid_wide_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearloptions_topofmarket_mach_v2_3.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v2_3.product_id.dissect(buffer, index, packet, parent)

  -- Mbbo Price 4: BinaryPrc4U
  index, mbbo_price_4 = miax_pearloptions_topofmarket_mach_v2_3.mbbo_price_4.dissect(buffer, index, packet, parent)

  -- Mbbo Size 4: BinaryU
  index, mbbo_size_4 = miax_pearloptions_topofmarket_mach_v2_3.mbbo_size_4.dissect(buffer, index, packet, parent)

  -- Mbbo Priority Customer Size 4: BinaryU
  index, mbbo_priority_customer_size_4 = miax_pearloptions_topofmarket_mach_v2_3.mbbo_priority_customer_size_4.dissect(buffer, index, packet, parent)

  -- Mbbo Condition: Alphanumeric
  index, mbbo_condition = miax_pearloptions_topofmarket_mach_v2_3.mbbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Top Of Market Bid Wide Message
miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_bid_wide_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.simple_top_of_market_bid_wide_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_bid_wide_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_bid_wide_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_bid_wide_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Top Of Market Offer Compact Message
miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_offer_compact_message = {}

-- Size: Simple Top Of Market Offer Compact Message
miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_offer_compact_message.size =
  miax_pearloptions_topofmarket_mach_v2_3.nanoseconds.size + 
  miax_pearloptions_topofmarket_mach_v2_3.product_id.size + 
  miax_pearloptions_topofmarket_mach_v2_3.mbbo_price_2.size + 
  miax_pearloptions_topofmarket_mach_v2_3.mbbo_size_2.size + 
  miax_pearloptions_topofmarket_mach_v2_3.mbbo_priority_customer_size_2.size + 
  miax_pearloptions_topofmarket_mach_v2_3.mbbo_condition.size

-- Display: Simple Top Of Market Offer Compact Message
miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_offer_compact_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Top Of Market Offer Compact Message
miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_offer_compact_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearloptions_topofmarket_mach_v2_3.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v2_3.product_id.dissect(buffer, index, packet, parent)

  -- Mbbo Price 2: BinaryPrc2U
  index, mbbo_price_2 = miax_pearloptions_topofmarket_mach_v2_3.mbbo_price_2.dissect(buffer, index, packet, parent)

  -- Mbbo Size 2: BinaryU
  index, mbbo_size_2 = miax_pearloptions_topofmarket_mach_v2_3.mbbo_size_2.dissect(buffer, index, packet, parent)

  -- Mbbo Priority Customer Size 2: BinaryU
  index, mbbo_priority_customer_size_2 = miax_pearloptions_topofmarket_mach_v2_3.mbbo_priority_customer_size_2.dissect(buffer, index, packet, parent)

  -- Mbbo Condition: Alphanumeric
  index, mbbo_condition = miax_pearloptions_topofmarket_mach_v2_3.mbbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Top Of Market Offer Compact Message
miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_offer_compact_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.simple_top_of_market_offer_compact_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_offer_compact_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_offer_compact_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_offer_compact_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Top Of Market Bid Compact Message
miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_bid_compact_message = {}

-- Size: Simple Top Of Market Bid Compact Message
miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_bid_compact_message.size =
  miax_pearloptions_topofmarket_mach_v2_3.nanoseconds.size + 
  miax_pearloptions_topofmarket_mach_v2_3.product_id.size + 
  miax_pearloptions_topofmarket_mach_v2_3.mbbo_price_2.size + 
  miax_pearloptions_topofmarket_mach_v2_3.mbbo_size_2.size + 
  miax_pearloptions_topofmarket_mach_v2_3.mbbo_priority_customer_size_2.size + 
  miax_pearloptions_topofmarket_mach_v2_3.mbbo_condition.size

-- Display: Simple Top Of Market Bid Compact Message
miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_bid_compact_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Top Of Market Bid Compact Message
miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_bid_compact_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearloptions_topofmarket_mach_v2_3.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v2_3.product_id.dissect(buffer, index, packet, parent)

  -- Mbbo Price 2: BinaryPrc2U
  index, mbbo_price_2 = miax_pearloptions_topofmarket_mach_v2_3.mbbo_price_2.dissect(buffer, index, packet, parent)

  -- Mbbo Size 2: BinaryU
  index, mbbo_size_2 = miax_pearloptions_topofmarket_mach_v2_3.mbbo_size_2.dissect(buffer, index, packet, parent)

  -- Mbbo Priority Customer Size 2: BinaryU
  index, mbbo_priority_customer_size_2 = miax_pearloptions_topofmarket_mach_v2_3.mbbo_priority_customer_size_2.dissect(buffer, index, packet, parent)

  -- Mbbo Condition: Alphanumeric
  index, mbbo_condition = miax_pearloptions_topofmarket_mach_v2_3.mbbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Top Of Market Bid Compact Message
miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_bid_compact_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.simple_top_of_market_bid_compact_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_bid_compact_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_bid_compact_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_bid_compact_message.fields(buffer, offset, packet, parent)
  end
end

-- System State Message
miax_pearloptions_topofmarket_mach_v2_3.system_state_message = {}

-- Size: System State Message
miax_pearloptions_topofmarket_mach_v2_3.system_state_message.size =
  miax_pearloptions_topofmarket_mach_v2_3.nanoseconds.size + 
  miax_pearloptions_topofmarket_mach_v2_3.to_m_version.size + 
  miax_pearloptions_topofmarket_mach_v2_3.session_id.size + 
  miax_pearloptions_topofmarket_mach_v2_3.system_status.size

-- Display: System State Message
miax_pearloptions_topofmarket_mach_v2_3.system_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System State Message
miax_pearloptions_topofmarket_mach_v2_3.system_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearloptions_topofmarket_mach_v2_3.timestamp.dissect(buffer, index, packet, parent)

  -- To M Version: Alphanumeric
  index, to_m_version = miax_pearloptions_topofmarket_mach_v2_3.to_m_version.dissect(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_pearloptions_topofmarket_mach_v2_3.session_id.dissect(buffer, index, packet, parent)

  -- System Status: Alphanumeric
  index, system_status = miax_pearloptions_topofmarket_mach_v2_3.system_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Message
miax_pearloptions_topofmarket_mach_v2_3.system_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.system_state_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v2_3.system_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v2_3.system_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v2_3.system_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Series Update Message
miax_pearloptions_topofmarket_mach_v2_3.simple_series_update_message = {}

-- Size: Simple Series Update Message
miax_pearloptions_topofmarket_mach_v2_3.simple_series_update_message.size =
  miax_pearloptions_topofmarket_mach_v2_3.nanoseconds.size + 
  miax_pearloptions_topofmarket_mach_v2_3.product_id.size + 
  miax_pearloptions_topofmarket_mach_v2_3.underlying_symbol.size + 
  miax_pearloptions_topofmarket_mach_v2_3.security_symbol.size + 
  miax_pearloptions_topofmarket_mach_v2_3.expiration_date.size + 
  miax_pearloptions_topofmarket_mach_v2_3.strike_price.size + 
  miax_pearloptions_topofmarket_mach_v2_3.call_or_put.size + 
  miax_pearloptions_topofmarket_mach_v2_3.opening_time.size + 
  miax_pearloptions_topofmarket_mach_v2_3.closing_time.size + 
  miax_pearloptions_topofmarket_mach_v2_3.restricted_option.size + 
  miax_pearloptions_topofmarket_mach_v2_3.long_term_option.size + 
  miax_pearloptions_topofmarket_mach_v2_3.active_on_miax.size + 
  miax_pearloptions_topofmarket_mach_v2_3.miax_bbo_posting_increment_indicator.size + 
  miax_pearloptions_topofmarket_mach_v2_3.liquidity_acceptance_increment_indicator.size + 
  miax_pearloptions_topofmarket_mach_v2_3.opening_underlying_market_code.size + 
  miax_pearloptions_topofmarket_mach_v2_3.priority_quote_width.size + 
  miax_pearloptions_topofmarket_mach_v2_3.reserved_8.size

-- Display: Simple Series Update Message
miax_pearloptions_topofmarket_mach_v2_3.simple_series_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Series Update Message
miax_pearloptions_topofmarket_mach_v2_3.simple_series_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearloptions_topofmarket_mach_v2_3.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v2_3.product_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_pearloptions_topofmarket_mach_v2_3.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = miax_pearloptions_topofmarket_mach_v2_3.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Date: Alphanumeric
  index, expiration_date = miax_pearloptions_topofmarket_mach_v2_3.expiration_date.dissect(buffer, index, packet, parent)

  -- Strike Price: BinaryPrc4U
  index, strike_price = miax_pearloptions_topofmarket_mach_v2_3.strike_price.dissect(buffer, index, packet, parent)

  -- Call Or Put: Alphanumeric
  index, call_or_put = miax_pearloptions_topofmarket_mach_v2_3.call_or_put.dissect(buffer, index, packet, parent)

  -- Opening Time: Alphanumeric
  index, opening_time = miax_pearloptions_topofmarket_mach_v2_3.opening_time.dissect(buffer, index, packet, parent)

  -- Closing Time: Alphanumeric
  index, closing_time = miax_pearloptions_topofmarket_mach_v2_3.closing_time.dissect(buffer, index, packet, parent)

  -- Restricted Option: Alphanumeric
  index, restricted_option = miax_pearloptions_topofmarket_mach_v2_3.restricted_option.dissect(buffer, index, packet, parent)

  -- Long Term Option: Alphanumeric
  index, long_term_option = miax_pearloptions_topofmarket_mach_v2_3.long_term_option.dissect(buffer, index, packet, parent)

  -- Active On Miax: Alphanumeric
  index, active_on_miax = miax_pearloptions_topofmarket_mach_v2_3.active_on_miax.dissect(buffer, index, packet, parent)

  -- Miax Bbo Posting Increment Indicator: Alphanumeric
  index, miax_bbo_posting_increment_indicator = miax_pearloptions_topofmarket_mach_v2_3.miax_bbo_posting_increment_indicator.dissect(buffer, index, packet, parent)

  -- Liquidity Acceptance Increment Indicator: Alphanumeric
  index, liquidity_acceptance_increment_indicator = miax_pearloptions_topofmarket_mach_v2_3.liquidity_acceptance_increment_indicator.dissect(buffer, index, packet, parent)

  -- Opening Underlying Market Code: Alphanumeric
  index, opening_underlying_market_code = miax_pearloptions_topofmarket_mach_v2_3.opening_underlying_market_code.dissect(buffer, index, packet, parent)

  -- Priority Quote Width: BinaryPrc4U
  index, priority_quote_width = miax_pearloptions_topofmarket_mach_v2_3.priority_quote_width.dissect(buffer, index, packet, parent)

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_pearloptions_topofmarket_mach_v2_3.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Series Update Message
miax_pearloptions_topofmarket_mach_v2_3.simple_series_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.simple_series_update_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v2_3.simple_series_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v2_3.simple_series_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v2_3.simple_series_update_message.fields(buffer, offset, packet, parent)
  end
end

-- System Time Message
miax_pearloptions_topofmarket_mach_v2_3.system_time_message = {}

-- Size: System Time Message
miax_pearloptions_topofmarket_mach_v2_3.system_time_message.size =
  miax_pearloptions_topofmarket_mach_v2_3.seconds.size

-- Display: System Time Message
miax_pearloptions_topofmarket_mach_v2_3.system_time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Time Message
miax_pearloptions_topofmarket_mach_v2_3.system_time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: SecTime
  index, seconds = miax_pearloptions_topofmarket_mach_v2_3.seconds.dissect(buffer, index, packet, parent)

  -- Store Seconds Value
  miax_pearloptions_topofmarket_mach_v2_3.seconds.current = seconds

  if not packet.visited then
    miax_pearloptions_topofmarket_mach_v2_3.conversation.current.seconds.last = seconds
  end

  return index
end

-- Dissect: System Time Message
miax_pearloptions_topofmarket_mach_v2_3.system_time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.system_time_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v2_3.system_time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v2_3.system_time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v2_3.system_time_message.fields(buffer, offset, packet, parent)
  end
end

-- Data
miax_pearloptions_topofmarket_mach_v2_3.data = {}

-- Dissect: Data
miax_pearloptions_topofmarket_mach_v2_3.data.dispatch = {
  ["1"] = miax_pearloptions_topofmarket_mach_v2_3.system_time_message.dissect,
  ["P"] = miax_pearloptions_topofmarket_mach_v2_3.simple_series_update_message.dissect,
  ["S"] = miax_pearloptions_topofmarket_mach_v2_3.system_state_message.dissect,
  ["B"] = miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_bid_compact_message.dissect,
  ["O"] = miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_offer_compact_message.dissect,
  ["W"] = miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_bid_wide_message.dissect,
  ["A"] = miax_pearloptions_topofmarket_mach_v2_3.simple_top_of_market_offer_wide_message.dissect,
  ["d"] = miax_pearloptions_topofmarket_mach_v2_3.simple_double_sided_top_of_market_compact_message.dissect,
  ["D"] = miax_pearloptions_topofmarket_mach_v2_3.simple_double_sided_top_of_market_wide_message.dissect,
  ["T"] = miax_pearloptions_topofmarket_mach_v2_3.last_sale_message.dissect,
  ["X"] = miax_pearloptions_topofmarket_mach_v2_3.trade_cancel_message.dissect,
  ["H"] = miax_pearloptions_topofmarket_mach_v2_3.underlying_trading_status_notification_message.dissect,
}

miax_pearloptions_topofmarket_mach_v2_3.data.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = miax_pearloptions_topofmarket_mach_v2_3.data.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Application Message
miax_pearloptions_topofmarket_mach_v2_3.application_message = {}

-- Read runtime size of: Application Message
miax_pearloptions_topofmarket_mach_v2_3.application_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 4, 2):le_uint()

  return packet_length - 12
end

-- Display: Application Message
miax_pearloptions_topofmarket_mach_v2_3.application_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Application Message
miax_pearloptions_topofmarket_mach_v2_3.application_message.fields = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 12 values
  index, message_type = miax_pearloptions_topofmarket_mach_v2_3.message_type.dissect(buffer, index, packet, parent)

  -- Data: Runtime Type with 12 branches
  index = miax_pearloptions_topofmarket_mach_v2_3.data.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Application Message
miax_pearloptions_topofmarket_mach_v2_3.application_message.dissect = function(buffer, offset, packet, parent, size_of_application_message)
  local size_of_application_message = miax_pearloptions_topofmarket_mach_v2_3.application_message.size(buffer, offset)
  local index = offset + size_of_application_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.application_message, buffer(offset, 0))
    local current = miax_pearloptions_topofmarket_mach_v2_3.application_message.fields(buffer, offset, packet, parent, size_of_application_message)
    parent:set_len(size_of_application_message)
    local display = miax_pearloptions_topofmarket_mach_v2_3.application_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_pearloptions_topofmarket_mach_v2_3.application_message.fields(buffer, offset, packet, parent, size_of_application_message)

    return index
  end
end

-- End Of Session
miax_pearloptions_topofmarket_mach_v2_3.end_of_session = {}

-- Display: End Of Session
miax_pearloptions_topofmarket_mach_v2_3.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
miax_pearloptions_topofmarket_mach_v2_3.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = miax_pearloptions_topofmarket_mach_v2_3.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Start Of Session
miax_pearloptions_topofmarket_mach_v2_3.start_of_session = {}

-- Display: Start Of Session
miax_pearloptions_topofmarket_mach_v2_3.start_of_session.display = function(packet, parent, length)
  return "Start Of Session"
end


-- Dissect: Start Of Session
miax_pearloptions_topofmarket_mach_v2_3.start_of_session.dissect = function(buffer, offset, packet, parent)
  local display = miax_pearloptions_topofmarket_mach_v2_3.start_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
miax_pearloptions_topofmarket_mach_v2_3.heartbeat = {}

-- Display: Heartbeat
miax_pearloptions_topofmarket_mach_v2_3.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
miax_pearloptions_topofmarket_mach_v2_3.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_pearloptions_topofmarket_mach_v2_3.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Payload
miax_pearloptions_topofmarket_mach_v2_3.payload = {}

-- Dissect: Payload
miax_pearloptions_topofmarket_mach_v2_3.payload.dispatch = {
  [0] = miax_pearloptions_topofmarket_mach_v2_3.heartbeat.dissect,
  [1] = miax_pearloptions_topofmarket_mach_v2_3.start_of_session.dissect,
  [2] = miax_pearloptions_topofmarket_mach_v2_3.end_of_session.dissect,
  [3] = miax_pearloptions_topofmarket_mach_v2_3.application_message.dissect,
}

miax_pearloptions_topofmarket_mach_v2_3.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  local dissect = miax_pearloptions_topofmarket_mach_v2_3.payload.dispatch[packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Mach Packet Header
miax_pearloptions_topofmarket_mach_v2_3.mach_packet_header = {}

-- Size: Mach Packet Header
miax_pearloptions_topofmarket_mach_v2_3.mach_packet_header.size =
  miax_pearloptions_topofmarket_mach_v2_3.sequence_number.size + 
  miax_pearloptions_topofmarket_mach_v2_3.packet_length.size + 
  miax_pearloptions_topofmarket_mach_v2_3.packet_type.size + 
  miax_pearloptions_topofmarket_mach_v2_3.session_number.size

-- Display: Mach Packet Header
miax_pearloptions_topofmarket_mach_v2_3.mach_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mach Packet Header
miax_pearloptions_topofmarket_mach_v2_3.mach_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_pearloptions_topofmarket_mach_v2_3.sequence_number.dissect(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = miax_pearloptions_topofmarket_mach_v2_3.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, packet_type = miax_pearloptions_topofmarket_mach_v2_3.packet_type.dissect(buffer, index, packet, parent)

  -- Session Number: 1 Byte Unsigned Fixed Width Integer
  index, session_number = miax_pearloptions_topofmarket_mach_v2_3.session_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mach Packet Header
miax_pearloptions_topofmarket_mach_v2_3.mach_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.mach_packet_header, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v2_3.mach_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v2_3.mach_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v2_3.mach_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Mach Message
miax_pearloptions_topofmarket_mach_v2_3.mach_message = {}

-- Display: Mach Message
miax_pearloptions_topofmarket_mach_v2_3.mach_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mach Message
miax_pearloptions_topofmarket_mach_v2_3.mach_message.fields = function(buffer, offset, packet, parent, size_of_mach_message)
  local index = offset

  -- Mach Packet Header: Struct of 4 fields
  index, mach_packet_header = miax_pearloptions_topofmarket_mach_v2_3.mach_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 2, 1):le_uint()

  -- Payload: Runtime Type with 4 branches
  index = miax_pearloptions_topofmarket_mach_v2_3.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Mach Message
miax_pearloptions_topofmarket_mach_v2_3.mach_message.dissect = function(buffer, offset, packet, parent, size_of_mach_message)
  local index = offset + size_of_mach_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3.fields.mach_message, buffer(offset, 0))
    local current = miax_pearloptions_topofmarket_mach_v2_3.mach_message.fields(buffer, offset, packet, parent, size_of_mach_message)
    parent:set_len(size_of_mach_message)
    local display = miax_pearloptions_topofmarket_mach_v2_3.mach_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_pearloptions_topofmarket_mach_v2_3.mach_message.fields(buffer, offset, packet, parent, size_of_mach_message)

    return index
  end
end

-- Packet
miax_pearloptions_topofmarket_mach_v2_3.packet = {}

-- Verify required size of Udp packet
miax_pearloptions_topofmarket_mach_v2_3.packet.requiredsize = function(buffer)
  return buffer:len() >= miax_pearloptions_topofmarket_mach_v2_3.mach_packet_header.size
end

-- Dissect Packet
miax_pearloptions_topofmarket_mach_v2_3.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = miax_pearloptions_topofmarket_mach_v2_3.conversation.data(packet)
  if not packet.visited then
    data.seconds.frames[packet.number] = data.seconds.last
  end
  miax_pearloptions_topofmarket_mach_v2_3.seconds.current = data.seconds.frames[packet.number]
  miax_pearloptions_topofmarket_mach_v2_3.conversation.current = data

  local index = 0

  -- Dependency for Mach Message
  local end_of_payload = buffer:len()

  -- Mach Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Packet Length
    local packet_length = buffer(index + 8, 2):le_uint()

    -- Runtime Size Of: Mach Message
    index, mach_message = miax_pearloptions_topofmarket_mach_v2_3.mach_message.dissect(buffer, index, packet, parent, packet_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_miax_pearloptions_topofmarket_mach_v2_3.init()
  miax_pearloptions_topofmarket_mach_v2_3.seconds.current = nil
  miax_pearloptions_topofmarket_mach_v2_3.conversation.current = nil
  miax_pearloptions_topofmarket_mach_v2_3.conversation.flows = {}
end

-- Dissector for Miax PearlOptions TopOfMarket Mach 2.3
function omi_miax_pearloptions_topofmarket_mach_v2_3.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_miax_pearloptions_topofmarket_mach_v2_3.name

  -- Dissect protocol
  local protocol = parent:add(omi_miax_pearloptions_topofmarket_mach_v2_3, buffer(), omi_miax_pearloptions_topofmarket_mach_v2_3.description, "("..buffer:len().." Bytes)")
  return miax_pearloptions_topofmarket_mach_v2_3.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
miax_pearloptions_topofmarket_mach_v2_3.packet.fingerprint = function(buffer)
  if buffer:len() < 11 then
    return false
  end

  local packet_type = buffer(10, 1):le_uint()

  -- Heartbeat
  if packet_type == 0 then
    return true
  end

  -- Start Of Session
  if packet_type == 1 then
    return true
  end

  -- End Of Session
  if packet_type == 2 then
    return true
  end

  -- Application Message: carries the application messages, which tell this protocol from others sharing the session framing
  if packet_type == 3 then
    if buffer:len() < 13 then
      return false
    end

    local message_type = buffer(12, 1):string()

    -- System Time Message
    if message_type == "1" then
      return true
    end

    -- Simple Series Update Message
    if message_type == "P" then
      return true
    end

    -- System State Message
    if message_type == "S" then
      return true
    end

    -- Simple Top Of Market Bid Compact Message
    if message_type == "B" then
      return true
    end

    -- Simple Top Of Market Offer Compact Message
    if message_type == "O" then
      return true
    end

    -- Simple Top Of Market Bid Wide Message
    if message_type == "W" then
      return true
    end

    -- Simple Top Of Market Offer Wide Message
    if message_type == "A" then
      return true
    end

    -- Simple Double Sided Top Of Market Compact Message
    if message_type == "d" then
      return true
    end

    -- Simple Double Sided Top Of Market Wide Message
    if message_type == "D" then
      return true
    end

    -- Last Sale Message
    if message_type == "T" then
      return true
    end

    -- Trade Cancel Message
    if message_type == "X" then
      return true
    end

    -- Underlying Trading Status Notification Message
    if message_type == "H" then
      return true
    end

    return false
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Miax PearlOptions TopOfMarket Mach 2.3 (Udp)
local function omi_miax_pearloptions_topofmarket_mach_v2_3_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_pearloptions_topofmarket_mach_v2_3.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not miax_pearloptions_topofmarket_mach_v2_3.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_pearloptions_topofmarket_mach_v2_3
  omi_miax_pearloptions_topofmarket_mach_v2_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax PearlOptions TopOfMarket Mach 2.3
omi_miax_pearloptions_topofmarket_mach_v2_3:register_heuristic("udp", omi_miax_pearloptions_topofmarket_mach_v2_3_udp_heuristic)

-- Register Miax PearlOptions TopOfMarket Mach 2.3 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_miax_pearloptions_topofmarket_mach_v2_3)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Miami International Holdings
--   Version: 2.3
--   Date: Monday, June 10, 2019
--   Specification: Top Of Market Feed ToM v2.3.pdf
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
