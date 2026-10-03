-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NsmEquities LastSale Itch 2.1.2015 Protocol
local omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015 = Proto("Omi.Nasdaq.NsmEquities.LastSale.Itch.v2.1.2015", "Nasdaq NsmEquities LastSale Itch 2.1.2015")

-- Protocol table
local nasdaq_nsmequities_lastsale_itch_v2_1_2015 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NsmEquities LastSale Itch 2.1.2015 Fields
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.adjusted_closing_price = ProtoField.new("Adjusted Closing Price", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.adjustedclosingprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.authenticity", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.breached_level = ProtoField.new("Breached Level", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.breachedlevel", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.corrected_extended_hours_or_sold_code = ProtoField.new("Corrected Extended Hours Or Sold Code", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.correctedextendedhoursorsoldcode", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.corrected_nav_premium_discount_amount = ProtoField.new("Corrected Nav Premium Discount Amount", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.correctednavpremiumdiscountamount", ftypes.DOUBLE)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.corrected_sale_condition_modifier = ProtoField.new("Corrected Sale Condition Modifier", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.correctedsaleconditionmodifier", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.corrected_settlement_type = ProtoField.new("Corrected Settlement Type", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.correctedsettlementtype", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.corrected_special_sale_condition = ProtoField.new("Corrected Special Sale Condition", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.correctedspecialsalecondition", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.corrected_trade_control_number = ProtoField.new("Corrected Trade Control Number", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.correctedtradecontrolnumber", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.corrected_trade_price = ProtoField.new("Corrected Trade Price", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.correctedtradeprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.corrected_trade_size = ProtoField.new("Corrected Trade Size", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.correctedtradesize", ftypes.UINT32)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.corrected_trade_through_exemption = ProtoField.new("Corrected Trade Through Exemption", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.correctedtradethroughexemption", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.currenttradingstate", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.etmf_symbol = ProtoField.new("Etmf Symbol", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.etmfsymbol", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.etp_flag = ProtoField.new("Etp Flag", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.etpflag", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.etp_leverage_factor = ProtoField.new("Etp Leverage Factor", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.etpleveragefactor", ftypes.UINT32)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.event_code = ProtoField.new("Event Code", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.eventcode", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.extended_hours_or_sold_code = ProtoField.new("Extended Hours Or Sold Code", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.extendedhoursorsoldcode", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.financialstatusindicator", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.inverse_indicator = ProtoField.new("Inverse Indicator", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.inverseindicator", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.ipo_flag = ProtoField.new("Ipo Flag", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.ipoflag", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.ipo_price = ProtoField.new("Ipo Price", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.ipoprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.ipo_quotation_release_qualifier = ProtoField.new("Ipo Quotation Release Qualifier", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.ipoquotationreleasequalifier", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.ipo_quotation_release_time = ProtoField.new("Ipo Quotation Release Time", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.ipoquotationreleasetime", ftypes.UINT32)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.issue_classification = ProtoField.new("Issue Classification", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.issueclassification", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.issue_sub_type = ProtoField.new("Issue Sub Type", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.issuesubtype", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.issue_symbol = ProtoField.new("Issue Symbol", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.issuesymbol", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.level_1 = ProtoField.new("Level 1", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.level1", ftypes.DOUBLE)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.level_2 = ProtoField.new("Level 2", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.level2", ftypes.DOUBLE)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.level_3 = ProtoField.new("Level 3", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.level3", ftypes.DOUBLE)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.luld_reference_price_tier = ProtoField.new("Luld Reference Price Tier", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.luldreferencepricetier", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.market_category = ProtoField.new("Market Category", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.marketcategory", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.market_center_identifier = ProtoField.new("Market Center Identifier", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.marketcenteridentifier", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.message_count = ProtoField.new("Message Count", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.messagecount", ftypes.UINT16)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.message_length = ProtoField.new("Message Length", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.messagelength", ftypes.UINT16)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.message_type = ProtoField.new("Message Type", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.messagetype", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.nav_premium_discount_amount = ProtoField.new("Nav Premium Discount Amount", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.navpremiumdiscountamount", ftypes.DOUBLE)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.original_extended_hours_or_sold_code = ProtoField.new("Original Extended Hours Or Sold Code", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.originalextendedhoursorsoldcode", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.original_nav_premium_discount_amount = ProtoField.new("Original Nav Premium Discount Amount", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.originalnavpremiumdiscountamount", ftypes.DOUBLE)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.original_sale_condition_modifier = ProtoField.new("Original Sale Condition Modifier", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.originalsaleconditionmodifier", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.original_settlement_type = ProtoField.new("Original Settlement Type", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.originalsettlementtype", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.original_special_sale_condition = ProtoField.new("Original Special Sale Condition", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.originalspecialsalecondition", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.original_trade_control_number = ProtoField.new("Original Trade Control Number", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.originaltradecontrolnumber", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.original_trade_price = ProtoField.new("Original Trade Price", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.originaltradeprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.original_trade_size = ProtoField.new("Original Trade Size", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.originaltradesize", ftypes.UINT32)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.original_trade_through_exemption = ProtoField.new("Original Trade Through Exemption", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.originaltradethroughexemption", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.proxy_price = ProtoField.new("Proxy Price", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.proxyprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.reason = ProtoField.new("Reason", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.reason", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.regshoaction", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.roundlotsize", ftypes.UINT32)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.round_lots_only = ProtoField.new("Round Lots Only", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.roundlotsonly", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.sale_condition_modifier = ProtoField.new("Sale Condition Modifier", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.saleconditionmodifier", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.security_class = ProtoField.new("Security Class", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.securityclass", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.sequencenumber", ftypes.UINT64)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.session = ProtoField.new("Session", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.session", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.settlement_type = ProtoField.new("Settlement Type", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.settlementtype", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.shortsalethresholdindicator", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.special_sale_condition = ProtoField.new("Special Sale Condition", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.specialsalecondition", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.stock = ProtoField.new("Stock", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.stock", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.timestamp", ftypes.UINT64)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.trackingnumber", ftypes.UINT16)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.trade_control_number = ProtoField.new("Trade Control Number", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.tradecontrolnumber", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.trade_price = ProtoField.new("Trade Price", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.tradeprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.trade_size = ProtoField.new("Trade Size", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.tradesize", ftypes.UINT32)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.trade_through_exemption = ProtoField.new("Trade Through Exemption", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.tradethroughexemption", ftypes.STRING)

-- Nasdaq NsmEquities LastSale Itch 2.1.2015 Framing
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.message = ProtoField.new("Message", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.message", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.message_header = ProtoField.new("Message Header", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.messageheader", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.packet = ProtoField.new("Packet", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.packet", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.packetheader", ftypes.STRING)

-- Nasdaq NsmEquities LastSale 2.1.2015 Application Messages
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.adjusted_closing_price_message = ProtoField.new("Adjusted Closing Price Message", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.adjustedclosingpricemessage", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.etmf_trade_cancel_error_message = ProtoField.new("Etmf Trade Cancel Error Message", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.etmftradecancelerrormessage", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.etmf_trade_correction_message = ProtoField.new("Etmf Trade Correction Message", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.etmftradecorrectionmessage", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.etmf_trade_report_message = ProtoField.new("Etmf Trade Report Message", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.etmftradereportmessage", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.ipo_quoting_period_update_message = ProtoField.new("Ipo Quoting Period Update Message", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.ipoquotingperiodupdatemessage", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.mwcb_decline_level_message = ProtoField.new("Mwcb Decline Level Message", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.mwcbdeclinelevelmessage", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.mwcb_status_message = ProtoField.new("Mwcb Status Message", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.mwcbstatusmessage", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.reg_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Reg Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.regshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.stockdirectorymessage", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.stock_trading_action_message = ProtoField.new("Stock Trading Action Message", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.stocktradingactionmessage", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.systemeventmessage", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.trade_cancel_error_message = ProtoField.new("Trade Cancel Error Message", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.tradecancelerrormessage", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.tradecorrectionmessage", ftypes.STRING)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.trade_report_message = ProtoField.new("Trade Report Message", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.tradereportmessage", ftypes.STRING)

-- Nasdaq NsmEquities LastSale 2.1.2015 Session Messages
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.endofsession", ftypes.BYTES)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.heartbeat = ProtoField.new("Heartbeat", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.heartbeat", ftypes.BYTES)

-- Nasdaq NsmEquities LastSale Itch 2.1.2015 Generated Fields
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.message_index = ProtoField.new("Message Index", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.messageindex", ftypes.UINT16)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nasdaq.nsmequities.lastsale.itch.v2.1.2015.messagesequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nasdaq NsmEquities LastSale Itch 2.1.2015 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_nsmequities_lastsale_itch_v2_1_2015.timestamp_format = 2

-- Hours behind UTC (EST) for midnight calculation
nasdaq_nsmequities_lastsale_itch_v2_1_2015.utc_offset_hours = 5


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq NsmEquities LastSale Itch 2.1.2015 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Nasdaq NsmEquities LastSale Itch 2.1.2015 Show Options
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.prefs.show_headers then
    show.headers = omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.prefs.show_headers
  end
  if show.structs ~= omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.prefs.show_structs then
    show.structs = omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.prefs.show_indexes then
    show.indexes = omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.prefs.show_indexes
  end
  if show.sequences ~= omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.prefs.show_sequences then
    show.sequences = omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.prefs.show_sequences
  end
  if nasdaq_nsmequities_lastsale_itch_v2_1_2015.timestamp_format ~= omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.prefs.timestamp_format then
    nasdaq_nsmequities_lastsale_itch_v2_1_2015.timestamp_format = omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.prefs.timestamp_format
  end
  if nasdaq_nsmequities_lastsale_itch_v2_1_2015.utc_offset_hours ~= omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.prefs.utc_offset_hours then
    nasdaq_nsmequities_lastsale_itch_v2_1_2015.utc_offset_hours = omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.prefs.utc_offset_hours
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
-- Nasdaq NsmEquities LastSale Itch 2.1.2015 Fields
-----------------------------------------------------------------------

-- Adjusted Closing Price
nasdaq_nsmequities_lastsale_itch_v2_1_2015.adjusted_closing_price = {}

-- Size: Adjusted Closing Price
nasdaq_nsmequities_lastsale_itch_v2_1_2015.adjusted_closing_price.size = 4

-- Display: Adjusted Closing Price
nasdaq_nsmequities_lastsale_itch_v2_1_2015.adjusted_closing_price.display = function(value)
  return "Adjusted Closing Price: "..value
end

-- Translate: Adjusted Closing Price
nasdaq_nsmequities_lastsale_itch_v2_1_2015.adjusted_closing_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Adjusted Closing Price
nasdaq_nsmequities_lastsale_itch_v2_1_2015.adjusted_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.adjusted_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_lastsale_itch_v2_1_2015.adjusted_closing_price.translate(raw)
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.adjusted_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.adjusted_closing_price, range, value, display)

  return offset + length, value
end

-- Authenticity
nasdaq_nsmequities_lastsale_itch_v2_1_2015.authenticity = {}

-- Size: Authenticity
nasdaq_nsmequities_lastsale_itch_v2_1_2015.authenticity.size = 1

-- Display: Authenticity
nasdaq_nsmequities_lastsale_itch_v2_1_2015.authenticity.display = function(value)
  if value == "P" then
    return "Authenticity: Live Production (P)"
  end
  if value == "T" then
    return "Authenticity: Test (T)"
  end

  return "Authenticity: Unknown("..value..")"
end

-- Dissect: Authenticity
nasdaq_nsmequities_lastsale_itch_v2_1_2015.authenticity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.authenticity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.authenticity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Breached Level
nasdaq_nsmequities_lastsale_itch_v2_1_2015.breached_level = {}

-- Size: Breached Level
nasdaq_nsmequities_lastsale_itch_v2_1_2015.breached_level.size = 1

-- Display: Breached Level
nasdaq_nsmequities_lastsale_itch_v2_1_2015.breached_level.display = function(value)
  if value == "1" then
    return "Breached Level: Level 1 (1)"
  end
  if value == "2" then
    return "Breached Level: Level 2 (2)"
  end
  if value == "3" then
    return "Breached Level: Level 3 (3)"
  end

  return "Breached Level: Unknown("..value..")"
end

-- Dissect: Breached Level
nasdaq_nsmequities_lastsale_itch_v2_1_2015.breached_level.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.breached_level.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.breached_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.breached_level, range, value, display)

  return offset + length, value
end

-- Corrected Extended Hours Or Sold Code
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_extended_hours_or_sold_code = {}

-- Size: Corrected Extended Hours Or Sold Code
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_extended_hours_or_sold_code.size = 1

-- Display: Corrected Extended Hours Or Sold Code
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_extended_hours_or_sold_code.display = function(value)
  if value == "T" then
    return "Corrected Extended Hours Or Sold Code: Extended Hours Trade (T)"
  end
  if value == "U" then
    return "Corrected Extended Hours Or Sold Code: Extended Hours Trade Reported Late Or Out Of Sequence (U)"
  end
  if value == "L" then
    return "Corrected Extended Hours Or Sold Code: Sold Last Reported Late But In Sequence (L)"
  end
  if value == "Z" then
    return "Corrected Extended Hours Or Sold Code: Sold Out Of Sequence (Z)"
  end
  if value == " " then
    return "Corrected Extended Hours Or Sold Code: Not Applicable (<whitespace>)"
  end

  return "Corrected Extended Hours Or Sold Code: Unknown("..value..")"
end

-- Dissect: Corrected Extended Hours Or Sold Code
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_extended_hours_or_sold_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_extended_hours_or_sold_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_extended_hours_or_sold_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.corrected_extended_hours_or_sold_code, range, value, display)

  return offset + length, value
end

-- Corrected Nav Premium Discount Amount
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_nav_premium_discount_amount = {}

-- Size: Corrected Nav Premium Discount Amount
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_nav_premium_discount_amount.size = 4

-- Display: Corrected Nav Premium Discount Amount
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_nav_premium_discount_amount.display = function(value)
  return "Corrected Nav Premium Discount Amount: "..value
end

-- Translate: Corrected Nav Premium Discount Amount
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_nav_premium_discount_amount.translate = function(raw)
  return raw/10000
end

-- Dissect: Corrected Nav Premium Discount Amount
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_nav_premium_discount_amount.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_nav_premium_discount_amount.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_nav_premium_discount_amount.translate(raw)
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_nav_premium_discount_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.corrected_nav_premium_discount_amount, range, value, display)

  return offset + length, value
end

-- Corrected Settlement Type
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_settlement_type = {}

-- Size: Corrected Settlement Type
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_settlement_type.size = 1

-- Display: Corrected Settlement Type
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_settlement_type.display = function(value)
  if value == "@" then
    return "Corrected Settlement Type: Regular Settlement (@)"
  end
  if value == "C" then
    return "Corrected Settlement Type: Cash Settlement (C)"
  end
  if value == "N" then
    return "Corrected Settlement Type: Next Day Settlement (N)"
  end
  if value == "R" then
    return "Corrected Settlement Type: Seller Settlement (R)"
  end

  return "Corrected Settlement Type: Unknown("..value..")"
end

-- Dissect: Corrected Settlement Type
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_settlement_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_settlement_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_settlement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.corrected_settlement_type, range, value, display)

  return offset + length, value
end

-- Corrected Special Sale Condition
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_special_sale_condition = {}

-- Size: Corrected Special Sale Condition
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_special_sale_condition.size = 1

-- Display: Corrected Special Sale Condition
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_special_sale_condition.display = function(value)
  if value == "A" then
    return "Corrected Special Sale Condition: Acquisition (A)"
  end
  if value == "B" then
    return "Corrected Special Sale Condition: Bunched (B)"
  end
  if value == "D" then
    return "Corrected Special Sale Condition: Distribution (D)"
  end
  if value == "H" then
    return "Corrected Special Sale Condition: Price Variation Transaction (H)"
  end
  if value == "M" then
    return "Corrected Special Sale Condition: Official Close Price (M)"
  end
  if value == "P" then
    return "Corrected Special Sale Condition: Prior Reference Price (P)"
  end
  if value == "Q" then
    return "Corrected Special Sale Condition: Official Opening Price (Q)"
  end
  if value == "S" then
    return "Corrected Special Sale Condition: Split Trade (S)"
  end
  if value == "W" then
    return "Corrected Special Sale Condition: Average Price Trade (W)"
  end
  if value == "X" then
    return "Corrected Special Sale Condition: Cross Trade (X)"
  end
  if value == "o" then
    return "Corrected Special Sale Condition: Odd Lot Execution (o)"
  end
  if value == "x" then
    return "Corrected Special Sale Condition: Odd Lot Cross Execution (x)"
  end
  if value == " " then
    return "Corrected Special Sale Condition: Not Applicable (<whitespace>)"
  end

  return "Corrected Special Sale Condition: Unknown("..value..")"
end

-- Dissect: Corrected Special Sale Condition
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_special_sale_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_special_sale_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_special_sale_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.corrected_special_sale_condition, range, value, display)

  return offset + length, value
end

-- Corrected Trade Control Number
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_control_number = {}

-- Size: Corrected Trade Control Number
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_control_number.size = 10

-- Display: Corrected Trade Control Number
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_control_number.display = function(value)
  return "Corrected Trade Control Number: "..value
end

-- Dissect: Corrected Trade Control Number
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_control_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_control_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_control_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.corrected_trade_control_number, range, value, display)

  return offset + length, value
end

-- Corrected Trade Price
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_price = {}

-- Size: Corrected Trade Price
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_price.size = 4

-- Display: Corrected Trade Price
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_price.display = function(value)
  return "Corrected Trade Price: "..value
end

-- Translate: Corrected Trade Price
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Corrected Trade Price
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_price.translate(raw)
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.corrected_trade_price, range, value, display)

  return offset + length, value
end

-- Corrected Trade Size
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_size = {}

-- Size: Corrected Trade Size
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_size.size = 4

-- Display: Corrected Trade Size
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_size.display = function(value)
  return "Corrected Trade Size: "..value
end

-- Dissect: Corrected Trade Size
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.corrected_trade_size, range, value, display)

  return offset + length, value
end

-- Corrected Trade Through Exemption
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_through_exemption = {}

-- Size: Corrected Trade Through Exemption
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_through_exemption.size = 1

-- Display: Corrected Trade Through Exemption
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_through_exemption.display = function(value)
  if value == "F" then
    return "Corrected Trade Through Exemption: Intermarket Sweep (F)"
  end
  if value == "O" then
    return "Corrected Trade Through Exemption: Opening Print (O)"
  end
  if value == "4" then
    return "Corrected Trade Through Exemption: Derivative Priced (4)"
  end
  if value == "5" then
    return "Corrected Trade Through Exemption: Re Opening Print (5)"
  end
  if value == "6" then
    return "Corrected Trade Through Exemption: Closing Print (6)"
  end
  if value == " " then
    return "Corrected Trade Through Exemption: Not Applicable (<whitespace>)"
  end

  return "Corrected Trade Through Exemption: Unknown("..value..")"
end

-- Dissect: Corrected Trade Through Exemption
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_through_exemption.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_through_exemption.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_through_exemption.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.corrected_trade_through_exemption, range, value, display)

  return offset + length, value
end

-- Current Trading State
nasdaq_nsmequities_lastsale_itch_v2_1_2015.current_trading_state = {}

-- Size: Current Trading State
nasdaq_nsmequities_lastsale_itch_v2_1_2015.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_nsmequities_lastsale_itch_v2_1_2015.current_trading_state.display = function(value)
  if value == "H" then
    return "Current Trading State: Halted (H)"
  end
  if value == "P" then
    return "Current Trading State: Paused (P)"
  end
  if value == "Q" then
    return "Current Trading State: Quotation Only (Q)"
  end
  if value == "T" then
    return "Current Trading State: Trading (T)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_nsmequities_lastsale_itch_v2_1_2015.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Etmf Symbol
nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_symbol = {}

-- Size: Etmf Symbol
nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_symbol.size = 8

-- Display: Etmf Symbol
nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_symbol.display = function(value)
  return "Etmf Symbol: "..value
end

-- Dissect: Etmf Symbol
nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.etmf_symbol, range, value, display)

  return offset + length, value
end

-- Etp Flag
nasdaq_nsmequities_lastsale_itch_v2_1_2015.etp_flag = {}

-- Size: Etp Flag
nasdaq_nsmequities_lastsale_itch_v2_1_2015.etp_flag.size = 1

-- Display: Etp Flag
nasdaq_nsmequities_lastsale_itch_v2_1_2015.etp_flag.display = function(value)
  if value == "Y" then
    return "Etp Flag: Etp (Y)"
  end
  if value == "N" then
    return "Etp Flag: Not Etp (N)"
  end
  if value == " " then
    return "Etp Flag: Not Available (<whitespace>)"
  end

  return "Etp Flag: Unknown("..value..")"
end

-- Dissect: Etp Flag
nasdaq_nsmequities_lastsale_itch_v2_1_2015.etp_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.etp_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.etp_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.etp_flag, range, value, display)

  return offset + length, value
end

-- Etp Leverage Factor
nasdaq_nsmequities_lastsale_itch_v2_1_2015.etp_leverage_factor = {}

-- Size: Etp Leverage Factor
nasdaq_nsmequities_lastsale_itch_v2_1_2015.etp_leverage_factor.size = 4

-- Display: Etp Leverage Factor
nasdaq_nsmequities_lastsale_itch_v2_1_2015.etp_leverage_factor.display = function(value)
  return "Etp Leverage Factor: "..value
end

-- Dissect: Etp Leverage Factor
nasdaq_nsmequities_lastsale_itch_v2_1_2015.etp_leverage_factor.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.etp_leverage_factor.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.etp_leverage_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.etp_leverage_factor, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_nsmequities_lastsale_itch_v2_1_2015.event_code = {}

-- Size: Event Code
nasdaq_nsmequities_lastsale_itch_v2_1_2015.event_code.size = 1

-- Display: Event Code
nasdaq_nsmequities_lastsale_itch_v2_1_2015.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Transmissions (O)"
  end
  if value == "S" then
    return "Event Code: Start Of System Hours (S)"
  end
  if value == "Q" then
    return "Event Code: Start Of Market Hours (Q)"
  end
  if value == "M" then
    return "Event Code: End Of Market Hours (M)"
  end
  if value == "E" then
    return "Event Code: End Of System Hours (E)"
  end
  if value == "C" then
    return "Event Code: End Of Transmissions (C)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_nsmequities_lastsale_itch_v2_1_2015.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.event_code, range, value, display)

  return offset + length, value
end

-- Extended Hours Or Sold Code
nasdaq_nsmequities_lastsale_itch_v2_1_2015.extended_hours_or_sold_code = {}

-- Size: Extended Hours Or Sold Code
nasdaq_nsmequities_lastsale_itch_v2_1_2015.extended_hours_or_sold_code.size = 1

-- Display: Extended Hours Or Sold Code
nasdaq_nsmequities_lastsale_itch_v2_1_2015.extended_hours_or_sold_code.display = function(value)
  if value == "T" then
    return "Extended Hours Or Sold Code: Extended Hours Trade (T)"
  end
  if value == "U" then
    return "Extended Hours Or Sold Code: Extended Hours Trade Reported Late Or Out Of Sequence (U)"
  end
  if value == "L" then
    return "Extended Hours Or Sold Code: Sold Last Reported Late But In Sequence (L)"
  end
  if value == "Z" then
    return "Extended Hours Or Sold Code: Sold Out Of Sequence (Z)"
  end
  if value == " " then
    return "Extended Hours Or Sold Code: Not Applicable (<whitespace>)"
  end

  return "Extended Hours Or Sold Code: Unknown("..value..")"
end

-- Dissect: Extended Hours Or Sold Code
nasdaq_nsmequities_lastsale_itch_v2_1_2015.extended_hours_or_sold_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.extended_hours_or_sold_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.extended_hours_or_sold_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.extended_hours_or_sold_code, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
nasdaq_nsmequities_lastsale_itch_v2_1_2015.financial_status_indicator = {}

-- Size: Financial Status Indicator
nasdaq_nsmequities_lastsale_itch_v2_1_2015.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
nasdaq_nsmequities_lastsale_itch_v2_1_2015.financial_status_indicator.display = function(value)
  if value == "D" then
    return "Financial Status Indicator: Deficient (D)"
  end
  if value == "E" then
    return "Financial Status Indicator: Delinquent (E)"
  end
  if value == "Q" then
    return "Financial Status Indicator: Bankrupt (Q)"
  end
  if value == "S" then
    return "Financial Status Indicator: Suspended (S)"
  end
  if value == "G" then
    return "Financial Status Indicator: Deficient And Bankrupt (G)"
  end
  if value == "H" then
    return "Financial Status Indicator: Deficient And Delinquent (H)"
  end
  if value == "J" then
    return "Financial Status Indicator: Delinquent And Bankrupt (J)"
  end
  if value == "K" then
    return "Financial Status Indicator: Deficient Delinquent And Bankrupt (K)"
  end
  if value == "C" then
    return "Financial Status Indicator: Creations Redemptions Suspended (C)"
  end
  if value == "N" then
    return "Financial Status Indicator: Normal (N)"
  end
  if value == " " then
    return "Financial Status Indicator: Not Available (<whitespace>)"
  end

  return "Financial Status Indicator: Unknown("..value..")"
end

-- Dissect: Financial Status Indicator
nasdaq_nsmequities_lastsale_itch_v2_1_2015.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Inverse Indicator
nasdaq_nsmequities_lastsale_itch_v2_1_2015.inverse_indicator = {}

-- Size: Inverse Indicator
nasdaq_nsmequities_lastsale_itch_v2_1_2015.inverse_indicator.size = 1

-- Display: Inverse Indicator
nasdaq_nsmequities_lastsale_itch_v2_1_2015.inverse_indicator.display = function(value)
  if value == "Y" then
    return "Inverse Indicator: Inverse Etp (Y)"
  end
  if value == "N" then
    return "Inverse Indicator: Not Inverse Etp (N)"
  end

  return "Inverse Indicator: Unknown("..value..")"
end

-- Dissect: Inverse Indicator
nasdaq_nsmequities_lastsale_itch_v2_1_2015.inverse_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.inverse_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.inverse_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.inverse_indicator, range, value, display)

  return offset + length, value
end

-- Ipo Flag
nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_flag = {}

-- Size: Ipo Flag
nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_flag.size = 1

-- Display: Ipo Flag
nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_flag.display = function(value)
  if value == "Y" then
    return "Ipo Flag: Yes (Y)"
  end
  if value == "N" then
    return "Ipo Flag: No (N)"
  end
  if value == " " then
    return "Ipo Flag: Not Available (<whitespace>)"
  end

  return "Ipo Flag: Unknown("..value..")"
end

-- Dissect: Ipo Flag
nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.ipo_flag, range, value, display)

  return offset + length, value
end

-- Ipo Price
nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_price = {}

-- Size: Ipo Price
nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_price.size = 4

-- Display: Ipo Price
nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_price.display = function(value)
  return "Ipo Price: "..value
end

-- Translate: Ipo Price
nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Ipo Price
nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_price.translate(raw)
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.ipo_price, range, value, display)

  return offset + length, value
end

-- Ipo Quotation Release Qualifier
nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_quotation_release_qualifier = {}

-- Size: Ipo Quotation Release Qualifier
nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_quotation_release_qualifier.size = 1

-- Display: Ipo Quotation Release Qualifier
nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_quotation_release_qualifier.display = function(value)
  if value == "A" then
    return "Ipo Quotation Release Qualifier: Anticipated (A)"
  end
  if value == "C" then
    return "Ipo Quotation Release Qualifier: Canceled Postponed (C)"
  end

  return "Ipo Quotation Release Qualifier: Unknown("..value..")"
end

-- Dissect: Ipo Quotation Release Qualifier
nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_quotation_release_qualifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_quotation_release_qualifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_quotation_release_qualifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.ipo_quotation_release_qualifier, range, value, display)

  return offset + length, value
end

-- Ipo Quotation Release Time
nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_quotation_release_time = {}

-- Size: Ipo Quotation Release Time
nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_quotation_release_time.size = 4

-- Display: Ipo Quotation Release Time
nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_quotation_release_time.display = function(value)
  return "Ipo Quotation Release Time: "..value
end

-- Dissect: Ipo Quotation Release Time
nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_quotation_release_time.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_quotation_release_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_quotation_release_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.ipo_quotation_release_time, range, value, display)

  return offset + length, value
end

-- Issue Classification
nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_classification = {}

-- Size: Issue Classification
nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_classification.size = 1

-- Display: Issue Classification
nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_classification.display = function(value)
  if value == "A" then
    return "Issue Classification: Ads (A)"
  end
  if value == "B" then
    return "Issue Classification: Bond (B)"
  end
  if value == "C" then
    return "Issue Classification: Common (C)"
  end
  if value == "F" then
    return "Issue Classification: Depository (F)"
  end
  if value == "I" then
    return "Issue Classification: Sec 144 A (I)"
  end
  if value == "L" then
    return "Issue Classification: Limited (L)"
  end
  if value == "N" then
    return "Issue Classification: Notes (N)"
  end
  if value == "O" then
    return "Issue Classification: Ordinary (O)"
  end
  if value == "P" then
    return "Issue Classification: Preferred (P)"
  end
  if value == "Q" then
    return "Issue Classification: Other (Q)"
  end
  if value == "R" then
    return "Issue Classification: Right (R)"
  end
  if value == "S" then
    return "Issue Classification: Shares (S)"
  end
  if value == "T" then
    return "Issue Classification: Convertible (T)"
  end
  if value == "U" then
    return "Issue Classification: Unit (U)"
  end
  if value == "V" then
    return "Issue Classification: Units Bi (V)"
  end
  if value == "W" then
    return "Issue Classification: Warrant (W)"
  end

  return "Issue Classification: Unknown("..value..")"
end

-- Dissect: Issue Classification
nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_classification.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_classification.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.issue_classification, range, value, display)

  return offset + length, value
end

-- Issue Sub Type
nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_sub_type = {}

-- Size: Issue Sub Type
nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_sub_type.size = 2

-- Display: Issue Sub Type
nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_sub_type.display = function(value)
  if value == "A" then
    return "Issue Sub Type: Preferred Trust Securities (A)"
  end
  if value == "AI" then
    return "Issue Sub Type: Alpha Index Et Ns (AI)"
  end
  if value == "B" then
    return "Issue Sub Type: Index Based Derivative (B)"
  end
  if value == "C" then
    return "Issue Sub Type: Common Shares (C)"
  end
  if value == "CB" then
    return "Issue Sub Type: Commodity Based Trust Shares (CB)"
  end
  if value == "CF" then
    return "Issue Sub Type: Commodity Futures Trust Shares (CF)"
  end
  if value == "CL" then
    return "Issue Sub Type: Commodity Linked Securities (CL)"
  end
  if value == "CM" then
    return "Issue Sub Type: Commodity Index Trust Shares (CM)"
  end
  if value == "CO" then
    return "Issue Sub Type: Collateralized Mortgage Obligation (CO)"
  end
  if value == "CT" then
    return "Issue Sub Type: Currency Trust Shares (CT)"
  end
  if value == "CU" then
    return "Issue Sub Type: Commodity Currency Linked Securities (CU)"
  end
  if value == "CW" then
    return "Issue Sub Type: Currency Warrants (CW)"
  end
  if value == "D" then
    return "Issue Sub Type: Global Depositary Shares (D)"
  end
  if value == "E" then
    return "Issue Sub Type: Etf Portfolio Depositary Receipt (E)"
  end
  if value == "EG" then
    return "Issue Sub Type: Equity Gold Shares (EG)"
  end
  if value == "EI" then
    return "Issue Sub Type: Etn Equity Index Linked Securities (EI)"
  end
  if value == "EM" then
    return "Issue Sub Type: Exchange Traded Managed Funds (EM)"
  end
  if value == "EN" then
    return "Issue Sub Type: Exchange Traded Notes (EN)"
  end
  if value == "EU" then
    return "Issue Sub Type: Equity Units (EU)"
  end
  if value == "F" then
    return "Issue Sub Type: Holdrs (F)"
  end
  if value == "FI" then
    return "Issue Sub Type: Etn Fixed Income Linked Securities (FI)"
  end
  if value == "FL" then
    return "Issue Sub Type: Etn Futures Linked Securities (FL)"
  end
  if value == "G" then
    return "Issue Sub Type: Global Shares (G)"
  end
  if value == "I" then
    return "Issue Sub Type: Etf Index Fund Shares (I)"
  end
  if value == "IR" then
    return "Issue Sub Type: Interest Rate (IR)"
  end
  if value == "IW" then
    return "Issue Sub Type: Index Warrant (IW)"
  end
  if value == "IX" then
    return "Issue Sub Type: Index Linked Exchangeable Notes (IX)"
  end
  if value == "J" then
    return "Issue Sub Type: Corporate Backed Trust Security (J)"
  end
  if value == "L" then
    return "Issue Sub Type: Contingent Litigation Right (L)"
  end
  if value == "LL" then
    return "Issue Sub Type: Identifies Securities Of Companies That Are Set Up As A Limited Liability Company Llc (LL)"
  end
  if value == "M" then
    return "Issue Sub Type: Equity Based Derivative (M)"
  end
  if value == "MF" then
    return "Issue Sub Type: Managed Fund Shares (MF)"
  end
  if value == "ML" then
    return "Issue Sub Type: Etn Multi Factor Index Linked Securities (ML)"
  end
  if value == "MT" then
    return "Issue Sub Type: Managed Trust Securities (MT)"
  end
  if value == "N" then
    return "Issue Sub Type: Ny Registry Shares (N)"
  end
  if value == "O" then
    return "Issue Sub Type: Open Ended Mutual Fund (O)"
  end
  if value == "P" then
    return "Issue Sub Type: Privately Held Security (P)"
  end
  if value == "PP" then
    return "Issue Sub Type: Poison Pill (PP)"
  end
  if value == "PU" then
    return "Issue Sub Type: Partnership Units (PU)"
  end
  if value == "Q" then
    return "Issue Sub Type: Closed End Funds (Q)"
  end
  if value == "R" then
    return "Issue Sub Type: Reg S (R)"
  end
  if value == "RC" then
    return "Issue Sub Type: Commodity Redeemable Commodity Linked Securities (RC)"
  end
  if value == "RF" then
    return "Issue Sub Type: Etn Redeemable Futures Linked Securities (RF)"
  end
  if value == "RT" then
    return "Issue Sub Type: Reit (RT)"
  end
  if value == "RU" then
    return "Issue Sub Type: Commodity Redeemable Currency Linked Securities (RU)"
  end
  if value == "S" then
    return "Issue Sub Type: Seed (S)"
  end
  if value == "SC" then
    return "Issue Sub Type: Spot Rate Closing (SC)"
  end
  if value == "SI" then
    return "Issue Sub Type: Spot Rate Intraday (SI)"
  end
  if value == "T" then
    return "Issue Sub Type: Tracking Stock (T)"
  end
  if value == "TC" then
    return "Issue Sub Type: Trust Certificates (TC)"
  end
  if value == "TU" then
    return "Issue Sub Type: Trust Units (TU)"
  end
  if value == "U" then
    return "Issue Sub Type: Portal (U)"
  end
  if value == "V" then
    return "Issue Sub Type: Contingent Value Right (V)"
  end
  if value == "W" then
    return "Issue Sub Type: Trust Issued Receipts (W)"
  end
  if value == "WC" then
    return "Issue Sub Type: World Currency Option (WC)"
  end
  if value == "X" then
    return "Issue Sub Type: Trust (X)"
  end
  if value == "Y" then
    return "Issue Sub Type: Other (Y)"
  end
  if value == "Z" then
    return "Issue Sub Type: Not Applicable (Z)"
  end

  return "Issue Sub Type: Unknown("..value..")"
end

-- Dissect: Issue Sub Type
nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_sub_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.issue_sub_type, range, value, display)

  return offset + length, value
end

-- Issue Symbol
nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_symbol = {}

-- Size: Issue Symbol
nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_symbol.size = 8

-- Display: Issue Symbol
nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_symbol.display = function(value)
  return "Issue Symbol: "..value
end

-- Dissect: Issue Symbol
nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.issue_symbol, range, value, display)

  return offset + length, value
end

-- Level 1
nasdaq_nsmequities_lastsale_itch_v2_1_2015.level_1 = {}

-- Size: Level 1
nasdaq_nsmequities_lastsale_itch_v2_1_2015.level_1.size = 8

-- Display: Level 1
nasdaq_nsmequities_lastsale_itch_v2_1_2015.level_1.display = function(value)
  return "Level 1: "..value
end

-- Translate: Level 1
nasdaq_nsmequities_lastsale_itch_v2_1_2015.level_1.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 1
nasdaq_nsmequities_lastsale_itch_v2_1_2015.level_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.level_1.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nsmequities_lastsale_itch_v2_1_2015.level_1.translate(raw)
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.level_1, range, value, display)

  return offset + length, value
end

-- Level 2
nasdaq_nsmequities_lastsale_itch_v2_1_2015.level_2 = {}

-- Size: Level 2
nasdaq_nsmequities_lastsale_itch_v2_1_2015.level_2.size = 8

-- Display: Level 2
nasdaq_nsmequities_lastsale_itch_v2_1_2015.level_2.display = function(value)
  return "Level 2: "..value
end

-- Translate: Level 2
nasdaq_nsmequities_lastsale_itch_v2_1_2015.level_2.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 2
nasdaq_nsmequities_lastsale_itch_v2_1_2015.level_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.level_2.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nsmequities_lastsale_itch_v2_1_2015.level_2.translate(raw)
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.level_2, range, value, display)

  return offset + length, value
end

-- Level 3
nasdaq_nsmequities_lastsale_itch_v2_1_2015.level_3 = {}

-- Size: Level 3
nasdaq_nsmequities_lastsale_itch_v2_1_2015.level_3.size = 8

-- Display: Level 3
nasdaq_nsmequities_lastsale_itch_v2_1_2015.level_3.display = function(value)
  return "Level 3: "..value
end

-- Translate: Level 3
nasdaq_nsmequities_lastsale_itch_v2_1_2015.level_3.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 3
nasdaq_nsmequities_lastsale_itch_v2_1_2015.level_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.level_3.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nsmequities_lastsale_itch_v2_1_2015.level_3.translate(raw)
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.level_3, range, value, display)

  return offset + length, value
end

-- Luld Reference Price Tier
nasdaq_nsmequities_lastsale_itch_v2_1_2015.luld_reference_price_tier = {}

-- Size: Luld Reference Price Tier
nasdaq_nsmequities_lastsale_itch_v2_1_2015.luld_reference_price_tier.size = 1

-- Display: Luld Reference Price Tier
nasdaq_nsmequities_lastsale_itch_v2_1_2015.luld_reference_price_tier.display = function(value)
  if value == "1" then
    return "Luld Reference Price Tier: Tier 1 (1)"
  end
  if value == "2" then
    return "Luld Reference Price Tier: Tier 2 (2)"
  end
  if value == " " then
    return "Luld Reference Price Tier: Not Applicable (<whitespace>)"
  end

  return "Luld Reference Price Tier: Unknown("..value..")"
end

-- Dissect: Luld Reference Price Tier
nasdaq_nsmequities_lastsale_itch_v2_1_2015.luld_reference_price_tier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.luld_reference_price_tier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.luld_reference_price_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.luld_reference_price_tier, range, value, display)

  return offset + length, value
end

-- Market Category
nasdaq_nsmequities_lastsale_itch_v2_1_2015.market_category = {}

-- Size: Market Category
nasdaq_nsmequities_lastsale_itch_v2_1_2015.market_category.size = 1

-- Display: Market Category
nasdaq_nsmequities_lastsale_itch_v2_1_2015.market_category.display = function(value)
  if value == "Q" then
    return "Market Category: Nasdaq Global Select Market (Q)"
  end
  if value == "G" then
    return "Market Category: Nasdaq Global Market (G)"
  end
  if value == "S" then
    return "Market Category: Nasdaq Capital Market (S)"
  end
  if value == "N" then
    return "Market Category: Nyse (N)"
  end
  if value == "A" then
    return "Market Category: Nyse Mkt (A)"
  end
  if value == "P" then
    return "Market Category: Nyse Arca (P)"
  end
  if value == "Z" then
    return "Market Category: Bats Z (Z)"
  end
  if value == " " then
    return "Market Category: Not Available (<whitespace>)"
  end

  return "Market Category: Unknown("..value..")"
end

-- Dissect: Market Category
nasdaq_nsmequities_lastsale_itch_v2_1_2015.market_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.market_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.market_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.market_category, range, value, display)

  return offset + length, value
end

-- Market Center Identifier
nasdaq_nsmequities_lastsale_itch_v2_1_2015.market_center_identifier = {}

-- Size: Market Center Identifier
nasdaq_nsmequities_lastsale_itch_v2_1_2015.market_center_identifier.size = 1

-- Display: Market Center Identifier
nasdaq_nsmequities_lastsale_itch_v2_1_2015.market_center_identifier.display = function(value)
  if value == "Q" then
    return "Market Center Identifier: Nasdaq (Q)"
  end
  if value == "L" then
    return "Market Center Identifier: Trf (L)"
  end

  return "Market Center Identifier: Unknown("..value..")"
end

-- Dissect: Market Center Identifier
nasdaq_nsmequities_lastsale_itch_v2_1_2015.market_center_identifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.market_center_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.market_center_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.market_center_identifier, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_count = {}

-- Size: Message Count
nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_count.size = 2

-- Display: Message Count
nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_length = {}

-- Size: Message Length
nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_length.size = 2

-- Display: Message Length
nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_type = {}

-- Size: Message Type
nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_type.size = 1

-- Display: Message Type
nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_type.display = function(value)
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "T" then
    return "Message Type: Trade Report Message (T)"
  end
  if value == "M" then
    return "Message Type: Etmf Trade Report Message (M)"
  end
  if value == "X" then
    return "Message Type: Trade Cancel Error Message (X)"
  end
  if value == "O" then
    return "Message Type: Etmf Trade Cancel Error Message (O)"
  end
  if value == "C" then
    return "Message Type: Trade Correction Message (C)"
  end
  if value == "Z" then
    return "Message Type: Etmf Trade Correction Message (Z)"
  end
  if value == "H" then
    return "Message Type: Stock Trading Action Message (H)"
  end
  if value == "Y" then
    return "Message Type: Reg Sho Short Sale Price Test Restricted Indicator Message (Y)"
  end
  if value == "R" then
    return "Message Type: Stock Directory Message (R)"
  end
  if value == "G" then
    return "Message Type: Adjusted Closing Price Message (G)"
  end
  if value == "V" then
    return "Message Type: Mwcb Decline Level Message (V)"
  end
  if value == "W" then
    return "Message Type: Mwcb Status Message (W)"
  end
  if value == "K" then
    return "Message Type: Ipo Quoting Period Update Message (K)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nav Premium Discount Amount
nasdaq_nsmequities_lastsale_itch_v2_1_2015.nav_premium_discount_amount = {}

-- Size: Nav Premium Discount Amount
nasdaq_nsmequities_lastsale_itch_v2_1_2015.nav_premium_discount_amount.size = 4

-- Display: Nav Premium Discount Amount
nasdaq_nsmequities_lastsale_itch_v2_1_2015.nav_premium_discount_amount.display = function(value)
  return "Nav Premium Discount Amount: "..value
end

-- Translate: Nav Premium Discount Amount
nasdaq_nsmequities_lastsale_itch_v2_1_2015.nav_premium_discount_amount.translate = function(raw)
  return raw/10000
end

-- Dissect: Nav Premium Discount Amount
nasdaq_nsmequities_lastsale_itch_v2_1_2015.nav_premium_discount_amount.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.nav_premium_discount_amount.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_lastsale_itch_v2_1_2015.nav_premium_discount_amount.translate(raw)
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.nav_premium_discount_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.nav_premium_discount_amount, range, value, display)

  return offset + length, value
end

-- Original Extended Hours Or Sold Code
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_extended_hours_or_sold_code = {}

-- Size: Original Extended Hours Or Sold Code
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_extended_hours_or_sold_code.size = 1

-- Display: Original Extended Hours Or Sold Code
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_extended_hours_or_sold_code.display = function(value)
  if value == "T" then
    return "Original Extended Hours Or Sold Code: Extended Hours Trade (T)"
  end
  if value == "U" then
    return "Original Extended Hours Or Sold Code: Extended Hours Trade Reported Late Or Out Of Sequence (U)"
  end
  if value == "L" then
    return "Original Extended Hours Or Sold Code: Sold Last Reported Late But In Sequence (L)"
  end
  if value == "Z" then
    return "Original Extended Hours Or Sold Code: Sold Out Of Sequence (Z)"
  end
  if value == " " then
    return "Original Extended Hours Or Sold Code: Not Applicable (<whitespace>)"
  end

  return "Original Extended Hours Or Sold Code: Unknown("..value..")"
end

-- Dissect: Original Extended Hours Or Sold Code
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_extended_hours_or_sold_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_extended_hours_or_sold_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_extended_hours_or_sold_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.original_extended_hours_or_sold_code, range, value, display)

  return offset + length, value
end

-- Original Nav Premium Discount Amount
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_nav_premium_discount_amount = {}

-- Size: Original Nav Premium Discount Amount
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_nav_premium_discount_amount.size = 4

-- Display: Original Nav Premium Discount Amount
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_nav_premium_discount_amount.display = function(value)
  return "Original Nav Premium Discount Amount: "..value
end

-- Translate: Original Nav Premium Discount Amount
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_nav_premium_discount_amount.translate = function(raw)
  return raw/10000
end

-- Dissect: Original Nav Premium Discount Amount
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_nav_premium_discount_amount.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_nav_premium_discount_amount.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_nav_premium_discount_amount.translate(raw)
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_nav_premium_discount_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.original_nav_premium_discount_amount, range, value, display)

  return offset + length, value
end

-- Original Settlement Type
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_settlement_type = {}

-- Size: Original Settlement Type
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_settlement_type.size = 1

-- Display: Original Settlement Type
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_settlement_type.display = function(value)
  if value == "@" then
    return "Original Settlement Type: Regular Settlement (@)"
  end
  if value == "C" then
    return "Original Settlement Type: Cash Settlement (C)"
  end
  if value == "N" then
    return "Original Settlement Type: Next Day Settlement (N)"
  end
  if value == "R" then
    return "Original Settlement Type: Seller Settlement (R)"
  end

  return "Original Settlement Type: Unknown("..value..")"
end

-- Dissect: Original Settlement Type
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_settlement_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_settlement_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_settlement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.original_settlement_type, range, value, display)

  return offset + length, value
end

-- Original Special Sale Condition
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_special_sale_condition = {}

-- Size: Original Special Sale Condition
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_special_sale_condition.size = 1

-- Display: Original Special Sale Condition
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_special_sale_condition.display = function(value)
  if value == "A" then
    return "Original Special Sale Condition: Acquisition (A)"
  end
  if value == "B" then
    return "Original Special Sale Condition: Bunched (B)"
  end
  if value == "D" then
    return "Original Special Sale Condition: Distribution (D)"
  end
  if value == "H" then
    return "Original Special Sale Condition: Price Variation Transaction (H)"
  end
  if value == "M" then
    return "Original Special Sale Condition: Official Close Price (M)"
  end
  if value == "P" then
    return "Original Special Sale Condition: Prior Reference Price (P)"
  end
  if value == "Q" then
    return "Original Special Sale Condition: Official Opening Price (Q)"
  end
  if value == "S" then
    return "Original Special Sale Condition: Split Trade (S)"
  end
  if value == "W" then
    return "Original Special Sale Condition: Average Price Trade (W)"
  end
  if value == "X" then
    return "Original Special Sale Condition: Cross Trade (X)"
  end
  if value == "o" then
    return "Original Special Sale Condition: Odd Lot Execution (o)"
  end
  if value == "x" then
    return "Original Special Sale Condition: Odd Lot Cross Execution (x)"
  end
  if value == " " then
    return "Original Special Sale Condition: Not Applicable (<whitespace>)"
  end

  return "Original Special Sale Condition: Unknown("..value..")"
end

-- Dissect: Original Special Sale Condition
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_special_sale_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_special_sale_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_special_sale_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.original_special_sale_condition, range, value, display)

  return offset + length, value
end

-- Original Trade Control Number
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_control_number = {}

-- Size: Original Trade Control Number
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_control_number.size = 10

-- Display: Original Trade Control Number
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_control_number.display = function(value)
  return "Original Trade Control Number: "..value
end

-- Dissect: Original Trade Control Number
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_control_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_control_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_control_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.original_trade_control_number, range, value, display)

  return offset + length, value
end

-- Original Trade Price
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_price = {}

-- Size: Original Trade Price
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_price.size = 4

-- Display: Original Trade Price
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_price.display = function(value)
  return "Original Trade Price: "..value
end

-- Translate: Original Trade Price
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Original Trade Price
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_price.translate(raw)
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.original_trade_price, range, value, display)

  return offset + length, value
end

-- Original Trade Size
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_size = {}

-- Size: Original Trade Size
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_size.size = 4

-- Display: Original Trade Size
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_size.display = function(value)
  return "Original Trade Size: "..value
end

-- Dissect: Original Trade Size
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.original_trade_size, range, value, display)

  return offset + length, value
end

-- Original Trade Through Exemption
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_through_exemption = {}

-- Size: Original Trade Through Exemption
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_through_exemption.size = 1

-- Display: Original Trade Through Exemption
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_through_exemption.display = function(value)
  if value == "F" then
    return "Original Trade Through Exemption: Intermarket Sweep (F)"
  end
  if value == "O" then
    return "Original Trade Through Exemption: Opening Print (O)"
  end
  if value == "4" then
    return "Original Trade Through Exemption: Derivative Priced (4)"
  end
  if value == "5" then
    return "Original Trade Through Exemption: Re Opening Print (5)"
  end
  if value == "6" then
    return "Original Trade Through Exemption: Closing Print (6)"
  end
  if value == " " then
    return "Original Trade Through Exemption: Not Applicable (<whitespace>)"
  end

  return "Original Trade Through Exemption: Unknown("..value..")"
end

-- Dissect: Original Trade Through Exemption
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_through_exemption.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_through_exemption.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_through_exemption.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.original_trade_through_exemption, range, value, display)

  return offset + length, value
end

-- Proxy Price
nasdaq_nsmequities_lastsale_itch_v2_1_2015.proxy_price = {}

-- Size: Proxy Price
nasdaq_nsmequities_lastsale_itch_v2_1_2015.proxy_price.size = 4

-- Display: Proxy Price
nasdaq_nsmequities_lastsale_itch_v2_1_2015.proxy_price.display = function(value)
  return "Proxy Price: "..value
end

-- Translate: Proxy Price
nasdaq_nsmequities_lastsale_itch_v2_1_2015.proxy_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Proxy Price
nasdaq_nsmequities_lastsale_itch_v2_1_2015.proxy_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.proxy_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_lastsale_itch_v2_1_2015.proxy_price.translate(raw)
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.proxy_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.proxy_price, range, value, display)

  return offset + length, value
end

-- Reason
nasdaq_nsmequities_lastsale_itch_v2_1_2015.reason = {}

-- Size: Reason
nasdaq_nsmequities_lastsale_itch_v2_1_2015.reason.size = 4

-- Display: Reason
nasdaq_nsmequities_lastsale_itch_v2_1_2015.reason.display = function(value)
  if value == "T1" then
    return "Reason: Halt News Pending (T1)"
  end
  if value == "T2" then
    return "Reason: Halt News Disseminated (T2)"
  end
  if value == "T5" then
    return "Reason: Single Stock Trading Pause In Effect (T5)"
  end
  if value == "T6" then
    return "Reason: Regulatory Halt Extraordinary Market Activity (T6)"
  end
  if value == "T8" then
    return "Reason: Halt Etf (T8)"
  end
  if value == "T12" then
    return "Reason: Trading Halted For Information Requested By Listing Market (T12)"
  end
  if value == "H4" then
    return "Reason: Halt Non Compliance (H4)"
  end
  if value == "H9" then
    return "Reason: Halt Filings Not Current (H9)"
  end
  if value == "H10" then
    return "Reason: Halt Sec Trading Suspension (H10)"
  end
  if value == "H11" then
    return "Reason: Halt Regulatory Concern (H11)"
  end
  if value == "O1" then
    return "Reason: Operations Halt Contact Market Operations (O1)"
  end
  if value == "LUDP" then
    return "Reason: Volatility Trading Pause (LUDP)"
  end
  if value == "LUDS" then
    return "Reason: Volatility Trading Pause Straddle Condition (LUDS)"
  end
  if value == "MWC1" then
    return "Reason: Market Wide Circuit Breaker Halt Level 1 (MWC1)"
  end
  if value == "MWC2" then
    return "Reason: Market Wide Circuit Breaker Halt Level 2 (MWC2)"
  end
  if value == "MWC3" then
    return "Reason: Market Wide Circuit Breaker Halt Level 3 (MWC3)"
  end
  if value == "MWC0" then
    return "Reason: Market Wide Circuit Breaker Halt Carry Over From Previous Day (MWC0)"
  end
  if value == "IPO1" then
    return "Reason: Ipo Issue Not Yet Trading (IPO1)"
  end
  if value == "M1" then
    return "Reason: Corporate Action (M1)"
  end
  if value == "M2" then
    return "Reason: Quotation Not Available (M2)"
  end
  if value == "T3" then
    return "Reason: News And Resumption Times (T3)"
  end
  if value == "T7" then
    return "Reason: Single Stock Trading Pause Quotation Only Period (T7)"
  end
  if value == "R4" then
    return "Reason: Qualifications Issues Reviewed Resolved Quotations Trading To Resume (R4)"
  end
  if value == "R9" then
    return "Reason: Filing Requirements Satisfied Resolved Quotations Trading To Resume (R9)"
  end
  if value == "C3" then
    return "Reason: Issuer News Not Forthcoming Quotations Trading To Resume (C3)"
  end
  if value == "C4" then
    return "Reason: Qualifications Halt Ended Maintenance Requirements Met Resume (C4)"
  end
  if value == "C9" then
    return "Reason: Qualifications Halt Concluded Filings Met Quotes Trades To Resume (C9)"
  end
  if value == "C11" then
    return "Reason: Trade Halt Concluded By Other Regulatory Auth Quotes Trades Resume (C11)"
  end
  if value == "MWCQ" then
    return "Reason: Market Wide Circuit Breaker Resumption (MWCQ)"
  end
  if value == "R1" then
    return "Reason: New Issue Available (R1)"
  end
  if value == "R2" then
    return "Reason: Issue Available (R2)"
  end
  if value == "IPOQ" then
    return "Reason: Ipo Security Released For Quotation Nasdaq Securities Only (IPOQ)"
  end
  if value == "IPOE" then
    return "Reason: Ipo Security Positioning Window Extension Nasdaq Securities Only (IPOE)"
  end
  if value == " " then
    return "Reason: Reason Not Available (<whitespace>)"
  end

  return "Reason: Unknown("..value..")"
end

-- Dissect: Reason
nasdaq_nsmequities_lastsale_itch_v2_1_2015.reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.reason, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
nasdaq_nsmequities_lastsale_itch_v2_1_2015.reg_sho_action = {}

-- Size: Reg Sho Action
nasdaq_nsmequities_lastsale_itch_v2_1_2015.reg_sho_action.size = 1

-- Display: Reg Sho Action
nasdaq_nsmequities_lastsale_itch_v2_1_2015.reg_sho_action.display = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price Test (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Restriction In Effect (1)"
  end
  if value == "2" then
    return "Reg Sho Action: Restriction Remains (2)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
nasdaq_nsmequities_lastsale_itch_v2_1_2015.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_nsmequities_lastsale_itch_v2_1_2015.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_nsmequities_lastsale_itch_v2_1_2015.round_lot_size.size = 4

-- Display: Round Lot Size
nasdaq_nsmequities_lastsale_itch_v2_1_2015.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_nsmequities_lastsale_itch_v2_1_2015.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Round Lots Only
nasdaq_nsmequities_lastsale_itch_v2_1_2015.round_lots_only = {}

-- Size: Round Lots Only
nasdaq_nsmequities_lastsale_itch_v2_1_2015.round_lots_only.size = 1

-- Display: Round Lots Only
nasdaq_nsmequities_lastsale_itch_v2_1_2015.round_lots_only.display = function(value)
  if value == "Y" then
    return "Round Lots Only: Round Lots Only (Y)"
  end
  if value == "N" then
    return "Round Lots Only: No Restrictions (N)"
  end

  return "Round Lots Only: Unknown("..value..")"
end

-- Dissect: Round Lots Only
nasdaq_nsmequities_lastsale_itch_v2_1_2015.round_lots_only.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.round_lots_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.round_lots_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.round_lots_only, range, value, display)

  return offset + length, value
end

-- Security Class
nasdaq_nsmequities_lastsale_itch_v2_1_2015.security_class = {}

-- Size: Security Class
nasdaq_nsmequities_lastsale_itch_v2_1_2015.security_class.size = 1

-- Display: Security Class
nasdaq_nsmequities_lastsale_itch_v2_1_2015.security_class.display = function(value)
  if value == "Q" then
    return "Security Class: Nasdaq (Q)"
  end
  if value == "N" then
    return "Security Class: Nyse (N)"
  end
  if value == "A" then
    return "Security Class: Nyse Mkt (A)"
  end
  if value == "P" then
    return "Security Class: Nyse Arca (P)"
  end
  if value == "Z" then
    return "Security Class: Bats (Z)"
  end

  return "Security Class: Unknown("..value..")"
end

-- Dissect: Security Class
nasdaq_nsmequities_lastsale_itch_v2_1_2015.security_class.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.security_class.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.security_class.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.security_class, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_nsmequities_lastsale_itch_v2_1_2015.sequence_number = {}

-- Size: Sequence Number
nasdaq_nsmequities_lastsale_itch_v2_1_2015.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_nsmequities_lastsale_itch_v2_1_2015.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_nsmequities_lastsale_itch_v2_1_2015.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_nsmequities_lastsale_itch_v2_1_2015.session = {}

-- Size: Session
nasdaq_nsmequities_lastsale_itch_v2_1_2015.session.size = 10

-- Display: Session
nasdaq_nsmequities_lastsale_itch_v2_1_2015.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_nsmequities_lastsale_itch_v2_1_2015.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.session.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.session, range, value, display)

  return offset + length, value
end

-- Settlement Type
nasdaq_nsmequities_lastsale_itch_v2_1_2015.settlement_type = {}

-- Size: Settlement Type
nasdaq_nsmequities_lastsale_itch_v2_1_2015.settlement_type.size = 1

-- Display: Settlement Type
nasdaq_nsmequities_lastsale_itch_v2_1_2015.settlement_type.display = function(value)
  if value == "@" then
    return "Settlement Type: Regular Settlement (@)"
  end
  if value == "C" then
    return "Settlement Type: Cash Settlement (C)"
  end
  if value == "N" then
    return "Settlement Type: Next Day Settlement (N)"
  end
  if value == "R" then
    return "Settlement Type: Seller Settlement (R)"
  end

  return "Settlement Type: Unknown("..value..")"
end

-- Dissect: Settlement Type
nasdaq_nsmequities_lastsale_itch_v2_1_2015.settlement_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.settlement_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.settlement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.settlement_type, range, value, display)

  return offset + length, value
end

-- Short Sale Threshold Indicator
nasdaq_nsmequities_lastsale_itch_v2_1_2015.short_sale_threshold_indicator = {}

-- Size: Short Sale Threshold Indicator
nasdaq_nsmequities_lastsale_itch_v2_1_2015.short_sale_threshold_indicator.size = 1

-- Display: Short Sale Threshold Indicator
nasdaq_nsmequities_lastsale_itch_v2_1_2015.short_sale_threshold_indicator.display = function(value)
  if value == "Y" then
    return "Short Sale Threshold Indicator: Restricted (Y)"
  end
  if value == "N" then
    return "Short Sale Threshold Indicator: Not Restricted (N)"
  end
  if value == " " then
    return "Short Sale Threshold Indicator: Not Available (<whitespace>)"
  end

  return "Short Sale Threshold Indicator: Unknown("..value..")"
end

-- Dissect: Short Sale Threshold Indicator
nasdaq_nsmequities_lastsale_itch_v2_1_2015.short_sale_threshold_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.short_sale_threshold_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.short_sale_threshold_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Special Sale Condition
nasdaq_nsmequities_lastsale_itch_v2_1_2015.special_sale_condition = {}

-- Size: Special Sale Condition
nasdaq_nsmequities_lastsale_itch_v2_1_2015.special_sale_condition.size = 1

-- Display: Special Sale Condition
nasdaq_nsmequities_lastsale_itch_v2_1_2015.special_sale_condition.display = function(value)
  if value == "A" then
    return "Special Sale Condition: Acquisition (A)"
  end
  if value == "B" then
    return "Special Sale Condition: Bunched (B)"
  end
  if value == "D" then
    return "Special Sale Condition: Distribution (D)"
  end
  if value == "H" then
    return "Special Sale Condition: Price Variation Transaction (H)"
  end
  if value == "M" then
    return "Special Sale Condition: Official Close Price (M)"
  end
  if value == "P" then
    return "Special Sale Condition: Prior Reference Price (P)"
  end
  if value == "Q" then
    return "Special Sale Condition: Official Opening Price (Q)"
  end
  if value == "S" then
    return "Special Sale Condition: Split Trade (S)"
  end
  if value == "W" then
    return "Special Sale Condition: Average Price Trade (W)"
  end
  if value == "X" then
    return "Special Sale Condition: Cross Trade (X)"
  end
  if value == "o" then
    return "Special Sale Condition: Odd Lot Execution (o)"
  end
  if value == "x" then
    return "Special Sale Condition: Odd Lot Cross Execution (x)"
  end
  if value == " " then
    return "Special Sale Condition: Not Applicable (<whitespace>)"
  end

  return "Special Sale Condition: Unknown("..value..")"
end

-- Dissect: Special Sale Condition
nasdaq_nsmequities_lastsale_itch_v2_1_2015.special_sale_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.special_sale_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.special_sale_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.special_sale_condition, range, value, display)

  return offset + length, value
end

-- Stock
nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock = {}

-- Size: Stock
nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock.size = 8

-- Display: Stock
nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.stock, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_nsmequities_lastsale_itch_v2_1_2015.timestamp = {}

-- Size: Timestamp
nasdaq_nsmequities_lastsale_itch_v2_1_2015.timestamp.size = 6

-- Display: Timestamp
nasdaq_nsmequities_lastsale_itch_v2_1_2015.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_nsmequities_lastsale_itch_v2_1_2015.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_nsmequities_lastsale_itch_v2_1_2015.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_nsmequities_lastsale_itch_v2_1_2015.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
nasdaq_nsmequities_lastsale_itch_v2_1_2015.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_nsmequities_lastsale_itch_v2_1_2015.tracking_number = {}

-- Size: Tracking Number
nasdaq_nsmequities_lastsale_itch_v2_1_2015.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_nsmequities_lastsale_itch_v2_1_2015.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_nsmequities_lastsale_itch_v2_1_2015.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Trade Control Number
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_control_number = {}

-- Size: Trade Control Number
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_control_number.size = 10

-- Display: Trade Control Number
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_control_number.display = function(value)
  return "Trade Control Number: "..value
end

-- Dissect: Trade Control Number
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_control_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_control_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_control_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.trade_control_number, range, value, display)

  return offset + length, value
end

-- Trade Price
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_price = {}

-- Size: Trade Price
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_price.size = 4

-- Display: Trade Price
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Trade Price
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_price.translate(raw)
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Size
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_size = {}

-- Size: Trade Size
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_size.size = 4

-- Display: Trade Size
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_size.display = function(value)
  return "Trade Size: "..value
end

-- Dissect: Trade Size
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.trade_size, range, value, display)

  return offset + length, value
end

-- Trade Through Exemption
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_through_exemption = {}

-- Size: Trade Through Exemption
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_through_exemption.size = 1

-- Display: Trade Through Exemption
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_through_exemption.display = function(value)
  if value == "F" then
    return "Trade Through Exemption: Intermarket Sweep (F)"
  end
  if value == "O" then
    return "Trade Through Exemption: Opening Print (O)"
  end
  if value == "4" then
    return "Trade Through Exemption: Derivative Priced (4)"
  end
  if value == "5" then
    return "Trade Through Exemption: Re Opening Print (5)"
  end
  if value == "6" then
    return "Trade Through Exemption: Closing Print (6)"
  end
  if value == " " then
    return "Trade Through Exemption: Not Applicable (<whitespace>)"
  end

  return "Trade Through Exemption: Unknown("..value..")"
end

-- Dissect: Trade Through Exemption
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_through_exemption.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_through_exemption.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_through_exemption.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.trade_through_exemption, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NsmEquities LastSale Itch 2.1.2015
-----------------------------------------------------------------------

-- Ipo Quoting Period Update Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_quoting_period_update_message = {}

-- Size: Ipo Quoting Period Update Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_quoting_period_update_message.size =
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_quotation_release_time.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_quotation_release_qualifier.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_price.size

-- Display: Ipo Quoting Period Update Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_quoting_period_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ipo Quoting Period Update Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_quoting_period_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock: Alphanumeric
  index, stock = nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock.dissect(buffer, index, packet, parent)

  -- Ipo Quotation Release Time: Integer
  index, ipo_quotation_release_time = nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_quotation_release_time.dissect(buffer, index, packet, parent)

  -- Ipo Quotation Release Qualifier: Alphanumeric
  index, ipo_quotation_release_qualifier = nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_quotation_release_qualifier.dissect(buffer, index, packet, parent)

  -- Ipo Price: Price (4)
  index, ipo_price = nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ipo Quoting Period Update Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_quoting_period_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.ipo_quoting_period_update_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_quoting_period_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_quoting_period_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_quoting_period_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Mwcb Status Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.mwcb_status_message = {}

-- Size: Mwcb Status Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.mwcb_status_message.size =
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.breached_level.size

-- Display: Mwcb Status Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.mwcb_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Status Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.mwcb_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Breached Level: Alphanumeric
  index, breached_level = nasdaq_nsmequities_lastsale_itch_v2_1_2015.breached_level.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Status Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.mwcb_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.mwcb_status_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_lastsale_itch_v2_1_2015.mwcb_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.mwcb_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.mwcb_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Mwcb Decline Level Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.mwcb_decline_level_message = {}

-- Size: Mwcb Decline Level Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.mwcb_decline_level_message.size =
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.level_1.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.level_2.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.level_3.size

-- Display: Mwcb Decline Level Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.mwcb_decline_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Decline Level Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.mwcb_decline_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Level 1: Price (8)
  index, level_1 = nasdaq_nsmequities_lastsale_itch_v2_1_2015.level_1.dissect(buffer, index, packet, parent)

  -- Level 2: Price (8)
  index, level_2 = nasdaq_nsmequities_lastsale_itch_v2_1_2015.level_2.dissect(buffer, index, packet, parent)

  -- Level 3: Price (8)
  index, level_3 = nasdaq_nsmequities_lastsale_itch_v2_1_2015.level_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Decline Level Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.mwcb_decline_level_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.mwcb_decline_level_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_lastsale_itch_v2_1_2015.mwcb_decline_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.mwcb_decline_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.mwcb_decline_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Adjusted Closing Price Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.adjusted_closing_price_message = {}

-- Size: Adjusted Closing Price Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.adjusted_closing_price_message.size =
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.security_class.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.adjusted_closing_price.size

-- Display: Adjusted Closing Price Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.adjusted_closing_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Adjusted Closing Price Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.adjusted_closing_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock: Alphanumeric
  index, stock = nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_nsmequities_lastsale_itch_v2_1_2015.security_class.dissect(buffer, index, packet, parent)

  -- Adjusted Closing Price: Price (4)
  index, adjusted_closing_price = nasdaq_nsmequities_lastsale_itch_v2_1_2015.adjusted_closing_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Adjusted Closing Price Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.adjusted_closing_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.adjusted_closing_price_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_lastsale_itch_v2_1_2015.adjusted_closing_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.adjusted_closing_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.adjusted_closing_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Directory Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock_directory_message = {}

-- Size: Stock Directory Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock_directory_message.size =
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.market_category.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.financial_status_indicator.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.round_lot_size.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.round_lots_only.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_classification.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_sub_type.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.authenticity.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.short_sale_threshold_indicator.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_flag.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.luld_reference_price_tier.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.etp_flag.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.etp_leverage_factor.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.inverse_indicator.size

-- Display: Stock Directory Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock: Alphanumeric
  index, stock = nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock.dissect(buffer, index, packet, parent)

  -- Market Category: Alphanumeric
  index, market_category = nasdaq_nsmequities_lastsale_itch_v2_1_2015.market_category.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Alphanumeric
  index, financial_status_indicator = nasdaq_nsmequities_lastsale_itch_v2_1_2015.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Integer
  index, round_lot_size = nasdaq_nsmequities_lastsale_itch_v2_1_2015.round_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lots Only: Alphanumeric
  index, round_lots_only = nasdaq_nsmequities_lastsale_itch_v2_1_2015.round_lots_only.dissect(buffer, index, packet, parent)

  -- Issue Classification: Alphanumeric
  index, issue_classification = nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_classification.dissect(buffer, index, packet, parent)

  -- Issue Sub Type: Alphanumeric
  index, issue_sub_type = nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_sub_type.dissect(buffer, index, packet, parent)

  -- Authenticity: Alphanumeric
  index, authenticity = nasdaq_nsmequities_lastsale_itch_v2_1_2015.authenticity.dissect(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: Alphanumeric
  index, short_sale_threshold_indicator = nasdaq_nsmequities_lastsale_itch_v2_1_2015.short_sale_threshold_indicator.dissect(buffer, index, packet, parent)

  -- Ipo Flag: Alphanumeric
  index, ipo_flag = nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_flag.dissect(buffer, index, packet, parent)

  -- Luld Reference Price Tier: Alphanumeric
  index, luld_reference_price_tier = nasdaq_nsmequities_lastsale_itch_v2_1_2015.luld_reference_price_tier.dissect(buffer, index, packet, parent)

  -- Etp Flag: Alphanumeric
  index, etp_flag = nasdaq_nsmequities_lastsale_itch_v2_1_2015.etp_flag.dissect(buffer, index, packet, parent)

  -- Etp Leverage Factor: Integer
  index, etp_leverage_factor = nasdaq_nsmequities_lastsale_itch_v2_1_2015.etp_leverage_factor.dissect(buffer, index, packet, parent)

  -- Inverse Indicator: Alphanumeric
  index, inverse_indicator = nasdaq_nsmequities_lastsale_itch_v2_1_2015.inverse_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.stock_directory_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.reg_sho_short_sale_price_test_restricted_indicator_message = {}

-- Size: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.reg_sho_short_sale_price_test_restricted_indicator_message.size =
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.reg_sho_action.size

-- Display: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.reg_sho_short_sale_price_test_restricted_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.reg_sho_short_sale_price_test_restricted_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock: Alphanumeric
  index, stock = nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: Alphanumeric
  index, reg_sho_action = nasdaq_nsmequities_lastsale_itch_v2_1_2015.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.reg_sho_short_sale_price_test_restricted_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.reg_sho_short_sale_price_test_restricted_indicator_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_lastsale_itch_v2_1_2015.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.reg_sho_short_sale_price_test_restricted_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Trading Action Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock_trading_action_message = {}

-- Size: Stock Trading Action Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock_trading_action_message.size =
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_symbol.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.security_class.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.current_trading_state.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.reason.size

-- Display: Stock Trading Action Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Trading Action Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_nsmequities_lastsale_itch_v2_1_2015.security_class.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alphanumeric
  index, current_trading_state = nasdaq_nsmequities_lastsale_itch_v2_1_2015.current_trading_state.dissect(buffer, index, packet, parent)

  -- Reason: Alphanumeric
  index, reason = nasdaq_nsmequities_lastsale_itch_v2_1_2015.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Trading Action Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.stock_trading_action_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Corrected Sale Condition Modifier
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_sale_condition_modifier = {}

-- Size: Corrected Sale Condition Modifier
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_sale_condition_modifier.size =
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_settlement_type.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_through_exemption.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_extended_hours_or_sold_code.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_special_sale_condition.size

-- Display: Corrected Sale Condition Modifier
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_sale_condition_modifier.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Corrected Sale Condition Modifier
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_sale_condition_modifier.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Corrected Settlement Type: Alphanumeric
  index, corrected_settlement_type = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_settlement_type.dissect(buffer, index, packet, parent)

  -- Corrected Trade Through Exemption: Alphanumeric
  index, corrected_trade_through_exemption = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_through_exemption.dissect(buffer, index, packet, parent)

  -- Corrected Extended Hours Or Sold Code: Alphanumeric
  index, corrected_extended_hours_or_sold_code = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_extended_hours_or_sold_code.dissect(buffer, index, packet, parent)

  -- Corrected Special Sale Condition: Alphanumeric
  index, corrected_special_sale_condition = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_special_sale_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Corrected Sale Condition Modifier
nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_sale_condition_modifier.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.corrected_sale_condition_modifier, buffer(offset, 0))
    local index = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_sale_condition_modifier.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_sale_condition_modifier.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_sale_condition_modifier.fields(buffer, offset, packet, parent)
  end
end

-- Original Sale Condition Modifier
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_sale_condition_modifier = {}

-- Size: Original Sale Condition Modifier
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_sale_condition_modifier.size =
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_settlement_type.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_through_exemption.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_extended_hours_or_sold_code.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_special_sale_condition.size

-- Display: Original Sale Condition Modifier
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_sale_condition_modifier.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Original Sale Condition Modifier
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_sale_condition_modifier.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Original Settlement Type: Alphanumeric
  index, original_settlement_type = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_settlement_type.dissect(buffer, index, packet, parent)

  -- Original Trade Through Exemption: Alphanumeric
  index, original_trade_through_exemption = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_through_exemption.dissect(buffer, index, packet, parent)

  -- Original Extended Hours Or Sold Code: Alphanumeric
  index, original_extended_hours_or_sold_code = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_extended_hours_or_sold_code.dissect(buffer, index, packet, parent)

  -- Original Special Sale Condition: Alphanumeric
  index, original_special_sale_condition = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_special_sale_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Original Sale Condition Modifier
nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_sale_condition_modifier.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.original_sale_condition_modifier, buffer(offset, 0))
    local index = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_sale_condition_modifier.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_sale_condition_modifier.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_sale_condition_modifier.fields(buffer, offset, packet, parent)
  end
end

-- Etmf Trade Correction Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_trade_correction_message = {}

-- Size: Etmf Trade Correction Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_trade_correction_message.size =
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.market_center_identifier.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_symbol.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.security_class.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_control_number.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_price.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_nav_premium_discount_amount.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_size.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_sale_condition_modifier.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_control_number.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_price.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_nav_premium_discount_amount.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_size.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_sale_condition_modifier.size

-- Display: Etmf Trade Correction Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Etmf Trade Correction Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Identifier: Alphanumeric
  index, market_center_identifier = nasdaq_nsmequities_lastsale_itch_v2_1_2015.market_center_identifier.dissect(buffer, index, packet, parent)

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_nsmequities_lastsale_itch_v2_1_2015.security_class.dissect(buffer, index, packet, parent)

  -- Original Trade Control Number: Alphanumeric
  index, original_trade_control_number = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_control_number.dissect(buffer, index, packet, parent)

  -- Original Trade Price: Price (4)
  index, original_trade_price = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Nav Premium Discount Amount: Signed Price (4)
  index, original_nav_premium_discount_amount = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_nav_premium_discount_amount.dissect(buffer, index, packet, parent)

  -- Original Trade Size: Integer
  index, original_trade_size = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_size.dissect(buffer, index, packet, parent)

  -- Original Sale Condition Modifier: Struct of 4 fields
  index, original_sale_condition_modifier = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_sale_condition_modifier.dissect(buffer, index, packet, parent)

  -- Corrected Trade Control Number: Alphanumeric
  index, corrected_trade_control_number = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_control_number.dissect(buffer, index, packet, parent)

  -- Corrected Trade Price: Price (4)
  index, corrected_trade_price = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_price.dissect(buffer, index, packet, parent)

  -- Corrected Nav Premium Discount Amount: Signed Price (4)
  index, corrected_nav_premium_discount_amount = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_nav_premium_discount_amount.dissect(buffer, index, packet, parent)

  -- Corrected Trade Size: Integer
  index, corrected_trade_size = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_size.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition Modifier: Struct of 4 fields
  index, corrected_sale_condition_modifier = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_sale_condition_modifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Etmf Trade Correction Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.etmf_trade_correction_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Correction Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_correction_message = {}

-- Size: Trade Correction Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_correction_message.size =
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.market_center_identifier.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_symbol.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.security_class.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_control_number.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_price.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_size.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_sale_condition_modifier.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_control_number.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_price.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_size.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_sale_condition_modifier.size

-- Display: Trade Correction Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Identifier: Alphanumeric
  index, market_center_identifier = nasdaq_nsmequities_lastsale_itch_v2_1_2015.market_center_identifier.dissect(buffer, index, packet, parent)

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_nsmequities_lastsale_itch_v2_1_2015.security_class.dissect(buffer, index, packet, parent)

  -- Original Trade Control Number: Alphanumeric
  index, original_trade_control_number = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_control_number.dissect(buffer, index, packet, parent)

  -- Original Trade Price: Price (4)
  index, original_trade_price = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Trade Size: Integer
  index, original_trade_size = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_size.dissect(buffer, index, packet, parent)

  -- Original Sale Condition Modifier: Struct of 4 fields
  index, original_sale_condition_modifier = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_sale_condition_modifier.dissect(buffer, index, packet, parent)

  -- Corrected Trade Control Number: Alphanumeric
  index, corrected_trade_control_number = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_control_number.dissect(buffer, index, packet, parent)

  -- Corrected Trade Price: Price (4)
  index, corrected_trade_price = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_price.dissect(buffer, index, packet, parent)

  -- Corrected Trade Size: Integer
  index, corrected_trade_size = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_trade_size.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition Modifier: Struct of 4 fields
  index, corrected_sale_condition_modifier = nasdaq_nsmequities_lastsale_itch_v2_1_2015.corrected_sale_condition_modifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.trade_correction_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Etmf Trade Cancel Error Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_trade_cancel_error_message = {}

-- Size: Etmf Trade Cancel Error Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_trade_cancel_error_message.size =
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.market_center_identifier.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_symbol.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.security_class.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_control_number.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_price.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_nav_premium_discount_amount.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_size.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_sale_condition_modifier.size

-- Display: Etmf Trade Cancel Error Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_trade_cancel_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Etmf Trade Cancel Error Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_trade_cancel_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Identifier: Alphanumeric
  index, market_center_identifier = nasdaq_nsmequities_lastsale_itch_v2_1_2015.market_center_identifier.dissect(buffer, index, packet, parent)

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_nsmequities_lastsale_itch_v2_1_2015.security_class.dissect(buffer, index, packet, parent)

  -- Original Trade Control Number: Alphanumeric
  index, original_trade_control_number = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_control_number.dissect(buffer, index, packet, parent)

  -- Original Trade Price: Price (4)
  index, original_trade_price = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Nav Premium Discount Amount: Signed Price (4)
  index, original_nav_premium_discount_amount = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_nav_premium_discount_amount.dissect(buffer, index, packet, parent)

  -- Original Trade Size: Integer
  index, original_trade_size = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_size.dissect(buffer, index, packet, parent)

  -- Original Sale Condition Modifier: Struct of 4 fields
  index, original_sale_condition_modifier = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_sale_condition_modifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Etmf Trade Cancel Error Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_trade_cancel_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.etmf_trade_cancel_error_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_trade_cancel_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_trade_cancel_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_trade_cancel_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Error Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_cancel_error_message = {}

-- Size: Trade Cancel Error Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_cancel_error_message.size =
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.market_center_identifier.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_symbol.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.security_class.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_control_number.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_price.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_size.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_sale_condition_modifier.size

-- Display: Trade Cancel Error Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_cancel_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Error Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_cancel_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Identifier: Alphanumeric
  index, market_center_identifier = nasdaq_nsmequities_lastsale_itch_v2_1_2015.market_center_identifier.dissect(buffer, index, packet, parent)

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_nsmequities_lastsale_itch_v2_1_2015.security_class.dissect(buffer, index, packet, parent)

  -- Original Trade Control Number: Alphanumeric
  index, original_trade_control_number = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_control_number.dissect(buffer, index, packet, parent)

  -- Original Trade Price: Price (4)
  index, original_trade_price = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Trade Size: Integer
  index, original_trade_size = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_trade_size.dissect(buffer, index, packet, parent)

  -- Original Sale Condition Modifier: Struct of 4 fields
  index, original_sale_condition_modifier = nasdaq_nsmequities_lastsale_itch_v2_1_2015.original_sale_condition_modifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Error Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_cancel_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.trade_cancel_error_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_cancel_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_cancel_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_cancel_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Sale Condition Modifier
nasdaq_nsmequities_lastsale_itch_v2_1_2015.sale_condition_modifier = {}

-- Size: Sale Condition Modifier
nasdaq_nsmequities_lastsale_itch_v2_1_2015.sale_condition_modifier.size =
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.settlement_type.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_through_exemption.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.extended_hours_or_sold_code.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.special_sale_condition.size

-- Display: Sale Condition Modifier
nasdaq_nsmequities_lastsale_itch_v2_1_2015.sale_condition_modifier.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sale Condition Modifier
nasdaq_nsmequities_lastsale_itch_v2_1_2015.sale_condition_modifier.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Settlement Type: Alphanumeric
  index, settlement_type = nasdaq_nsmequities_lastsale_itch_v2_1_2015.settlement_type.dissect(buffer, index, packet, parent)

  -- Trade Through Exemption: Alphanumeric
  index, trade_through_exemption = nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_through_exemption.dissect(buffer, index, packet, parent)

  -- Extended Hours Or Sold Code: Alphanumeric
  index, extended_hours_or_sold_code = nasdaq_nsmequities_lastsale_itch_v2_1_2015.extended_hours_or_sold_code.dissect(buffer, index, packet, parent)

  -- Special Sale Condition: Alphanumeric
  index, special_sale_condition = nasdaq_nsmequities_lastsale_itch_v2_1_2015.special_sale_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sale Condition Modifier
nasdaq_nsmequities_lastsale_itch_v2_1_2015.sale_condition_modifier.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.sale_condition_modifier, buffer(offset, 0))
    local index = nasdaq_nsmequities_lastsale_itch_v2_1_2015.sale_condition_modifier.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.sale_condition_modifier.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.sale_condition_modifier.fields(buffer, offset, packet, parent)
  end
end

-- Etmf Trade Report Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_trade_report_message = {}

-- Size: Etmf Trade Report Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_trade_report_message.size =
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.market_center_identifier.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_symbol.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.security_class.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_control_number.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.proxy_price.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_size.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.nav_premium_discount_amount.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.sale_condition_modifier.size

-- Display: Etmf Trade Report Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Etmf Trade Report Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Identifier: Alphanumeric
  index, market_center_identifier = nasdaq_nsmequities_lastsale_itch_v2_1_2015.market_center_identifier.dissect(buffer, index, packet, parent)

  -- Etmf Symbol: Alphanumeric
  index, etmf_symbol = nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_nsmequities_lastsale_itch_v2_1_2015.security_class.dissect(buffer, index, packet, parent)

  -- Trade Control Number: Alphanumeric
  index, trade_control_number = nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_control_number.dissect(buffer, index, packet, parent)

  -- Proxy Price: Price (4)
  index, proxy_price = nasdaq_nsmequities_lastsale_itch_v2_1_2015.proxy_price.dissect(buffer, index, packet, parent)

  -- Trade Size: Integer
  index, trade_size = nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_size.dissect(buffer, index, packet, parent)

  -- Nav Premium Discount Amount: Signed Price (4)
  index, nav_premium_discount_amount = nasdaq_nsmequities_lastsale_itch_v2_1_2015.nav_premium_discount_amount.dissect(buffer, index, packet, parent)

  -- Sale Condition Modifier: Struct of 4 fields
  index, sale_condition_modifier = nasdaq_nsmequities_lastsale_itch_v2_1_2015.sale_condition_modifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Etmf Trade Report Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.etmf_trade_report_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Report Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_report_message = {}

-- Size: Trade Report Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_report_message.size =
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.market_center_identifier.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_symbol.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.security_class.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_control_number.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_price.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_size.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.sale_condition_modifier.size

-- Display: Trade Report Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Identifier: Alphanumeric
  index, market_center_identifier = nasdaq_nsmequities_lastsale_itch_v2_1_2015.market_center_identifier.dissect(buffer, index, packet, parent)

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_nsmequities_lastsale_itch_v2_1_2015.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_nsmequities_lastsale_itch_v2_1_2015.security_class.dissect(buffer, index, packet, parent)

  -- Trade Control Number: Alphanumeric
  index, trade_control_number = nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_control_number.dissect(buffer, index, packet, parent)

  -- Trade Price: Price (4)
  index, trade_price = nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Size: Integer
  index, trade_size = nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_size.dissect(buffer, index, packet, parent)

  -- Sale Condition Modifier: Struct of 4 fields
  index, sale_condition_modifier = nasdaq_nsmequities_lastsale_itch_v2_1_2015.sale_condition_modifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.trade_report_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.system_event_message = {}

-- Size: System Event Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.system_event_message.size =
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.event_code.size

-- Display: System Event Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Code: Alphanumeric
  index, event_code = nasdaq_nsmequities_lastsale_itch_v2_1_2015.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_lastsale_itch_v2_1_2015.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_nsmequities_lastsale_itch_v2_1_2015.payload = {}

-- Dissect: Payload
nasdaq_nsmequities_lastsale_itch_v2_1_2015.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Message
  if message_type == "T" then
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Etmf Trade Report Message
  if message_type == "M" then
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_trade_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Error Message
  if message_type == "X" then
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_cancel_error_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Etmf Trade Cancel Error Message
  if message_type == "O" then
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_trade_cancel_error_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if message_type == "C" then
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Etmf Trade Correction Message
  if message_type == "Z" then
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.etmf_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Trading Action Message
  if message_type == "H" then
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Short Sale Price Test Restricted Indicator Message
  if message_type == "Y" then
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.reg_sho_short_sale_price_test_restricted_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if message_type == "R" then
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.stock_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Adjusted Closing Price Message
  if message_type == "G" then
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.adjusted_closing_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Decline Level Message
  if message_type == "V" then
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.mwcb_decline_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Status Message
  if message_type == "W" then
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.mwcb_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ipo Quoting Period Update Message
  if message_type == "K" then
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.ipo_quoting_period_update_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_header = {}

-- Size: Message Header
nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_header.size =
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_length.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.tracking_number.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.timestamp.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_type.size

-- Display: Message Header
nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_length.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_lastsale_itch_v2_1_2015.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_lastsale_itch_v2_1_2015.timestamp.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 14 values
  index, message_type = nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.message_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.message = {}

-- Read runtime size of: Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and nasdaq_nsmequities_lastsale_itch_v2_1_2015.packet_sequence ~= nil then
    local sequence = parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.message_sequence_number, UInt64.new(nasdaq_nsmequities_lastsale_itch_v2_1_2015.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 4 fields
  index, message_header = nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 14 branches
  index = nasdaq_nsmequities_lastsale_itch_v2_1_2015.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_nsmequities_lastsale_itch_v2_1_2015.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_nsmequities_lastsale_itch_v2_1_2015.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.message, buffer(offset, 0))
    local current = nasdaq_nsmequities_lastsale_itch_v2_1_2015.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_lastsale_itch_v2_1_2015.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
nasdaq_nsmequities_lastsale_itch_v2_1_2015.end_of_session = {}

-- Display: End Of Session
nasdaq_nsmequities_lastsale_itch_v2_1_2015.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_nsmequities_lastsale_itch_v2_1_2015.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_nsmequities_lastsale_itch_v2_1_2015.heartbeat = {}

-- Display: Heartbeat
nasdaq_nsmequities_lastsale_itch_v2_1_2015.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_nsmequities_lastsale_itch_v2_1_2015.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_nsmequities_lastsale_itch_v2_1_2015.messages = {}

-- Dissect: Messages
nasdaq_nsmequities_lastsale_itch_v2_1_2015.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if message_count == 65535 then
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.end_of_session.dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_nsmequities_lastsale_itch_v2_1_2015.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
nasdaq_nsmequities_lastsale_itch_v2_1_2015.packet_header = {}

-- Size: Packet Header
nasdaq_nsmequities_lastsale_itch_v2_1_2015.packet_header.size =
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.session.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.sequence_number.size + 
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_count.size

-- Display: Packet Header
nasdaq_nsmequities_lastsale_itch_v2_1_2015.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_nsmequities_lastsale_itch_v2_1_2015.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nsmequities_lastsale_itch_v2_1_2015.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_nsmequities_lastsale_itch_v2_1_2015.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_nsmequities_lastsale_itch_v2_1_2015.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  nasdaq_nsmequities_lastsale_itch_v2_1_2015.packet_sequence = sequence_number

  return index
end

-- Dissect: Packet Header
nasdaq_nsmequities_lastsale_itch_v2_1_2015.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_lastsale_itch_v2_1_2015.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_lastsale_itch_v2_1_2015.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_lastsale_itch_v2_1_2015.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_nsmequities_lastsale_itch_v2_1_2015.packet = {}

-- Verify required size of Udp packet
nasdaq_nsmequities_lastsale_itch_v2_1_2015.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nsmequities_lastsale_itch_v2_1_2015.packet_header.size
end

-- Dissect Packet
nasdaq_nsmequities_lastsale_itch_v2_1_2015.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_nsmequities_lastsale_itch_v2_1_2015.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_nsmequities_lastsale_itch_v2_1_2015.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.init()
end

-- Dissector for Nasdaq NsmEquities LastSale Itch 2.1.2015
function omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015, buffer(), omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.description, "("..buffer:len().." Bytes)")
  return nasdaq_nsmequities_lastsale_itch_v2_1_2015.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq NsmEquities LastSale Itch 2.1.2015 (Udp)
local function omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nsmequities_lastsale_itch_v2_1_2015.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015
  omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NsmEquities LastSale Itch 2.1.2015
omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015:register_heuristic("udp", omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015_udp_heuristic)

-- Register Nasdaq NsmEquities LastSale Itch 2.1.2015 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_nsmequities_lastsale_itch_v2_1_2015)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 2.1.2015
--   Since: 2.1
--   Date: Tuesday, June 30, 2015
--   Specification: NLSSpecification2.1.pdf
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
