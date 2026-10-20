-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Athex AthexDerivatives Relaxed Ids 5.2 Protocol
local omi_athex_athexderivatives_relaxed_ids_v5_2 = Proto("Omi.Athex.AthexDerivatives.Relaxed.Ids.v5.2", "Athex AthexDerivatives Relaxed Ids 5.2")

-- Protocol table
local athex_athexderivatives_relaxed_ids_v5_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Athex AthexDerivatives Relaxed Ids 5.2 Fields
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.coaf = ProtoField.new("Coaf", "athex.athexderivatives.relaxed.ids.v5.2.coaf", ftypes.STRING, nil, nil, nil, "Mifid II deferral flag COAF")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.datf = ProtoField.new("Datf", "athex.athexderivatives.relaxed.ids.v5.2.datf", ftypes.STRING, nil, nil, nil, "Mifid II deferral flag DATF")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.deferral_indicator = ProtoField.new("Deferral Indicator", "athex.athexderivatives.relaxed.ids.v5.2.deferralindicator", ftypes.STRING, nil, nil, nil, "Whether publication of the trade is deferred")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.delivery_type = ProtoField.new("Delivery Type", "athex.athexderivatives.relaxed.ids.v5.2.deliverytype", ftypes.STRING, nil, nil, nil, "How the instrument settles. Conditionally required.")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.etx = ProtoField.new("Etx", "athex.athexderivatives.relaxed.ids.v5.2.etx", ftypes.INT8, nil, nil, nil, "Signals the end of the packet's text")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.event_time = ProtoField.new("Event Time", "athex.athexderivatives.relaxed.ids.v5.2.eventtime", ftypes.STRING, nil, nil, nil, "Time the event was processed, expressed as Utc, which may be prior to the current trading date")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.expiry_date = ProtoField.new("Expiry Date", "athex.athexderivatives.relaxed.ids.v5.2.expirydate", ftypes.STRING, nil, nil, nil, "Expiry date of the instrument. Conditionally required.")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.fula = ProtoField.new("Fula", "athex.athexderivatives.relaxed.ids.v5.2.fula", ftypes.STRING, nil, nil, nil, "Mifid II deferral flag FULA")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.fulf = ProtoField.new("Fulf", "athex.athexderivatives.relaxed.ids.v5.2.fulf", ftypes.STRING, nil, nil, nil, "Mifid II deferral flag FULF")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.fulj = ProtoField.new("Fulj", "athex.athexderivatives.relaxed.ids.v5.2.fulj", ftypes.STRING, nil, nil, nil, "Mifid II deferral flag FULJ")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.fulv = ProtoField.new("Fulv", "athex.athexderivatives.relaxed.ids.v5.2.fulv", ftypes.STRING, nil, nil, nil, "Mifid II deferral flag FULV")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.fwaf = ProtoField.new("Fwaf", "athex.athexderivatives.relaxed.ids.v5.2.fwaf", ftypes.STRING, nil, nil, nil, "Mifid II deferral flag FWAF")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.idaf = ProtoField.new("Idaf", "athex.athexderivatives.relaxed.ids.v5.2.idaf", ftypes.STRING, nil, nil, nil, "Mifid II deferral flag IDAF")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.instrument_classification = ProtoField.new("Instrument Classification", "athex.athexderivatives.relaxed.ids.v5.2.instrumentclassification", ftypes.STRING, nil, nil, nil, "Iso 10962 Cfi code of the instrument")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.instrument_full_name = ProtoField.new("Instrument Full Name", "athex.athexderivatives.relaxed.ids.v5.2.instrumentfullname", ftypes.STRING, nil, nil, nil, "Full name of the instrument. Conditionally required.")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.instrument_id = ProtoField.new("Instrument Id", "athex.athexderivatives.relaxed.ids.v5.2.instrumentid", ftypes.STRING, nil, nil, nil, "Isin code of the instrument, as Iso 6166 defines it. Conditionally required.")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.instrument_id_type = ProtoField.new("Instrument Id Type", "athex.athexderivatives.relaxed.ids.v5.2.instrumentidtype", ftypes.STRING, nil, nil, nil, "Whether an Isin is available for the instrument")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.lmtf = ProtoField.new("Lmtf", "athex.athexderivatives.relaxed.ids.v5.2.lmtf", ftypes.STRING, nil, nil, nil, "Mifid II deferral flag LMTF")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.lrc = ProtoField.new("Lrc", "athex.athexderivatives.relaxed.ids.v5.2.lrc", ftypes.INT8, nil, nil, nil, "Longitudinal Redundancy Check character signalling the packet's end, the exclusive or of all message bytes from the header up to and including the Etx")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.maturity_date = ProtoField.new("Maturity Date", "athex.athexderivatives.relaxed.ids.v5.2.maturitydate", ftypes.STRING, nil, nil, nil, "Maturity date of the instrument. Conditionally required.")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.message_category = ProtoField.new("Message Category", "athex.athexderivatives.relaxed.ids.v5.2.messagecategory", ftypes.STRING, nil, nil, nil, "Identifies the category of the transmitted message, and selects the Message Text that follows the header")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "athex.athexderivatives.relaxed.ids.v5.2.messagesequencenumber", ftypes.STRING, nil, nil, nil, "Sequence number of the packet. The first message sent has a sequence number of zero and every message thereafter increments it by one, except a Line Verification control message, which repeats the number of the last message sent. A vendor asks the Ids to retransmit by naming the first and last sequence numbers to send, and a retransmitted packet carries its original number")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.message_subcategory = ProtoField.new("Message Subcategory", "athex.athexderivatives.relaxed.ids.v5.2.messagesubcategory", ftypes.STRING, nil, nil, nil, "Identifies the financial product whose information is conveyed and imposes a second level of categorization upon it. The Ids sends one space when the packet's category is not directly related to a specific financial product")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.notation_of_the_quantity_in_measurement_unit = ProtoField.new("Notation Of The Quantity In Measurement Unit", "athex.athexderivatives.relaxed.ids.v5.2.notationofthequantityinmeasurementunit", ftypes.STRING, nil, nil, nil, "TOCD for tons of carbon dioxide equivalent, or free text otherwise Conditionally required.")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.notional_amount = ProtoField.new("Notional Amount", "athex.athexderivatives.relaxed.ids.v5.2.notionalamount", ftypes.DOUBLE, nil, nil, nil, "Notional amount of the trade. Conditionally required.")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.notional_currency = ProtoField.new("Notional Currency", "athex.athexderivatives.relaxed.ids.v5.2.notionalcurrency", ftypes.STRING, nil, nil, nil, "Currency the notional amount is expressed in. Conditionally required.")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.option_exercise_style = ProtoField.new("Option Exercise Style", "athex.athexderivatives.relaxed.ids.v5.2.optionexercisestyle", ftypes.STRING, nil, nil, nil, "Exercise style of the option. Conditionally required.")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.option_type = ProtoField.new("Option Type", "athex.athexderivatives.relaxed.ids.v5.2.optiontype", ftypes.STRING, nil, nil, nil, "Whether the option is a put or a call. Conditionally required.")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.otc_posttrade_indicator = ProtoField.new("Otc Posttrade Indicator", "athex.athexderivatives.relaxed.ids.v5.2.otcposttradeindicator", ftypes.STRING, nil, nil, nil, "Bitmap of one or more flags: bit 1 BENC benchmark, bit 2 ACTX agency cross, bit 3 LRGS large in scale, bit 4 ILQD illiquid instrument, bit 5 SIZE above specified size, bit 6 CANC cancellations, bit 7 AMND amendments, bit 8 SDIV special dividend, bit 9 RPRI price improvement, bit 10 DUPL duplicative, bit 11 TNCP not contributing to price discovery process, bit 12 TPAC package, bit 13 XFPH exchange for physical Conditionally required.")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.price = ProtoField.new("Price", "athex.athexderivatives.relaxed.ids.v5.2.price", ftypes.DOUBLE, nil, nil, nil, "Eighteen digits of which thirteen may be fraction digits when the price is a monetary value, ten when it is a percentage or a yield, and seventeen when it is basis points")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.price_currency = ProtoField.new("Price Currency", "athex.athexderivatives.relaxed.ids.v5.2.pricecurrency", ftypes.STRING, nil, nil, nil, "Currency the price is expressed in. Conditionally required.")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.price_multiplier = ProtoField.new("Price Multiplier", "athex.athexderivatives.relaxed.ids.v5.2.pricemultiplier", ftypes.DOUBLE, nil, nil, nil, "Price multiplier of the instrument. Conditionally required.")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.price_notation = ProtoField.new("Price Notation", "athex.athexderivatives.relaxed.ids.v5.2.pricenotation", ftypes.STRING, nil, nil, nil, "How the price is expressed")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.publication_timestamp = ProtoField.new("Publication Timestamp", "athex.athexderivatives.relaxed.ids.v5.2.publicationtimestamp", ftypes.STRING, nil, nil, nil, "Local time the packet was created in the Ids subsystem, as YYYYMMDDHHMMSSdddddd to the microsecond")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.quantity = ProtoField.new("Quantity", "athex.athexderivatives.relaxed.ids.v5.2.quantity", ftypes.DOUBLE, nil, nil, nil, "Seventeen fraction digits when the quantity is a number of units, and five when it is a monetary or nominal value")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.quantity_currency = ProtoField.new("Quantity Currency", "athex.athexderivatives.relaxed.ids.v5.2.quantitycurrency", ftypes.STRING, nil, nil, nil, "Currency the quantity is expressed in, and spaces when the Quantity expresses units. Conditionally required.")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.quantity_in_measurement_unit = ProtoField.new("Quantity In Measurement Unit", "athex.athexderivatives.relaxed.ids.v5.2.quantityinmeasurementunit", ftypes.DOUBLE, nil, nil, nil, "Quantity expressed in the measurement unit. Conditionally required.")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.quote_id = ProtoField.new("Quote Id", "athex.athexderivatives.relaxed.ids.v5.2.quoteid", ftypes.STRING, nil, nil, nil, "Unique sequential number generated internally by the Member based on Instrument ID, Mic, currency and Lei")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.quote_liquidity = ProtoField.new("Quote Liquidity", "athex.athexderivatives.relaxed.ids.v5.2.quoteliquidity", ftypes.STRING, nil, nil, nil, "Whether the market for the instrument is liquid")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.quote_type = ProtoField.new("Quote Type", "athex.athexderivatives.relaxed.ids.v5.2.quotetype", ftypes.STRING, nil, nil, nil, "Which side of the market the quote is")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.report_status = ProtoField.new("Report Status", "athex.athexderivatives.relaxed.ids.v5.2.reportstatus", ftypes.STRING, nil, nil, nil, "Whether the report is new or a cancellation")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.soh = ProtoField.new("Soh", "athex.athexderivatives.relaxed.ids.v5.2.soh", ftypes.INT8, nil, nil, nil, "First character of every message packet, signalling the beginning of the packet")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.strike_price = ProtoField.new("Strike Price", "athex.athexderivatives.relaxed.ids.v5.2.strikeprice", ftypes.DOUBLE, nil, nil, nil, "Thirteen fraction digits when the price is a monetary value, ten when it is a percentage or a yield, and seventeen when it is basis points Conditionally required.")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.strike_price_currency = ProtoField.new("Strike Price Currency", "athex.athexderivatives.relaxed.ids.v5.2.strikepricecurrency", ftypes.STRING, nil, nil, nil, "Currency the strike price is expressed in. Conditionally required.")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.strike_price_notation = ProtoField.new("Strike Price Notation", "athex.athexderivatives.relaxed.ids.v5.2.strikepricenotation", ftypes.STRING, nil, nil, nil, "How the strike price is expressed. Conditionally required.")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.submitting_entity_identification_code = ProtoField.new("Submitting Entity Identification Code", "athex.athexderivatives.relaxed.ids.v5.2.submittingentityidentificationcode", ftypes.STRING, nil, nil, nil, "Legal entity identifier of the quote submitting entity, as Iso 17442 defines it")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.term_of_the_underlying_index = ProtoField.new("Term Of The Underlying Index", "athex.athexderivatives.relaxed.ids.v5.2.termoftheunderlyingindex", ftypes.STRING, nil, nil, nil, "Three digits of term followed by its unit, DAYS, WEEK, MNTH or YEAR Conditionally required.")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.trade_id = ProtoField.new("Trade Id", "athex.athexderivatives.relaxed.ids.v5.2.tradeid", ftypes.STRING, nil, nil, nil, "Identifier of the trade")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.trade_id_indicator = ProtoField.new("Trade Id Indicator", "athex.athexderivatives.relaxed.ids.v5.2.tradeidindicator", ftypes.STRING, nil, nil, nil, "Which system assigned the Trade ID")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.trading_date_and_time = ProtoField.new("Trading Date And Time", "athex.athexderivatives.relaxed.ids.v5.2.tradingdateandtime", ftypes.STRING, nil, nil, nil, "Date and time of the trade, expressed as Utc, which may be prior to the current trading date")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.transaction_to_be_cleared = ProtoField.new("Transaction To Be Cleared", "athex.athexderivatives.relaxed.ids.v5.2.transactiontobecleared", ftypes.STRING, nil, nil, nil, "Whether the transaction is to be cleared")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.type_emission_allowance = ProtoField.new("Type Emission Allowance", "athex.athexderivatives.relaxed.ids.v5.2.typeemissionallowance", ftypes.STRING, nil, nil, nil, "Type of the emission allowance. Conditionally required.")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.underlying_index_name = ProtoField.new("Underlying Index Name", "athex.athexderivatives.relaxed.ids.v5.2.underlyingindexname", ftypes.STRING, nil, nil, nil, "One of the index codes of section 5.1, or free text when the index name is not in that list Conditionally required.")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.underlying_instrument_code = ProtoField.new("Underlying Instrument Code", "athex.athexderivatives.relaxed.ids.v5.2.underlyinginstrumentcode", ftypes.STRING, nil, nil, nil, "Isin code of the underlying instrument. Conditionally required.")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.vendor_identifier = ProtoField.new("Vendor Identifier", "athex.athexderivatives.relaxed.ids.v5.2.vendoridentifier", ftypes.STRING, nil, nil, nil, "Identifies the Data Vendor the packet is intended for: two spaces for every vendor, which is the value of every packet sent during the trading session, TV for a test vendor, or a vendor code, which the Ids sends only during retransmission")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.venue = ProtoField.new("Venue", "athex.athexderivatives.relaxed.ids.v5.2.venue", ftypes.STRING, nil, nil, nil, "Market Identification Code of the Market the instrument belongs to, XOFF for over the counter or SINT for a systematic internaliser")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.venue_id = ProtoField.new("Venue ID", "athex.athexderivatives.relaxed.ids.v5.2.venueid", ftypes.STRING, nil, nil, nil, "Market Identification Code of the Exchange or Regulated Market publishing the packet's information, as Iso 10383 defines it. Control message packets such as Line Verification carry four spaces")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.venue_mic = ProtoField.new("Venue Mic", "athex.athexderivatives.relaxed.ids.v5.2.venuemic", ftypes.STRING, nil, nil, nil, "Market Identification Code of the Market the instrument belongs to, as Iso 10383 defines it")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.volo = ProtoField.new("Volo", "athex.athexderivatives.relaxed.ids.v5.2.volo", ftypes.STRING, nil, nil, nil, "Mifid II deferral flag VOLO")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.volw = ProtoField.new("Volw", "athex.athexderivatives.relaxed.ids.v5.2.volw", ftypes.STRING, nil, nil, nil, "Mifid II deferral flag VOLW")

-- Athex AthexDerivatives Relaxed Ids 5.2 Framing
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.message_header = ProtoField.new("Message Header", "athex.athexderivatives.relaxed.ids.v5.2.messageheader", ftypes.STRING, nil, nil, nil, "Thirty five character header succeeding the Soh character of every message packet")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.packet = ProtoField.new("Packet", "athex.athexderivatives.relaxed.ids.v5.2.packet", ftypes.STRING, nil, nil, nil, "Athex Ids Tcp Packet")

-- Athex AthexDerivatives Relaxed 5.2 Application Messages
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.apa_post_trade_message = ProtoField.new("Apa Post Trade Message", "athex.athexderivatives.relaxed.ids.v5.2.apaposttrademessage", ftypes.STRING, nil, nil, nil, "Transmitted whenever a trade is reported to the Ids subsystem, for the Athex Apa post trade transparency service required by Mifid II")
omi_athex_athexderivatives_relaxed_ids_v5_2.fields.apa_pre_trade_message = ProtoField.new("Apa Pre Trade Message", "athex.athexderivatives.relaxed.ids.v5.2.apapretrademessage", ftypes.STRING, nil, nil, nil, "Transmitted whenever a quote is reported to the Ids subsystem by the Athex Apa service, for the Athex Apa pre trade transparency service")

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Athex AthexDerivatives Relaxed Ids 5.2 Element Dissection Options
show.application_messages = true
show.headers = true
show.structs = true

-- Register Athex AthexDerivatives Relaxed Ids 5.2 Show Options
omi_athex_athexderivatives_relaxed_ids_v5_2.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_athex_athexderivatives_relaxed_ids_v5_2.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_athex_athexderivatives_relaxed_ids_v5_2.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")

-- Handle changed preferences
function omi_athex_athexderivatives_relaxed_ids_v5_2.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_athex_athexderivatives_relaxed_ids_v5_2.prefs.show_application_messages then
    show.application_messages = omi_athex_athexderivatives_relaxed_ids_v5_2.prefs.show_application_messages
  end
  if show.headers ~= omi_athex_athexderivatives_relaxed_ids_v5_2.prefs.show_headers then
    show.headers = omi_athex_athexderivatives_relaxed_ids_v5_2.prefs.show_headers
  end
  if show.structs ~= omi_athex_athexderivatives_relaxed_ids_v5_2.prefs.show_structs then
    show.structs = omi_athex_athexderivatives_relaxed_ids_v5_2.prefs.show_structs
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

-- the number a decimal writing its own point spells
format_decimal_text = function(str)
  local text = trim_left_spaces(str)

  if text == "" then
    return nil
  end

  local sign = ""
  local first = text:sub(1, 1)

  if first == "-" or first == "+" then
    sign = first
    text = text:sub(2)
  end

  text = trim_left_zeros(text)

  if text:sub(1, 1) == "." then
    text = "0"..text
  end

  return sign..text
end


-----------------------------------------------------------------------
-- Athex AthexDerivatives Relaxed Ids 5.2 Fields
-----------------------------------------------------------------------

-- Coaf
athex_athexderivatives_relaxed_ids_v5_2.coaf = {}

-- Size: Coaf
athex_athexderivatives_relaxed_ids_v5_2.coaf.size = 1

-- Display: Coaf
athex_athexderivatives_relaxed_ids_v5_2.coaf.display = function(value)
  if value == "0" then
    return "Coaf: False (0)"
  end
  if value == "1" then
    return "Coaf: True (1)"
  end

  return "Coaf: Unknown("..value..")"
end

-- Dissect: Coaf
athex_athexderivatives_relaxed_ids_v5_2.coaf.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.coaf.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexderivatives_relaxed_ids_v5_2.coaf.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.coaf, range, value, display)

  return offset + length, value
end

-- Datf
athex_athexderivatives_relaxed_ids_v5_2.datf = {}

-- Size: Datf
athex_athexderivatives_relaxed_ids_v5_2.datf.size = 1

-- Display: Datf
athex_athexderivatives_relaxed_ids_v5_2.datf.display = function(value)
  if value == "0" then
    return "Datf: False (0)"
  end
  if value == "1" then
    return "Datf: True (1)"
  end

  return "Datf: Unknown("..value..")"
end

-- Dissect: Datf
athex_athexderivatives_relaxed_ids_v5_2.datf.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.datf.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexderivatives_relaxed_ids_v5_2.datf.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.datf, range, value, display)

  return offset + length, value
end

-- Deferral Indicator
athex_athexderivatives_relaxed_ids_v5_2.deferral_indicator = {}

-- Size: Deferral Indicator
athex_athexderivatives_relaxed_ids_v5_2.deferral_indicator.size = 1

-- Display: Deferral Indicator
athex_athexderivatives_relaxed_ids_v5_2.deferral_indicator.display = function(value)
  if value == "0" then
    return "Deferral Indicator: False (0)"
  end
  if value == "1" then
    return "Deferral Indicator: True (1)"
  end

  return "Deferral Indicator: Unknown("..value..")"
end

-- Dissect: Deferral Indicator
athex_athexderivatives_relaxed_ids_v5_2.deferral_indicator.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.deferral_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexderivatives_relaxed_ids_v5_2.deferral_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.deferral_indicator, range, value, display)

  return offset + length, value
end

-- Delivery Type
athex_athexderivatives_relaxed_ids_v5_2.delivery_type = {}

-- Size: Delivery Type
athex_athexderivatives_relaxed_ids_v5_2.delivery_type.size = 4

-- Display: Delivery Type
athex_athexderivatives_relaxed_ids_v5_2.delivery_type.display = function(value)
  if value == "PHYS" then
    return "Delivery Type: Physically Settled (PHYS)"
  end
  if value == "CASH" then
    return "Delivery Type: Cash Settled (CASH)"
  end
  if value == "OPTL" then
    return "Delivery Type: Optional (OPTL)"
  end

  return "Delivery Type: Unknown("..value..")"
end

-- Dissect: Delivery Type
athex_athexderivatives_relaxed_ids_v5_2.delivery_type.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.delivery_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexderivatives_relaxed_ids_v5_2.delivery_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.delivery_type, range, value, display)

  return offset + length, value
end

-- Etx
athex_athexderivatives_relaxed_ids_v5_2.etx = {}

-- Size: Etx
athex_athexderivatives_relaxed_ids_v5_2.etx.size = 1

-- Display: Etx
athex_athexderivatives_relaxed_ids_v5_2.etx.display = function(value)
  if value == 3 then
    return "Etx: End Of Text"
  end

  return "Etx: Unknown("..value..")"
end

-- Dissect: Etx
athex_athexderivatives_relaxed_ids_v5_2.etx.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.etx.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = athex_athexderivatives_relaxed_ids_v5_2.etx.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.etx, range, value, display)

  return offset + length, value
end

-- Event Time
athex_athexderivatives_relaxed_ids_v5_2.event_time = {}

-- Size: Event Time
athex_athexderivatives_relaxed_ids_v5_2.event_time.size = 20

-- Display: Event Time
athex_athexderivatives_relaxed_ids_v5_2.event_time.display = function(value)
  local digits = tostring(value)

  if #digits ~= 20 or digits:find("%D") then
    return "Event Time: "..digits
  end

  return string.format("Event Time: %s-%s-%s %s:%s:%s.%s",
                       digits:sub(1, 4), digits:sub(5, 6), digits:sub(7, 8),
                       digits:sub(9, 10), digits:sub(11, 12), digits:sub(13, 14),
                       digits:sub(15, 20))
end

-- Dissect: Event Time
athex_athexderivatives_relaxed_ids_v5_2.event_time.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.event_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexderivatives_relaxed_ids_v5_2.event_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.event_time, range, value, display)

  return offset + length, value
end

-- Expiry Date
athex_athexderivatives_relaxed_ids_v5_2.expiry_date = {}

-- Size: Expiry Date
athex_athexderivatives_relaxed_ids_v5_2.expiry_date.size = 8

-- Display: Expiry Date
athex_athexderivatives_relaxed_ids_v5_2.expiry_date.display = function(value)
  if #value < 8 then
    return "Expiry Date: "..value
  end

  return "Expiry Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Expiry Date
athex_athexderivatives_relaxed_ids_v5_2.expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.expiry_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexderivatives_relaxed_ids_v5_2.expiry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.expiry_date, range, value, display)

  return offset + length, value
end

-- Fula
athex_athexderivatives_relaxed_ids_v5_2.fula = {}

-- Size: Fula
athex_athexderivatives_relaxed_ids_v5_2.fula.size = 1

-- Display: Fula
athex_athexderivatives_relaxed_ids_v5_2.fula.display = function(value)
  if value == "0" then
    return "Fula: False (0)"
  end
  if value == "1" then
    return "Fula: True (1)"
  end

  return "Fula: Unknown("..value..")"
end

-- Dissect: Fula
athex_athexderivatives_relaxed_ids_v5_2.fula.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.fula.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexderivatives_relaxed_ids_v5_2.fula.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.fula, range, value, display)

  return offset + length, value
end

-- Fulf
athex_athexderivatives_relaxed_ids_v5_2.fulf = {}

-- Size: Fulf
athex_athexderivatives_relaxed_ids_v5_2.fulf.size = 1

-- Display: Fulf
athex_athexderivatives_relaxed_ids_v5_2.fulf.display = function(value)
  if value == "0" then
    return "Fulf: False (0)"
  end
  if value == "1" then
    return "Fulf: True (1)"
  end

  return "Fulf: Unknown("..value..")"
end

-- Dissect: Fulf
athex_athexderivatives_relaxed_ids_v5_2.fulf.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.fulf.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexderivatives_relaxed_ids_v5_2.fulf.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.fulf, range, value, display)

  return offset + length, value
end

-- Fulj
athex_athexderivatives_relaxed_ids_v5_2.fulj = {}

-- Size: Fulj
athex_athexderivatives_relaxed_ids_v5_2.fulj.size = 1

-- Display: Fulj
athex_athexderivatives_relaxed_ids_v5_2.fulj.display = function(value)
  if value == "0" then
    return "Fulj: False (0)"
  end
  if value == "1" then
    return "Fulj: True (1)"
  end

  return "Fulj: Unknown("..value..")"
end

-- Dissect: Fulj
athex_athexderivatives_relaxed_ids_v5_2.fulj.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.fulj.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexderivatives_relaxed_ids_v5_2.fulj.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.fulj, range, value, display)

  return offset + length, value
end

-- Fulv
athex_athexderivatives_relaxed_ids_v5_2.fulv = {}

-- Size: Fulv
athex_athexderivatives_relaxed_ids_v5_2.fulv.size = 1

-- Display: Fulv
athex_athexderivatives_relaxed_ids_v5_2.fulv.display = function(value)
  if value == "0" then
    return "Fulv: False (0)"
  end
  if value == "1" then
    return "Fulv: True (1)"
  end

  return "Fulv: Unknown("..value..")"
end

-- Dissect: Fulv
athex_athexderivatives_relaxed_ids_v5_2.fulv.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.fulv.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexderivatives_relaxed_ids_v5_2.fulv.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.fulv, range, value, display)

  return offset + length, value
end

-- Fwaf
athex_athexderivatives_relaxed_ids_v5_2.fwaf = {}

-- Size: Fwaf
athex_athexderivatives_relaxed_ids_v5_2.fwaf.size = 1

-- Display: Fwaf
athex_athexderivatives_relaxed_ids_v5_2.fwaf.display = function(value)
  if value == "0" then
    return "Fwaf: False (0)"
  end
  if value == "1" then
    return "Fwaf: True (1)"
  end

  return "Fwaf: Unknown("..value..")"
end

-- Dissect: Fwaf
athex_athexderivatives_relaxed_ids_v5_2.fwaf.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.fwaf.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexderivatives_relaxed_ids_v5_2.fwaf.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.fwaf, range, value, display)

  return offset + length, value
end

-- Idaf
athex_athexderivatives_relaxed_ids_v5_2.idaf = {}

-- Size: Idaf
athex_athexderivatives_relaxed_ids_v5_2.idaf.size = 1

-- Display: Idaf
athex_athexderivatives_relaxed_ids_v5_2.idaf.display = function(value)
  if value == "0" then
    return "Idaf: False (0)"
  end
  if value == "1" then
    return "Idaf: True (1)"
  end

  return "Idaf: Unknown("..value..")"
end

-- Dissect: Idaf
athex_athexderivatives_relaxed_ids_v5_2.idaf.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.idaf.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexderivatives_relaxed_ids_v5_2.idaf.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.idaf, range, value, display)

  return offset + length, value
end

-- Instrument Classification
athex_athexderivatives_relaxed_ids_v5_2.instrument_classification = {}

-- Size: Instrument Classification
athex_athexderivatives_relaxed_ids_v5_2.instrument_classification.size = 6

-- Display: Instrument Classification
athex_athexderivatives_relaxed_ids_v5_2.instrument_classification.display = function(value)
  return "Instrument Classification: "..value
end

-- Dissect: Instrument Classification
athex_athexderivatives_relaxed_ids_v5_2.instrument_classification.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.instrument_classification.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexderivatives_relaxed_ids_v5_2.instrument_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.instrument_classification, range, value, display)

  return offset + length, value
end

-- Instrument Full Name
athex_athexderivatives_relaxed_ids_v5_2.instrument_full_name = {}

-- Size: Instrument Full Name
athex_athexderivatives_relaxed_ids_v5_2.instrument_full_name.size = 350

-- Display: Instrument Full Name
athex_athexderivatives_relaxed_ids_v5_2.instrument_full_name.display = function(value)
  return "Instrument Full Name: "..value
end

-- Dissect: Instrument Full Name
athex_athexderivatives_relaxed_ids_v5_2.instrument_full_name.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.instrument_full_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexderivatives_relaxed_ids_v5_2.instrument_full_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.instrument_full_name, range, value, display)

  return offset + length, value
end

-- Instrument Id
athex_athexderivatives_relaxed_ids_v5_2.instrument_id = {}

-- Size: Instrument Id
athex_athexderivatives_relaxed_ids_v5_2.instrument_id.size = 12

-- Display: Instrument Id
athex_athexderivatives_relaxed_ids_v5_2.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
athex_athexderivatives_relaxed_ids_v5_2.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.instrument_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexderivatives_relaxed_ids_v5_2.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Instrument Id Type
athex_athexderivatives_relaxed_ids_v5_2.instrument_id_type = {}

-- Size: Instrument Id Type
athex_athexderivatives_relaxed_ids_v5_2.instrument_id_type.size = 4

-- Display: Instrument Id Type
athex_athexderivatives_relaxed_ids_v5_2.instrument_id_type.display = function(value)
  if value == "ISIN" then
    return "Instrument Id Type: Isin (ISIN)"
  end
  if value == "OTHR" then
    return "Instrument Id Type: Other Identifier (OTHR)"
  end

  return "Instrument Id Type: Unknown("..value..")"
end

-- Dissect: Instrument Id Type
athex_athexderivatives_relaxed_ids_v5_2.instrument_id_type.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.instrument_id_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexderivatives_relaxed_ids_v5_2.instrument_id_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.instrument_id_type, range, value, display)

  return offset + length, value
end

-- Lmtf
athex_athexderivatives_relaxed_ids_v5_2.lmtf = {}

-- Size: Lmtf
athex_athexderivatives_relaxed_ids_v5_2.lmtf.size = 1

-- Display: Lmtf
athex_athexderivatives_relaxed_ids_v5_2.lmtf.display = function(value)
  if value == "0" then
    return "Lmtf: False (0)"
  end
  if value == "1" then
    return "Lmtf: True (1)"
  end

  return "Lmtf: Unknown("..value..")"
end

-- Dissect: Lmtf
athex_athexderivatives_relaxed_ids_v5_2.lmtf.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.lmtf.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexderivatives_relaxed_ids_v5_2.lmtf.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.lmtf, range, value, display)

  return offset + length, value
end

-- Lrc
athex_athexderivatives_relaxed_ids_v5_2.lrc = {}

-- Size: Lrc
athex_athexderivatives_relaxed_ids_v5_2.lrc.size = 1

-- Display: Lrc
athex_athexderivatives_relaxed_ids_v5_2.lrc.display = function(value)
  return "Lrc: "..value
end

-- Dissect: Lrc
athex_athexderivatives_relaxed_ids_v5_2.lrc.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.lrc.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = athex_athexderivatives_relaxed_ids_v5_2.lrc.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.lrc, range, value, display)

  return offset + length, value
end

-- Maturity Date
athex_athexderivatives_relaxed_ids_v5_2.maturity_date = {}

-- Size: Maturity Date
athex_athexderivatives_relaxed_ids_v5_2.maturity_date.size = 8

-- Display: Maturity Date
athex_athexderivatives_relaxed_ids_v5_2.maturity_date.display = function(value)
  if #value < 8 then
    return "Maturity Date: "..value
  end

  return "Maturity Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Maturity Date
athex_athexderivatives_relaxed_ids_v5_2.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.maturity_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexderivatives_relaxed_ids_v5_2.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Message Category
athex_athexderivatives_relaxed_ids_v5_2.message_category = {}

-- Size: Message Category
athex_athexderivatives_relaxed_ids_v5_2.message_category.size = 1

-- Display: Message Category
athex_athexderivatives_relaxed_ids_v5_2.message_category.display = function(value)
  if value == "U" then
    return "Message Category: Apa Post Trade Message (U)"
  end
  if value == "V" then
    return "Message Category: Apa Pre Trade Message (V)"
  end

  return "Message Category: Unknown("..value..")"
end

-- Dissect: Message Category
athex_athexderivatives_relaxed_ids_v5_2.message_category.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.message_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexderivatives_relaxed_ids_v5_2.message_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.message_category, range, value, display)

  return offset + length, value
end

-- Message Sequence Number
athex_athexderivatives_relaxed_ids_v5_2.message_sequence_number = {}

-- Size: Message Sequence Number
athex_athexderivatives_relaxed_ids_v5_2.message_sequence_number.size = 7

-- Display: Message Sequence Number
athex_athexderivatives_relaxed_ids_v5_2.message_sequence_number.display = function(value)
  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
athex_athexderivatives_relaxed_ids_v5_2.message_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.message_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = athex_athexderivatives_relaxed_ids_v5_2.message_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Message Subcategory
athex_athexderivatives_relaxed_ids_v5_2.message_subcategory = {}

-- Size: Message Subcategory
athex_athexderivatives_relaxed_ids_v5_2.message_subcategory.size = 1

-- Display: Message Subcategory
athex_athexderivatives_relaxed_ids_v5_2.message_subcategory.display = function(value)
  if value == " " then
    return "Message Subcategory: Generic (<whitespace>)"
  end
  if value == "B" then
    return "Message Subcategory: Bond (B)"
  end
  if value == "E" then
    return "Message Subcategory: Etf (E)"
  end
  if value == "I" then
    return "Message Subcategory: Stock Index (I)"
  end
  if value == "N" then
    return "Message Subcategory: Etf Indicative Net Asset Value (N)"
  end
  if value == "S" then
    return "Message Subcategory: Stock Rights (S)"
  end
  if value == "W" then
    return "Message Subcategory: Warrant (W)"
  end
  if value == "O" then
    return "Message Subcategory: Option (O)"
  end
  if value == "F" then
    return "Message Subcategory: Future (F)"
  end
  if value == "R" then
    return "Message Subcategory: Repos (R)"
  end
  if value == "V" then
    return "Message Subcategory: Standard Combinations (V)"
  end

  return "Message Subcategory: Unknown("..value..")"
end

-- Dissect: Message Subcategory
athex_athexderivatives_relaxed_ids_v5_2.message_subcategory.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.message_subcategory.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexderivatives_relaxed_ids_v5_2.message_subcategory.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.message_subcategory, range, value, display)

  return offset + length, value
end

-- Notation Of The Quantity In Measurement Unit
athex_athexderivatives_relaxed_ids_v5_2.notation_of_the_quantity_in_measurement_unit = {}

-- Size: Notation Of The Quantity In Measurement Unit
athex_athexderivatives_relaxed_ids_v5_2.notation_of_the_quantity_in_measurement_unit.size = 25

-- Display: Notation Of The Quantity In Measurement Unit
athex_athexderivatives_relaxed_ids_v5_2.notation_of_the_quantity_in_measurement_unit.display = function(value)
  return "Notation Of The Quantity In Measurement Unit: "..value
end

-- Dissect: Notation Of The Quantity In Measurement Unit
athex_athexderivatives_relaxed_ids_v5_2.notation_of_the_quantity_in_measurement_unit.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.notation_of_the_quantity_in_measurement_unit.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexderivatives_relaxed_ids_v5_2.notation_of_the_quantity_in_measurement_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.notation_of_the_quantity_in_measurement_unit, range, value, display)

  return offset + length, value
end

-- Notional Amount
athex_athexderivatives_relaxed_ids_v5_2.notional_amount = {}

-- Size: Notional Amount
athex_athexderivatives_relaxed_ids_v5_2.notional_amount.size = 18

-- Display: Notional Amount
athex_athexderivatives_relaxed_ids_v5_2.notional_amount.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, athex_athexderivatives_relaxed_ids_v5_2.notional_amount.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Notional Amount: No Value"
  end

  return "Notional Amount: "..text
end

-- Dissect: Notional Amount
athex_athexderivatives_relaxed_ids_v5_2.notional_amount.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.notional_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
  end

  local display = athex_athexderivatives_relaxed_ids_v5_2.notional_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.notional_amount, range, value, display)

  return offset + length, value
end

-- Notional Currency
athex_athexderivatives_relaxed_ids_v5_2.notional_currency = {}

-- Size: Notional Currency
athex_athexderivatives_relaxed_ids_v5_2.notional_currency.size = 3

-- Display: Notional Currency
athex_athexderivatives_relaxed_ids_v5_2.notional_currency.display = function(value)
  return "Notional Currency: "..value
end

-- Dissect: Notional Currency
athex_athexderivatives_relaxed_ids_v5_2.notional_currency.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.notional_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexderivatives_relaxed_ids_v5_2.notional_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.notional_currency, range, value, display)

  return offset + length, value
end

-- Option Exercise Style
athex_athexderivatives_relaxed_ids_v5_2.option_exercise_style = {}

-- Size: Option Exercise Style
athex_athexderivatives_relaxed_ids_v5_2.option_exercise_style.size = 4

-- Display: Option Exercise Style
athex_athexderivatives_relaxed_ids_v5_2.option_exercise_style.display = function(value)
  if value == "EURO" then
    return "Option Exercise Style: European (EURO)"
  end
  if value == "AMER" then
    return "Option Exercise Style: American (AMER)"
  end
  if value == "ASIA" then
    return "Option Exercise Style: Asian (ASIA)"
  end
  if value == "BERM" then
    return "Option Exercise Style: Bermudan (BERM)"
  end
  if value == "OTHR" then
    return "Option Exercise Style: Other (OTHR)"
  end

  return "Option Exercise Style: Unknown("..value..")"
end

-- Dissect: Option Exercise Style
athex_athexderivatives_relaxed_ids_v5_2.option_exercise_style.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.option_exercise_style.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexderivatives_relaxed_ids_v5_2.option_exercise_style.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.option_exercise_style, range, value, display)

  return offset + length, value
end

-- Option Type
athex_athexderivatives_relaxed_ids_v5_2.option_type = {}

-- Size: Option Type
athex_athexderivatives_relaxed_ids_v5_2.option_type.size = 4

-- Display: Option Type
athex_athexderivatives_relaxed_ids_v5_2.option_type.display = function(value)
  if value == "PUTO" then
    return "Option Type: Put (PUTO)"
  end
  if value == "CALL" then
    return "Option Type: Call (CALL)"
  end
  if value == "OTHR" then
    return "Option Type: Other (OTHR)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
athex_athexderivatives_relaxed_ids_v5_2.option_type.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.option_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexderivatives_relaxed_ids_v5_2.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.option_type, range, value, display)

  return offset + length, value
end

-- Otc Posttrade Indicator
athex_athexderivatives_relaxed_ids_v5_2.otc_posttrade_indicator = {}

-- Size: Otc Posttrade Indicator
athex_athexderivatives_relaxed_ids_v5_2.otc_posttrade_indicator.size = 4

-- Display: Otc Posttrade Indicator
athex_athexderivatives_relaxed_ids_v5_2.otc_posttrade_indicator.display = function(value)
  return "Otc Posttrade Indicator: "..value
end

-- Dissect: Otc Posttrade Indicator
athex_athexderivatives_relaxed_ids_v5_2.otc_posttrade_indicator.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.otc_posttrade_indicator.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = athex_athexderivatives_relaxed_ids_v5_2.otc_posttrade_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.otc_posttrade_indicator, range, value, display)

  return offset + length, value
end

-- Price
athex_athexderivatives_relaxed_ids_v5_2.price = {}

-- Size: Price
athex_athexderivatives_relaxed_ids_v5_2.price.size = 18

-- Display: Price
athex_athexderivatives_relaxed_ids_v5_2.price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, athex_athexderivatives_relaxed_ids_v5_2.price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Price: No Value"
  end

  return "Price: "..text
end

-- Dissect: Price
athex_athexderivatives_relaxed_ids_v5_2.price.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
  end

  local display = athex_athexderivatives_relaxed_ids_v5_2.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.price, range, value, display)

  return offset + length, value
end

-- Price Currency
athex_athexderivatives_relaxed_ids_v5_2.price_currency = {}

-- Size: Price Currency
athex_athexderivatives_relaxed_ids_v5_2.price_currency.size = 3

-- Display: Price Currency
athex_athexderivatives_relaxed_ids_v5_2.price_currency.display = function(value)
  return "Price Currency: "..value
end

-- Dissect: Price Currency
athex_athexderivatives_relaxed_ids_v5_2.price_currency.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.price_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexderivatives_relaxed_ids_v5_2.price_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.price_currency, range, value, display)

  return offset + length, value
end

-- Price Multiplier
athex_athexderivatives_relaxed_ids_v5_2.price_multiplier = {}

-- Size: Price Multiplier
athex_athexderivatives_relaxed_ids_v5_2.price_multiplier.size = 18

-- Display: Price Multiplier
athex_athexderivatives_relaxed_ids_v5_2.price_multiplier.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, athex_athexderivatives_relaxed_ids_v5_2.price_multiplier.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Price Multiplier: No Value"
  end

  return "Price Multiplier: "..text
end

-- Dissect: Price Multiplier
athex_athexderivatives_relaxed_ids_v5_2.price_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.price_multiplier.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
  end

  local display = athex_athexderivatives_relaxed_ids_v5_2.price_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.price_multiplier, range, value, display)

  return offset + length, value
end

-- Price Notation
athex_athexderivatives_relaxed_ids_v5_2.price_notation = {}

-- Size: Price Notation
athex_athexderivatives_relaxed_ids_v5_2.price_notation.size = 4

-- Display: Price Notation
athex_athexderivatives_relaxed_ids_v5_2.price_notation.display = function(value)
  if value == "MONE" then
    return "Price Notation: Monetary Value (MONE)"
  end
  if value == "PERC" then
    return "Price Notation: Percentage (PERC)"
  end
  if value == "YIEL" then
    return "Price Notation: Yield (YIEL)"
  end
  if value == "BAPO" then
    return "Price Notation: Basis Points (BAPO)"
  end
  if value == "PNDG" then
    return "Price Notation: Pending (PNDG)"
  end
  if value == "NOAP" then
    return "Price Notation: Not Applicable (NOAP)"
  end

  return "Price Notation: Unknown("..value..")"
end

-- Dissect: Price Notation
athex_athexderivatives_relaxed_ids_v5_2.price_notation.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.price_notation.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexderivatives_relaxed_ids_v5_2.price_notation.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.price_notation, range, value, display)

  return offset + length, value
end

-- Publication Timestamp
athex_athexderivatives_relaxed_ids_v5_2.publication_timestamp = {}

-- Size: Publication Timestamp
athex_athexderivatives_relaxed_ids_v5_2.publication_timestamp.size = 20

-- Display: Publication Timestamp
athex_athexderivatives_relaxed_ids_v5_2.publication_timestamp.display = function(value)
  local digits = tostring(value)

  if #digits ~= 20 or digits:find("%D") then
    return "Publication Timestamp: "..digits
  end

  return string.format("Publication Timestamp: %s-%s-%s %s:%s:%s.%s",
                       digits:sub(1, 4), digits:sub(5, 6), digits:sub(7, 8),
                       digits:sub(9, 10), digits:sub(11, 12), digits:sub(13, 14),
                       digits:sub(15, 20))
end

-- Dissect: Publication Timestamp
athex_athexderivatives_relaxed_ids_v5_2.publication_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.publication_timestamp.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexderivatives_relaxed_ids_v5_2.publication_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.publication_timestamp, range, value, display)

  return offset + length, value
end

-- Quantity
athex_athexderivatives_relaxed_ids_v5_2.quantity = {}

-- Size: Quantity
athex_athexderivatives_relaxed_ids_v5_2.quantity.size = 18

-- Display: Quantity
athex_athexderivatives_relaxed_ids_v5_2.quantity.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, athex_athexderivatives_relaxed_ids_v5_2.quantity.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Quantity: No Value"
  end

  return "Quantity: "..text
end

-- Dissect: Quantity
athex_athexderivatives_relaxed_ids_v5_2.quantity.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
  end

  local display = athex_athexderivatives_relaxed_ids_v5_2.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.quantity, range, value, display)

  return offset + length, value
end

-- Quantity Currency
athex_athexderivatives_relaxed_ids_v5_2.quantity_currency = {}

-- Size: Quantity Currency
athex_athexderivatives_relaxed_ids_v5_2.quantity_currency.size = 3

-- Display: Quantity Currency
athex_athexderivatives_relaxed_ids_v5_2.quantity_currency.display = function(value)
  return "Quantity Currency: "..value
end

-- Dissect: Quantity Currency
athex_athexderivatives_relaxed_ids_v5_2.quantity_currency.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.quantity_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexderivatives_relaxed_ids_v5_2.quantity_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.quantity_currency, range, value, display)

  return offset + length, value
end

-- Quantity In Measurement Unit
athex_athexderivatives_relaxed_ids_v5_2.quantity_in_measurement_unit = {}

-- Size: Quantity In Measurement Unit
athex_athexderivatives_relaxed_ids_v5_2.quantity_in_measurement_unit.size = 18

-- Display: Quantity In Measurement Unit
athex_athexderivatives_relaxed_ids_v5_2.quantity_in_measurement_unit.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, athex_athexderivatives_relaxed_ids_v5_2.quantity_in_measurement_unit.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Quantity In Measurement Unit: No Value"
  end

  return "Quantity In Measurement Unit: "..text
end

-- Dissect: Quantity In Measurement Unit
athex_athexderivatives_relaxed_ids_v5_2.quantity_in_measurement_unit.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.quantity_in_measurement_unit.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
  end

  local display = athex_athexderivatives_relaxed_ids_v5_2.quantity_in_measurement_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.quantity_in_measurement_unit, range, value, display)

  return offset + length, value
end

-- Quote Id
athex_athexderivatives_relaxed_ids_v5_2.quote_id = {}

-- Size: Quote Id
athex_athexderivatives_relaxed_ids_v5_2.quote_id.size = 52

-- Display: Quote Id
athex_athexderivatives_relaxed_ids_v5_2.quote_id.display = function(value)
  return "Quote Id: "..value
end

-- Dissect: Quote Id
athex_athexderivatives_relaxed_ids_v5_2.quote_id.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.quote_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexderivatives_relaxed_ids_v5_2.quote_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.quote_id, range, value, display)

  return offset + length, value
end

-- Quote Liquidity
athex_athexderivatives_relaxed_ids_v5_2.quote_liquidity = {}

-- Size: Quote Liquidity
athex_athexderivatives_relaxed_ids_v5_2.quote_liquidity.size = 1

-- Display: Quote Liquidity
athex_athexderivatives_relaxed_ids_v5_2.quote_liquidity.display = function(value)
  if value == "1" then
    return "Quote Liquidity: Liquid Market (1)"
  end
  if value == "2" then
    return "Quote Liquidity: Illiquid Market (2)"
  end

  return "Quote Liquidity: Unknown("..value..")"
end

-- Dissect: Quote Liquidity
athex_athexderivatives_relaxed_ids_v5_2.quote_liquidity.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.quote_liquidity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexderivatives_relaxed_ids_v5_2.quote_liquidity.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.quote_liquidity, range, value, display)

  return offset + length, value
end

-- Quote Type
athex_athexderivatives_relaxed_ids_v5_2.quote_type = {}

-- Size: Quote Type
athex_athexderivatives_relaxed_ids_v5_2.quote_type.size = 1

-- Display: Quote Type
athex_athexderivatives_relaxed_ids_v5_2.quote_type.display = function(value)
  if value == "1" then
    return "Quote Type: Bid (1)"
  end
  if value == "2" then
    return "Quote Type: Offer (2)"
  end

  return "Quote Type: Unknown("..value..")"
end

-- Dissect: Quote Type
athex_athexderivatives_relaxed_ids_v5_2.quote_type.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.quote_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexderivatives_relaxed_ids_v5_2.quote_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.quote_type, range, value, display)

  return offset + length, value
end

-- Report Status
athex_athexderivatives_relaxed_ids_v5_2.report_status = {}

-- Size: Report Status
athex_athexderivatives_relaxed_ids_v5_2.report_status.size = 4

-- Display: Report Status
athex_athexderivatives_relaxed_ids_v5_2.report_status.display = function(value)
  if value == "NEWT" then
    return "Report Status: New (NEWT)"
  end
  if value == "AMND" then
    return "Report Status: Amend (AMND)"
  end
  if value == "CANC" then
    return "Report Status: Cancellation (CANC)"
  end

  return "Report Status: Unknown("..value..")"
end

-- Dissect: Report Status
athex_athexderivatives_relaxed_ids_v5_2.report_status.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.report_status.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexderivatives_relaxed_ids_v5_2.report_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.report_status, range, value, display)

  return offset + length, value
end

-- Soh
athex_athexderivatives_relaxed_ids_v5_2.soh = {}

-- Size: Soh
athex_athexderivatives_relaxed_ids_v5_2.soh.size = 1

-- Display: Soh
athex_athexderivatives_relaxed_ids_v5_2.soh.display = function(value)
  if value == 1 then
    return "Soh: Start Of Header"
  end

  return "Soh: Unknown("..value..")"
end

-- Dissect: Soh
athex_athexderivatives_relaxed_ids_v5_2.soh.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.soh.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = athex_athexderivatives_relaxed_ids_v5_2.soh.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.soh, range, value, display)

  return offset + length, value
end

-- Strike Price
athex_athexderivatives_relaxed_ids_v5_2.strike_price = {}

-- Size: Strike Price
athex_athexderivatives_relaxed_ids_v5_2.strike_price.size = 18

-- Display: Strike Price
athex_athexderivatives_relaxed_ids_v5_2.strike_price.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, athex_athexderivatives_relaxed_ids_v5_2.strike_price.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Strike Price: No Value"
  end

  return "Strike Price: "..text
end

-- Dissect: Strike Price
athex_athexderivatives_relaxed_ids_v5_2.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.strike_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
  end

  local display = athex_athexderivatives_relaxed_ids_v5_2.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Strike Price Currency
athex_athexderivatives_relaxed_ids_v5_2.strike_price_currency = {}

-- Size: Strike Price Currency
athex_athexderivatives_relaxed_ids_v5_2.strike_price_currency.size = 3

-- Display: Strike Price Currency
athex_athexderivatives_relaxed_ids_v5_2.strike_price_currency.display = function(value)
  return "Strike Price Currency: "..value
end

-- Dissect: Strike Price Currency
athex_athexderivatives_relaxed_ids_v5_2.strike_price_currency.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.strike_price_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexderivatives_relaxed_ids_v5_2.strike_price_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.strike_price_currency, range, value, display)

  return offset + length, value
end

-- Strike Price Notation
athex_athexderivatives_relaxed_ids_v5_2.strike_price_notation = {}

-- Size: Strike Price Notation
athex_athexderivatives_relaxed_ids_v5_2.strike_price_notation.size = 4

-- Display: Strike Price Notation
athex_athexderivatives_relaxed_ids_v5_2.strike_price_notation.display = function(value)
  if value == "MONE" then
    return "Strike Price Notation: Monetary Value (MONE)"
  end
  if value == "PERC" then
    return "Strike Price Notation: Percentage (PERC)"
  end
  if value == "YIEL" then
    return "Strike Price Notation: Yield (YIEL)"
  end
  if value == "BAPO" then
    return "Strike Price Notation: Basis Points (BAPO)"
  end
  if value == "PNDG" then
    return "Strike Price Notation: Pending (PNDG)"
  end
  if value == "NOAP" then
    return "Strike Price Notation: Not Applicable (NOAP)"
  end

  return "Strike Price Notation: Unknown("..value..")"
end

-- Dissect: Strike Price Notation
athex_athexderivatives_relaxed_ids_v5_2.strike_price_notation.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.strike_price_notation.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexderivatives_relaxed_ids_v5_2.strike_price_notation.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.strike_price_notation, range, value, display)

  return offset + length, value
end

-- Submitting Entity Identification Code
athex_athexderivatives_relaxed_ids_v5_2.submitting_entity_identification_code = {}

-- Size: Submitting Entity Identification Code
athex_athexderivatives_relaxed_ids_v5_2.submitting_entity_identification_code.size = 20

-- Display: Submitting Entity Identification Code
athex_athexderivatives_relaxed_ids_v5_2.submitting_entity_identification_code.display = function(value)
  return "Submitting Entity Identification Code: "..value
end

-- Dissect: Submitting Entity Identification Code
athex_athexderivatives_relaxed_ids_v5_2.submitting_entity_identification_code.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.submitting_entity_identification_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexderivatives_relaxed_ids_v5_2.submitting_entity_identification_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.submitting_entity_identification_code, range, value, display)

  return offset + length, value
end

-- Term Of The Underlying Index
athex_athexderivatives_relaxed_ids_v5_2.term_of_the_underlying_index = {}

-- Size: Term Of The Underlying Index
athex_athexderivatives_relaxed_ids_v5_2.term_of_the_underlying_index.size = 7

-- Display: Term Of The Underlying Index
athex_athexderivatives_relaxed_ids_v5_2.term_of_the_underlying_index.display = function(value)
  return "Term Of The Underlying Index: "..value
end

-- Dissect: Term Of The Underlying Index
athex_athexderivatives_relaxed_ids_v5_2.term_of_the_underlying_index.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.term_of_the_underlying_index.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexderivatives_relaxed_ids_v5_2.term_of_the_underlying_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.term_of_the_underlying_index, range, value, display)

  return offset + length, value
end

-- Trade Id
athex_athexderivatives_relaxed_ids_v5_2.trade_id = {}

-- Size: Trade Id
athex_athexderivatives_relaxed_ids_v5_2.trade_id.size = 52

-- Display: Trade Id
athex_athexderivatives_relaxed_ids_v5_2.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
athex_athexderivatives_relaxed_ids_v5_2.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.trade_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexderivatives_relaxed_ids_v5_2.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Id Indicator
athex_athexderivatives_relaxed_ids_v5_2.trade_id_indicator = {}

-- Size: Trade Id Indicator
athex_athexderivatives_relaxed_ids_v5_2.trade_id_indicator.size = 1

-- Display: Trade Id Indicator
athex_athexderivatives_relaxed_ids_v5_2.trade_id_indicator.display = function(value)
  if value == "1" then
    return "Trade Id Indicator: Oasis Trade Id (1)"
  end
  if value == "2" then
    return "Trade Id Indicator: Other Venue Trade Id (2)"
  end

  return "Trade Id Indicator: Unknown("..value..")"
end

-- Dissect: Trade Id Indicator
athex_athexderivatives_relaxed_ids_v5_2.trade_id_indicator.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.trade_id_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexderivatives_relaxed_ids_v5_2.trade_id_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.trade_id_indicator, range, value, display)

  return offset + length, value
end

-- Trading Date And Time
athex_athexderivatives_relaxed_ids_v5_2.trading_date_and_time = {}

-- Size: Trading Date And Time
athex_athexderivatives_relaxed_ids_v5_2.trading_date_and_time.size = 20

-- Display: Trading Date And Time
athex_athexderivatives_relaxed_ids_v5_2.trading_date_and_time.display = function(value)
  local digits = tostring(value)

  if #digits ~= 20 or digits:find("%D") then
    return "Trading Date And Time: "..digits
  end

  return string.format("Trading Date And Time: %s-%s-%s %s:%s:%s.%s",
                       digits:sub(1, 4), digits:sub(5, 6), digits:sub(7, 8),
                       digits:sub(9, 10), digits:sub(11, 12), digits:sub(13, 14),
                       digits:sub(15, 20))
end

-- Dissect: Trading Date And Time
athex_athexderivatives_relaxed_ids_v5_2.trading_date_and_time.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.trading_date_and_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexderivatives_relaxed_ids_v5_2.trading_date_and_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.trading_date_and_time, range, value, display)

  return offset + length, value
end

-- Transaction To Be Cleared
athex_athexderivatives_relaxed_ids_v5_2.transaction_to_be_cleared = {}

-- Size: Transaction To Be Cleared
athex_athexderivatives_relaxed_ids_v5_2.transaction_to_be_cleared.size = 1

-- Display: Transaction To Be Cleared
athex_athexderivatives_relaxed_ids_v5_2.transaction_to_be_cleared.display = function(value)
  if value == "0" then
    return "Transaction To Be Cleared: False (0)"
  end
  if value == "1" then
    return "Transaction To Be Cleared: True (1)"
  end

  return "Transaction To Be Cleared: Unknown("..value..")"
end

-- Dissect: Transaction To Be Cleared
athex_athexderivatives_relaxed_ids_v5_2.transaction_to_be_cleared.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.transaction_to_be_cleared.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexderivatives_relaxed_ids_v5_2.transaction_to_be_cleared.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.transaction_to_be_cleared, range, value, display)

  return offset + length, value
end

-- Type Emission Allowance
athex_athexderivatives_relaxed_ids_v5_2.type_emission_allowance = {}

-- Size: Type Emission Allowance
athex_athexderivatives_relaxed_ids_v5_2.type_emission_allowance.size = 4

-- Display: Type Emission Allowance
athex_athexderivatives_relaxed_ids_v5_2.type_emission_allowance.display = function(value)
  if value == "EUAE" then
    return "Type Emission Allowance: Eua (EUAE)"
  end
  if value == "CERE" then
    return "Type Emission Allowance: Cer (CERE)"
  end
  if value == "ERUE" then
    return "Type Emission Allowance: Eru (ERUE)"
  end
  if value == "EUAA" then
    return "Type Emission Allowance: Euaa (EUAA)"
  end
  if value == "OTHR" then
    return "Type Emission Allowance: Other (OTHR)"
  end

  return "Type Emission Allowance: Unknown("..value..")"
end

-- Dissect: Type Emission Allowance
athex_athexderivatives_relaxed_ids_v5_2.type_emission_allowance.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.type_emission_allowance.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexderivatives_relaxed_ids_v5_2.type_emission_allowance.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.type_emission_allowance, range, value, display)

  return offset + length, value
end

-- Underlying Index Name
athex_athexderivatives_relaxed_ids_v5_2.underlying_index_name = {}

-- Size: Underlying Index Name
athex_athexderivatives_relaxed_ids_v5_2.underlying_index_name.size = 25

-- Display: Underlying Index Name
athex_athexderivatives_relaxed_ids_v5_2.underlying_index_name.display = function(value)
  return "Underlying Index Name: "..value
end

-- Dissect: Underlying Index Name
athex_athexderivatives_relaxed_ids_v5_2.underlying_index_name.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.underlying_index_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexderivatives_relaxed_ids_v5_2.underlying_index_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.underlying_index_name, range, value, display)

  return offset + length, value
end

-- Underlying Instrument Code
athex_athexderivatives_relaxed_ids_v5_2.underlying_instrument_code = {}

-- Size: Underlying Instrument Code
athex_athexderivatives_relaxed_ids_v5_2.underlying_instrument_code.size = 12

-- Display: Underlying Instrument Code
athex_athexderivatives_relaxed_ids_v5_2.underlying_instrument_code.display = function(value)
  return "Underlying Instrument Code: "..value
end

-- Dissect: Underlying Instrument Code
athex_athexderivatives_relaxed_ids_v5_2.underlying_instrument_code.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.underlying_instrument_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexderivatives_relaxed_ids_v5_2.underlying_instrument_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.underlying_instrument_code, range, value, display)

  return offset + length, value
end

-- Vendor Identifier
athex_athexderivatives_relaxed_ids_v5_2.vendor_identifier = {}

-- Size: Vendor Identifier
athex_athexderivatives_relaxed_ids_v5_2.vendor_identifier.size = 2

-- Display: Vendor Identifier
athex_athexderivatives_relaxed_ids_v5_2.vendor_identifier.display = function(value)
  return "Vendor Identifier: "..value
end

-- Dissect: Vendor Identifier
athex_athexderivatives_relaxed_ids_v5_2.vendor_identifier.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.vendor_identifier.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexderivatives_relaxed_ids_v5_2.vendor_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.vendor_identifier, range, value, display)

  return offset + length, value
end

-- Venue
athex_athexderivatives_relaxed_ids_v5_2.venue = {}

-- Size: Venue
athex_athexderivatives_relaxed_ids_v5_2.venue.size = 4

-- Display: Venue
athex_athexderivatives_relaxed_ids_v5_2.venue.display = function(value)
  return "Venue: "..value
end

-- Dissect: Venue
athex_athexderivatives_relaxed_ids_v5_2.venue.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.venue.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexderivatives_relaxed_ids_v5_2.venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.venue, range, value, display)

  return offset + length, value
end

-- Venue ID
athex_athexderivatives_relaxed_ids_v5_2.venue_id = {}

-- Size: Venue ID
athex_athexderivatives_relaxed_ids_v5_2.venue_id.size = 4

-- Display: Venue ID
athex_athexderivatives_relaxed_ids_v5_2.venue_id.display = function(value)
  return "Venue ID: "..value
end

-- Dissect: Venue ID
athex_athexderivatives_relaxed_ids_v5_2.venue_id.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.venue_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexderivatives_relaxed_ids_v5_2.venue_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.venue_id, range, value, display)

  return offset + length, value
end

-- Venue Mic
athex_athexderivatives_relaxed_ids_v5_2.venue_mic = {}

-- Size: Venue Mic
athex_athexderivatives_relaxed_ids_v5_2.venue_mic.size = 4

-- Display: Venue Mic
athex_athexderivatives_relaxed_ids_v5_2.venue_mic.display = function(value)
  return "Venue Mic: "..value
end

-- Dissect: Venue Mic
athex_athexderivatives_relaxed_ids_v5_2.venue_mic.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.venue_mic.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexderivatives_relaxed_ids_v5_2.venue_mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.venue_mic, range, value, display)

  return offset + length, value
end

-- Volo
athex_athexderivatives_relaxed_ids_v5_2.volo = {}

-- Size: Volo
athex_athexderivatives_relaxed_ids_v5_2.volo.size = 1

-- Display: Volo
athex_athexderivatives_relaxed_ids_v5_2.volo.display = function(value)
  if value == "0" then
    return "Volo: False (0)"
  end
  if value == "1" then
    return "Volo: True (1)"
  end

  return "Volo: Unknown("..value..")"
end

-- Dissect: Volo
athex_athexderivatives_relaxed_ids_v5_2.volo.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.volo.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexderivatives_relaxed_ids_v5_2.volo.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.volo, range, value, display)

  return offset + length, value
end

-- Volw
athex_athexderivatives_relaxed_ids_v5_2.volw = {}

-- Size: Volw
athex_athexderivatives_relaxed_ids_v5_2.volw.size = 1

-- Display: Volw
athex_athexderivatives_relaxed_ids_v5_2.volw.display = function(value)
  if value == "0" then
    return "Volw: False (0)"
  end
  if value == "1" then
    return "Volw: True (1)"
  end

  return "Volw: Unknown("..value..")"
end

-- Dissect: Volw
athex_athexderivatives_relaxed_ids_v5_2.volw.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexderivatives_relaxed_ids_v5_2.volw.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexderivatives_relaxed_ids_v5_2.volw.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.volw, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Athex AthexDerivatives Relaxed Ids 5.2
-----------------------------------------------------------------------

-- Apa Pre Trade Message
athex_athexderivatives_relaxed_ids_v5_2.apa_pre_trade_message = {}

-- Size: Apa Pre Trade Message
athex_athexderivatives_relaxed_ids_v5_2.apa_pre_trade_message.size =
  athex_athexderivatives_relaxed_ids_v5_2.report_status.size + 
  athex_athexderivatives_relaxed_ids_v5_2.quote_type.size + 
  athex_athexderivatives_relaxed_ids_v5_2.quote_id.size + 
  athex_athexderivatives_relaxed_ids_v5_2.event_time.size + 
  athex_athexderivatives_relaxed_ids_v5_2.quote_liquidity.size + 
  athex_athexderivatives_relaxed_ids_v5_2.venue_mic.size + 
  athex_athexderivatives_relaxed_ids_v5_2.submitting_entity_identification_code.size + 
  athex_athexderivatives_relaxed_ids_v5_2.price_notation.size + 
  athex_athexderivatives_relaxed_ids_v5_2.price.size + 
  athex_athexderivatives_relaxed_ids_v5_2.price_currency.size + 
  athex_athexderivatives_relaxed_ids_v5_2.quantity.size + 
  athex_athexderivatives_relaxed_ids_v5_2.quantity_currency.size + 
  athex_athexderivatives_relaxed_ids_v5_2.notation_of_the_quantity_in_measurement_unit.size + 
  athex_athexderivatives_relaxed_ids_v5_2.quantity_in_measurement_unit.size + 
  athex_athexderivatives_relaxed_ids_v5_2.notional_amount.size + 
  athex_athexderivatives_relaxed_ids_v5_2.notional_currency.size + 
  athex_athexderivatives_relaxed_ids_v5_2.instrument_id_type.size + 
  athex_athexderivatives_relaxed_ids_v5_2.instrument_id.size + 
  athex_athexderivatives_relaxed_ids_v5_2.instrument_full_name.size + 
  athex_athexderivatives_relaxed_ids_v5_2.instrument_classification.size + 
  athex_athexderivatives_relaxed_ids_v5_2.price_multiplier.size + 
  athex_athexderivatives_relaxed_ids_v5_2.underlying_instrument_code.size + 
  athex_athexderivatives_relaxed_ids_v5_2.underlying_index_name.size + 
  athex_athexderivatives_relaxed_ids_v5_2.term_of_the_underlying_index.size + 
  athex_athexderivatives_relaxed_ids_v5_2.option_type.size + 
  athex_athexderivatives_relaxed_ids_v5_2.strike_price.size + 
  athex_athexderivatives_relaxed_ids_v5_2.strike_price_currency.size + 
  athex_athexderivatives_relaxed_ids_v5_2.strike_price_notation.size + 
  athex_athexderivatives_relaxed_ids_v5_2.option_exercise_style.size + 
  athex_athexderivatives_relaxed_ids_v5_2.maturity_date.size + 
  athex_athexderivatives_relaxed_ids_v5_2.expiry_date.size + 
  athex_athexderivatives_relaxed_ids_v5_2.delivery_type.size

-- Display: Apa Pre Trade Message
athex_athexderivatives_relaxed_ids_v5_2.apa_pre_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Apa Pre Trade Message
athex_athexderivatives_relaxed_ids_v5_2.apa_pre_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Report Status: {ALPHANUM-4}
  index, report_status = athex_athexderivatives_relaxed_ids_v5_2.report_status.dissect(buffer, index, packet, parent)

  -- Quote Type: {INTEGER-1}
  index, quote_type = athex_athexderivatives_relaxed_ids_v5_2.quote_type.dissect(buffer, index, packet, parent)

  -- Quote Id: {ALPHANUM-52}
  index, quote_id = athex_athexderivatives_relaxed_ids_v5_2.quote_id.dissect(buffer, index, packet, parent)

  -- Event Time: {DATETIME}
  index, event_time = athex_athexderivatives_relaxed_ids_v5_2.event_time.dissect(buffer, index, packet, parent)

  -- Quote Liquidity: {INTEGER-1}
  index, quote_liquidity = athex_athexderivatives_relaxed_ids_v5_2.quote_liquidity.dissect(buffer, index, packet, parent)

  -- Venue Mic: {ALPHANUM-4}
  index, venue_mic = athex_athexderivatives_relaxed_ids_v5_2.venue_mic.dissect(buffer, index, packet, parent)

  -- Submitting Entity Identification Code: {LEI}
  index, submitting_entity_identification_code = athex_athexderivatives_relaxed_ids_v5_2.submitting_entity_identification_code.dissect(buffer, index, packet, parent)

  -- Price Notation: {ALPHANUM-4}
  index, price_notation = athex_athexderivatives_relaxed_ids_v5_2.price_notation.dissect(buffer, index, packet, parent)

  -- Price: {DECIMAL-18/17}
  index, price = athex_athexderivatives_relaxed_ids_v5_2.price.dissect(buffer, index, packet, parent)

  -- Price Currency: {CURRENCYCODE_3}
  index, price_currency = athex_athexderivatives_relaxed_ids_v5_2.price_currency.dissect(buffer, index, packet, parent)

  -- Quantity: {DECIMAL-18/17}
  index, quantity = athex_athexderivatives_relaxed_ids_v5_2.quantity.dissect(buffer, index, packet, parent)

  -- Quantity Currency: {CURRENCYCODE_3}
  index, quantity_currency = athex_athexderivatives_relaxed_ids_v5_2.quantity_currency.dissect(buffer, index, packet, parent)

  -- Notation Of The Quantity In Measurement Unit: {ALPHANUM-25}
  index, notation_of_the_quantity_in_measurement_unit = athex_athexderivatives_relaxed_ids_v5_2.notation_of_the_quantity_in_measurement_unit.dissect(buffer, index, packet, parent)

  -- Quantity In Measurement Unit: {DECIMAL-18/17}
  index, quantity_in_measurement_unit = athex_athexderivatives_relaxed_ids_v5_2.quantity_in_measurement_unit.dissect(buffer, index, packet, parent)

  -- Notional Amount: {DECIMAL-18/5}
  index, notional_amount = athex_athexderivatives_relaxed_ids_v5_2.notional_amount.dissect(buffer, index, packet, parent)

  -- Notional Currency: {CURRENCYCODE_3}
  index, notional_currency = athex_athexderivatives_relaxed_ids_v5_2.notional_currency.dissect(buffer, index, packet, parent)

  -- Instrument Id Type: {ALPHANUM-4}
  index, instrument_id_type = athex_athexderivatives_relaxed_ids_v5_2.instrument_id_type.dissect(buffer, index, packet, parent)

  -- Instrument Id: {ISIN}
  index, instrument_id = athex_athexderivatives_relaxed_ids_v5_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Instrument Full Name: {ALPHANUM-350}
  index, instrument_full_name = athex_athexderivatives_relaxed_ids_v5_2.instrument_full_name.dissect(buffer, index, packet, parent)

  -- Instrument Classification: {CFI_CODE}
  index, instrument_classification = athex_athexderivatives_relaxed_ids_v5_2.instrument_classification.dissect(buffer, index, packet, parent)

  -- Price Multiplier: {DECIMAL-18/17}
  index, price_multiplier = athex_athexderivatives_relaxed_ids_v5_2.price_multiplier.dissect(buffer, index, packet, parent)

  -- Underlying Instrument Code: {ISIN}
  index, underlying_instrument_code = athex_athexderivatives_relaxed_ids_v5_2.underlying_instrument_code.dissect(buffer, index, packet, parent)

  -- Underlying Index Name: {ALPHANUM-25}
  index, underlying_index_name = athex_athexderivatives_relaxed_ids_v5_2.underlying_index_name.dissect(buffer, index, packet, parent)

  -- Term Of The Underlying Index: {INTEGER-3} + {ALPHANUM-4}
  index, term_of_the_underlying_index = athex_athexderivatives_relaxed_ids_v5_2.term_of_the_underlying_index.dissect(buffer, index, packet, parent)

  -- Option Type: {ALPHANUM-4}
  index, option_type = athex_athexderivatives_relaxed_ids_v5_2.option_type.dissect(buffer, index, packet, parent)

  -- Strike Price: {DECIMAL-18/17}
  index, strike_price = athex_athexderivatives_relaxed_ids_v5_2.strike_price.dissect(buffer, index, packet, parent)

  -- Strike Price Currency: {CURRENCYCODE_3}
  index, strike_price_currency = athex_athexderivatives_relaxed_ids_v5_2.strike_price_currency.dissect(buffer, index, packet, parent)

  -- Strike Price Notation: {ALPHANUM-4}
  index, strike_price_notation = athex_athexderivatives_relaxed_ids_v5_2.strike_price_notation.dissect(buffer, index, packet, parent)

  -- Option Exercise Style: {ALPHANUM-4}
  index, option_exercise_style = athex_athexderivatives_relaxed_ids_v5_2.option_exercise_style.dissect(buffer, index, packet, parent)

  -- Maturity Date: {DATE}
  index, maturity_date = athex_athexderivatives_relaxed_ids_v5_2.maturity_date.dissect(buffer, index, packet, parent)

  -- Expiry Date: {DATE}
  index, expiry_date = athex_athexderivatives_relaxed_ids_v5_2.expiry_date.dissect(buffer, index, packet, parent)

  -- Delivery Type: {ALPHANUM-4}
  index, delivery_type = athex_athexderivatives_relaxed_ids_v5_2.delivery_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Apa Pre Trade Message
athex_athexderivatives_relaxed_ids_v5_2.apa_pre_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.apa_pre_trade_message, buffer(offset, 0))
    local index = athex_athexderivatives_relaxed_ids_v5_2.apa_pre_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = athex_athexderivatives_relaxed_ids_v5_2.apa_pre_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return athex_athexderivatives_relaxed_ids_v5_2.apa_pre_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Apa Post Trade Message
athex_athexderivatives_relaxed_ids_v5_2.apa_post_trade_message = {}

-- Size: Apa Post Trade Message
athex_athexderivatives_relaxed_ids_v5_2.apa_post_trade_message.size =
  athex_athexderivatives_relaxed_ids_v5_2.report_status.size + 
  athex_athexderivatives_relaxed_ids_v5_2.trading_date_and_time.size + 
  athex_athexderivatives_relaxed_ids_v5_2.trade_id_indicator.size + 
  athex_athexderivatives_relaxed_ids_v5_2.trade_id.size + 
  athex_athexderivatives_relaxed_ids_v5_2.venue.size + 
  athex_athexderivatives_relaxed_ids_v5_2.transaction_to_be_cleared.size + 
  athex_athexderivatives_relaxed_ids_v5_2.price_notation.size + 
  athex_athexderivatives_relaxed_ids_v5_2.price.size + 
  athex_athexderivatives_relaxed_ids_v5_2.price_currency.size + 
  athex_athexderivatives_relaxed_ids_v5_2.quantity.size + 
  athex_athexderivatives_relaxed_ids_v5_2.quantity_currency.size + 
  athex_athexderivatives_relaxed_ids_v5_2.notation_of_the_quantity_in_measurement_unit.size + 
  athex_athexderivatives_relaxed_ids_v5_2.quantity_in_measurement_unit.size + 
  athex_athexderivatives_relaxed_ids_v5_2.notional_amount.size + 
  athex_athexderivatives_relaxed_ids_v5_2.notional_currency.size + 
  athex_athexderivatives_relaxed_ids_v5_2.instrument_id_type.size + 
  athex_athexderivatives_relaxed_ids_v5_2.instrument_id.size + 
  athex_athexderivatives_relaxed_ids_v5_2.instrument_full_name.size + 
  athex_athexderivatives_relaxed_ids_v5_2.instrument_classification.size + 
  athex_athexderivatives_relaxed_ids_v5_2.price_multiplier.size + 
  athex_athexderivatives_relaxed_ids_v5_2.underlying_instrument_code.size + 
  athex_athexderivatives_relaxed_ids_v5_2.underlying_index_name.size + 
  athex_athexderivatives_relaxed_ids_v5_2.term_of_the_underlying_index.size + 
  athex_athexderivatives_relaxed_ids_v5_2.option_type.size + 
  athex_athexderivatives_relaxed_ids_v5_2.strike_price.size + 
  athex_athexderivatives_relaxed_ids_v5_2.strike_price_currency.size + 
  athex_athexderivatives_relaxed_ids_v5_2.strike_price_notation.size + 
  athex_athexderivatives_relaxed_ids_v5_2.option_exercise_style.size + 
  athex_athexderivatives_relaxed_ids_v5_2.maturity_date.size + 
  athex_athexderivatives_relaxed_ids_v5_2.expiry_date.size + 
  athex_athexderivatives_relaxed_ids_v5_2.delivery_type.size + 
  athex_athexderivatives_relaxed_ids_v5_2.type_emission_allowance.size + 
  athex_athexderivatives_relaxed_ids_v5_2.otc_posttrade_indicator.size + 
  athex_athexderivatives_relaxed_ids_v5_2.deferral_indicator.size + 
  athex_athexderivatives_relaxed_ids_v5_2.lmtf.size + 
  athex_athexderivatives_relaxed_ids_v5_2.fulf.size + 
  athex_athexderivatives_relaxed_ids_v5_2.datf.size + 
  athex_athexderivatives_relaxed_ids_v5_2.fula.size + 
  athex_athexderivatives_relaxed_ids_v5_2.volo.size + 
  athex_athexderivatives_relaxed_ids_v5_2.fulv.size + 
  athex_athexderivatives_relaxed_ids_v5_2.fwaf.size + 
  athex_athexderivatives_relaxed_ids_v5_2.fulj.size + 
  athex_athexderivatives_relaxed_ids_v5_2.idaf.size + 
  athex_athexderivatives_relaxed_ids_v5_2.volw.size + 
  athex_athexderivatives_relaxed_ids_v5_2.coaf.size

-- Display: Apa Post Trade Message
athex_athexderivatives_relaxed_ids_v5_2.apa_post_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Apa Post Trade Message
athex_athexderivatives_relaxed_ids_v5_2.apa_post_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Report Status: {ALPHANUM-4}
  index, report_status = athex_athexderivatives_relaxed_ids_v5_2.report_status.dissect(buffer, index, packet, parent)

  -- Trading Date And Time: {DATETIME}
  index, trading_date_and_time = athex_athexderivatives_relaxed_ids_v5_2.trading_date_and_time.dissect(buffer, index, packet, parent)

  -- Trade Id Indicator: {INTEGER-1}
  index, trade_id_indicator = athex_athexderivatives_relaxed_ids_v5_2.trade_id_indicator.dissect(buffer, index, packet, parent)

  -- Trade Id: {ALPHANUM-52}
  index, trade_id = athex_athexderivatives_relaxed_ids_v5_2.trade_id.dissect(buffer, index, packet, parent)

  -- Venue: {ALPHANUM-4}
  index, venue = athex_athexderivatives_relaxed_ids_v5_2.venue.dissect(buffer, index, packet, parent)

  -- Transaction To Be Cleared: {INTEGER-1}
  index, transaction_to_be_cleared = athex_athexderivatives_relaxed_ids_v5_2.transaction_to_be_cleared.dissect(buffer, index, packet, parent)

  -- Price Notation: {ALPHANUM-4}
  index, price_notation = athex_athexderivatives_relaxed_ids_v5_2.price_notation.dissect(buffer, index, packet, parent)

  -- Price: {DECIMAL-18/17}
  index, price = athex_athexderivatives_relaxed_ids_v5_2.price.dissect(buffer, index, packet, parent)

  -- Price Currency: {CURRENCYCODE_3}
  index, price_currency = athex_athexderivatives_relaxed_ids_v5_2.price_currency.dissect(buffer, index, packet, parent)

  -- Quantity: {DECIMAL-18/17}
  index, quantity = athex_athexderivatives_relaxed_ids_v5_2.quantity.dissect(buffer, index, packet, parent)

  -- Quantity Currency: {CURRENCYCODE_3}
  index, quantity_currency = athex_athexderivatives_relaxed_ids_v5_2.quantity_currency.dissect(buffer, index, packet, parent)

  -- Notation Of The Quantity In Measurement Unit: {ALPHANUM-25}
  index, notation_of_the_quantity_in_measurement_unit = athex_athexderivatives_relaxed_ids_v5_2.notation_of_the_quantity_in_measurement_unit.dissect(buffer, index, packet, parent)

  -- Quantity In Measurement Unit: {DECIMAL-18/17}
  index, quantity_in_measurement_unit = athex_athexderivatives_relaxed_ids_v5_2.quantity_in_measurement_unit.dissect(buffer, index, packet, parent)

  -- Notional Amount: {DECIMAL-18/5}
  index, notional_amount = athex_athexderivatives_relaxed_ids_v5_2.notional_amount.dissect(buffer, index, packet, parent)

  -- Notional Currency: {CURRENCYCODE_3}
  index, notional_currency = athex_athexderivatives_relaxed_ids_v5_2.notional_currency.dissect(buffer, index, packet, parent)

  -- Instrument Id Type: {ALPHANUM-4}
  index, instrument_id_type = athex_athexderivatives_relaxed_ids_v5_2.instrument_id_type.dissect(buffer, index, packet, parent)

  -- Instrument Id: {ISIN}
  index, instrument_id = athex_athexderivatives_relaxed_ids_v5_2.instrument_id.dissect(buffer, index, packet, parent)

  -- Instrument Full Name: {ALPHANUM-350}
  index, instrument_full_name = athex_athexderivatives_relaxed_ids_v5_2.instrument_full_name.dissect(buffer, index, packet, parent)

  -- Instrument Classification: {CFI_CODE}
  index, instrument_classification = athex_athexderivatives_relaxed_ids_v5_2.instrument_classification.dissect(buffer, index, packet, parent)

  -- Price Multiplier: {DECIMAL-18/17}
  index, price_multiplier = athex_athexderivatives_relaxed_ids_v5_2.price_multiplier.dissect(buffer, index, packet, parent)

  -- Underlying Instrument Code: {ISIN}
  index, underlying_instrument_code = athex_athexderivatives_relaxed_ids_v5_2.underlying_instrument_code.dissect(buffer, index, packet, parent)

  -- Underlying Index Name: {ALPHANUM-25}
  index, underlying_index_name = athex_athexderivatives_relaxed_ids_v5_2.underlying_index_name.dissect(buffer, index, packet, parent)

  -- Term Of The Underlying Index: {INTEGER-3} + {ALPHANUM-4}
  index, term_of_the_underlying_index = athex_athexderivatives_relaxed_ids_v5_2.term_of_the_underlying_index.dissect(buffer, index, packet, parent)

  -- Option Type: {ALPHANUM-4}
  index, option_type = athex_athexderivatives_relaxed_ids_v5_2.option_type.dissect(buffer, index, packet, parent)

  -- Strike Price: {DECIMAL-18/17}
  index, strike_price = athex_athexderivatives_relaxed_ids_v5_2.strike_price.dissect(buffer, index, packet, parent)

  -- Strike Price Currency: {CURRENCYCODE_3}
  index, strike_price_currency = athex_athexderivatives_relaxed_ids_v5_2.strike_price_currency.dissect(buffer, index, packet, parent)

  -- Strike Price Notation: {ALPHANUM-4}
  index, strike_price_notation = athex_athexderivatives_relaxed_ids_v5_2.strike_price_notation.dissect(buffer, index, packet, parent)

  -- Option Exercise Style: {ALPHANUM-4}
  index, option_exercise_style = athex_athexderivatives_relaxed_ids_v5_2.option_exercise_style.dissect(buffer, index, packet, parent)

  -- Maturity Date: {DATE}
  index, maturity_date = athex_athexderivatives_relaxed_ids_v5_2.maturity_date.dissect(buffer, index, packet, parent)

  -- Expiry Date: {DATE}
  index, expiry_date = athex_athexderivatives_relaxed_ids_v5_2.expiry_date.dissect(buffer, index, packet, parent)

  -- Delivery Type: {ALPHANUM-4}
  index, delivery_type = athex_athexderivatives_relaxed_ids_v5_2.delivery_type.dissect(buffer, index, packet, parent)

  -- Type Emission Allowance: {ALPHANUM-4}
  index, type_emission_allowance = athex_athexderivatives_relaxed_ids_v5_2.type_emission_allowance.dissect(buffer, index, packet, parent)

  -- Otc Posttrade Indicator: {INTEGER-4}
  index, otc_posttrade_indicator = athex_athexderivatives_relaxed_ids_v5_2.otc_posttrade_indicator.dissect(buffer, index, packet, parent)

  -- Deferral Indicator: {INTEGER-1}
  index, deferral_indicator = athex_athexderivatives_relaxed_ids_v5_2.deferral_indicator.dissect(buffer, index, packet, parent)

  -- Lmtf: {INTEGER-1}
  index, lmtf = athex_athexderivatives_relaxed_ids_v5_2.lmtf.dissect(buffer, index, packet, parent)

  -- Fulf: {INTEGER-1}
  index, fulf = athex_athexderivatives_relaxed_ids_v5_2.fulf.dissect(buffer, index, packet, parent)

  -- Datf: {INTEGER-1}
  index, datf = athex_athexderivatives_relaxed_ids_v5_2.datf.dissect(buffer, index, packet, parent)

  -- Fula: {INTEGER-1}
  index, fula = athex_athexderivatives_relaxed_ids_v5_2.fula.dissect(buffer, index, packet, parent)

  -- Volo: {INTEGER-1}
  index, volo = athex_athexderivatives_relaxed_ids_v5_2.volo.dissect(buffer, index, packet, parent)

  -- Fulv: {INTEGER-1}
  index, fulv = athex_athexderivatives_relaxed_ids_v5_2.fulv.dissect(buffer, index, packet, parent)

  -- Fwaf: {INTEGER-1}
  index, fwaf = athex_athexderivatives_relaxed_ids_v5_2.fwaf.dissect(buffer, index, packet, parent)

  -- Fulj: {INTEGER-1}
  index, fulj = athex_athexderivatives_relaxed_ids_v5_2.fulj.dissect(buffer, index, packet, parent)

  -- Idaf: {INTEGER-1}
  index, idaf = athex_athexderivatives_relaxed_ids_v5_2.idaf.dissect(buffer, index, packet, parent)

  -- Volw: {INTEGER-1}
  index, volw = athex_athexderivatives_relaxed_ids_v5_2.volw.dissect(buffer, index, packet, parent)

  -- Coaf: {INTEGER-1}
  index, coaf = athex_athexderivatives_relaxed_ids_v5_2.coaf.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Apa Post Trade Message
athex_athexderivatives_relaxed_ids_v5_2.apa_post_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.apa_post_trade_message, buffer(offset, 0))
    local index = athex_athexderivatives_relaxed_ids_v5_2.apa_post_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = athex_athexderivatives_relaxed_ids_v5_2.apa_post_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return athex_athexderivatives_relaxed_ids_v5_2.apa_post_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Text
athex_athexderivatives_relaxed_ids_v5_2.message_text = {}

-- Dissect: Message Text
athex_athexderivatives_relaxed_ids_v5_2.message_text.dissect = function(buffer, offset, packet, parent, message_category)
  -- Dissect Apa Post Trade Message
  if message_category == "U" then
    return athex_athexderivatives_relaxed_ids_v5_2.apa_post_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Apa Pre Trade Message
  if message_category == "V" then
    return athex_athexderivatives_relaxed_ids_v5_2.apa_pre_trade_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
athex_athexderivatives_relaxed_ids_v5_2.message_header = {}

-- Size: Message Header
athex_athexderivatives_relaxed_ids_v5_2.message_header.size =
  athex_athexderivatives_relaxed_ids_v5_2.vendor_identifier.size + 
  athex_athexderivatives_relaxed_ids_v5_2.message_category.size + 
  athex_athexderivatives_relaxed_ids_v5_2.message_subcategory.size + 
  athex_athexderivatives_relaxed_ids_v5_2.venue_id.size + 
  athex_athexderivatives_relaxed_ids_v5_2.message_sequence_number.size + 
  athex_athexderivatives_relaxed_ids_v5_2.publication_timestamp.size

-- Display: Message Header
athex_athexderivatives_relaxed_ids_v5_2.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
athex_athexderivatives_relaxed_ids_v5_2.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Vendor Identifier: Characters
  index, vendor_identifier = athex_athexderivatives_relaxed_ids_v5_2.vendor_identifier.dissect(buffer, index, packet, parent)

  -- Message Category: Character
  index, message_category = athex_athexderivatives_relaxed_ids_v5_2.message_category.dissect(buffer, index, packet, parent)

  -- Message Subcategory: Character
  index, message_subcategory = athex_athexderivatives_relaxed_ids_v5_2.message_subcategory.dissect(buffer, index, packet, parent)

  -- Venue ID: MIC
  index, venue_id = athex_athexderivatives_relaxed_ids_v5_2.venue_id.dissect(buffer, index, packet, parent)

  -- Message Sequence Number: Numeric characters
  index, message_sequence_number = athex_athexderivatives_relaxed_ids_v5_2.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Publication Timestamp: DATETIME
  index, publication_timestamp = athex_athexderivatives_relaxed_ids_v5_2.publication_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
athex_athexderivatives_relaxed_ids_v5_2.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2.fields.message_header, buffer(offset, 0))
    local index = athex_athexderivatives_relaxed_ids_v5_2.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = athex_athexderivatives_relaxed_ids_v5_2.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return athex_athexderivatives_relaxed_ids_v5_2.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
athex_athexderivatives_relaxed_ids_v5_2.packet = {}

-- Verify required size of Tcp packet
athex_athexderivatives_relaxed_ids_v5_2.packet.requiredsize = function(buffer)
  return buffer:len() >= athex_athexderivatives_relaxed_ids_v5_2.soh.size + athex_athexderivatives_relaxed_ids_v5_2.message_header.size
end

-- Dissect Packet
athex_athexderivatives_relaxed_ids_v5_2.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Soh: CHAR (1)
  index, soh = athex_athexderivatives_relaxed_ids_v5_2.soh.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 6 fields
  index, message_header = athex_athexderivatives_relaxed_ids_v5_2.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Category
  local message_category = buffer(index - 33, 1):string()

  -- Message Text: Runtime Type with 2 branches
  index = athex_athexderivatives_relaxed_ids_v5_2.message_text.dissect(buffer, index, packet, parent, message_category)

  -- Etx: CHAR (3)
  index, etx = athex_athexderivatives_relaxed_ids_v5_2.etx.dissect(buffer, index, packet, parent)

  -- Lrc: Character
  index, lrc = athex_athexderivatives_relaxed_ids_v5_2.lrc.dissect(buffer, index, packet, parent)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_athex_athexderivatives_relaxed_ids_v5_2.init()
end

-- Dissector for Athex AthexDerivatives Relaxed Ids 5.2
function omi_athex_athexderivatives_relaxed_ids_v5_2.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_athex_athexderivatives_relaxed_ids_v5_2.name

  local length = buffer:len()
  local offset = 0

  -- Dissect each message the segment carries
  while offset < length do
    local protocol = parent:add(omi_athex_athexderivatives_relaxed_ids_v5_2, buffer(offset), omi_athex_athexderivatives_relaxed_ids_v5_2.description, "("..(length - offset).." Bytes)")
    local consumed = athex_athexderivatives_relaxed_ids_v5_2.packet.dissect(buffer(offset):tvb(), packet, protocol)

    if consumed == nil or consumed <= 0 then
      return offset
    end

    protocol:set_len(consumed)
    offset = offset + consumed
  end

  return offset
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Soh Field
athex_athexderivatives_relaxed_ids_v5_2.soh.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(0, 1):int()

  if value == 1 then
    return true
  end

  return false
end

-- Dissector Heuristic for Athex AthexDerivatives Relaxed Ids 5.2 (Tcp)
local function omi_athex_athexderivatives_relaxed_ids_v5_2_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not athex_athexderivatives_relaxed_ids_v5_2.packet.requiredsize(buffer) then return false end

  -- Verify Soh
  if not athex_athexderivatives_relaxed_ids_v5_2.soh.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_athex_athexderivatives_relaxed_ids_v5_2
  omi_athex_athexderivatives_relaxed_ids_v5_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Athex AthexDerivatives Relaxed Ids 5.2
omi_athex_athexderivatives_relaxed_ids_v5_2:register_heuristic("tcp", omi_athex_athexderivatives_relaxed_ids_v5_2_tcp_heuristic)

-- Register Athex AthexDerivatives Relaxed Ids 5.2 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_athex_athexderivatives_relaxed_ids_v5_2)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Athens Exchange Group
--   Version: 5.2
--   Date: Friday, November 1, 2019
--   Specification: ATHEX OASIS IDS Market Data Feed Specification (5.2).pdf
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
