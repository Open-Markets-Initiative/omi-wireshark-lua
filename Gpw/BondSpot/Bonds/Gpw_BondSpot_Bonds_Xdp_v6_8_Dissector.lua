-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Gpw BondSpot Bonds Xdp 6.8 Protocol
local omi_gpw_bondspot_bonds_xdp_v6_8 = Proto("Omi.Gpw.BondSpot.Bonds.Xdp.v6.8", "Gpw BondSpot Bonds Xdp 6.8")

-- Protocol table
local gpw_bondspot_bonds_xdp_v6_8 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Gpw BondSpot Bonds Xdp 6.8 Fields
omi_gpw_bondspot_bonds_xdp_v6_8.fields.accrued_interest = ProtoField.new("Accrued Interest", "gpw.bondspot.bonds.xdp.v6.8.accruedinterest", ftypes.UINT32, nil, nil, nil, "Accrued interest for the day defined by field date")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.accrued_interest_group = ProtoField.new("Accrued Interest Group", "gpw.bondspot.bonds.xdp.v6.8.accruedinterestgroup", ftypes.STRING, nil, nil, nil, "Group repeated 31 times, the combination Date / Accrued Interest")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.accrued_interest_scale_code = ProtoField.new("Accrued Interest Scale Code", "gpw.bondspot.bonds.xdp.v6.8.accruedinterestscalecode", ftypes.UINT8, nil, nil, nil, "Applicable to all accrued interests")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.algorithm_indicator = ProtoField.new("Algorithm Indicator", "gpw.bondspot.bonds.xdp.v6.8.algorithmindicator", ftypes.STRING, nil, nil, nil, "Field includes information about the methodology of calculating YTM")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.currency = ProtoField.new("Currency", "gpw.bondspot.bonds.xdp.v6.8.currency", ftypes.STRING, nil, nil, nil, "Code of the currency in which the interest is determined")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.date = ProtoField.new("Date", "gpw.bondspot.bonds.xdp.v6.8.date", ftypes.UINT32, nil, nil, nil, "Stock Exchange date (YYYYMMDD)")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.delivery_flag = ProtoField.new("Delivery Flag", "gpw.bondspot.bonds.xdp.v6.8.deliveryflag", ftypes.UINT8, nil, nil, nil, "Indicates delivery method, and a client reads it to determine whether the packet is ZliB compressed")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.interest = ProtoField.new("Interest", "gpw.bondspot.bonds.xdp.v6.8.interest", ftypes.UINT32, nil, nil, nil, "Interest for the settlement day defined by field \"SettlementDate\". Provided with 0 if settlement date is not significant")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.interest_scale_code = ProtoField.new("Interest Scale Code", "gpw.bondspot.bonds.xdp.v6.8.interestscalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the interest for the settlement day")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.maturity_date = ProtoField.new("Maturity Date", "gpw.bondspot.bonds.xdp.v6.8.maturitydate", ftypes.UINT32, nil, nil, nil, "Maturity date (YYYYMMDD)")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.maturity_indicator = ProtoField.new("Maturity Indicator", "gpw.bondspot.bonds.xdp.v6.8.maturityindicator", ftypes.STRING)
omi_gpw_bondspot_bonds_xdp_v6_8.fields.message_indicator = ProtoField.new("Message Indicator", "gpw.bondspot.bonds.xdp.v6.8.messageindicator", ftypes.STRING, nil, nil, nil, "Indicates the value of the fields 'Price' and 'YTM'")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.message_level = ProtoField.new("Message Level", "gpw.bondspot.bonds.xdp.v6.8.messagelevel", ftypes.STRING)
omi_gpw_bondspot_bonds_xdp_v6_8.fields.message_size = ProtoField.new("Message Size", "gpw.bondspot.bonds.xdp.v6.8.messagesize", ftypes.UINT16, nil, nil, nil, "Length of the message body, excluding the 2 byte MsgSize field")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.message_type = ProtoField.new("Message Type", "gpw.bondspot.bonds.xdp.v6.8.messagetype", ftypes.UINT16, nil, nil, nil, "The type of this message")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.number_days = ProtoField.new("Number Days", "gpw.bondspot.bonds.xdp.v6.8.numberdays", ftypes.UINT16, nil, nil, nil, "Number of days for which accrued interest is provided")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.number_msg_entries = ProtoField.new("Number Msg Entries", "gpw.bondspot.bonds.xdp.v6.8.numbermsgentries", ftypes.UINT8, nil, nil, nil, "The number of messages that are contained within the packet")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.packet_length = ProtoField.new("Packet Length", "gpw.bondspot.bonds.xdp.v6.8.packetlength", ftypes.UINT16, nil, nil, nil, "Length of the packet including the 16 byte packet header")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.packet_sequence_number = ProtoField.new("Packet Sequence Number", "gpw.bondspot.bonds.xdp.v6.8.packetsequencenumber", ftypes.UINT32, nil, nil, nil, "The packet sequence number, unique for each broadcast stream and used for gap detection. It increases serially and monotonically and is reset to 1 at the beginning of each trading day. It is unique for packets containing market data only, and heartbeats inherit it from the last market data packet or packet sequence number reset packet")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.packet_type = ProtoField.new("Packet Type", "gpw.bondspot.bonds.xdp.v6.8.packettype", ftypes.UINT16, nil, nil, nil, "Identifier for the type of data contained in the packet. Section 1.1 states one value, 501 for Market Data messages, for every feed the document specifies")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.price = ProtoField.new("Price", "gpw.bondspot.bonds.xdp.v6.8.price", ftypes.UINT32, nil, nil, nil, "Indicates the value of the price depending on the indicator in field MessageIndicator")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.price_scale_code = ProtoField.new("Price Scale Code", "gpw.bondspot.bonds.xdp.v6.8.pricescalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the price")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.reserved_2 = ProtoField.new("Reserved 2", "gpw.bondspot.bonds.xdp.v6.8.reserved2", ftypes.BYTES, nil, nil, nil, "For future use")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.reserved_3 = ProtoField.new("Reserved 3", "gpw.bondspot.bonds.xdp.v6.8.reserved3", ftypes.BYTES, nil, nil, nil, "For future use")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.send_time = ProtoField.new("Send Time", "gpw.bondspot.bonds.xdp.v6.8.sendtime", ftypes.UINT32, nil, nil, nil, "Timestamp in millisecond indicating the packet broadcast time. The number represents the number of milliseconds since midnight of the last Sunday 00:00 UTC, a weekly epoch no Epoch trait represents, so the field carries no epoch and a reader resolves the absolute time against the Sunday preceding the capture")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.service_id = ProtoField.new("Service Id", "gpw.bondspot.bonds.xdp.v6.8.serviceid", ftypes.UINT16, nil, nil, nil, "Numeric value identifying the broadcast stream. Section 1.1 states that the possible values are described in the XDP CDE Configuration document, a companion this specification does not reproduce, so no value set is declared here")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.settlement_date = ProtoField.new("Settlement Date", "gpw.bondspot.bonds.xdp.v6.8.settlementdate", ftypes.STRING, nil, nil, nil, "Settlement date (YYYYMMDD)")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.source_seq_num = ProtoField.new("Source Seq Num", "gpw.bondspot.bonds.xdp.v6.8.sourceseqnum", ftypes.UINT32, nil, nil, nil, "This field specifies the sequence number assigned by the source system to this message")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.source_time = ProtoField.new("Source Time", "gpw.bondspot.bonds.xdp.v6.8.sourcetime", ftypes.UINT32, nil, nil, nil, "This field specifies the message generation time")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.source_time_micro_secs = ProtoField.new("Source Time Micro Secs", "gpw.bondspot.bonds.xdp.v6.8.sourcetimemicrosecs", ftypes.UINT16, nil, nil, nil, "Number of micro seconds to be combined with SourceTime")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.symbol_index = ProtoField.new("Symbol Index", "gpw.bondspot.bonds.xdp.v6.8.symbolindex", ftypes.UINT32, nil, nil, nil, "UTP-MD proprietary identification of the instrument")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.system_id = ProtoField.new("System Id", "gpw.bondspot.bonds.xdp.v6.8.systemid", ftypes.UINT32, nil, nil, nil, "The ID of the originating Exchange/System of the message")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.trade_id_number = ProtoField.new("Trade Id Number", "gpw.bondspot.bonds.xdp.v6.8.tradeidnumber", ftypes.UINT32, nil, nil, nil, "If the field \"Message indicator\" = 'T', it is the unique trade number for the given instrument during the given trading session")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.ytm = ProtoField.new("Ytm", "gpw.bondspot.bonds.xdp.v6.8.ytm", ftypes.UINT32, nil, nil, nil, "Indicates the values of the Yield To Maturity depending on the indicator in field MessageIndicator")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.ytm_scale_code = ProtoField.new("Ytm Scale Code", "gpw.bondspot.bonds.xdp.v6.8.ytmscalecode", ftypes.UINT8, nil, nil, nil, "Applicable to the YTM")

-- Gpw BondSpot Bonds Xdp 6.8 Framing
omi_gpw_bondspot_bonds_xdp_v6_8.fields.message = ProtoField.new("Message", "gpw.bondspot.bonds.xdp.v6.8.message", ftypes.STRING)
omi_gpw_bondspot_bonds_xdp_v6_8.fields.message_header = ProtoField.new("Message Header", "gpw.bondspot.bonds.xdp.v6.8.messageheader", ftypes.STRING)
omi_gpw_bondspot_bonds_xdp_v6_8.fields.packet = ProtoField.new("Packet", "gpw.bondspot.bonds.xdp.v6.8.packet", ftypes.STRING, nil, nil, nil, "Gpw Xdp Udp Packet")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.packet_header = ProtoField.new("Packet Header", "gpw.bondspot.bonds.xdp.v6.8.packetheader", ftypes.STRING, nil, nil, nil, "All messages are preceded by a common packet header format, which section 1.1 states for every Market Information message")

-- Gpw BondSpot Bonds 6.8 Application Messages
omi_gpw_bondspot_bonds_xdp_v6_8.fields.accrued_interest_message = ProtoField.new("Accrued Interest Message", "gpw.bondspot.bonds.xdp.v6.8.accruedinterestmessage", ftypes.STRING, nil, nil, nil, "This message informs about the accrued interest for bonds and mortgage- backed bonds")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.interest_for_settlement_day_message = ProtoField.new("Interest For Settlement Day Message", "gpw.bondspot.bonds.xdp.v6.8.interestforsettlementdaymessage", ftypes.STRING, nil, nil, nil, "This message informs about the interest for settlement day for bonds and mortgage-backed bonds")
omi_gpw_bondspot_bonds_xdp_v6_8.fields.yield_to_maturity_message = ProtoField.new("Yield To Maturity Message", "gpw.bondspot.bonds.xdp.v6.8.yieldtomaturitymessage", ftypes.STRING, nil, nil, nil, "This message informs about the values of particular types of yield to maturity (YTM)")

-- Gpw BondSpot Bonds Xdp 6.8 Generated Fields
omi_gpw_bondspot_bonds_xdp_v6_8.fields.accrued_interest_group_index = ProtoField.new("Accrued Interest Group Index", "gpw.bondspot.bonds.xdp.v6.8.accruedinterestgroupindex", ftypes.UINT16)
omi_gpw_bondspot_bonds_xdp_v6_8.fields.message_index = ProtoField.new("Message Index", "gpw.bondspot.bonds.xdp.v6.8.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Gpw BondSpot Bonds Xdp 6.8 Element Dissection Options
show.repeating_groups = true
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Gpw BondSpot Bonds Xdp 6.8 Show Options
omi_gpw_bondspot_bonds_xdp_v6_8.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_gpw_bondspot_bonds_xdp_v6_8.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_gpw_bondspot_bonds_xdp_v6_8.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_gpw_bondspot_bonds_xdp_v6_8.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_gpw_bondspot_bonds_xdp_v6_8.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_gpw_bondspot_bonds_xdp_v6_8.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_gpw_bondspot_bonds_xdp_v6_8.prefs.show_application_messages then
    show.application_messages = omi_gpw_bondspot_bonds_xdp_v6_8.prefs.show_application_messages
  end
  if show.headers ~= omi_gpw_bondspot_bonds_xdp_v6_8.prefs.show_headers then
    show.headers = omi_gpw_bondspot_bonds_xdp_v6_8.prefs.show_headers
  end
  if show.repeating_groups ~= omi_gpw_bondspot_bonds_xdp_v6_8.prefs.show_repeating_groups then
    show.repeating_groups = omi_gpw_bondspot_bonds_xdp_v6_8.prefs.show_repeating_groups
  end
  if show.structs ~= omi_gpw_bondspot_bonds_xdp_v6_8.prefs.show_structs then
    show.structs = omi_gpw_bondspot_bonds_xdp_v6_8.prefs.show_structs
  end
  if show.indexes ~= omi_gpw_bondspot_bonds_xdp_v6_8.prefs.show_indexes then
    show.indexes = omi_gpw_bondspot_bonds_xdp_v6_8.prefs.show_indexes
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


-- Zlib decompression: wireshark built in inflate (uncompress_zlib from 4.4, uncompress before)
local function zlib_decompress(range)
  local ok, decompressed = pcall(function() return range:uncompress_zlib("Decompressed") end)

  if ok then
    return decompressed
  end

  return range:uncompress("Decompressed")
end
-----------------------------------------------------------------------
-- Gpw BondSpot Bonds Xdp 6.8 Fields
-----------------------------------------------------------------------

-- Accrued Interest
gpw_bondspot_bonds_xdp_v6_8.accrued_interest = {}

-- Size: Accrued Interest
gpw_bondspot_bonds_xdp_v6_8.accrued_interest.size = 4

-- Display: Accrued Interest
gpw_bondspot_bonds_xdp_v6_8.accrued_interest.display = function(value)
  return "Accrued Interest: "..value
end

-- Dissect: Accrued Interest
gpw_bondspot_bonds_xdp_v6_8.accrued_interest.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.accrued_interest.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_bonds_xdp_v6_8.accrued_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.accrued_interest, range, value, display)

  return offset + length, value
end

-- Accrued Interest Scale Code
gpw_bondspot_bonds_xdp_v6_8.accrued_interest_scale_code = {}

-- Size: Accrued Interest Scale Code
gpw_bondspot_bonds_xdp_v6_8.accrued_interest_scale_code.size = 1

-- Display: Accrued Interest Scale Code
gpw_bondspot_bonds_xdp_v6_8.accrued_interest_scale_code.display = function(value)
  return "Accrued Interest Scale Code: "..value
end

-- Dissect: Accrued Interest Scale Code
gpw_bondspot_bonds_xdp_v6_8.accrued_interest_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.accrued_interest_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_bonds_xdp_v6_8.accrued_interest_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.accrued_interest_scale_code, range, value, display)

  return offset + length, value
end

-- Algorithm Indicator
gpw_bondspot_bonds_xdp_v6_8.algorithm_indicator = {}

-- Size: Algorithm Indicator
gpw_bondspot_bonds_xdp_v6_8.algorithm_indicator.size = 1

-- Display: Algorithm Indicator
gpw_bondspot_bonds_xdp_v6_8.algorithm_indicator.labels = {
  ["1"] = "Algorithm Indicator: Ismallp Algorithm (1)",
  ["2"] = "Algorithm Indicator: Isma Algorithm (2)",
}

gpw_bondspot_bonds_xdp_v6_8.algorithm_indicator.display = function(value)
  return gpw_bondspot_bonds_xdp_v6_8.algorithm_indicator.labels[value] or "Algorithm Indicator: Unknown("..value..")"
end

-- Dissect: Algorithm Indicator
gpw_bondspot_bonds_xdp_v6_8.algorithm_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.algorithm_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_bondspot_bonds_xdp_v6_8.algorithm_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.algorithm_indicator, range, value, display)

  return offset + length, value
end

-- Currency
gpw_bondspot_bonds_xdp_v6_8.currency = {}

-- Size: Currency
gpw_bondspot_bonds_xdp_v6_8.currency.size = 3

-- Display: Currency
gpw_bondspot_bonds_xdp_v6_8.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
gpw_bondspot_bonds_xdp_v6_8.currency.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_bondspot_bonds_xdp_v6_8.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.currency, range, value, display)

  return offset + length, value
end

-- Date
gpw_bondspot_bonds_xdp_v6_8.date = {}

-- Size: Date
gpw_bondspot_bonds_xdp_v6_8.date.size = 4

-- Display: Date
gpw_bondspot_bonds_xdp_v6_8.date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Date
gpw_bondspot_bonds_xdp_v6_8.date.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_bonds_xdp_v6_8.date.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.date, range, value, display)

  return offset + length, value
end

-- Delivery Flag
gpw_bondspot_bonds_xdp_v6_8.delivery_flag = {}

-- Size: Delivery Flag
gpw_bondspot_bonds_xdp_v6_8.delivery_flag.size = 1

-- Display: Delivery Flag
gpw_bondspot_bonds_xdp_v6_8.delivery_flag.labels = {
  [0] = "Delivery Flag: Real Time Message Uncompressed (0)",
  [2] = "Delivery Flag: Retransmission Message Uncompressed (2)",
  [16] = "Delivery Flag: Real Time Message Zlib Compressed (16)",
  [17] = "Delivery Flag: Refresh Message Zlib Compressed (17)",
  [18] = "Delivery Flag: Retransmission Message Compressed (18)",
}

gpw_bondspot_bonds_xdp_v6_8.delivery_flag.display = function(value)
  return gpw_bondspot_bonds_xdp_v6_8.delivery_flag.labels[value] or "Delivery Flag: Unknown("..value..")"
end

-- Dissect: Delivery Flag
gpw_bondspot_bonds_xdp_v6_8.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_bonds_xdp_v6_8.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- Interest
gpw_bondspot_bonds_xdp_v6_8.interest = {}

-- Size: Interest
gpw_bondspot_bonds_xdp_v6_8.interest.size = 4

-- Display: Interest
gpw_bondspot_bonds_xdp_v6_8.interest.display = function(value)
  return "Interest: "..value
end

-- Dissect: Interest
gpw_bondspot_bonds_xdp_v6_8.interest.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.interest.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_bonds_xdp_v6_8.interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.interest, range, value, display)

  return offset + length, value
end

-- Interest Scale Code
gpw_bondspot_bonds_xdp_v6_8.interest_scale_code = {}

-- Size: Interest Scale Code
gpw_bondspot_bonds_xdp_v6_8.interest_scale_code.size = 1

-- Display: Interest Scale Code
gpw_bondspot_bonds_xdp_v6_8.interest_scale_code.display = function(value)
  return "Interest Scale Code: "..value
end

-- Dissect: Interest Scale Code
gpw_bondspot_bonds_xdp_v6_8.interest_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.interest_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_bonds_xdp_v6_8.interest_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.interest_scale_code, range, value, display)

  return offset + length, value
end

-- Maturity Date
gpw_bondspot_bonds_xdp_v6_8.maturity_date = {}

-- Size: Maturity Date
gpw_bondspot_bonds_xdp_v6_8.maturity_date.size = 4

-- Display: Maturity Date
gpw_bondspot_bonds_xdp_v6_8.maturity_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Maturity Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Maturity Date
gpw_bondspot_bonds_xdp_v6_8.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.maturity_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_bonds_xdp_v6_8.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Maturity Indicator
gpw_bondspot_bonds_xdp_v6_8.maturity_indicator = {}

-- Size: Maturity Indicator
gpw_bondspot_bonds_xdp_v6_8.maturity_indicator.size = 1

-- Display: Maturity Indicator
gpw_bondspot_bonds_xdp_v6_8.maturity_indicator.labels = {
  ["0"] = "Maturity Indicator: Date Of Maturity In Accordance With A Prospect (0)",
  ["1"] = "Maturity Indicator: Previously Date Of Maturity (1)",
}

gpw_bondspot_bonds_xdp_v6_8.maturity_indicator.display = function(value)
  return gpw_bondspot_bonds_xdp_v6_8.maturity_indicator.labels[value] or "Maturity Indicator: Unknown("..value..")"
end

-- Dissect: Maturity Indicator
gpw_bondspot_bonds_xdp_v6_8.maturity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.maturity_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_bondspot_bonds_xdp_v6_8.maturity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.maturity_indicator, range, value, display)

  return offset + length, value
end

-- Message Indicator
gpw_bondspot_bonds_xdp_v6_8.message_indicator = {}

-- Size: Message Indicator
gpw_bondspot_bonds_xdp_v6_8.message_indicator.size = 1

-- Display: Message Indicator
gpw_bondspot_bonds_xdp_v6_8.message_indicator.labels = {
  ["F"] = "Message Indicator: Fixing (F)",
  ["T"] = "Message Indicator: Trade (T)",
  ["K"] = "Message Indicator: Bid The Indicative Buy Price Or The Best Buy Quote Price Depending On The Field Level Of The Message (K)",
  ["S"] = "Message Indicator: Ask The Indicative Sell Price Or The Best Sell Quote Price Depending On The Field Level Of The Message (S)",
}

gpw_bondspot_bonds_xdp_v6_8.message_indicator.display = function(value)
  return gpw_bondspot_bonds_xdp_v6_8.message_indicator.labels[value] or "Message Indicator: Unknown("..value..")"
end

-- Dissect: Message Indicator
gpw_bondspot_bonds_xdp_v6_8.message_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.message_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_bondspot_bonds_xdp_v6_8.message_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.message_indicator, range, value, display)

  return offset + length, value
end

-- Message Level
gpw_bondspot_bonds_xdp_v6_8.message_level = {}

-- Size: Message Level
gpw_bondspot_bonds_xdp_v6_8.message_level.size = 1

-- Display: Message Level
gpw_bondspot_bonds_xdp_v6_8.message_level.labels = {
  ["0"] = "Message Level: The Fields Price And Ytm Carry Values Depending On The Value Of Field Message Indicator (0)",
  ["1"] = "Message Level: First Of The Five Best Buy Or Sell Price Limits (1)",
  ["2"] = "Message Level: Second Of The Five Best Buy Or Sell Price Limits (2)",
  ["3"] = "Message Level: Third Of The Five Best Buy Or Sell Price Limits (3)",
  ["4"] = "Message Level: Fourth Of The Five Best Buy Or Sell Price Limits (4)",
  ["5"] = "Message Level: Fifth Of The Five Best Buy Or Sell Price Limits (5)",
}

gpw_bondspot_bonds_xdp_v6_8.message_level.display = function(value)
  return gpw_bondspot_bonds_xdp_v6_8.message_level.labels[value] or "Message Level: Unknown("..value..")"
end

-- Dissect: Message Level
gpw_bondspot_bonds_xdp_v6_8.message_level.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.message_level.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_bondspot_bonds_xdp_v6_8.message_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.message_level, range, value, display)

  return offset + length, value
end

-- Message Size
gpw_bondspot_bonds_xdp_v6_8.message_size = {}

-- Size: Message Size
gpw_bondspot_bonds_xdp_v6_8.message_size.size = 2

-- Display: Message Size
gpw_bondspot_bonds_xdp_v6_8.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
gpw_bondspot_bonds_xdp_v6_8.message_size.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.message_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_bonds_xdp_v6_8.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
gpw_bondspot_bonds_xdp_v6_8.message_type = {}

-- Size: Message Type
gpw_bondspot_bonds_xdp_v6_8.message_type.size = 2

-- Display: Message Type
gpw_bondspot_bonds_xdp_v6_8.message_type.labels = {
  [601] = "Message Type: Accrued Interest Message (601)",
  [602] = "Message Type: Interest For Settlement Day Message (602)",
  [603] = "Message Type: Yield To Maturity Message (603)",
}

gpw_bondspot_bonds_xdp_v6_8.message_type.display = function(value)
  return gpw_bondspot_bonds_xdp_v6_8.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
gpw_bondspot_bonds_xdp_v6_8.message_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_bonds_xdp_v6_8.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.message_type, range, value, display)

  return offset + length, value
end

-- Number Days
gpw_bondspot_bonds_xdp_v6_8.number_days = {}

-- Size: Number Days
gpw_bondspot_bonds_xdp_v6_8.number_days.size = 2

-- Display: Number Days
gpw_bondspot_bonds_xdp_v6_8.number_days.display = function(value)
  return "Number Days: "..value
end

-- Dissect: Number Days
gpw_bondspot_bonds_xdp_v6_8.number_days.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.number_days.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_bonds_xdp_v6_8.number_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.number_days, range, value, display)

  return offset + length, value
end

-- Number Msg Entries
gpw_bondspot_bonds_xdp_v6_8.number_msg_entries = {}

-- Size: Number Msg Entries
gpw_bondspot_bonds_xdp_v6_8.number_msg_entries.size = 1

-- Display: Number Msg Entries
gpw_bondspot_bonds_xdp_v6_8.number_msg_entries.display = function(value)
  return "Number Msg Entries: "..value
end

-- Dissect: Number Msg Entries
gpw_bondspot_bonds_xdp_v6_8.number_msg_entries.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.number_msg_entries.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_bonds_xdp_v6_8.number_msg_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.number_msg_entries, range, value, display)

  return offset + length, value
end

-- Packet Length
gpw_bondspot_bonds_xdp_v6_8.packet_length = {}

-- Size: Packet Length
gpw_bondspot_bonds_xdp_v6_8.packet_length.size = 2

-- Display: Packet Length
gpw_bondspot_bonds_xdp_v6_8.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
gpw_bondspot_bonds_xdp_v6_8.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_bonds_xdp_v6_8.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Sequence Number
gpw_bondspot_bonds_xdp_v6_8.packet_sequence_number = {}

-- Size: Packet Sequence Number
gpw_bondspot_bonds_xdp_v6_8.packet_sequence_number.size = 4

-- Display: Packet Sequence Number
gpw_bondspot_bonds_xdp_v6_8.packet_sequence_number.display = function(value)
  return "Packet Sequence Number: "..value
end

-- Dissect: Packet Sequence Number
gpw_bondspot_bonds_xdp_v6_8.packet_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.packet_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_bonds_xdp_v6_8.packet_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.packet_sequence_number, range, value, display)

  return offset + length, value
end

-- Packet Type
gpw_bondspot_bonds_xdp_v6_8.packet_type = {}

-- Size: Packet Type
gpw_bondspot_bonds_xdp_v6_8.packet_type.size = 2

-- Display: Packet Type
gpw_bondspot_bonds_xdp_v6_8.packet_type.labels = {
  [501] = "Packet Type: Market Data Messages (501)",
}

gpw_bondspot_bonds_xdp_v6_8.packet_type.display = function(value)
  return gpw_bondspot_bonds_xdp_v6_8.packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
gpw_bondspot_bonds_xdp_v6_8.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.packet_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_bonds_xdp_v6_8.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Price
gpw_bondspot_bonds_xdp_v6_8.price = {}

-- Size: Price
gpw_bondspot_bonds_xdp_v6_8.price.size = 4

-- Display: Price
gpw_bondspot_bonds_xdp_v6_8.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
gpw_bondspot_bonds_xdp_v6_8.price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_bonds_xdp_v6_8.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.price, range, value, display)

  return offset + length, value
end

-- Price Scale Code
gpw_bondspot_bonds_xdp_v6_8.price_scale_code = {}

-- Size: Price Scale Code
gpw_bondspot_bonds_xdp_v6_8.price_scale_code.size = 1

-- Display: Price Scale Code
gpw_bondspot_bonds_xdp_v6_8.price_scale_code.display = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
gpw_bondspot_bonds_xdp_v6_8.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.price_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_bonds_xdp_v6_8.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Reserved 2
gpw_bondspot_bonds_xdp_v6_8.reserved_2 = {}

-- Size: Reserved 2
gpw_bondspot_bonds_xdp_v6_8.reserved_2.size = 2

-- Display: Reserved 2
gpw_bondspot_bonds_xdp_v6_8.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
gpw_bondspot_bonds_xdp_v6_8.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = gpw_bondspot_bonds_xdp_v6_8.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 3
gpw_bondspot_bonds_xdp_v6_8.reserved_3 = {}

-- Size: Reserved 3
gpw_bondspot_bonds_xdp_v6_8.reserved_3.size = 3

-- Display: Reserved 3
gpw_bondspot_bonds_xdp_v6_8.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
gpw_bondspot_bonds_xdp_v6_8.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.reserved_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = gpw_bondspot_bonds_xdp_v6_8.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Send Time
gpw_bondspot_bonds_xdp_v6_8.send_time = {}

-- Size: Send Time
gpw_bondspot_bonds_xdp_v6_8.send_time.size = 4

-- Display: Send Time
gpw_bondspot_bonds_xdp_v6_8.send_time.display = function(value)
  return "Send Time: "..value
end

-- Dissect: Send Time
gpw_bondspot_bonds_xdp_v6_8.send_time.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.send_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_bonds_xdp_v6_8.send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.send_time, range, value, display)

  return offset + length, value
end

-- Service Id
gpw_bondspot_bonds_xdp_v6_8.service_id = {}

-- Size: Service Id
gpw_bondspot_bonds_xdp_v6_8.service_id.size = 2

-- Display: Service Id
gpw_bondspot_bonds_xdp_v6_8.service_id.display = function(value)
  return "Service Id: "..value
end

-- Dissect: Service Id
gpw_bondspot_bonds_xdp_v6_8.service_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.service_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_bonds_xdp_v6_8.service_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.service_id, range, value, display)

  return offset + length, value
end

-- Settlement Date
gpw_bondspot_bonds_xdp_v6_8.settlement_date = {}

-- Size: Settlement Date
gpw_bondspot_bonds_xdp_v6_8.settlement_date.size = 8

-- Display: Settlement Date
gpw_bondspot_bonds_xdp_v6_8.settlement_date.display = function(value)
  if #value < 8 then
    return "Settlement Date: "..value
  end

  return "Settlement Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Settlement Date
gpw_bondspot_bonds_xdp_v6_8.settlement_date.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.settlement_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_bondspot_bonds_xdp_v6_8.settlement_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.settlement_date, range, value, display)

  return offset + length, value
end

-- Source Seq Num
gpw_bondspot_bonds_xdp_v6_8.source_seq_num = {}

-- Size: Source Seq Num
gpw_bondspot_bonds_xdp_v6_8.source_seq_num.size = 4

-- Display: Source Seq Num
gpw_bondspot_bonds_xdp_v6_8.source_seq_num.display = function(value)
  return "Source Seq Num: "..value
end

-- Dissect: Source Seq Num
gpw_bondspot_bonds_xdp_v6_8.source_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.source_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_bonds_xdp_v6_8.source_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.source_seq_num, range, value, display)

  return offset + length, value
end

-- Source Time
gpw_bondspot_bonds_xdp_v6_8.source_time = {}

-- Size: Source Time
gpw_bondspot_bonds_xdp_v6_8.source_time.size = 4

-- Display: Source Time
gpw_bondspot_bonds_xdp_v6_8.source_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if gpw_bondspot_bonds_xdp_v6_8.timestamp_format == 0 then
    return "Source Time: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if gpw_bondspot_bonds_xdp_v6_8.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = gpw_bondspot_bonds_xdp_v6_8.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Source Time: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Source Time: "..os.date("%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Source Time
gpw_bondspot_bonds_xdp_v6_8.source_time.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.source_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_bonds_xdp_v6_8.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.source_time, range, value, display)

  return offset + length, value
end

-- Source Time Micro Secs
gpw_bondspot_bonds_xdp_v6_8.source_time_micro_secs = {}

-- Size: Source Time Micro Secs
gpw_bondspot_bonds_xdp_v6_8.source_time_micro_secs.size = 2

-- Display: Source Time Micro Secs
gpw_bondspot_bonds_xdp_v6_8.source_time_micro_secs.display = function(value)
  return "Source Time Micro Secs: "..value
end

-- Dissect: Source Time Micro Secs
gpw_bondspot_bonds_xdp_v6_8.source_time_micro_secs.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.source_time_micro_secs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_bonds_xdp_v6_8.source_time_micro_secs.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.source_time_micro_secs, range, value, display)

  return offset + length, value
end

-- Symbol Index
gpw_bondspot_bonds_xdp_v6_8.symbol_index = {}

-- Size: Symbol Index
gpw_bondspot_bonds_xdp_v6_8.symbol_index.size = 4

-- Display: Symbol Index
gpw_bondspot_bonds_xdp_v6_8.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
gpw_bondspot_bonds_xdp_v6_8.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.symbol_index.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_bonds_xdp_v6_8.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- System Id
gpw_bondspot_bonds_xdp_v6_8.system_id = {}

-- Size: System Id
gpw_bondspot_bonds_xdp_v6_8.system_id.size = 4

-- Display: System Id
gpw_bondspot_bonds_xdp_v6_8.system_id.labels = {
  [1] = "System Id: All Non Utp Systems (1)",
  [11] = "System Id: Utp Trading Unit 1 (11)",
  [12] = "System Id: Utp Trading Unit 2 (12)",
}

gpw_bondspot_bonds_xdp_v6_8.system_id.display = function(value)
  return gpw_bondspot_bonds_xdp_v6_8.system_id.labels[value] or "System Id: Unknown("..value..")"
end

-- Dissect: System Id
gpw_bondspot_bonds_xdp_v6_8.system_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.system_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_bonds_xdp_v6_8.system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.system_id, range, value, display)

  return offset + length, value
end

-- Trade Id Number
gpw_bondspot_bonds_xdp_v6_8.trade_id_number = {}

-- Size: Trade Id Number
gpw_bondspot_bonds_xdp_v6_8.trade_id_number.size = 4

-- Display: Trade Id Number
gpw_bondspot_bonds_xdp_v6_8.trade_id_number.display = function(value)
  return "Trade Id Number: "..value
end

-- Dissect: Trade Id Number
gpw_bondspot_bonds_xdp_v6_8.trade_id_number.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.trade_id_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_bonds_xdp_v6_8.trade_id_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.trade_id_number, range, value, display)

  return offset + length, value
end

-- Ytm
gpw_bondspot_bonds_xdp_v6_8.ytm = {}

-- Size: Ytm
gpw_bondspot_bonds_xdp_v6_8.ytm.size = 4

-- Display: Ytm
gpw_bondspot_bonds_xdp_v6_8.ytm.display = function(value)
  return "Ytm: "..value
end

-- Dissect: Ytm
gpw_bondspot_bonds_xdp_v6_8.ytm.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.ytm.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_bonds_xdp_v6_8.ytm.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.ytm, range, value, display)

  return offset + length, value
end

-- Ytm Scale Code
gpw_bondspot_bonds_xdp_v6_8.ytm_scale_code = {}

-- Size: Ytm Scale Code
gpw_bondspot_bonds_xdp_v6_8.ytm_scale_code.size = 1

-- Display: Ytm Scale Code
gpw_bondspot_bonds_xdp_v6_8.ytm_scale_code.display = function(value)
  return "Ytm Scale Code: "..value
end

-- Dissect: Ytm Scale Code
gpw_bondspot_bonds_xdp_v6_8.ytm_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_bonds_xdp_v6_8.ytm_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_bonds_xdp_v6_8.ytm_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.ytm_scale_code, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Gpw BondSpot Bonds Xdp 6.8
-----------------------------------------------------------------------

-- Yield To Maturity Message
gpw_bondspot_bonds_xdp_v6_8.yield_to_maturity_message = {}

-- Size: Yield To Maturity Message
gpw_bondspot_bonds_xdp_v6_8.yield_to_maturity_message.size =
  gpw_bondspot_bonds_xdp_v6_8.symbol_index.size + 
  gpw_bondspot_bonds_xdp_v6_8.source_time.size + 
  gpw_bondspot_bonds_xdp_v6_8.source_seq_num.size + 
  gpw_bondspot_bonds_xdp_v6_8.system_id.size + 
  gpw_bondspot_bonds_xdp_v6_8.date.size + 
  gpw_bondspot_bonds_xdp_v6_8.price.size + 
  gpw_bondspot_bonds_xdp_v6_8.source_time_micro_secs.size + 
  gpw_bondspot_bonds_xdp_v6_8.ytm_scale_code.size + 
  gpw_bondspot_bonds_xdp_v6_8.price_scale_code.size + 
  gpw_bondspot_bonds_xdp_v6_8.ytm.size + 
  gpw_bondspot_bonds_xdp_v6_8.message_indicator.size + 
  gpw_bondspot_bonds_xdp_v6_8.algorithm_indicator.size + 
  gpw_bondspot_bonds_xdp_v6_8.maturity_indicator.size + 
  gpw_bondspot_bonds_xdp_v6_8.message_level.size + 
  gpw_bondspot_bonds_xdp_v6_8.maturity_date.size + 
  gpw_bondspot_bonds_xdp_v6_8.trade_id_number.size

-- Display: Yield To Maturity Message
gpw_bondspot_bonds_xdp_v6_8.yield_to_maturity_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Yield To Maturity Message
gpw_bondspot_bonds_xdp_v6_8.yield_to_maturity_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = gpw_bondspot_bonds_xdp_v6_8.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = gpw_bondspot_bonds_xdp_v6_8.source_time.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = gpw_bondspot_bonds_xdp_v6_8.source_seq_num.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = gpw_bondspot_bonds_xdp_v6_8.system_id.dissect(buffer, index, packet, parent)

  -- Date: Binary Int.
  index, date = gpw_bondspot_bonds_xdp_v6_8.date.dissect(buffer, index, packet, parent)

  -- Price: Binary Int.
  index, price = gpw_bondspot_bonds_xdp_v6_8.price.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = gpw_bondspot_bonds_xdp_v6_8.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Ytm Scale Code: Binary Int.
  index, ytm_scale_code = gpw_bondspot_bonds_xdp_v6_8.ytm_scale_code.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary Int.
  index, price_scale_code = gpw_bondspot_bonds_xdp_v6_8.price_scale_code.dissect(buffer, index, packet, parent)

  -- Ytm: Binary Int.
  index, ytm = gpw_bondspot_bonds_xdp_v6_8.ytm.dissect(buffer, index, packet, parent)

  -- Message Indicator: ASCII Str.
  index, message_indicator = gpw_bondspot_bonds_xdp_v6_8.message_indicator.dissect(buffer, index, packet, parent)

  -- Algorithm Indicator: ASCII Str.
  index, algorithm_indicator = gpw_bondspot_bonds_xdp_v6_8.algorithm_indicator.dissect(buffer, index, packet, parent)

  -- Maturity Indicator: ASCII Str.
  index, maturity_indicator = gpw_bondspot_bonds_xdp_v6_8.maturity_indicator.dissect(buffer, index, packet, parent)

  -- Message Level: ASCII Str.
  index, message_level = gpw_bondspot_bonds_xdp_v6_8.message_level.dissect(buffer, index, packet, parent)

  -- Maturity Date: Binary Int.
  index, maturity_date = gpw_bondspot_bonds_xdp_v6_8.maturity_date.dissect(buffer, index, packet, parent)

  -- Trade Id Number: Binary Int.
  index, trade_id_number = gpw_bondspot_bonds_xdp_v6_8.trade_id_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Yield To Maturity Message
gpw_bondspot_bonds_xdp_v6_8.yield_to_maturity_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.yield_to_maturity_message, buffer(offset, 0))
    local index = gpw_bondspot_bonds_xdp_v6_8.yield_to_maturity_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_bondspot_bonds_xdp_v6_8.yield_to_maturity_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_bondspot_bonds_xdp_v6_8.yield_to_maturity_message.fields(buffer, offset, packet, parent)
  end
end

-- Interest For Settlement Day Message
gpw_bondspot_bonds_xdp_v6_8.interest_for_settlement_day_message = {}

-- Size: Interest For Settlement Day Message
gpw_bondspot_bonds_xdp_v6_8.interest_for_settlement_day_message.size =
  gpw_bondspot_bonds_xdp_v6_8.symbol_index.size + 
  gpw_bondspot_bonds_xdp_v6_8.source_time.size + 
  gpw_bondspot_bonds_xdp_v6_8.source_seq_num.size + 
  gpw_bondspot_bonds_xdp_v6_8.system_id.size + 
  gpw_bondspot_bonds_xdp_v6_8.date.size + 
  gpw_bondspot_bonds_xdp_v6_8.settlement_date.size + 
  gpw_bondspot_bonds_xdp_v6_8.interest.size + 
  gpw_bondspot_bonds_xdp_v6_8.source_time_micro_secs.size + 
  gpw_bondspot_bonds_xdp_v6_8.currency.size + 
  gpw_bondspot_bonds_xdp_v6_8.interest_scale_code.size + 
  gpw_bondspot_bonds_xdp_v6_8.reserved_2.size

-- Display: Interest For Settlement Day Message
gpw_bondspot_bonds_xdp_v6_8.interest_for_settlement_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Interest For Settlement Day Message
gpw_bondspot_bonds_xdp_v6_8.interest_for_settlement_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = gpw_bondspot_bonds_xdp_v6_8.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = gpw_bondspot_bonds_xdp_v6_8.source_time.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = gpw_bondspot_bonds_xdp_v6_8.source_seq_num.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = gpw_bondspot_bonds_xdp_v6_8.system_id.dissect(buffer, index, packet, parent)

  -- Date: Binary Int.
  index, date = gpw_bondspot_bonds_xdp_v6_8.date.dissect(buffer, index, packet, parent)

  -- Settlement Date: ASCII Ch.
  index, settlement_date = gpw_bondspot_bonds_xdp_v6_8.settlement_date.dissect(buffer, index, packet, parent)

  -- Interest: Binary Int.
  index, interest = gpw_bondspot_bonds_xdp_v6_8.interest.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = gpw_bondspot_bonds_xdp_v6_8.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Currency: ASCII Str.
  index, currency = gpw_bondspot_bonds_xdp_v6_8.currency.dissect(buffer, index, packet, parent)

  -- Interest Scale Code: Binary Int.
  index, interest_scale_code = gpw_bondspot_bonds_xdp_v6_8.interest_scale_code.dissect(buffer, index, packet, parent)

  -- Reserved 2: Binary Int.
  index, reserved_2 = gpw_bondspot_bonds_xdp_v6_8.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Interest For Settlement Day Message
gpw_bondspot_bonds_xdp_v6_8.interest_for_settlement_day_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.interest_for_settlement_day_message, buffer(offset, 0))
    local index = gpw_bondspot_bonds_xdp_v6_8.interest_for_settlement_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_bondspot_bonds_xdp_v6_8.interest_for_settlement_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_bondspot_bonds_xdp_v6_8.interest_for_settlement_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Accrued Interest Group
gpw_bondspot_bonds_xdp_v6_8.accrued_interest_group = {}

-- Size: Accrued Interest Group
gpw_bondspot_bonds_xdp_v6_8.accrued_interest_group.size =
  gpw_bondspot_bonds_xdp_v6_8.date.size + 
  gpw_bondspot_bonds_xdp_v6_8.accrued_interest.size

-- Display: Accrued Interest Group
gpw_bondspot_bonds_xdp_v6_8.accrued_interest_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Accrued Interest Group
gpw_bondspot_bonds_xdp_v6_8.accrued_interest_group.fields = function(buffer, offset, packet, parent, accrued_interest_group_index)
  local index = offset

  -- Implicit Accrued Interest Group Index
  if accrued_interest_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.accrued_interest_group_index, accrued_interest_group_index)
    iteration:set_generated()
  end

  -- Date: Binary Int.
  index, date = gpw_bondspot_bonds_xdp_v6_8.date.dissect(buffer, index, packet, parent)

  -- Accrued Interest: Binary Int.
  index, accrued_interest = gpw_bondspot_bonds_xdp_v6_8.accrued_interest.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Accrued Interest Group
gpw_bondspot_bonds_xdp_v6_8.accrued_interest_group.dissect = function(buffer, offset, packet, parent, accrued_interest_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.accrued_interest_group, buffer(offset, 0))
    local index = gpw_bondspot_bonds_xdp_v6_8.accrued_interest_group.fields(buffer, offset, packet, parent, accrued_interest_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_bondspot_bonds_xdp_v6_8.accrued_interest_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_bondspot_bonds_xdp_v6_8.accrued_interest_group.fields(buffer, offset, packet, parent, accrued_interest_group_index)
  end
end

-- Accrued Interest Message
gpw_bondspot_bonds_xdp_v6_8.accrued_interest_message = {}

-- Size: Accrued Interest Message
gpw_bondspot_bonds_xdp_v6_8.accrued_interest_message.size =
  gpw_bondspot_bonds_xdp_v6_8.symbol_index.size + 
  gpw_bondspot_bonds_xdp_v6_8.source_time.size + 
  gpw_bondspot_bonds_xdp_v6_8.source_seq_num.size + 
  gpw_bondspot_bonds_xdp_v6_8.system_id.size + 
  gpw_bondspot_bonds_xdp_v6_8.number_days.size + 
  gpw_bondspot_bonds_xdp_v6_8.source_time_micro_secs.size + 
  gpw_bondspot_bonds_xdp_v6_8.accrued_interest_scale_code.size + 
  gpw_bondspot_bonds_xdp_v6_8.reserved_3.size + 
  31 * gpw_bondspot_bonds_xdp_v6_8.accrued_interest_group.size

-- Display: Accrued Interest Message
gpw_bondspot_bonds_xdp_v6_8.accrued_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Accrued Interest Message
gpw_bondspot_bonds_xdp_v6_8.accrued_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = gpw_bondspot_bonds_xdp_v6_8.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = gpw_bondspot_bonds_xdp_v6_8.source_time.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = gpw_bondspot_bonds_xdp_v6_8.source_seq_num.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = gpw_bondspot_bonds_xdp_v6_8.system_id.dissect(buffer, index, packet, parent)

  -- Number Days: Binary Int.
  index, number_days = gpw_bondspot_bonds_xdp_v6_8.number_days.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = gpw_bondspot_bonds_xdp_v6_8.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Accrued Interest Scale Code: Binary Int.
  index, accrued_interest_scale_code = gpw_bondspot_bonds_xdp_v6_8.accrued_interest_scale_code.dissect(buffer, index, packet, parent)

  -- Reserved 3: Binary Int.
  index, reserved_3 = gpw_bondspot_bonds_xdp_v6_8.reserved_3.dissect(buffer, index, packet, parent)

  -- Array Of: Accrued Interest Group
  for accrued_interest_group_index = 1, 31 do
    index, accrued_interest_group = gpw_bondspot_bonds_xdp_v6_8.accrued_interest_group.dissect(buffer, index, packet, parent, accrued_interest_group_index)
  end

  return index
end

-- Dissect: Accrued Interest Message
gpw_bondspot_bonds_xdp_v6_8.accrued_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.accrued_interest_message, buffer(offset, 0))
    local index = gpw_bondspot_bonds_xdp_v6_8.accrued_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_bondspot_bonds_xdp_v6_8.accrued_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_bondspot_bonds_xdp_v6_8.accrued_interest_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
gpw_bondspot_bonds_xdp_v6_8.payload = {}

-- Dissect: Payload
gpw_bondspot_bonds_xdp_v6_8.payload.dispatch = {
  [601] = gpw_bondspot_bonds_xdp_v6_8.accrued_interest_message.dissect,
  [602] = gpw_bondspot_bonds_xdp_v6_8.interest_for_settlement_day_message.dissect,
  [603] = gpw_bondspot_bonds_xdp_v6_8.yield_to_maturity_message.dissect,
}

gpw_bondspot_bonds_xdp_v6_8.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = gpw_bondspot_bonds_xdp_v6_8.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
gpw_bondspot_bonds_xdp_v6_8.message_header = {}

-- Size: Message Header
gpw_bondspot_bonds_xdp_v6_8.message_header.size =
  gpw_bondspot_bonds_xdp_v6_8.message_size.size + 
  gpw_bondspot_bonds_xdp_v6_8.message_type.size

-- Display: Message Header
gpw_bondspot_bonds_xdp_v6_8.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
gpw_bondspot_bonds_xdp_v6_8.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: Binary Int.
  index, message_size = gpw_bondspot_bonds_xdp_v6_8.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: Binary Int.
  index, message_type = gpw_bondspot_bonds_xdp_v6_8.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
gpw_bondspot_bonds_xdp_v6_8.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.message_header, buffer(offset, 0))
    local index = gpw_bondspot_bonds_xdp_v6_8.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_bondspot_bonds_xdp_v6_8.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_bondspot_bonds_xdp_v6_8.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
gpw_bondspot_bonds_xdp_v6_8.message = {}

-- Display: Message
gpw_bondspot_bonds_xdp_v6_8.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
gpw_bondspot_bonds_xdp_v6_8.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = gpw_bondspot_bonds_xdp_v6_8.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):uint()

  -- Payload: Runtime Type with 3 branches
  index = gpw_bondspot_bonds_xdp_v6_8.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
gpw_bondspot_bonds_xdp_v6_8.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.message, buffer(offset, 0))
    local current = gpw_bondspot_bonds_xdp_v6_8.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = gpw_bondspot_bonds_xdp_v6_8.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    gpw_bondspot_bonds_xdp_v6_8.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
gpw_bondspot_bonds_xdp_v6_8.packet_header = {}

-- Size: Packet Header
gpw_bondspot_bonds_xdp_v6_8.packet_header.size =
  gpw_bondspot_bonds_xdp_v6_8.packet_length.size + 
  gpw_bondspot_bonds_xdp_v6_8.packet_type.size + 
  gpw_bondspot_bonds_xdp_v6_8.packet_sequence_number.size + 
  gpw_bondspot_bonds_xdp_v6_8.send_time.size + 
  gpw_bondspot_bonds_xdp_v6_8.service_id.size + 
  gpw_bondspot_bonds_xdp_v6_8.delivery_flag.size + 
  gpw_bondspot_bonds_xdp_v6_8.number_msg_entries.size

-- Display: Packet Header
gpw_bondspot_bonds_xdp_v6_8.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
gpw_bondspot_bonds_xdp_v6_8.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: Binary Int.
  index, packet_length = gpw_bondspot_bonds_xdp_v6_8.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: Binary Int.
  index, packet_type = gpw_bondspot_bonds_xdp_v6_8.packet_type.dissect(buffer, index, packet, parent)

  -- Packet Sequence Number: Binary Int.
  index, packet_sequence_number = gpw_bondspot_bonds_xdp_v6_8.packet_sequence_number.dissect(buffer, index, packet, parent)

  -- Send Time: Binary Int.
  index, send_time = gpw_bondspot_bonds_xdp_v6_8.send_time.dissect(buffer, index, packet, parent)

  -- Service Id: Binary Int.
  index, service_id = gpw_bondspot_bonds_xdp_v6_8.service_id.dissect(buffer, index, packet, parent)

  -- Delivery Flag: Binary Int.
  index, delivery_flag = gpw_bondspot_bonds_xdp_v6_8.delivery_flag.dissect(buffer, index, packet, parent)

  -- Number Msg Entries: Binary Int.
  index, number_msg_entries = gpw_bondspot_bonds_xdp_v6_8.number_msg_entries.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
gpw_bondspot_bonds_xdp_v6_8.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_bondspot_bonds_xdp_v6_8.fields.packet_header, buffer(offset, 0))
    local index = gpw_bondspot_bonds_xdp_v6_8.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_bondspot_bonds_xdp_v6_8.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_bondspot_bonds_xdp_v6_8.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
gpw_bondspot_bonds_xdp_v6_8.packet = {}

-- Verify required size of Udp packet
gpw_bondspot_bonds_xdp_v6_8.packet.requiredsize = function(buffer)
  return buffer:len() >= gpw_bondspot_bonds_xdp_v6_8.packet_header.size
end

-- Dissect Packet
gpw_bondspot_bonds_xdp_v6_8.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 7 fields
  index, packet_header = gpw_bondspot_bonds_xdp_v6_8.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Delivery Flag
  local delivery_flag = buffer(index - 2, 1):uint()

  local message_conversion = delivery_flag > 15

  if message_conversion then
    buffer = zlib_decompress(buffer(index, buffer:len() - index))
    index = 0
  end

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_size + 2

    -- Message: Struct of 2 fields
    index, message = gpw_bondspot_bonds_xdp_v6_8.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_gpw_bondspot_bonds_xdp_v6_8.init()
end

-- Dissector for Gpw BondSpot Bonds Xdp 6.8
function omi_gpw_bondspot_bonds_xdp_v6_8.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_gpw_bondspot_bonds_xdp_v6_8.name

  -- Dissect protocol
  local protocol = parent:add(omi_gpw_bondspot_bonds_xdp_v6_8, buffer(), omi_gpw_bondspot_bonds_xdp_v6_8.description, "("..buffer:len().." Bytes)")
  return gpw_bondspot_bonds_xdp_v6_8.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
gpw_bondspot_bonds_xdp_v6_8.packet.fingerprint = function(buffer)
  if buffer:len() < 20 then
    return false
  end

  local message_type = buffer(18, 2):uint()

  -- Accrued Interest Message
  if message_type == 601 then
    return true
  end

  -- Interest For Settlement Day Message
  if message_type == 602 then
    return true
  end

  -- Yield To Maturity Message
  if message_type == 603 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Gpw BondSpot Bonds Xdp 6.8 (Udp)
local function omi_gpw_bondspot_bonds_xdp_v6_8_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not gpw_bondspot_bonds_xdp_v6_8.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not gpw_bondspot_bonds_xdp_v6_8.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_gpw_bondspot_bonds_xdp_v6_8
  omi_gpw_bondspot_bonds_xdp_v6_8.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Gpw BondSpot Bonds Xdp 6.8
omi_gpw_bondspot_bonds_xdp_v6_8:register_heuristic("udp", omi_gpw_bondspot_bonds_xdp_v6_8_udp_heuristic)

-- Register Gpw BondSpot Bonds Xdp 6.8 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_gpw_bondspot_bonds_xdp_v6_8)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Giełda Papierów Wartościowych w Warszawie
--   Version: 6.8
--   Date: Tuesday, February 11, 2020
--   Specification: WSE_CDE_XDP_Message_Specifications_v_68.pdf
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
