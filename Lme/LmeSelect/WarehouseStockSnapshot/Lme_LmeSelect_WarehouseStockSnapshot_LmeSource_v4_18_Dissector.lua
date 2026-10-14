-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lme LmeSelect WarehouseStockSnapshot LmeSource 4.18 Protocol
local omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18 = Proto("Omi.Lme.LmeSelect.WarehouseStockSnapshot.LmeSource.v4.18", "Lme LmeSelect WarehouseStockSnapshot LmeSource 4.18")

-- Protocol table
local lme_lmeselect_warehousestocksnapshot_lmesource_v4_18 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lme LmeSelect WarehouseStockSnapshot LmeSource 4.18 Fields
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.filler = ProtoField.new("Filler", "lme.lmeselect.warehousestocksnapshot.lmesource.v4.18.filler", ftypes.STRING, nil, nil, nil, "Filler aligning the sequence number to a four byte boundary")
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.grade_code = ProtoField.new("Grade Code", "lme.lmeselect.warehousestocksnapshot.lmesource.v4.18.gradecode", ftypes.STRING, nil, nil, nil, "Grade of the commodity. Space if ReportLevel is Summary or Location.")
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.last_seq_num = ProtoField.new("Last Seq Num", "lme.lmeselect.warehousestocksnapshot.lmesource.v4.18.lastseqnum", ftypes.UINT32, nil, nil, nil, "Sequence number in the real-time channel with which the refresh is synchronised.")
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.location = ProtoField.new("Location", "lme.lmeselect.warehousestocksnapshot.lmesource.v4.18.location", ftypes.STRING, nil, nil, nil, "Location where the commodity exists, as a four character code. Space if ReportLevel is Summary or Grade.")
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.msg_count = ProtoField.new("Msg Count", "lme.lmeselect.warehousestocksnapshot.lmesource.v4.18.msgcount", ftypes.UINT8, nil, nil, nil, "Number of messages included in the packet")
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.msg_size = ProtoField.new("Msg Size", "lme.lmeselect.warehousestocksnapshot.lmesource.v4.18.msgsize", ftypes.UINT16, nil, nil, nil, "Message length, including this field")
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.msg_type = ProtoField.new("Msg Type", "lme.lmeselect.warehousestocksnapshot.lmesource.v4.18.msgtype", ftypes.UINT16, nil, nil, nil, "Type of message, selecting the payload that follows the message header")
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.new_seq_no = ProtoField.new("New Seq No", "lme.lmeselect.warehousestocksnapshot.lmesource.v4.18.newseqno", ftypes.UINT32, nil, nil, nil, "New sequence number. Always set to 1.")
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.pkt_size = ProtoField.new("Pkt Size", "lme.lmeselect.warehousestocksnapshot.lmesource.v4.18.pktsize", ftypes.UINT16, nil, nil, nil, "Size of the packet, including this field")
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.product_code = ProtoField.new("Product Code", "lme.lmeselect.warehousestocksnapshot.lmesource.v4.18.productcode", ftypes.STRING, nil, nil, nil, "Product code. This identifies the commodity.")
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.record_count = ProtoField.new("Record Count", "lme.lmeselect.warehousestocksnapshot.lmesource.v4.18.recordcount", ftypes.UINT16, nil, nil, nil, "Number of repeating records in this message.")
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.remaining_records = ProtoField.new("Remaining Records", "lme.lmeselect.warehousestocksnapshot.lmesource.v4.18.remainingrecords", ftypes.UINT16, nil, nil, nil, "Number of remaining records to be published for a product. When the value of RemainingRecords equals RecordCount this is the last message for the report level.")
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.report_date = ProtoField.new("Report Date", "lme.lmeselect.warehousestocksnapshot.lmesource.v4.18.reportdate", ftypes.UINT32, nil, nil, nil, "The business date for which the stock movement is being reported, as YYYYMMDD.")
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.report_level = ProtoField.new("Report Level", "lme.lmeselect.warehousestocksnapshot.lmesource.v4.18.reportlevel", ftypes.STRING, nil, nil, nil, "Indicates the level at which the stock movement quantity is being reported.")
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.send_time = ProtoField.new("Send Time", "lme.lmeselect.warehousestocksnapshot.lmesource.v4.18.sendtime", ftypes.UINT64, nil, nil, nil, "UTC timestamp for the time this packet was sent, in nanoseconds since epoch, provided to the nearest microsecond")
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.seq_num = ProtoField.new("Seq Num", "lme.lmeselect.warehousestocksnapshot.lmesource.v4.18.seqnum", ftypes.UINT32, nil, nil, nil, "Sequence number of the first message in the packet")
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.stock_quantity = ProtoField.new("Stock Quantity", "lme.lmeselect.warehousestocksnapshot.lmesource.v4.18.stockquantity", ftypes.INT32, nil, nil, nil, "Stock quantity.")
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.stock_records = ProtoField.new("Stock Records", "lme.lmeselect.warehousestocksnapshot.lmesource.v4.18.stockrecords", ftypes.STRING, nil, nil, nil, "One warehouse stock movement record. The specification's length formula names the repeat NoOfRecords, a field no table of this message declares; RecordCount is the count it gives, as the number of repeating records in this message")
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.stock_status = ProtoField.new("Stock Status", "lme.lmeselect.warehousestocksnapshot.lmesource.v4.18.stockstatus", ftypes.STRING, nil, nil, nil, "Stock status.")

-- Lme LmeSelect WarehouseStockSnapshot LmeSource 4.18 Framing
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.message = ProtoField.new("Message", "lme.lmeselect.warehousestocksnapshot.lmesource.v4.18.message", ftypes.STRING, nil, nil, nil, "LMEsource application messages carried by this packet; a message is never fragmented across packets")
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.message_header = ProtoField.new("Message Header", "lme.lmeselect.warehousestocksnapshot.lmesource.v4.18.messageheader", ftypes.STRING, nil, nil, nil, "LMEsource message header, giving the size of the message and its type")
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.packet = ProtoField.new("Packet", "lme.lmeselect.warehousestocksnapshot.lmesource.v4.18.packet", ftypes.STRING, nil, nil, nil, "LMEsource multicast packet, a packet header followed by Msg Count complete messages")
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.packet_header = ProtoField.new("Packet Header", "lme.lmeselect.warehousestocksnapshot.lmesource.v4.18.packetheader", ftypes.STRING, nil, nil, nil, "LMEsource packet header, giving the packet size, the number of messages it carries, the sequence number of the first of them and the time the packet was sent")

-- Lme LmeSelect WarehouseStockSnapshot 4.18 Application Messages
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.refresh_complete_message = ProtoField.new("Refresh Complete Message", "lme.lmeselect.warehousestocksnapshot.lmesource.v4.18.refreshcompletemessage", ftypes.STRING, nil, nil, nil, "Published to mark the end of a refresh cycle.")
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.sequence_reset_message = ProtoField.new("Sequence Reset Message", "lme.lmeselect.warehousestocksnapshot.lmesource.v4.18.sequenceresetmessage", ftypes.STRING, nil, nil, nil, "Sent on each multicast channel at start of day, and intraday in case of a disaster recovery. The client must ignore the sequence number of the Sequence Reset message itself and set the next expected sequence number to NewSeqNo, clear all cached data for all instruments and subscribe to the refresh channels to receive the current state of the market.")
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.warehouse_stock_movement_message = ProtoField.new("Warehouse Stock Movement Message", "lme.lmeselect.warehousestocksnapshot.lmesource.v4.18.warehousestockmovementmessage", ftypes.STRING, nil, nil, nil, "Provides stock movement data from LME approved warehouses by product, grade, stock status and location in tonnes. Stock figures for one location, or port, are the aggregate of all the stocks in all the warehouses in that one location.")

-- Lme LmeSelect WarehouseStockSnapshot LmeSource 4.18 Generated Fields
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.message_index = ProtoField.new("Message Index", "lme.lmeselect.warehousestocksnapshot.lmesource.v4.18.messageindex", ftypes.UINT16)
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.stock_records_index = ProtoField.new("Stock Records Index", "lme.lmeselect.warehousestocksnapshot.lmesource.v4.18.stockrecordsindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Lme LmeSelect WarehouseStockSnapshot LmeSource 4.18 Element Dissection Options
show.structs = true
show.headers = true
show.application_messages = true
show.repeating_groups = true
show.indexes = true

-- Register Lme LmeSelect WarehouseStockSnapshot LmeSource 4.18 Show Options
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.prefs.show_application_messages then
    show.application_messages = omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.prefs.show_application_messages
  end
  if show.headers ~= omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.prefs.show_headers then
    show.headers = omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.prefs.show_headers
  end
  if show.repeating_groups ~= omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.prefs.show_repeating_groups then
    show.repeating_groups = omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.prefs.show_repeating_groups
  end
  if show.structs ~= omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.prefs.show_structs then
    show.structs = omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.prefs.show_structs
  end
  if show.indexes ~= omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.prefs.show_indexes then
    show.indexes = omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.prefs.show_indexes
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
-- Lme LmeSelect WarehouseStockSnapshot LmeSource 4.18 Fields
-----------------------------------------------------------------------

-- Filler
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.filler = {}

-- Size: Filler
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.filler.size = 1

-- Display: Filler
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.filler.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.filler.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.filler, range, value, display)

  return offset + length, value
end

-- Grade Code
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.grade_code = {}

-- Size: Grade Code
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.grade_code.size = 4

-- Display: Grade Code
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.grade_code.display = function(value)
  return "Grade Code: "..value
end

-- Dissect: Grade Code
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.grade_code.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.grade_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.grade_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.grade_code, range, value, display)

  return offset + length, value
end

-- Last Seq Num
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.last_seq_num = {}

-- Size: Last Seq Num
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.last_seq_num.size = 4

-- Display: Last Seq Num
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Location
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.location = {}

-- Size: Location
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.location.size = 4

-- Display: Location
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.location.display = function(value)
  return "Location: "..value
end

-- Dissect: Location
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.location.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.location.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.location.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.location, range, value, display)

  return offset + length, value
end

-- Msg Count
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.msg_count = {}

-- Size: Msg Count
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.msg_count.size = 1

-- Display: Msg Count
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.msg_count.display = function(value)
  return "Msg Count: "..value
end

-- Dissect: Msg Count
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.msg_count.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.msg_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.msg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.msg_count, range, value, display)

  return offset + length, value
end

-- Msg Size
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.msg_size = {}

-- Size: Msg Size
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.msg_size.size = 2

-- Display: Msg Size
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.msg_size.display = function(value)
  return "Msg Size: "..value
end

-- Dissect: Msg Size
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.msg_size.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.msg_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.msg_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.msg_size, range, value, display)

  return offset + length, value
end

-- Msg Type
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.msg_type = {}

-- Size: Msg Type
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.msg_type.size = 2

-- Display: Msg Type
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.msg_type.display = function(value)
  if value == 100 then
    return "Msg Type: Sequence Reset Message (100)"
  end
  if value == 426 then
    return "Msg Type: Warehouse Stock Movement Message (426)"
  end
  if value == 203 then
    return "Msg Type: Refresh Complete Message (203)"
  end

  return "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.msg_type, range, value, display)

  return offset + length, value
end

-- New Seq No
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.new_seq_no = {}

-- Size: New Seq No
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.new_seq_no.size = 4

-- Display: New Seq No
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.new_seq_no.display = function(value)
  return "New Seq No: "..value
end

-- Dissect: New Seq No
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.new_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.new_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.new_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.new_seq_no, range, value, display)

  return offset + length, value
end

-- Pkt Size
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.pkt_size = {}

-- Size: Pkt Size
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.pkt_size.size = 2

-- Display: Pkt Size
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Product Code
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.product_code = {}

-- Size: Product Code
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.product_code.size = 2

-- Display: Product Code
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.product_code.display = function(value)
  return "Product Code: "..value
end

-- Dissect: Product Code
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.product_code.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.product_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.product_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.product_code, range, value, display)

  return offset + length, value
end

-- Record Count
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.record_count = {}

-- Size: Record Count
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.record_count.size = 2

-- Display: Record Count
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.record_count.display = function(value)
  return "Record Count: "..value
end

-- Dissect: Record Count
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.record_count.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.record_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.record_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.record_count, range, value, display)

  return offset + length, value
end

-- Remaining Records
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.remaining_records = {}

-- Size: Remaining Records
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.remaining_records.size = 2

-- Display: Remaining Records
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.remaining_records.display = function(value)
  return "Remaining Records: "..value
end

-- Dissect: Remaining Records
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.remaining_records.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.remaining_records.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.remaining_records.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.remaining_records, range, value, display)

  return offset + length, value
end

-- Report Date
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.report_date = {}

-- Size: Report Date
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.report_date.size = 4

-- Display: Report Date
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.report_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Report Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Report Date
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.report_date.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.report_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.report_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.report_date, range, value, display)

  return offset + length, value
end

-- Report Level
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.report_level = {}

-- Size: Report Level
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.report_level.size = 12

-- Display: Report Level
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.report_level.display = function(value)
  if value == "Summary" then
    return "Report Level: Summary (Summary)"
  end
  if value == "Grade" then
    return "Report Level: Grade (Grade)"
  end
  if value == "Location" then
    return "Report Level: Location (Location)"
  end
  if value == "Detailed" then
    return "Report Level: Detailed (Detailed)"
  end

  return "Report Level: Unknown("..value..")"
end

-- Dissect: Report Level
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.report_level.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.report_level.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.report_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.report_level, range, value, display)

  return offset + length, value
end

-- Send Time
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.send_time = {}

-- Size: Send Time
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.send_time.size = 8

-- Display: Send Time
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.send_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Send Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Send Time
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.send_time.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.send_time, range, value, display)

  return offset + length, value
end

-- Seq Num
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.seq_num = {}

-- Size: Seq Num
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.seq_num.size = 4

-- Display: Seq Num
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Stock Quantity
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.stock_quantity = {}

-- Size: Stock Quantity
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.stock_quantity.size = 4

-- Display: Stock Quantity
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.stock_quantity.display = function(value)
  return "Stock Quantity: "..value
end

-- Dissect: Stock Quantity
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.stock_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.stock_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.stock_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.stock_quantity, range, value, display)

  return offset + length, value
end

-- Stock Status
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.stock_status = {}

-- Size: Stock Status
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.stock_status.size = 3

-- Display: Stock Status
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.stock_status.display = function(value)
  if value == "CLS" then
    return "Stock Status: Closing Stock (CLS)"
  end
  if value == "OPN" then
    return "Stock Status: Opening Stock (OPN)"
  end
  if value == "DIN" then
    return "Stock Status: Stock Delivered In (DIN)"
  end
  if value == "DOT" then
    return "Stock Status: Stock Delivered Out (DOT)"
  end
  if value == "MOV" then
    return "Stock Status: Stock Movement (MOV)"
  end
  if value == "COW" then
    return "Stock Status: Closing Stock On Warrant (COW)"
  end
  if value == "CCW" then
    return "Stock Status: Closing Stock On Cancelled Warrant (CCW)"
  end

  return "Stock Status: Unknown("..value..")"
end

-- Dissect: Stock Status
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.stock_status.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.stock_status.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.stock_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.stock_status, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Lme LmeSelect WarehouseStockSnapshot LmeSource 4.18
-----------------------------------------------------------------------

-- Refresh Complete Message
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.refresh_complete_message = {}

-- Size: Refresh Complete Message
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.refresh_complete_message.size =
  lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.last_seq_num.size

-- Display: Refresh Complete Message
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.refresh_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Complete Message
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.refresh_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Seq Num: Uint32
  index, last_seq_num = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Complete Message
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.refresh_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.refresh_complete_message, buffer(offset, 0))
    local index = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.refresh_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.refresh_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.refresh_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Records
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.stock_records = {}

-- Size: Stock Records
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.stock_records.size =
  lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.product_code.size + 
  lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.location.size + 
  lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.grade_code.size + 
  lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.stock_status.size + 
  lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.stock_quantity.size

-- Display: Stock Records
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.stock_records.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Records
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.stock_records.fields = function(buffer, offset, packet, parent, stock_records_index)
  local index = offset

  -- Implicit Stock Records Index
  if stock_records_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.stock_records_index, stock_records_index)
    iteration:set_generated()
  end

  -- Product Code: String
  index, product_code = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.product_code.dissect(buffer, index, packet, parent)

  -- Location: String
  index, location = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.location.dissect(buffer, index, packet, parent)

  -- Grade Code: String
  index, grade_code = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.grade_code.dissect(buffer, index, packet, parent)

  -- Stock Status: String
  index, stock_status = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.stock_status.dissect(buffer, index, packet, parent)

  -- Stock Quantity: Int32
  index, stock_quantity = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.stock_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Records
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.stock_records.dissect = function(buffer, offset, packet, parent, stock_records_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.stock_records, buffer(offset, 0))
    local index = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.stock_records.fields(buffer, offset, packet, parent, stock_records_index)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.stock_records.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.stock_records.fields(buffer, offset, packet, parent, stock_records_index)
  end
end

-- Warehouse Stock Movement Message
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.warehouse_stock_movement_message = {}

-- Calculate size of: Warehouse Stock Movement Message
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.warehouse_stock_movement_message.size = function(buffer, offset)
  local index = 0

  index = index + lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.report_date.size

  index = index + lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.report_level.size

  index = index + lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.remaining_records.size

  index = index + lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.record_count.size

  -- Calculate field size from count
  local stock_records_count = buffer(offset + index - 2, 2):le_uint()
  index = index + stock_records_count * 17

  return index
end

-- Display: Warehouse Stock Movement Message
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.warehouse_stock_movement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Warehouse Stock Movement Message
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.warehouse_stock_movement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Report Date: Uint32
  index, report_date = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.report_date.dissect(buffer, index, packet, parent)

  -- Report Level: String
  index, report_level = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.report_level.dissect(buffer, index, packet, parent)

  -- Remaining Records: Uint16
  index, remaining_records = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.remaining_records.dissect(buffer, index, packet, parent)

  -- Record Count: Uint16
  index, record_count = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.record_count.dissect(buffer, index, packet, parent)

  -- Repeating: Stock Records
  for stock_records_index = 1, record_count do
    index, stock_records = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.stock_records.dissect(buffer, index, packet, parent, stock_records_index)
  end

  return index
end

-- Dissect: Warehouse Stock Movement Message
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.warehouse_stock_movement_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.warehouse_stock_movement_message, buffer(offset, 0))
    local index = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.warehouse_stock_movement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.warehouse_stock_movement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.warehouse_stock_movement_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Reset Message
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.sequence_reset_message = {}

-- Size: Sequence Reset Message
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.sequence_reset_message.size =
  lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.new_seq_no.size

-- Display: Sequence Reset Message
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.sequence_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Reset Message
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.sequence_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Seq No: Uint32
  index, new_seq_no = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.new_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Reset Message
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.sequence_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.sequence_reset_message, buffer(offset, 0))
    local index = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.sequence_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.sequence_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.sequence_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.payload = {}

-- Dissect: Payload
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Sequence Reset Message
  if msg_type == 100 then
    return lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.sequence_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Warehouse Stock Movement Message
  if msg_type == 426 then
    return lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.warehouse_stock_movement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Complete Message
  if msg_type == 203 then
    return lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.refresh_complete_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.message_header = {}

-- Size: Message Header
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.message_header.size =
  lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.msg_size.size + 
  lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.msg_type.size

-- Display: Message Header
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Size: Uint16
  index, msg_size = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Type: Uint16
  index, msg_type = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.msg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.message_header, buffer(offset, 0))
    local index = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.message = {}

-- Calculate size of: Message
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.message.size = function(buffer, offset)
  local index = 0

  index = index + lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.message_header.size

  -- Parse runtime size of: Payload
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Message
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 3 branches
  index = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.message.dissect = function(buffer, offset, packet, parent, message_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.message, buffer(offset, 0))
    local index = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.message.fields(buffer, offset, packet, parent, message_index)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.message.fields(buffer, offset, packet, parent, message_index)
  end
end

-- Packet Header
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.packet_header = {}

-- Size: Packet Header
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.packet_header.size =
  lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.pkt_size.size + 
  lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.msg_count.size + 
  lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.filler.size + 
  lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.seq_num.size + 
  lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.send_time.size

-- Display: Packet Header
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: Uint16
  index, pkt_size = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.pkt_size.dissect(buffer, index, packet, parent)

  -- Msg Count: Uint8
  index, msg_count = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.msg_count.dissect(buffer, index, packet, parent)

  -- Filler: String
  index, filler = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.filler.dissect(buffer, index, packet, parent)

  -- Seq Num: Uint32
  index, seq_num = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: Uint64
  index, send_time = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.fields.packet_header, buffer(offset, 0))
    local index = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.packet = {}

-- Verify required size of Udp packet
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.packet.requiredsize = function(buffer)
  return buffer:len() >= lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.packet_header.size
end

-- Dissect Packet
lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Count
  local msg_count = buffer(index - 14, 1):uint()

  -- Repeating: Message
  for message_index = 1, msg_count do
    index, message = lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.init()
end

-- Dissector for Lme LmeSelect WarehouseStockSnapshot LmeSource 4.18
function omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.name

  -- Dissect protocol
  local protocol = parent:add(omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18, buffer(), omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.description, "("..buffer:len().." Bytes)")
  return lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Lme LmeSelect WarehouseStockSnapshot LmeSource 4.18 (Udp)
local function omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18
  omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lme LmeSelect WarehouseStockSnapshot LmeSource 4.18
omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18:register_heuristic("udp", omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18_udp_heuristic)

-- Register Lme LmeSelect WarehouseStockSnapshot LmeSource 4.18 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_lme_lmeselect_warehousestocksnapshot_lmesource_v4_18)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: The London Metal Exchange
--   Version: 4.18
--   Date: Tuesday, August 18, 2026
--   Specification: LMEsource Client Interface Specification v4 18.pdf
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
