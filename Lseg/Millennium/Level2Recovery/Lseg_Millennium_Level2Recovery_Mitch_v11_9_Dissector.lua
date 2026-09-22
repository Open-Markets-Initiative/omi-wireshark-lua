-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lseg Millennium Level2Recovery Mitch 11.9 Protocol
local omi_lseg_millennium_level2recovery_mitch_v11_9 = Proto("Omi.Lseg.Millennium.Level2Recovery.Mitch.v11.9", "Lseg Millennium Level2Recovery Mitch 11.9")

-- Protocol table
local lseg_millennium_level2recovery_mitch_v11_9 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lseg Millennium Level2Recovery Mitch 11.9 Fields
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.add_attributed_order_flags = ProtoField.new("Add Attributed Order Flags", "lseg.millennium.level2recovery.mitch.v11.9.addattributedorderflags", ftypes.STRING)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.add_order_flags = ProtoField.new("Add Order Flags", "lseg.millennium.level2recovery.mitch.v11.9.addorderflags", ftypes.STRING)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.attribution = ProtoField.new("Attribution", "lseg.millennium.level2recovery.mitch.v11.9.attribution", ftypes.STRING)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.book_type = ProtoField.new("Book Type", "lseg.millennium.level2recovery.mitch.v11.9.booktype", ftypes.UINT8)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.firm_quote = ProtoField.new("Firm Quote", "lseg.millennium.level2recovery.mitch.v11.9.firmquote", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.instrument_id = ProtoField.new("Instrument Id", "lseg.millennium.level2recovery.mitch.v11.9.instrumentid", ftypes.UINT32)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.length = ProtoField.new("Length", "lseg.millennium.level2recovery.mitch.v11.9.length", ftypes.UINT16)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.login_status = ProtoField.new("Login Status", "lseg.millennium.level2recovery.mitch.v11.9.loginstatus", ftypes.STRING)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.market_data_group = ProtoField.new("Market Data Group", "lseg.millennium.level2recovery.mitch.v11.9.marketdatagroup", ftypes.STRING)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.market_order = ProtoField.new("Market Order", "lseg.millennium.level2recovery.mitch.v11.9.marketorder", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.message_count = ProtoField.new("Message Count", "lseg.millennium.level2recovery.mitch.v11.9.messagecount", ftypes.UINT8)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.message_length = ProtoField.new("Message Length", "lseg.millennium.level2recovery.mitch.v11.9.messagelength", ftypes.UINT8)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.message_type = ProtoField.new("Message Type", "lseg.millennium.level2recovery.mitch.v11.9.messagetype", ftypes.UINT8)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.named_market_order = ProtoField.new("Named Market Order", "lseg.millennium.level2recovery.mitch.v11.9.namedmarketorder", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.nanosecond = ProtoField.new("Nanosecond", "lseg.millennium.level2recovery.mitch.v11.9.nanosecond", ftypes.UINT32)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.new_end_time = ProtoField.new("New End Time", "lseg.millennium.level2recovery.mitch.v11.9.newendtime", ftypes.STRING)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.order_count = ProtoField.new("Order Count", "lseg.millennium.level2recovery.mitch.v11.9.ordercount", ftypes.UINT32)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.order_id = ProtoField.new("Order Id", "lseg.millennium.level2recovery.mitch.v11.9.orderid", ftypes.UINT64)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.password = ProtoField.new("Password", "lseg.millennium.level2recovery.mitch.v11.9.password", ftypes.STRING)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.price = ProtoField.new("Price", "lseg.millennium.level2recovery.mitch.v11.9.price", ftypes.INT64)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.private_rfq = ProtoField.new("Private Rfq", "lseg.millennium.level2recovery.mitch.v11.9.privaterfq", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.quantity = ProtoField.new("Quantity", "lseg.millennium.level2recovery.mitch.v11.9.quantity", ftypes.UINT32)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.reason = ProtoField.new("Reason", "lseg.millennium.level2recovery.mitch.v11.9.reason", ftypes.STRING)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.reserved_10 = ProtoField.new("Reserved 10", "lseg.millennium.level2recovery.mitch.v11.9.reserved10", ftypes.BYTES)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.reserved_a = ProtoField.new("Reserved A", "lseg.millennium.level2recovery.mitch.v11.9.reserveda", ftypes.BYTES)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.reserved_b = ProtoField.new("Reserved B", "lseg.millennium.level2recovery.mitch.v11.9.reservedb", ftypes.BYTES)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.rfq_quote = ProtoField.new("Rfq Quote", "lseg.millennium.level2recovery.mitch.v11.9.rfqquote", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.second_unused_1 = ProtoField.new("Second Unused 1", "lseg.millennium.level2recovery.mitch.v11.9.secondunused1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.segment = ProtoField.new("Segment", "lseg.millennium.level2recovery.mitch.v11.9.segment", ftypes.STRING)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.sequence_number = ProtoField.new("Sequence Number", "lseg.millennium.level2recovery.mitch.v11.9.sequencenumber", ftypes.UINT32)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.session_change_reason = ProtoField.new("Session Change Reason", "lseg.millennium.level2recovery.mitch.v11.9.sessionchangereason", ftypes.UINT8)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.side = ProtoField.new("Side", "lseg.millennium.level2recovery.mitch.v11.9.side", ftypes.STRING)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.snapshot_complete_flags = ProtoField.new("Snapshot Complete Flags", "lseg.millennium.level2recovery.mitch.v11.9.snapshotcompleteflags", ftypes.STRING)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.snapshot_status = ProtoField.new("Snapshot Status", "lseg.millennium.level2recovery.mitch.v11.9.snapshotstatus", ftypes.STRING)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.symbol_status_flags = ProtoField.new("Symbol Status Flags", "lseg.millennium.level2recovery.mitch.v11.9.symbolstatusflags", ftypes.STRING)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.tcp_unit = ProtoField.new("Tcp Unit", "lseg.millennium.level2recovery.mitch.v11.9.tcpunit", ftypes.STRING)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.trading_status = ProtoField.new("Trading Status", "lseg.millennium.level2recovery.mitch.v11.9.tradingstatus", ftypes.STRING)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.unused_1 = ProtoField.new("Unused 1", "lseg.millennium.level2recovery.mitch.v11.9.unused1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.unused_2 = ProtoField.new("Unused 2", "lseg.millennium.level2recovery.mitch.v11.9.unused2", ftypes.UINT8, nil, base.DEC, 0xC0)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.unused_4 = ProtoField.new("Unused 4", "lseg.millennium.level2recovery.mitch.v11.9.unused4", ftypes.UINT8, nil, base.DEC, 0x0F)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.unused_5 = ProtoField.new("Unused 5", "lseg.millennium.level2recovery.mitch.v11.9.unused5", ftypes.UINT8, nil, base.DEC, 0x1F)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.username = ProtoField.new("Username", "lseg.millennium.level2recovery.mitch.v11.9.username", ftypes.STRING)

-- Lseg Millennium Level2Recovery Mitch 11.9 Framing
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.message = ProtoField.new("Message", "lseg.millennium.level2recovery.mitch.v11.9.message", ftypes.STRING)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.message_header = ProtoField.new("Message Header", "lseg.millennium.level2recovery.mitch.v11.9.messageheader", ftypes.STRING)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.packet = ProtoField.new("Packet", "lseg.millennium.level2recovery.mitch.v11.9.packet", ftypes.STRING)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.unit_header = ProtoField.new("Unit Header", "lseg.millennium.level2recovery.mitch.v11.9.unitheader", ftypes.STRING)

-- Lseg Millennium Level2Recovery 11.9 Application Messages
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.add_attributed_order_message = ProtoField.new("Add Attributed Order Message", "lseg.millennium.level2recovery.mitch.v11.9.addattributedordermessage", ftypes.STRING)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.add_order_message = ProtoField.new("Add Order Message", "lseg.millennium.level2recovery.mitch.v11.9.addordermessage", ftypes.STRING)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.login_request_message = ProtoField.new("Login Request Message", "lseg.millennium.level2recovery.mitch.v11.9.loginrequestmessage", ftypes.STRING)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.login_response_message = ProtoField.new("Login Response Message", "lseg.millennium.level2recovery.mitch.v11.9.loginresponsemessage", ftypes.STRING)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.logout_request_message = ProtoField.new("Logout Request Message", "lseg.millennium.level2recovery.mitch.v11.9.logoutrequestmessage", ftypes.BYTES)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.snapshot_complete_message = ProtoField.new("Snapshot Complete Message", "lseg.millennium.level2recovery.mitch.v11.9.snapshotcompletemessage", ftypes.STRING)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.snapshot_request_message = ProtoField.new("Snapshot Request Message", "lseg.millennium.level2recovery.mitch.v11.9.snapshotrequestmessage", ftypes.STRING)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.snapshot_response_message = ProtoField.new("Snapshot Response Message", "lseg.millennium.level2recovery.mitch.v11.9.snapshotresponsemessage", ftypes.STRING)
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.symbol_status_message = ProtoField.new("Symbol Status Message", "lseg.millennium.level2recovery.mitch.v11.9.symbolstatusmessage", ftypes.STRING)

-- Lseg Millennium Level2Recovery Mitch 11.9 Generated Fields
omi_lseg_millennium_level2recovery_mitch_v11_9.fields.message_index = ProtoField.new("Message Index", "lseg.millennium.level2recovery.mitch.v11.9.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Lseg Millennium Level2Recovery Mitch 11.9 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true
show.indexes = true

-- Register Lseg Millennium Level2Recovery Mitch 11.9 Show Options
omi_lseg_millennium_level2recovery_mitch_v11_9.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_lseg_millennium_level2recovery_mitch_v11_9.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_lseg_millennium_level2recovery_mitch_v11_9.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_lseg_millennium_level2recovery_mitch_v11_9.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_lseg_millennium_level2recovery_mitch_v11_9.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_lseg_millennium_level2recovery_mitch_v11_9.prefs.show_application_messages then
    show.application_messages = omi_lseg_millennium_level2recovery_mitch_v11_9.prefs.show_application_messages
  end
  if show.headers ~= omi_lseg_millennium_level2recovery_mitch_v11_9.prefs.show_headers then
    show.headers = omi_lseg_millennium_level2recovery_mitch_v11_9.prefs.show_headers
  end
  if show.structs ~= omi_lseg_millennium_level2recovery_mitch_v11_9.prefs.show_structs then
    show.structs = omi_lseg_millennium_level2recovery_mitch_v11_9.prefs.show_structs
  end
  if show.indexes ~= omi_lseg_millennium_level2recovery_mitch_v11_9.prefs.show_indexes then
    show.indexes = omi_lseg_millennium_level2recovery_mitch_v11_9.prefs.show_indexes
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
-- Lseg Millennium Level2Recovery Mitch 11.9 Fields
-----------------------------------------------------------------------

-- Attribution
lseg_millennium_level2recovery_mitch_v11_9.attribution = {}

-- Size: Attribution
lseg_millennium_level2recovery_mitch_v11_9.attribution.size = 11

-- Display: Attribution
lseg_millennium_level2recovery_mitch_v11_9.attribution.display = function(value)
  return "Attribution: "..value
end

-- Dissect: Attribution
lseg_millennium_level2recovery_mitch_v11_9.attribution.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2recovery_mitch_v11_9.attribution.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_millennium_level2recovery_mitch_v11_9.attribution.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.attribution, range, value, display)

  return offset + length, value
end

-- Book Type
lseg_millennium_level2recovery_mitch_v11_9.book_type = {}

-- Size: Book Type
lseg_millennium_level2recovery_mitch_v11_9.book_type.size = 1

-- Display: Book Type
lseg_millennium_level2recovery_mitch_v11_9.book_type.display = function(value)
  if value == 1 then
    return "Book Type: On Book (1)"
  end
  if value == 2 then
    return "Book Type: Off Book (2)"
  end
  if value == 3 then
    return "Book Type: Private Rfq (3)"
  end

  return "Book Type: Unknown("..value..")"
end

-- Dissect: Book Type
lseg_millennium_level2recovery_mitch_v11_9.book_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2recovery_mitch_v11_9.book_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_level2recovery_mitch_v11_9.book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.book_type, range, value, display)

  return offset + length, value
end

-- Instrument Id
lseg_millennium_level2recovery_mitch_v11_9.instrument_id = {}

-- Size: Instrument Id
lseg_millennium_level2recovery_mitch_v11_9.instrument_id.size = 4

-- Display: Instrument Id
lseg_millennium_level2recovery_mitch_v11_9.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
lseg_millennium_level2recovery_mitch_v11_9.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2recovery_mitch_v11_9.instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_level2recovery_mitch_v11_9.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Length
lseg_millennium_level2recovery_mitch_v11_9.length = {}

-- Size: Length
lseg_millennium_level2recovery_mitch_v11_9.length.size = 2

-- Display: Length
lseg_millennium_level2recovery_mitch_v11_9.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
lseg_millennium_level2recovery_mitch_v11_9.length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2recovery_mitch_v11_9.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_level2recovery_mitch_v11_9.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.length, range, value, display)

  return offset + length, value
end

-- Login Status
lseg_millennium_level2recovery_mitch_v11_9.login_status = {}

-- Size: Login Status
lseg_millennium_level2recovery_mitch_v11_9.login_status.size = 1

-- Display: Login Status
lseg_millennium_level2recovery_mitch_v11_9.login_status.display = function(value)
  if value == "A" then
    return "Login Status: Login Accepted (A)"
  end
  if value == "a" then
    return "Login Status: Comp Id Inactive Locked (a)"
  end
  if value == "b" then
    return "Login Status: Login Limit Reached (b)"
  end
  if value == "c" then
    return "Login Status: Service Unavailable (c)"
  end
  if value == "d" then
    return "Login Status: Concurrent Limit Reached (d)"
  end
  if value == "e" then
    return "Login Status: Failed Other (e)"
  end

  return "Login Status: Unknown("..value..")"
end

-- Dissect: Login Status
lseg_millennium_level2recovery_mitch_v11_9.login_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2recovery_mitch_v11_9.login_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_level2recovery_mitch_v11_9.login_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.login_status, range, value, display)

  return offset + length, value
end

-- Market Data Group
lseg_millennium_level2recovery_mitch_v11_9.market_data_group = {}

-- Size: Market Data Group
lseg_millennium_level2recovery_mitch_v11_9.market_data_group.size = 1

-- Display: Market Data Group
lseg_millennium_level2recovery_mitch_v11_9.market_data_group.display = function(value)
  return "Market Data Group: "..value
end

-- Dissect: Market Data Group
lseg_millennium_level2recovery_mitch_v11_9.market_data_group.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2recovery_mitch_v11_9.market_data_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_level2recovery_mitch_v11_9.market_data_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Message Count
lseg_millennium_level2recovery_mitch_v11_9.message_count = {}

-- Size: Message Count
lseg_millennium_level2recovery_mitch_v11_9.message_count.size = 1

-- Display: Message Count
lseg_millennium_level2recovery_mitch_v11_9.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
lseg_millennium_level2recovery_mitch_v11_9.message_count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2recovery_mitch_v11_9.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_level2recovery_mitch_v11_9.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
lseg_millennium_level2recovery_mitch_v11_9.message_length = {}

-- Size: Message Length
lseg_millennium_level2recovery_mitch_v11_9.message_length.size = 1

-- Display: Message Length
lseg_millennium_level2recovery_mitch_v11_9.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
lseg_millennium_level2recovery_mitch_v11_9.message_length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2recovery_mitch_v11_9.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_level2recovery_mitch_v11_9.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
lseg_millennium_level2recovery_mitch_v11_9.message_type = {}

-- Size: Message Type
lseg_millennium_level2recovery_mitch_v11_9.message_type.size = 1

-- Display: Message Type
lseg_millennium_level2recovery_mitch_v11_9.message_type.display = function(value)
  if value == 0x01 then
    return "Message Type: Login Request Message (0x01)"
  end
  if value == 0x02 then
    return "Message Type: Login Response Message (0x02)"
  end
  if value == 0x81 then
    return "Message Type: Snapshot Request Message (0x81)"
  end
  if value == 0x82 then
    return "Message Type: Snapshot Response Message (0x82)"
  end
  if value == 0x83 then
    return "Message Type: Snapshot Complete Message (0x83)"
  end
  if value == 0x05 then
    return "Message Type: Logout Request Message (0x05)"
  end
  if value == 0x48 then
    return "Message Type: Symbol Status Message (0x48)"
  end
  if value == 0x41 then
    return "Message Type: Add Order Message (0x41)"
  end
  if value == 0x46 then
    return "Message Type: Add Attributed Order Message (0x46)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
lseg_millennium_level2recovery_mitch_v11_9.message_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2recovery_mitch_v11_9.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_millennium_level2recovery_mitch_v11_9.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nanosecond
lseg_millennium_level2recovery_mitch_v11_9.nanosecond = {}

-- Size: Nanosecond
lseg_millennium_level2recovery_mitch_v11_9.nanosecond.size = 4

-- Display: Nanosecond
lseg_millennium_level2recovery_mitch_v11_9.nanosecond.display = function(value)
  return "Nanosecond: "..value
end

-- Dissect: Nanosecond
lseg_millennium_level2recovery_mitch_v11_9.nanosecond.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2recovery_mitch_v11_9.nanosecond.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_level2recovery_mitch_v11_9.nanosecond.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.nanosecond, range, value, display)

  return offset + length, value
end

-- New End Time
lseg_millennium_level2recovery_mitch_v11_9.new_end_time = {}

-- Size: New End Time
lseg_millennium_level2recovery_mitch_v11_9.new_end_time.size = 8

-- Display: New End Time
lseg_millennium_level2recovery_mitch_v11_9.new_end_time.display = function(value)
  return "New End Time: "..value
end

-- Dissect: New End Time
lseg_millennium_level2recovery_mitch_v11_9.new_end_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2recovery_mitch_v11_9.new_end_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_level2recovery_mitch_v11_9.new_end_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.new_end_time, range, value, display)

  return offset + length, value
end

-- Order Count
lseg_millennium_level2recovery_mitch_v11_9.order_count = {}

-- Size: Order Count
lseg_millennium_level2recovery_mitch_v11_9.order_count.size = 4

-- Display: Order Count
lseg_millennium_level2recovery_mitch_v11_9.order_count.display = function(value)
  return "Order Count: "..value
end

-- Dissect: Order Count
lseg_millennium_level2recovery_mitch_v11_9.order_count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2recovery_mitch_v11_9.order_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_level2recovery_mitch_v11_9.order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.order_count, range, value, display)

  return offset + length, value
end

-- Order Id
lseg_millennium_level2recovery_mitch_v11_9.order_id = {}

-- Size: Order Id
lseg_millennium_level2recovery_mitch_v11_9.order_id.size = 8

-- Display: Order Id
lseg_millennium_level2recovery_mitch_v11_9.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
lseg_millennium_level2recovery_mitch_v11_9.order_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2recovery_mitch_v11_9.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_millennium_level2recovery_mitch_v11_9.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.order_id, range, value, display)

  return offset + length, value
end

-- Password
lseg_millennium_level2recovery_mitch_v11_9.password = {}

-- Size: Password
lseg_millennium_level2recovery_mitch_v11_9.password.size = 10

-- Display: Password
lseg_millennium_level2recovery_mitch_v11_9.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
lseg_millennium_level2recovery_mitch_v11_9.password.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2recovery_mitch_v11_9.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_millennium_level2recovery_mitch_v11_9.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.password, range, value, display)

  return offset + length, value
end

-- Price
lseg_millennium_level2recovery_mitch_v11_9.price = {}

-- Size: Price
lseg_millennium_level2recovery_mitch_v11_9.price.size = 8

-- Display: Price
lseg_millennium_level2recovery_mitch_v11_9.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
lseg_millennium_level2recovery_mitch_v11_9.price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2recovery_mitch_v11_9.price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = lseg_millennium_level2recovery_mitch_v11_9.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
lseg_millennium_level2recovery_mitch_v11_9.quantity = {}

-- Size: Quantity
lseg_millennium_level2recovery_mitch_v11_9.quantity.size = 4

-- Display: Quantity
lseg_millennium_level2recovery_mitch_v11_9.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
lseg_millennium_level2recovery_mitch_v11_9.quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2recovery_mitch_v11_9.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_level2recovery_mitch_v11_9.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reason
lseg_millennium_level2recovery_mitch_v11_9.reason = {}

-- Size: Reason
lseg_millennium_level2recovery_mitch_v11_9.reason.size = 4

-- Display: Reason
lseg_millennium_level2recovery_mitch_v11_9.reason.display = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
lseg_millennium_level2recovery_mitch_v11_9.reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2recovery_mitch_v11_9.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_millennium_level2recovery_mitch_v11_9.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.reason, range, value, display)

  return offset + length, value
end

-- Reserved 10
lseg_millennium_level2recovery_mitch_v11_9.reserved_10 = {}

-- Size: Reserved 10
lseg_millennium_level2recovery_mitch_v11_9.reserved_10.size = 10

-- Display: Reserved 10
lseg_millennium_level2recovery_mitch_v11_9.reserved_10.display = function(value)
  return "Reserved 10: "..value
end

-- Dissect: Reserved 10
lseg_millennium_level2recovery_mitch_v11_9.reserved_10.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2recovery_mitch_v11_9.reserved_10.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_millennium_level2recovery_mitch_v11_9.reserved_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.reserved_10, range, value, display)

  return offset + length, value
end

-- Reserved A
lseg_millennium_level2recovery_mitch_v11_9.reserved_a = {}

-- Size: Reserved A
lseg_millennium_level2recovery_mitch_v11_9.reserved_a.size = 1

-- Display: Reserved A
lseg_millennium_level2recovery_mitch_v11_9.reserved_a.display = function(value)
  return "Reserved A: "..value
end

-- Dissect: Reserved A
lseg_millennium_level2recovery_mitch_v11_9.reserved_a.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2recovery_mitch_v11_9.reserved_a.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_millennium_level2recovery_mitch_v11_9.reserved_a.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.reserved_a, range, value, display)

  return offset + length, value
end

-- Reserved B
lseg_millennium_level2recovery_mitch_v11_9.reserved_b = {}

-- Size: Reserved B
lseg_millennium_level2recovery_mitch_v11_9.reserved_b.size = 1

-- Display: Reserved B
lseg_millennium_level2recovery_mitch_v11_9.reserved_b.display = function(value)
  return "Reserved B: "..value
end

-- Dissect: Reserved B
lseg_millennium_level2recovery_mitch_v11_9.reserved_b.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2recovery_mitch_v11_9.reserved_b.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_millennium_level2recovery_mitch_v11_9.reserved_b.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.reserved_b, range, value, display)

  return offset + length, value
end

-- Segment
lseg_millennium_level2recovery_mitch_v11_9.segment = {}

-- Size: Segment
lseg_millennium_level2recovery_mitch_v11_9.segment.size = 6

-- Display: Segment
lseg_millennium_level2recovery_mitch_v11_9.segment.display = function(value)
  return "Segment: "..value
end

-- Dissect: Segment
lseg_millennium_level2recovery_mitch_v11_9.segment.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2recovery_mitch_v11_9.segment.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_millennium_level2recovery_mitch_v11_9.segment.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.segment, range, value, display)

  return offset + length, value
end

-- Sequence Number
lseg_millennium_level2recovery_mitch_v11_9.sequence_number = {}

-- Size: Sequence Number
lseg_millennium_level2recovery_mitch_v11_9.sequence_number.size = 4

-- Display: Sequence Number
lseg_millennium_level2recovery_mitch_v11_9.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
lseg_millennium_level2recovery_mitch_v11_9.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2recovery_mitch_v11_9.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_level2recovery_mitch_v11_9.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Change Reason
lseg_millennium_level2recovery_mitch_v11_9.session_change_reason = {}

-- Size: Session Change Reason
lseg_millennium_level2recovery_mitch_v11_9.session_change_reason.size = 1

-- Display: Session Change Reason
lseg_millennium_level2recovery_mitch_v11_9.session_change_reason.display = function(value)
  if value == 0 then
    return "Session Change Reason: Scheduled Transition (0)"
  end
  if value == 1 then
    return "Session Change Reason: Extended By Market Ops (1)"
  end
  if value == 2 then
    return "Session Change Reason: Shortened By Market Ops (2)"
  end
  if value == 3 then
    return "Session Change Reason: Market Order Imbalance (3)"
  end
  if value == 4 then
    return "Session Change Reason: Price Outside Range (4)"
  end
  if value == 9 then
    return "Session Change Reason: Unavailable Recovery Service Only (9)"
  end

  return "Session Change Reason: Unknown("..value..")"
end

-- Dissect: Session Change Reason
lseg_millennium_level2recovery_mitch_v11_9.session_change_reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2recovery_mitch_v11_9.session_change_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_level2recovery_mitch_v11_9.session_change_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.session_change_reason, range, value, display)

  return offset + length, value
end

-- Side
lseg_millennium_level2recovery_mitch_v11_9.side = {}

-- Size: Side
lseg_millennium_level2recovery_mitch_v11_9.side.size = 1

-- Display: Side
lseg_millennium_level2recovery_mitch_v11_9.side.display = function(value)
  if value == "B" then
    return "Side: Buy Order (B)"
  end
  if value == "S" then
    return "Side: Sell Order (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
lseg_millennium_level2recovery_mitch_v11_9.side.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2recovery_mitch_v11_9.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_level2recovery_mitch_v11_9.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.side, range, value, display)

  return offset + length, value
end

-- Snapshot Status
lseg_millennium_level2recovery_mitch_v11_9.snapshot_status = {}

-- Size: Snapshot Status
lseg_millennium_level2recovery_mitch_v11_9.snapshot_status.size = 1

-- Display: Snapshot Status
lseg_millennium_level2recovery_mitch_v11_9.snapshot_status.display = function(value)
  if value == "A" then
    return "Snapshot Status: Request Accepted (A)"
  end
  if value == "O" then
    return "Snapshot Status: Out Of Range (O)"
  end
  if value == "U" then
    return "Snapshot Status: Snapshot Unavailable (U)"
  end
  if value == "a" then
    return "Snapshot Status: Valid Segment Or Symbol Not Specified (a)"
  end
  if value == "b" then
    return "Snapshot Status: Request Limit Reached (b)"
  end
  if value == "c" then
    return "Snapshot Status: Concurrent Limit Reached (c)"
  end
  if value == "d" then
    return "Snapshot Status: Unsupported Message Type (d)"
  end
  if value == "e" then
    return "Snapshot Status: Failed Other (e)"
  end

  return "Snapshot Status: Unknown("..value..")"
end

-- Dissect: Snapshot Status
lseg_millennium_level2recovery_mitch_v11_9.snapshot_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2recovery_mitch_v11_9.snapshot_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_level2recovery_mitch_v11_9.snapshot_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.snapshot_status, range, value, display)

  return offset + length, value
end

-- Trading Status
lseg_millennium_level2recovery_mitch_v11_9.trading_status = {}

-- Size: Trading Status
lseg_millennium_level2recovery_mitch_v11_9.trading_status.size = 1

-- Display: Trading Status
lseg_millennium_level2recovery_mitch_v11_9.trading_status.display = function(value)
  if value == " " then
    return "Trading Status: Active (<whitespace>)"
  end
  if value == "H" then
    return "Trading Status: Halt (H)"
  end
  if value == "T" then
    return "Trading Status: Regular Trading Start Of Trade Reporting (T)"
  end
  if value == "a" then
    return "Trading Status: Opening First Auction Call (a)"
  end
  if value == "b" then
    return "Trading Status: Post Close (b)"
  end
  if value == "c" then
    return "Trading Status: Market Close System Shutdown (c)"
  end
  if value == "d" then
    return "Trading Status: Closing Auction Call (d)"
  end
  if value == "e" then
    return "Trading Status: Aesp Auction Call (e)"
  end
  if value == "f" then
    return "Trading Status: Resume Auction Call (f)"
  end
  if value == "l" then
    return "Trading Status: Pause (l)"
  end
  if value == "m" then
    return "Trading Status: Pre Mandatory (m)"
  end
  if value == "n" then
    return "Trading Status: Mandatory (n)"
  end
  if value == "o" then
    return "Trading Status: Post Mandatory (o)"
  end
  if value == "q" then
    return "Trading Status: Edsp Auction Call (q)"
  end
  if value == "r" then
    return "Trading Status: Periodic Auction Call (r)"
  end
  if value == "t" then
    return "Trading Status: End Trade Reporting (t)"
  end
  if value == "w" then
    return "Trading Status: No Active Session (w)"
  end
  if value == "x" then
    return "Trading Status: End Of Post Close (x)"
  end
  if value == "u" then
    return "Trading Status: Closing Price Crossing (u)"
  end
  if value == "G" then
    return "Trading Status: Scheduled Level 1 Only Auction (G)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
lseg_millennium_level2recovery_mitch_v11_9.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2recovery_mitch_v11_9.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_level2recovery_mitch_v11_9.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Username
lseg_millennium_level2recovery_mitch_v11_9.username = {}

-- Size: Username
lseg_millennium_level2recovery_mitch_v11_9.username.size = 6

-- Display: Username
lseg_millennium_level2recovery_mitch_v11_9.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
lseg_millennium_level2recovery_mitch_v11_9.username.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2recovery_mitch_v11_9.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_millennium_level2recovery_mitch_v11_9.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Lseg Millennium Level2Recovery Mitch 11.9
-----------------------------------------------------------------------

-- Add Attributed Order Flags
lseg_millennium_level2recovery_mitch_v11_9.add_attributed_order_flags = {}

-- Size: Add Attributed Order Flags
lseg_millennium_level2recovery_mitch_v11_9.add_attributed_order_flags.size = 1

-- Display: Add Attributed Order Flags
lseg_millennium_level2recovery_mitch_v11_9.add_attributed_order_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Named Market Order flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Named Market Order"
  end
  -- Is Firm Quote flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Firm Quote"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Add Attributed Order Flags
lseg_millennium_level2recovery_mitch_v11_9.add_attributed_order_flags.bits = function(range, value, packet, parent)

  -- Unused 4: 4 Bit Unsigned Fixed Width Integer
  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.unused_4, range, value)

  -- Named Market Order: 1 Bit
  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.named_market_order, range, value)

  -- Firm Quote: 1 Bit
  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.firm_quote, range, value)

  -- Unused 2: 2 Bit Unsigned Fixed Width Integer
  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.unused_2, range, value)
end

-- Dissect: Add Attributed Order Flags
lseg_millennium_level2recovery_mitch_v11_9.add_attributed_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = lseg_millennium_level2recovery_mitch_v11_9.add_attributed_order_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_millennium_level2recovery_mitch_v11_9.add_attributed_order_flags.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.add_attributed_order_flags, range, display)

  if show.structs then
    lseg_millennium_level2recovery_mitch_v11_9.add_attributed_order_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Add Attributed Order Message
lseg_millennium_level2recovery_mitch_v11_9.add_attributed_order_message = {}

-- Size: Add Attributed Order Message
lseg_millennium_level2recovery_mitch_v11_9.add_attributed_order_message.size =
  lseg_millennium_level2recovery_mitch_v11_9.nanosecond.size + 
  lseg_millennium_level2recovery_mitch_v11_9.order_id.size + 
  lseg_millennium_level2recovery_mitch_v11_9.side.size + 
  lseg_millennium_level2recovery_mitch_v11_9.quantity.size + 
  lseg_millennium_level2recovery_mitch_v11_9.instrument_id.size + 
  lseg_millennium_level2recovery_mitch_v11_9.reserved_a.size + 
  lseg_millennium_level2recovery_mitch_v11_9.reserved_b.size + 
  lseg_millennium_level2recovery_mitch_v11_9.price.size + 
  lseg_millennium_level2recovery_mitch_v11_9.attribution.size + 
  lseg_millennium_level2recovery_mitch_v11_9.add_attributed_order_flags.size

-- Display: Add Attributed Order Message
lseg_millennium_level2recovery_mitch_v11_9.add_attributed_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Attributed Order Message
lseg_millennium_level2recovery_mitch_v11_9.add_attributed_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = lseg_millennium_level2recovery_mitch_v11_9.nanosecond.dissect(buffer, index, packet, parent)

  -- Order Id: UInt64
  index, order_id = lseg_millennium_level2recovery_mitch_v11_9.order_id.dissect(buffer, index, packet, parent)

  -- Side: Byte
  index, side = lseg_millennium_level2recovery_mitch_v11_9.side.dissect(buffer, index, packet, parent)

  -- Quantity: UInt32
  index, quantity = lseg_millennium_level2recovery_mitch_v11_9.quantity.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = lseg_millennium_level2recovery_mitch_v11_9.instrument_id.dissect(buffer, index, packet, parent)

  -- Reserved A: Byte
  index, reserved_a = lseg_millennium_level2recovery_mitch_v11_9.reserved_a.dissect(buffer, index, packet, parent)

  -- Reserved B: Byte
  index, reserved_b = lseg_millennium_level2recovery_mitch_v11_9.reserved_b.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = lseg_millennium_level2recovery_mitch_v11_9.price.dissect(buffer, index, packet, parent)

  -- Attribution: Alpha
  index, attribution = lseg_millennium_level2recovery_mitch_v11_9.attribution.dissect(buffer, index, packet, parent)

  -- Add Attributed Order Flags: Struct of 4 fields
  index, add_attributed_order_flags = lseg_millennium_level2recovery_mitch_v11_9.add_attributed_order_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Attributed Order Message
lseg_millennium_level2recovery_mitch_v11_9.add_attributed_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.add_attributed_order_message, buffer(offset, 0))
    local index = lseg_millennium_level2recovery_mitch_v11_9.add_attributed_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_level2recovery_mitch_v11_9.add_attributed_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_level2recovery_mitch_v11_9.add_attributed_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Flags
lseg_millennium_level2recovery_mitch_v11_9.add_order_flags = {}

-- Size: Add Order Flags
lseg_millennium_level2recovery_mitch_v11_9.add_order_flags.size = 1

-- Display: Add Order Flags
lseg_millennium_level2recovery_mitch_v11_9.add_order_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Market Order flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Market Order"
  end
  -- Is Unused 1 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Unused 1"
  end
  -- Is Private Rfq flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Private Rfq"
  end
  -- Is Second Unused 1 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Second Unused 1"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Add Order Flags
lseg_millennium_level2recovery_mitch_v11_9.add_order_flags.bits = function(range, value, packet, parent)

  -- Unused 4: 4 Bit Unsigned Fixed Width Integer
  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.unused_4, range, value)

  -- Market Order: 1 Bit
  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.market_order, range, value)

  -- Unused 1: 1 Bit
  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.unused_1, range, value)

  -- Private Rfq: 1 Bit
  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.private_rfq, range, value)

  -- Second Unused 1: 1 Bit
  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.second_unused_1, range, value)
end

-- Dissect: Add Order Flags
lseg_millennium_level2recovery_mitch_v11_9.add_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = lseg_millennium_level2recovery_mitch_v11_9.add_order_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_millennium_level2recovery_mitch_v11_9.add_order_flags.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.add_order_flags, range, display)

  if show.structs then
    lseg_millennium_level2recovery_mitch_v11_9.add_order_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Add Order Message
lseg_millennium_level2recovery_mitch_v11_9.add_order_message = {}

-- Size: Add Order Message
lseg_millennium_level2recovery_mitch_v11_9.add_order_message.size =
  lseg_millennium_level2recovery_mitch_v11_9.nanosecond.size + 
  lseg_millennium_level2recovery_mitch_v11_9.order_id.size + 
  lseg_millennium_level2recovery_mitch_v11_9.side.size + 
  lseg_millennium_level2recovery_mitch_v11_9.quantity.size + 
  lseg_millennium_level2recovery_mitch_v11_9.instrument_id.size + 
  lseg_millennium_level2recovery_mitch_v11_9.reserved_a.size + 
  lseg_millennium_level2recovery_mitch_v11_9.reserved_b.size + 
  lseg_millennium_level2recovery_mitch_v11_9.price.size + 
  lseg_millennium_level2recovery_mitch_v11_9.add_order_flags.size + 
  lseg_millennium_level2recovery_mitch_v11_9.reserved_10.size

-- Display: Add Order Message
lseg_millennium_level2recovery_mitch_v11_9.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
lseg_millennium_level2recovery_mitch_v11_9.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = lseg_millennium_level2recovery_mitch_v11_9.nanosecond.dissect(buffer, index, packet, parent)

  -- Order Id: UInt64
  index, order_id = lseg_millennium_level2recovery_mitch_v11_9.order_id.dissect(buffer, index, packet, parent)

  -- Side: Byte
  index, side = lseg_millennium_level2recovery_mitch_v11_9.side.dissect(buffer, index, packet, parent)

  -- Quantity: UInt32
  index, quantity = lseg_millennium_level2recovery_mitch_v11_9.quantity.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = lseg_millennium_level2recovery_mitch_v11_9.instrument_id.dissect(buffer, index, packet, parent)

  -- Reserved A: Byte
  index, reserved_a = lseg_millennium_level2recovery_mitch_v11_9.reserved_a.dissect(buffer, index, packet, parent)

  -- Reserved B: Byte
  index, reserved_b = lseg_millennium_level2recovery_mitch_v11_9.reserved_b.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = lseg_millennium_level2recovery_mitch_v11_9.price.dissect(buffer, index, packet, parent)

  -- Add Order Flags: Struct of 5 fields
  index, add_order_flags = lseg_millennium_level2recovery_mitch_v11_9.add_order_flags.dissect(buffer, index, packet, parent)

  -- Reserved 10: Alpha
  index, reserved_10 = lseg_millennium_level2recovery_mitch_v11_9.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
lseg_millennium_level2recovery_mitch_v11_9.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.add_order_message, buffer(offset, 0))
    local index = lseg_millennium_level2recovery_mitch_v11_9.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_level2recovery_mitch_v11_9.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_level2recovery_mitch_v11_9.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Status Flags
lseg_millennium_level2recovery_mitch_v11_9.symbol_status_flags = {}

-- Size: Symbol Status Flags
lseg_millennium_level2recovery_mitch_v11_9.symbol_status_flags.size = 1

-- Display: Symbol Status Flags
lseg_millennium_level2recovery_mitch_v11_9.symbol_status_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Firm Quote flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Firm Quote"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Symbol Status Flags
lseg_millennium_level2recovery_mitch_v11_9.symbol_status_flags.bits = function(range, value, packet, parent)

  -- Unused 5: 5 Bit Unsigned Fixed Width Integer
  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.unused_5, range, value)

  -- Firm Quote: 1 Bit
  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.firm_quote, range, value)

  -- Unused 2: 2 Bit Unsigned Fixed Width Integer
  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.unused_2, range, value)
end

-- Dissect: Symbol Status Flags
lseg_millennium_level2recovery_mitch_v11_9.symbol_status_flags.dissect = function(buffer, offset, packet, parent)
  local size = lseg_millennium_level2recovery_mitch_v11_9.symbol_status_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_millennium_level2recovery_mitch_v11_9.symbol_status_flags.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.symbol_status_flags, range, display)

  if show.structs then
    lseg_millennium_level2recovery_mitch_v11_9.symbol_status_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Symbol Status Message
lseg_millennium_level2recovery_mitch_v11_9.symbol_status_message = {}

-- Size: Symbol Status Message
lseg_millennium_level2recovery_mitch_v11_9.symbol_status_message.size =
  lseg_millennium_level2recovery_mitch_v11_9.nanosecond.size + 
  lseg_millennium_level2recovery_mitch_v11_9.instrument_id.size + 
  lseg_millennium_level2recovery_mitch_v11_9.reserved_a.size + 
  lseg_millennium_level2recovery_mitch_v11_9.reserved_b.size + 
  lseg_millennium_level2recovery_mitch_v11_9.trading_status.size + 
  lseg_millennium_level2recovery_mitch_v11_9.symbol_status_flags.size + 
  lseg_millennium_level2recovery_mitch_v11_9.reason.size + 
  lseg_millennium_level2recovery_mitch_v11_9.session_change_reason.size + 
  lseg_millennium_level2recovery_mitch_v11_9.new_end_time.size + 
  lseg_millennium_level2recovery_mitch_v11_9.book_type.size

-- Display: Symbol Status Message
lseg_millennium_level2recovery_mitch_v11_9.symbol_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Status Message
lseg_millennium_level2recovery_mitch_v11_9.symbol_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = lseg_millennium_level2recovery_mitch_v11_9.nanosecond.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = lseg_millennium_level2recovery_mitch_v11_9.instrument_id.dissect(buffer, index, packet, parent)

  -- Reserved A: Byte
  index, reserved_a = lseg_millennium_level2recovery_mitch_v11_9.reserved_a.dissect(buffer, index, packet, parent)

  -- Reserved B: Byte
  index, reserved_b = lseg_millennium_level2recovery_mitch_v11_9.reserved_b.dissect(buffer, index, packet, parent)

  -- Trading Status: Byte
  index, trading_status = lseg_millennium_level2recovery_mitch_v11_9.trading_status.dissect(buffer, index, packet, parent)

  -- Symbol Status Flags: Struct of 3 fields
  index, symbol_status_flags = lseg_millennium_level2recovery_mitch_v11_9.symbol_status_flags.dissect(buffer, index, packet, parent)

  -- Reason: Alpha
  index, reason = lseg_millennium_level2recovery_mitch_v11_9.reason.dissect(buffer, index, packet, parent)

  -- Session Change Reason: UInt8
  index, session_change_reason = lseg_millennium_level2recovery_mitch_v11_9.session_change_reason.dissect(buffer, index, packet, parent)

  -- New End Time: Time
  index, new_end_time = lseg_millennium_level2recovery_mitch_v11_9.new_end_time.dissect(buffer, index, packet, parent)

  -- Book Type: UInt8
  index, book_type = lseg_millennium_level2recovery_mitch_v11_9.book_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Status Message
lseg_millennium_level2recovery_mitch_v11_9.symbol_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.symbol_status_message, buffer(offset, 0))
    local index = lseg_millennium_level2recovery_mitch_v11_9.symbol_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_level2recovery_mitch_v11_9.symbol_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_level2recovery_mitch_v11_9.symbol_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Complete Flags
lseg_millennium_level2recovery_mitch_v11_9.snapshot_complete_flags = {}

-- Size: Snapshot Complete Flags
lseg_millennium_level2recovery_mitch_v11_9.snapshot_complete_flags.size = 1

-- Display: Snapshot Complete Flags
lseg_millennium_level2recovery_mitch_v11_9.snapshot_complete_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Firm Quote flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Firm Quote"
  end
  -- Is Rfq Quote flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Rfq Quote"
  end
  -- Is Unused 1 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Unused 1"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Snapshot Complete Flags
lseg_millennium_level2recovery_mitch_v11_9.snapshot_complete_flags.bits = function(range, value, packet, parent)

  -- Unused 5: 5 Bit Unsigned Fixed Width Integer
  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.unused_5, range, value)

  -- Firm Quote: 1 Bit
  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.firm_quote, range, value)

  -- Rfq Quote: 1 Bit
  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.rfq_quote, range, value)

  -- Unused 1: 1 Bit
  parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.unused_1, range, value)
end

-- Dissect: Snapshot Complete Flags
lseg_millennium_level2recovery_mitch_v11_9.snapshot_complete_flags.dissect = function(buffer, offset, packet, parent)
  local size = lseg_millennium_level2recovery_mitch_v11_9.snapshot_complete_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_millennium_level2recovery_mitch_v11_9.snapshot_complete_flags.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.snapshot_complete_flags, range, display)

  if show.structs then
    lseg_millennium_level2recovery_mitch_v11_9.snapshot_complete_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Snapshot Complete Message
lseg_millennium_level2recovery_mitch_v11_9.snapshot_complete_message = {}

-- Size: Snapshot Complete Message
lseg_millennium_level2recovery_mitch_v11_9.snapshot_complete_message.size =
  lseg_millennium_level2recovery_mitch_v11_9.sequence_number.size + 
  lseg_millennium_level2recovery_mitch_v11_9.segment.size + 
  lseg_millennium_level2recovery_mitch_v11_9.instrument_id.size + 
  lseg_millennium_level2recovery_mitch_v11_9.snapshot_complete_flags.size

-- Display: Snapshot Complete Message
lseg_millennium_level2recovery_mitch_v11_9.snapshot_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Complete Message
lseg_millennium_level2recovery_mitch_v11_9.snapshot_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: UInt32
  index, sequence_number = lseg_millennium_level2recovery_mitch_v11_9.sequence_number.dissect(buffer, index, packet, parent)

  -- Segment: Alpha
  index, segment = lseg_millennium_level2recovery_mitch_v11_9.segment.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = lseg_millennium_level2recovery_mitch_v11_9.instrument_id.dissect(buffer, index, packet, parent)

  -- Snapshot Complete Flags: Struct of 4 fields
  index, snapshot_complete_flags = lseg_millennium_level2recovery_mitch_v11_9.snapshot_complete_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Complete Message
lseg_millennium_level2recovery_mitch_v11_9.snapshot_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.snapshot_complete_message, buffer(offset, 0))
    local index = lseg_millennium_level2recovery_mitch_v11_9.snapshot_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_level2recovery_mitch_v11_9.snapshot_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_level2recovery_mitch_v11_9.snapshot_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Response Message
lseg_millennium_level2recovery_mitch_v11_9.snapshot_response_message = {}

-- Size: Snapshot Response Message
lseg_millennium_level2recovery_mitch_v11_9.snapshot_response_message.size =
  lseg_millennium_level2recovery_mitch_v11_9.sequence_number.size + 
  lseg_millennium_level2recovery_mitch_v11_9.order_count.size + 
  lseg_millennium_level2recovery_mitch_v11_9.snapshot_status.size

-- Display: Snapshot Response Message
lseg_millennium_level2recovery_mitch_v11_9.snapshot_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Response Message
lseg_millennium_level2recovery_mitch_v11_9.snapshot_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: UInt32
  index, sequence_number = lseg_millennium_level2recovery_mitch_v11_9.sequence_number.dissect(buffer, index, packet, parent)

  -- Order Count: UInt32
  index, order_count = lseg_millennium_level2recovery_mitch_v11_9.order_count.dissect(buffer, index, packet, parent)

  -- Snapshot Status: Byte
  index, snapshot_status = lseg_millennium_level2recovery_mitch_v11_9.snapshot_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Response Message
lseg_millennium_level2recovery_mitch_v11_9.snapshot_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.snapshot_response_message, buffer(offset, 0))
    local index = lseg_millennium_level2recovery_mitch_v11_9.snapshot_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_level2recovery_mitch_v11_9.snapshot_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_level2recovery_mitch_v11_9.snapshot_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Request Message
lseg_millennium_level2recovery_mitch_v11_9.snapshot_request_message = {}

-- Size: Snapshot Request Message
lseg_millennium_level2recovery_mitch_v11_9.snapshot_request_message.size =
  lseg_millennium_level2recovery_mitch_v11_9.sequence_number.size + 
  lseg_millennium_level2recovery_mitch_v11_9.segment.size + 
  lseg_millennium_level2recovery_mitch_v11_9.instrument_id.size

-- Display: Snapshot Request Message
lseg_millennium_level2recovery_mitch_v11_9.snapshot_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Request Message
lseg_millennium_level2recovery_mitch_v11_9.snapshot_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: UInt32
  index, sequence_number = lseg_millennium_level2recovery_mitch_v11_9.sequence_number.dissect(buffer, index, packet, parent)

  -- Segment: Alpha
  index, segment = lseg_millennium_level2recovery_mitch_v11_9.segment.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = lseg_millennium_level2recovery_mitch_v11_9.instrument_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Request Message
lseg_millennium_level2recovery_mitch_v11_9.snapshot_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.snapshot_request_message, buffer(offset, 0))
    local index = lseg_millennium_level2recovery_mitch_v11_9.snapshot_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_level2recovery_mitch_v11_9.snapshot_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_level2recovery_mitch_v11_9.snapshot_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Response Message
lseg_millennium_level2recovery_mitch_v11_9.login_response_message = {}

-- Size: Login Response Message
lseg_millennium_level2recovery_mitch_v11_9.login_response_message.size =
  lseg_millennium_level2recovery_mitch_v11_9.login_status.size

-- Display: Login Response Message
lseg_millennium_level2recovery_mitch_v11_9.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
lseg_millennium_level2recovery_mitch_v11_9.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Status: Byte
  index, login_status = lseg_millennium_level2recovery_mitch_v11_9.login_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response Message
lseg_millennium_level2recovery_mitch_v11_9.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.login_response_message, buffer(offset, 0))
    local index = lseg_millennium_level2recovery_mitch_v11_9.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_level2recovery_mitch_v11_9.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_level2recovery_mitch_v11_9.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Message
lseg_millennium_level2recovery_mitch_v11_9.login_request_message = {}

-- Size: Login Request Message
lseg_millennium_level2recovery_mitch_v11_9.login_request_message.size =
  lseg_millennium_level2recovery_mitch_v11_9.username.size + 
  lseg_millennium_level2recovery_mitch_v11_9.password.size

-- Display: Login Request Message
lseg_millennium_level2recovery_mitch_v11_9.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
lseg_millennium_level2recovery_mitch_v11_9.login_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: Alpha
  index, username = lseg_millennium_level2recovery_mitch_v11_9.username.dissect(buffer, index, packet, parent)

  -- Password: Alpha
  index, password = lseg_millennium_level2recovery_mitch_v11_9.password.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Message
lseg_millennium_level2recovery_mitch_v11_9.login_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.login_request_message, buffer(offset, 0))
    local index = lseg_millennium_level2recovery_mitch_v11_9.login_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_level2recovery_mitch_v11_9.login_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_level2recovery_mitch_v11_9.login_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
lseg_millennium_level2recovery_mitch_v11_9.payload = {}

-- Dissect: Payload
lseg_millennium_level2recovery_mitch_v11_9.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Request Message
  if message_type == 0x01 then
    return lseg_millennium_level2recovery_mitch_v11_9.login_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response Message
  if message_type == 0x02 then
    return lseg_millennium_level2recovery_mitch_v11_9.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Request Message
  if message_type == 0x81 then
    return lseg_millennium_level2recovery_mitch_v11_9.snapshot_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Response Message
  if message_type == 0x82 then
    return lseg_millennium_level2recovery_mitch_v11_9.snapshot_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Complete Message
  if message_type == 0x83 then
    return lseg_millennium_level2recovery_mitch_v11_9.snapshot_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request Message
  if message_type == 0x05 then
    return offset
  end
  -- Dissect Symbol Status Message
  if message_type == 0x48 then
    return lseg_millennium_level2recovery_mitch_v11_9.symbol_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == 0x41 then
    return lseg_millennium_level2recovery_mitch_v11_9.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Attributed Order Message
  if message_type == 0x46 then
    return lseg_millennium_level2recovery_mitch_v11_9.add_attributed_order_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
lseg_millennium_level2recovery_mitch_v11_9.message_header = {}

-- Size: Message Header
lseg_millennium_level2recovery_mitch_v11_9.message_header.size =
  lseg_millennium_level2recovery_mitch_v11_9.message_length.size + 
  lseg_millennium_level2recovery_mitch_v11_9.message_type.size

-- Display: Message Header
lseg_millennium_level2recovery_mitch_v11_9.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lseg_millennium_level2recovery_mitch_v11_9.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = lseg_millennium_level2recovery_mitch_v11_9.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, message_type = lseg_millennium_level2recovery_mitch_v11_9.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lseg_millennium_level2recovery_mitch_v11_9.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.message_header, buffer(offset, 0))
    local index = lseg_millennium_level2recovery_mitch_v11_9.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_level2recovery_mitch_v11_9.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_level2recovery_mitch_v11_9.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
lseg_millennium_level2recovery_mitch_v11_9.message = {}

-- Display: Message
lseg_millennium_level2recovery_mitch_v11_9.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lseg_millennium_level2recovery_mitch_v11_9.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = lseg_millennium_level2recovery_mitch_v11_9.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 9 branches
  index = lseg_millennium_level2recovery_mitch_v11_9.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
lseg_millennium_level2recovery_mitch_v11_9.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.message, buffer(offset, 0))
    local current = lseg_millennium_level2recovery_mitch_v11_9.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = lseg_millennium_level2recovery_mitch_v11_9.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    lseg_millennium_level2recovery_mitch_v11_9.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Unit Header
lseg_millennium_level2recovery_mitch_v11_9.unit_header = {}

-- Size: Unit Header
lseg_millennium_level2recovery_mitch_v11_9.unit_header.size =
  lseg_millennium_level2recovery_mitch_v11_9.length.size + 
  lseg_millennium_level2recovery_mitch_v11_9.message_count.size + 
  lseg_millennium_level2recovery_mitch_v11_9.market_data_group.size + 
  lseg_millennium_level2recovery_mitch_v11_9.sequence_number.size

-- Display: Unit Header
lseg_millennium_level2recovery_mitch_v11_9.unit_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Header
lseg_millennium_level2recovery_mitch_v11_9.unit_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = lseg_millennium_level2recovery_mitch_v11_9.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = lseg_millennium_level2recovery_mitch_v11_9.message_count.dissect(buffer, index, packet, parent)

  -- Market Data Group: 1 Byte Ascii String
  index, market_data_group = lseg_millennium_level2recovery_mitch_v11_9.market_data_group.dissect(buffer, index, packet, parent)

  -- Sequence Number: UInt32
  index, sequence_number = lseg_millennium_level2recovery_mitch_v11_9.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Header
lseg_millennium_level2recovery_mitch_v11_9.unit_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.unit_header, buffer(offset, 0))
    local index = lseg_millennium_level2recovery_mitch_v11_9.unit_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_level2recovery_mitch_v11_9.unit_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_level2recovery_mitch_v11_9.unit_header.fields(buffer, offset, packet, parent)
  end
end

-- Tcp Unit
lseg_millennium_level2recovery_mitch_v11_9.tcp_unit = {}

-- Display: Tcp Unit
lseg_millennium_level2recovery_mitch_v11_9.tcp_unit.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tcp Unit
lseg_millennium_level2recovery_mitch_v11_9.tcp_unit.fields = function(buffer, offset, packet, parent, size_of_tcp_unit)
  local index = offset

  -- Unit Header: Struct of 4 fields
  index, unit_header = lseg_millennium_level2recovery_mitch_v11_9.unit_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = offset + size_of_tcp_unit

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Runtime Size Of: Message
    index, message = lseg_millennium_level2recovery_mitch_v11_9.message.dissect(buffer, index, packet, parent, message_length, message_index)
  end

  return index
end

-- Dissect: Tcp Unit
lseg_millennium_level2recovery_mitch_v11_9.tcp_unit.dissect = function(buffer, offset, packet, parent, size_of_tcp_unit)
  local index = offset + size_of_tcp_unit

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9.fields.tcp_unit, buffer(offset, 0))
    local current = lseg_millennium_level2recovery_mitch_v11_9.tcp_unit.fields(buffer, offset, packet, parent, size_of_tcp_unit)
    parent:set_len(size_of_tcp_unit)
    local display = lseg_millennium_level2recovery_mitch_v11_9.tcp_unit.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    lseg_millennium_level2recovery_mitch_v11_9.tcp_unit.fields(buffer, offset, packet, parent, size_of_tcp_unit)

    return index
  end
end

-- Remaining Bytes For: Tcp Unit
local tcp_unit_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < lseg_millennium_level2recovery_mitch_v11_9.unit_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):le_uint()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
lseg_millennium_level2recovery_mitch_v11_9.packet = {}

-- Verify required size of Tcp packet
lseg_millennium_level2recovery_mitch_v11_9.packet.requiredsize = function(buffer)
  return buffer:len() >= lseg_millennium_level2recovery_mitch_v11_9.unit_header.size
end

-- Dissect Packet
lseg_millennium_level2recovery_mitch_v11_9.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Tcp Unit
  local end_of_payload = buffer:len()

  -- Tcp Unit: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_tcp_unit = tcp_unit_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = lseg_millennium_level2recovery_mitch_v11_9.tcp_unit.dissect(buffer, index, packet, parent, size_of_tcp_unit)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_lseg_millennium_level2recovery_mitch_v11_9.init()
end

-- Dissector for Lseg Millennium Level2Recovery Mitch 11.9
function omi_lseg_millennium_level2recovery_mitch_v11_9.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_lseg_millennium_level2recovery_mitch_v11_9.name

  -- Dissect protocol
  local protocol = parent:add(omi_lseg_millennium_level2recovery_mitch_v11_9, buffer(), omi_lseg_millennium_level2recovery_mitch_v11_9.description, "("..buffer:len().." Bytes)")
  return lseg_millennium_level2recovery_mitch_v11_9.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Lseg Millennium Level2Recovery Mitch 11.9 (Tcp)
local function omi_lseg_millennium_level2recovery_mitch_v11_9_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not lseg_millennium_level2recovery_mitch_v11_9.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_lseg_millennium_level2recovery_mitch_v11_9
  omi_lseg_millennium_level2recovery_mitch_v11_9.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lseg Millennium Level2Recovery Mitch 11.9
omi_lseg_millennium_level2recovery_mitch_v11_9:register_heuristic("tcp", omi_lseg_millennium_level2recovery_mitch_v11_9_tcp_heuristic)

-- Register Lseg Millennium Level2Recovery Mitch 11.9 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_lseg_millennium_level2recovery_mitch_v11_9)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: London Stock Exchange
--   Version: 11.9
--   Date: Tuesday, August 28, 2018
--   Specification: mit303issue119.pdf
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
