-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Finra FinraOtc Bbds Dfi 2018.1A Protocol
local omi_finra_finraotc_bbds_dfi_v2018_1a = Proto("Omi.Finra.FinraOtc.Bbds.Dfi.v2018.1A", "Finra FinraOtc Bbds Dfi 2018.1A")

-- Protocol table
local finra_finraotc_bbds_dfi_v2018_1a = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Finra FinraOtc Bbds Dfi 2018.1A Fields
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.action = ProtoField.new("Action", "finra.finraotc.bbds.dfi.v2018.1a.action", ftypes.STRING, nil, nil, nil, "Indicates the current trading status for the stated issue")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.action_datetime = ProtoField.new("Action Datetime", "finra.finraotc.bbds.dfi.v2018.1a.actiondatetime", ftypes.STRING)
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.administrative_message = ProtoField.new("Administrative Message", "finra.finraotc.bbds.dfi.v2018.1a.administrativemessage", ftypes.STRING, nil, nil, nil, "Administrative Messages Header")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.administrative_message_type = ProtoField.new("Administrative Message Type", "finra.finraotc.bbds.dfi.v2018.1a.administrativemessagetype", ftypes.STRING)
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.ask_price = ProtoField.new("Ask Price", "finra.finraotc.bbds.dfi.v2018.1a.askprice", ftypes.UINT64, nil, nil, nil, "The Ask price is the price at which the quoting participant is willing to sell (offer) the security for at any given time")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.ask_price_denominator = ProtoField.new("Ask Price Denominator", "finra.finraotc.bbds.dfi.v2018.1a.askpricedenominator", ftypes.STRING, nil, nil, nil, "The Ask Price Denominator denotes the whole dollar and decimal digit composition of the Ask Price field")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.ask_size = ProtoField.new("Ask Size", "finra.finraotc.bbds.dfi.v2018.1a.asksize", ftypes.UINT24, nil, nil, nil, "The Ask Size represents the amount of shares available at the quoting participant’s Ask Price in the given security")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.bid_price = ProtoField.new("Bid Price", "finra.finraotc.bbds.dfi.v2018.1a.bidprice", ftypes.UINT64, nil, nil, nil, "The Bid Price is the price at which the OTCBB quoting participant is willing to buy the security for at a given time")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.bid_price_denominator = ProtoField.new("Bid Price Denominator", "finra.finraotc.bbds.dfi.v2018.1a.bidpricedenominator", ftypes.STRING, nil, nil, nil, "The Bid Price Denominator denotes the whole dollar and decimal digit composition of the Ask Price field")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.bid_size = ProtoField.new("Bid Size", "finra.finraotc.bbds.dfi.v2018.1a.bidsize", ftypes.UINT24, nil, nil, nil, "The Bid Size represents the amount of shares available at the quoting participant’s Bid Price in the given security")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.block_soh = ProtoField.new("Block Soh", "finra.finraotc.bbds.dfi.v2018.1a.blocksoh", ftypes.UINT8, nil, nil, nil, "start of messages")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.control_message = ProtoField.new("Control Message", "finra.finraotc.bbds.dfi.v2018.1a.controlmessage", ftypes.STRING, nil, nil, nil, "Control Messages Header")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.control_message_type = ProtoField.new("Control Message Type", "finra.finraotc.bbds.dfi.v2018.1a.controlmessagetype", ftypes.STRING)
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.currency = ProtoField.new("Currency", "finra.finraotc.bbds.dfi.v2018.1a.currency", ftypes.STRING, nil, nil, nil, "This field indicates the currency in which the trade transaction was reported")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.datetime = ProtoField.new("Datetime", "finra.finraotc.bbds.dfi.v2018.1a.datetime", ftypes.STRING)
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.day = ProtoField.new("Day", "finra.finraotc.bbds.dfi.v2018.1a.day", ftypes.STRING, nil, nil, nil, "The day of the month the transaction occurred")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.hour = ProtoField.new("Hour", "finra.finraotc.bbds.dfi.v2018.1a.hour", ftypes.STRING, nil, nil, nil, "The hour of the day the transaction occurred in military time")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.inside_appendage = ProtoField.new("Inside Appendage", "finra.finraotc.bbds.dfi.v2018.1a.insideappendage", ftypes.STRING)
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.inside_appendage_indicator = ProtoField.new("Inside Appendage Indicator", "finra.finraotc.bbds.dfi.v2018.1a.insideappendageindicator", ftypes.UINT8, nil, nil, nil, "The Inside Appendage Indicator field indicates how the Inside quote for the OTCBB issue is impacted by the current Market Participant update")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.inside_ask_price = ProtoField.new("Inside Ask Price", "finra.finraotc.bbds.dfi.v2018.1a.insideaskprice", ftypes.UINT64, nil, nil, nil, "The Inside Ask Price indicates the best ask price available in the OTCBB system for the issue")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.inside_ask_price_denominator = ProtoField.new("Inside Ask Price Denominator", "finra.finraotc.bbds.dfi.v2018.1a.insideaskpricedenominator", ftypes.STRING, nil, nil, nil, "The Inside Ask Price Denominator field denotes the whole dollar and decimal digit composition of the Inside Ask Price field")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.inside_ask_size = ProtoField.new("Inside Ask Size", "finra.finraotc.bbds.dfi.v2018.1a.insideasksize", ftypes.UINT64, nil, nil, nil, "This Inside Ask Size field indicates the largest size (in round lots) quoted by an OTCBB market participant at the Inside Price in the issue.")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.inside_bid_price = ProtoField.new("Inside Bid Price", "finra.finraotc.bbds.dfi.v2018.1a.insidebidprice", ftypes.UINT64, nil, nil, nil, "The Inside Bid Price indicates the best (highest) bid price available in the OTCBB system for the issue")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.inside_bid_price_denominator = ProtoField.new("Inside Bid Price Denominator", "finra.finraotc.bbds.dfi.v2018.1a.insidebidpricedenominator", ftypes.STRING, nil, nil, nil, "The Inside Bid Price Denominator field denotes the whole dollar and decimal digit composition of the Inside Ask Price field")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.inside_bid_size = ProtoField.new("Inside Bid Size", "finra.finraotc.bbds.dfi.v2018.1a.insidebidsize", ftypes.UINT64, nil, nil, nil, "This Inside Bid Size field indicates the largest size (in round lots) quoted by an OTCBB market participant at the Inside Price in the issue.")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.inside_quote_condition = ProtoField.new("Inside Quote Condition", "finra.finraotc.bbds.dfi.v2018.1a.insidequotecondition", ftypes.STRING, nil, nil, nil, "This Function field denotes if the original trade report is being cancelled or was reported in error")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.market_center_originator_id = ProtoField.new("Market Center Originator Id", "finra.finraotc.bbds.dfi.v2018.1a.marketcenteroriginatorid", ftypes.STRING, nil, nil, nil, "This field indicates the market center or system that originated the message that follows")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.market_participant_identifier = ProtoField.new("Market Participant Identifier", "finra.finraotc.bbds.dfi.v2018.1a.marketparticipantidentifier", ftypes.STRING, nil, nil, nil, "The Market Participant Identifier (MPID) field indicates the identifier assigned by FINRA to the OTCBB Market Participant that is responsible for generating a quotation message")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.market_participant_location_id = ProtoField.new("Market Participant Location Id", "finra.finraotc.bbds.dfi.v2018.1a.marketparticipantlocationid", ftypes.STRING, nil, nil, nil, "The Market Participant Location ID field identifies the branch or trading desk at Market Maker firm or ECN responsible for entering and maintaining quote in the give OTCBB issue")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.market_participant_quote_condition = ProtoField.new("Market Participant Quote Condition", "finra.finraotc.bbds.dfi.v2018.1a.marketparticipantquotecondition", ftypes.STRING, nil, nil, nil, "The Market Participant Quote Condition field indicates the current quotation state for a Market Participant in a given OTCBB issue")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.market_participant_status = ProtoField.new("Market Participant Status", "finra.finraotc.bbds.dfi.v2018.1a.marketparticipantstatus", ftypes.STRING, nil, nil, nil, "This alphanumeric field indicates the current status for the Market Participant position for the issue")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.message_category = ProtoField.new("Message Category", "finra.finraotc.bbds.dfi.v2018.1a.messagecategory", ftypes.STRING)
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.message_header = ProtoField.new("Message Header", "finra.finraotc.bbds.dfi.v2018.1a.messageheader", ftypes.STRING)
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.message_separator = ProtoField.new("Message Separator", "finra.finraotc.bbds.dfi.v2018.1a.messageseparator", ftypes.UINT8)
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "finra.finraotc.bbds.dfi.v2018.1a.messagesequencenumber", ftypes.UINT32, nil, nil, nil, "Message Sequence Number, at the beginning of each operational cycle, this number will be set to 00000000 of each data channel")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.minute = ProtoField.new("Minute", "finra.finraotc.bbds.dfi.v2018.1a.minute", ftypes.STRING, nil, nil, nil, "The minute of the hour the transaction occurred.")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.month = ProtoField.new("Month", "finra.finraotc.bbds.dfi.v2018.1a.month", ftypes.STRING, nil, nil, nil, "The month the transaction occurred")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.otcbb_symbol = ProtoField.new("Otcbb Symbol", "finra.finraotc.bbds.dfi.v2018.1a.otcbbsymbol", ftypes.STRING, nil, nil, nil, "This alphanumeric field indicates the issue symbol for the OTCBB security being quoted")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.otcbb_type = ProtoField.new("Otcbb Type", "finra.finraotc.bbds.dfi.v2018.1a.otcbbtype", ftypes.STRING, nil, nil, nil, "This alphanumeric field indicates if the OTCBB issue being quoted is eligible for real-time or indicative updates")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.quotation_message = ProtoField.new("Quotation Message", "finra.finraotc.bbds.dfi.v2018.1a.quotationmessage", ftypes.STRING, nil, nil, nil, "Quotation Messages Header")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.quotation_message_type = ProtoField.new("Quotation Message Type", "finra.finraotc.bbds.dfi.v2018.1a.quotationmessagetype", ftypes.STRING)
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.reason_code = ProtoField.new("Reason Code", "finra.finraotc.bbds.dfi.v2018.1a.reasoncode", ftypes.STRING, nil, nil, nil, "The Reason Code indicates the reason for the current trading action status.")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.reserved_1 = ProtoField.new("Reserved 1", "finra.finraotc.bbds.dfi.v2018.1a.reserved1", ftypes.STRING, nil, nil, nil, "This field will be space filled")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.retransmission_requester = ProtoField.new("Retransmission Requester", "finra.finraotc.bbds.dfi.v2018.1a.retransmissionrequester", ftypes.STRING, nil, nil, nil, "This field indicates if the message is an original transmission or retransmission")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.second = ProtoField.new("Second", "finra.finraotc.bbds.dfi.v2018.1a.second", ftypes.STRING, nil, nil, nil, "The second of the minute the transaction occurred")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.session_identifier = ProtoField.new("Session Identifier", "finra.finraotc.bbds.dfi.v2018.1a.sessionidentifier", ftypes.STRING, nil, nil, nil, "This field indicates the market session of the message")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.stock_symbol = ProtoField.new("Stock Symbol", "finra.finraotc.bbds.dfi.v2018.1a.stocksymbol", ftypes.STRING, nil, nil, nil, "This alphanumeric field indicates the issue symbol for the OTCBB security that is impacted by the FINRA Trading Action")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.text = ProtoField.new("Text", "finra.finraotc.bbds.dfi.v2018.1a.text", ftypes.STRING, nil, nil, nil, "Free-form text is used to notify data feed subscribers of corporate actions or special trading situations")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.unsolicited_indicator = ProtoField.new("Unsolicited Indicator", "finra.finraotc.bbds.dfi.v2018.1a.unsolicitedindicator", ftypes.STRING, nil, nil, nil, "The Unsolicited Indicator field indicates if the Market Participant is entering an unsolicited quote in a given security")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.wanted_indicator = ProtoField.new("Wanted Indicator", "finra.finraotc.bbds.dfi.v2018.1a.wantedindicator", ftypes.STRING, nil, nil, nil, "The Offer Wanted/Bid Wanted Indicator field indicates a special, unpriced OTCBB quotation from a market participant")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.year = ProtoField.new("Year", "finra.finraotc.bbds.dfi.v2018.1a.year", ftypes.STRING, nil, nil, nil, "The year the transaction occurred")

-- Finra FinraOtc Bbds Dfi 2018.1A Framing
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.message = ProtoField.new("Message", "finra.finraotc.bbds.dfi.v2018.1a.message", ftypes.STRING)
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.packet = ProtoField.new("Packet", "finra.finraotc.bbds.dfi.v2018.1a.packet", ftypes.STRING, nil, nil, nil, "Dfi Udp Packet")

-- Finra FinraOtc Bbds 2018.1A Application Messages
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.end_of_day_message = ProtoField.new("End Of Day Message", "finra.finraotc.bbds.dfi.v2018.1a.endofdaymessage", ftypes.STRING, nil, nil, nil, "The End of Day control message signals the end of active message dissemination for the TDDS operational cycle")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.end_of_retransmission_requests_message = ProtoField.new("End Of Retransmission Requests Message", "finra.finraotc.bbds.dfi.v2018.1a.endofretransmissionrequestsmessage", ftypes.STRING, nil, nil, nil, "This message signals that no further retransmission requests will be honored. The End of Retransmission Requests message will be sent three times, at one-minute intervals")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.end_of_trade_reporting_message = ProtoField.new("End Of Trade Reporting Message", "finra.finraotc.bbds.dfi.v2018.1a.endoftradereportingmessage", ftypes.STRING, nil, nil, nil, "The End of Trade Reporting Control Message signals that the ORF system is closed for market participant trade transactions")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.end_of_transmissions_message = ProtoField.new("End Of Transmissions Message", "finra.finraotc.bbds.dfi.v2018.1a.endoftransmissionsmessage", ftypes.STRING, nil, nil, nil, "The End of Transmissions Message signals that there will be no further transmissions of data sent through the TDDS line.")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.general_administrative_message = ProtoField.new("General Administrative Message", "finra.finraotc.bbds.dfi.v2018.1a.generaladministrativemessage", ftypes.STRING, nil, nil, nil, "A variable length, free-form text message format will be used on an as-needed basis")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.line_integrity_message = ProtoField.new("Line Integrity Message", "finra.finraotc.bbds.dfi.v2018.1a.lineintegritymessage", ftypes.STRING, nil, nil, nil, "The Line Integrity Control Message will be transmitted at approximately one-minute intervals to verify the operational integrity of the TDDS message transmission, and will be intermixed with other messages")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.market_participant_quote_update_message = ProtoField.new("Market Participant Quote Update Message", "finra.finraotc.bbds.dfi.v2018.1a.marketparticipantquoteupdatemessage", ftypes.STRING, nil, nil, nil, "The following message format will be used to disseminate the best-priced quotation for all OTCBB quoting participants and the Inside Quote in each issue")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.market_session_close_message = ProtoField.new("Market Session Close Message", "finra.finraotc.bbds.dfi.v2018.1a.marketsessionclosemessage", ftypes.STRING, nil, nil, nil, "The Session Close Control Message signals the closing of FINRA’s market systems for the session indicated in the Message Header")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.market_session_open_message = ProtoField.new("Market Session Open Message", "finra.finraotc.bbds.dfi.v2018.1a.marketsessionopenmessage", ftypes.STRING, nil, nil, nil, "The Market Session Open Control Message signifies the opening of FINRA’s market systems for the session indicated in the Message Header")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "finra.finraotc.bbds.dfi.v2018.1a.sequencenumberresetmessage", ftypes.STRING, nil, nil, nil, "The Sequence Number Reset Message forces the resetting of the Sequence Number. The Sequence Number will either be reset to zero or to a number greater than the last number previously transmitted")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.start_of_day_message = ProtoField.new("Start Of Day Message", "finra.finraotc.bbds.dfi.v2018.1a.startofdaymessage", ftypes.STRING, nil, nil, nil, "The Start of Day control message signifies the beginning of each operational cycle for TDDS processing")
omi_finra_finraotc_bbds_dfi_v2018_1a.fields.trading_action_message = ProtoField.new("Trading Action Message", "finra.finraotc.bbds.dfi.v2018.1a.tradingactionmessage", ftypes.STRING, nil, nil, nil, "FINRA will disseminate this message to inform customers of trading actions, such as halts or trading resumptions which affect individual OTCBB or Other OTC securities")

-- Finra FinraOtc Bbds Dfi 2018.1A Expert Info
finra_finraotc_bbds_dfi_v2018_1a.experts = {}
finra_finraotc_bbds_dfi_v2018_1a.experts.not_a_number = ProtoExpert.new("finra.finraotc.bbds.dfi.v2018.1a.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_finra_finraotc_bbds_dfi_v2018_1a.experts = { finra_finraotc_bbds_dfi_v2018_1a.experts.not_a_number }

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Finra FinraOtc Bbds Dfi 2018.1A Element Dissection Options
show.structs = true
show.application_messages = true

-- Register Finra FinraOtc Bbds Dfi 2018.1A Show Options
omi_finra_finraotc_bbds_dfi_v2018_1a.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_finra_finraotc_bbds_dfi_v2018_1a.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")

-- Handle changed preferences
function omi_finra_finraotc_bbds_dfi_v2018_1a.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_finra_finraotc_bbds_dfi_v2018_1a.prefs.show_application_messages then
    show.application_messages = omi_finra_finraotc_bbds_dfi_v2018_1a.prefs.show_application_messages
  end
  if show.structs ~= omi_finra_finraotc_bbds_dfi_v2018_1a.prefs.show_structs then
    show.structs = omi_finra_finraotc_bbds_dfi_v2018_1a.prefs.show_structs
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
-- Finra FinraOtc Bbds Dfi 2018.1A Fields
-----------------------------------------------------------------------

-- Action
finra_finraotc_bbds_dfi_v2018_1a.action = {}

-- Size: Action
finra_finraotc_bbds_dfi_v2018_1a.action.size = 1

-- Display: Action
finra_finraotc_bbds_dfi_v2018_1a.action.labels = {
  ["H"] = "Action: Trading Halt (H)",
  ["Q"] = "Action: Quotation Resumption (Q)",
  ["T"] = "Action: Trading Resumption (T)",
}

finra_finraotc_bbds_dfi_v2018_1a.action.display = function(value)
  return finra_finraotc_bbds_dfi_v2018_1a.action.labels[value] or "Action: Unknown("..value..")"
end

-- Dissect: Action
finra_finraotc_bbds_dfi_v2018_1a.action.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraotc_bbds_dfi_v2018_1a.action.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.action, range, value, display)

  return offset + length, value
end

-- Administrative Message Type
finra_finraotc_bbds_dfi_v2018_1a.administrative_message_type = {}

-- Size: Administrative Message Type
finra_finraotc_bbds_dfi_v2018_1a.administrative_message_type.size = 1

-- Display: Administrative Message Type
finra_finraotc_bbds_dfi_v2018_1a.administrative_message_type.labels = {
  ["A"] = "Administrative Message Type: General Administrative Message (A)",
  ["H"] = "Administrative Message Type: Trading Action Message (H)",
}

finra_finraotc_bbds_dfi_v2018_1a.administrative_message_type.display = function(value)
  return finra_finraotc_bbds_dfi_v2018_1a.administrative_message_type.labels[value] or "Administrative Message Type: Unknown("..value..")"
end

-- Dissect: Administrative Message Type
finra_finraotc_bbds_dfi_v2018_1a.administrative_message_type.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.administrative_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraotc_bbds_dfi_v2018_1a.administrative_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.administrative_message_type, range, value, display)

  return offset + length, value
end

-- Ask Price
finra_finraotc_bbds_dfi_v2018_1a.ask_price = {}

-- Size: Ask Price
finra_finraotc_bbds_dfi_v2018_1a.ask_price.size = 12

-- Display: Ask Price
finra_finraotc_bbds_dfi_v2018_1a.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
finra_finraotc_bbds_dfi_v2018_1a.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.ask_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.ask_price, range, value, "Ask Price: Not Applicable")
    item:add_proto_expert_info(finra_finraotc_bbds_dfi_v2018_1a.experts.not_a_number, "Ask Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = finra_finraotc_bbds_dfi_v2018_1a.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Price Denominator
finra_finraotc_bbds_dfi_v2018_1a.ask_price_denominator = {}

-- Size: Ask Price Denominator
finra_finraotc_bbds_dfi_v2018_1a.ask_price_denominator.size = 1

-- Display: Ask Price Denominator
finra_finraotc_bbds_dfi_v2018_1a.ask_price_denominator.display = function(value)
  return "Ask Price Denominator: "..value
end

-- Dissect: Ask Price Denominator
finra_finraotc_bbds_dfi_v2018_1a.ask_price_denominator.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.ask_price_denominator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraotc_bbds_dfi_v2018_1a.ask_price_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.ask_price_denominator, range, value, display)

  return offset + length, value
end

-- Ask Size
finra_finraotc_bbds_dfi_v2018_1a.ask_size = {}

-- Size: Ask Size
finra_finraotc_bbds_dfi_v2018_1a.ask_size.size = 7

-- Display: Ask Size
finra_finraotc_bbds_dfi_v2018_1a.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
finra_finraotc_bbds_dfi_v2018_1a.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.ask_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.ask_size, range, value, "Ask Size: Not Applicable")
    item:add_proto_expert_info(finra_finraotc_bbds_dfi_v2018_1a.experts.not_a_number, "Ask Size is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = finra_finraotc_bbds_dfi_v2018_1a.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Bid Price
finra_finraotc_bbds_dfi_v2018_1a.bid_price = {}

-- Size: Bid Price
finra_finraotc_bbds_dfi_v2018_1a.bid_price.size = 12

-- Display: Bid Price
finra_finraotc_bbds_dfi_v2018_1a.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
finra_finraotc_bbds_dfi_v2018_1a.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.bid_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.bid_price, range, value, "Bid Price: Not Applicable")
    item:add_proto_expert_info(finra_finraotc_bbds_dfi_v2018_1a.experts.not_a_number, "Bid Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = finra_finraotc_bbds_dfi_v2018_1a.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Price Denominator
finra_finraotc_bbds_dfi_v2018_1a.bid_price_denominator = {}

-- Size: Bid Price Denominator
finra_finraotc_bbds_dfi_v2018_1a.bid_price_denominator.size = 1

-- Display: Bid Price Denominator
finra_finraotc_bbds_dfi_v2018_1a.bid_price_denominator.display = function(value)
  return "Bid Price Denominator: "..value
end

-- Dissect: Bid Price Denominator
finra_finraotc_bbds_dfi_v2018_1a.bid_price_denominator.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.bid_price_denominator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraotc_bbds_dfi_v2018_1a.bid_price_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.bid_price_denominator, range, value, display)

  return offset + length, value
end

-- Bid Size
finra_finraotc_bbds_dfi_v2018_1a.bid_size = {}

-- Size: Bid Size
finra_finraotc_bbds_dfi_v2018_1a.bid_size.size = 7

-- Display: Bid Size
finra_finraotc_bbds_dfi_v2018_1a.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
finra_finraotc_bbds_dfi_v2018_1a.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.bid_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.bid_size, range, value, "Bid Size: Not Applicable")
    item:add_proto_expert_info(finra_finraotc_bbds_dfi_v2018_1a.experts.not_a_number, "Bid Size is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = finra_finraotc_bbds_dfi_v2018_1a.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Block Soh
finra_finraotc_bbds_dfi_v2018_1a.block_soh = {}

-- Size: Block Soh
finra_finraotc_bbds_dfi_v2018_1a.block_soh.size = 1

-- Display: Block Soh
finra_finraotc_bbds_dfi_v2018_1a.block_soh.display = function(value)
  if value == 1 then
    return "Block Soh: Block Soh"
  end

  return "Block Soh: Unknown("..value..")"
end

-- Dissect: Block Soh
finra_finraotc_bbds_dfi_v2018_1a.block_soh.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.block_soh.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = finra_finraotc_bbds_dfi_v2018_1a.block_soh.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.block_soh, range, value, display)

  return offset + length, value
end

-- Control Message Type
finra_finraotc_bbds_dfi_v2018_1a.control_message_type = {}

-- Size: Control Message Type
finra_finraotc_bbds_dfi_v2018_1a.control_message_type.size = 1

-- Display: Control Message Type
finra_finraotc_bbds_dfi_v2018_1a.control_message_type.labels = {
  ["I"] = "Control Message Type: Start Of Day Message (I)",
  ["J"] = "Control Message Type: End Of Day Message (J)",
  ["O"] = "Control Message Type: Market Session Open Message (O)",
  ["C"] = "Control Message Type: Market Session Close Message (C)",
  ["K"] = "Control Message Type: End Of Retransmission Requests Message (K)",
  ["Z"] = "Control Message Type: End Of Transmissions Message (Z)",
  ["T"] = "Control Message Type: Line Integrity Message (T)",
  ["L"] = "Control Message Type: Sequence Number Reset Message (L)",
  ["X"] = "Control Message Type: End Of Trade Reporting Message (X)",
}

finra_finraotc_bbds_dfi_v2018_1a.control_message_type.display = function(value)
  return finra_finraotc_bbds_dfi_v2018_1a.control_message_type.labels[value] or "Control Message Type: Unknown("..value..")"
end

-- Dissect: Control Message Type
finra_finraotc_bbds_dfi_v2018_1a.control_message_type.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.control_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraotc_bbds_dfi_v2018_1a.control_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.control_message_type, range, value, display)

  return offset + length, value
end

-- Currency
finra_finraotc_bbds_dfi_v2018_1a.currency = {}

-- Size: Currency
finra_finraotc_bbds_dfi_v2018_1a.currency.size = 3

-- Display: Currency
finra_finraotc_bbds_dfi_v2018_1a.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
finra_finraotc_bbds_dfi_v2018_1a.currency.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = finra_finraotc_bbds_dfi_v2018_1a.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.currency, range, value, display)

  return offset + length, value
end

-- Day
finra_finraotc_bbds_dfi_v2018_1a.day = {}

-- Size: Day
finra_finraotc_bbds_dfi_v2018_1a.day.size = 1

-- Display: Day
finra_finraotc_bbds_dfi_v2018_1a.day.display = function(value)
  return "Day: "..value
end

-- Dissect: Day
finra_finraotc_bbds_dfi_v2018_1a.day.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.day.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraotc_bbds_dfi_v2018_1a.day.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.day, range, value, display)

  return offset + length, value
end

-- Hour
finra_finraotc_bbds_dfi_v2018_1a.hour = {}

-- Size: Hour
finra_finraotc_bbds_dfi_v2018_1a.hour.size = 1

-- Display: Hour
finra_finraotc_bbds_dfi_v2018_1a.hour.display = function(value)
  return "Hour: "..value
end

-- Dissect: Hour
finra_finraotc_bbds_dfi_v2018_1a.hour.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.hour.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraotc_bbds_dfi_v2018_1a.hour.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.hour, range, value, display)

  return offset + length, value
end

-- Inside Appendage Indicator
finra_finraotc_bbds_dfi_v2018_1a.inside_appendage_indicator = {}

-- Size: Inside Appendage Indicator
finra_finraotc_bbds_dfi_v2018_1a.inside_appendage_indicator.size = 1

-- Display: Inside Appendage Indicator
finra_finraotc_bbds_dfi_v2018_1a.inside_appendage_indicator.labels = {
  [1] = "Inside Appendage Indicator: No Change To Inside Quote (1)",
  [2] = "Inside Appendage Indicator: No Inside Exists (2)",
  [3] = "Inside Appendage Indicator: Inside Quote Appendage Is Attached (3)",
}

finra_finraotc_bbds_dfi_v2018_1a.inside_appendage_indicator.display = function(value)
  return finra_finraotc_bbds_dfi_v2018_1a.inside_appendage_indicator.labels[value] or "Inside Appendage Indicator: Unknown("..value..")"
end

-- Dissect: Inside Appendage Indicator
finra_finraotc_bbds_dfi_v2018_1a.inside_appendage_indicator.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.inside_appendage_indicator.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.inside_appendage_indicator, range, value, "Inside Appendage Indicator: Not Applicable")
    item:add_proto_expert_info(finra_finraotc_bbds_dfi_v2018_1a.experts.not_a_number, "Inside Appendage Indicator is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = finra_finraotc_bbds_dfi_v2018_1a.inside_appendage_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.inside_appendage_indicator, range, value, display)

  return offset + length, value
end

-- Inside Ask Price
finra_finraotc_bbds_dfi_v2018_1a.inside_ask_price = {}

-- Size: Inside Ask Price
finra_finraotc_bbds_dfi_v2018_1a.inside_ask_price.size = 12

-- Display: Inside Ask Price
finra_finraotc_bbds_dfi_v2018_1a.inside_ask_price.display = function(value)
  return "Inside Ask Price: "..value
end

-- Dissect: Inside Ask Price
finra_finraotc_bbds_dfi_v2018_1a.inside_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.inside_ask_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.inside_ask_price, range, value, "Inside Ask Price: Not Applicable")
    item:add_proto_expert_info(finra_finraotc_bbds_dfi_v2018_1a.experts.not_a_number, "Inside Ask Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = finra_finraotc_bbds_dfi_v2018_1a.inside_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.inside_ask_price, range, value, display)

  return offset + length, value
end

-- Inside Ask Price Denominator
finra_finraotc_bbds_dfi_v2018_1a.inside_ask_price_denominator = {}

-- Size: Inside Ask Price Denominator
finra_finraotc_bbds_dfi_v2018_1a.inside_ask_price_denominator.size = 1

-- Display: Inside Ask Price Denominator
finra_finraotc_bbds_dfi_v2018_1a.inside_ask_price_denominator.display = function(value)
  return "Inside Ask Price Denominator: "..value
end

-- Dissect: Inside Ask Price Denominator
finra_finraotc_bbds_dfi_v2018_1a.inside_ask_price_denominator.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.inside_ask_price_denominator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraotc_bbds_dfi_v2018_1a.inside_ask_price_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.inside_ask_price_denominator, range, value, display)

  return offset + length, value
end

-- Inside Ask Size
finra_finraotc_bbds_dfi_v2018_1a.inside_ask_size = {}

-- Size: Inside Ask Size
finra_finraotc_bbds_dfi_v2018_1a.inside_ask_size.size = 12

-- Display: Inside Ask Size
finra_finraotc_bbds_dfi_v2018_1a.inside_ask_size.display = function(value)
  return "Inside Ask Size: "..value
end

-- Dissect: Inside Ask Size
finra_finraotc_bbds_dfi_v2018_1a.inside_ask_size.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.inside_ask_size.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.inside_ask_size, range, value, "Inside Ask Size: Not Applicable")
    item:add_proto_expert_info(finra_finraotc_bbds_dfi_v2018_1a.experts.not_a_number, "Inside Ask Size is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = finra_finraotc_bbds_dfi_v2018_1a.inside_ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.inside_ask_size, range, value, display)

  return offset + length, value
end

-- Inside Bid Price
finra_finraotc_bbds_dfi_v2018_1a.inside_bid_price = {}

-- Size: Inside Bid Price
finra_finraotc_bbds_dfi_v2018_1a.inside_bid_price.size = 12

-- Display: Inside Bid Price
finra_finraotc_bbds_dfi_v2018_1a.inside_bid_price.display = function(value)
  return "Inside Bid Price: "..value
end

-- Dissect: Inside Bid Price
finra_finraotc_bbds_dfi_v2018_1a.inside_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.inside_bid_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.inside_bid_price, range, value, "Inside Bid Price: Not Applicable")
    item:add_proto_expert_info(finra_finraotc_bbds_dfi_v2018_1a.experts.not_a_number, "Inside Bid Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = finra_finraotc_bbds_dfi_v2018_1a.inside_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.inside_bid_price, range, value, display)

  return offset + length, value
end

-- Inside Bid Price Denominator
finra_finraotc_bbds_dfi_v2018_1a.inside_bid_price_denominator = {}

-- Size: Inside Bid Price Denominator
finra_finraotc_bbds_dfi_v2018_1a.inside_bid_price_denominator.size = 1

-- Display: Inside Bid Price Denominator
finra_finraotc_bbds_dfi_v2018_1a.inside_bid_price_denominator.display = function(value)
  return "Inside Bid Price Denominator: "..value
end

-- Dissect: Inside Bid Price Denominator
finra_finraotc_bbds_dfi_v2018_1a.inside_bid_price_denominator.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.inside_bid_price_denominator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraotc_bbds_dfi_v2018_1a.inside_bid_price_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.inside_bid_price_denominator, range, value, display)

  return offset + length, value
end

-- Inside Bid Size
finra_finraotc_bbds_dfi_v2018_1a.inside_bid_size = {}

-- Size: Inside Bid Size
finra_finraotc_bbds_dfi_v2018_1a.inside_bid_size.size = 12

-- Display: Inside Bid Size
finra_finraotc_bbds_dfi_v2018_1a.inside_bid_size.display = function(value)
  return "Inside Bid Size: "..value
end

-- Dissect: Inside Bid Size
finra_finraotc_bbds_dfi_v2018_1a.inside_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.inside_bid_size.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.inside_bid_size, range, value, "Inside Bid Size: Not Applicable")
    item:add_proto_expert_info(finra_finraotc_bbds_dfi_v2018_1a.experts.not_a_number, "Inside Bid Size is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = finra_finraotc_bbds_dfi_v2018_1a.inside_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.inside_bid_size, range, value, display)

  return offset + length, value
end

-- Inside Quote Condition
finra_finraotc_bbds_dfi_v2018_1a.inside_quote_condition = {}

-- Size: Inside Quote Condition
finra_finraotc_bbds_dfi_v2018_1a.inside_quote_condition.size = 1

-- Display: Inside Quote Condition
finra_finraotc_bbds_dfi_v2018_1a.inside_quote_condition.labels = {
  ["O"] = "Inside Quote Condition: Open (O)",
  ["C"] = "Inside Quote Condition: Closed (C)",
}

finra_finraotc_bbds_dfi_v2018_1a.inside_quote_condition.display = function(value)
  return finra_finraotc_bbds_dfi_v2018_1a.inside_quote_condition.labels[value] or "Inside Quote Condition: Unknown("..value..")"
end

-- Dissect: Inside Quote Condition
finra_finraotc_bbds_dfi_v2018_1a.inside_quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.inside_quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraotc_bbds_dfi_v2018_1a.inside_quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.inside_quote_condition, range, value, display)

  return offset + length, value
end

-- Market Center Originator Id
finra_finraotc_bbds_dfi_v2018_1a.market_center_originator_id = {}

-- Size: Market Center Originator Id
finra_finraotc_bbds_dfi_v2018_1a.market_center_originator_id.size = 1

-- Display: Market Center Originator Id
finra_finraotc_bbds_dfi_v2018_1a.market_center_originator_id.labels = {
  ["E"] = "Market Center Originator Id: Market Center Independent (E)",
  ["U"] = "Market Center Originator Id: Otc Bulletin Board (U)",
  ["Q"] = "Market Center Originator Id: Nasdaq Omx Market System (Q)",
}

finra_finraotc_bbds_dfi_v2018_1a.market_center_originator_id.display = function(value)
  return finra_finraotc_bbds_dfi_v2018_1a.market_center_originator_id.labels[value] or "Market Center Originator Id: Unknown("..value..")"
end

-- Dissect: Market Center Originator Id
finra_finraotc_bbds_dfi_v2018_1a.market_center_originator_id.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.market_center_originator_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraotc_bbds_dfi_v2018_1a.market_center_originator_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.market_center_originator_id, range, value, display)

  return offset + length, value
end

-- Market Participant Identifier
finra_finraotc_bbds_dfi_v2018_1a.market_participant_identifier = {}

-- Size: Market Participant Identifier
finra_finraotc_bbds_dfi_v2018_1a.market_participant_identifier.size = 1

-- Display: Market Participant Identifier
finra_finraotc_bbds_dfi_v2018_1a.market_participant_identifier.display = function(value)
  return "Market Participant Identifier: "..value
end

-- Dissect: Market Participant Identifier
finra_finraotc_bbds_dfi_v2018_1a.market_participant_identifier.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.market_participant_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraotc_bbds_dfi_v2018_1a.market_participant_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.market_participant_identifier, range, value, display)

  return offset + length, value
end

-- Market Participant Location Id
finra_finraotc_bbds_dfi_v2018_1a.market_participant_location_id = {}

-- Size: Market Participant Location Id
finra_finraotc_bbds_dfi_v2018_1a.market_participant_location_id.size = 1

-- Display: Market Participant Location Id
finra_finraotc_bbds_dfi_v2018_1a.market_participant_location_id.display = function(value)
  return "Market Participant Location Id: "..value
end

-- Dissect: Market Participant Location Id
finra_finraotc_bbds_dfi_v2018_1a.market_participant_location_id.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.market_participant_location_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraotc_bbds_dfi_v2018_1a.market_participant_location_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.market_participant_location_id, range, value, display)

  return offset + length, value
end

-- Market Participant Quote Condition
finra_finraotc_bbds_dfi_v2018_1a.market_participant_quote_condition = {}

-- Size: Market Participant Quote Condition
finra_finraotc_bbds_dfi_v2018_1a.market_participant_quote_condition.size = 1

-- Display: Market Participant Quote Condition
finra_finraotc_bbds_dfi_v2018_1a.market_participant_quote_condition.labels = {
  ["O"] = "Market Participant Quote Condition: Open (O)",
  ["C"] = "Market Participant Quote Condition: Closed (C)",
  ["I"] = "Market Participant Quote Condition: Periodic Indicative Other Securities (I)",
  ["K"] = "Market Participant Quote Condition: Realtime Quotes (K)",
  ["L"] = "Market Participant Quote Condition: Periodic Indicative Quotes (L)",
}

finra_finraotc_bbds_dfi_v2018_1a.market_participant_quote_condition.display = function(value)
  return finra_finraotc_bbds_dfi_v2018_1a.market_participant_quote_condition.labels[value] or "Market Participant Quote Condition: Unknown("..value..")"
end

-- Dissect: Market Participant Quote Condition
finra_finraotc_bbds_dfi_v2018_1a.market_participant_quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.market_participant_quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraotc_bbds_dfi_v2018_1a.market_participant_quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.market_participant_quote_condition, range, value, display)

  return offset + length, value
end

-- Market Participant Status
finra_finraotc_bbds_dfi_v2018_1a.market_participant_status = {}

-- Size: Market Participant Status
finra_finraotc_bbds_dfi_v2018_1a.market_participant_status.size = 1

-- Display: Market Participant Status
finra_finraotc_bbds_dfi_v2018_1a.market_participant_status.labels = {
  ["A"] = "Market Participant Status: Active (A)",
  ["D"] = "Market Participant Status: Deleted (D)",
  ["E"] = "Market Participant Status: Excused (E)",
  ["W"] = "Market Participant Status: Withdrawn (W)",
  ["S"] = "Market Participant Status: Suspended (S)",
}

finra_finraotc_bbds_dfi_v2018_1a.market_participant_status.display = function(value)
  return finra_finraotc_bbds_dfi_v2018_1a.market_participant_status.labels[value] or "Market Participant Status: Unknown("..value..")"
end

-- Dissect: Market Participant Status
finra_finraotc_bbds_dfi_v2018_1a.market_participant_status.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.market_participant_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraotc_bbds_dfi_v2018_1a.market_participant_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.market_participant_status, range, value, display)

  return offset + length, value
end

-- Message Category
finra_finraotc_bbds_dfi_v2018_1a.message_category = {}

-- Size: Message Category
finra_finraotc_bbds_dfi_v2018_1a.message_category.size = 1

-- Display: Message Category
finra_finraotc_bbds_dfi_v2018_1a.message_category.labels = {
  ["Q"] = "Message Category: Quotation (Q)",
  ["A"] = "Message Category: Administrative (A)",
  ["C"] = "Message Category: Control (C)",
}

finra_finraotc_bbds_dfi_v2018_1a.message_category.display = function(value)
  return finra_finraotc_bbds_dfi_v2018_1a.message_category.labels[value] or "Message Category: Unknown("..value..")"
end

-- Dissect: Message Category
finra_finraotc_bbds_dfi_v2018_1a.message_category.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.message_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraotc_bbds_dfi_v2018_1a.message_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.message_category, range, value, display)

  return offset + length, value
end

-- Message Separator
finra_finraotc_bbds_dfi_v2018_1a.message_separator = {}

-- Size: Message Separator
finra_finraotc_bbds_dfi_v2018_1a.message_separator.size = 1

-- Display: Message Separator
finra_finraotc_bbds_dfi_v2018_1a.message_separator.labels = {
  [31] = "Message Separator: Unit Separator (31)",
  [3] = "Message Separator: End Of Text (3)",
}

finra_finraotc_bbds_dfi_v2018_1a.message_separator.display = function(value)
  return finra_finraotc_bbds_dfi_v2018_1a.message_separator.labels[value] or "Message Separator: Unknown("..value..")"
end

-- Dissect: Message Separator
finra_finraotc_bbds_dfi_v2018_1a.message_separator.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.message_separator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = finra_finraotc_bbds_dfi_v2018_1a.message_separator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.message_separator, range, value, display)

  return offset + length, value
end

-- Message Sequence Number
finra_finraotc_bbds_dfi_v2018_1a.message_sequence_number = {}

-- Size: Message Sequence Number
finra_finraotc_bbds_dfi_v2018_1a.message_sequence_number.size = 8

-- Display: Message Sequence Number
finra_finraotc_bbds_dfi_v2018_1a.message_sequence_number.display = function(value)
  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
finra_finraotc_bbds_dfi_v2018_1a.message_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.message_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.message_sequence_number, range, value, "Message Sequence Number: Not Applicable")
    item:add_proto_expert_info(finra_finraotc_bbds_dfi_v2018_1a.experts.not_a_number, "Message Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = finra_finraotc_bbds_dfi_v2018_1a.message_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Minute
finra_finraotc_bbds_dfi_v2018_1a.minute = {}

-- Size: Minute
finra_finraotc_bbds_dfi_v2018_1a.minute.size = 1

-- Display: Minute
finra_finraotc_bbds_dfi_v2018_1a.minute.display = function(value)
  return "Minute: "..value
end

-- Dissect: Minute
finra_finraotc_bbds_dfi_v2018_1a.minute.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.minute.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraotc_bbds_dfi_v2018_1a.minute.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.minute, range, value, display)

  return offset + length, value
end

-- Month
finra_finraotc_bbds_dfi_v2018_1a.month = {}

-- Size: Month
finra_finraotc_bbds_dfi_v2018_1a.month.size = 1

-- Display: Month
finra_finraotc_bbds_dfi_v2018_1a.month.display = function(value)
  return "Month: "..value
end

-- Dissect: Month
finra_finraotc_bbds_dfi_v2018_1a.month.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.month.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraotc_bbds_dfi_v2018_1a.month.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.month, range, value, display)

  return offset + length, value
end

-- Otcbb Symbol
finra_finraotc_bbds_dfi_v2018_1a.otcbb_symbol = {}

-- Size: Otcbb Symbol
finra_finraotc_bbds_dfi_v2018_1a.otcbb_symbol.size = 11

-- Display: Otcbb Symbol
finra_finraotc_bbds_dfi_v2018_1a.otcbb_symbol.display = function(value)
  return "Otcbb Symbol: "..value
end

-- Dissect: Otcbb Symbol
finra_finraotc_bbds_dfi_v2018_1a.otcbb_symbol.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.otcbb_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = finra_finraotc_bbds_dfi_v2018_1a.otcbb_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.otcbb_symbol, range, value, display)

  return offset + length, value
end

-- Otcbb Type
finra_finraotc_bbds_dfi_v2018_1a.otcbb_type = {}

-- Size: Otcbb Type
finra_finraotc_bbds_dfi_v2018_1a.otcbb_type.size = 1

-- Display: Otcbb Type
finra_finraotc_bbds_dfi_v2018_1a.otcbb_type.display = function(value)
  return "Otcbb Type: "..value
end

-- Dissect: Otcbb Type
finra_finraotc_bbds_dfi_v2018_1a.otcbb_type.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.otcbb_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraotc_bbds_dfi_v2018_1a.otcbb_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.otcbb_type, range, value, display)

  return offset + length, value
end

-- Quotation Message Type
finra_finraotc_bbds_dfi_v2018_1a.quotation_message_type = {}

-- Size: Quotation Message Type
finra_finraotc_bbds_dfi_v2018_1a.quotation_message_type.size = 1

-- Display: Quotation Message Type
finra_finraotc_bbds_dfi_v2018_1a.quotation_message_type.labels = {
  ["1"] = "Quotation Message Type: Market Participant Quote Update Message (1)",
}

finra_finraotc_bbds_dfi_v2018_1a.quotation_message_type.display = function(value)
  return finra_finraotc_bbds_dfi_v2018_1a.quotation_message_type.labels[value] or "Quotation Message Type: Unknown("..value..")"
end

-- Dissect: Quotation Message Type
finra_finraotc_bbds_dfi_v2018_1a.quotation_message_type.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.quotation_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraotc_bbds_dfi_v2018_1a.quotation_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.quotation_message_type, range, value, display)

  return offset + length, value
end

-- Reason Code
finra_finraotc_bbds_dfi_v2018_1a.reason_code = {}

-- Size: Reason Code
finra_finraotc_bbds_dfi_v2018_1a.reason_code.size = 6

-- Display: Reason Code
finra_finraotc_bbds_dfi_v2018_1a.reason_code.display = function(value)
  if value == "T1" then
    return "Reason Code: Halt News Pending (T1)"
  end
  if value == "T2" then
    return "Reason Code: Halt News Dissemination (T2)"
  end
  if value == "T12" then
    return "Reason Code: Halt Additional Information Requested By Finra (T12)"
  end
  if value == "H10" then
    return "Reason Code: Halt Sec Trading Suspension (H10)"
  end
  if value == "H11" then
    return "Reason Code: Halt Regulatory Concern (H11)"
  end
  if value == "H12" then
    return "Reason Code: Halt Sec Revocation (H12)"
  end
  if value == "U1" then
    return "Reason Code: Halt Foreign Market Regulatory Otcbb Only (U1)"
  end
  if value == "U2" then
    return "Reason Code: Halt Component Derivative Of Exchange Listed Security Otcbb Only (U2)"
  end
  if value == "U3" then
    return "Reason Code: Halt Extraordinary Events Otcbb Only (U3)"
  end
  if value == "D" then
    return "Reason Code: Security Deletion From Otcbb (D)"
  end
  if value == "T3" then
    return "Reason Code: News And Resumption Times (T3)"
  end
  if value == "R4" then
    return "Reason Code: Qualifications Issues Reviewed Resolved Quotations Trading To Resume (R4)"
  end
  if value == "R9" then
    return "Reason Code: Qualifications Halt Concluded Filings Met Quotations Trading To Resume (R9)"
  end
  if value == "C11" then
    return "Reason Code: Trade Halt Concluded By Other Regulatory Auth Quotes Trades To Resume (C11)"
  end
  if value == " " then
    return "Reason Code: Reason Code Not Available (<whitespace>)"
  end

  return "Reason Code: Unknown("..value..")"
end

-- Dissect: Reason Code
finra_finraotc_bbds_dfi_v2018_1a.reason_code.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.reason_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = finra_finraotc_bbds_dfi_v2018_1a.reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Reserved 1
finra_finraotc_bbds_dfi_v2018_1a.reserved_1 = {}

-- Size: Reserved 1
finra_finraotc_bbds_dfi_v2018_1a.reserved_1.size = 1

-- Display: Reserved 1
finra_finraotc_bbds_dfi_v2018_1a.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
finra_finraotc_bbds_dfi_v2018_1a.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraotc_bbds_dfi_v2018_1a.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Retransmission Requester
finra_finraotc_bbds_dfi_v2018_1a.retransmission_requester = {}

-- Size: Retransmission Requester
finra_finraotc_bbds_dfi_v2018_1a.retransmission_requester.size = 2

-- Display: Retransmission Requester
finra_finraotc_bbds_dfi_v2018_1a.retransmission_requester.display = function(value)
  return "Retransmission Requester: "..value
end

-- Dissect: Retransmission Requester
finra_finraotc_bbds_dfi_v2018_1a.retransmission_requester.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.retransmission_requester.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = finra_finraotc_bbds_dfi_v2018_1a.retransmission_requester.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.retransmission_requester, range, value, display)

  return offset + length, value
end

-- Second
finra_finraotc_bbds_dfi_v2018_1a.second = {}

-- Size: Second
finra_finraotc_bbds_dfi_v2018_1a.second.size = 1

-- Display: Second
finra_finraotc_bbds_dfi_v2018_1a.second.display = function(value)
  return "Second: "..value
end

-- Dissect: Second
finra_finraotc_bbds_dfi_v2018_1a.second.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.second.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraotc_bbds_dfi_v2018_1a.second.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.second, range, value, display)

  return offset + length, value
end

-- Session Identifier
finra_finraotc_bbds_dfi_v2018_1a.session_identifier = {}

-- Size: Session Identifier
finra_finraotc_bbds_dfi_v2018_1a.session_identifier.size = 1

-- Display: Session Identifier
finra_finraotc_bbds_dfi_v2018_1a.session_identifier.labels = {
  ["A"] = "Session Identifier: All Market Sessions Or Session Independent (A)",
  ["U"] = "Session Identifier: Us Market Session (U)",
}

finra_finraotc_bbds_dfi_v2018_1a.session_identifier.display = function(value)
  return finra_finraotc_bbds_dfi_v2018_1a.session_identifier.labels[value] or "Session Identifier: Unknown("..value..")"
end

-- Dissect: Session Identifier
finra_finraotc_bbds_dfi_v2018_1a.session_identifier.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.session_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraotc_bbds_dfi_v2018_1a.session_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.session_identifier, range, value, display)

  return offset + length, value
end

-- Stock Symbol
finra_finraotc_bbds_dfi_v2018_1a.stock_symbol = {}

-- Size: Stock Symbol
finra_finraotc_bbds_dfi_v2018_1a.stock_symbol.size = 11

-- Display: Stock Symbol
finra_finraotc_bbds_dfi_v2018_1a.stock_symbol.display = function(value)
  return "Stock Symbol: "..value
end

-- Dissect: Stock Symbol
finra_finraotc_bbds_dfi_v2018_1a.stock_symbol.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.stock_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = finra_finraotc_bbds_dfi_v2018_1a.stock_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.stock_symbol, range, value, display)

  return offset + length, value
end

-- Text
finra_finraotc_bbds_dfi_v2018_1a.text = {}

-- Display: Text
finra_finraotc_bbds_dfi_v2018_1a.text.display = function(value)
  return "Text: "..value
end

-- Dissect runtime sized field: Text
finra_finraotc_bbds_dfi_v2018_1a.text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = finra_finraotc_bbds_dfi_v2018_1a.text.display(value, packet, parent, size)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.text, range, value, display)

  return offset + size, value
end

-- Unsolicited Indicator
finra_finraotc_bbds_dfi_v2018_1a.unsolicited_indicator = {}

-- Size: Unsolicited Indicator
finra_finraotc_bbds_dfi_v2018_1a.unsolicited_indicator.size = 1

-- Display: Unsolicited Indicator
finra_finraotc_bbds_dfi_v2018_1a.unsolicited_indicator.display = function(value)
  if value == "A" then
    return "Unsolicited Indicator: Unsolicited Ask (A)"
  end
  if value == "B" then
    return "Unsolicited Indicator: Unsolicited Bid (B)"
  end
  if value == "U" then
    return "Unsolicited Indicator: Unsolicited Bid And Ask (U)"
  end
  if value == " " then
    return "Unsolicited Indicator: Not Applicable (<whitespace>)"
  end

  return "Unsolicited Indicator: Unknown("..value..")"
end

-- Dissect: Unsolicited Indicator
finra_finraotc_bbds_dfi_v2018_1a.unsolicited_indicator.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.unsolicited_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraotc_bbds_dfi_v2018_1a.unsolicited_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.unsolicited_indicator, range, value, display)

  return offset + length, value
end

-- Wanted Indicator
finra_finraotc_bbds_dfi_v2018_1a.wanted_indicator = {}

-- Size: Wanted Indicator
finra_finraotc_bbds_dfi_v2018_1a.wanted_indicator.size = 1

-- Display: Wanted Indicator
finra_finraotc_bbds_dfi_v2018_1a.wanted_indicator.labels = {
  ["B"] = "Wanted Indicator: Bid (B)",
  ["N"] = "Wanted Indicator: Not Applicable (N)",
  ["O"] = "Wanted Indicator: Offer (O)",
  ["W"] = "Wanted Indicator: Bid And Offer (W)",
}

finra_finraotc_bbds_dfi_v2018_1a.wanted_indicator.display = function(value)
  return finra_finraotc_bbds_dfi_v2018_1a.wanted_indicator.labels[value] or "Wanted Indicator: Unknown("..value..")"
end

-- Dissect: Wanted Indicator
finra_finraotc_bbds_dfi_v2018_1a.wanted_indicator.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.wanted_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraotc_bbds_dfi_v2018_1a.wanted_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.wanted_indicator, range, value, display)

  return offset + length, value
end

-- Year
finra_finraotc_bbds_dfi_v2018_1a.year = {}

-- Size: Year
finra_finraotc_bbds_dfi_v2018_1a.year.size = 2

-- Display: Year
finra_finraotc_bbds_dfi_v2018_1a.year.display = function(value)
  return "Year: "..value
end

-- Dissect: Year
finra_finraotc_bbds_dfi_v2018_1a.year.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraotc_bbds_dfi_v2018_1a.year.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = finra_finraotc_bbds_dfi_v2018_1a.year.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.year, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Finra FinraOtc Bbds Dfi 2018.1A
-----------------------------------------------------------------------

-- Datetime
finra_finraotc_bbds_dfi_v2018_1a.datetime = {}

-- Size: Datetime
finra_finraotc_bbds_dfi_v2018_1a.datetime.size =
  finra_finraotc_bbds_dfi_v2018_1a.year.size + 
  finra_finraotc_bbds_dfi_v2018_1a.month.size + 
  finra_finraotc_bbds_dfi_v2018_1a.day.size + 
  finra_finraotc_bbds_dfi_v2018_1a.hour.size + 
  finra_finraotc_bbds_dfi_v2018_1a.minute.size + 
  finra_finraotc_bbds_dfi_v2018_1a.second.size

-- Display: Datetime
finra_finraotc_bbds_dfi_v2018_1a.datetime.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Datetime
finra_finraotc_bbds_dfi_v2018_1a.datetime.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: alphanumeric
  index, year = finra_finraotc_bbds_dfi_v2018_1a.year.dissect(buffer, index, packet, parent)

  -- Month: alphanumeric
  index, month = finra_finraotc_bbds_dfi_v2018_1a.month.dissect(buffer, index, packet, parent)

  -- Day: alphanumeric
  index, day = finra_finraotc_bbds_dfi_v2018_1a.day.dissect(buffer, index, packet, parent)

  -- Hour: alphanumeric
  index, hour = finra_finraotc_bbds_dfi_v2018_1a.hour.dissect(buffer, index, packet, parent)

  -- Minute: alphanumeric
  index, minute = finra_finraotc_bbds_dfi_v2018_1a.minute.dissect(buffer, index, packet, parent)

  -- Second: alphanumeric
  index, second = finra_finraotc_bbds_dfi_v2018_1a.second.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Datetime
finra_finraotc_bbds_dfi_v2018_1a.datetime.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.datetime, buffer(offset, 0))
    local index = finra_finraotc_bbds_dfi_v2018_1a.datetime.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraotc_bbds_dfi_v2018_1a.datetime.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraotc_bbds_dfi_v2018_1a.datetime.fields(buffer, offset, packet, parent)
  end
end

-- Message Header
finra_finraotc_bbds_dfi_v2018_1a.message_header = {}

-- Size: Message Header
finra_finraotc_bbds_dfi_v2018_1a.message_header.size =
  finra_finraotc_bbds_dfi_v2018_1a.session_identifier.size + 
  finra_finraotc_bbds_dfi_v2018_1a.retransmission_requester.size + 
  finra_finraotc_bbds_dfi_v2018_1a.message_sequence_number.size + 
  finra_finraotc_bbds_dfi_v2018_1a.market_center_originator_id.size + 
  finra_finraotc_bbds_dfi_v2018_1a.datetime.size + 
  finra_finraotc_bbds_dfi_v2018_1a.reserved_1.size

-- Display: Message Header
finra_finraotc_bbds_dfi_v2018_1a.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
finra_finraotc_bbds_dfi_v2018_1a.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Identifier: alphabetic
  index, session_identifier = finra_finraotc_bbds_dfi_v2018_1a.session_identifier.dissect(buffer, index, packet, parent)

  -- Retransmission Requester: alphanumeric
  index, retransmission_requester = finra_finraotc_bbds_dfi_v2018_1a.retransmission_requester.dissect(buffer, index, packet, parent)

  -- Message Sequence Number: numeric
  index, message_sequence_number = finra_finraotc_bbds_dfi_v2018_1a.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Market Center Originator Id: alphabetic
  index, market_center_originator_id = finra_finraotc_bbds_dfi_v2018_1a.market_center_originator_id.dissect(buffer, index, packet, parent)

  -- Datetime: Struct of 6 fields
  index, datetime = finra_finraotc_bbds_dfi_v2018_1a.datetime.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alphanumeric
  index, reserved_1 = finra_finraotc_bbds_dfi_v2018_1a.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
finra_finraotc_bbds_dfi_v2018_1a.message_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.message_header, buffer(offset, 0))
    local index = finra_finraotc_bbds_dfi_v2018_1a.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraotc_bbds_dfi_v2018_1a.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraotc_bbds_dfi_v2018_1a.message_header.fields(buffer, offset, packet, parent)
  end
end

-- End Of Trade Reporting Message
finra_finraotc_bbds_dfi_v2018_1a.end_of_trade_reporting_message = {}

-- Size: End Of Trade Reporting Message
finra_finraotc_bbds_dfi_v2018_1a.end_of_trade_reporting_message.size =
  finra_finraotc_bbds_dfi_v2018_1a.message_header.size

-- Display: End Of Trade Reporting Message
finra_finraotc_bbds_dfi_v2018_1a.end_of_trade_reporting_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Trade Reporting Message
finra_finraotc_bbds_dfi_v2018_1a.end_of_trade_reporting_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_finraotc_bbds_dfi_v2018_1a.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Trade Reporting Message
finra_finraotc_bbds_dfi_v2018_1a.end_of_trade_reporting_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.end_of_trade_reporting_message, buffer(offset, 0))
    local index = finra_finraotc_bbds_dfi_v2018_1a.end_of_trade_reporting_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraotc_bbds_dfi_v2018_1a.end_of_trade_reporting_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraotc_bbds_dfi_v2018_1a.end_of_trade_reporting_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number Reset Message
finra_finraotc_bbds_dfi_v2018_1a.sequence_number_reset_message = {}

-- Size: Sequence Number Reset Message
finra_finraotc_bbds_dfi_v2018_1a.sequence_number_reset_message.size =
  finra_finraotc_bbds_dfi_v2018_1a.message_header.size

-- Display: Sequence Number Reset Message
finra_finraotc_bbds_dfi_v2018_1a.sequence_number_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
finra_finraotc_bbds_dfi_v2018_1a.sequence_number_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_finraotc_bbds_dfi_v2018_1a.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
finra_finraotc_bbds_dfi_v2018_1a.sequence_number_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = finra_finraotc_bbds_dfi_v2018_1a.sequence_number_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraotc_bbds_dfi_v2018_1a.sequence_number_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraotc_bbds_dfi_v2018_1a.sequence_number_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Line Integrity Message
finra_finraotc_bbds_dfi_v2018_1a.line_integrity_message = {}

-- Size: Line Integrity Message
finra_finraotc_bbds_dfi_v2018_1a.line_integrity_message.size =
  finra_finraotc_bbds_dfi_v2018_1a.message_header.size

-- Display: Line Integrity Message
finra_finraotc_bbds_dfi_v2018_1a.line_integrity_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Line Integrity Message
finra_finraotc_bbds_dfi_v2018_1a.line_integrity_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_finraotc_bbds_dfi_v2018_1a.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Line Integrity Message
finra_finraotc_bbds_dfi_v2018_1a.line_integrity_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.line_integrity_message, buffer(offset, 0))
    local index = finra_finraotc_bbds_dfi_v2018_1a.line_integrity_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraotc_bbds_dfi_v2018_1a.line_integrity_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraotc_bbds_dfi_v2018_1a.line_integrity_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Transmissions Message
finra_finraotc_bbds_dfi_v2018_1a.end_of_transmissions_message = {}

-- Size: End Of Transmissions Message
finra_finraotc_bbds_dfi_v2018_1a.end_of_transmissions_message.size =
  finra_finraotc_bbds_dfi_v2018_1a.message_header.size

-- Display: End Of Transmissions Message
finra_finraotc_bbds_dfi_v2018_1a.end_of_transmissions_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Transmissions Message
finra_finraotc_bbds_dfi_v2018_1a.end_of_transmissions_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_finraotc_bbds_dfi_v2018_1a.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Transmissions Message
finra_finraotc_bbds_dfi_v2018_1a.end_of_transmissions_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.end_of_transmissions_message, buffer(offset, 0))
    local index = finra_finraotc_bbds_dfi_v2018_1a.end_of_transmissions_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraotc_bbds_dfi_v2018_1a.end_of_transmissions_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraotc_bbds_dfi_v2018_1a.end_of_transmissions_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Retransmission Requests Message
finra_finraotc_bbds_dfi_v2018_1a.end_of_retransmission_requests_message = {}

-- Size: End Of Retransmission Requests Message
finra_finraotc_bbds_dfi_v2018_1a.end_of_retransmission_requests_message.size =
  finra_finraotc_bbds_dfi_v2018_1a.message_header.size

-- Display: End Of Retransmission Requests Message
finra_finraotc_bbds_dfi_v2018_1a.end_of_retransmission_requests_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Retransmission Requests Message
finra_finraotc_bbds_dfi_v2018_1a.end_of_retransmission_requests_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_finraotc_bbds_dfi_v2018_1a.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Retransmission Requests Message
finra_finraotc_bbds_dfi_v2018_1a.end_of_retransmission_requests_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.end_of_retransmission_requests_message, buffer(offset, 0))
    local index = finra_finraotc_bbds_dfi_v2018_1a.end_of_retransmission_requests_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraotc_bbds_dfi_v2018_1a.end_of_retransmission_requests_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraotc_bbds_dfi_v2018_1a.end_of_retransmission_requests_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Session Close Message
finra_finraotc_bbds_dfi_v2018_1a.market_session_close_message = {}

-- Size: Market Session Close Message
finra_finraotc_bbds_dfi_v2018_1a.market_session_close_message.size =
  finra_finraotc_bbds_dfi_v2018_1a.message_header.size

-- Display: Market Session Close Message
finra_finraotc_bbds_dfi_v2018_1a.market_session_close_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Session Close Message
finra_finraotc_bbds_dfi_v2018_1a.market_session_close_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_finraotc_bbds_dfi_v2018_1a.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Session Close Message
finra_finraotc_bbds_dfi_v2018_1a.market_session_close_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.market_session_close_message, buffer(offset, 0))
    local index = finra_finraotc_bbds_dfi_v2018_1a.market_session_close_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraotc_bbds_dfi_v2018_1a.market_session_close_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraotc_bbds_dfi_v2018_1a.market_session_close_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Session Open Message
finra_finraotc_bbds_dfi_v2018_1a.market_session_open_message = {}

-- Size: Market Session Open Message
finra_finraotc_bbds_dfi_v2018_1a.market_session_open_message.size =
  finra_finraotc_bbds_dfi_v2018_1a.message_header.size

-- Display: Market Session Open Message
finra_finraotc_bbds_dfi_v2018_1a.market_session_open_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Session Open Message
finra_finraotc_bbds_dfi_v2018_1a.market_session_open_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_finraotc_bbds_dfi_v2018_1a.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Session Open Message
finra_finraotc_bbds_dfi_v2018_1a.market_session_open_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.market_session_open_message, buffer(offset, 0))
    local index = finra_finraotc_bbds_dfi_v2018_1a.market_session_open_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraotc_bbds_dfi_v2018_1a.market_session_open_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraotc_bbds_dfi_v2018_1a.market_session_open_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Day Message
finra_finraotc_bbds_dfi_v2018_1a.end_of_day_message = {}

-- Size: End Of Day Message
finra_finraotc_bbds_dfi_v2018_1a.end_of_day_message.size =
  finra_finraotc_bbds_dfi_v2018_1a.message_header.size

-- Display: End Of Day Message
finra_finraotc_bbds_dfi_v2018_1a.end_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Day Message
finra_finraotc_bbds_dfi_v2018_1a.end_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_finraotc_bbds_dfi_v2018_1a.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Message
finra_finraotc_bbds_dfi_v2018_1a.end_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.end_of_day_message, buffer(offset, 0))
    local index = finra_finraotc_bbds_dfi_v2018_1a.end_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraotc_bbds_dfi_v2018_1a.end_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraotc_bbds_dfi_v2018_1a.end_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Day Message
finra_finraotc_bbds_dfi_v2018_1a.start_of_day_message = {}

-- Size: Start Of Day Message
finra_finraotc_bbds_dfi_v2018_1a.start_of_day_message.size =
  finra_finraotc_bbds_dfi_v2018_1a.message_header.size

-- Display: Start Of Day Message
finra_finraotc_bbds_dfi_v2018_1a.start_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Day Message
finra_finraotc_bbds_dfi_v2018_1a.start_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_finraotc_bbds_dfi_v2018_1a.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Day Message
finra_finraotc_bbds_dfi_v2018_1a.start_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.start_of_day_message, buffer(offset, 0))
    local index = finra_finraotc_bbds_dfi_v2018_1a.start_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraotc_bbds_dfi_v2018_1a.start_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraotc_bbds_dfi_v2018_1a.start_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Control Message Payload
finra_finraotc_bbds_dfi_v2018_1a.control_message_payload = {}

-- Dissect: Control Message Payload
finra_finraotc_bbds_dfi_v2018_1a.control_message_payload.dispatch = {
  ["I"] = finra_finraotc_bbds_dfi_v2018_1a.start_of_day_message.dissect,
  ["J"] = finra_finraotc_bbds_dfi_v2018_1a.end_of_day_message.dissect,
  ["O"] = finra_finraotc_bbds_dfi_v2018_1a.market_session_open_message.dissect,
  ["C"] = finra_finraotc_bbds_dfi_v2018_1a.market_session_close_message.dissect,
  ["K"] = finra_finraotc_bbds_dfi_v2018_1a.end_of_retransmission_requests_message.dissect,
  ["Z"] = finra_finraotc_bbds_dfi_v2018_1a.end_of_transmissions_message.dissect,
  ["T"] = finra_finraotc_bbds_dfi_v2018_1a.line_integrity_message.dissect,
  ["L"] = finra_finraotc_bbds_dfi_v2018_1a.sequence_number_reset_message.dissect,
  ["X"] = finra_finraotc_bbds_dfi_v2018_1a.end_of_trade_reporting_message.dissect,
}

finra_finraotc_bbds_dfi_v2018_1a.control_message_payload.dissect = function(buffer, offset, packet, parent, control_message_type)
  local dissect = finra_finraotc_bbds_dfi_v2018_1a.control_message_payload.dispatch[control_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Control Message
finra_finraotc_bbds_dfi_v2018_1a.control_message = {}

-- Calculate size of: Control Message
finra_finraotc_bbds_dfi_v2018_1a.control_message.size = function(buffer, offset)
  local index = 0

  index = index + finra_finraotc_bbds_dfi_v2018_1a.control_message_type.size

  -- Calculate runtime size of Control Message Payload field
  local control_message_payload_offset = offset + index
  local control_message_payload_type = buffer(control_message_payload_offset - 1, 1):string()
  index = index + finra_finraotc_bbds_dfi_v2018_1a.control_message_payload.size(buffer, control_message_payload_offset, control_message_payload_type)

  return index
end

-- Display: Control Message
finra_finraotc_bbds_dfi_v2018_1a.control_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control Message
finra_finraotc_bbds_dfi_v2018_1a.control_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Control Message Type: 1 Byte Ascii String Enum with 9 values
  index, control_message_type = finra_finraotc_bbds_dfi_v2018_1a.control_message_type.dissect(buffer, index, packet, parent)

  -- Control Message Payload: Runtime Type with 9 branches
  index = finra_finraotc_bbds_dfi_v2018_1a.control_message_payload.dissect(buffer, index, packet, parent, control_message_type)

  return index
end

-- Dissect: Control Message
finra_finraotc_bbds_dfi_v2018_1a.control_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.control_message, buffer(offset, 0))
    local index = finra_finraotc_bbds_dfi_v2018_1a.control_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraotc_bbds_dfi_v2018_1a.control_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraotc_bbds_dfi_v2018_1a.control_message.fields(buffer, offset, packet, parent)
  end
end

-- Action Datetime
finra_finraotc_bbds_dfi_v2018_1a.action_datetime = {}

-- Size: Action Datetime
finra_finraotc_bbds_dfi_v2018_1a.action_datetime.size =
  finra_finraotc_bbds_dfi_v2018_1a.year.size + 
  finra_finraotc_bbds_dfi_v2018_1a.month.size + 
  finra_finraotc_bbds_dfi_v2018_1a.day.size + 
  finra_finraotc_bbds_dfi_v2018_1a.hour.size + 
  finra_finraotc_bbds_dfi_v2018_1a.minute.size + 
  finra_finraotc_bbds_dfi_v2018_1a.second.size

-- Display: Action Datetime
finra_finraotc_bbds_dfi_v2018_1a.action_datetime.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Action Datetime
finra_finraotc_bbds_dfi_v2018_1a.action_datetime.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: alphanumeric
  index, year = finra_finraotc_bbds_dfi_v2018_1a.year.dissect(buffer, index, packet, parent)

  -- Month: alphanumeric
  index, month = finra_finraotc_bbds_dfi_v2018_1a.month.dissect(buffer, index, packet, parent)

  -- Day: alphanumeric
  index, day = finra_finraotc_bbds_dfi_v2018_1a.day.dissect(buffer, index, packet, parent)

  -- Hour: alphanumeric
  index, hour = finra_finraotc_bbds_dfi_v2018_1a.hour.dissect(buffer, index, packet, parent)

  -- Minute: alphanumeric
  index, minute = finra_finraotc_bbds_dfi_v2018_1a.minute.dissect(buffer, index, packet, parent)

  -- Second: alphanumeric
  index, second = finra_finraotc_bbds_dfi_v2018_1a.second.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Action Datetime
finra_finraotc_bbds_dfi_v2018_1a.action_datetime.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.action_datetime, buffer(offset, 0))
    local index = finra_finraotc_bbds_dfi_v2018_1a.action_datetime.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraotc_bbds_dfi_v2018_1a.action_datetime.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraotc_bbds_dfi_v2018_1a.action_datetime.fields(buffer, offset, packet, parent)
  end
end

-- Trading Action Message
finra_finraotc_bbds_dfi_v2018_1a.trading_action_message = {}

-- Size: Trading Action Message
finra_finraotc_bbds_dfi_v2018_1a.trading_action_message.size =
  finra_finraotc_bbds_dfi_v2018_1a.message_header.size + 
  finra_finraotc_bbds_dfi_v2018_1a.stock_symbol.size + 
  finra_finraotc_bbds_dfi_v2018_1a.action.size + 
  finra_finraotc_bbds_dfi_v2018_1a.action_datetime.size + 
  finra_finraotc_bbds_dfi_v2018_1a.reason_code.size

-- Display: Trading Action Message
finra_finraotc_bbds_dfi_v2018_1a.trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Action Message
finra_finraotc_bbds_dfi_v2018_1a.trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_finraotc_bbds_dfi_v2018_1a.message_header.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Alphanumeric
  index, stock_symbol = finra_finraotc_bbds_dfi_v2018_1a.stock_symbol.dissect(buffer, index, packet, parent)

  -- Action: Alphanumeric
  index, action = finra_finraotc_bbds_dfi_v2018_1a.action.dissect(buffer, index, packet, parent)

  -- Action Datetime: Struct of 6 fields
  index, action_datetime = finra_finraotc_bbds_dfi_v2018_1a.action_datetime.dissect(buffer, index, packet, parent)

  -- Reason Code: Alphanumeric
  index, reason_code = finra_finraotc_bbds_dfi_v2018_1a.reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
finra_finraotc_bbds_dfi_v2018_1a.trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.trading_action_message, buffer(offset, 0))
    local index = finra_finraotc_bbds_dfi_v2018_1a.trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraotc_bbds_dfi_v2018_1a.trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraotc_bbds_dfi_v2018_1a.trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- General Administrative Message
finra_finraotc_bbds_dfi_v2018_1a.general_administrative_message = {}

-- Calculate size of: General Administrative Message
finra_finraotc_bbds_dfi_v2018_1a.general_administrative_message.size = function(buffer, offset)
  local index = 0

  index = index + finra_finraotc_bbds_dfi_v2018_1a.message_header.size

  -- Remaining size of: Text
  index = index + math.min(buffer:len() - (offset + index), 300)

  return index
end

-- Display: General Administrative Message
finra_finraotc_bbds_dfi_v2018_1a.general_administrative_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: General Administrative Message
finra_finraotc_bbds_dfi_v2018_1a.general_administrative_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_finraotc_bbds_dfi_v2018_1a.message_header.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Text
  local size_of_text = math.min(buffer:len() - index, 300)

  -- Text: Alphanumeric
  index, text = finra_finraotc_bbds_dfi_v2018_1a.text.dissect(buffer, index, packet, parent, size_of_text)

  return index
end

-- Dissect: General Administrative Message
finra_finraotc_bbds_dfi_v2018_1a.general_administrative_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.general_administrative_message, buffer(offset, 0))
    local index = finra_finraotc_bbds_dfi_v2018_1a.general_administrative_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraotc_bbds_dfi_v2018_1a.general_administrative_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraotc_bbds_dfi_v2018_1a.general_administrative_message.fields(buffer, offset, packet, parent)
  end
end

-- Administrative Message Payload
finra_finraotc_bbds_dfi_v2018_1a.administrative_message_payload = {}

-- Dissect: Administrative Message Payload
finra_finraotc_bbds_dfi_v2018_1a.administrative_message_payload.dispatch = {
  ["A"] = finra_finraotc_bbds_dfi_v2018_1a.general_administrative_message.dissect,
  ["H"] = finra_finraotc_bbds_dfi_v2018_1a.trading_action_message.dissect,
}

finra_finraotc_bbds_dfi_v2018_1a.administrative_message_payload.dissect = function(buffer, offset, packet, parent, administrative_message_type)
  local dissect = finra_finraotc_bbds_dfi_v2018_1a.administrative_message_payload.dispatch[administrative_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Administrative Message
finra_finraotc_bbds_dfi_v2018_1a.administrative_message = {}

-- Calculate size of: Administrative Message
finra_finraotc_bbds_dfi_v2018_1a.administrative_message.size = function(buffer, offset)
  local index = 0

  index = index + finra_finraotc_bbds_dfi_v2018_1a.administrative_message_type.size

  -- Calculate runtime size of Administrative Message Payload field
  local administrative_message_payload_offset = offset + index
  local administrative_message_payload_type = buffer(administrative_message_payload_offset - 1, 1):string()
  index = index + finra_finraotc_bbds_dfi_v2018_1a.administrative_message_payload.size(buffer, administrative_message_payload_offset, administrative_message_payload_type)

  return index
end

-- Display: Administrative Message
finra_finraotc_bbds_dfi_v2018_1a.administrative_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Administrative Message
finra_finraotc_bbds_dfi_v2018_1a.administrative_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Administrative Message Type: 1 Byte Ascii String Enum with 2 values
  index, administrative_message_type = finra_finraotc_bbds_dfi_v2018_1a.administrative_message_type.dissect(buffer, index, packet, parent)

  -- Administrative Message Payload: Runtime Type with 2 branches
  index = finra_finraotc_bbds_dfi_v2018_1a.administrative_message_payload.dissect(buffer, index, packet, parent, administrative_message_type)

  return index
end

-- Dissect: Administrative Message
finra_finraotc_bbds_dfi_v2018_1a.administrative_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.administrative_message, buffer(offset, 0))
    local index = finra_finraotc_bbds_dfi_v2018_1a.administrative_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraotc_bbds_dfi_v2018_1a.administrative_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraotc_bbds_dfi_v2018_1a.administrative_message.fields(buffer, offset, packet, parent)
  end
end

-- Inside Appendage
finra_finraotc_bbds_dfi_v2018_1a.inside_appendage = {}

-- Size: Inside Appendage
finra_finraotc_bbds_dfi_v2018_1a.inside_appendage.size =
  finra_finraotc_bbds_dfi_v2018_1a.inside_quote_condition.size + 
  finra_finraotc_bbds_dfi_v2018_1a.inside_bid_price_denominator.size + 
  finra_finraotc_bbds_dfi_v2018_1a.inside_bid_price.size + 
  finra_finraotc_bbds_dfi_v2018_1a.inside_bid_size.size + 
  finra_finraotc_bbds_dfi_v2018_1a.inside_ask_price_denominator.size + 
  finra_finraotc_bbds_dfi_v2018_1a.inside_ask_price.size + 
  finra_finraotc_bbds_dfi_v2018_1a.inside_ask_size.size

-- Display: Inside Appendage
finra_finraotc_bbds_dfi_v2018_1a.inside_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inside Appendage
finra_finraotc_bbds_dfi_v2018_1a.inside_appendage.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inside Quote Condition: Alphanumeric
  index, inside_quote_condition = finra_finraotc_bbds_dfi_v2018_1a.inside_quote_condition.dissect(buffer, index, packet, parent)

  -- Inside Bid Price Denominator: Alphanumeric
  index, inside_bid_price_denominator = finra_finraotc_bbds_dfi_v2018_1a.inside_bid_price_denominator.dissect(buffer, index, packet, parent)

  -- Inside Bid Price: numeric
  index, inside_bid_price = finra_finraotc_bbds_dfi_v2018_1a.inside_bid_price.dissect(buffer, index, packet, parent)

  -- Inside Bid Size: Numeric
  index, inside_bid_size = finra_finraotc_bbds_dfi_v2018_1a.inside_bid_size.dissect(buffer, index, packet, parent)

  -- Inside Ask Price Denominator: Alphanumeric
  index, inside_ask_price_denominator = finra_finraotc_bbds_dfi_v2018_1a.inside_ask_price_denominator.dissect(buffer, index, packet, parent)

  -- Inside Ask Price: numeric
  index, inside_ask_price = finra_finraotc_bbds_dfi_v2018_1a.inside_ask_price.dissect(buffer, index, packet, parent)

  -- Inside Ask Size: Numeric
  index, inside_ask_size = finra_finraotc_bbds_dfi_v2018_1a.inside_ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Inside Appendage
finra_finraotc_bbds_dfi_v2018_1a.inside_appendage.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.inside_appendage, buffer(offset, 0))
    local index = finra_finraotc_bbds_dfi_v2018_1a.inside_appendage.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraotc_bbds_dfi_v2018_1a.inside_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraotc_bbds_dfi_v2018_1a.inside_appendage.fields(buffer, offset, packet, parent)
  end
end

-- Market Participant Quote Update Message
finra_finraotc_bbds_dfi_v2018_1a.market_participant_quote_update_message = {}

-- Calculate size of: Market Participant Quote Update Message
finra_finraotc_bbds_dfi_v2018_1a.market_participant_quote_update_message.size = function(buffer, offset)
  local index = 0

  index = index + finra_finraotc_bbds_dfi_v2018_1a.otcbb_symbol.size

  index = index + finra_finraotc_bbds_dfi_v2018_1a.otcbb_type.size

  index = index + finra_finraotc_bbds_dfi_v2018_1a.market_participant_identifier.size

  index = index + finra_finraotc_bbds_dfi_v2018_1a.market_participant_location_id.size

  index = index + finra_finraotc_bbds_dfi_v2018_1a.market_participant_status.size

  index = index + finra_finraotc_bbds_dfi_v2018_1a.market_participant_quote_condition.size

  index = index + finra_finraotc_bbds_dfi_v2018_1a.reserved_1.size

  index = index + finra_finraotc_bbds_dfi_v2018_1a.wanted_indicator.size

  index = index + finra_finraotc_bbds_dfi_v2018_1a.unsolicited_indicator.size

  index = index + finra_finraotc_bbds_dfi_v2018_1a.bid_price_denominator.size

  index = index + finra_finraotc_bbds_dfi_v2018_1a.bid_price.size

  index = index + finra_finraotc_bbds_dfi_v2018_1a.bid_size.size

  index = index + finra_finraotc_bbds_dfi_v2018_1a.ask_price_denominator.size

  index = index + finra_finraotc_bbds_dfi_v2018_1a.ask_price.size

  index = index + finra_finraotc_bbds_dfi_v2018_1a.ask_size.size

  index = index + finra_finraotc_bbds_dfi_v2018_1a.currency.size

  index = index + finra_finraotc_bbds_dfi_v2018_1a.inside_appendage_indicator.size

  local inside_appendage_indicator = buffer(offset + 62, 1):string()

  if inside_appendage_indicator == "3" then
    index = index + finra_finraotc_bbds_dfi_v2018_1a.inside_appendage.size

  end

  return index
end

-- Display: Market Participant Quote Update Message
finra_finraotc_bbds_dfi_v2018_1a.market_participant_quote_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Participant Quote Update Message
finra_finraotc_bbds_dfi_v2018_1a.market_participant_quote_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Otcbb Symbol: Alphanumeric
  index, otcbb_symbol = finra_finraotc_bbds_dfi_v2018_1a.otcbb_symbol.dissect(buffer, index, packet, parent)

  -- Otcbb Type: Alphanumeric
  index, otcbb_type = finra_finraotc_bbds_dfi_v2018_1a.otcbb_type.dissect(buffer, index, packet, parent)

  -- Market Participant Identifier: Alphanumeric
  index, market_participant_identifier = finra_finraotc_bbds_dfi_v2018_1a.market_participant_identifier.dissect(buffer, index, packet, parent)

  -- Market Participant Location Id: Alphanumeric
  index, market_participant_location_id = finra_finraotc_bbds_dfi_v2018_1a.market_participant_location_id.dissect(buffer, index, packet, parent)

  -- Market Participant Status: Alphanumeric
  index, market_participant_status = finra_finraotc_bbds_dfi_v2018_1a.market_participant_status.dissect(buffer, index, packet, parent)

  -- Market Participant Quote Condition: Alphanumeric
  index, market_participant_quote_condition = finra_finraotc_bbds_dfi_v2018_1a.market_participant_quote_condition.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alphanumeric
  index, reserved_1 = finra_finraotc_bbds_dfi_v2018_1a.reserved_1.dissect(buffer, index, packet, parent)

  -- Wanted Indicator: Alphanumeric
  index, wanted_indicator = finra_finraotc_bbds_dfi_v2018_1a.wanted_indicator.dissect(buffer, index, packet, parent)

  -- Unsolicited Indicator: Alphanumeric
  index, unsolicited_indicator = finra_finraotc_bbds_dfi_v2018_1a.unsolicited_indicator.dissect(buffer, index, packet, parent)

  -- Bid Price Denominator: Alphanumeric
  index, bid_price_denominator = finra_finraotc_bbds_dfi_v2018_1a.bid_price_denominator.dissect(buffer, index, packet, parent)

  -- Bid Price: Numeric
  index, bid_price = finra_finraotc_bbds_dfi_v2018_1a.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: Numeric
  index, bid_size = finra_finraotc_bbds_dfi_v2018_1a.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price Denominator: Alphanumeric
  index, ask_price_denominator = finra_finraotc_bbds_dfi_v2018_1a.ask_price_denominator.dissect(buffer, index, packet, parent)

  -- Ask Price: Numeric
  index, ask_price = finra_finraotc_bbds_dfi_v2018_1a.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: Numeric
  index, ask_size = finra_finraotc_bbds_dfi_v2018_1a.ask_size.dissect(buffer, index, packet, parent)

  -- Currency: Alphanumeric
  index, currency = finra_finraotc_bbds_dfi_v2018_1a.currency.dissect(buffer, index, packet, parent)

  -- Inside Appendage Indicator: Numeric
  index, inside_appendage_indicator = finra_finraotc_bbds_dfi_v2018_1a.inside_appendage_indicator.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Inside Appendage
  local inside_appendage = nil

  local inside_appendage_exists = inside_appendage_indicator == "3"

  if inside_appendage_exists then
    index, inside_appendage = finra_finraotc_bbds_dfi_v2018_1a.inside_appendage.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Market Participant Quote Update Message
finra_finraotc_bbds_dfi_v2018_1a.market_participant_quote_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.market_participant_quote_update_message, buffer(offset, 0))
    local index = finra_finraotc_bbds_dfi_v2018_1a.market_participant_quote_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraotc_bbds_dfi_v2018_1a.market_participant_quote_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraotc_bbds_dfi_v2018_1a.market_participant_quote_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Quotation Message Payload
finra_finraotc_bbds_dfi_v2018_1a.quotation_message_payload = {}

-- Dissect: Quotation Message Payload
finra_finraotc_bbds_dfi_v2018_1a.quotation_message_payload.dispatch = {
  ["1"] = finra_finraotc_bbds_dfi_v2018_1a.market_participant_quote_update_message.dissect,
}

finra_finraotc_bbds_dfi_v2018_1a.quotation_message_payload.dissect = function(buffer, offset, packet, parent, quotation_message_type)
  local dissect = finra_finraotc_bbds_dfi_v2018_1a.quotation_message_payload.dispatch[quotation_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Quotation Message
finra_finraotc_bbds_dfi_v2018_1a.quotation_message = {}

-- Calculate size of: Quotation Message
finra_finraotc_bbds_dfi_v2018_1a.quotation_message.size = function(buffer, offset)
  local index = 0

  index = index + finra_finraotc_bbds_dfi_v2018_1a.quotation_message_type.size

  -- Calculate runtime size of Quotation Message Payload field
  local quotation_message_payload_offset = offset + index
  local quotation_message_payload_type = buffer(quotation_message_payload_offset - 1, 1):string()
  index = index + finra_finraotc_bbds_dfi_v2018_1a.quotation_message_payload.size(buffer, quotation_message_payload_offset, quotation_message_payload_type)

  return index
end

-- Display: Quotation Message
finra_finraotc_bbds_dfi_v2018_1a.quotation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quotation Message
finra_finraotc_bbds_dfi_v2018_1a.quotation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quotation Message Type: 1 Byte Ascii String Enum with 1 values
  index, quotation_message_type = finra_finraotc_bbds_dfi_v2018_1a.quotation_message_type.dissect(buffer, index, packet, parent)

  -- Quotation Message Payload: Runtime Type with 1 branches
  index = finra_finraotc_bbds_dfi_v2018_1a.quotation_message_payload.dissect(buffer, index, packet, parent, quotation_message_type)

  return index
end

-- Dissect: Quotation Message
finra_finraotc_bbds_dfi_v2018_1a.quotation_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.quotation_message, buffer(offset, 0))
    local index = finra_finraotc_bbds_dfi_v2018_1a.quotation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraotc_bbds_dfi_v2018_1a.quotation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraotc_bbds_dfi_v2018_1a.quotation_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
finra_finraotc_bbds_dfi_v2018_1a.payload = {}

-- Dissect: Payload
finra_finraotc_bbds_dfi_v2018_1a.payload.dispatch = {
  ["Q"] = finra_finraotc_bbds_dfi_v2018_1a.quotation_message.dissect,
  ["A"] = finra_finraotc_bbds_dfi_v2018_1a.administrative_message.dissect,
  ["C"] = finra_finraotc_bbds_dfi_v2018_1a.control_message.dissect,
}

finra_finraotc_bbds_dfi_v2018_1a.payload.dissect = function(buffer, offset, packet, parent, message_category)
  local dissect = finra_finraotc_bbds_dfi_v2018_1a.payload.dispatch[message_category]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message
finra_finraotc_bbds_dfi_v2018_1a.message = {}

-- Calculate size of: Message
finra_finraotc_bbds_dfi_v2018_1a.message.size = function(buffer, offset)
  local index = 0

  index = index + finra_finraotc_bbds_dfi_v2018_1a.message_category.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):string()
  index = index + finra_finraotc_bbds_dfi_v2018_1a.payload.size(buffer, payload_offset, payload_type)

  index = index + finra_finraotc_bbds_dfi_v2018_1a.message_separator.size

  return index
end

-- Display: Message
finra_finraotc_bbds_dfi_v2018_1a.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
finra_finraotc_bbds_dfi_v2018_1a.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Category: 1 Byte Ascii String Enum with 3 values
  index, message_category = finra_finraotc_bbds_dfi_v2018_1a.message_category.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 3 branches
  index = finra_finraotc_bbds_dfi_v2018_1a.payload.dissect(buffer, index, packet, parent, message_category)

  -- Message Separator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, message_separator = finra_finraotc_bbds_dfi_v2018_1a.message_separator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message
finra_finraotc_bbds_dfi_v2018_1a.message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a.fields.message, buffer(offset, 0))
    local index = finra_finraotc_bbds_dfi_v2018_1a.message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraotc_bbds_dfi_v2018_1a.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraotc_bbds_dfi_v2018_1a.message.fields(buffer, offset, packet, parent)
  end
end

-- Packet
finra_finraotc_bbds_dfi_v2018_1a.packet = {}

-- Verify required size of Udp packet
finra_finraotc_bbds_dfi_v2018_1a.packet.requiredsize = function(buffer)
  return buffer:len() >= finra_finraotc_bbds_dfi_v2018_1a.block_soh.size + finra_finraotc_bbds_dfi_v2018_1a.message_category.size
end

-- Dissect Packet
finra_finraotc_bbds_dfi_v2018_1a.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Block Soh: 1 Byte Unsigned Fixed Width Integer Static
  index, block_soh = finra_finraotc_bbds_dfi_v2018_1a.block_soh.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, message = finra_finraotc_bbds_dfi_v2018_1a.message.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_finra_finraotc_bbds_dfi_v2018_1a.init()
end

-- Dissector for Finra FinraOtc Bbds Dfi 2018.1A
function omi_finra_finraotc_bbds_dfi_v2018_1a.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_finra_finraotc_bbds_dfi_v2018_1a.name

  -- Dissect protocol
  local protocol = parent:add(omi_finra_finraotc_bbds_dfi_v2018_1a, buffer(), omi_finra_finraotc_bbds_dfi_v2018_1a.description, "("..buffer:len().." Bytes)")
  return finra_finraotc_bbds_dfi_v2018_1a.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
finra_finraotc_bbds_dfi_v2018_1a.packet.fingerprint = function(buffer)
  if buffer:len() < 2 then
    return false
  end

  local message_category = buffer(1, 1):string()

  -- Quotation Message: carries the application messages, which tell this protocol from others sharing the session framing
  if message_category == "Q" then
    if buffer:len() < 3 then
      return false
    end

    local quotation_message_type = buffer(2, 1):string()

    -- Market Participant Quote Update Message
    if quotation_message_type == "1" then
      return true
    end

    return false
  end

  -- Administrative Message: carries the application messages, which tell this protocol from others sharing the session framing
  if message_category == "A" then
    if buffer:len() < 3 then
      return false
    end

    local administrative_message_type = buffer(2, 1):string()

    -- General Administrative Message
    if administrative_message_type == "A" then
      return true
    end

    -- Trading Action Message
    if administrative_message_type == "H" then
      return true
    end

    return false
  end

  -- Control Message: carries the application messages, which tell this protocol from others sharing the session framing
  if message_category == "C" then
    if buffer:len() < 3 then
      return false
    end

    local control_message_type = buffer(2, 1):string()

    -- Start Of Day Message
    if control_message_type == "I" then
      return true
    end

    -- End Of Day Message
    if control_message_type == "J" then
      return true
    end

    -- Market Session Open Message
    if control_message_type == "O" then
      return true
    end

    -- Market Session Close Message
    if control_message_type == "C" then
      return true
    end

    -- End Of Retransmission Requests Message
    if control_message_type == "K" then
      return true
    end

    -- End Of Transmissions Message
    if control_message_type == "Z" then
      return true
    end

    -- Line Integrity Message
    if control_message_type == "T" then
      return true
    end

    -- Sequence Number Reset Message
    if control_message_type == "L" then
      return true
    end

    -- End Of Trade Reporting Message
    if control_message_type == "X" then
      return true
    end

    return false
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Block Soh Field
finra_finraotc_bbds_dfi_v2018_1a.block_soh.verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 0 + 1 then
    return false
  end

  -- Attempt to read field
  local value = buffer(0, 1):uint()

  if value == 1 then
    return true
  end

  return false
end

-- Dissector Heuristic for Finra FinraOtc Bbds Dfi 2018.1A (Udp)
local function omi_finra_finraotc_bbds_dfi_v2018_1a_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not finra_finraotc_bbds_dfi_v2018_1a.packet.requiredsize(buffer) then return false end

  -- Verify Block Soh
  if not finra_finraotc_bbds_dfi_v2018_1a.block_soh.verify(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not finra_finraotc_bbds_dfi_v2018_1a.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_finra_finraotc_bbds_dfi_v2018_1a
  omi_finra_finraotc_bbds_dfi_v2018_1a.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Finra FinraOtc Bbds Dfi 2018.1A
omi_finra_finraotc_bbds_dfi_v2018_1a:register_heuristic("udp", omi_finra_finraotc_bbds_dfi_v2018_1a_udp_heuristic)

-- Register Finra FinraOtc Bbds Dfi 2018.1A for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_finra_finraotc_bbds_dfi_v2018_1a)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Financial Industry Regulatory Authority
--   Version: 2018.1A
--   Date: Monday, May 14, 2018
--   Specification: FINRA BBDS Data Feed Interface Specification (2018-1A).pdf
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
