-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lme LmeSelect ReferencePrices LmeSource 4.18 Protocol
local omi_lme_lmeselect_referenceprices_lmesource_v4_18 = Proto("Omi.Lme.LmeSelect.ReferencePrices.LmeSource.v4.18", "Lme LmeSelect ReferencePrices LmeSource 4.18")

-- Protocol table
local lme_lmeselect_referenceprices_lmesource_v4_18 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lme LmeSelect ReferencePrices LmeSource 4.18 Fields
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.ask = ProtoField.new("Ask", "lme.lmeselect.referenceprices.lmesource.v4.18.ask", ftypes.DOUBLE, nil, nil, nil, "A reference ask price, in implicit six decimal place format. Represents the average ask price for a reference price categorised as such.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.atm = ProtoField.new("Atm", "lme.lmeselect.referenceprices.lmesource.v4.18.atm", ftypes.UINT8, nil, nil, nil, "Identifies the ATM strike, one, or delta point, zero.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.base_currency_code = ProtoField.new("Base Currency Code", "lme.lmeselect.referenceprices.lmesource.v4.18.basecurrencycode", ftypes.STRING, nil, nil, nil, "The currency code according to ISO 4217.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.bid = ProtoField.new("Bid", "lme.lmeselect.referenceprices.lmesource.v4.18.bid", ftypes.DOUBLE, nil, nil, nil, "A reference bid price, in implicit six decimal place format. Represents the average bid price for a reference price categorised as such.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.business_date = ProtoField.new("Business Date", "lme.lmeselect.referenceprices.lmesource.v4.18.businessdate", ftypes.UINT32, nil, nil, nil, "The business date on which the price was established, as YYYYMMDD.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.call_premium = ProtoField.new("Call Premium", "lme.lmeselect.referenceprices.lmesource.v4.18.callpremium", ftypes.DOUBLE, nil, nil, nil, "Call premium, in implicit six decimal place format.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.call_volatility = ProtoField.new("Call Volatility", "lme.lmeselect.referenceprices.lmesource.v4.18.callvolatility", ftypes.DOUBLE, nil, nil, nil, "Call volatility, in implicit six decimal place format.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.contract_code = ProtoField.new("Contract Code", "lme.lmeselect.referenceprices.lmesource.v4.18.contractcode", ftypes.STRING, nil, nil, nil, "Contract code of the Option or TAPO.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.conversion_rate = ProtoField.new("Conversion Rate", "lme.lmeselect.referenceprices.lmesource.v4.18.conversionrate", ftypes.DOUBLE, nil, nil, nil, "The conversion rate between base and target currencies, in implicit six decimal place format.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.currency_code = ProtoField.new("Currency Code", "lme.lmeselect.referenceprices.lmesource.v4.18.currencycode", ftypes.STRING, nil, nil, nil, "The currency code according to ISO 4217.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.curve_prices = ProtoField.new("Curve Prices", "lme.lmeselect.referenceprices.lmesource.v4.18.curveprices", ftypes.STRING, nil, nil, nil, "One forward curve reference price and the prompt date or dates it relates to. The specification's length formula names the repeat NumPrices, a field no table of this message declares; RecordCount is the count it gives, as the number of reference prices in this message")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.delta = ProtoField.new("Delta", "lme.lmeselect.referenceprices.lmesource.v4.18.delta", ftypes.DOUBLE, nil, nil, nil, "Option delta for the volatility point, in implicit six decimal place format.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.expiry_date = ProtoField.new("Expiry Date", "lme.lmeselect.referenceprices.lmesource.v4.18.expirydate", ftypes.UINT32, nil, nil, nil, "Option expiry date, as YYYYMMDD.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.filler = ProtoField.new("Filler", "lme.lmeselect.referenceprices.lmesource.v4.18.filler", ftypes.STRING, nil, nil, nil, "Filler aligning the sequence number to a four byte boundary")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.fx_rate_category = ProtoField.new("Fx Rate Category", "lme.lmeselect.referenceprices.lmesource.v4.18.fxratecategory", ftypes.STRING, nil, nil, nil, "FX rate category. The specification names this field Category; it is qualified here because the Reference Price message gives a Category of its own carrying a different set of values.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.fx_rate_type = ProtoField.new("Fx Rate Type", "lme.lmeselect.referenceprices.lmesource.v4.18.fxratetype", ftypes.STRING, nil, nil, nil, "FX rate type. The specification names this field Type; it is qualified here because the Open Interest and Warrant Band messages give a Type of their own carrying different sets of values.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.instrument_id = ProtoField.new("Instrument Id", "lme.lmeselect.referenceprices.lmesource.v4.18.instrumentid", ftypes.UINT64, nil, nil, nil, "Unique Instrument Identifier. Null for PriceType Index.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.maturity_date = ProtoField.new("Maturity Date", "lme.lmeselect.referenceprices.lmesource.v4.18.maturitydate", ftypes.UINT32, nil, nil, nil, "The business date to which the rate applies, as YYYYMMDD.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.msg_count = ProtoField.new("Msg Count", "lme.lmeselect.referenceprices.lmesource.v4.18.msgcount", ftypes.UINT8, nil, nil, nil, "Number of messages included in the packet")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.msg_size = ProtoField.new("Msg Size", "lme.lmeselect.referenceprices.lmesource.v4.18.msgsize", ftypes.UINT16, nil, nil, nil, "Message length, including this field")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.msg_type = ProtoField.new("Msg Type", "lme.lmeselect.referenceprices.lmesource.v4.18.msgtype", ftypes.UINT16, nil, nil, nil, "Type of message, selecting the payload that follows the message header")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.new_seq_no = ProtoField.new("New Seq No", "lme.lmeselect.referenceprices.lmesource.v4.18.newseqno", ftypes.UINT32, nil, nil, nil, "New sequence number. Always set to 1.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.pkt_size = ProtoField.new("Pkt Size", "lme.lmeselect.referenceprices.lmesource.v4.18.pktsize", ftypes.UINT16, nil, nil, nil, "Size of the packet, including this field")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.price = ProtoField.new("Price", "lme.lmeselect.referenceprices.lmesource.v4.18.price", ftypes.DOUBLE, nil, nil, nil, "A reference price, in implicit six decimal place format. For an Average represents the mean of bid ask averages.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.price_status = ProtoField.new("Price Status", "lme.lmeselect.referenceprices.lmesource.v4.18.pricestatus", ftypes.STRING, nil, nil, nil, "The status of reference price.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.product_code = ProtoField.new("Product Code", "lme.lmeselect.referenceprices.lmesource.v4.18.productcode", ftypes.STRING, nil, nil, nil, "The product code. This identifies the metal for the instrument.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.prompt_date_1 = ProtoField.new("Prompt Date 1", "lme.lmeselect.referenceprices.lmesource.v4.18.promptdate1", ftypes.UINT32, nil, nil, nil, "The date to which the price relates, as YYYYMMDD. For a spread this is the first leg.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.prompt_date_2 = ProtoField.new("Prompt Date 2", "lme.lmeselect.referenceprices.lmesource.v4.18.promptdate2", ftypes.UINT32, nil, nil, nil, "The date to which the price relates, as YYYYMMDD. For a spread this is the second leg. Null if not applicable.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.prompt_date_label_1 = ProtoField.new("Prompt Date Label 1", "lme.lmeselect.referenceprices.lmesource.v4.18.promptdatelabel1", ftypes.STRING, nil, nil, nil, "The label representing date1. Not applicable for all dates.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.prompt_date_label_2 = ProtoField.new("Prompt Date Label 2", "lme.lmeselect.referenceprices.lmesource.v4.18.promptdatelabel2", ftypes.STRING, nil, nil, nil, "The label representing date2. For a spread the date label associated with the second leg, if there is one. Not applicable for all dates.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.put_premium = ProtoField.new("Put Premium", "lme.lmeselect.referenceprices.lmesource.v4.18.putpremium", ftypes.DOUBLE, nil, nil, nil, "Put premium, in implicit six decimal place format.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.put_volatility = ProtoField.new("Put Volatility", "lme.lmeselect.referenceprices.lmesource.v4.18.putvolatility", ftypes.DOUBLE, nil, nil, nil, "Put volatility, in implicit six decimal place format.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.record_count = ProtoField.new("Record Count", "lme.lmeselect.referenceprices.lmesource.v4.18.recordcount", ftypes.UINT16, nil, nil, nil, "The number of reference prices in this message.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.reference_price_category = ProtoField.new("Reference Price Category", "lme.lmeselect.referenceprices.lmesource.v4.18.referencepricecategory", ftypes.STRING, nil, nil, nil, "Category of the reference price. The specification names this field Category; it is qualified here because the Reference FX Rate message gives a Category of its own carrying a different set of values.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.reference_price_type = ProtoField.new("Reference Price Type", "lme.lmeselect.referenceprices.lmesource.v4.18.referencepricetype", ftypes.STRING, nil, nil, nil, "Reference price type. The specification names this field PriceType; it is qualified here because the Contract Definition message gives a PriceType of its own carrying a different set of values.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.remaining_records = ProtoField.new("Remaining Records", "lme.lmeselect.referenceprices.lmesource.v4.18.remainingrecords", ftypes.UINT16, nil, nil, nil, "Number of remaining prices to be published for a product. When the value of RemainingRecords equals RecordCount this is the last message for the product.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.send_time = ProtoField.new("Send Time", "lme.lmeselect.referenceprices.lmesource.v4.18.sendtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "UTC timestamp for the time this packet was sent, in nanoseconds since epoch, provided to the nearest microsecond")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.send_time_utc = ProtoField.new("Send Time", "lme.lmeselect.referenceprices.lmesource.v4.18.sendtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "UTC timestamp for the time this packet was sent, in nanoseconds since epoch, provided to the nearest microsecond")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.seq_num = ProtoField.new("Seq Num", "lme.lmeselect.referenceprices.lmesource.v4.18.seqnum", ftypes.UINT32, nil, nil, nil, "Sequence number of the first message in the packet")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.strike_price = ProtoField.new("Strike Price", "lme.lmeselect.referenceprices.lmesource.v4.18.strikeprice", ftypes.DOUBLE, nil, nil, nil, "Strike price for the volatility point, in implicit six decimal place format.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.surface_domain = ProtoField.new("Surface Domain", "lme.lmeselect.referenceprices.lmesource.v4.18.surfacedomain", ftypes.STRING, nil, nil, nil, "Indicates whether the reference volatility was created in Delta or Strike space.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.target_currency_code = ProtoField.new("Target Currency Code", "lme.lmeselect.referenceprices.lmesource.v4.18.targetcurrencycode", ftypes.STRING, nil, nil, nil, "The currency code according to ISO 4217.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.time_of_event = ProtoField.new("Time Of Event", "lme.lmeselect.referenceprices.lmesource.v4.18.timeofevent", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The time at which the price was established.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.time_of_event_utc = ProtoField.new("Time Of Event", "lme.lmeselect.referenceprices.lmesource.v4.18.timeofevent.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The time at which the price was established.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.volatility_points = ProtoField.new("Volatility Points", "lme.lmeselect.referenceprices.lmesource.v4.18.volatilitypoints", ftypes.STRING, nil, nil, nil, "One point of the reference volatility curve. The specification's length formula names the repeat NumVolatilityRecords, a field no table of this message declares; RecordCount is the count it gives, as the number of reference volatility points in this message")

-- Lme LmeSelect ReferencePrices LmeSource 4.18 Framing
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.message = ProtoField.new("Message", "lme.lmeselect.referenceprices.lmesource.v4.18.message", ftypes.STRING, nil, nil, nil, "LMEsource application messages carried by this packet; a message is never fragmented across packets")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.message_header = ProtoField.new("Message Header", "lme.lmeselect.referenceprices.lmesource.v4.18.messageheader", ftypes.STRING, nil, nil, nil, "LMEsource message header, giving the size of the message and its type")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.packet = ProtoField.new("Packet", "lme.lmeselect.referenceprices.lmesource.v4.18.packet", ftypes.STRING, nil, nil, nil, "LMEsource multicast packet, a packet header followed by Msg Count complete messages")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.packet_header = ProtoField.new("Packet Header", "lme.lmeselect.referenceprices.lmesource.v4.18.packetheader", ftypes.STRING, nil, nil, nil, "LMEsource packet header, giving the packet size, the number of messages it carries, the sequence number of the first of them and the time the packet was sent")

-- Lme LmeSelect ReferencePrices 4.18 Application Messages
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.reference_forward_curve_price_message = ProtoField.new("Reference Forward Curve Price Message", "lme.lmeselect.referenceprices.lmesource.v4.18.referenceforwardcurvepricemessage", ftypes.STRING, nil, nil, nil, "Indicative and closing prices for Carries and indicative prices for the Aluminium Premiums.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.reference_fx_rate_message = ProtoField.new("Reference Fx Rate Message", "lme.lmeselect.referenceprices.lmesource.v4.18.referencefxratemessage", ftypes.STRING, nil, nil, nil, "Exchange FX rates are published for the Cash prompt. Daily and Monthly Moving Average Exchange FX rates are published each day, with the Monthly Average Exchange FX rate published on the last business day of the month. MonthlyMovingAverage and MonthlyAverage are published only for the Exchange category.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.reference_price_message = ProtoField.new("Reference Price Message", "lme.lmeselect.referenceprices.lmesource.v4.18.referencepricemessage", ftypes.STRING, nil, nil, nil, "Reference prices are published for instruments with an InstrumentID for the Official, Settlement, Closing and Index price types. Instruments are published in the Instrument Definition message.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.reference_volatility_price_message = ProtoField.new("Reference Volatility Price Message", "lme.lmeselect.referenceprices.lmesource.v4.18.referencevolatilitypricemessage", ftypes.STRING, nil, nil, nil, "Provides raw strikes. LME volatilities are quoted in Delta space, and the strikes for which LME provide volatilities correspond to plus or minus 5, 10 and 25, the 50 delta, the at the money strike and the tradable strikes for the instrument. The calculated Call Premium and Put Premium are provided for each volatility and strike price for both Traded Options and TAPOs.")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.sequence_reset_message = ProtoField.new("Sequence Reset Message", "lme.lmeselect.referenceprices.lmesource.v4.18.sequenceresetmessage", ftypes.STRING, nil, nil, nil, "Sent on each multicast channel at start of day, and intraday in case of a disaster recovery. The client must ignore the sequence number of the Sequence Reset message itself and set the next expected sequence number to NewSeqNo, clear all cached data for all instruments and subscribe to the refresh channels to receive the current state of the market.")

-- Lme LmeSelect ReferencePrices LmeSource 4.18 Generated Fields
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.curve_prices_index = ProtoField.new("Curve Prices Index", "lme.lmeselect.referenceprices.lmesource.v4.18.curvepricesindex", ftypes.UINT16)
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.message_index = ProtoField.new("Message Index", "lme.lmeselect.referenceprices.lmesource.v4.18.messageindex", ftypes.UINT16)
omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.volatility_points_index = ProtoField.new("Volatility Points Index", "lme.lmeselect.referenceprices.lmesource.v4.18.volatilitypointsindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Lme LmeSelect ReferencePrices LmeSource 4.18 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
lme_lmeselect_referenceprices_lmesource_v4_18.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Lme LmeSelect ReferencePrices LmeSource 4.18 Element Dissection Options
show.repeating_groups = true
show.structs = true
show.headers = true
show.application_messages = true
show.indexes = true

-- Register Lme LmeSelect ReferencePrices LmeSource 4.18 Show Options
omi_lme_lmeselect_referenceprices_lmesource_v4_18.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_lme_lmeselect_referenceprices_lmesource_v4_18.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_lme_lmeselect_referenceprices_lmesource_v4_18.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_lme_lmeselect_referenceprices_lmesource_v4_18.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_lme_lmeselect_referenceprices_lmesource_v4_18.prefs.show_application_messages then
    show.application_messages = omi_lme_lmeselect_referenceprices_lmesource_v4_18.prefs.show_application_messages
  end
  if show.headers ~= omi_lme_lmeselect_referenceprices_lmesource_v4_18.prefs.show_headers then
    show.headers = omi_lme_lmeselect_referenceprices_lmesource_v4_18.prefs.show_headers
  end
  if show.repeating_groups ~= omi_lme_lmeselect_referenceprices_lmesource_v4_18.prefs.show_repeating_groups then
    show.repeating_groups = omi_lme_lmeselect_referenceprices_lmesource_v4_18.prefs.show_repeating_groups
  end
  if show.structs ~= omi_lme_lmeselect_referenceprices_lmesource_v4_18.prefs.show_structs then
    show.structs = omi_lme_lmeselect_referenceprices_lmesource_v4_18.prefs.show_structs
  end
  if show.indexes ~= omi_lme_lmeselect_referenceprices_lmesource_v4_18.prefs.show_indexes then
    show.indexes = omi_lme_lmeselect_referenceprices_lmesource_v4_18.prefs.show_indexes
  end
  if lme_lmeselect_referenceprices_lmesource_v4_18.absolute_time_base ~= omi_lme_lmeselect_referenceprices_lmesource_v4_18.prefs.absolute_time_base then
    lme_lmeselect_referenceprices_lmesource_v4_18.absolute_time_base = omi_lme_lmeselect_referenceprices_lmesource_v4_18.prefs.absolute_time_base
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
-- Lme LmeSelect ReferencePrices LmeSource 4.18 Fields
-----------------------------------------------------------------------

-- Ask
lme_lmeselect_referenceprices_lmesource_v4_18.ask = {}

-- Size: Ask
lme_lmeselect_referenceprices_lmesource_v4_18.ask.size = 8

-- Display: Ask
lme_lmeselect_referenceprices_lmesource_v4_18.ask.display = function(value)
  return "Ask: "..value
end

-- Translate: Ask
lme_lmeselect_referenceprices_lmesource_v4_18.ask.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Ask
lme_lmeselect_referenceprices_lmesource_v4_18.ask.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.ask.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_referenceprices_lmesource_v4_18.ask.translate(raw)
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.ask, range, value, display)

  return offset + length, value
end

-- Atm
lme_lmeselect_referenceprices_lmesource_v4_18.atm = {}

-- Size: Atm
lme_lmeselect_referenceprices_lmesource_v4_18.atm.size = 1

-- Display: Atm
lme_lmeselect_referenceprices_lmesource_v4_18.atm.labels = {
  [0] = "Atm: Delta Point (0)",
  [1] = "Atm: Atm Strike (1)",
}

lme_lmeselect_referenceprices_lmesource_v4_18.atm.display = function(value)
  return lme_lmeselect_referenceprices_lmesource_v4_18.atm.labels[value] or "Atm: Unknown("..value..")"
end

-- Dissect: Atm
lme_lmeselect_referenceprices_lmesource_v4_18.atm.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.atm.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.atm.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.atm, range, value, display)

  return offset + length, value
end

-- Base Currency Code
lme_lmeselect_referenceprices_lmesource_v4_18.base_currency_code = {}

-- Size: Base Currency Code
lme_lmeselect_referenceprices_lmesource_v4_18.base_currency_code.size = 3

-- Display: Base Currency Code
lme_lmeselect_referenceprices_lmesource_v4_18.base_currency_code.display = function(value)
  return "Base Currency Code: "..value
end

-- Dissect: Base Currency Code
lme_lmeselect_referenceprices_lmesource_v4_18.base_currency_code.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.base_currency_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.base_currency_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.base_currency_code, range, value, display)

  return offset + length, value
end

-- Bid
lme_lmeselect_referenceprices_lmesource_v4_18.bid = {}

-- Size: Bid
lme_lmeselect_referenceprices_lmesource_v4_18.bid.size = 8

-- Display: Bid
lme_lmeselect_referenceprices_lmesource_v4_18.bid.display = function(value)
  return "Bid: "..value
end

-- Translate: Bid
lme_lmeselect_referenceprices_lmesource_v4_18.bid.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid
lme_lmeselect_referenceprices_lmesource_v4_18.bid.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.bid.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_referenceprices_lmesource_v4_18.bid.translate(raw)
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.bid, range, value, display)

  return offset + length, value
end

-- Business Date
lme_lmeselect_referenceprices_lmesource_v4_18.business_date = {}

-- Size: Business Date
lme_lmeselect_referenceprices_lmesource_v4_18.business_date.size = 4

-- Display: Business Date
lme_lmeselect_referenceprices_lmesource_v4_18.business_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Business Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Business Date
lme_lmeselect_referenceprices_lmesource_v4_18.business_date.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.business_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.business_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.business_date, range, value, display)

  return offset + length, value
end

-- Call Premium
lme_lmeselect_referenceprices_lmesource_v4_18.call_premium = {}

-- Size: Call Premium
lme_lmeselect_referenceprices_lmesource_v4_18.call_premium.size = 8

-- Display: Call Premium
lme_lmeselect_referenceprices_lmesource_v4_18.call_premium.display = function(value)
  return "Call Premium: "..value
end

-- Translate: Call Premium
lme_lmeselect_referenceprices_lmesource_v4_18.call_premium.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Call Premium
lme_lmeselect_referenceprices_lmesource_v4_18.call_premium.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.call_premium.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_referenceprices_lmesource_v4_18.call_premium.translate(raw)
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.call_premium.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.call_premium, range, value, display)

  return offset + length, value
end

-- Call Volatility
lme_lmeselect_referenceprices_lmesource_v4_18.call_volatility = {}

-- Size: Call Volatility
lme_lmeselect_referenceprices_lmesource_v4_18.call_volatility.size = 8

-- Display: Call Volatility
lme_lmeselect_referenceprices_lmesource_v4_18.call_volatility.display = function(value)
  return "Call Volatility: "..value
end

-- Translate: Call Volatility
lme_lmeselect_referenceprices_lmesource_v4_18.call_volatility.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Call Volatility
lme_lmeselect_referenceprices_lmesource_v4_18.call_volatility.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.call_volatility.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_referenceprices_lmesource_v4_18.call_volatility.translate(raw)
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.call_volatility.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.call_volatility, range, value, display)

  return offset + length, value
end

-- Contract Code
lme_lmeselect_referenceprices_lmesource_v4_18.contract_code = {}

-- Size: Contract Code
lme_lmeselect_referenceprices_lmesource_v4_18.contract_code.size = 12

-- Display: Contract Code
lme_lmeselect_referenceprices_lmesource_v4_18.contract_code.display = function(value)
  return "Contract Code: "..value
end

-- Dissect: Contract Code
lme_lmeselect_referenceprices_lmesource_v4_18.contract_code.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.contract_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.contract_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.contract_code, range, value, display)

  return offset + length, value
end

-- Conversion Rate
lme_lmeselect_referenceprices_lmesource_v4_18.conversion_rate = {}

-- Size: Conversion Rate
lme_lmeselect_referenceprices_lmesource_v4_18.conversion_rate.size = 8

-- Display: Conversion Rate
lme_lmeselect_referenceprices_lmesource_v4_18.conversion_rate.display = function(value)
  return "Conversion Rate: "..value
end

-- Translate: Conversion Rate
lme_lmeselect_referenceprices_lmesource_v4_18.conversion_rate.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Conversion Rate
lme_lmeselect_referenceprices_lmesource_v4_18.conversion_rate.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.conversion_rate.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_referenceprices_lmesource_v4_18.conversion_rate.translate(raw)
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.conversion_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.conversion_rate, range, value, display)

  return offset + length, value
end

-- Currency Code
lme_lmeselect_referenceprices_lmesource_v4_18.currency_code = {}

-- Size: Currency Code
lme_lmeselect_referenceprices_lmesource_v4_18.currency_code.size = 3

-- Display: Currency Code
lme_lmeselect_referenceprices_lmesource_v4_18.currency_code.display = function(value)
  return "Currency Code: "..value
end

-- Dissect: Currency Code
lme_lmeselect_referenceprices_lmesource_v4_18.currency_code.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.currency_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.currency_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.currency_code, range, value, display)

  return offset + length, value
end

-- Delta
lme_lmeselect_referenceprices_lmesource_v4_18.delta = {}

-- Size: Delta
lme_lmeselect_referenceprices_lmesource_v4_18.delta.size = 8

-- Display: Delta
lme_lmeselect_referenceprices_lmesource_v4_18.delta.display = function(value)
  return "Delta: "..value
end

-- Translate: Delta
lme_lmeselect_referenceprices_lmesource_v4_18.delta.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Delta
lme_lmeselect_referenceprices_lmesource_v4_18.delta.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.delta.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_referenceprices_lmesource_v4_18.delta.translate(raw)
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.delta, range, value, display)

  return offset + length, value
end

-- Expiry Date
lme_lmeselect_referenceprices_lmesource_v4_18.expiry_date = {}

-- Size: Expiry Date
lme_lmeselect_referenceprices_lmesource_v4_18.expiry_date.size = 4

-- Display: Expiry Date
lme_lmeselect_referenceprices_lmesource_v4_18.expiry_date.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Expiry Date: No Value"
  end

  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Expiry Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Expiry Date
lme_lmeselect_referenceprices_lmesource_v4_18.expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.expiry_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.expiry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.expiry_date, range, value, display)

  return offset + length, value
end

-- Filler
lme_lmeselect_referenceprices_lmesource_v4_18.filler = {}

-- Size: Filler
lme_lmeselect_referenceprices_lmesource_v4_18.filler.size = 1

-- Display: Filler
lme_lmeselect_referenceprices_lmesource_v4_18.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
lme_lmeselect_referenceprices_lmesource_v4_18.filler.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.filler.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.filler, range, value, display)

  return offset + length, value
end

-- Fx Rate Category
lme_lmeselect_referenceprices_lmesource_v4_18.fx_rate_category = {}

-- Size: Fx Rate Category
lme_lmeselect_referenceprices_lmesource_v4_18.fx_rate_category.size = 1

-- Display: Fx Rate Category
lme_lmeselect_referenceprices_lmesource_v4_18.fx_rate_category.labels = {
  ["E"] = "Fx Rate Category: Exchange (E)",
  ["C"] = "Fx Rate Category: Closing (C)",
}

lme_lmeselect_referenceprices_lmesource_v4_18.fx_rate_category.display = function(value)
  return lme_lmeselect_referenceprices_lmesource_v4_18.fx_rate_category.labels[value] or "Fx Rate Category: Unknown("..value..")"
end

-- Dissect: Fx Rate Category
lme_lmeselect_referenceprices_lmesource_v4_18.fx_rate_category.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.fx_rate_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.fx_rate_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.fx_rate_category, range, value, display)

  return offset + length, value
end

-- Fx Rate Type
lme_lmeselect_referenceprices_lmesource_v4_18.fx_rate_type = {}

-- Size: Fx Rate Type
lme_lmeselect_referenceprices_lmesource_v4_18.fx_rate_type.size = 2

-- Display: Fx Rate Type
lme_lmeselect_referenceprices_lmesource_v4_18.fx_rate_type.labels = {
  ["DY"] = "Fx Rate Type: Daily (DY)",
  ["MM"] = "Fx Rate Type: Monthly Moving Average (MM)",
  ["MA"] = "Fx Rate Type: Monthly Average (MA)",
}

lme_lmeselect_referenceprices_lmesource_v4_18.fx_rate_type.display = function(value)
  return lme_lmeselect_referenceprices_lmesource_v4_18.fx_rate_type.labels[value] or "Fx Rate Type: Unknown("..value..")"
end

-- Dissect: Fx Rate Type
lme_lmeselect_referenceprices_lmesource_v4_18.fx_rate_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.fx_rate_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.fx_rate_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.fx_rate_type, range, value, display)

  return offset + length, value
end

-- Instrument Id
lme_lmeselect_referenceprices_lmesource_v4_18.instrument_id = {}

-- Size: Instrument Id
lme_lmeselect_referenceprices_lmesource_v4_18.instrument_id.size = 8

-- Display: Instrument Id
lme_lmeselect_referenceprices_lmesource_v4_18.instrument_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Instrument Id: No Value"
  end

  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
lme_lmeselect_referenceprices_lmesource_v4_18.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Maturity Date
lme_lmeselect_referenceprices_lmesource_v4_18.maturity_date = {}

-- Size: Maturity Date
lme_lmeselect_referenceprices_lmesource_v4_18.maturity_date.size = 4

-- Display: Maturity Date
lme_lmeselect_referenceprices_lmesource_v4_18.maturity_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Maturity Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Maturity Date
lme_lmeselect_referenceprices_lmesource_v4_18.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.maturity_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Msg Count
lme_lmeselect_referenceprices_lmesource_v4_18.msg_count = {}

-- Size: Msg Count
lme_lmeselect_referenceprices_lmesource_v4_18.msg_count.size = 1

-- Display: Msg Count
lme_lmeselect_referenceprices_lmesource_v4_18.msg_count.display = function(value)
  return "Msg Count: "..value
end

-- Dissect: Msg Count
lme_lmeselect_referenceprices_lmesource_v4_18.msg_count.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.msg_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.msg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.msg_count, range, value, display)

  return offset + length, value
end

-- Msg Size
lme_lmeselect_referenceprices_lmesource_v4_18.msg_size = {}

-- Size: Msg Size
lme_lmeselect_referenceprices_lmesource_v4_18.msg_size.size = 2

-- Display: Msg Size
lme_lmeselect_referenceprices_lmesource_v4_18.msg_size.display = function(value)
  return "Msg Size: "..value
end

-- Dissect: Msg Size
lme_lmeselect_referenceprices_lmesource_v4_18.msg_size.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.msg_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.msg_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.msg_size, range, value, display)

  return offset + length, value
end

-- Msg Type
lme_lmeselect_referenceprices_lmesource_v4_18.msg_type = {}

-- Size: Msg Type
lme_lmeselect_referenceprices_lmesource_v4_18.msg_type.size = 2

-- Display: Msg Type
lme_lmeselect_referenceprices_lmesource_v4_18.msg_type.labels = {
  [100] = "Msg Type: Sequence Reset Message (100)",
  [401] = "Msg Type: Reference Price Message (401)",
  [402] = "Msg Type: Reference Forward Curve Price Message (402)",
  [403] = "Msg Type: Reference Fx Rate Message (403)",
  [404] = "Msg Type: Reference Volatility Price Message (404)",
}

lme_lmeselect_referenceprices_lmesource_v4_18.msg_type.display = function(value)
  return lme_lmeselect_referenceprices_lmesource_v4_18.msg_type.labels[value] or "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
lme_lmeselect_referenceprices_lmesource_v4_18.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.msg_type, range, value, display)

  return offset + length, value
end

-- New Seq No
lme_lmeselect_referenceprices_lmesource_v4_18.new_seq_no = {}

-- Size: New Seq No
lme_lmeselect_referenceprices_lmesource_v4_18.new_seq_no.size = 4

-- Display: New Seq No
lme_lmeselect_referenceprices_lmesource_v4_18.new_seq_no.display = function(value)
  return "New Seq No: "..value
end

-- Dissect: New Seq No
lme_lmeselect_referenceprices_lmesource_v4_18.new_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.new_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.new_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.new_seq_no, range, value, display)

  return offset + length, value
end

-- Pkt Size
lme_lmeselect_referenceprices_lmesource_v4_18.pkt_size = {}

-- Size: Pkt Size
lme_lmeselect_referenceprices_lmesource_v4_18.pkt_size.size = 2

-- Display: Pkt Size
lme_lmeselect_referenceprices_lmesource_v4_18.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
lme_lmeselect_referenceprices_lmesource_v4_18.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Price
lme_lmeselect_referenceprices_lmesource_v4_18.price = {}

-- Size: Price
lme_lmeselect_referenceprices_lmesource_v4_18.price.size = 8

-- Display: Price
lme_lmeselect_referenceprices_lmesource_v4_18.price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Translate: Price
lme_lmeselect_referenceprices_lmesource_v4_18.price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Price
lme_lmeselect_referenceprices_lmesource_v4_18.price.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_referenceprices_lmesource_v4_18.price.translate(raw)
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.price, range, value, display)

  return offset + length, value
end

-- Price Status
lme_lmeselect_referenceprices_lmesource_v4_18.price_status = {}

-- Size: Price Status
lme_lmeselect_referenceprices_lmesource_v4_18.price_status.size = 12

-- Display: Price Status
lme_lmeselect_referenceprices_lmesource_v4_18.price_status.labels = {
  ["Indicative"] = "Price Status: Indicative (Indicative)",
  ["Provisional"] = "Price Status: Provisional (Provisional)",
  ["Final"] = "Price Status: Final (Final)",
  ["ReFinalised"] = "Price Status: Re Finalised (ReFinalised)",
}

lme_lmeselect_referenceprices_lmesource_v4_18.price_status.display = function(value)
  return lme_lmeselect_referenceprices_lmesource_v4_18.price_status.labels[value] or "Price Status: Unknown("..value..")"
end

-- Dissect: Price Status
lme_lmeselect_referenceprices_lmesource_v4_18.price_status.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.price_status.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.price_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.price_status, range, value, display)

  return offset + length, value
end

-- Product Code
lme_lmeselect_referenceprices_lmesource_v4_18.product_code = {}

-- Size: Product Code
lme_lmeselect_referenceprices_lmesource_v4_18.product_code.size = 2

-- Display: Product Code
lme_lmeselect_referenceprices_lmesource_v4_18.product_code.display = function(value)
  return "Product Code: "..value
end

-- Dissect: Product Code
lme_lmeselect_referenceprices_lmesource_v4_18.product_code.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.product_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.product_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.product_code, range, value, display)

  return offset + length, value
end

-- Prompt Date 1
lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_1 = {}

-- Size: Prompt Date 1
lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_1.size = 4

-- Display: Prompt Date 1
lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_1.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Prompt Date 1: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Prompt Date 1
lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_1.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.prompt_date_1, range, value, display)

  return offset + length, value
end

-- Prompt Date 2
lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_2 = {}

-- Size: Prompt Date 2
lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_2.size = 4

-- Display: Prompt Date 2
lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_2.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Prompt Date 2: No Value"
  end

  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Prompt Date 2: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Prompt Date 2
lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_2.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.prompt_date_2, range, value, display)

  return offset + length, value
end

-- Prompt Date Label 1
lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_label_1 = {}

-- Size: Prompt Date Label 1
lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_label_1.size = 6

-- Display: Prompt Date Label 1
lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_label_1.display = function(value)
  return "Prompt Date Label 1: "..value
end

-- Dissect: Prompt Date Label 1
lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_label_1.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_label_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_label_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.prompt_date_label_1, range, value, display)

  return offset + length, value
end

-- Prompt Date Label 2
lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_label_2 = {}

-- Size: Prompt Date Label 2
lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_label_2.size = 6

-- Display: Prompt Date Label 2
lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_label_2.display = function(value)
  return "Prompt Date Label 2: "..value
end

-- Dissect: Prompt Date Label 2
lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_label_2.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_label_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_label_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.prompt_date_label_2, range, value, display)

  return offset + length, value
end

-- Put Premium
lme_lmeselect_referenceprices_lmesource_v4_18.put_premium = {}

-- Size: Put Premium
lme_lmeselect_referenceprices_lmesource_v4_18.put_premium.size = 8

-- Display: Put Premium
lme_lmeselect_referenceprices_lmesource_v4_18.put_premium.display = function(value)
  return "Put Premium: "..value
end

-- Translate: Put Premium
lme_lmeselect_referenceprices_lmesource_v4_18.put_premium.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Put Premium
lme_lmeselect_referenceprices_lmesource_v4_18.put_premium.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.put_premium.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_referenceprices_lmesource_v4_18.put_premium.translate(raw)
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.put_premium.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.put_premium, range, value, display)

  return offset + length, value
end

-- Put Volatility
lme_lmeselect_referenceprices_lmesource_v4_18.put_volatility = {}

-- Size: Put Volatility
lme_lmeselect_referenceprices_lmesource_v4_18.put_volatility.size = 8

-- Display: Put Volatility
lme_lmeselect_referenceprices_lmesource_v4_18.put_volatility.display = function(value)
  return "Put Volatility: "..value
end

-- Translate: Put Volatility
lme_lmeselect_referenceprices_lmesource_v4_18.put_volatility.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Put Volatility
lme_lmeselect_referenceprices_lmesource_v4_18.put_volatility.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.put_volatility.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_referenceprices_lmesource_v4_18.put_volatility.translate(raw)
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.put_volatility.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.put_volatility, range, value, display)

  return offset + length, value
end

-- Record Count
lme_lmeselect_referenceprices_lmesource_v4_18.record_count = {}

-- Size: Record Count
lme_lmeselect_referenceprices_lmesource_v4_18.record_count.size = 2

-- Display: Record Count
lme_lmeselect_referenceprices_lmesource_v4_18.record_count.display = function(value)
  return "Record Count: "..value
end

-- Dissect: Record Count
lme_lmeselect_referenceprices_lmesource_v4_18.record_count.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.record_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.record_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.record_count, range, value, display)

  return offset + length, value
end

-- Reference Price Category
lme_lmeselect_referenceprices_lmesource_v4_18.reference_price_category = {}

-- Size: Reference Price Category
lme_lmeselect_referenceprices_lmesource_v4_18.reference_price_category.size = 1

-- Display: Reference Price Category
lme_lmeselect_referenceprices_lmesource_v4_18.reference_price_category.labels = {
  ["I"] = "Reference Price Category: Instrument (I)",
  ["P"] = "Reference Price Category: Product (P)",
}

lme_lmeselect_referenceprices_lmesource_v4_18.reference_price_category.display = function(value)
  return lme_lmeselect_referenceprices_lmesource_v4_18.reference_price_category.labels[value] or "Reference Price Category: Unknown("..value..")"
end

-- Dissect: Reference Price Category
lme_lmeselect_referenceprices_lmesource_v4_18.reference_price_category.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.reference_price_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.reference_price_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.reference_price_category, range, value, display)

  return offset + length, value
end

-- Reference Price Type
lme_lmeselect_referenceprices_lmesource_v4_18.reference_price_type = {}

-- Size: Reference Price Type
lme_lmeselect_referenceprices_lmesource_v4_18.reference_price_type.size = 32

-- Display: Reference Price Type
lme_lmeselect_referenceprices_lmesource_v4_18.reference_price_type.labels = {
  ["Official"] = "Reference Price Type: Official (Official)",
  ["Settlement"] = "Reference Price Type: Settlement (Settlement)",
  ["Closing"] = "Reference Price Type: Closing (Closing)",
  ["Index"] = "Reference Price Type: Index (Index)",
}

lme_lmeselect_referenceprices_lmesource_v4_18.reference_price_type.display = function(value)
  return lme_lmeselect_referenceprices_lmesource_v4_18.reference_price_type.labels[value] or "Reference Price Type: Unknown("..value..")"
end

-- Dissect: Reference Price Type
lme_lmeselect_referenceprices_lmesource_v4_18.reference_price_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.reference_price_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.reference_price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.reference_price_type, range, value, display)

  return offset + length, value
end

-- Remaining Records
lme_lmeselect_referenceprices_lmesource_v4_18.remaining_records = {}

-- Size: Remaining Records
lme_lmeselect_referenceprices_lmesource_v4_18.remaining_records.size = 2

-- Display: Remaining Records
lme_lmeselect_referenceprices_lmesource_v4_18.remaining_records.display = function(value)
  return "Remaining Records: "..value
end

-- Dissect: Remaining Records
lme_lmeselect_referenceprices_lmesource_v4_18.remaining_records.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.remaining_records.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.remaining_records.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.remaining_records, range, value, display)

  return offset + length, value
end

-- Send Time
lme_lmeselect_referenceprices_lmesource_v4_18.send_time = {}

-- Size: Send Time
lme_lmeselect_referenceprices_lmesource_v4_18.send_time.size = 8

-- Dissect: Send Time
lme_lmeselect_referenceprices_lmesource_v4_18.send_time.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.send_time
  if lme_lmeselect_referenceprices_lmesource_v4_18.absolute_time_base == 1 then field = omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.send_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Seq Num
lme_lmeselect_referenceprices_lmesource_v4_18.seq_num = {}

-- Size: Seq Num
lme_lmeselect_referenceprices_lmesource_v4_18.seq_num.size = 4

-- Display: Seq Num
lme_lmeselect_referenceprices_lmesource_v4_18.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
lme_lmeselect_referenceprices_lmesource_v4_18.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Strike Price
lme_lmeselect_referenceprices_lmesource_v4_18.strike_price = {}

-- Size: Strike Price
lme_lmeselect_referenceprices_lmesource_v4_18.strike_price.size = 8

-- Display: Strike Price
lme_lmeselect_referenceprices_lmesource_v4_18.strike_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Strike Price: No Value"
  end

  return "Strike Price: "..value
end

-- Translate: Strike Price
lme_lmeselect_referenceprices_lmesource_v4_18.strike_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Strike Price
lme_lmeselect_referenceprices_lmesource_v4_18.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_referenceprices_lmesource_v4_18.strike_price.translate(raw)
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.strike_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Surface Domain
lme_lmeselect_referenceprices_lmesource_v4_18.surface_domain = {}

-- Size: Surface Domain
lme_lmeselect_referenceprices_lmesource_v4_18.surface_domain.size = 1

-- Display: Surface Domain
lme_lmeselect_referenceprices_lmesource_v4_18.surface_domain.labels = {
  ["S"] = "Surface Domain: Strike (S)",
  ["D"] = "Surface Domain: Delta (D)",
}

lme_lmeselect_referenceprices_lmesource_v4_18.surface_domain.display = function(value)
  return lme_lmeselect_referenceprices_lmesource_v4_18.surface_domain.labels[value] or "Surface Domain: Unknown("..value..")"
end

-- Dissect: Surface Domain
lme_lmeselect_referenceprices_lmesource_v4_18.surface_domain.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.surface_domain.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.surface_domain.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.surface_domain, range, value, display)

  return offset + length, value
end

-- Target Currency Code
lme_lmeselect_referenceprices_lmesource_v4_18.target_currency_code = {}

-- Size: Target Currency Code
lme_lmeselect_referenceprices_lmesource_v4_18.target_currency_code.size = 3

-- Display: Target Currency Code
lme_lmeselect_referenceprices_lmesource_v4_18.target_currency_code.display = function(value)
  return "Target Currency Code: "..value
end

-- Dissect: Target Currency Code
lme_lmeselect_referenceprices_lmesource_v4_18.target_currency_code.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.target_currency_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_referenceprices_lmesource_v4_18.target_currency_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.target_currency_code, range, value, display)

  return offset + length, value
end

-- Time Of Event
lme_lmeselect_referenceprices_lmesource_v4_18.time_of_event = {}

-- Size: Time Of Event
lme_lmeselect_referenceprices_lmesource_v4_18.time_of_event.size = 8

-- Dissect: Time Of Event
lme_lmeselect_referenceprices_lmesource_v4_18.time_of_event.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referenceprices_lmesource_v4_18.time_of_event.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.time_of_event
  if lme_lmeselect_referenceprices_lmesource_v4_18.absolute_time_base == 1 then field = omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.time_of_event_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Lme LmeSelect ReferencePrices LmeSource 4.18
-----------------------------------------------------------------------

-- Volatility Points
lme_lmeselect_referenceprices_lmesource_v4_18.volatility_points = {}

-- Size: Volatility Points
lme_lmeselect_referenceprices_lmesource_v4_18.volatility_points.size =
  lme_lmeselect_referenceprices_lmesource_v4_18.surface_domain.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.delta.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.strike_price.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.atm.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.call_volatility.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.put_volatility.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.call_premium.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.put_premium.size

-- Display: Volatility Points
lme_lmeselect_referenceprices_lmesource_v4_18.volatility_points.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Volatility Points
lme_lmeselect_referenceprices_lmesource_v4_18.volatility_points.fields = function(buffer, offset, packet, parent, volatility_points_index)
  local index = offset

  -- Implicit Volatility Points Index
  if volatility_points_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.volatility_points_index, volatility_points_index)
    iteration:set_generated()
  end

  -- Surface Domain: String
  index, surface_domain = lme_lmeselect_referenceprices_lmesource_v4_18.surface_domain.dissect(buffer, index, packet, parent)

  -- Delta: Int64
  index, delta = lme_lmeselect_referenceprices_lmesource_v4_18.delta.dissect(buffer, index, packet, parent)

  -- Strike Price: Int64
  index, strike_price = lme_lmeselect_referenceprices_lmesource_v4_18.strike_price.dissect(buffer, index, packet, parent)

  -- Atm: Uint8
  index, atm = lme_lmeselect_referenceprices_lmesource_v4_18.atm.dissect(buffer, index, packet, parent)

  -- Call Volatility: Int64
  index, call_volatility = lme_lmeselect_referenceprices_lmesource_v4_18.call_volatility.dissect(buffer, index, packet, parent)

  -- Put Volatility: Int64
  index, put_volatility = lme_lmeselect_referenceprices_lmesource_v4_18.put_volatility.dissect(buffer, index, packet, parent)

  -- Call Premium: Int64
  index, call_premium = lme_lmeselect_referenceprices_lmesource_v4_18.call_premium.dissect(buffer, index, packet, parent)

  -- Put Premium: Int64
  index, put_premium = lme_lmeselect_referenceprices_lmesource_v4_18.put_premium.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Volatility Points
lme_lmeselect_referenceprices_lmesource_v4_18.volatility_points.dissect = function(buffer, offset, packet, parent, volatility_points_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.volatility_points, buffer(offset, 0))
    local index = lme_lmeselect_referenceprices_lmesource_v4_18.volatility_points.fields(buffer, offset, packet, parent, volatility_points_index)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_referenceprices_lmesource_v4_18.volatility_points.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_referenceprices_lmesource_v4_18.volatility_points.fields(buffer, offset, packet, parent, volatility_points_index)
  end
end

-- Reference Volatility Price Message
lme_lmeselect_referenceprices_lmesource_v4_18.reference_volatility_price_message = {}

-- Calculate size of: Reference Volatility Price Message
lme_lmeselect_referenceprices_lmesource_v4_18.reference_volatility_price_message.size = function(buffer, offset)
  local index = 0

  index = index + lme_lmeselect_referenceprices_lmesource_v4_18.time_of_event.size

  index = index + lme_lmeselect_referenceprices_lmesource_v4_18.business_date.size

  index = index + lme_lmeselect_referenceprices_lmesource_v4_18.contract_code.size

  index = index + lme_lmeselect_referenceprices_lmesource_v4_18.expiry_date.size

  index = index + lme_lmeselect_referenceprices_lmesource_v4_18.remaining_records.size

  index = index + lme_lmeselect_referenceprices_lmesource_v4_18.record_count.size

  -- Calculate field size from count
  local volatility_points_count = buffer(offset + index - 2, 2):le_uint()
  index = index + volatility_points_count * 50

  return index
end

-- Display: Reference Volatility Price Message
lme_lmeselect_referenceprices_lmesource_v4_18.reference_volatility_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reference Volatility Price Message
lme_lmeselect_referenceprices_lmesource_v4_18.reference_volatility_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Of Event: Uint64
  index, time_of_event = lme_lmeselect_referenceprices_lmesource_v4_18.time_of_event.dissect(buffer, index, packet, parent)

  -- Business Date: Uint32
  index, business_date = lme_lmeselect_referenceprices_lmesource_v4_18.business_date.dissect(buffer, index, packet, parent)

  -- Contract Code: String
  index, contract_code = lme_lmeselect_referenceprices_lmesource_v4_18.contract_code.dissect(buffer, index, packet, parent)

  -- Expiry Date: Uint32
  index, expiry_date = lme_lmeselect_referenceprices_lmesource_v4_18.expiry_date.dissect(buffer, index, packet, parent)

  -- Remaining Records: Uint16
  index, remaining_records = lme_lmeselect_referenceprices_lmesource_v4_18.remaining_records.dissect(buffer, index, packet, parent)

  -- Record Count: Uint16
  index, record_count = lme_lmeselect_referenceprices_lmesource_v4_18.record_count.dissect(buffer, index, packet, parent)

  -- Repeating: Volatility Points
  for volatility_points_index = 1, record_count do
    index, volatility_points = lme_lmeselect_referenceprices_lmesource_v4_18.volatility_points.dissect(buffer, index, packet, parent, volatility_points_index)
  end

  return index
end

-- Dissect: Reference Volatility Price Message
lme_lmeselect_referenceprices_lmesource_v4_18.reference_volatility_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.reference_volatility_price_message, buffer(offset, 0))
    local index = lme_lmeselect_referenceprices_lmesource_v4_18.reference_volatility_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_referenceprices_lmesource_v4_18.reference_volatility_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_referenceprices_lmesource_v4_18.reference_volatility_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Reference Fx Rate Message
lme_lmeselect_referenceprices_lmesource_v4_18.reference_fx_rate_message = {}

-- Size: Reference Fx Rate Message
lme_lmeselect_referenceprices_lmesource_v4_18.reference_fx_rate_message.size =
  lme_lmeselect_referenceprices_lmesource_v4_18.fx_rate_category.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.fx_rate_type.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.business_date.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.maturity_date.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.base_currency_code.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.target_currency_code.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.conversion_rate.size

-- Display: Reference Fx Rate Message
lme_lmeselect_referenceprices_lmesource_v4_18.reference_fx_rate_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reference Fx Rate Message
lme_lmeselect_referenceprices_lmesource_v4_18.reference_fx_rate_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Fx Rate Category: String
  index, fx_rate_category = lme_lmeselect_referenceprices_lmesource_v4_18.fx_rate_category.dissect(buffer, index, packet, parent)

  -- Fx Rate Type: String
  index, fx_rate_type = lme_lmeselect_referenceprices_lmesource_v4_18.fx_rate_type.dissect(buffer, index, packet, parent)

  -- Business Date: Uint32
  index, business_date = lme_lmeselect_referenceprices_lmesource_v4_18.business_date.dissect(buffer, index, packet, parent)

  -- Maturity Date: Uint32
  index, maturity_date = lme_lmeselect_referenceprices_lmesource_v4_18.maturity_date.dissect(buffer, index, packet, parent)

  -- Base Currency Code: String
  index, base_currency_code = lme_lmeselect_referenceprices_lmesource_v4_18.base_currency_code.dissect(buffer, index, packet, parent)

  -- Target Currency Code: String
  index, target_currency_code = lme_lmeselect_referenceprices_lmesource_v4_18.target_currency_code.dissect(buffer, index, packet, parent)

  -- Conversion Rate: Int64
  index, conversion_rate = lme_lmeselect_referenceprices_lmesource_v4_18.conversion_rate.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reference Fx Rate Message
lme_lmeselect_referenceprices_lmesource_v4_18.reference_fx_rate_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.reference_fx_rate_message, buffer(offset, 0))
    local index = lme_lmeselect_referenceprices_lmesource_v4_18.reference_fx_rate_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_referenceprices_lmesource_v4_18.reference_fx_rate_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_referenceprices_lmesource_v4_18.reference_fx_rate_message.fields(buffer, offset, packet, parent)
  end
end

-- Curve Prices
lme_lmeselect_referenceprices_lmesource_v4_18.curve_prices = {}

-- Size: Curve Prices
lme_lmeselect_referenceprices_lmesource_v4_18.curve_prices.size =
  lme_lmeselect_referenceprices_lmesource_v4_18.price.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_1.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_label_1.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_2.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_label_2.size

-- Display: Curve Prices
lme_lmeselect_referenceprices_lmesource_v4_18.curve_prices.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Curve Prices
lme_lmeselect_referenceprices_lmesource_v4_18.curve_prices.fields = function(buffer, offset, packet, parent, curve_prices_index)
  local index = offset

  -- Implicit Curve Prices Index
  if curve_prices_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.curve_prices_index, curve_prices_index)
    iteration:set_generated()
  end

  -- Price: Int64
  index, price = lme_lmeselect_referenceprices_lmesource_v4_18.price.dissect(buffer, index, packet, parent)

  -- Prompt Date 1: Uint32
  index, prompt_date_1 = lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_1.dissect(buffer, index, packet, parent)

  -- Prompt Date Label 1: String
  index, prompt_date_label_1 = lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_label_1.dissect(buffer, index, packet, parent)

  -- Prompt Date 2: Uint32
  index, prompt_date_2 = lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_2.dissect(buffer, index, packet, parent)

  -- Prompt Date Label 2: String
  index, prompt_date_label_2 = lme_lmeselect_referenceprices_lmesource_v4_18.prompt_date_label_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Curve Prices
lme_lmeselect_referenceprices_lmesource_v4_18.curve_prices.dissect = function(buffer, offset, packet, parent, curve_prices_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.curve_prices, buffer(offset, 0))
    local index = lme_lmeselect_referenceprices_lmesource_v4_18.curve_prices.fields(buffer, offset, packet, parent, curve_prices_index)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_referenceprices_lmesource_v4_18.curve_prices.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_referenceprices_lmesource_v4_18.curve_prices.fields(buffer, offset, packet, parent, curve_prices_index)
  end
end

-- Reference Forward Curve Price Message
lme_lmeselect_referenceprices_lmesource_v4_18.reference_forward_curve_price_message = {}

-- Calculate size of: Reference Forward Curve Price Message
lme_lmeselect_referenceprices_lmesource_v4_18.reference_forward_curve_price_message.size = function(buffer, offset)
  local index = 0

  index = index + lme_lmeselect_referenceprices_lmesource_v4_18.time_of_event.size

  index = index + lme_lmeselect_referenceprices_lmesource_v4_18.business_date.size

  index = index + lme_lmeselect_referenceprices_lmesource_v4_18.product_code.size

  index = index + lme_lmeselect_referenceprices_lmesource_v4_18.price_status.size

  index = index + lme_lmeselect_referenceprices_lmesource_v4_18.currency_code.size

  index = index + lme_lmeselect_referenceprices_lmesource_v4_18.remaining_records.size

  index = index + lme_lmeselect_referenceprices_lmesource_v4_18.record_count.size

  -- Calculate field size from count
  local curve_prices_count = buffer(offset + index - 2, 2):le_uint()
  index = index + curve_prices_count * 28

  return index
end

-- Display: Reference Forward Curve Price Message
lme_lmeselect_referenceprices_lmesource_v4_18.reference_forward_curve_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reference Forward Curve Price Message
lme_lmeselect_referenceprices_lmesource_v4_18.reference_forward_curve_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Of Event: Uint64
  index, time_of_event = lme_lmeselect_referenceprices_lmesource_v4_18.time_of_event.dissect(buffer, index, packet, parent)

  -- Business Date: Uint32
  index, business_date = lme_lmeselect_referenceprices_lmesource_v4_18.business_date.dissect(buffer, index, packet, parent)

  -- Product Code: String
  index, product_code = lme_lmeselect_referenceprices_lmesource_v4_18.product_code.dissect(buffer, index, packet, parent)

  -- Price Status: String
  index, price_status = lme_lmeselect_referenceprices_lmesource_v4_18.price_status.dissect(buffer, index, packet, parent)

  -- Currency Code: String
  index, currency_code = lme_lmeselect_referenceprices_lmesource_v4_18.currency_code.dissect(buffer, index, packet, parent)

  -- Remaining Records: Uint16
  index, remaining_records = lme_lmeselect_referenceprices_lmesource_v4_18.remaining_records.dissect(buffer, index, packet, parent)

  -- Record Count: Uint16
  index, record_count = lme_lmeselect_referenceprices_lmesource_v4_18.record_count.dissect(buffer, index, packet, parent)

  -- Repeating: Curve Prices
  for curve_prices_index = 1, record_count do
    index, curve_prices = lme_lmeselect_referenceprices_lmesource_v4_18.curve_prices.dissect(buffer, index, packet, parent, curve_prices_index)
  end

  return index
end

-- Dissect: Reference Forward Curve Price Message
lme_lmeselect_referenceprices_lmesource_v4_18.reference_forward_curve_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.reference_forward_curve_price_message, buffer(offset, 0))
    local index = lme_lmeselect_referenceprices_lmesource_v4_18.reference_forward_curve_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_referenceprices_lmesource_v4_18.reference_forward_curve_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_referenceprices_lmesource_v4_18.reference_forward_curve_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Reference Price Message
lme_lmeselect_referenceprices_lmesource_v4_18.reference_price_message = {}

-- Size: Reference Price Message
lme_lmeselect_referenceprices_lmesource_v4_18.reference_price_message.size =
  lme_lmeselect_referenceprices_lmesource_v4_18.time_of_event.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.reference_price_category.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.reference_price_type.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.price_status.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.business_date.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.instrument_id.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.product_code.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.currency_code.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.bid.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.price.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.ask.size

-- Display: Reference Price Message
lme_lmeselect_referenceprices_lmesource_v4_18.reference_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reference Price Message
lme_lmeselect_referenceprices_lmesource_v4_18.reference_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Of Event: Uint64
  index, time_of_event = lme_lmeselect_referenceprices_lmesource_v4_18.time_of_event.dissect(buffer, index, packet, parent)

  -- Reference Price Category: String
  index, reference_price_category = lme_lmeselect_referenceprices_lmesource_v4_18.reference_price_category.dissect(buffer, index, packet, parent)

  -- Reference Price Type: String
  index, reference_price_type = lme_lmeselect_referenceprices_lmesource_v4_18.reference_price_type.dissect(buffer, index, packet, parent)

  -- Price Status: String
  index, price_status = lme_lmeselect_referenceprices_lmesource_v4_18.price_status.dissect(buffer, index, packet, parent)

  -- Business Date: Uint32
  index, business_date = lme_lmeselect_referenceprices_lmesource_v4_18.business_date.dissect(buffer, index, packet, parent)

  -- Instrument Id: Uint64
  index, instrument_id = lme_lmeselect_referenceprices_lmesource_v4_18.instrument_id.dissect(buffer, index, packet, parent)

  -- Product Code: String
  index, product_code = lme_lmeselect_referenceprices_lmesource_v4_18.product_code.dissect(buffer, index, packet, parent)

  -- Currency Code: String
  index, currency_code = lme_lmeselect_referenceprices_lmesource_v4_18.currency_code.dissect(buffer, index, packet, parent)

  -- Bid: Int64
  index, bid = lme_lmeselect_referenceprices_lmesource_v4_18.bid.dissect(buffer, index, packet, parent)

  -- Price: Int64
  index, price = lme_lmeselect_referenceprices_lmesource_v4_18.price.dissect(buffer, index, packet, parent)

  -- Ask: Int64
  index, ask = lme_lmeselect_referenceprices_lmesource_v4_18.ask.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reference Price Message
lme_lmeselect_referenceprices_lmesource_v4_18.reference_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.reference_price_message, buffer(offset, 0))
    local index = lme_lmeselect_referenceprices_lmesource_v4_18.reference_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_referenceprices_lmesource_v4_18.reference_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_referenceprices_lmesource_v4_18.reference_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Reset Message
lme_lmeselect_referenceprices_lmesource_v4_18.sequence_reset_message = {}

-- Size: Sequence Reset Message
lme_lmeselect_referenceprices_lmesource_v4_18.sequence_reset_message.size =
  lme_lmeselect_referenceprices_lmesource_v4_18.new_seq_no.size

-- Display: Sequence Reset Message
lme_lmeselect_referenceprices_lmesource_v4_18.sequence_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Reset Message
lme_lmeselect_referenceprices_lmesource_v4_18.sequence_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Seq No: Uint32
  index, new_seq_no = lme_lmeselect_referenceprices_lmesource_v4_18.new_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Reset Message
lme_lmeselect_referenceprices_lmesource_v4_18.sequence_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.sequence_reset_message, buffer(offset, 0))
    local index = lme_lmeselect_referenceprices_lmesource_v4_18.sequence_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_referenceprices_lmesource_v4_18.sequence_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_referenceprices_lmesource_v4_18.sequence_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
lme_lmeselect_referenceprices_lmesource_v4_18.payload = {}

-- Dispatch: Payload
lme_lmeselect_referenceprices_lmesource_v4_18.payload.dispatch = {
  [100] = lme_lmeselect_referenceprices_lmesource_v4_18.sequence_reset_message.dissect,
  [401] = lme_lmeselect_referenceprices_lmesource_v4_18.reference_price_message.dissect,
  [402] = lme_lmeselect_referenceprices_lmesource_v4_18.reference_forward_curve_price_message.dissect,
  [403] = lme_lmeselect_referenceprices_lmesource_v4_18.reference_fx_rate_message.dissect,
  [404] = lme_lmeselect_referenceprices_lmesource_v4_18.reference_volatility_price_message.dissect,
}

-- Dissect: Payload
lme_lmeselect_referenceprices_lmesource_v4_18.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  local dissect = lme_lmeselect_referenceprices_lmesource_v4_18.payload.dispatch[msg_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
lme_lmeselect_referenceprices_lmesource_v4_18.message_header = {}

-- Size: Message Header
lme_lmeselect_referenceprices_lmesource_v4_18.message_header.size =
  lme_lmeselect_referenceprices_lmesource_v4_18.msg_size.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.msg_type.size

-- Display: Message Header
lme_lmeselect_referenceprices_lmesource_v4_18.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lme_lmeselect_referenceprices_lmesource_v4_18.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Size: Uint16
  index, msg_size = lme_lmeselect_referenceprices_lmesource_v4_18.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Type: Uint16
  index, msg_type = lme_lmeselect_referenceprices_lmesource_v4_18.msg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lme_lmeselect_referenceprices_lmesource_v4_18.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.message_header, buffer(offset, 0))
    local index = lme_lmeselect_referenceprices_lmesource_v4_18.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_referenceprices_lmesource_v4_18.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_referenceprices_lmesource_v4_18.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
lme_lmeselect_referenceprices_lmesource_v4_18.message = {}

-- Calculate size of: Message
lme_lmeselect_referenceprices_lmesource_v4_18.message.size = function(buffer, offset)
  local index = 0

  index = index + lme_lmeselect_referenceprices_lmesource_v4_18.message_header.size

  -- Parse runtime size of: Payload
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Message
lme_lmeselect_referenceprices_lmesource_v4_18.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lme_lmeselect_referenceprices_lmesource_v4_18.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = lme_lmeselect_referenceprices_lmesource_v4_18.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 5 branches
  index = lme_lmeselect_referenceprices_lmesource_v4_18.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
lme_lmeselect_referenceprices_lmesource_v4_18.message.dissect = function(buffer, offset, packet, parent, message_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.message, buffer(offset, 0))
    local index = lme_lmeselect_referenceprices_lmesource_v4_18.message.fields(buffer, offset, packet, parent, message_index)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_referenceprices_lmesource_v4_18.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_referenceprices_lmesource_v4_18.message.fields(buffer, offset, packet, parent, message_index)
  end
end

-- Packet Header
lme_lmeselect_referenceprices_lmesource_v4_18.packet_header = {}

-- Size: Packet Header
lme_lmeselect_referenceprices_lmesource_v4_18.packet_header.size =
  lme_lmeselect_referenceprices_lmesource_v4_18.pkt_size.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.msg_count.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.filler.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.seq_num.size + 
  lme_lmeselect_referenceprices_lmesource_v4_18.send_time.size

-- Display: Packet Header
lme_lmeselect_referenceprices_lmesource_v4_18.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
lme_lmeselect_referenceprices_lmesource_v4_18.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: Uint16
  index, pkt_size = lme_lmeselect_referenceprices_lmesource_v4_18.pkt_size.dissect(buffer, index, packet, parent)

  -- Msg Count: Uint8
  index, msg_count = lme_lmeselect_referenceprices_lmesource_v4_18.msg_count.dissect(buffer, index, packet, parent)

  -- Filler: String
  index, filler = lme_lmeselect_referenceprices_lmesource_v4_18.filler.dissect(buffer, index, packet, parent)

  -- Seq Num: Uint32
  index, seq_num = lme_lmeselect_referenceprices_lmesource_v4_18.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: Uint64
  index, send_time = lme_lmeselect_referenceprices_lmesource_v4_18.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
lme_lmeselect_referenceprices_lmesource_v4_18.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18.fields.packet_header, buffer(offset, 0))
    local index = lme_lmeselect_referenceprices_lmesource_v4_18.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_referenceprices_lmesource_v4_18.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_referenceprices_lmesource_v4_18.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
lme_lmeselect_referenceprices_lmesource_v4_18.packet = {}

-- Verify required size of Udp packet
lme_lmeselect_referenceprices_lmesource_v4_18.packet.requiredsize = function(buffer)
  return buffer:len() >= lme_lmeselect_referenceprices_lmesource_v4_18.packet_header.size
end

-- Dissect Packet
lme_lmeselect_referenceprices_lmesource_v4_18.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = lme_lmeselect_referenceprices_lmesource_v4_18.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Count
  local msg_count = buffer(index - 14, 1):uint()

  -- Repeating: Message
  for message_index = 1, msg_count do
    index, message = lme_lmeselect_referenceprices_lmesource_v4_18.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_lme_lmeselect_referenceprices_lmesource_v4_18.init()
end

-- Dissector for Lme LmeSelect ReferencePrices LmeSource 4.18
function omi_lme_lmeselect_referenceprices_lmesource_v4_18.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_lme_lmeselect_referenceprices_lmesource_v4_18.name

  -- Dissect protocol
  local protocol = parent:add(omi_lme_lmeselect_referenceprices_lmesource_v4_18, buffer(), omi_lme_lmeselect_referenceprices_lmesource_v4_18.description, "("..buffer:len().." Bytes)")
  return lme_lmeselect_referenceprices_lmesource_v4_18.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
lme_lmeselect_referenceprices_lmesource_v4_18.packet.fingerprint = function(buffer)
  if buffer:len() < 20 then
    return false
  end

  local msg_type = buffer(18, 2):le_uint()

  -- Sequence Reset Message
  if msg_type == 100 then
    return true
  end

  -- Reference Price Message
  if msg_type == 401 then
    return true
  end

  -- Reference Forward Curve Price Message
  if msg_type == 402 then
    return true
  end

  -- Reference Fx Rate Message
  if msg_type == 403 then
    return true
  end

  -- Reference Volatility Price Message
  if msg_type == 404 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Lme LmeSelect ReferencePrices LmeSource 4.18 (Udp)
local function omi_lme_lmeselect_referenceprices_lmesource_v4_18_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not lme_lmeselect_referenceprices_lmesource_v4_18.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not lme_lmeselect_referenceprices_lmesource_v4_18.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_lme_lmeselect_referenceprices_lmesource_v4_18
  omi_lme_lmeselect_referenceprices_lmesource_v4_18.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lme LmeSelect ReferencePrices LmeSource 4.18
omi_lme_lmeselect_referenceprices_lmesource_v4_18:register_heuristic("udp", omi_lme_lmeselect_referenceprices_lmesource_v4_18_udp_heuristic)

-- Register Lme LmeSelect ReferencePrices LmeSource 4.18 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_lme_lmeselect_referenceprices_lmesource_v4_18)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: The London Metal Exchange
--   Version: 4.18
--   Date: Tuesday, August 18, 2026
--   Specification: lmesource-client-interface-specification-v4-18.pdf
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
