-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe TitaniumConsolidated OneOptions Pitch 1.1.19 Protocol
local omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19 = Proto("Omi.Cboe.TitaniumConsolidated.OneOptions.Pitch.v1.1.19", "Cboe TitaniumConsolidated OneOptions Pitch 1.1.19")

-- Protocol table
local cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe TitaniumConsolidated OneOptions Pitch 1.1.19 Fields
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.cboe_cumulative_executed_volume_long = ProtoField.new("Cboe Cumulative Executed Volume Long", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.cboecumulativeexecutedvolumelong", ftypes.UINT64, nil, nil, nil, "Cumulative number of shares traded today across all applicable Cboe books.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.cboe_cumulative_executed_volume_short = ProtoField.new("Cboe Cumulative Executed Volume Short", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.cboecumulativeexecutedvolumeshort", ftypes.UINT32, nil, nil, nil, "Cumulative number of shares traded today across all applicable Cboe books.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.consolidated_best_ask_price_long = ProtoField.new("Consolidated Best Ask Price Long", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.consolidatedbestaskpricelong", ftypes.DOUBLE, nil, nil, nil, "Titanium Options best ask price.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.consolidated_best_ask_price_short = ProtoField.new("Consolidated Best Ask Price Short", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.consolidatedbestaskpriceshort", ftypes.DOUBLE, nil, nil, nil, "Titanium Options best ask price.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.consolidated_best_ask_quantity_long = ProtoField.new("Consolidated Best Ask Quantity Long", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.consolidatedbestaskquantitylong", ftypes.UINT64, nil, nil, nil, "Titanium Options number of sell-side shares available for this symbol.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.consolidated_best_ask_quantity_short = ProtoField.new("Consolidated Best Ask Quantity Short", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.consolidatedbestaskquantityshort", ftypes.UINT32, nil, nil, nil, "Titanium Options number of sell-side shares available for this symbol.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.consolidated_best_bid_price_long = ProtoField.new("Consolidated Best Bid Price Long", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.consolidatedbestbidpricelong", ftypes.DOUBLE, nil, nil, nil, "Titanium Options best bid price.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.consolidated_best_bid_price_short = ProtoField.new("Consolidated Best Bid Price Short", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.consolidatedbestbidpriceshort", ftypes.DOUBLE, nil, nil, nil, "Titanium Options best bid price.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.consolidated_best_bid_quantity_long = ProtoField.new("Consolidated Best Bid Quantity Long", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.consolidatedbestbidquantitylong", ftypes.UINT64, nil, nil, nil, "Titanium Options number of buy-side shares available for this symbol.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.consolidated_best_bid_quantity_short = ProtoField.new("Consolidated Best Bid Quantity Short", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.consolidatedbestbidquantityshort", ftypes.UINT32, nil, nil, nil, "Titanium Options number of buy-side shares available for this symbol.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.consolidated_best_quote_price = ProtoField.new("Consolidated Best Quote Price", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.consolidatedbestquoteprice", ftypes.DOUBLE, nil, nil, nil, "Titanium Options best price.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.consolidated_quote_quantity = ProtoField.new("Consolidated Quote Quantity", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.consolidatedquotequantity", ftypes.UINT64, nil, nil, nil, "Titanium Options number of shares available for this symbol.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.halt_status = ProtoField.new("Halt Status", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.haltstatus", ftypes.STRING, nil, nil, nil, "Trading halt status indicator.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.last_price = ProtoField.new("Last Price", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.lastprice", ftypes.DOUBLE, nil, nil, nil, "Last trade price.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.last_quantity = ProtoField.new("Last Quantity", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.lastquantity", ftypes.UINT64, nil, nil, nil, "Last trade quantity.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.last_update_timestamp = ProtoField.new("Last Update Timestamp", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.lastupdatetimestamp", ftypes.UINT64, nil, nil, nil, "Timestamp of the last matching engine message that updated the quote information for this symbol in the Cboe One Options server's cache. Encoded as the number of nanoseconds since midnight.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.length = ProtoField.new("Length", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.length", ftypes.UINT16, nil, nil, nil, "Length of entire block of messages. Includes this header and Message Count messages to follow")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.market_center = ProtoField.new("Market Center", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.marketcenter", ftypes.STRING, nil, nil, nil, "Market Center identifier.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.market_center_execution_id = ProtoField.new("Market Center Execution Id", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.marketcenterexecutionid", ftypes.UINT64, nil, nil, nil, "Market center specific execution identifier of this Execution. Execution ID is also referenced in the Trade Break message.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.market_status = ProtoField.new("Market Status", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.marketstatus", ftypes.STRING, nil, nil, nil, "Market status indicator.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.message_count = ProtoField.new("Message Count", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.messagecount", ftypes.UINT8, nil, nil, nil, "Number of messages to follow this header")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.message_length = ProtoField.new("Message Length", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.messagelength", ftypes.UINT8, nil, nil, nil, "Current Pitch message length")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.message_type = ProtoField.new("Message Type", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying this message type")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.reserved1", ftypes.BYTES, nil, nil, nil, "Reserved.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.reserved_5 = ProtoField.new("Reserved 5", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.reserved5", ftypes.BYTES, nil, nil, nil, "Reserved.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.reserved_8 = ProtoField.new("Reserved 8", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.reserved8", ftypes.BYTES, nil, nil, nil, "Reserved.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.reserved_9 = ProtoField.new("Reserved 9", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.reserved9", ftypes.BYTES, nil, nil, nil, "Reserved.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.sequence = ProtoField.new("Sequence", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.sequence", ftypes.UINT32, nil, nil, nil, "Sequence Number of the first message to follow this header")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.sideindicator", ftypes.STRING, nil, nil, nil, "Side indicator.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.symbol = ProtoField.new("Symbol", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.symbol", ftypes.STRING, nil, nil, nil, "Symbol right padded with spaces.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.timestamp = ProtoField.new("Timestamp", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.timestamp", ftypes.UINT64, nil, nil, nil, "Timestamp of when the Market Status changed for the specified Market Center. Encoded as the number of nanoseconds since midnight.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.tradecondition", ftypes.STRING, nil, nil, nil, "Options trade condition code.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.transaction_time = ProtoField.new("Transaction Time", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.transactiontime", ftypes.UINT64, nil, nil, nil, "The time the trade occurred on the specified Market Center. Encoded as the number of nanoseconds since midnight.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.unit = ProtoField.new("Unit", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.unit", ftypes.UINT8, nil, nil, nil, "Unit that applies to messages included in this header")

-- Cboe TitaniumConsolidated OneOptions Pitch 1.1.19 Framing
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.message = ProtoField.new("Message", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.message", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.message_header = ProtoField.new("Message Header", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.messageheader", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.packet = ProtoField.new("Packet", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.packet", ftypes.STRING, nil, nil, nil, "Pitch Udp Packet")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.packet_header = ProtoField.new("Packet Header", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.packetheader", ftypes.STRING)

-- Cboe TitaniumConsolidated OneOptions 1.1.19 Application Messages
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.best_quote_update_message = ProtoField.new("Best Quote Update Message", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.bestquoteupdatemessage", ftypes.STRING, nil, nil, nil, "The Best Quote Update message is used to update one side of the Cboe consolidated quote information for a symbol. Since the message only updates one side of the quote, the previous value for the other side of the quote remains in effect. This message does not affect the executed volume of the symbol.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.cboe_market_status_message = ProtoField.new("Cboe Market Status Message", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.cboemarketstatusmessage", ftypes.STRING, nil, nil, nil, "The Cboe Market Status message is disseminated to reflect a change in the status of a market. All markets should be assumed to be Normal unless otherwise indicated by a Cboe Market Status message.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.long_symbol_summary_message = ProtoField.new("Long Symbol Summary Message", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.longsymbolsummarymessage", ftypes.STRING, nil, nil, nil, "The Long Symbol Summary message delivers the Cboe consolidated best bid/offer and total executed volume across all applicable Cboe One Options books.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.short_symbol_summary_message = ProtoField.new("Short Symbol Summary Message", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.shortsymbolsummarymessage", ftypes.STRING, nil, nil, nil, "The Short Symbol Summary message delivers the Cboe consolidated best bid/offer and total executed volume across all applicable Cboe One Options books.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.tradebreakmessage", ftypes.STRING, nil, nil, nil, "The Trade Break message is sent whenever an execution on a Cboe exchange is broken. Trade breaks are rare and only affect applications that rely upon Cboe execution based data.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.trade_message = ProtoField.new("Trade Message", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.trademessage", ftypes.STRING, nil, nil, nil, "Trade messages are sent when an order is executed in whole or in part on a Cboe exchange.")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.tradingstatusmessage", ftypes.STRING, nil, nil, nil, "The Trading Status message is used to indicate the current trading status of an options contract on a Cboe exchange.")

-- Cboe TitaniumConsolidated OneOptions Pitch 1.1.19 Generated Fields
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.message_index = ProtoField.new("Message Index", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.messageindex", ftypes.UINT16)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "cboe.titaniumconsolidated.oneoptions.pitch.v1.1.19.messagesequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Cboe TitaniumConsolidated OneOptions Pitch 1.1.19 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.timestamp_format = 2

-- Hours behind UTC (EST) for midnight calculation
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.utc_offset_hours = 5


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe TitaniumConsolidated OneOptions Pitch 1.1.19 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Cboe TitaniumConsolidated OneOptions Pitch 1.1.19 Show Options
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.prefs.timestamp_format = Pref.enum("Last Update Timestamp Format", 2, "Last Update Timestamp display format", timestamp_format_enum, false)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.prefs.show_application_messages then
    show.application_messages = omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.prefs.show_headers then
    show.headers = omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.prefs.show_headers
  end
  if show.structs ~= omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.prefs.show_structs then
    show.structs = omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.prefs.show_indexes then
    show.indexes = omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.prefs.show_indexes
  end
  if show.sequences ~= omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.prefs.show_sequences then
    show.sequences = omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.prefs.show_sequences
  end
  if cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.timestamp_format ~= omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.prefs.timestamp_format then
    cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.timestamp_format = omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.prefs.timestamp_format
  end
  if cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.utc_offset_hours ~= omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.prefs.utc_offset_hours then
    cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.utc_offset_hours = omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.prefs.utc_offset_hours
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
-- Cboe TitaniumConsolidated OneOptions Pitch 1.1.19 Fields
-----------------------------------------------------------------------

-- Cboe Cumulative Executed Volume Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.cboe_cumulative_executed_volume_long = {}

-- Size: Cboe Cumulative Executed Volume Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.cboe_cumulative_executed_volume_long.size = 8

-- Display: Cboe Cumulative Executed Volume Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.cboe_cumulative_executed_volume_long.display = function(value)
  return "Cboe Cumulative Executed Volume Long: "..value
end

-- Dissect: Cboe Cumulative Executed Volume Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.cboe_cumulative_executed_volume_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.cboe_cumulative_executed_volume_long.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.cboe_cumulative_executed_volume_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.cboe_cumulative_executed_volume_long, range, value, display)

  return offset + length, value
end

-- Cboe Cumulative Executed Volume Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.cboe_cumulative_executed_volume_short = {}

-- Size: Cboe Cumulative Executed Volume Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.cboe_cumulative_executed_volume_short.size = 4

-- Display: Cboe Cumulative Executed Volume Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.cboe_cumulative_executed_volume_short.display = function(value)
  return "Cboe Cumulative Executed Volume Short: "..value
end

-- Dissect: Cboe Cumulative Executed Volume Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.cboe_cumulative_executed_volume_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.cboe_cumulative_executed_volume_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.cboe_cumulative_executed_volume_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.cboe_cumulative_executed_volume_short, range, value, display)

  return offset + length, value
end

-- Consolidated Best Ask Price Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_price_long = {}

-- Size: Consolidated Best Ask Price Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_price_long.size = 8

-- Display: Consolidated Best Ask Price Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_price_long.display = function(value)
  return "Consolidated Best Ask Price Long: "..value
end

-- Translate: Consolidated Best Ask Price Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_price_long.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Consolidated Best Ask Price Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_price_long.translate(raw)
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.consolidated_best_ask_price_long, range, value, display)

  return offset + length, value
end

-- Consolidated Best Ask Price Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_price_short = {}

-- Size: Consolidated Best Ask Price Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_price_short.size = 4

-- Display: Consolidated Best Ask Price Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_price_short.display = function(value)
  return "Consolidated Best Ask Price Short: "..value
end

-- Translate: Consolidated Best Ask Price Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_price_short.translate = function(raw)
  return raw/10000
end

-- Dissect: Consolidated Best Ask Price Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_price_short.translate(raw)
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.consolidated_best_ask_price_short, range, value, display)

  return offset + length, value
end

-- Consolidated Best Ask Quantity Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_quantity_long = {}

-- Size: Consolidated Best Ask Quantity Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_quantity_long.size = 8

-- Display: Consolidated Best Ask Quantity Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_quantity_long.display = function(value)
  return "Consolidated Best Ask Quantity Long: "..value
end

-- Dissect: Consolidated Best Ask Quantity Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.consolidated_best_ask_quantity_long, range, value, display)

  return offset + length, value
end

-- Consolidated Best Ask Quantity Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_quantity_short = {}

-- Size: Consolidated Best Ask Quantity Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_quantity_short.size = 4

-- Display: Consolidated Best Ask Quantity Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_quantity_short.display = function(value)
  return "Consolidated Best Ask Quantity Short: "..value
end

-- Dissect: Consolidated Best Ask Quantity Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.consolidated_best_ask_quantity_short, range, value, display)

  return offset + length, value
end

-- Consolidated Best Bid Price Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_price_long = {}

-- Size: Consolidated Best Bid Price Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_price_long.size = 8

-- Display: Consolidated Best Bid Price Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_price_long.display = function(value)
  return "Consolidated Best Bid Price Long: "..value
end

-- Translate: Consolidated Best Bid Price Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_price_long.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Consolidated Best Bid Price Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_price_long.translate(raw)
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.consolidated_best_bid_price_long, range, value, display)

  return offset + length, value
end

-- Consolidated Best Bid Price Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_price_short = {}

-- Size: Consolidated Best Bid Price Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_price_short.size = 4

-- Display: Consolidated Best Bid Price Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_price_short.display = function(value)
  return "Consolidated Best Bid Price Short: "..value
end

-- Translate: Consolidated Best Bid Price Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_price_short.translate = function(raw)
  return raw/10000
end

-- Dissect: Consolidated Best Bid Price Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_price_short.translate(raw)
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.consolidated_best_bid_price_short, range, value, display)

  return offset + length, value
end

-- Consolidated Best Bid Quantity Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_quantity_long = {}

-- Size: Consolidated Best Bid Quantity Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_quantity_long.size = 8

-- Display: Consolidated Best Bid Quantity Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_quantity_long.display = function(value)
  return "Consolidated Best Bid Quantity Long: "..value
end

-- Dissect: Consolidated Best Bid Quantity Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.consolidated_best_bid_quantity_long, range, value, display)

  return offset + length, value
end

-- Consolidated Best Bid Quantity Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_quantity_short = {}

-- Size: Consolidated Best Bid Quantity Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_quantity_short.size = 4

-- Display: Consolidated Best Bid Quantity Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_quantity_short.display = function(value)
  return "Consolidated Best Bid Quantity Short: "..value
end

-- Dissect: Consolidated Best Bid Quantity Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.consolidated_best_bid_quantity_short, range, value, display)

  return offset + length, value
end

-- Consolidated Best Quote Price
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_quote_price = {}

-- Size: Consolidated Best Quote Price
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_quote_price.size = 8

-- Display: Consolidated Best Quote Price
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_quote_price.display = function(value)
  return "Consolidated Best Quote Price: "..value
end

-- Translate: Consolidated Best Quote Price
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_quote_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Consolidated Best Quote Price
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_quote_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_quote_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_quote_price.translate(raw)
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_quote_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.consolidated_best_quote_price, range, value, display)

  return offset + length, value
end

-- Consolidated Quote Quantity
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_quote_quantity = {}

-- Size: Consolidated Quote Quantity
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_quote_quantity.size = 8

-- Display: Consolidated Quote Quantity
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_quote_quantity.display = function(value)
  return "Consolidated Quote Quantity: "..value
end

-- Dissect: Consolidated Quote Quantity
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_quote_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_quote_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_quote_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.consolidated_quote_quantity, range, value, display)

  return offset + length, value
end

-- Halt Status
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.halt_status = {}

-- Size: Halt Status
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.halt_status.size = 1

-- Display: Halt Status
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.halt_status.display = function(value)
  if value == "H" then
    return "Halt Status: Halted (H)"
  end
  if value == "Q" then
    return "Halt Status: Quote Only (Q)"
  end
  if value == "R" then
    return "Halt Status: Opening Rotation (R)"
  end
  if value == "T" then
    return "Halt Status: Trading (T)"
  end

  return "Halt Status: Unknown("..value..")"
end

-- Dissect: Halt Status
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.halt_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.halt_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.halt_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.halt_status, range, value, display)

  return offset + length, value
end

-- Last Price
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.last_price = {}

-- Size: Last Price
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.last_price.size = 8

-- Display: Last Price
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.last_price.display = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.last_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Last Price
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.last_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.last_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.last_price.translate(raw)
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.last_price, range, value, display)

  return offset + length, value
end

-- Last Quantity
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.last_quantity = {}

-- Size: Last Quantity
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.last_quantity.size = 8

-- Display: Last Quantity
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.last_quantity.display = function(value)
  return "Last Quantity: "..value
end

-- Dissect: Last Quantity
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.last_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.last_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.last_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.last_quantity, range, value, display)

  return offset + length, value
end

-- Last Update Timestamp
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.last_update_timestamp = {}

-- Size: Last Update Timestamp
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.last_update_timestamp.size = 8

-- Display: Last Update Timestamp
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.last_update_timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.timestamp_format == 0 then
    return "Last Update Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Last Update Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Last Update Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Last Update Timestamp
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.last_update_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.last_update_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.last_update_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.last_update_timestamp, range, value, display)

  return offset + length, value
end

-- Length
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.length = {}

-- Size: Length
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.length.size = 2

-- Display: Length
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.length, range, value, display)

  return offset + length, value
end

-- Market Center
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_center = {}

-- Size: Market Center
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_center.size = 1

-- Display: Market Center
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_center.display = function(value)
  if value == "B" then
    return "Market Center: C 1 (B)"
  end
  if value == "W" then
    return "Market Center: C 2 (W)"
  end
  if value == "X" then
    return "Market Center: Edgx (X)"
  end
  if value == "Z" then
    return "Market Center: Bzx (Z)"
  end

  return "Market Center: Unknown("..value..")"
end

-- Dissect: Market Center
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_center.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_center.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_center.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.market_center, range, value, display)

  return offset + length, value
end

-- Market Center Execution Id
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_center_execution_id = {}

-- Size: Market Center Execution Id
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_center_execution_id.size = 8

-- Display: Market Center Execution Id
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_center_execution_id.display = function(value)
  return "Market Center Execution Id: "..value
end

-- Dissect: Market Center Execution Id
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_center_execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_center_execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_center_execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.market_center_execution_id, range, value, display)

  return offset + length, value
end

-- Market Status
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_status = {}

-- Size: Market Status
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_status.size = 1

-- Display: Market Status
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_status.display = function(value)
  if value == "N" then
    return "Market Status: Normal (N)"
  end
  if value == "E" then
    return "Market Status: Excluded From Symbol Summary Updates (E)"
  end
  if value == "I" then
    return "Market Status: Incomplete (I)"
  end

  return "Market Status: Unknown("..value..")"
end

-- Dissect: Market Status
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.market_status, range, value, display)

  return offset + length, value
end

-- Message Count
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_count = {}

-- Size: Message Count
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_count.size = 1

-- Display: Message Count
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_length = {}

-- Size: Message Length
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_length.size = 1

-- Display: Message Length
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_type = {}

-- Size: Message Type
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_type.size = 1

-- Display: Message Type
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_type.display = function(value)
  if value == 0xA4 then
    return "Message Type: Short Symbol Summary Message (0xA4)"
  end
  if value == 0xA3 then
    return "Message Type: Long Symbol Summary Message (0xA3)"
  end
  if value == 0xA5 then
    return "Message Type: Best Quote Update Message (0xA5)"
  end
  if value == 0xA6 then
    return "Message Type: Cboe Market Status Message (0xA6)"
  end
  if value == 0xA9 then
    return "Message Type: Trade Message (0xA9)"
  end
  if value == 0xAA then
    return "Message Type: Trade Break Message (0xAA)"
  end
  if value == 0xAB then
    return "Message Type: Trading Status Message (0xAB)"
  end

  return "Message Type: Unknown("..string.format("0x%02X", value)..")"
end

-- Dissect: Message Type
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.message_type, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_1 = {}

-- Size: Reserved 1
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_1.size = 1

-- Display: Reserved 1
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 5
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_5 = {}

-- Size: Reserved 5
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_5.size = 5

-- Display: Reserved 5
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_5.display = function(value)
  return "Reserved 5: "..value
end

-- Dissect: Reserved 5
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_5.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.reserved_5, range, value, display)

  return offset + length, value
end

-- Reserved 8
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_8 = {}

-- Size: Reserved 8
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_8.size = 8

-- Display: Reserved 8
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Reserved 9
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_9 = {}

-- Size: Reserved 9
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_9.size = 9

-- Display: Reserved 9
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_9.display = function(value)
  return "Reserved 9: "..value
end

-- Dissect: Reserved 9
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_9.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_9.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_9.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.reserved_9, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.sequence = {}

-- Size: Sequence
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.sequence.size = 4

-- Display: Sequence
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.sequence, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.side_indicator = {}

-- Size: Side Indicator
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.side_indicator.size = 1

-- Display: Side Indicator
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.side_indicator.display = function(value)
  if value == "B" then
    return "Side Indicator: Buy Side (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Side (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.symbol = {}

-- Size: Symbol
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.symbol.size = 8

-- Display: Symbol
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.symbol, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.timestamp = {}

-- Size: Timestamp
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.timestamp.size = 8

-- Display: Timestamp
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Condition
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trade_condition = {}

-- Size: Trade Condition
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trade_condition.size = 1

-- Display: Trade Condition
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trade_condition.display = function(value)
  if value == "a" then
    return "Trade Condition: Single Leg Auction Non Iso (a)"
  end
  if value == "b" then
    return "Trade Condition: Single Leg Auction Iso (b)"
  end
  if value == "c" then
    return "Trade Condition: Single Leg Cross Non Iso (c)"
  end
  if value == "d" then
    return "Trade Condition: Single Leg Cross Iso (d)"
  end
  if value == "e" then
    return "Trade Condition: Single Leg Floor Trade (e)"
  end
  if value == "f" then
    return "Trade Condition: Complex To Complex Electronic Trade (f)"
  end
  if value == "g" then
    return "Trade Condition: Complex Auction Trade (g)"
  end
  if value == "h" then
    return "Trade Condition: Complex Cross (h)"
  end
  if value == "i" then
    return "Trade Condition: Complex Floor Trade (i)"
  end
  if value == "j" then
    return "Trade Condition: Complex Electronic Trade Against Single Legs (j)"
  end
  if value == "k" then
    return "Trade Condition: Complex With Stock Options Auction Trade (k)"
  end
  if value == "m" then
    return "Trade Condition: Complex Floor Trade Against Single Legs (m)"
  end
  if value == "n" then
    return "Trade Condition: Complex With Stock Electronic Trade (n)"
  end
  if value == "o" then
    return "Trade Condition: Complex With Stock Cross (o)"
  end
  if value == "p" then
    return "Trade Condition: Complex With Stock Floor Trade (p)"
  end
  if value == "t" then
    return "Trade Condition: Complex Floor Trade Of Proprietary Products Marked As Combo Order (t)"
  end
  if value == "u" then
    return "Trade Condition: Multilateral Compression Trade Of Proprietary Products (u)"
  end
  if value == "v" then
    return "Trade Condition: Extended Hours Trade (v)"
  end
  if value == "l" then
    return "Trade Condition: Electronic Trade (l)"
  end
  if value == "K" then
    return "Trade Condition: Cabinet Order (K)"
  end
  if value == "M" then
    return "Trade Condition: Future Options Auction Trade Electronic Execution Of A Multi Leg Futureoptions Order Traded In A Two Sided Auction (M)"
  end
  if value == "N" then
    return "Trade Condition: Future Options Auto Electronic Trade Electronic Execution Of A Multi Leg Futureoptions Order Traded On The Complex Book Or In A Coa (N)"
  end
  if value == "O" then
    return "Trade Condition: Opening Trade (O)"
  end
  if value == "P" then
    return "Trade Condition: Future Options Cross Electronic Execution Of A Multi Leg Futureoptions Order Traded In A Two Sided Crossing Mechanism That Does Not Go Through An Exposure Period (P)"
  end
  if value == "S" then
    return "Trade Condition: Iso (S)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Transaction Time
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.transaction_time = {}

-- Size: Transaction Time
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.transaction_time.size = 8

-- Display: Transaction Time
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.transaction_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.timestamp_format == 0 then
    return "Transaction Time: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Transaction Time: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Transaction Time: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transaction Time
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.transaction_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.transaction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.transaction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.transaction_time, range, value, display)

  return offset + length, value
end

-- Unit
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.unit = {}

-- Size: Unit
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.unit.size = 1

-- Display: Unit
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.unit, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe TitaniumConsolidated OneOptions Pitch 1.1.19
-----------------------------------------------------------------------

-- Trading Status Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trading_status_message = {}

-- Size: Trading Status Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trading_status_message.size =
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.timestamp.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.symbol.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_center.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.halt_status.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_1.size

-- Display: Trading Status Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.symbol.dissect(buffer, index, packet, parent)

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_center.dissect(buffer, index, packet, parent)

  -- Halt Status: Alphanumeric
  index, halt_status = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.halt_status.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary
  index, reserved_1 = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Break Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trade_break_message = {}

-- Size: Trade Break Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trade_break_message.size =
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.transaction_time.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.symbol.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_center.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_center_execution_id.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.cboe_cumulative_executed_volume_long.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_9.size

-- Display: Trade Break Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: Binary
  index, transaction_time = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.transaction_time.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.symbol.dissect(buffer, index, packet, parent)

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_center.dissect(buffer, index, packet, parent)

  -- Market Center Execution Id: Binary
  index, market_center_execution_id = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_center_execution_id.dissect(buffer, index, packet, parent)

  -- Cboe Cumulative Executed Volume Long: Binary
  index, cboe_cumulative_executed_volume_long = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.cboe_cumulative_executed_volume_long.dissect(buffer, index, packet, parent)

  -- Reserved 9: Binary
  index, reserved_9 = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_9.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.trade_break_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trade_message = {}

-- Size: Trade Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trade_message.size =
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.transaction_time.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.symbol.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_center.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_center_execution_id.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.last_price.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.last_quantity.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.cboe_cumulative_executed_volume_long.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trade_condition.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_8.size

-- Display: Trade Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: Binary
  index, transaction_time = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.transaction_time.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.symbol.dissect(buffer, index, packet, parent)

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_center.dissect(buffer, index, packet, parent)

  -- Market Center Execution Id: Binary
  index, market_center_execution_id = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_center_execution_id.dissect(buffer, index, packet, parent)

  -- Last Price: Binary 8.4 Price
  index, last_price = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.last_price.dissect(buffer, index, packet, parent)

  -- Last Quantity: Binary
  index, last_quantity = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.last_quantity.dissect(buffer, index, packet, parent)

  -- Cboe Cumulative Executed Volume Long: Binary
  index, cboe_cumulative_executed_volume_long = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.cboe_cumulative_executed_volume_long.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trade_condition.dissect(buffer, index, packet, parent)

  -- Reserved 8: Binary
  index, reserved_8 = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.trade_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Cboe Market Status Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.cboe_market_status_message = {}

-- Size: Cboe Market Status Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.cboe_market_status_message.size =
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.timestamp.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_center.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_status.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_1.size

-- Display: Cboe Market Status Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.cboe_market_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cboe Market Status Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.cboe_market_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.timestamp.dissect(buffer, index, packet, parent)

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_center.dissect(buffer, index, packet, parent)

  -- Market Status: Alphanumeric
  index, market_status = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.market_status.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary
  index, reserved_1 = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cboe Market Status Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.cboe_market_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.cboe_market_status_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.cboe_market_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.cboe_market_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.cboe_market_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Quote Update Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.best_quote_update_message = {}

-- Size: Best Quote Update Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.best_quote_update_message.size =
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.last_update_timestamp.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.symbol.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.side_indicator.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_quote_price.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_quote_quantity.size

-- Display: Best Quote Update Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.best_quote_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Quote Update Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.best_quote_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Update Timestamp: Binary
  index, last_update_timestamp = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.last_update_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.symbol.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.side_indicator.dissect(buffer, index, packet, parent)

  -- Consolidated Best Quote Price: Binary 8.4 Price
  index, consolidated_best_quote_price = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_quote_price.dissect(buffer, index, packet, parent)

  -- Consolidated Quote Quantity: Binary
  index, consolidated_quote_quantity = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_quote_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Quote Update Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.best_quote_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.best_quote_update_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.best_quote_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.best_quote_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.best_quote_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Symbol Summary Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.long_symbol_summary_message = {}

-- Size: Long Symbol Summary Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.long_symbol_summary_message.size =
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.last_update_timestamp.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.symbol.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.cboe_cumulative_executed_volume_long.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_price_long.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_quantity_long.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_price_long.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_quantity_long.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_9.size

-- Display: Long Symbol Summary Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.long_symbol_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Symbol Summary Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.long_symbol_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Update Timestamp: Binary
  index, last_update_timestamp = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.last_update_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.symbol.dissect(buffer, index, packet, parent)

  -- Cboe Cumulative Executed Volume Long: Binary
  index, cboe_cumulative_executed_volume_long = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.cboe_cumulative_executed_volume_long.dissect(buffer, index, packet, parent)

  -- Consolidated Best Bid Price Long: Binary 8.4 Price
  index, consolidated_best_bid_price_long = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_price_long.dissect(buffer, index, packet, parent)

  -- Consolidated Best Bid Quantity Long: Binary
  index, consolidated_best_bid_quantity_long = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_quantity_long.dissect(buffer, index, packet, parent)

  -- Consolidated Best Ask Price Long: Binary 8.4 Price
  index, consolidated_best_ask_price_long = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_price_long.dissect(buffer, index, packet, parent)

  -- Consolidated Best Ask Quantity Long: Binary
  index, consolidated_best_ask_quantity_long = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_quantity_long.dissect(buffer, index, packet, parent)

  -- Reserved 9: Binary
  index, reserved_9 = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_9.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Symbol Summary Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.long_symbol_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.long_symbol_summary_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.long_symbol_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.long_symbol_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.long_symbol_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Symbol Summary Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.short_symbol_summary_message = {}

-- Size: Short Symbol Summary Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.short_symbol_summary_message.size =
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.last_update_timestamp.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.symbol.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.cboe_cumulative_executed_volume_short.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_price_short.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_quantity_short.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_price_short.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_quantity_short.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_5.size

-- Display: Short Symbol Summary Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.short_symbol_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Symbol Summary Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.short_symbol_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Update Timestamp: Binary
  index, last_update_timestamp = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.last_update_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.symbol.dissect(buffer, index, packet, parent)

  -- Cboe Cumulative Executed Volume Short: Binary
  index, cboe_cumulative_executed_volume_short = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.cboe_cumulative_executed_volume_short.dissect(buffer, index, packet, parent)

  -- Consolidated Best Bid Price Short: Binary 4.4 Price
  index, consolidated_best_bid_price_short = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_price_short.dissect(buffer, index, packet, parent)

  -- Consolidated Best Bid Quantity Short: Binary
  index, consolidated_best_bid_quantity_short = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_bid_quantity_short.dissect(buffer, index, packet, parent)

  -- Consolidated Best Ask Price Short: Binary 4.4 Price
  index, consolidated_best_ask_price_short = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_price_short.dissect(buffer, index, packet, parent)

  -- Consolidated Best Ask Quantity Short: Binary
  index, consolidated_best_ask_quantity_short = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.consolidated_best_ask_quantity_short.dissect(buffer, index, packet, parent)

  -- Reserved 5: Binary
  index, reserved_5 = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.reserved_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Symbol Summary Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.short_symbol_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.short_symbol_summary_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.short_symbol_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.short_symbol_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.short_symbol_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.payload = {}

-- Dissect: Payload
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Short Symbol Summary Message
  if message_type == 0xA4 then
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.short_symbol_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Symbol Summary Message
  if message_type == 0xA3 then
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.long_symbol_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Quote Update Message
  if message_type == 0xA5 then
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.best_quote_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cboe Market Status Message
  if message_type == 0xA6 then
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.cboe_market_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == 0xA9 then
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == 0xAA then
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0xAB then
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.trading_status_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_header = {}

-- Size: Message Header
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_header.size =
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_length.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_type.size

-- Display: Message Header
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, message_type = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.message_header, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message = {}

-- Read runtime size of: Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.packet_sequence ~= nil then
    local sequence = parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.message_sequence_number, UInt64.new(cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 7 branches
  index = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.message, buffer(offset, 0))
    local current = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.heartbeat = {}

-- Display: Heartbeat
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.messages = {}

-- Dissect: Messages
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.heartbeat.dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.packet_header = {}

-- Size: Packet Header
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.packet_header.size =
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.length.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_count.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.unit.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.sequence.size

-- Display: Packet Header
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.message_count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.sequence.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.packet_sequence = sequence

  return index
end

-- Dissect: Packet Header
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.fields.packet_header, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.packet = {}

-- Verify required size of Udp packet
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.packet_header.size
end

-- Dissect Packet
cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.init()
end

-- Dissector for Cboe TitaniumConsolidated OneOptions Pitch 1.1.19
function omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19, buffer(), omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.description, "("..buffer:len().." Bytes)")
  return cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe TitaniumConsolidated OneOptions Pitch 1.1.19 (Udp)
local function omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19
  omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe TitaniumConsolidated OneOptions Pitch 1.1.19
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19:register_heuristic("udp", omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19_udp_heuristic)

-- Register Cboe TitaniumConsolidated OneOptions Pitch 1.1.19 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_1_19)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.1.19
--   Since: 1.1.18
--   Date: Thursday, September 17, 2026
--   Specification: technical-specifications-cboe-titanium-cboe-one-options-feed-specification (2026-09-18).pdf
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
