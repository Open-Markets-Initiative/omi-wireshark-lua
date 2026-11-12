-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Bmv BmvMarketData Product22 Intra 1.1 Protocol
local omi_bmv_bmvmarketdata_product22_intra_v1_1 = Proto("Omi.Bmv.BmvMarketData.Product22.Intra.v1.1", "Bmv BmvMarketData Product22 Intra 1.1")

-- Protocol table
local bmv_bmvmarketdata_product22_intra_v1_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Bmv BmvMarketData Product22 Intra 1.1 Fields
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.amount_traded = ProtoField.new("Amount Traded", "bmv.bmvmarketdata.product22.intra.v1.1.amounttraded", ftypes.INT64)
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.beta_coefficient = ProtoField.new("Beta Coefficient", "bmv.bmvmarketdata.product22.intra.v1.1.betacoefficient", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.beta_coefficient_sign = ProtoField.new("Beta Coefficient Sign", "bmv.bmvmarketdata.product22.intra.v1.1.betacoefficientsign", ftypes.STRING, nil, nil, nil, "Beta Coefficient Sign: \" \" - Positive, \"_\" - Negative")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.bursatility_indices = ProtoField.new("Bursatility Indices", "bmv.bmvmarketdata.product22.intra.v1.1.bursatilityindices", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.bursatility_indices_sign = ProtoField.new("Bursatility Indices Sign", "bmv.bmvmarketdata.product22.intra.v1.1.bursatilityindicessign", ftypes.STRING, nil, nil, nil, "Bursatility Indices Sign: \" \" - Positive, \"_\" - Negative")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.business_line = ProtoField.new("Business Line", "bmv.bmvmarketdata.product22.intra.v1.1.businessline", ftypes.INT8)
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.buy = ProtoField.new("Buy", "bmv.bmvmarketdata.product22.intra.v1.1.buy", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.buybacks = ProtoField.new("Buybacks", "bmv.bmvmarketdata.product22.intra.v1.1.buybacks", ftypes.INT64)
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.correlation_coefficient = ProtoField.new("Correlation Coefficient", "bmv.bmvmarketdata.product22.intra.v1.1.correlationcoefficient", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.correlation_coefficient_sign = ProtoField.new("Correlation Coefficient Sign", "bmv.bmvmarketdata.product22.intra.v1.1.correlationcoefficientsign", ftypes.STRING, nil, nil, nil, "Correlation Coefficient Sign: \" \" - Positive, \"_\" - Negative")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.currency = ProtoField.new("Currency", "bmv.bmvmarketdata.product22.intra.v1.1.currency", ftypes.STRING)
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.current_balance = ProtoField.new("Current Balance", "bmv.bmvmarketdata.product22.intra.v1.1.currentbalance", ftypes.INT64)
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.date = ProtoField.new("Date", "bmv.bmvmarketdata.product22.intra.v1.1.date", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Information Date")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.date_utc = ProtoField.new("Date", "bmv.bmvmarketdata.product22.intra.v1.1.date.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Information Date")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.date_indicators = ProtoField.new("Date Indicators", "bmv.bmvmarketdata.product22.intra.v1.1.dateindicators", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.date_indicators_utc = ProtoField.new("Date Indicators", "bmv.bmvmarketdata.product22.intra.v1.1.dateindicators.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.datetime = ProtoField.new("Datetime", "bmv.bmvmarketdata.product22.intra.v1.1.datetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date and time the packet is created")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.datetime_utc = ProtoField.new("Datetime", "bmv.bmvmarketdata.product22.intra.v1.1.datetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date and time the packet is created")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.delta_difference = ProtoField.new("Delta Difference", "bmv.bmvmarketdata.product22.intra.v1.1.deltadifference", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.dollar_side = ProtoField.new("Dollar Side", "bmv.bmvmarketdata.product22.intra.v1.1.dollarside", ftypes.STRING, nil, nil, nil, "Side (Document label: Side)")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.ending_time = ProtoField.new("Ending Time", "bmv.bmvmarketdata.product22.intra.v1.1.endingtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Recess official ending time. Only used when an official recess or automatic recess occurred.")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.ending_time_utc = ProtoField.new("Ending Time", "bmv.bmvmarketdata.product22.intra.v1.1.endingtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Recess official ending time. Only used when an official recess or automatic recess occurred.")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.event_code = ProtoField.new("Event Code", "bmv.bmvmarketdata.product22.intra.v1.1.eventcode", ftypes.STRING, nil, nil, nil, "See the table of System Event Codes Catalog on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.f_1_p_u = ProtoField.new("F 1 P U", "bmv.bmvmarketdata.product22.intra.v1.1.f1pu", ftypes.DOUBLE, nil, nil, nil, "F1_P_U")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.f_1_p_ue = ProtoField.new("F 1 P Ue", "bmv.bmvmarketdata.product22.intra.v1.1.f1pue", ftypes.DOUBLE, nil, nil, nil, "F1_P_UE")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.f_1_p_unoc = ProtoField.new("F 1 P Unoc", "bmv.bmvmarketdata.product22.intra.v1.1.f1punoc", ftypes.DOUBLE, nil, nil, nil, "F1_P_UNOC")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.f_1_p_vl = ProtoField.new("F 1 P Vl", "bmv.bmvmarketdata.product22.intra.v1.1.f1pvl", ftypes.DOUBLE, nil, nil, nil, "F1_P_VL")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.f_1_ve_uaiida = ProtoField.new("F 1 Ve Uaiida", "bmv.bmvmarketdata.product22.intra.v1.1.f1veuaiida", ftypes.DOUBLE, nil, nil, nil, "F1_VE_UAIIDA")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.f_2_p_u = ProtoField.new("F 2 P U", "bmv.bmvmarketdata.product22.intra.v1.1.f2pu", ftypes.DOUBLE, nil, nil, nil, "F2_P_U")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.f_2_p_ue = ProtoField.new("F 2 P Ue", "bmv.bmvmarketdata.product22.intra.v1.1.f2pue", ftypes.DOUBLE, nil, nil, nil, "F2_P_UE")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.f_2_p_unoc = ProtoField.new("F 2 P Unoc", "bmv.bmvmarketdata.product22.intra.v1.1.f2punoc", ftypes.DOUBLE, nil, nil, nil, "F2_P_UNOC")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.f_2_p_vl = ProtoField.new("F 2 P Vl", "bmv.bmvmarketdata.product22.intra.v1.1.f2pvl", ftypes.DOUBLE, nil, nil, nil, "F2_P_VL")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.f_2_ve_uaiida = ProtoField.new("F 2 Ve Uaiida", "bmv.bmvmarketdata.product22.intra.v1.1.f2veuaiida", ftypes.DOUBLE, nil, nil, nil, "F2_VE_UAIIDA")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.instrument_id = ProtoField.new("Instrument Id", "bmv.bmvmarketdata.product22.intra.v1.1.instrumentid", ftypes.INT32, nil, nil, nil, "Unique code during instruments life For the sector multiples a null is sent (represented by the maximum possible value for this type of value, in this case it is 2,147,483,647)")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.instrument_number = ProtoField.new("Instrument Number", "bmv.bmvmarketdata.product22.intra.v1.1.instrumentnumber", ftypes.INT32, nil, nil, nil, "Always zero")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.last_deal = ProtoField.new("Last Deal", "bmv.bmvmarketdata.product22.intra.v1.1.lastdeal", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.length = ProtoField.new("Length", "bmv.bmvmarketdata.product22.intra.v1.1.length", ftypes.INT16, nil, nil, nil, "Packet length, including header and all attached messages")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.market = ProtoField.new("Market", "bmv.bmvmarketdata.product22.intra.v1.1.market", ftypes.STRING, nil, nil, nil, "See the table of Markets Catalog (only used when there is an official recess) on the Connections and Appendix document")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.market_data_group = ProtoField.new("Market Data Group", "bmv.bmvmarketdata.product22.intra.v1.1.marketdatagroup", ftypes.INT8, nil, nil, nil, "See Market Data Groups Catalog")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.message_length = ProtoField.new("Message Length", "bmv.bmvmarketdata.product22.intra.v1.1.messagelength", ftypes.INT16, nil, nil, nil, "Indicates message length contained in this message block")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.message_type = ProtoField.new("Message Type", "bmv.bmvmarketdata.product22.intra.v1.1.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying the message")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.multiple_type = ProtoField.new("Multiple Type", "bmv.bmvmarketdata.product22.intra.v1.1.multipletype", ftypes.STRING, nil, nil, nil, "\"E\"=Multiple of market by transmitter, \"S\"=Multiple of market by sector")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.p_u = ProtoField.new("P U", "bmv.bmvmarketdata.product22.intra.v1.1.pu", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.p_vl = ProtoField.new("P Vl", "bmv.bmvmarketdata.product22.intra.v1.1.pvl", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.pfepa_multiple = ProtoField.new("Pfepa Multiple", "bmv.bmvmarketdata.product22.intra.v1.1.pfepamultiple", ftypes.DOUBLE, nil, nil, nil, "P/FEPA Multiple")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.pflepa_multiple = ProtoField.new("Pflepa Multiple", "bmv.bmvmarketdata.product22.intra.v1.1.pflepamultiple", ftypes.DOUBLE, nil, nil, nil, "P/FLEPA Multiple")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.posture_date = ProtoField.new("Posture Date", "bmv.bmvmarketdata.product22.intra.v1.1.posturedate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.posture_date_utc = ProtoField.new("Posture Date", "bmv.bmvmarketdata.product22.intra.v1.1.posturedate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.previous_balance = ProtoField.new("Previous Balance", "bmv.bmvmarketdata.product22.intra.v1.1.previousbalance", ftypes.INT64)
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.registry_number = ProtoField.new("Registry Number", "bmv.bmvmarketdata.product22.intra.v1.1.registrynumber", ftypes.STRING, nil, nil, nil, "Registries sent number")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.sector = ProtoField.new("Sector", "bmv.bmvmarketdata.product22.intra.v1.1.sector", ftypes.INT8)
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.sell = ProtoField.new("Sell", "bmv.bmvmarketdata.product22.intra.v1.1.sell", ftypes.DOUBLE)
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.sending_time = ProtoField.new("Sending Time", "bmv.bmvmarketdata.product22.intra.v1.1.sendingtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Recess’s official sending time. Only used when official recess has occurred.")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.sending_time_utc = ProtoField.new("Sending Time", "bmv.bmvmarketdata.product22.intra.v1.1.sendingtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Recess’s official sending time. Only used when official recess has occurred.")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.sequence_number = ProtoField.new("Sequence Number", "bmv.bmvmarketdata.product22.intra.v1.1.sequencenumber", ftypes.INT32, nil, nil, nil, "Sequence number of the first message attached to header")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.session = ProtoField.new("Session", "bmv.bmvmarketdata.product22.intra.v1.1.session", ftypes.INT8, nil, nil, nil, "Current session identifier")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.sub_line = ProtoField.new("Sub Line", "bmv.bmvmarketdata.product22.intra.v1.1.subline", ftypes.INT8, nil, nil, nil, "Sub-Line")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.subsector = ProtoField.new("Subsector", "bmv.bmvmarketdata.product22.intra.v1.1.subsector", ftypes.INT8)
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.total_messages = ProtoField.new("Total Messages", "bmv.bmvmarketdata.product22.intra.v1.1.totalmessages", ftypes.INT8, nil, nil, nil, "Number of messages after the header")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.ve_uaiida_multiple = ProtoField.new("Ve Uaiida Multiple", "bmv.bmvmarketdata.product22.intra.v1.1.veuaiidamultiple", ftypes.DOUBLE, nil, nil, nil, "VE-UAIIDA Multiple")

-- Bmv BmvMarketData Product22 Intra 1.1 Framing
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.intra_multicast_header = ProtoField.new("INTRA Multicast Header", "bmv.bmvmarketdata.product22.intra.v1.1.intramulticastheader", ftypes.STRING, nil, nil, nil, "BMV INTRA Multicast Header")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.message_block = ProtoField.new("Message Block", "bmv.bmvmarketdata.product22.intra.v1.1.messageblock", ftypes.STRING, nil, nil, nil, "BMV INTRA Multicast message block")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.message_header = ProtoField.new("Message Header", "bmv.bmvmarketdata.product22.intra.v1.1.messageheader", ftypes.STRING, nil, nil, nil, "Message length and message type")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.packet = ProtoField.new("Packet", "bmv.bmvmarketdata.product22.intra.v1.1.packet", ftypes.STRING, nil, nil, nil, "Bmv INTRA Multicast Udp Packet")

-- Bmv BmvMarketData Product22 1.1 Application Messages
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.capital_market_multiples_message = ProtoField.new("Capital Market Multiples Message", "bmv.bmvmarketdata.product22.intra.v1.1.capitalmarketmultiplesmessage", ftypes.STRING, nil, nil, nil, "Capital Market Multiples")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.capitalization_rules_message = ProtoField.new("Capitalization Rules Message", "bmv.bmvmarketdata.product22.intra.v1.1.capitalizationrulesmessage", ftypes.STRING, nil, nil, nil, "Capitalization Rules")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.dollar_buy_sell_message = ProtoField.new("Dollar Buy Sell Message", "bmv.bmvmarketdata.product22.intra.v1.1.dollarbuysellmessage", ftypes.STRING, nil, nil, nil, "Dollar Buy/Sell")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.events_system_message = ProtoField.new("Events System Message", "bmv.bmvmarketdata.product22.intra.v1.1.eventssystemmessage", ftypes.STRING, nil, nil, nil, "The system of events message is used to inform that an event has occurred, which needs to be of public domain.")
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.short_sales_balances_per_instrument_message = ProtoField.new("Short Sales Balances Per Instrument Message", "bmv.bmvmarketdata.product22.intra.v1.1.shortsalesbalancesperinstrumentmessage", ftypes.STRING, nil, nil, nil, "Short sales balances per instrument")

-- Bmv BmvMarketData Product22 Intra 1.1 Generated Fields
omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.message_block_index = ProtoField.new("Message Block Index", "bmv.bmvmarketdata.product22.intra.v1.1.messageblockindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Bmv BmvMarketData Product22 Intra 1.1 Formatting
-----------------------------------------------------------------------

-- Text field character encoding (Wireshark ENC_ constant)
bmv_bmvmarketdata_product22_intra_v1_1.text_encoding = ENC_ASCII

-- timestamp format
local timestamp_format_enum = {
  { 1, "Full DateTime Local", 2 },
  { 2, "Full DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=Full DateTime Local, 3=Full DateTime Utc
bmv_bmvmarketdata_product22_intra_v1_1.timestamp_format = 2


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Bmv BmvMarketData Product22 Intra 1.1 Element Dissection Options
show.application_messages = true
show.headers = true
show.structs = true
show.indexes = true

-- Register Bmv BmvMarketData Product22 Intra 1.1 Show Options
omi_bmv_bmvmarketdata_product22_intra_v1_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_bmv_bmvmarketdata_product22_intra_v1_1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_bmv_bmvmarketdata_product22_intra_v1_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_bmv_bmvmarketdata_product22_intra_v1_1.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_bmv_bmvmarketdata_product22_intra_v1_1.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_bmv_bmvmarketdata_product22_intra_v1_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_bmv_bmvmarketdata_product22_intra_v1_1.prefs.show_application_messages then
    show.application_messages = omi_bmv_bmvmarketdata_product22_intra_v1_1.prefs.show_application_messages
  end
  if show.headers ~= omi_bmv_bmvmarketdata_product22_intra_v1_1.prefs.show_headers then
    show.headers = omi_bmv_bmvmarketdata_product22_intra_v1_1.prefs.show_headers
  end
  if show.structs ~= omi_bmv_bmvmarketdata_product22_intra_v1_1.prefs.show_structs then
    show.structs = omi_bmv_bmvmarketdata_product22_intra_v1_1.prefs.show_structs
  end
  if show.indexes ~= omi_bmv_bmvmarketdata_product22_intra_v1_1.prefs.show_indexes then
    show.indexes = omi_bmv_bmvmarketdata_product22_intra_v1_1.prefs.show_indexes
  end
  if bmv_bmvmarketdata_product22_intra_v1_1.timestamp_format ~= omi_bmv_bmvmarketdata_product22_intra_v1_1.prefs.timestamp_format then
    bmv_bmvmarketdata_product22_intra_v1_1.timestamp_format = omi_bmv_bmvmarketdata_product22_intra_v1_1.prefs.timestamp_format
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
-- Bmv BmvMarketData Product22 Intra 1.1 Fields
-----------------------------------------------------------------------

-- Amount Traded
bmv_bmvmarketdata_product22_intra_v1_1.amount_traded = {}

-- Size: Amount Traded
bmv_bmvmarketdata_product22_intra_v1_1.amount_traded.size = 8

-- Display: Amount Traded
bmv_bmvmarketdata_product22_intra_v1_1.amount_traded.display = function(value)
  return "Amount Traded: "..value
end

-- Dissect: Amount Traded
bmv_bmvmarketdata_product22_intra_v1_1.amount_traded.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.amount_traded.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_product22_intra_v1_1.amount_traded.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.amount_traded, range, value, display)

  return offset + length, value
end

-- Beta Coefficient
bmv_bmvmarketdata_product22_intra_v1_1.beta_coefficient = {}

-- Size: Beta Coefficient
bmv_bmvmarketdata_product22_intra_v1_1.beta_coefficient.size = 8

-- Display: Beta Coefficient
bmv_bmvmarketdata_product22_intra_v1_1.beta_coefficient.display = function(value)
  return "Beta Coefficient: "..value
end

-- Translate: Beta Coefficient
bmv_bmvmarketdata_product22_intra_v1_1.beta_coefficient.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Beta Coefficient
bmv_bmvmarketdata_product22_intra_v1_1.beta_coefficient.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.beta_coefficient.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product22_intra_v1_1.beta_coefficient.translate(raw)
  local display = bmv_bmvmarketdata_product22_intra_v1_1.beta_coefficient.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.beta_coefficient, range, value, display)

  return offset + length, value
end

-- Beta Coefficient Sign
bmv_bmvmarketdata_product22_intra_v1_1.beta_coefficient_sign = {}

-- Size: Beta Coefficient Sign
bmv_bmvmarketdata_product22_intra_v1_1.beta_coefficient_sign.size = 1

-- Display: Beta Coefficient Sign
bmv_bmvmarketdata_product22_intra_v1_1.beta_coefficient_sign.display = function(value)
  if value == " " then
    return "Beta Coefficient Sign: Positive (<whitespace>)"
  end
  if value == "_" then
    return "Beta Coefficient Sign: Negative (_)"
  end

  return "Beta Coefficient Sign: Unknown("..value..")"
end

-- Dissect: Beta Coefficient Sign
bmv_bmvmarketdata_product22_intra_v1_1.beta_coefficient_sign.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.beta_coefficient_sign.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product22_intra_v1_1.beta_coefficient_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.beta_coefficient_sign, range, value, display)

  return offset + length, value
end

-- Bursatility Indices
bmv_bmvmarketdata_product22_intra_v1_1.bursatility_indices = {}

-- Size: Bursatility Indices
bmv_bmvmarketdata_product22_intra_v1_1.bursatility_indices.size = 4

-- Display: Bursatility Indices
bmv_bmvmarketdata_product22_intra_v1_1.bursatility_indices.display = function(value)
  return "Bursatility Indices: "..value
end

-- Translate: Bursatility Indices
bmv_bmvmarketdata_product22_intra_v1_1.bursatility_indices.translate = function(raw)
  return raw/10000
end

-- Dissect: Bursatility Indices
bmv_bmvmarketdata_product22_intra_v1_1.bursatility_indices.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.bursatility_indices.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_product22_intra_v1_1.bursatility_indices.translate(raw)
  local display = bmv_bmvmarketdata_product22_intra_v1_1.bursatility_indices.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.bursatility_indices, range, value, display)

  return offset + length, value
end

-- Bursatility Indices Sign
bmv_bmvmarketdata_product22_intra_v1_1.bursatility_indices_sign = {}

-- Size: Bursatility Indices Sign
bmv_bmvmarketdata_product22_intra_v1_1.bursatility_indices_sign.size = 1

-- Display: Bursatility Indices Sign
bmv_bmvmarketdata_product22_intra_v1_1.bursatility_indices_sign.display = function(value)
  if value == " " then
    return "Bursatility Indices Sign: Positive (<whitespace>)"
  end
  if value == "_" then
    return "Bursatility Indices Sign: Negative (_)"
  end

  return "Bursatility Indices Sign: Unknown("..value..")"
end

-- Dissect: Bursatility Indices Sign
bmv_bmvmarketdata_product22_intra_v1_1.bursatility_indices_sign.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.bursatility_indices_sign.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product22_intra_v1_1.bursatility_indices_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.bursatility_indices_sign, range, value, display)

  return offset + length, value
end

-- Business Line
bmv_bmvmarketdata_product22_intra_v1_1.business_line = {}

-- Size: Business Line
bmv_bmvmarketdata_product22_intra_v1_1.business_line.size = 1

-- Display: Business Line
bmv_bmvmarketdata_product22_intra_v1_1.business_line.display = function(value)
  return "Business Line: "..value
end

-- Dissect: Business Line
bmv_bmvmarketdata_product22_intra_v1_1.business_line.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.business_line.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product22_intra_v1_1.business_line.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.business_line, range, value, display)

  return offset + length, value
end

-- Buy
bmv_bmvmarketdata_product22_intra_v1_1.buy = {}

-- Size: Buy
bmv_bmvmarketdata_product22_intra_v1_1.buy.size = 8

-- Display: Buy
bmv_bmvmarketdata_product22_intra_v1_1.buy.display = function(value)
  return "Buy: "..value
end

-- Translate: Buy
bmv_bmvmarketdata_product22_intra_v1_1.buy.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Buy
bmv_bmvmarketdata_product22_intra_v1_1.buy.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.buy.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product22_intra_v1_1.buy.translate(raw)
  local display = bmv_bmvmarketdata_product22_intra_v1_1.buy.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.buy, range, value, display)

  return offset + length, value
end

-- Buybacks
bmv_bmvmarketdata_product22_intra_v1_1.buybacks = {}

-- Size: Buybacks
bmv_bmvmarketdata_product22_intra_v1_1.buybacks.size = 8

-- Display: Buybacks
bmv_bmvmarketdata_product22_intra_v1_1.buybacks.display = function(value)
  return "Buybacks: "..value
end

-- Dissect: Buybacks
bmv_bmvmarketdata_product22_intra_v1_1.buybacks.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.buybacks.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_product22_intra_v1_1.buybacks.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.buybacks, range, value, display)

  return offset + length, value
end

-- Correlation Coefficient
bmv_bmvmarketdata_product22_intra_v1_1.correlation_coefficient = {}

-- Size: Correlation Coefficient
bmv_bmvmarketdata_product22_intra_v1_1.correlation_coefficient.size = 8

-- Display: Correlation Coefficient
bmv_bmvmarketdata_product22_intra_v1_1.correlation_coefficient.display = function(value)
  return "Correlation Coefficient: "..value
end

-- Translate: Correlation Coefficient
bmv_bmvmarketdata_product22_intra_v1_1.correlation_coefficient.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Correlation Coefficient
bmv_bmvmarketdata_product22_intra_v1_1.correlation_coefficient.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.correlation_coefficient.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product22_intra_v1_1.correlation_coefficient.translate(raw)
  local display = bmv_bmvmarketdata_product22_intra_v1_1.correlation_coefficient.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.correlation_coefficient, range, value, display)

  return offset + length, value
end

-- Correlation Coefficient Sign
bmv_bmvmarketdata_product22_intra_v1_1.correlation_coefficient_sign = {}

-- Size: Correlation Coefficient Sign
bmv_bmvmarketdata_product22_intra_v1_1.correlation_coefficient_sign.size = 1

-- Display: Correlation Coefficient Sign
bmv_bmvmarketdata_product22_intra_v1_1.correlation_coefficient_sign.display = function(value)
  if value == " " then
    return "Correlation Coefficient Sign: Positive (<whitespace>)"
  end
  if value == "_" then
    return "Correlation Coefficient Sign: Negative (_)"
  end

  return "Correlation Coefficient Sign: Unknown("..value..")"
end

-- Dissect: Correlation Coefficient Sign
bmv_bmvmarketdata_product22_intra_v1_1.correlation_coefficient_sign.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.correlation_coefficient_sign.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product22_intra_v1_1.correlation_coefficient_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.correlation_coefficient_sign, range, value, display)

  return offset + length, value
end

-- Currency
bmv_bmvmarketdata_product22_intra_v1_1.currency = {}

-- Size: Currency
bmv_bmvmarketdata_product22_intra_v1_1.currency.size = 5

-- Display: Currency
bmv_bmvmarketdata_product22_intra_v1_1.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
bmv_bmvmarketdata_product22_intra_v1_1.currency.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bmv_bmvmarketdata_product22_intra_v1_1.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.currency, range, value, display)

  return offset + length, value
end

-- Current Balance
bmv_bmvmarketdata_product22_intra_v1_1.current_balance = {}

-- Size: Current Balance
bmv_bmvmarketdata_product22_intra_v1_1.current_balance.size = 8

-- Display: Current Balance
bmv_bmvmarketdata_product22_intra_v1_1.current_balance.display = function(value)
  return "Current Balance: "..value
end

-- Dissect: Current Balance
bmv_bmvmarketdata_product22_intra_v1_1.current_balance.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.current_balance.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_product22_intra_v1_1.current_balance.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.current_balance, range, value, display)

  return offset + length, value
end

-- Date
bmv_bmvmarketdata_product22_intra_v1_1.date = {}

-- Size: Date
bmv_bmvmarketdata_product22_intra_v1_1.date.size = 8

-- Dissect: Date
bmv_bmvmarketdata_product22_intra_v1_1.date.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.date.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.date
  if bmv_bmvmarketdata_product22_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.date_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Date Indicators
bmv_bmvmarketdata_product22_intra_v1_1.date_indicators = {}

-- Size: Date Indicators
bmv_bmvmarketdata_product22_intra_v1_1.date_indicators.size = 8

-- Dissect: Date Indicators
bmv_bmvmarketdata_product22_intra_v1_1.date_indicators.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.date_indicators.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.date_indicators
  if bmv_bmvmarketdata_product22_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.date_indicators_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Datetime
bmv_bmvmarketdata_product22_intra_v1_1.datetime = {}

-- Size: Datetime
bmv_bmvmarketdata_product22_intra_v1_1.datetime.size = 8

-- Dissect: Datetime
bmv_bmvmarketdata_product22_intra_v1_1.datetime.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.datetime.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.datetime
  if bmv_bmvmarketdata_product22_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.datetime_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Delta Difference
bmv_bmvmarketdata_product22_intra_v1_1.delta_difference = {}

-- Size: Delta Difference
bmv_bmvmarketdata_product22_intra_v1_1.delta_difference.size = 4

-- Display: Delta Difference
bmv_bmvmarketdata_product22_intra_v1_1.delta_difference.display = function(value)
  return "Delta Difference: "..value
end

-- Translate: Delta Difference
bmv_bmvmarketdata_product22_intra_v1_1.delta_difference.translate = function(raw)
  return raw/10000
end

-- Dissect: Delta Difference
bmv_bmvmarketdata_product22_intra_v1_1.delta_difference.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.delta_difference.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = bmv_bmvmarketdata_product22_intra_v1_1.delta_difference.translate(raw)
  local display = bmv_bmvmarketdata_product22_intra_v1_1.delta_difference.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.delta_difference, range, value, display)

  return offset + length, value
end

-- Dollar Side
bmv_bmvmarketdata_product22_intra_v1_1.dollar_side = {}

-- Size: Dollar Side
bmv_bmvmarketdata_product22_intra_v1_1.dollar_side.size = 1

-- Display: Dollar Side
bmv_bmvmarketdata_product22_intra_v1_1.dollar_side.display = function(value)
  return "Dollar Side: "..value
end

-- Dissect: Dollar Side
bmv_bmvmarketdata_product22_intra_v1_1.dollar_side.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.dollar_side.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product22_intra_v1_1.dollar_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.dollar_side, range, value, display)

  return offset + length, value
end

-- Ending Time
bmv_bmvmarketdata_product22_intra_v1_1.ending_time = {}

-- Size: Ending Time
bmv_bmvmarketdata_product22_intra_v1_1.ending_time.size = 8

-- Dissect: Ending Time
bmv_bmvmarketdata_product22_intra_v1_1.ending_time.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.ending_time.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.ending_time
  if bmv_bmvmarketdata_product22_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.ending_time_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Event Code
bmv_bmvmarketdata_product22_intra_v1_1.event_code = {}

-- Size: Event Code
bmv_bmvmarketdata_product22_intra_v1_1.event_code.size = 1

-- Display: Event Code
bmv_bmvmarketdata_product22_intra_v1_1.event_code.labels = {
  ["A"] = "Event Code: Start Of System Hours (A)",
  ["B"] = "Event Code: Cancelation Of Offers (B)",
  ["C"] = "Event Code: Start Of Opening Auction (C)",
  ["D"] = "Event Code: Start Of Continuous Market (D)",
  ["E"] = "Event Code: Start Of Wap Period (E)",
  ["F"] = "Event Code: Continuous Market Ends (F)",
  ["G"] = "Event Code: Start Of After Closing Phase (G)",
  ["H"] = "Event Code: It Ends After Closing (H)",
  ["J"] = "Event Code: Transmission Of Final Prices Ends (J)",
  ["K"] = "Event Code: End Of System Hours (K)",
  ["M"] = "Event Code: Start Of Administrative Recess (M)",
  ["N"] = "Event Code: End Of Administrative Recess (N)",
  ["O"] = "Event Code: Start Dvmamx Markets (O)",
  ["P"] = "Event Code: End Of Dvma Markets (P)",
  ["Q"] = "Event Code: End Of Mx Markets (Q)",
  ["R"] = "Event Code: Start Of Opc Modality (R)",
  ["S"] = "Event Code: End Of Opc Modality (S)",
  ["T"] = "Event Code: Start Of Settlement Auction (T)",
  ["U"] = "Event Code: End Of Settlement Auction (U)",
  ["V"] = "Event Code: Final Register Of Settlement Prices (V)",
  ["W"] = "Event Code: Open Interest (W)",
}

bmv_bmvmarketdata_product22_intra_v1_1.event_code.display = function(value)
  return bmv_bmvmarketdata_product22_intra_v1_1.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
bmv_bmvmarketdata_product22_intra_v1_1.event_code.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.event_code.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product22_intra_v1_1.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.event_code, range, value, display)

  return offset + length, value
end

-- F 1 P U
bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_u = {}

-- Size: F 1 P U
bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_u.size = 8

-- Display: F 1 P U
bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_u.display = function(value)
  return "F 1 P U: "..value
end

-- Translate: F 1 P U
bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_u.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: F 1 P U
bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_u.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_u.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_u.translate(raw)
  local display = bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_u.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.f_1_p_u, range, value, display)

  return offset + length, value
end

-- F 1 P Ue
bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_ue = {}

-- Size: F 1 P Ue
bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_ue.size = 8

-- Display: F 1 P Ue
bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_ue.display = function(value)
  return "F 1 P Ue: "..value
end

-- Translate: F 1 P Ue
bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_ue.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: F 1 P Ue
bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_ue.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_ue.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_ue.translate(raw)
  local display = bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_ue.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.f_1_p_ue, range, value, display)

  return offset + length, value
end

-- F 1 P Unoc
bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_unoc = {}

-- Size: F 1 P Unoc
bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_unoc.size = 8

-- Display: F 1 P Unoc
bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_unoc.display = function(value)
  return "F 1 P Unoc: "..value
end

-- Translate: F 1 P Unoc
bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_unoc.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: F 1 P Unoc
bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_unoc.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_unoc.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_unoc.translate(raw)
  local display = bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_unoc.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.f_1_p_unoc, range, value, display)

  return offset + length, value
end

-- F 1 P Vl
bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_vl = {}

-- Size: F 1 P Vl
bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_vl.size = 8

-- Display: F 1 P Vl
bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_vl.display = function(value)
  return "F 1 P Vl: "..value
end

-- Translate: F 1 P Vl
bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_vl.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: F 1 P Vl
bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_vl.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_vl.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_vl.translate(raw)
  local display = bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_vl.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.f_1_p_vl, range, value, display)

  return offset + length, value
end

-- F 1 Ve Uaiida
bmv_bmvmarketdata_product22_intra_v1_1.f_1_ve_uaiida = {}

-- Size: F 1 Ve Uaiida
bmv_bmvmarketdata_product22_intra_v1_1.f_1_ve_uaiida.size = 8

-- Display: F 1 Ve Uaiida
bmv_bmvmarketdata_product22_intra_v1_1.f_1_ve_uaiida.display = function(value)
  return "F 1 Ve Uaiida: "..value
end

-- Translate: F 1 Ve Uaiida
bmv_bmvmarketdata_product22_intra_v1_1.f_1_ve_uaiida.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: F 1 Ve Uaiida
bmv_bmvmarketdata_product22_intra_v1_1.f_1_ve_uaiida.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.f_1_ve_uaiida.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product22_intra_v1_1.f_1_ve_uaiida.translate(raw)
  local display = bmv_bmvmarketdata_product22_intra_v1_1.f_1_ve_uaiida.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.f_1_ve_uaiida, range, value, display)

  return offset + length, value
end

-- F 2 P U
bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_u = {}

-- Size: F 2 P U
bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_u.size = 8

-- Display: F 2 P U
bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_u.display = function(value)
  return "F 2 P U: "..value
end

-- Translate: F 2 P U
bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_u.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: F 2 P U
bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_u.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_u.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_u.translate(raw)
  local display = bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_u.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.f_2_p_u, range, value, display)

  return offset + length, value
end

-- F 2 P Ue
bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_ue = {}

-- Size: F 2 P Ue
bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_ue.size = 8

-- Display: F 2 P Ue
bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_ue.display = function(value)
  return "F 2 P Ue: "..value
end

-- Translate: F 2 P Ue
bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_ue.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: F 2 P Ue
bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_ue.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_ue.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_ue.translate(raw)
  local display = bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_ue.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.f_2_p_ue, range, value, display)

  return offset + length, value
end

-- F 2 P Unoc
bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_unoc = {}

-- Size: F 2 P Unoc
bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_unoc.size = 8

-- Display: F 2 P Unoc
bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_unoc.display = function(value)
  return "F 2 P Unoc: "..value
end

-- Translate: F 2 P Unoc
bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_unoc.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: F 2 P Unoc
bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_unoc.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_unoc.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_unoc.translate(raw)
  local display = bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_unoc.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.f_2_p_unoc, range, value, display)

  return offset + length, value
end

-- F 2 P Vl
bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_vl = {}

-- Size: F 2 P Vl
bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_vl.size = 8

-- Display: F 2 P Vl
bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_vl.display = function(value)
  return "F 2 P Vl: "..value
end

-- Translate: F 2 P Vl
bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_vl.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: F 2 P Vl
bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_vl.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_vl.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_vl.translate(raw)
  local display = bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_vl.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.f_2_p_vl, range, value, display)

  return offset + length, value
end

-- F 2 Ve Uaiida
bmv_bmvmarketdata_product22_intra_v1_1.f_2_ve_uaiida = {}

-- Size: F 2 Ve Uaiida
bmv_bmvmarketdata_product22_intra_v1_1.f_2_ve_uaiida.size = 8

-- Display: F 2 Ve Uaiida
bmv_bmvmarketdata_product22_intra_v1_1.f_2_ve_uaiida.display = function(value)
  return "F 2 Ve Uaiida: "..value
end

-- Translate: F 2 Ve Uaiida
bmv_bmvmarketdata_product22_intra_v1_1.f_2_ve_uaiida.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: F 2 Ve Uaiida
bmv_bmvmarketdata_product22_intra_v1_1.f_2_ve_uaiida.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.f_2_ve_uaiida.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product22_intra_v1_1.f_2_ve_uaiida.translate(raw)
  local display = bmv_bmvmarketdata_product22_intra_v1_1.f_2_ve_uaiida.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.f_2_ve_uaiida, range, value, display)

  return offset + length, value
end

-- Instrument Id
bmv_bmvmarketdata_product22_intra_v1_1.instrument_id = {}

-- Size: Instrument Id
bmv_bmvmarketdata_product22_intra_v1_1.instrument_id.size = 4

-- Display: Instrument Id
bmv_bmvmarketdata_product22_intra_v1_1.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
bmv_bmvmarketdata_product22_intra_v1_1.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.instrument_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product22_intra_v1_1.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Instrument Number
bmv_bmvmarketdata_product22_intra_v1_1.instrument_number = {}

-- Size: Instrument Number
bmv_bmvmarketdata_product22_intra_v1_1.instrument_number.size = 4

-- Display: Instrument Number
bmv_bmvmarketdata_product22_intra_v1_1.instrument_number.display = function(value)
  return "Instrument Number: "..value
end

-- Dissect: Instrument Number
bmv_bmvmarketdata_product22_intra_v1_1.instrument_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.instrument_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product22_intra_v1_1.instrument_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.instrument_number, range, value, display)

  return offset + length, value
end

-- Last Deal
bmv_bmvmarketdata_product22_intra_v1_1.last_deal = {}

-- Size: Last Deal
bmv_bmvmarketdata_product22_intra_v1_1.last_deal.size = 8

-- Display: Last Deal
bmv_bmvmarketdata_product22_intra_v1_1.last_deal.display = function(value)
  return "Last Deal: "..value
end

-- Translate: Last Deal
bmv_bmvmarketdata_product22_intra_v1_1.last_deal.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Deal
bmv_bmvmarketdata_product22_intra_v1_1.last_deal.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.last_deal.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product22_intra_v1_1.last_deal.translate(raw)
  local display = bmv_bmvmarketdata_product22_intra_v1_1.last_deal.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.last_deal, range, value, display)

  return offset + length, value
end

-- Length
bmv_bmvmarketdata_product22_intra_v1_1.length = {}

-- Size: Length
bmv_bmvmarketdata_product22_intra_v1_1.length.size = 2

-- Display: Length
bmv_bmvmarketdata_product22_intra_v1_1.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
bmv_bmvmarketdata_product22_intra_v1_1.length.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product22_intra_v1_1.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.length, range, value, display)

  return offset + length, value
end

-- Market
bmv_bmvmarketdata_product22_intra_v1_1.market = {}

-- Size: Market
bmv_bmvmarketdata_product22_intra_v1_1.market.size = 1

-- Display: Market
bmv_bmvmarketdata_product22_intra_v1_1.market.display = function(value)
  if value == "L" then
    return "Market: Local (L)"
  end
  if value == "G" then
    return "Market: Global (G)"
  end
  if value == "D" then
    return "Market: Local Debt (D)"
  end
  if value == "F" then
    return "Market: Global Debt (F)"
  end
  if value == "E" then
    return "Market: Money (E)"
  end
  if value == "M" then
    return "Market: Dollar Option Market (M)"
  end
  if value == "X" then
    return "Market: Stock Market (X)"
  end
  if value == "V" then
    return "Market: Forex And Rates Market (V)"
  end
  if value == "J" then
    return "Market: Fixed Income (J)"
  end
  if value == "B" then
    return "Market: Variable Income (B)"
  end
  if value == "T" then
    return "Market: Metals (T)"
  end
  if value == "I" then
    return "Market: Mutual Funds (I)"
  end
  if value == "W" then
    return "Market: Warrants (W)"
  end
  if value == " " then
    return "Market: All Markets (<whitespace>)"
  end

  return "Market: Unknown("..value..")"
end

-- Dissect: Market
bmv_bmvmarketdata_product22_intra_v1_1.market.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.market.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product22_intra_v1_1.market.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.market, range, value, display)

  return offset + length, value
end

-- Market Data Group
bmv_bmvmarketdata_product22_intra_v1_1.market_data_group = {}

-- Size: Market Data Group
bmv_bmvmarketdata_product22_intra_v1_1.market_data_group.size = 1

-- Display: Market Data Group
bmv_bmvmarketdata_product22_intra_v1_1.market_data_group.labels = {
  [1] = "Market Data Group: Indepth Local Market (1)",
  [2] = "Market Data Group: Indepth Global Market (2)",
  [3] = "Market Data Group: Twenty Price Levels Of Local Market (3)",
  [4] = "Market Data Group: Twenty Price Levels Of Global Market (4)",
  [5] = "Market Data Group: Best Offers Of Local Market (5)",
  [6] = "Market Data Group: Best Offers Of Global Market (6)",
  [7] = "Market Data Group: Ten Price Levels Of Derivative Futures (7)",
  [8] = "Market Data Group: Ten Price Levels Of Derivative Options (8)",
  [9] = "Market Data Group: Best Offers For Derivative Futures (9)",
  [10] = "Market Data Group: Best Offers For Derivative Options (10)",
  [11] = "Market Data Group: Money Market (11)",
  [12] = "Market Data Group: Indices Components (12)",
  [13] = "Market Data Group: Level Of Indices (13)",
  [14] = "Market Data Group: Levels Of Inavs (14)",
  [15] = "Market Data Group: Indepth Local And Global Market (15)",
  [16] = "Market Data Group: Twenty Price Levels Of Local And Global Market (16)",
  [17] = "Market Data Group: Best Offers Of Local And Global Market With Money Market (17)",
  [18] = "Market Data Group: Twenty Price Levels Of Local And Global Market Indices Components Level Of Indices And Levels Of Inavs (18)",
  [19] = "Market Data Group: Ten Price Levels Of Derivate Futures And Derivative Options (19)",
  [20] = "Market Data Group: Best Offers For Derivative Futures And Derivative Options (20)",
  [21] = "Market Data Group: Added Value With Benchmark (21)",
  [22] = "Market Data Group: Added Value With Capitalization Rules (22)",
  [23] = "Market Data Group: Indices Levels With Delay (23)",
  [24] = "Market Data Group: Local And Global Market With Money Market Best Positions With Delay (24)",
  [25] = "Market Data Group: Equities Market Trades Consolidated Feed (25)",
  [26] = "Market Data Group: Best Bid Of The Equities Market Consolidated Feed (26)",
  [27] = "Market Data Group: Full Depth Consolidated Feed (27)",
  [28] = "Market Data Group: Closing Price Origin (28)",
  [29] = "Market Data Group: Analytics Price And Market Depth (29)",
  [32] = "Market Data Group: Analytics Market Quality (32)",
  [33] = "Market Data Group: Analytics Spead Performance (33)",
  [34] = "Market Data Group: Analytics Negotiation (34)",
  [40] = "Market Data Group: Channel Zero Catalogs (40)",
}

bmv_bmvmarketdata_product22_intra_v1_1.market_data_group.display = function(value)
  return bmv_bmvmarketdata_product22_intra_v1_1.market_data_group.labels[value] or "Market Data Group: Unknown("..value..")"
end

-- Dissect: Market Data Group
bmv_bmvmarketdata_product22_intra_v1_1.market_data_group.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.market_data_group.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product22_intra_v1_1.market_data_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Message Length
bmv_bmvmarketdata_product22_intra_v1_1.message_length = {}

-- Size: Message Length
bmv_bmvmarketdata_product22_intra_v1_1.message_length.size = 2

-- Display: Message Length
bmv_bmvmarketdata_product22_intra_v1_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
bmv_bmvmarketdata_product22_intra_v1_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product22_intra_v1_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
bmv_bmvmarketdata_product22_intra_v1_1.message_type = {}

-- Size: Message Type
bmv_bmvmarketdata_product22_intra_v1_1.message_type.size = 1

-- Display: Message Type
bmv_bmvmarketdata_product22_intra_v1_1.message_type.display = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
bmv_bmvmarketdata_product22_intra_v1_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bmv_bmvmarketdata_product22_intra_v1_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Multiple Type
bmv_bmvmarketdata_product22_intra_v1_1.multiple_type = {}

-- Size: Multiple Type
bmv_bmvmarketdata_product22_intra_v1_1.multiple_type.size = 1

-- Display: Multiple Type
bmv_bmvmarketdata_product22_intra_v1_1.multiple_type.labels = {
  ["E"] = "Multiple Type: Multiple Of Market By Transmitter (E)",
  ["S"] = "Multiple Type: Multiple Of Market By Sector (S)",
}

bmv_bmvmarketdata_product22_intra_v1_1.multiple_type.display = function(value)
  return bmv_bmvmarketdata_product22_intra_v1_1.multiple_type.labels[value] or "Multiple Type: Unknown("..value..")"
end

-- Dissect: Multiple Type
bmv_bmvmarketdata_product22_intra_v1_1.multiple_type.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.multiple_type.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product22_intra_v1_1.multiple_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.multiple_type, range, value, display)

  return offset + length, value
end

-- P U
bmv_bmvmarketdata_product22_intra_v1_1.p_u = {}

-- Size: P U
bmv_bmvmarketdata_product22_intra_v1_1.p_u.size = 8

-- Display: P U
bmv_bmvmarketdata_product22_intra_v1_1.p_u.display = function(value)
  return "P U: "..value
end

-- Translate: P U
bmv_bmvmarketdata_product22_intra_v1_1.p_u.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: P U
bmv_bmvmarketdata_product22_intra_v1_1.p_u.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.p_u.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product22_intra_v1_1.p_u.translate(raw)
  local display = bmv_bmvmarketdata_product22_intra_v1_1.p_u.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.p_u, range, value, display)

  return offset + length, value
end

-- P Vl
bmv_bmvmarketdata_product22_intra_v1_1.p_vl = {}

-- Size: P Vl
bmv_bmvmarketdata_product22_intra_v1_1.p_vl.size = 8

-- Display: P Vl
bmv_bmvmarketdata_product22_intra_v1_1.p_vl.display = function(value)
  return "P Vl: "..value
end

-- Translate: P Vl
bmv_bmvmarketdata_product22_intra_v1_1.p_vl.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: P Vl
bmv_bmvmarketdata_product22_intra_v1_1.p_vl.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.p_vl.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product22_intra_v1_1.p_vl.translate(raw)
  local display = bmv_bmvmarketdata_product22_intra_v1_1.p_vl.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.p_vl, range, value, display)

  return offset + length, value
end

-- Pfepa Multiple
bmv_bmvmarketdata_product22_intra_v1_1.pfepa_multiple = {}

-- Size: Pfepa Multiple
bmv_bmvmarketdata_product22_intra_v1_1.pfepa_multiple.size = 8

-- Display: Pfepa Multiple
bmv_bmvmarketdata_product22_intra_v1_1.pfepa_multiple.display = function(value)
  return "Pfepa Multiple: "..value
end

-- Translate: Pfepa Multiple
bmv_bmvmarketdata_product22_intra_v1_1.pfepa_multiple.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Pfepa Multiple
bmv_bmvmarketdata_product22_intra_v1_1.pfepa_multiple.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.pfepa_multiple.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product22_intra_v1_1.pfepa_multiple.translate(raw)
  local display = bmv_bmvmarketdata_product22_intra_v1_1.pfepa_multiple.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.pfepa_multiple, range, value, display)

  return offset + length, value
end

-- Pflepa Multiple
bmv_bmvmarketdata_product22_intra_v1_1.pflepa_multiple = {}

-- Size: Pflepa Multiple
bmv_bmvmarketdata_product22_intra_v1_1.pflepa_multiple.size = 8

-- Display: Pflepa Multiple
bmv_bmvmarketdata_product22_intra_v1_1.pflepa_multiple.display = function(value)
  return "Pflepa Multiple: "..value
end

-- Translate: Pflepa Multiple
bmv_bmvmarketdata_product22_intra_v1_1.pflepa_multiple.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Pflepa Multiple
bmv_bmvmarketdata_product22_intra_v1_1.pflepa_multiple.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.pflepa_multiple.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product22_intra_v1_1.pflepa_multiple.translate(raw)
  local display = bmv_bmvmarketdata_product22_intra_v1_1.pflepa_multiple.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.pflepa_multiple, range, value, display)

  return offset + length, value
end

-- Posture Date
bmv_bmvmarketdata_product22_intra_v1_1.posture_date = {}

-- Size: Posture Date
bmv_bmvmarketdata_product22_intra_v1_1.posture_date.size = 8

-- Dissect: Posture Date
bmv_bmvmarketdata_product22_intra_v1_1.posture_date.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.posture_date.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.posture_date
  if bmv_bmvmarketdata_product22_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.posture_date_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Previous Balance
bmv_bmvmarketdata_product22_intra_v1_1.previous_balance = {}

-- Size: Previous Balance
bmv_bmvmarketdata_product22_intra_v1_1.previous_balance.size = 8

-- Display: Previous Balance
bmv_bmvmarketdata_product22_intra_v1_1.previous_balance.display = function(value)
  return "Previous Balance: "..value
end

-- Dissect: Previous Balance
bmv_bmvmarketdata_product22_intra_v1_1.previous_balance.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.previous_balance.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bmv_bmvmarketdata_product22_intra_v1_1.previous_balance.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.previous_balance, range, value, display)

  return offset + length, value
end

-- Registry Number
bmv_bmvmarketdata_product22_intra_v1_1.registry_number = {}

-- Size: Registry Number
bmv_bmvmarketdata_product22_intra_v1_1.registry_number.size = 1

-- Display: Registry Number
bmv_bmvmarketdata_product22_intra_v1_1.registry_number.display = function(value)
  return "Registry Number: "..value
end

-- Dissect: Registry Number
bmv_bmvmarketdata_product22_intra_v1_1.registry_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.registry_number.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bmv_bmvmarketdata_product22_intra_v1_1.registry_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.registry_number, range, value, display)

  return offset + length, value
end

-- Sector
bmv_bmvmarketdata_product22_intra_v1_1.sector = {}

-- Size: Sector
bmv_bmvmarketdata_product22_intra_v1_1.sector.size = 1

-- Display: Sector
bmv_bmvmarketdata_product22_intra_v1_1.sector.display = function(value)
  return "Sector: "..value
end

-- Dissect: Sector
bmv_bmvmarketdata_product22_intra_v1_1.sector.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.sector.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product22_intra_v1_1.sector.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.sector, range, value, display)

  return offset + length, value
end

-- Sell
bmv_bmvmarketdata_product22_intra_v1_1.sell = {}

-- Size: Sell
bmv_bmvmarketdata_product22_intra_v1_1.sell.size = 8

-- Display: Sell
bmv_bmvmarketdata_product22_intra_v1_1.sell.display = function(value)
  return "Sell: "..value
end

-- Translate: Sell
bmv_bmvmarketdata_product22_intra_v1_1.sell.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Sell
bmv_bmvmarketdata_product22_intra_v1_1.sell.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.sell.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product22_intra_v1_1.sell.translate(raw)
  local display = bmv_bmvmarketdata_product22_intra_v1_1.sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.sell, range, value, display)

  return offset + length, value
end

-- Sending Time
bmv_bmvmarketdata_product22_intra_v1_1.sending_time = {}

-- Size: Sending Time
bmv_bmvmarketdata_product22_intra_v1_1.sending_time.size = 8

-- Dissect: Sending Time
bmv_bmvmarketdata_product22_intra_v1_1.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.sending_time.size
  local range = buffer(offset, length)
  local value = range:int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.sending_time
  if bmv_bmvmarketdata_product22_intra_v1_1.timestamp_format == 3 then field = omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.sending_time_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Sequence Number
bmv_bmvmarketdata_product22_intra_v1_1.sequence_number = {}

-- Size: Sequence Number
bmv_bmvmarketdata_product22_intra_v1_1.sequence_number.size = 4

-- Display: Sequence Number
bmv_bmvmarketdata_product22_intra_v1_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
bmv_bmvmarketdata_product22_intra_v1_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.sequence_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product22_intra_v1_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
bmv_bmvmarketdata_product22_intra_v1_1.session = {}

-- Size: Session
bmv_bmvmarketdata_product22_intra_v1_1.session.size = 1

-- Display: Session
bmv_bmvmarketdata_product22_intra_v1_1.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
bmv_bmvmarketdata_product22_intra_v1_1.session.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.session.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product22_intra_v1_1.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.session, range, value, display)

  return offset + length, value
end

-- Sub Line
bmv_bmvmarketdata_product22_intra_v1_1.sub_line = {}

-- Size: Sub Line
bmv_bmvmarketdata_product22_intra_v1_1.sub_line.size = 1

-- Display: Sub Line
bmv_bmvmarketdata_product22_intra_v1_1.sub_line.display = function(value)
  return "Sub Line: "..value
end

-- Dissect: Sub Line
bmv_bmvmarketdata_product22_intra_v1_1.sub_line.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.sub_line.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product22_intra_v1_1.sub_line.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.sub_line, range, value, display)

  return offset + length, value
end

-- Subsector
bmv_bmvmarketdata_product22_intra_v1_1.subsector = {}

-- Size: Subsector
bmv_bmvmarketdata_product22_intra_v1_1.subsector.size = 1

-- Display: Subsector
bmv_bmvmarketdata_product22_intra_v1_1.subsector.display = function(value)
  return "Subsector: "..value
end

-- Dissect: Subsector
bmv_bmvmarketdata_product22_intra_v1_1.subsector.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.subsector.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product22_intra_v1_1.subsector.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.subsector, range, value, display)

  return offset + length, value
end

-- Total Messages
bmv_bmvmarketdata_product22_intra_v1_1.total_messages = {}

-- Size: Total Messages
bmv_bmvmarketdata_product22_intra_v1_1.total_messages.size = 1

-- Display: Total Messages
bmv_bmvmarketdata_product22_intra_v1_1.total_messages.display = function(value)
  return "Total Messages: "..value
end

-- Dissect: Total Messages
bmv_bmvmarketdata_product22_intra_v1_1.total_messages.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.total_messages.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bmv_bmvmarketdata_product22_intra_v1_1.total_messages.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.total_messages, range, value, display)

  return offset + length, value
end

-- Ve Uaiida Multiple
bmv_bmvmarketdata_product22_intra_v1_1.ve_uaiida_multiple = {}

-- Size: Ve Uaiida Multiple
bmv_bmvmarketdata_product22_intra_v1_1.ve_uaiida_multiple.size = 8

-- Display: Ve Uaiida Multiple
bmv_bmvmarketdata_product22_intra_v1_1.ve_uaiida_multiple.display = function(value)
  return "Ve Uaiida Multiple: "..value
end

-- Translate: Ve Uaiida Multiple
bmv_bmvmarketdata_product22_intra_v1_1.ve_uaiida_multiple.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Ve Uaiida Multiple
bmv_bmvmarketdata_product22_intra_v1_1.ve_uaiida_multiple.dissect = function(buffer, offset, packet, parent)
  local length = bmv_bmvmarketdata_product22_intra_v1_1.ve_uaiida_multiple.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bmv_bmvmarketdata_product22_intra_v1_1.ve_uaiida_multiple.translate(raw)
  local display = bmv_bmvmarketdata_product22_intra_v1_1.ve_uaiida_multiple.display(value, buffer, offset, packet, parent)

  parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.ve_uaiida_multiple, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Bmv BmvMarketData Product22 Intra 1.1
-----------------------------------------------------------------------

-- Capitalization Rules Message
bmv_bmvmarketdata_product22_intra_v1_1.capitalization_rules_message = {}

-- Size: Capitalization Rules Message
bmv_bmvmarketdata_product22_intra_v1_1.capitalization_rules_message.size =
  bmv_bmvmarketdata_product22_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.date_indicators.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.bursatility_indices.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.bursatility_indices_sign.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.beta_coefficient.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.beta_coefficient_sign.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.correlation_coefficient.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.correlation_coefficient_sign.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.delta_difference.size

-- Display: Capitalization Rules Message
bmv_bmvmarketdata_product22_intra_v1_1.capitalization_rules_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Capitalization Rules Message
bmv_bmvmarketdata_product22_intra_v1_1.capitalization_rules_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product22_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Date Indicators: Timestamp(1)
  index, date_indicators = bmv_bmvmarketdata_product22_intra_v1_1.date_indicators.dissect(buffer, index, packet, parent)

  -- Bursatility Indices: Price(4)
  index, bursatility_indices = bmv_bmvmarketdata_product22_intra_v1_1.bursatility_indices.dissect(buffer, index, packet, parent)

  -- Bursatility Indices Sign: ALPHA
  index, bursatility_indices_sign = bmv_bmvmarketdata_product22_intra_v1_1.bursatility_indices_sign.dissect(buffer, index, packet, parent)

  -- Beta Coefficient: Precio(8)
  index, beta_coefficient = bmv_bmvmarketdata_product22_intra_v1_1.beta_coefficient.dissect(buffer, index, packet, parent)

  -- Beta Coefficient Sign: ALPHA
  index, beta_coefficient_sign = bmv_bmvmarketdata_product22_intra_v1_1.beta_coefficient_sign.dissect(buffer, index, packet, parent)

  -- Correlation Coefficient: Precio(8)
  index, correlation_coefficient = bmv_bmvmarketdata_product22_intra_v1_1.correlation_coefficient.dissect(buffer, index, packet, parent)

  -- Correlation Coefficient Sign: ALPHA
  index, correlation_coefficient_sign = bmv_bmvmarketdata_product22_intra_v1_1.correlation_coefficient_sign.dissect(buffer, index, packet, parent)

  -- Delta Difference: Price(4)
  index, delta_difference = bmv_bmvmarketdata_product22_intra_v1_1.delta_difference.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Capitalization Rules Message
bmv_bmvmarketdata_product22_intra_v1_1.capitalization_rules_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.capitalization_rules_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product22_intra_v1_1.capitalization_rules_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product22_intra_v1_1.capitalization_rules_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product22_intra_v1_1.capitalization_rules_message.fields(buffer, offset, packet, parent)
  end
end

-- Capital Market Multiples Message
bmv_bmvmarketdata_product22_intra_v1_1.capital_market_multiples_message = {}

-- Size: Capital Market Multiples Message
bmv_bmvmarketdata_product22_intra_v1_1.capital_market_multiples_message.size =
  bmv_bmvmarketdata_product22_intra_v1_1.instrument_id.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.multiple_type.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.registry_number.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.sector.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.subsector.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.business_line.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.sub_line.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.pflepa_multiple.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.pfepa_multiple.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.ve_uaiida_multiple.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.p_u.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.p_vl.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_unoc.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_unoc.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_ue.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_ue.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.f_1_ve_uaiida.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.f_2_ve_uaiida.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_u.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_u.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_vl.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_vl.size

-- Display: Capital Market Multiples Message
bmv_bmvmarketdata_product22_intra_v1_1.capital_market_multiples_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Capital Market Multiples Message
bmv_bmvmarketdata_product22_intra_v1_1.capital_market_multiples_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: Int32
  index, instrument_id = bmv_bmvmarketdata_product22_intra_v1_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Multiple Type: ALPHA
  index, multiple_type = bmv_bmvmarketdata_product22_intra_v1_1.multiple_type.dissect(buffer, index, packet, parent)

  -- Registry Number: ALPHA
  index, registry_number = bmv_bmvmarketdata_product22_intra_v1_1.registry_number.dissect(buffer, index, packet, parent)

  -- Sector: Int8
  index, sector = bmv_bmvmarketdata_product22_intra_v1_1.sector.dissect(buffer, index, packet, parent)

  -- Subsector: Int8
  index, subsector = bmv_bmvmarketdata_product22_intra_v1_1.subsector.dissect(buffer, index, packet, parent)

  -- Business Line: Int8
  index, business_line = bmv_bmvmarketdata_product22_intra_v1_1.business_line.dissect(buffer, index, packet, parent)

  -- Sub Line: Int8
  index, sub_line = bmv_bmvmarketdata_product22_intra_v1_1.sub_line.dissect(buffer, index, packet, parent)

  -- Pflepa Multiple: Precio(8)
  index, pflepa_multiple = bmv_bmvmarketdata_product22_intra_v1_1.pflepa_multiple.dissect(buffer, index, packet, parent)

  -- Pfepa Multiple: Precio(8)
  index, pfepa_multiple = bmv_bmvmarketdata_product22_intra_v1_1.pfepa_multiple.dissect(buffer, index, packet, parent)

  -- Ve Uaiida Multiple: Precio(8)
  index, ve_uaiida_multiple = bmv_bmvmarketdata_product22_intra_v1_1.ve_uaiida_multiple.dissect(buffer, index, packet, parent)

  -- P U: Precio(8)
  index, p_u = bmv_bmvmarketdata_product22_intra_v1_1.p_u.dissect(buffer, index, packet, parent)

  -- P Vl: Precio(8)
  index, p_vl = bmv_bmvmarketdata_product22_intra_v1_1.p_vl.dissect(buffer, index, packet, parent)

  -- F 1 P Unoc: Precio(8)
  index, f_1_p_unoc = bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_unoc.dissect(buffer, index, packet, parent)

  -- F 2 P Unoc: Precio(8)
  index, f_2_p_unoc = bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_unoc.dissect(buffer, index, packet, parent)

  -- F 1 P Ue: Precio(8)
  index, f_1_p_ue = bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_ue.dissect(buffer, index, packet, parent)

  -- F 2 P Ue: Precio(8)
  index, f_2_p_ue = bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_ue.dissect(buffer, index, packet, parent)

  -- F 1 Ve Uaiida: Precio(8)
  index, f_1_ve_uaiida = bmv_bmvmarketdata_product22_intra_v1_1.f_1_ve_uaiida.dissect(buffer, index, packet, parent)

  -- F 2 Ve Uaiida: Precio(8)
  index, f_2_ve_uaiida = bmv_bmvmarketdata_product22_intra_v1_1.f_2_ve_uaiida.dissect(buffer, index, packet, parent)

  -- F 1 P U: Precio(8)
  index, f_1_p_u = bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_u.dissect(buffer, index, packet, parent)

  -- F 2 P U: Precio(8)
  index, f_2_p_u = bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_u.dissect(buffer, index, packet, parent)

  -- F 1 P Vl: Precio(8)
  index, f_1_p_vl = bmv_bmvmarketdata_product22_intra_v1_1.f_1_p_vl.dissect(buffer, index, packet, parent)

  -- F 2 P Vl: Precio(8)
  index, f_2_p_vl = bmv_bmvmarketdata_product22_intra_v1_1.f_2_p_vl.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Capital Market Multiples Message
bmv_bmvmarketdata_product22_intra_v1_1.capital_market_multiples_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.capital_market_multiples_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product22_intra_v1_1.capital_market_multiples_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product22_intra_v1_1.capital_market_multiples_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product22_intra_v1_1.capital_market_multiples_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Sales Balances Per Instrument Message
bmv_bmvmarketdata_product22_intra_v1_1.short_sales_balances_per_instrument_message = {}

-- Size: Short Sales Balances Per Instrument Message
bmv_bmvmarketdata_product22_intra_v1_1.short_sales_balances_per_instrument_message.size =
  bmv_bmvmarketdata_product22_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.date.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.previous_balance.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.amount_traded.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.buybacks.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.current_balance.size

-- Display: Short Sales Balances Per Instrument Message
bmv_bmvmarketdata_product22_intra_v1_1.short_sales_balances_per_instrument_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Sales Balances Per Instrument Message
bmv_bmvmarketdata_product22_intra_v1_1.short_sales_balances_per_instrument_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product22_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Date: Timestamp(1)
  index, date = bmv_bmvmarketdata_product22_intra_v1_1.date.dissect(buffer, index, packet, parent)

  -- Previous Balance: Int64
  index, previous_balance = bmv_bmvmarketdata_product22_intra_v1_1.previous_balance.dissect(buffer, index, packet, parent)

  -- Amount Traded: Int64
  index, amount_traded = bmv_bmvmarketdata_product22_intra_v1_1.amount_traded.dissect(buffer, index, packet, parent)

  -- Buybacks: Int64
  index, buybacks = bmv_bmvmarketdata_product22_intra_v1_1.buybacks.dissect(buffer, index, packet, parent)

  -- Current Balance: Int64
  index, current_balance = bmv_bmvmarketdata_product22_intra_v1_1.current_balance.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Sales Balances Per Instrument Message
bmv_bmvmarketdata_product22_intra_v1_1.short_sales_balances_per_instrument_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.short_sales_balances_per_instrument_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product22_intra_v1_1.short_sales_balances_per_instrument_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product22_intra_v1_1.short_sales_balances_per_instrument_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product22_intra_v1_1.short_sales_balances_per_instrument_message.fields(buffer, offset, packet, parent)
  end
end

-- Dollar Buy Sell Message
bmv_bmvmarketdata_product22_intra_v1_1.dollar_buy_sell_message = {}

-- Size: Dollar Buy Sell Message
bmv_bmvmarketdata_product22_intra_v1_1.dollar_buy_sell_message.size =
  bmv_bmvmarketdata_product22_intra_v1_1.posture_date.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.currency.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.dollar_side.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.buy.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.sell.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.last_deal.size

-- Display: Dollar Buy Sell Message
bmv_bmvmarketdata_product22_intra_v1_1.dollar_buy_sell_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dollar Buy Sell Message
bmv_bmvmarketdata_product22_intra_v1_1.dollar_buy_sell_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Posture Date: Timestamp(2)
  index, posture_date = bmv_bmvmarketdata_product22_intra_v1_1.posture_date.dissect(buffer, index, packet, parent)

  -- Currency: ALPHA
  index, currency = bmv_bmvmarketdata_product22_intra_v1_1.currency.dissect(buffer, index, packet, parent)

  -- Dollar Side: ALPHA
  index, dollar_side = bmv_bmvmarketdata_product22_intra_v1_1.dollar_side.dissect(buffer, index, packet, parent)

  -- Buy: Precio(8)
  index, buy = bmv_bmvmarketdata_product22_intra_v1_1.buy.dissect(buffer, index, packet, parent)

  -- Sell: Precio(8)
  index, sell = bmv_bmvmarketdata_product22_intra_v1_1.sell.dissect(buffer, index, packet, parent)

  -- Last Deal: Precio(8)
  index, last_deal = bmv_bmvmarketdata_product22_intra_v1_1.last_deal.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dollar Buy Sell Message
bmv_bmvmarketdata_product22_intra_v1_1.dollar_buy_sell_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.dollar_buy_sell_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product22_intra_v1_1.dollar_buy_sell_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product22_intra_v1_1.dollar_buy_sell_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product22_intra_v1_1.dollar_buy_sell_message.fields(buffer, offset, packet, parent)
  end
end

-- Events System Message
bmv_bmvmarketdata_product22_intra_v1_1.events_system_message = {}

-- Size: Events System Message
bmv_bmvmarketdata_product22_intra_v1_1.events_system_message.size =
  bmv_bmvmarketdata_product22_intra_v1_1.instrument_number.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.event_code.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.market.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.sending_time.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.ending_time.size

-- Display: Events System Message
bmv_bmvmarketdata_product22_intra_v1_1.events_system_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Events System Message
bmv_bmvmarketdata_product22_intra_v1_1.events_system_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Number: Int32
  index, instrument_number = bmv_bmvmarketdata_product22_intra_v1_1.instrument_number.dissect(buffer, index, packet, parent)

  -- Event Code: ALPHA
  index, event_code = bmv_bmvmarketdata_product22_intra_v1_1.event_code.dissect(buffer, index, packet, parent)

  -- Market: ALPHA
  index, market = bmv_bmvmarketdata_product22_intra_v1_1.market.dissect(buffer, index, packet, parent)

  -- Sending Time: Timestamp(2)
  index, sending_time = bmv_bmvmarketdata_product22_intra_v1_1.sending_time.dissect(buffer, index, packet, parent)

  -- Ending Time: Timestamp(2)
  index, ending_time = bmv_bmvmarketdata_product22_intra_v1_1.ending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Events System Message
bmv_bmvmarketdata_product22_intra_v1_1.events_system_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.events_system_message, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product22_intra_v1_1.events_system_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product22_intra_v1_1.events_system_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product22_intra_v1_1.events_system_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
bmv_bmvmarketdata_product22_intra_v1_1.payload = {}

-- Dissect: Payload
bmv_bmvmarketdata_product22_intra_v1_1.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Events System Message
  if message_type == 0x53 then
    return bmv_bmvmarketdata_product22_intra_v1_1.events_system_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Dollar Buy Sell Message
  if message_type == 0x72 then
    return bmv_bmvmarketdata_product22_intra_v1_1.dollar_buy_sell_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Sales Balances Per Instrument Message
  if message_type == 0x73 then
    return bmv_bmvmarketdata_product22_intra_v1_1.short_sales_balances_per_instrument_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Capital Market Multiples Message
  if message_type == 0x74 then
    return bmv_bmvmarketdata_product22_intra_v1_1.capital_market_multiples_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Capitalization Rules Message
  if message_type == 0x7A then
    return bmv_bmvmarketdata_product22_intra_v1_1.capitalization_rules_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
bmv_bmvmarketdata_product22_intra_v1_1.message_header = {}

-- Size: Message Header
bmv_bmvmarketdata_product22_intra_v1_1.message_header.size =
  bmv_bmvmarketdata_product22_intra_v1_1.message_length.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.message_type.size

-- Display: Message Header
bmv_bmvmarketdata_product22_intra_v1_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
bmv_bmvmarketdata_product22_intra_v1_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: Int16
  index, message_length = bmv_bmvmarketdata_product22_intra_v1_1.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: ALPHA
  index, message_type = bmv_bmvmarketdata_product22_intra_v1_1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
bmv_bmvmarketdata_product22_intra_v1_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.message_header, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product22_intra_v1_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product22_intra_v1_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product22_intra_v1_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message Block
bmv_bmvmarketdata_product22_intra_v1_1.message_block = {}

-- Display: Message Block
bmv_bmvmarketdata_product22_intra_v1_1.message_block.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Block
bmv_bmvmarketdata_product22_intra_v1_1.message_block.fields = function(buffer, offset, packet, parent, size_of_message_block, message_block_index)
  local index = offset

  -- Implicit Message Block Index
  if message_block_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.message_block_index, message_block_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = bmv_bmvmarketdata_product22_intra_v1_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 5 branches
  index = bmv_bmvmarketdata_product22_intra_v1_1.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message Block
bmv_bmvmarketdata_product22_intra_v1_1.message_block.dissect = function(buffer, offset, packet, parent, size_of_message_block, message_block_index)
  local index = offset + size_of_message_block

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.message_block, buffer(offset, 0))
    local current = bmv_bmvmarketdata_product22_intra_v1_1.message_block.fields(buffer, offset, packet, parent, size_of_message_block, message_block_index)
    parent:set_len(size_of_message_block)
    local display = bmv_bmvmarketdata_product22_intra_v1_1.message_block.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bmv_bmvmarketdata_product22_intra_v1_1.message_block.fields(buffer, offset, packet, parent, size_of_message_block, message_block_index)

    return index
  end
end

-- INTRA Multicast Header
bmv_bmvmarketdata_product22_intra_v1_1.intra_multicast_header = {}

-- Size: INTRA Multicast Header
bmv_bmvmarketdata_product22_intra_v1_1.intra_multicast_header.size =
  bmv_bmvmarketdata_product22_intra_v1_1.length.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.total_messages.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.market_data_group.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.session.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.sequence_number.size + 
  bmv_bmvmarketdata_product22_intra_v1_1.datetime.size

-- Display: INTRA Multicast Header
bmv_bmvmarketdata_product22_intra_v1_1.intra_multicast_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: INTRA Multicast Header
bmv_bmvmarketdata_product22_intra_v1_1.intra_multicast_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: Int16
  index, length = bmv_bmvmarketdata_product22_intra_v1_1.length.dissect(buffer, index, packet, parent)

  -- Total Messages: Int8
  index, total_messages = bmv_bmvmarketdata_product22_intra_v1_1.total_messages.dissect(buffer, index, packet, parent)

  -- Market Data Group: Int8
  index, market_data_group = bmv_bmvmarketdata_product22_intra_v1_1.market_data_group.dissect(buffer, index, packet, parent)

  -- Session: Int8
  index, session = bmv_bmvmarketdata_product22_intra_v1_1.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: Int32
  index, sequence_number = bmv_bmvmarketdata_product22_intra_v1_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Datetime: Timestamp(3)
  index, datetime = bmv_bmvmarketdata_product22_intra_v1_1.datetime.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: INTRA Multicast Header
bmv_bmvmarketdata_product22_intra_v1_1.intra_multicast_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1.fields.intra_multicast_header, buffer(offset, 0))
    local index = bmv_bmvmarketdata_product22_intra_v1_1.intra_multicast_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bmv_bmvmarketdata_product22_intra_v1_1.intra_multicast_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bmv_bmvmarketdata_product22_intra_v1_1.intra_multicast_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
bmv_bmvmarketdata_product22_intra_v1_1.packet = {}

-- Verify required size of Udp packet
bmv_bmvmarketdata_product22_intra_v1_1.packet.requiredsize = function(buffer)
  return buffer:len() >= bmv_bmvmarketdata_product22_intra_v1_1.intra_multicast_header.size
end

-- Dissect Packet
bmv_bmvmarketdata_product22_intra_v1_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- INTRA Multicast Header: Struct of 6 fields
  index, intra_multicast_header = bmv_bmvmarketdata_product22_intra_v1_1.intra_multicast_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message Block
  local end_of_payload = buffer:len()

  -- Message Block: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):int()

    -- Runtime Size Of: Message Block
    local size_of_message_block = message_length + 2

    -- Message Block: Struct of 2 fields
    index, message_block = bmv_bmvmarketdata_product22_intra_v1_1.message_block.dissect(buffer, index, packet, parent, size_of_message_block, message_block_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_bmv_bmvmarketdata_product22_intra_v1_1.init()
end

-- Dissector for Bmv BmvMarketData Product22 Intra 1.1
function omi_bmv_bmvmarketdata_product22_intra_v1_1.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_bmv_bmvmarketdata_product22_intra_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_bmv_bmvmarketdata_product22_intra_v1_1, buffer(), omi_bmv_bmvmarketdata_product22_intra_v1_1.description, "("..buffer:len().." Bytes)")
  return bmv_bmvmarketdata_product22_intra_v1_1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
bmv_bmvmarketdata_product22_intra_v1_1.packet.fingerprint = function(buffer)
  if buffer:len() < 20 then
    return false
  end

  local message_type = buffer(19, 1):uint()

  -- Events System Message
  if message_type == 0x53 then
    return true
  end

  -- Dollar Buy Sell Message
  if message_type == 0x72 then
    return true
  end

  -- Short Sales Balances Per Instrument Message
  if message_type == 0x73 then
    return true
  end

  -- Capital Market Multiples Message
  if message_type == 0x74 then
    return true
  end

  -- Capitalization Rules Message
  if message_type == 0x7A then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Bmv BmvMarketData Product22 Intra 1.1 (Udp)
local function omi_bmv_bmvmarketdata_product22_intra_v1_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not bmv_bmvmarketdata_product22_intra_v1_1.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not bmv_bmvmarketdata_product22_intra_v1_1.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_bmv_bmvmarketdata_product22_intra_v1_1
  omi_bmv_bmvmarketdata_product22_intra_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Bmv BmvMarketData Product22 Intra 1.1
omi_bmv_bmvmarketdata_product22_intra_v1_1:register_heuristic("udp", omi_bmv_bmvmarketdata_product22_intra_v1_1_udp_heuristic)

-- Register Bmv BmvMarketData Product22 Intra 1.1 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_bmv_bmvmarketdata_product22_intra_v1_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Bolsa Mexicana de Valores
--   Version: 1.1
--   Specification: Market Data Multicast_P22_1_ENG.pdf
--   Specification: Connection_Appendix_6.pdf
--
-- Script:
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
