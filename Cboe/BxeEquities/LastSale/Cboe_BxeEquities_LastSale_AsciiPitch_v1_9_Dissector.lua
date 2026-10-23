-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe BxeEquities LastSale AsciiPitch 1.9 Protocol
local omi_cboe_bxeequities_lastsale_asciipitch_v1_9 = Proto("Omi.Cboe.BxeEquities.LastSale.AsciiPitch.v1.9", "Cboe BxeEquities LastSale AsciiPitch 1.9")

-- Protocol table
local cboe_bxeequities_lastsale_asciipitch_v1_9 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe BxeEquities LastSale AsciiPitch 1.9 Fields
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.agency_cross_trade = ProtoField.new("Agency Cross Trade", "cboe.bxeequities.lastsale.asciipitch.v1.9.agencycrosstrade", ftypes.STRING, nil, nil, nil, "Corresponds to MMT v3 Level 3.3")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.algorithmic_indicator = ProtoField.new("Algorithmic Indicator", "cboe.bxeequities.lastsale.asciipitch.v1.9.algorithmicindicator", ftypes.STRING, nil, nil, nil, "Corresponds to MMT v3 Level 3.9")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.benchmark_indicator = ProtoField.new("Benchmark Indicator", "cboe.bxeequities.lastsale.asciipitch.v1.9.benchmarkindicator", ftypes.STRING, nil, nil, nil, "Corresponds to MMT v4.1 Level 3.5")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.benchmark_reference_indicator = ProtoField.new("Benchmark Reference Indicator", "cboe.bxeequities.lastsale.asciipitch.v1.9.benchmarkreferenceindicator", ftypes.STRING, nil, nil, nil, "Corresponds to MMT v3 Level 3.5")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.contingent_flag = ProtoField.new("Contingent Flag", "cboe.bxeequities.lastsale.asciipitch.v1.9.contingentflag", ftypes.STRING, nil, nil, nil, "Corresponds to MMT v3 Level 3.12")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.debug_packet = ProtoField.new("Debug Packet", "cboe.bxeequities.lastsale.asciipitch.v1.9.debugpacket", ftypes.STRING, nil, nil, nil, "Debug packets are intended to provide human readable text that may aid in debugging problems.")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.deferral_illiquid_instrument = ProtoField.new("Deferral Illiquid Instrument", "cboe.bxeequities.lastsale.asciipitch.v1.9.deferralilliquidinstrument", ftypes.STRING, nil, nil, nil, "Corresponds to MMT v4.1 Level 4.3")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.deferral_or_enrichment_type = ProtoField.new("Deferral Or Enrichment Type", "cboe.bxeequities.lastsale.asciipitch.v1.9.deferralorenrichmenttype", ftypes.STRING, nil, nil, nil, "Corresponds to MMT v4.1 Level 4.2")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.deferral_size_specific = ProtoField.new("Deferral Size Specific", "cboe.bxeequities.lastsale.asciipitch.v1.9.deferralsizespecific", ftypes.STRING, nil, nil, nil, "Corresponds to MMT v4.1 Level 4.4")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.duplicative_across_jurisdiction = ProtoField.new("Duplicative Across Jurisdiction", "cboe.bxeequities.lastsale.asciipitch.v1.9.duplicativeacrossjurisdiction", ftypes.STRING, nil, nil, nil, "Corresponds to MMT v4.1 Level 5.2")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.duplicative_indicator = ProtoField.new("Duplicative Indicator", "cboe.bxeequities.lastsale.asciipitch.v1.9.duplicativeindicator", ftypes.STRING, nil, nil, nil, "Corresponds to MMT v3 Level 5")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.duplicative_within_jurisdiction = ProtoField.new("Duplicative Within Jurisdiction", "cboe.bxeequities.lastsale.asciipitch.v1.9.duplicativewithinjurisdiction", ftypes.STRING, nil, nil, nil, "Corresponds to MMT v4.1 Level 5.1")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.executed_shares = ProtoField.new("Executed Shares", "cboe.bxeequities.lastsale.asciipitch.v1.9.executedshares", ftypes.UINT64, nil, nil, nil, "Number of shares executed")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.execution_venue = ProtoField.new("Execution Venue", "cboe.bxeequities.lastsale.asciipitch.v1.9.executionvenue", ftypes.STRING, nil, nil, nil, "ISO 10383 segment MIC, and SINT for Systematic internalisers, XOFF for OTC trades")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.giveup_flag = ProtoField.new("Giveup Flag", "cboe.bxeequities.lastsale.asciipitch.v1.9.giveupflag", ftypes.STRING, nil, nil, nil, "Corresponds to MMT v3 Level 3.13")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.intra_group_indicator = ProtoField.new("Intra Group Indicator", "cboe.bxeequities.lastsale.asciipitch.v1.9.intragroupindicator", ftypes.STRING, nil, nil, nil, "Corresponds to MMT v4.1 Level 5.3")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.jurisdiction = ProtoField.new("Jurisdiction", "cboe.bxeequities.lastsale.asciipitch.v1.9.jurisdiction", ftypes.STRING, nil, nil, nil, "Corresponds to venue where the trade was executed")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "cboe.bxeequities.lastsale.asciipitch.v1.9.loginacceptedpacket", ftypes.STRING, nil, nil, nil, "The Soup 2.0 server sends a Login Accepted Packet in response to receiving a valid Login Request from the client.")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "cboe.bxeequities.lastsale.asciipitch.v1.9.loginrejectedpacket", ftypes.STRING, nil, nil, nil, "The Soup 2.0 server sends this packet in response to an invalid Login Request Packet from the client.")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.login_request_packet = ProtoField.new("Login Request Packet", "cboe.bxeequities.lastsale.asciipitch.v1.9.loginrequestpacket", ftypes.STRING, nil, nil, nil, "The Soup 2.0 client must send a Login Request Packet immediately upon establishing a new TCP/IP socket connection to the server.")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.market_mechanism = ProtoField.new("Market Mechanism", "cboe.bxeequities.lastsale.asciipitch.v1.9.marketmechanism", ftypes.STRING, nil, nil, nil, "Corresponds to MMT v4.1 Level 1 “LB” = Central Limit Order Book “QB” = Quote Driven Market “DB” = Dark Order Book “OB” = Oﬀ Book (including Voice or Messaging Trading) “PA” = Periodic Auction “RQ” = Request for Quotes “AH” = Any Other, Including Hybrid (original ESMA definition in RTSs 1 and 2) “HS” = Hybrid System (revised ESMA definition, replacing ’Any Other, Including Hybrid’) “AO” = Any Other, Excluding Hybrid (revised ESMA definition, replacing ’Any Other, Including Hybrid’)")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.modification_indicator = ProtoField.new("Modification Indicator", "cboe.bxeequities.lastsale.asciipitch.v1.9.modificationindicator", ftypes.STRING, nil, nil, nil, "Corresponds to MMT v3 Level 3.4")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.negotiation_flag = ProtoField.new("Negotiation Flag", "cboe.bxeequities.lastsale.asciipitch.v1.9.negotiationflag", ftypes.STRING, nil, nil, nil, "Corresponds to MMT v3 Level 3.2")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.notional_amount = ProtoField.new("Notional Amount", "cboe.bxeequities.lastsale.asciipitch.v1.9.notionalamount", ftypes.UINT64, nil, nil, nil, "Value of the trade, in the major currency. Price times Executed Shares")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.notional_currency = ProtoField.new("Notional Currency", "cboe.bxeequities.lastsale.asciipitch.v1.9.notionalcurrency", ftypes.STRING, nil, nil, nil, "ISO 3-letter Currency code representing the major currency in which the notional amount is denominated.")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.off_book_automated = ProtoField.new("Off Book Automated", "cboe.bxeequities.lastsale.asciipitch.v1.9.offbookautomated", ftypes.STRING, nil, nil, nil, "Corresponds to MMT v4.1 Level 3.7")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.packet_type = ProtoField.new("Packet Type", "cboe.bxeequities.lastsale.asciipitch.v1.9.packettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.password = ProtoField.new("Password", "cboe.bxeequities.lastsale.asciipitch.v1.9.password", ftypes.STRING, nil, nil, nil, "Login password")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.portfolio_flag = ProtoField.new("Portfolio Flag", "cboe.bxeequities.lastsale.asciipitch.v1.9.portfolioflag", ftypes.STRING, nil, nil, nil, "Corresponds to MMT v3 Level 3.11")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.post_trade_deferral_reason = ProtoField.new("Post Trade Deferral Reason", "cboe.bxeequities.lastsale.asciipitch.v1.9.posttradedeferralreason", ftypes.STRING, nil, nil, nil, "Corresponds to MMT v3 Level 4.1")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.pre_trade_transparency_waiver = ProtoField.new("Pre Trade Transparency Waiver", "cboe.bxeequities.lastsale.asciipitch.v1.9.pretradetransparencywaiver", ftypes.STRING, nil, nil, nil, "Corresponds to MMT v3 Level 3.10")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.price = ProtoField.new("Price", "cboe.bxeequities.lastsale.asciipitch.v1.9.price", ftypes.UINT64, nil, nil, nil, "Price of the trade. This may be zero if the price is pending, as denoted by the “Price Discovery Process” field")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.price_currency = ProtoField.new("Price Currency", "cboe.bxeequities.lastsale.asciipitch.v1.9.pricecurrency", ftypes.STRING, nil, nil, nil, "ISO 3-letter Currency code")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.price_discovery_process = ProtoField.new("Price Discovery Process", "cboe.bxeequities.lastsale.asciipitch.v1.9.pricediscoveryprocess", ftypes.STRING, nil, nil, nil, "Corresponds to MMT v3 Level 3.8")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.price_notation = ProtoField.new("Price Notation", "cboe.bxeequities.lastsale.asciipitch.v1.9.pricenotation", ftypes.STRING)
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.publication_date_time = ProtoField.new("Publication Date Time", "cboe.bxeequities.lastsale.asciipitch.v1.9.publicationdatetime", ftypes.STRING, nil, nil, nil, "Date and time the trade was published")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "cboe.bxeequities.lastsale.asciipitch.v1.9.rejectreasoncode", ftypes.STRING, nil, nil, nil, "Login Reject Codes")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "cboe.bxeequities.lastsale.asciipitch.v1.9.requestedsequencenumber", ftypes.STRING, nil, nil, nil, "Specifies the next sequence number in ASCII the client wants to receive upon connection, or 0 to start receiving the most recently generated message.")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.requested_session = ProtoField.new("Requested Session", "cboe.bxeequities.lastsale.asciipitch.v1.9.requestedsession", ftypes.STRING, nil, nil, nil, "Specifies the session the client would like to log into, or all blanks to log into the currently active session.")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.sequence_number = ProtoField.new("Sequence Number", "cboe.bxeequities.lastsale.asciipitch.v1.9.sequencenumber", ftypes.STRING, nil, nil, nil, "The sequence number in ASCII of the next Sequenced Message to be sent. Left padded with spaces.")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "cboe.bxeequities.lastsale.asciipitch.v1.9.sequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Sequenced Data Packets act as an envelope to carry the actual sequenced data messages that are transferred from the server to the client. Each Sequenced Data Packet carries one message from the higher-lever protocol.")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.sequenced_message_header = ProtoField.new("Sequenced Message Header", "cboe.bxeequities.lastsale.asciipitch.v1.9.sequencedmessageheader", ftypes.STRING)
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "cboe.bxeequities.lastsale.asciipitch.v1.9.sequencedmessagetype", ftypes.STRING, nil, nil, nil, "Alphanumeric")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.session = ProtoField.new("Session", "cboe.bxeequities.lastsale.asciipitch.v1.9.session", ftypes.STRING, nil, nil, nil, "The session ID of the session that is now logged into. Left padded with spaces.")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.soup_lf = ProtoField.new("Soup Lf", "cboe.bxeequities.lastsale.asciipitch.v1.9.souplf", ftypes.INT8, nil, nil, nil, "Terminating line feed character")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.special_dividend = ProtoField.new("Special Dividend", "cboe.bxeequities.lastsale.asciipitch.v1.9.specialdividend", ftypes.STRING, nil, nil, nil, "Corresponds to MMT v3 Level 3.6")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.symbol = ProtoField.new("Symbol", "cboe.bxeequities.lastsale.asciipitch.v1.9.symbol", ftypes.STRING, nil, nil, nil, "ISIN Code that identifies the financial instrument")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.text = ProtoField.new("Text", "cboe.bxeequities.lastsale.asciipitch.v1.9.text", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.third_country_trading_venue = ProtoField.new("Third Country Trading Venue", "cboe.bxeequities.lastsale.asciipitch.v1.9.thirdcountrytradingvenue", ftypes.STRING, nil, nil, nil, "When populated, indicates the trade was executed on a venue not deemed equivalent under ESMA Opinion on determining third-country trading venues for the purpose of transparency under Mifid II/Mifir. The column contains the venue MIC, and the execution venue will contain the value ”XOFF”. Not applicable to reports from Cboe’s UK APA.")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.timestamp = ProtoField.new("Timestamp", "cboe.bxeequities.lastsale.asciipitch.v1.9.timestamp", ftypes.UINT32)
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.trade_id = ProtoField.new("Trade Id", "cboe.bxeequities.lastsale.asciipitch.v1.9.tradeid", ftypes.STRING, nil, nil, nil, "Cboe generated day-unique execution/trade identifier")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.trading_date_time = ProtoField.new("Trading Date Time", "cboe.bxeequities.lastsale.asciipitch.v1.9.tradingdatetime", ftypes.STRING, nil, nil, nil, "Date and time the trade occurred")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.trading_mode = ProtoField.new("Trading Mode", "cboe.bxeequities.lastsale.asciipitch.v1.9.tradingmode", ftypes.STRING, nil, nil, nil, "Corresponds to MMT v4.1 Level 2")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.transaction_category = ProtoField.new("Transaction Category", "cboe.bxeequities.lastsale.asciipitch.v1.9.transactioncategory", ftypes.STRING, nil, nil, nil, "Corresponds to MMT v3 Level 3.1")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.transaction_to_be_cleared = ProtoField.new("Transaction To Be Cleared", "cboe.bxeequities.lastsale.asciipitch.v1.9.transactiontobecleared", ftypes.STRING, nil, nil, nil, "Code to identify whether the transaction will be cleared. “TRUE” = Transaction to be cleared “FALSE” = Transaction not to be cleared")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "cboe.bxeequities.lastsale.asciipitch.v1.9.unsequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Unsequenced Data Packets act as an envelope to carry the actual data messages that are transferred from the client to the server. These messages are not sequenced and may be lost in the event of a socket failure.")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "cboe.bxeequities.lastsale.asciipitch.v1.9.unsequencedmessage", ftypes.BYTES, nil, nil, nil, "Raw unsequenced message bytes")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.username = ProtoField.new("Username", "cboe.bxeequities.lastsale.asciipitch.v1.9.username", ftypes.STRING, nil, nil, nil, "Session username")

-- Cboe BxeEquities LastSale AsciiPitch 1.9 Framing
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.frame = ProtoField.new("Frame", "cboe.bxeequities.lastsale.asciipitch.v1.9.frame", ftypes.STRING, nil, nil, nil, "Soup 2.0 Lf terminated record")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.packet = ProtoField.new("Packet", "cboe.bxeequities.lastsale.asciipitch.v1.9.packet", ftypes.STRING, nil, nil, nil, "Soup 2.0 Packet")

-- Cboe BxeEquities LastSale 1.9 Application Messages
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.last_sale_europe_message = ProtoField.new("Last Sale Europe Message", "cboe.bxeequities.lastsale.asciipitch.v1.9.lastsaleeuropemessage", ftypes.STRING, nil, nil, nil, "Last Sale Europe Messages are sent when an order on a Cboe order book is executed in whole or in part, or when a reported trade is submitted to Cboe")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.last_sale_europe_message_new = ProtoField.new("Last Sale Europe Message New", "cboe.bxeequities.lastsale.asciipitch.v1.9.lastsaleeuropemessagenew", ftypes.STRING, nil, nil, nil, "Last Sale Europe Messages are sent when an order on a Cboe order book is executed in whole or in part, or when a reported trade is submitted to Cboe")

-- Cboe BxeEquities LastSale AsciiPitch 1.9 Expert Info
cboe_bxeequities_lastsale_asciipitch_v1_9.experts = {}
cboe_bxeequities_lastsale_asciipitch_v1_9.experts.not_a_number = ProtoExpert.new("cboe.bxeequities.lastsale.asciipitch.v1.9.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.experts = { cboe_bxeequities_lastsale_asciipitch_v1_9.experts.not_a_number }

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe BxeEquities LastSale AsciiPitch 1.9 Element Dissection Options
show.structs = true
show.application_messages = true

-- Register Cboe BxeEquities LastSale AsciiPitch 1.9 Show Options
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_bxeequities_lastsale_asciipitch_v1_9.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")

-- Handle changed preferences
function omi_cboe_bxeequities_lastsale_asciipitch_v1_9.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_bxeequities_lastsale_asciipitch_v1_9.prefs.show_application_messages then
    show.application_messages = omi_cboe_bxeequities_lastsale_asciipitch_v1_9.prefs.show_application_messages
  end
  if show.structs ~= omi_cboe_bxeequities_lastsale_asciipitch_v1_9.prefs.show_structs then
    show.structs = omi_cboe_bxeequities_lastsale_asciipitch_v1_9.prefs.show_structs
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

-- ascii digits as an unsigned 64 bit value, nil when the run is no number
ascii_to_uint64 = function(str)
  local digits = str:match("^%s*(%d+)%s*$")

  if digits == nil then
    return nil
  end

  local value = UInt64.new(digits)

  -- UInt64.new stops at its maximum rather than failing, so an overrun would
  -- read as that maximum. Nineteen digits always fit, so only a longer run is
  -- read back and compared against the digits it came from
  if #digits > 19 then
    local significant = digits:match("^0*(%d+)$")

    if tostring(value) ~= significant then
      return nil
    end
  end

  return value
end


-----------------------------------------------------------------------
-- Cboe BxeEquities LastSale AsciiPitch 1.9 Fields
-----------------------------------------------------------------------

-- Agency Cross Trade
cboe_bxeequities_lastsale_asciipitch_v1_9.agency_cross_trade = {}

-- Size: Agency Cross Trade
cboe_bxeequities_lastsale_asciipitch_v1_9.agency_cross_trade.size = 4

-- Display: Agency Cross Trade
cboe_bxeequities_lastsale_asciipitch_v1_9.agency_cross_trade.display = function(value)
  return "Agency Cross Trade: "..value
end

-- Dissect: Agency Cross Trade
cboe_bxeequities_lastsale_asciipitch_v1_9.agency_cross_trade.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.agency_cross_trade.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.agency_cross_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.agency_cross_trade, range, value, display)

  return offset + length, value
end

-- Algorithmic Indicator
cboe_bxeequities_lastsale_asciipitch_v1_9.algorithmic_indicator = {}

-- Size: Algorithmic Indicator
cboe_bxeequities_lastsale_asciipitch_v1_9.algorithmic_indicator.size = 4

-- Display: Algorithmic Indicator
cboe_bxeequities_lastsale_asciipitch_v1_9.algorithmic_indicator.display = function(value)
  return "Algorithmic Indicator: "..value
end

-- Dissect: Algorithmic Indicator
cboe_bxeequities_lastsale_asciipitch_v1_9.algorithmic_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.algorithmic_indicator.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.algorithmic_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.algorithmic_indicator, range, value, display)

  return offset + length, value
end

-- Benchmark Indicator
cboe_bxeequities_lastsale_asciipitch_v1_9.benchmark_indicator = {}

-- Size: Benchmark Indicator
cboe_bxeequities_lastsale_asciipitch_v1_9.benchmark_indicator.size = 4

-- Display: Benchmark Indicator
cboe_bxeequities_lastsale_asciipitch_v1_9.benchmark_indicator.display = function(value)
  return "Benchmark Indicator: "..value
end

-- Dissect: Benchmark Indicator
cboe_bxeequities_lastsale_asciipitch_v1_9.benchmark_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.benchmark_indicator.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.benchmark_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.benchmark_indicator, range, value, display)

  return offset + length, value
end

-- Benchmark Reference Indicator
cboe_bxeequities_lastsale_asciipitch_v1_9.benchmark_reference_indicator = {}

-- Size: Benchmark Reference Indicator
cboe_bxeequities_lastsale_asciipitch_v1_9.benchmark_reference_indicator.size = 4

-- Display: Benchmark Reference Indicator
cboe_bxeequities_lastsale_asciipitch_v1_9.benchmark_reference_indicator.display = function(value)
  return "Benchmark Reference Indicator: "..value
end

-- Dissect: Benchmark Reference Indicator
cboe_bxeequities_lastsale_asciipitch_v1_9.benchmark_reference_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.benchmark_reference_indicator.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.benchmark_reference_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.benchmark_reference_indicator, range, value, display)

  return offset + length, value
end

-- Contingent Flag
cboe_bxeequities_lastsale_asciipitch_v1_9.contingent_flag = {}

-- Size: Contingent Flag
cboe_bxeequities_lastsale_asciipitch_v1_9.contingent_flag.size = 4

-- Display: Contingent Flag
cboe_bxeequities_lastsale_asciipitch_v1_9.contingent_flag.display = function(value)
  return "Contingent Flag: "..value
end

-- Dissect: Contingent Flag
cboe_bxeequities_lastsale_asciipitch_v1_9.contingent_flag.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.contingent_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.contingent_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.contingent_flag, range, value, display)

  return offset + length, value
end

-- Deferral Illiquid Instrument
cboe_bxeequities_lastsale_asciipitch_v1_9.deferral_illiquid_instrument = {}

-- Size: Deferral Illiquid Instrument
cboe_bxeequities_lastsale_asciipitch_v1_9.deferral_illiquid_instrument.size = 4

-- Display: Deferral Illiquid Instrument
cboe_bxeequities_lastsale_asciipitch_v1_9.deferral_illiquid_instrument.display = function(value)
  return "Deferral Illiquid Instrument: "..value
end

-- Dissect: Deferral Illiquid Instrument
cboe_bxeequities_lastsale_asciipitch_v1_9.deferral_illiquid_instrument.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.deferral_illiquid_instrument.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.deferral_illiquid_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.deferral_illiquid_instrument, range, value, display)

  return offset + length, value
end

-- Deferral Or Enrichment Type
cboe_bxeequities_lastsale_asciipitch_v1_9.deferral_or_enrichment_type = {}

-- Size: Deferral Or Enrichment Type
cboe_bxeequities_lastsale_asciipitch_v1_9.deferral_or_enrichment_type.size = 4

-- Display: Deferral Or Enrichment Type
cboe_bxeequities_lastsale_asciipitch_v1_9.deferral_or_enrichment_type.display = function(value)
  return "Deferral Or Enrichment Type: "..value
end

-- Dissect: Deferral Or Enrichment Type
cboe_bxeequities_lastsale_asciipitch_v1_9.deferral_or_enrichment_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.deferral_or_enrichment_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.deferral_or_enrichment_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.deferral_or_enrichment_type, range, value, display)

  return offset + length, value
end

-- Deferral Size Specific
cboe_bxeequities_lastsale_asciipitch_v1_9.deferral_size_specific = {}

-- Size: Deferral Size Specific
cboe_bxeequities_lastsale_asciipitch_v1_9.deferral_size_specific.size = 4

-- Display: Deferral Size Specific
cboe_bxeequities_lastsale_asciipitch_v1_9.deferral_size_specific.display = function(value)
  return "Deferral Size Specific: "..value
end

-- Dissect: Deferral Size Specific
cboe_bxeequities_lastsale_asciipitch_v1_9.deferral_size_specific.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.deferral_size_specific.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.deferral_size_specific.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.deferral_size_specific, range, value, display)

  return offset + length, value
end

-- Duplicative Across Jurisdiction
cboe_bxeequities_lastsale_asciipitch_v1_9.duplicative_across_jurisdiction = {}

-- Size: Duplicative Across Jurisdiction
cboe_bxeequities_lastsale_asciipitch_v1_9.duplicative_across_jurisdiction.size = 4

-- Display: Duplicative Across Jurisdiction
cboe_bxeequities_lastsale_asciipitch_v1_9.duplicative_across_jurisdiction.display = function(value)
  return "Duplicative Across Jurisdiction: "..value
end

-- Dissect: Duplicative Across Jurisdiction
cboe_bxeequities_lastsale_asciipitch_v1_9.duplicative_across_jurisdiction.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.duplicative_across_jurisdiction.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.duplicative_across_jurisdiction.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.duplicative_across_jurisdiction, range, value, display)

  return offset + length, value
end

-- Duplicative Indicator
cboe_bxeequities_lastsale_asciipitch_v1_9.duplicative_indicator = {}

-- Size: Duplicative Indicator
cboe_bxeequities_lastsale_asciipitch_v1_9.duplicative_indicator.size = 4

-- Display: Duplicative Indicator
cboe_bxeequities_lastsale_asciipitch_v1_9.duplicative_indicator.display = function(value)
  return "Duplicative Indicator: "..value
end

-- Dissect: Duplicative Indicator
cboe_bxeequities_lastsale_asciipitch_v1_9.duplicative_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.duplicative_indicator.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.duplicative_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.duplicative_indicator, range, value, display)

  return offset + length, value
end

-- Duplicative Within Jurisdiction
cboe_bxeequities_lastsale_asciipitch_v1_9.duplicative_within_jurisdiction = {}

-- Size: Duplicative Within Jurisdiction
cboe_bxeequities_lastsale_asciipitch_v1_9.duplicative_within_jurisdiction.size = 4

-- Display: Duplicative Within Jurisdiction
cboe_bxeequities_lastsale_asciipitch_v1_9.duplicative_within_jurisdiction.display = function(value)
  return "Duplicative Within Jurisdiction: "..value
end

-- Dissect: Duplicative Within Jurisdiction
cboe_bxeequities_lastsale_asciipitch_v1_9.duplicative_within_jurisdiction.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.duplicative_within_jurisdiction.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.duplicative_within_jurisdiction.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.duplicative_within_jurisdiction, range, value, display)

  return offset + length, value
end

-- Executed Shares
cboe_bxeequities_lastsale_asciipitch_v1_9.executed_shares = {}

-- Size: Executed Shares
cboe_bxeequities_lastsale_asciipitch_v1_9.executed_shares.size = 12

-- Display: Executed Shares
cboe_bxeequities_lastsale_asciipitch_v1_9.executed_shares.display = function(value)
  return "Executed Shares: "..value
end

-- Dissect: Executed Shares
cboe_bxeequities_lastsale_asciipitch_v1_9.executed_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.executed_shares.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.executed_shares, range, value, "Executed Shares: Not Applicable")
    item:add_proto_expert_info(cboe_bxeequities_lastsale_asciipitch_v1_9.experts.not_a_number, "Executed Shares is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.executed_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.executed_shares, range, value, display)

  return offset + length, value
end

-- Execution Venue
cboe_bxeequities_lastsale_asciipitch_v1_9.execution_venue = {}

-- Size: Execution Venue
cboe_bxeequities_lastsale_asciipitch_v1_9.execution_venue.size = 4

-- Display: Execution Venue
cboe_bxeequities_lastsale_asciipitch_v1_9.execution_venue.display = function(value)
  return "Execution Venue: "..value
end

-- Dissect: Execution Venue
cboe_bxeequities_lastsale_asciipitch_v1_9.execution_venue.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.execution_venue.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.execution_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.execution_venue, range, value, display)

  return offset + length, value
end

-- Giveup Flag
cboe_bxeequities_lastsale_asciipitch_v1_9.giveup_flag = {}

-- Size: Giveup Flag
cboe_bxeequities_lastsale_asciipitch_v1_9.giveup_flag.size = 4

-- Display: Giveup Flag
cboe_bxeequities_lastsale_asciipitch_v1_9.giveup_flag.display = function(value)
  return "Giveup Flag: "..value
end

-- Dissect: Giveup Flag
cboe_bxeequities_lastsale_asciipitch_v1_9.giveup_flag.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.giveup_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.giveup_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.giveup_flag, range, value, display)

  return offset + length, value
end

-- Intra Group Indicator
cboe_bxeequities_lastsale_asciipitch_v1_9.intra_group_indicator = {}

-- Size: Intra Group Indicator
cboe_bxeequities_lastsale_asciipitch_v1_9.intra_group_indicator.size = 4

-- Display: Intra Group Indicator
cboe_bxeequities_lastsale_asciipitch_v1_9.intra_group_indicator.display = function(value)
  return "Intra Group Indicator: "..value
end

-- Dissect: Intra Group Indicator
cboe_bxeequities_lastsale_asciipitch_v1_9.intra_group_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.intra_group_indicator.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.intra_group_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.intra_group_indicator, range, value, display)

  return offset + length, value
end

-- Jurisdiction
cboe_bxeequities_lastsale_asciipitch_v1_9.jurisdiction = {}

-- Size: Jurisdiction
cboe_bxeequities_lastsale_asciipitch_v1_9.jurisdiction.size = 2

-- Display: Jurisdiction
cboe_bxeequities_lastsale_asciipitch_v1_9.jurisdiction.display = function(value)
  return "Jurisdiction: "..value
end

-- Dissect: Jurisdiction
cboe_bxeequities_lastsale_asciipitch_v1_9.jurisdiction.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.jurisdiction.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.jurisdiction.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.jurisdiction, range, value, display)

  return offset + length, value
end

-- Market Mechanism
cboe_bxeequities_lastsale_asciipitch_v1_9.market_mechanism = {}

-- Size: Market Mechanism
cboe_bxeequities_lastsale_asciipitch_v1_9.market_mechanism.size = 4

-- Display: Market Mechanism
cboe_bxeequities_lastsale_asciipitch_v1_9.market_mechanism.display = function(value)
  return "Market Mechanism: "..value
end

-- Dissect: Market Mechanism
cboe_bxeequities_lastsale_asciipitch_v1_9.market_mechanism.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.market_mechanism.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.market_mechanism.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.market_mechanism, range, value, display)

  return offset + length, value
end

-- Modification Indicator
cboe_bxeequities_lastsale_asciipitch_v1_9.modification_indicator = {}

-- Size: Modification Indicator
cboe_bxeequities_lastsale_asciipitch_v1_9.modification_indicator.size = 4

-- Display: Modification Indicator
cboe_bxeequities_lastsale_asciipitch_v1_9.modification_indicator.display = function(value)
  return "Modification Indicator: "..value
end

-- Dissect: Modification Indicator
cboe_bxeequities_lastsale_asciipitch_v1_9.modification_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.modification_indicator.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.modification_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.modification_indicator, range, value, display)

  return offset + length, value
end

-- Negotiation Flag
cboe_bxeequities_lastsale_asciipitch_v1_9.negotiation_flag = {}

-- Size: Negotiation Flag
cboe_bxeequities_lastsale_asciipitch_v1_9.negotiation_flag.size = 4

-- Display: Negotiation Flag
cboe_bxeequities_lastsale_asciipitch_v1_9.negotiation_flag.display = function(value)
  return "Negotiation Flag: "..value
end

-- Dissect: Negotiation Flag
cboe_bxeequities_lastsale_asciipitch_v1_9.negotiation_flag.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.negotiation_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.negotiation_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.negotiation_flag, range, value, display)

  return offset + length, value
end

-- Notional Amount
cboe_bxeequities_lastsale_asciipitch_v1_9.notional_amount = {}

-- Size: Notional Amount
cboe_bxeequities_lastsale_asciipitch_v1_9.notional_amount.size = 18

-- Display: Notional Amount
cboe_bxeequities_lastsale_asciipitch_v1_9.notional_amount.display = function(value)
  return "Notional Amount: "..value
end

-- Dissect: Notional Amount
cboe_bxeequities_lastsale_asciipitch_v1_9.notional_amount.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.notional_amount.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.notional_amount, range, value, "Notional Amount: Not Applicable")
    item:add_proto_expert_info(cboe_bxeequities_lastsale_asciipitch_v1_9.experts.not_a_number, "Notional Amount is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.notional_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.notional_amount, range, value, display)

  return offset + length, value
end

-- Notional Currency
cboe_bxeequities_lastsale_asciipitch_v1_9.notional_currency = {}

-- Size: Notional Currency
cboe_bxeequities_lastsale_asciipitch_v1_9.notional_currency.size = 3

-- Display: Notional Currency
cboe_bxeequities_lastsale_asciipitch_v1_9.notional_currency.display = function(value)
  return "Notional Currency: "..value
end

-- Dissect: Notional Currency
cboe_bxeequities_lastsale_asciipitch_v1_9.notional_currency.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.notional_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.notional_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.notional_currency, range, value, display)

  return offset + length, value
end

-- Off Book Automated
cboe_bxeequities_lastsale_asciipitch_v1_9.off_book_automated = {}

-- Size: Off Book Automated
cboe_bxeequities_lastsale_asciipitch_v1_9.off_book_automated.size = 4

-- Display: Off Book Automated
cboe_bxeequities_lastsale_asciipitch_v1_9.off_book_automated.display = function(value)
  return "Off Book Automated: "..value
end

-- Dissect: Off Book Automated
cboe_bxeequities_lastsale_asciipitch_v1_9.off_book_automated.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.off_book_automated.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.off_book_automated.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.off_book_automated, range, value, display)

  return offset + length, value
end

-- Packet Type
cboe_bxeequities_lastsale_asciipitch_v1_9.packet_type = {}

-- Size: Packet Type
cboe_bxeequities_lastsale_asciipitch_v1_9.packet_type.size = 1

-- Display: Packet Type
cboe_bxeequities_lastsale_asciipitch_v1_9.packet_type.display = function(value)
  if value == "+" then
    return "Packet Type: Debug Packet (+)"
  end
  if value == "A" then
    return "Packet Type: Login Accepted Packet (A)"
  end
  if value == "J" then
    return "Packet Type: Login Rejected Packet (J)"
  end
  if value == "S" then
    return "Packet Type: Sequenced Data Packet (S)"
  end
  if value == "H" then
    return "Packet Type: Server Heartbeat Packet (H)"
  end
  if value == "L" then
    return "Packet Type: Login Request Packet (L)"
  end
  if value == "U" then
    return "Packet Type: Unsequenced Data Packet (U)"
  end
  if value == "R" then
    return "Packet Type: Client Heartbeat Packet (R)"
  end
  if value == "O" then
    return "Packet Type: Logout Request Packet (O)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
cboe_bxeequities_lastsale_asciipitch_v1_9.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Password
cboe_bxeequities_lastsale_asciipitch_v1_9.password = {}

-- Size: Password
cboe_bxeequities_lastsale_asciipitch_v1_9.password.size = 10

-- Display: Password
cboe_bxeequities_lastsale_asciipitch_v1_9.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_bxeequities_lastsale_asciipitch_v1_9.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.password, range, value, display)

  return offset + length, value
end

-- Portfolio Flag
cboe_bxeequities_lastsale_asciipitch_v1_9.portfolio_flag = {}

-- Size: Portfolio Flag
cboe_bxeequities_lastsale_asciipitch_v1_9.portfolio_flag.size = 4

-- Display: Portfolio Flag
cboe_bxeequities_lastsale_asciipitch_v1_9.portfolio_flag.display = function(value)
  return "Portfolio Flag: "..value
end

-- Dissect: Portfolio Flag
cboe_bxeequities_lastsale_asciipitch_v1_9.portfolio_flag.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.portfolio_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.portfolio_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.portfolio_flag, range, value, display)

  return offset + length, value
end

-- Post Trade Deferral Reason
cboe_bxeequities_lastsale_asciipitch_v1_9.post_trade_deferral_reason = {}

-- Size: Post Trade Deferral Reason
cboe_bxeequities_lastsale_asciipitch_v1_9.post_trade_deferral_reason.size = 4

-- Display: Post Trade Deferral Reason
cboe_bxeequities_lastsale_asciipitch_v1_9.post_trade_deferral_reason.display = function(value)
  return "Post Trade Deferral Reason: "..value
end

-- Dissect: Post Trade Deferral Reason
cboe_bxeequities_lastsale_asciipitch_v1_9.post_trade_deferral_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.post_trade_deferral_reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.post_trade_deferral_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.post_trade_deferral_reason, range, value, display)

  return offset + length, value
end

-- Pre Trade Transparency Waiver
cboe_bxeequities_lastsale_asciipitch_v1_9.pre_trade_transparency_waiver = {}

-- Size: Pre Trade Transparency Waiver
cboe_bxeequities_lastsale_asciipitch_v1_9.pre_trade_transparency_waiver.size = 4

-- Display: Pre Trade Transparency Waiver
cboe_bxeequities_lastsale_asciipitch_v1_9.pre_trade_transparency_waiver.display = function(value)
  return "Pre Trade Transparency Waiver: "..value
end

-- Dissect: Pre Trade Transparency Waiver
cboe_bxeequities_lastsale_asciipitch_v1_9.pre_trade_transparency_waiver.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.pre_trade_transparency_waiver.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.pre_trade_transparency_waiver.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.pre_trade_transparency_waiver, range, value, display)

  return offset + length, value
end

-- Price
cboe_bxeequities_lastsale_asciipitch_v1_9.price = {}

-- Size: Price
cboe_bxeequities_lastsale_asciipitch_v1_9.price.size = 18

-- Display: Price
cboe_bxeequities_lastsale_asciipitch_v1_9.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
cboe_bxeequities_lastsale_asciipitch_v1_9.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.price, range, value, "Price: Not Applicable")
    item:add_proto_expert_info(cboe_bxeequities_lastsale_asciipitch_v1_9.experts.not_a_number, "Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.price, range, value, display)

  return offset + length, value
end

-- Price Currency
cboe_bxeequities_lastsale_asciipitch_v1_9.price_currency = {}

-- Size: Price Currency
cboe_bxeequities_lastsale_asciipitch_v1_9.price_currency.size = 3

-- Display: Price Currency
cboe_bxeequities_lastsale_asciipitch_v1_9.price_currency.display = function(value)
  return "Price Currency: "..value
end

-- Dissect: Price Currency
cboe_bxeequities_lastsale_asciipitch_v1_9.price_currency.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.price_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.price_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.price_currency, range, value, display)

  return offset + length, value
end

-- Price Discovery Process
cboe_bxeequities_lastsale_asciipitch_v1_9.price_discovery_process = {}

-- Size: Price Discovery Process
cboe_bxeequities_lastsale_asciipitch_v1_9.price_discovery_process.size = 4

-- Display: Price Discovery Process
cboe_bxeequities_lastsale_asciipitch_v1_9.price_discovery_process.display = function(value)
  return "Price Discovery Process: "..value
end

-- Dissect: Price Discovery Process
cboe_bxeequities_lastsale_asciipitch_v1_9.price_discovery_process.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.price_discovery_process.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.price_discovery_process.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.price_discovery_process, range, value, display)

  return offset + length, value
end

-- Price Notation
cboe_bxeequities_lastsale_asciipitch_v1_9.price_notation = {}

-- Size: Price Notation
cboe_bxeequities_lastsale_asciipitch_v1_9.price_notation.size = 4

-- Display: Price Notation
cboe_bxeequities_lastsale_asciipitch_v1_9.price_notation.display = function(value)
  return "Price Notation: "..value
end

-- Dissect: Price Notation
cboe_bxeequities_lastsale_asciipitch_v1_9.price_notation.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.price_notation.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.price_notation.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.price_notation, range, value, display)

  return offset + length, value
end

-- Publication Date Time
cboe_bxeequities_lastsale_asciipitch_v1_9.publication_date_time = {}

-- Size: Publication Date Time
cboe_bxeequities_lastsale_asciipitch_v1_9.publication_date_time.size = 27

-- Display: Publication Date Time
cboe_bxeequities_lastsale_asciipitch_v1_9.publication_date_time.display = function(value)
  return "Publication Date Time: "..value
end

-- Dissect: Publication Date Time
cboe_bxeequities_lastsale_asciipitch_v1_9.publication_date_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.publication_date_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.publication_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.publication_date_time, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
cboe_bxeequities_lastsale_asciipitch_v1_9.reject_reason_code = {}

-- Size: Reject Reason Code
cboe_bxeequities_lastsale_asciipitch_v1_9.reject_reason_code.size = 1

-- Display: Reject Reason Code
cboe_bxeequities_lastsale_asciipitch_v1_9.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
cboe_bxeequities_lastsale_asciipitch_v1_9.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
cboe_bxeequities_lastsale_asciipitch_v1_9.requested_sequence_number = {}

-- Size: Requested Sequence Number
cboe_bxeequities_lastsale_asciipitch_v1_9.requested_sequence_number.size = 10

-- Display: Requested Sequence Number
cboe_bxeequities_lastsale_asciipitch_v1_9.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
cboe_bxeequities_lastsale_asciipitch_v1_9.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
cboe_bxeequities_lastsale_asciipitch_v1_9.requested_session = {}

-- Size: Requested Session
cboe_bxeequities_lastsale_asciipitch_v1_9.requested_session.size = 10

-- Display: Requested Session
cboe_bxeequities_lastsale_asciipitch_v1_9.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
cboe_bxeequities_lastsale_asciipitch_v1_9.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.requested_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Sequence Number
cboe_bxeequities_lastsale_asciipitch_v1_9.sequence_number = {}

-- Size: Sequence Number
cboe_bxeequities_lastsale_asciipitch_v1_9.sequence_number.size = 10

-- Display: Sequence Number
cboe_bxeequities_lastsale_asciipitch_v1_9.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
cboe_bxeequities_lastsale_asciipitch_v1_9.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.sequence_number.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_message_type = {}

-- Size: Sequenced Message Type
cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_message_type.display = function(value)
  if value == "u" then
    return "Sequenced Message Type: Last Sale Europe Message (u)"
  end
  if value == "7" then
    return "Sequenced Message Type: Last Sale Europe Message New (7)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Session
cboe_bxeequities_lastsale_asciipitch_v1_9.session = {}

-- Size: Session
cboe_bxeequities_lastsale_asciipitch_v1_9.session.size = 10

-- Display: Session
cboe_bxeequities_lastsale_asciipitch_v1_9.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
cboe_bxeequities_lastsale_asciipitch_v1_9.session.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.session, range, value, display)

  return offset + length, value
end

-- Soup Lf
cboe_bxeequities_lastsale_asciipitch_v1_9.soup_lf = {}

-- Size: Soup Lf
cboe_bxeequities_lastsale_asciipitch_v1_9.soup_lf.size = 1

-- Display: Soup Lf
cboe_bxeequities_lastsale_asciipitch_v1_9.soup_lf.display = function(value)
  if value == 10 then
    return "Soup Lf: Line Feed"
  end

  return "Soup Lf: Unknown("..value..")"
end

-- Dissect: Soup Lf
cboe_bxeequities_lastsale_asciipitch_v1_9.soup_lf.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.soup_lf.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.soup_lf.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.soup_lf, range, value, display)

  return offset + length, value
end

-- Special Dividend
cboe_bxeequities_lastsale_asciipitch_v1_9.special_dividend = {}

-- Size: Special Dividend
cboe_bxeequities_lastsale_asciipitch_v1_9.special_dividend.size = 4

-- Display: Special Dividend
cboe_bxeequities_lastsale_asciipitch_v1_9.special_dividend.display = function(value)
  return "Special Dividend: "..value
end

-- Dissect: Special Dividend
cboe_bxeequities_lastsale_asciipitch_v1_9.special_dividend.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.special_dividend.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.special_dividend.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.special_dividend, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_bxeequities_lastsale_asciipitch_v1_9.symbol = {}

-- Size: Symbol
cboe_bxeequities_lastsale_asciipitch_v1_9.symbol.size = 12

-- Display: Symbol
cboe_bxeequities_lastsale_asciipitch_v1_9.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_bxeequities_lastsale_asciipitch_v1_9.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.symbol, range, value, display)

  return offset + length, value
end

-- Text
cboe_bxeequities_lastsale_asciipitch_v1_9.text = {}

-- Size: Text
cboe_bxeequities_lastsale_asciipitch_v1_9.text.size = 1

-- Display: Text
cboe_bxeequities_lastsale_asciipitch_v1_9.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
cboe_bxeequities_lastsale_asciipitch_v1_9.text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.text, range, value, display)

  return offset + length, value
end

-- Third Country Trading Venue
cboe_bxeequities_lastsale_asciipitch_v1_9.third_country_trading_venue = {}

-- Size: Third Country Trading Venue
cboe_bxeequities_lastsale_asciipitch_v1_9.third_country_trading_venue.size = 4

-- Display: Third Country Trading Venue
cboe_bxeequities_lastsale_asciipitch_v1_9.third_country_trading_venue.display = function(value)
  return "Third Country Trading Venue: "..value
end

-- Dissect: Third Country Trading Venue
cboe_bxeequities_lastsale_asciipitch_v1_9.third_country_trading_venue.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.third_country_trading_venue.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.third_country_trading_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.third_country_trading_venue, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_bxeequities_lastsale_asciipitch_v1_9.timestamp = {}

-- Size: Timestamp
cboe_bxeequities_lastsale_asciipitch_v1_9.timestamp.size = 8

-- Display: Timestamp
cboe_bxeequities_lastsale_asciipitch_v1_9.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_bxeequities_lastsale_asciipitch_v1_9.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.timestamp, range, value, "Timestamp: Not Applicable")
    item:add_proto_expert_info(cboe_bxeequities_lastsale_asciipitch_v1_9.experts.not_a_number, "Timestamp is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Id
cboe_bxeequities_lastsale_asciipitch_v1_9.trade_id = {}

-- Size: Trade Id
cboe_bxeequities_lastsale_asciipitch_v1_9.trade_id.size = 12

-- Display: Trade Id
cboe_bxeequities_lastsale_asciipitch_v1_9.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
cboe_bxeequities_lastsale_asciipitch_v1_9.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.trade_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trading Date Time
cboe_bxeequities_lastsale_asciipitch_v1_9.trading_date_time = {}

-- Size: Trading Date Time
cboe_bxeequities_lastsale_asciipitch_v1_9.trading_date_time.size = 27

-- Display: Trading Date Time
cboe_bxeequities_lastsale_asciipitch_v1_9.trading_date_time.display = function(value)
  return "Trading Date Time: "..value
end

-- Dissect: Trading Date Time
cboe_bxeequities_lastsale_asciipitch_v1_9.trading_date_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.trading_date_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.trading_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.trading_date_time, range, value, display)

  return offset + length, value
end

-- Trading Mode
cboe_bxeequities_lastsale_asciipitch_v1_9.trading_mode = {}

-- Size: Trading Mode
cboe_bxeequities_lastsale_asciipitch_v1_9.trading_mode.size = 4

-- Display: Trading Mode
cboe_bxeequities_lastsale_asciipitch_v1_9.trading_mode.display = function(value)
  return "Trading Mode: "..value
end

-- Dissect: Trading Mode
cboe_bxeequities_lastsale_asciipitch_v1_9.trading_mode.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.trading_mode.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.trading_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.trading_mode, range, value, display)

  return offset + length, value
end

-- Transaction Category
cboe_bxeequities_lastsale_asciipitch_v1_9.transaction_category = {}

-- Size: Transaction Category
cboe_bxeequities_lastsale_asciipitch_v1_9.transaction_category.size = 4

-- Display: Transaction Category
cboe_bxeequities_lastsale_asciipitch_v1_9.transaction_category.display = function(value)
  return "Transaction Category: "..value
end

-- Dissect: Transaction Category
cboe_bxeequities_lastsale_asciipitch_v1_9.transaction_category.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.transaction_category.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.transaction_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.transaction_category, range, value, display)

  return offset + length, value
end

-- Transaction To Be Cleared
cboe_bxeequities_lastsale_asciipitch_v1_9.transaction_to_be_cleared = {}

-- Size: Transaction To Be Cleared
cboe_bxeequities_lastsale_asciipitch_v1_9.transaction_to_be_cleared.size = 5

-- Display: Transaction To Be Cleared
cboe_bxeequities_lastsale_asciipitch_v1_9.transaction_to_be_cleared.display = function(value)
  return "Transaction To Be Cleared: "..value
end

-- Dissect: Transaction To Be Cleared
cboe_bxeequities_lastsale_asciipitch_v1_9.transaction_to_be_cleared.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.transaction_to_be_cleared.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.transaction_to_be_cleared.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.transaction_to_be_cleared, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
cboe_bxeequities_lastsale_asciipitch_v1_9.unsequenced_message = {}

-- Display: Unsequenced Message
cboe_bxeequities_lastsale_asciipitch_v1_9.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
cboe_bxeequities_lastsale_asciipitch_v1_9.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.unsequenced_message, range, value, display)

  return offset + size, value
end

-- Username
cboe_bxeequities_lastsale_asciipitch_v1_9.username = {}

-- Size: Username
cboe_bxeequities_lastsale_asciipitch_v1_9.username.size = 6

-- Display: Username
cboe_bxeequities_lastsale_asciipitch_v1_9.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_bxeequities_lastsale_asciipitch_v1_9.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_lastsale_asciipitch_v1_9.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_lastsale_asciipitch_v1_9.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe BxeEquities LastSale AsciiPitch 1.9
-----------------------------------------------------------------------

-- Unsequenced Data Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.unsequenced_data_packet = {}

-- Calculate size of: Unsequenced Data Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.unsequenced_data_packet.size = function(buffer, offset)
  local index = 0

  -- Remaining size of: Unsequenced Message
  index = index + (buffer:len() - (offset + index))

  return index
end

-- Display: Unsequenced Data Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.unsequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = buffer:len() - index

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = cboe_bxeequities_lastsale_asciipitch_v1_9.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.unsequenced_data_packet, buffer(offset, 0))
    local index = cboe_bxeequities_lastsale_asciipitch_v1_9.unsequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_lastsale_asciipitch_v1_9.unsequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_lastsale_asciipitch_v1_9.unsequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.login_request_packet = {}

-- Size: Login Request Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.login_request_packet.size =
  cboe_bxeequities_lastsale_asciipitch_v1_9.username.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.password.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.requested_session.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.requested_sequence_number.size

-- Display: Login Request Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = cboe_bxeequities_lastsale_asciipitch_v1_9.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = cboe_bxeequities_lastsale_asciipitch_v1_9.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = cboe_bxeequities_lastsale_asciipitch_v1_9.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 10 Byte Ascii String
  index, requested_sequence_number = cboe_bxeequities_lastsale_asciipitch_v1_9.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.login_request_packet, buffer(offset, 0))
    local index = cboe_bxeequities_lastsale_asciipitch_v1_9.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_lastsale_asciipitch_v1_9.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_lastsale_asciipitch_v1_9.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Last Sale Europe Message New
cboe_bxeequities_lastsale_asciipitch_v1_9.last_sale_europe_message_new = {}

-- Size: Last Sale Europe Message New
cboe_bxeequities_lastsale_asciipitch_v1_9.last_sale_europe_message_new.size =
  cboe_bxeequities_lastsale_asciipitch_v1_9.trading_date_time.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.symbol.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.price.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.price_notation.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.price_currency.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.executed_shares.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.notional_amount.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.notional_currency.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.execution_venue.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.third_country_trading_venue.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.publication_date_time.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.trade_id.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.transaction_to_be_cleared.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.market_mechanism.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.trading_mode.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.transaction_category.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.negotiation_flag.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.agency_cross_trade.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.modification_indicator.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.benchmark_indicator.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.special_dividend.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.off_book_automated.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.price_discovery_process.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.algorithmic_indicator.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.pre_trade_transparency_waiver.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.portfolio_flag.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.contingent_flag.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.giveup_flag.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.post_trade_deferral_reason.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.deferral_or_enrichment_type.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.deferral_illiquid_instrument.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.deferral_size_specific.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.duplicative_within_jurisdiction.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.duplicative_across_jurisdiction.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.intra_group_indicator.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.jurisdiction.size

-- Display: Last Sale Europe Message New
cboe_bxeequities_lastsale_asciipitch_v1_9.last_sale_europe_message_new.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Sale Europe Message New
cboe_bxeequities_lastsale_asciipitch_v1_9.last_sale_europe_message_new.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Date Time: ISO DateTime
  index, trading_date_time = cboe_bxeequities_lastsale_asciipitch_v1_9.trading_date_time.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_bxeequities_lastsale_asciipitch_v1_9.symbol.dissect(buffer, index, packet, parent)

  -- Price: Numeric Price
  index, price = cboe_bxeequities_lastsale_asciipitch_v1_9.price.dissect(buffer, index, packet, parent)

  -- Price Notation: Alpha Flag
  index, price_notation = cboe_bxeequities_lastsale_asciipitch_v1_9.price_notation.dissect(buffer, index, packet, parent)

  -- Price Currency: Alpha
  index, price_currency = cboe_bxeequities_lastsale_asciipitch_v1_9.price_currency.dissect(buffer, index, packet, parent)

  -- Executed Shares: Numeric
  index, executed_shares = cboe_bxeequities_lastsale_asciipitch_v1_9.executed_shares.dissect(buffer, index, packet, parent)

  -- Notional Amount: Numeric Price
  index, notional_amount = cboe_bxeequities_lastsale_asciipitch_v1_9.notional_amount.dissect(buffer, index, packet, parent)

  -- Notional Currency: Alpha
  index, notional_currency = cboe_bxeequities_lastsale_asciipitch_v1_9.notional_currency.dissect(buffer, index, packet, parent)

  -- Execution Venue: Alpha
  index, execution_venue = cboe_bxeequities_lastsale_asciipitch_v1_9.execution_venue.dissect(buffer, index, packet, parent)

  -- Third Country Trading Venue: Alpha
  index, third_country_trading_venue = cboe_bxeequities_lastsale_asciipitch_v1_9.third_country_trading_venue.dissect(buffer, index, packet, parent)

  -- Publication Date Time: ISO DateTime
  index, publication_date_time = cboe_bxeequities_lastsale_asciipitch_v1_9.publication_date_time.dissect(buffer, index, packet, parent)

  -- Trade Id: Base 36 Numeric
  index, trade_id = cboe_bxeequities_lastsale_asciipitch_v1_9.trade_id.dissect(buffer, index, packet, parent)

  -- Transaction To Be Cleared: Alpha
  index, transaction_to_be_cleared = cboe_bxeequities_lastsale_asciipitch_v1_9.transaction_to_be_cleared.dissect(buffer, index, packet, parent)

  -- Market Mechanism: Alpha Flag
  index, market_mechanism = cboe_bxeequities_lastsale_asciipitch_v1_9.market_mechanism.dissect(buffer, index, packet, parent)

  -- Trading Mode: Alpha Flag
  index, trading_mode = cboe_bxeequities_lastsale_asciipitch_v1_9.trading_mode.dissect(buffer, index, packet, parent)

  -- Transaction Category: Alpha Flag
  index, transaction_category = cboe_bxeequities_lastsale_asciipitch_v1_9.transaction_category.dissect(buffer, index, packet, parent)

  -- Negotiation Flag: Alpha Flag
  index, negotiation_flag = cboe_bxeequities_lastsale_asciipitch_v1_9.negotiation_flag.dissect(buffer, index, packet, parent)

  -- Agency Cross Trade: Alpha Flag
  index, agency_cross_trade = cboe_bxeequities_lastsale_asciipitch_v1_9.agency_cross_trade.dissect(buffer, index, packet, parent)

  -- Modification Indicator: Alpha Flag
  index, modification_indicator = cboe_bxeequities_lastsale_asciipitch_v1_9.modification_indicator.dissect(buffer, index, packet, parent)

  -- Benchmark Indicator: Alpha Flag
  index, benchmark_indicator = cboe_bxeequities_lastsale_asciipitch_v1_9.benchmark_indicator.dissect(buffer, index, packet, parent)

  -- Special Dividend: Alpha Flag
  index, special_dividend = cboe_bxeequities_lastsale_asciipitch_v1_9.special_dividend.dissect(buffer, index, packet, parent)

  -- Off Book Automated: Alpha Flag
  index, off_book_automated = cboe_bxeequities_lastsale_asciipitch_v1_9.off_book_automated.dissect(buffer, index, packet, parent)

  -- Price Discovery Process: Alpha Flag
  index, price_discovery_process = cboe_bxeequities_lastsale_asciipitch_v1_9.price_discovery_process.dissect(buffer, index, packet, parent)

  -- Algorithmic Indicator: Alpha Flag
  index, algorithmic_indicator = cboe_bxeequities_lastsale_asciipitch_v1_9.algorithmic_indicator.dissect(buffer, index, packet, parent)

  -- Pre Trade Transparency Waiver: Alpha Flag
  index, pre_trade_transparency_waiver = cboe_bxeequities_lastsale_asciipitch_v1_9.pre_trade_transparency_waiver.dissect(buffer, index, packet, parent)

  -- Portfolio Flag: Alpha Flag
  index, portfolio_flag = cboe_bxeequities_lastsale_asciipitch_v1_9.portfolio_flag.dissect(buffer, index, packet, parent)

  -- Contingent Flag: Alpha Flag
  index, contingent_flag = cboe_bxeequities_lastsale_asciipitch_v1_9.contingent_flag.dissect(buffer, index, packet, parent)

  -- Giveup Flag: Alpha Flag
  index, giveup_flag = cboe_bxeequities_lastsale_asciipitch_v1_9.giveup_flag.dissect(buffer, index, packet, parent)

  -- Post Trade Deferral Reason: Alpha Flag
  index, post_trade_deferral_reason = cboe_bxeequities_lastsale_asciipitch_v1_9.post_trade_deferral_reason.dissect(buffer, index, packet, parent)

  -- Deferral Or Enrichment Type: Alpha Flag
  index, deferral_or_enrichment_type = cboe_bxeequities_lastsale_asciipitch_v1_9.deferral_or_enrichment_type.dissect(buffer, index, packet, parent)

  -- Deferral Illiquid Instrument: Alpha Flag
  index, deferral_illiquid_instrument = cboe_bxeequities_lastsale_asciipitch_v1_9.deferral_illiquid_instrument.dissect(buffer, index, packet, parent)

  -- Deferral Size Specific: Alpha Flag
  index, deferral_size_specific = cboe_bxeequities_lastsale_asciipitch_v1_9.deferral_size_specific.dissect(buffer, index, packet, parent)

  -- Duplicative Within Jurisdiction: Alpha Flag
  index, duplicative_within_jurisdiction = cboe_bxeequities_lastsale_asciipitch_v1_9.duplicative_within_jurisdiction.dissect(buffer, index, packet, parent)

  -- Duplicative Across Jurisdiction: Alpha Flag
  index, duplicative_across_jurisdiction = cboe_bxeequities_lastsale_asciipitch_v1_9.duplicative_across_jurisdiction.dissect(buffer, index, packet, parent)

  -- Intra Group Indicator: Alpha Flag
  index, intra_group_indicator = cboe_bxeequities_lastsale_asciipitch_v1_9.intra_group_indicator.dissect(buffer, index, packet, parent)

  -- Jurisdiction: Alpha
  index, jurisdiction = cboe_bxeequities_lastsale_asciipitch_v1_9.jurisdiction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Sale Europe Message New
cboe_bxeequities_lastsale_asciipitch_v1_9.last_sale_europe_message_new.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.last_sale_europe_message_new, buffer(offset, 0))
    local index = cboe_bxeequities_lastsale_asciipitch_v1_9.last_sale_europe_message_new.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_lastsale_asciipitch_v1_9.last_sale_europe_message_new.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_lastsale_asciipitch_v1_9.last_sale_europe_message_new.fields(buffer, offset, packet, parent)
  end
end

-- Last Sale Europe Message
cboe_bxeequities_lastsale_asciipitch_v1_9.last_sale_europe_message = {}

-- Size: Last Sale Europe Message
cboe_bxeequities_lastsale_asciipitch_v1_9.last_sale_europe_message.size =
  cboe_bxeequities_lastsale_asciipitch_v1_9.trading_date_time.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.symbol.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.price.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.price_currency.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.executed_shares.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.execution_venue.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.publication_date_time.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.trade_id.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.transaction_category.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.negotiation_flag.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.agency_cross_trade.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.modification_indicator.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.benchmark_reference_indicator.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.special_dividend.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.price_discovery_process.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.algorithmic_indicator.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.post_trade_deferral_reason.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.duplicative_indicator.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.jurisdiction.size

-- Display: Last Sale Europe Message
cboe_bxeequities_lastsale_asciipitch_v1_9.last_sale_europe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Sale Europe Message
cboe_bxeequities_lastsale_asciipitch_v1_9.last_sale_europe_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Date Time: ISO DateTime
  index, trading_date_time = cboe_bxeequities_lastsale_asciipitch_v1_9.trading_date_time.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_bxeequities_lastsale_asciipitch_v1_9.symbol.dissect(buffer, index, packet, parent)

  -- Price: Numeric Price
  index, price = cboe_bxeequities_lastsale_asciipitch_v1_9.price.dissect(buffer, index, packet, parent)

  -- Price Currency: Alpha
  index, price_currency = cboe_bxeequities_lastsale_asciipitch_v1_9.price_currency.dissect(buffer, index, packet, parent)

  -- Executed Shares: Numeric
  index, executed_shares = cboe_bxeequities_lastsale_asciipitch_v1_9.executed_shares.dissect(buffer, index, packet, parent)

  -- Execution Venue: Alpha
  index, execution_venue = cboe_bxeequities_lastsale_asciipitch_v1_9.execution_venue.dissect(buffer, index, packet, parent)

  -- Publication Date Time: ISO DateTime
  index, publication_date_time = cboe_bxeequities_lastsale_asciipitch_v1_9.publication_date_time.dissect(buffer, index, packet, parent)

  -- Trade Id: Base 36 Numeric
  index, trade_id = cboe_bxeequities_lastsale_asciipitch_v1_9.trade_id.dissect(buffer, index, packet, parent)

  -- Transaction Category: Alpha Flag
  index, transaction_category = cboe_bxeequities_lastsale_asciipitch_v1_9.transaction_category.dissect(buffer, index, packet, parent)

  -- Negotiation Flag: Alpha Flag
  index, negotiation_flag = cboe_bxeequities_lastsale_asciipitch_v1_9.negotiation_flag.dissect(buffer, index, packet, parent)

  -- Agency Cross Trade: Alpha Flag
  index, agency_cross_trade = cboe_bxeequities_lastsale_asciipitch_v1_9.agency_cross_trade.dissect(buffer, index, packet, parent)

  -- Modification Indicator: Alpha Flag
  index, modification_indicator = cboe_bxeequities_lastsale_asciipitch_v1_9.modification_indicator.dissect(buffer, index, packet, parent)

  -- Benchmark Reference Indicator: Alpha Flag
  index, benchmark_reference_indicator = cboe_bxeequities_lastsale_asciipitch_v1_9.benchmark_reference_indicator.dissect(buffer, index, packet, parent)

  -- Special Dividend: Alpha Flag
  index, special_dividend = cboe_bxeequities_lastsale_asciipitch_v1_9.special_dividend.dissect(buffer, index, packet, parent)

  -- Price Discovery Process: Alpha Flag
  index, price_discovery_process = cboe_bxeequities_lastsale_asciipitch_v1_9.price_discovery_process.dissect(buffer, index, packet, parent)

  -- Algorithmic Indicator: Alpha Flag
  index, algorithmic_indicator = cboe_bxeequities_lastsale_asciipitch_v1_9.algorithmic_indicator.dissect(buffer, index, packet, parent)

  -- Post Trade Deferral Reason: Alpha Flag
  index, post_trade_deferral_reason = cboe_bxeequities_lastsale_asciipitch_v1_9.post_trade_deferral_reason.dissect(buffer, index, packet, parent)

  -- Duplicative Indicator: Alpha Flag
  index, duplicative_indicator = cboe_bxeequities_lastsale_asciipitch_v1_9.duplicative_indicator.dissect(buffer, index, packet, parent)

  -- Jurisdiction: Alpha
  index, jurisdiction = cboe_bxeequities_lastsale_asciipitch_v1_9.jurisdiction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Sale Europe Message
cboe_bxeequities_lastsale_asciipitch_v1_9.last_sale_europe_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.last_sale_europe_message, buffer(offset, 0))
    local index = cboe_bxeequities_lastsale_asciipitch_v1_9.last_sale_europe_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_lastsale_asciipitch_v1_9.last_sale_europe_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_lastsale_asciipitch_v1_9.last_sale_europe_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_message = {}

-- Dissect: Sequenced Message
cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect Last Sale Europe Message
  if sequenced_message_type == "u" then
    return cboe_bxeequities_lastsale_asciipitch_v1_9.last_sale_europe_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Last Sale Europe Message New
  if sequenced_message_type == "7" then
    return cboe_bxeequities_lastsale_asciipitch_v1_9.last_sale_europe_message_new.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Message Header
cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_message_header = {}

-- Size: Sequenced Message Header
cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_message_header.size =
  cboe_bxeequities_lastsale_asciipitch_v1_9.timestamp.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_message_type.size

-- Display: Sequenced Message Header
cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message Header
cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = cboe_bxeequities_lastsale_asciipitch_v1_9.timestamp.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: Alphanumeric
  index, sequenced_message_type = cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Message Header
cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_message_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.sequenced_message_header, buffer(offset, 0))
    local index = cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Data Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_data_packet = {}

-- Calculate size of: Sequenced Data Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_data_packet.size = function(buffer, offset)
  local index = 0

  index = index + cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_message_header.size

  -- Calculate runtime size of Sequenced Message field
  local sequenced_message_offset = offset + index
  local sequenced_message_type = buffer(sequenced_message_offset - 1, 1):string()
  index = index + cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_message.size(buffer, sequenced_message_offset, sequenced_message_type)

  return index
end

-- Display: Sequenced Data Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequenced Message Header: Struct of 2 fields
  index, sequenced_message_header = cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Sequenced Message Type
  local sequenced_message_type = trim_right_spaces(buffer(index - 1, 1):string())

  -- Sequenced Message: Runtime Type with 2 branches
  index = cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.sequenced_data_packet, buffer(offset, 0))
    local index = cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Rejected Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.login_rejected_packet = {}

-- Size: Login Rejected Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.login_rejected_packet.size =
  cboe_bxeequities_lastsale_asciipitch_v1_9.reject_reason_code.size

-- Display: Login Rejected Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = cboe_bxeequities_lastsale_asciipitch_v1_9.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.login_rejected_packet, buffer(offset, 0))
    local index = cboe_bxeequities_lastsale_asciipitch_v1_9.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_lastsale_asciipitch_v1_9.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_lastsale_asciipitch_v1_9.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.login_accepted_packet = {}

-- Size: Login Accepted Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.login_accepted_packet.size =
  cboe_bxeequities_lastsale_asciipitch_v1_9.session.size + 
  cboe_bxeequities_lastsale_asciipitch_v1_9.sequence_number.size

-- Display: Login Accepted Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = cboe_bxeequities_lastsale_asciipitch_v1_9.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 10 Byte Ascii String
  index, sequence_number = cboe_bxeequities_lastsale_asciipitch_v1_9.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.login_accepted_packet, buffer(offset, 0))
    local index = cboe_bxeequities_lastsale_asciipitch_v1_9.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_lastsale_asciipitch_v1_9.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_lastsale_asciipitch_v1_9.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.debug_packet = {}

-- Size: Debug Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.debug_packet.size =
  cboe_bxeequities_lastsale_asciipitch_v1_9.text.size

-- Display: Debug Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = cboe_bxeequities_lastsale_asciipitch_v1_9.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.debug_packet, buffer(offset, 0))
    local index = cboe_bxeequities_lastsale_asciipitch_v1_9.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_lastsale_asciipitch_v1_9.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_lastsale_asciipitch_v1_9.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_bxeequities_lastsale_asciipitch_v1_9.payload = {}

-- Dissect: Payload
cboe_bxeequities_lastsale_asciipitch_v1_9.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Debug Packet
  if packet_type == "+" then
    return cboe_bxeequities_lastsale_asciipitch_v1_9.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if packet_type == "A" then
    return cboe_bxeequities_lastsale_asciipitch_v1_9.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if packet_type == "J" then
    return cboe_bxeequities_lastsale_asciipitch_v1_9.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if packet_type == "S" then
    return cboe_bxeequities_lastsale_asciipitch_v1_9.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if packet_type == "L" then
    return cboe_bxeequities_lastsale_asciipitch_v1_9.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return cboe_bxeequities_lastsale_asciipitch_v1_9.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Frame
cboe_bxeequities_lastsale_asciipitch_v1_9.frame = {}

-- Display: Frame
cboe_bxeequities_lastsale_asciipitch_v1_9.frame.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Frame
cboe_bxeequities_lastsale_asciipitch_v1_9.frame.fields = function(buffer, offset, packet, parent, size_of_frame)
  local index = offset

  -- Packet Type: 1 Byte Ascii String Enum with 9 values
  index, packet_type = cboe_bxeequities_lastsale_asciipitch_v1_9.packet_type.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 6 branches
  index = cboe_bxeequities_lastsale_asciipitch_v1_9.payload.dissect(buffer, index, packet, parent, packet_type)

  -- Soup Lf: 1 Byte Fixed Width Integer Static
  index, soup_lf = cboe_bxeequities_lastsale_asciipitch_v1_9.soup_lf.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Frame
cboe_bxeequities_lastsale_asciipitch_v1_9.frame.dissect = function(buffer, offset, packet, parent, size_of_frame)
  local index = offset + size_of_frame

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9.fields.frame, buffer(offset, 0))
    local current = cboe_bxeequities_lastsale_asciipitch_v1_9.frame.fields(buffer, offset, packet, parent, size_of_frame)
    parent:set_len(size_of_frame)
    local display = cboe_bxeequities_lastsale_asciipitch_v1_9.frame.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_bxeequities_lastsale_asciipitch_v1_9.frame.fields(buffer, offset, packet, parent, size_of_frame)

    return index
  end
end

-- Remaining Bytes For: Frame
local frame_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- A message runs to the first terminator byte: scan for it
  local terminator = 10
  local current = 0
  while current < remaining and buffer(index + current, 1):uint() ~= terminator do
    current = current + 1
  end

  -- The terminator is not in the bytes available yet: ask for one more segment
  if current >= remaining then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- The message includes the terminator byte it ends on
  current = current + 1

  return remaining, current
end

-- Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.packet = {}

-- Verify required size of Tcp packet
cboe_bxeequities_lastsale_asciipitch_v1_9.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_bxeequities_lastsale_asciipitch_v1_9.packet_type.size
end

-- Dissect Packet
cboe_bxeequities_lastsale_asciipitch_v1_9.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Frame
  local end_of_payload = buffer:len()

  -- Frame: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_frame = frame_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_frame):tvb()
      index = cboe_bxeequities_lastsale_asciipitch_v1_9.frame.dissect(frame, index, packet, parent, size_of_frame)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      -- Claim the whole buffer: tcp keeps the bytes from desegment_offset for reassembly
      return end_of_payload
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_bxeequities_lastsale_asciipitch_v1_9.init()
end

-- Dissector for Cboe BxeEquities LastSale AsciiPitch 1.9
function omi_cboe_bxeequities_lastsale_asciipitch_v1_9.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_bxeequities_lastsale_asciipitch_v1_9.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_bxeequities_lastsale_asciipitch_v1_9, buffer(), omi_cboe_bxeequities_lastsale_asciipitch_v1_9.description, "("..buffer:len().." Bytes)")
  return cboe_bxeequities_lastsale_asciipitch_v1_9.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe BxeEquities LastSale AsciiPitch 1.9 (Tcp)
local function omi_cboe_bxeequities_lastsale_asciipitch_v1_9_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_bxeequities_lastsale_asciipitch_v1_9.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_bxeequities_lastsale_asciipitch_v1_9
  omi_cboe_bxeequities_lastsale_asciipitch_v1_9.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe BxeEquities LastSale AsciiPitch 1.9
omi_cboe_bxeequities_lastsale_asciipitch_v1_9:register_heuristic("tcp", omi_cboe_bxeequities_lastsale_asciipitch_v1_9_tcp_heuristic)

-- Register Cboe BxeEquities LastSale AsciiPitch 1.9 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_bxeequities_lastsale_asciipitch_v1_9)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.9
--   Since: 1.8
--   Date: Thursday, February 6, 2025
--   Specification: BATS Europe Last Sale Specification (2025-05-03).pdf
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
