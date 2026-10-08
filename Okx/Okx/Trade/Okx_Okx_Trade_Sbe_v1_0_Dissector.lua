-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Okx Okx Trade Sbe 1.0 Protocol
local omi_okx_okx_trade_sbe_v1_0 = Proto("Omi.Okx.Okx.Trade.Sbe.v1.0", "Okx Okx Trade Sbe 1.0")

-- Protocol table
local okx_okx_trade_sbe_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Okx Okx Trade Sbe 1.0 Fields
omi_okx_okx_trade_sbe_v1_0.fields.amend_orders_message_orders_group = ProtoField.new("Amend Orders Message orders Group", "okx.okx.trade.sbe.v1.0.amendordersmessageordersgroup", ftypes.STRING)
omi_okx_okx_trade_sbe_v1_0.fields.amend_orders_message_orders_groups = ProtoField.new("Amend Orders Message orders Groups", "okx.okx.trade.sbe.v1.0.amendordersmessageordersgroups", ftypes.STRING)
omi_okx_okx_trade_sbe_v1_0.fields.amend_orders_response_message_data_group = ProtoField.new("Amend Orders Response Message data Group", "okx.okx.trade.sbe.v1.0.amendordersresponsemessagedatagroup", ftypes.STRING)
omi_okx_okx_trade_sbe_v1_0.fields.amend_orders_response_message_data_groups = ProtoField.new("Amend Orders Response Message data Groups", "okx.okx.trade.sbe.v1.0.amendordersresponsemessagedatagroups", ftypes.STRING)
omi_okx_okx_trade_sbe_v1_0.fields.block_length = ProtoField.new("Block Length", "okx.okx.trade.sbe.v1.0.blocklength", ftypes.UINT16)
omi_okx_okx_trade_sbe_v1_0.fields.cancel_orders_message_orders_group = ProtoField.new("Cancel Orders Message orders Group", "okx.okx.trade.sbe.v1.0.cancelordersmessageordersgroup", ftypes.STRING)
omi_okx_okx_trade_sbe_v1_0.fields.cancel_orders_message_orders_groups = ProtoField.new("Cancel Orders Message orders Groups", "okx.okx.trade.sbe.v1.0.cancelordersmessageordersgroups", ftypes.STRING)
omi_okx_okx_trade_sbe_v1_0.fields.cancel_orders_response_message_data_group = ProtoField.new("Cancel Orders Response Message data Group", "okx.okx.trade.sbe.v1.0.cancelordersresponsemessagedatagroup", ftypes.STRING)
omi_okx_okx_trade_sbe_v1_0.fields.cancel_orders_response_message_data_groups = ProtoField.new("Cancel Orders Response Message data Groups", "okx.okx.trade.sbe.v1.0.cancelordersresponsemessagedatagroups", ftypes.STRING)
omi_okx_okx_trade_sbe_v1_0.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "okx.okx.trade.sbe.v1.0.clordid", ftypes.INT64)
omi_okx_okx_trade_sbe_v1_0.fields.code = ProtoField.new("Code", "okx.okx.trade.sbe.v1.0.code", ftypes.INT32)
omi_okx_okx_trade_sbe_v1_0.fields.code_optional = ProtoField.new("Code Optional", "okx.okx.trade.sbe.v1.0.codeoptional", ftypes.INT32)
omi_okx_okx_trade_sbe_v1_0.fields.exp_time = ProtoField.new("Exp Time", "okx.okx.trade.sbe.v1.0.exptime", ftypes.INT64)
omi_okx_okx_trade_sbe_v1_0.fields.group_size_encoding = ProtoField.new("Group Size Encoding", "okx.okx.trade.sbe.v1.0.groupsizeencoding", ftypes.STRING)
omi_okx_okx_trade_sbe_v1_0.fields.id = ProtoField.new("Id", "okx.okx.trade.sbe.v1.0.id", ftypes.INT64)
omi_okx_okx_trade_sbe_v1_0.fields.in_time = ProtoField.new("In Time", "okx.okx.trade.sbe.v1.0.intime", ftypes.INT64)
omi_okx_okx_trade_sbe_v1_0.fields.inst_id_code = ProtoField.new("Inst Id Code", "okx.okx.trade.sbe.v1.0.instidcode", ftypes.INT64)
omi_okx_okx_trade_sbe_v1_0.fields.new_px_exponent = ProtoField.new("New Px Exponent", "okx.okx.trade.sbe.v1.0.newpxexponent", ftypes.INT8)
omi_okx_okx_trade_sbe_v1_0.fields.new_px_mantissa = ProtoField.new("New Px Mantissa", "okx.okx.trade.sbe.v1.0.newpxmantissa", ftypes.INT64)
omi_okx_okx_trade_sbe_v1_0.fields.new_sz_exponent = ProtoField.new("New Sz Exponent", "okx.okx.trade.sbe.v1.0.newszexponent", ftypes.INT8)
omi_okx_okx_trade_sbe_v1_0.fields.new_sz_mantissa = ProtoField.new("New Sz Mantissa", "okx.okx.trade.sbe.v1.0.newszmantissa", ftypes.INT64)
omi_okx_okx_trade_sbe_v1_0.fields.num_in_group = ProtoField.new("Num In Group", "okx.okx.trade.sbe.v1.0.numingroup", ftypes.UINT16)
omi_okx_okx_trade_sbe_v1_0.fields.ord_id = ProtoField.new("Ord Id", "okx.okx.trade.sbe.v1.0.ordid", ftypes.INT64)
omi_okx_okx_trade_sbe_v1_0.fields.ord_type = ProtoField.new("Ord Type", "okx.okx.trade.sbe.v1.0.ordtype", ftypes.INT8)
omi_okx_okx_trade_sbe_v1_0.fields.out_time = ProtoField.new("Out Time", "okx.okx.trade.sbe.v1.0.outtime", ftypes.INT64)
omi_okx_okx_trade_sbe_v1_0.fields.place_orders_message_orders_group = ProtoField.new("Place Orders Message orders Group", "okx.okx.trade.sbe.v1.0.placeordersmessageordersgroup", ftypes.STRING)
omi_okx_okx_trade_sbe_v1_0.fields.place_orders_message_orders_groups = ProtoField.new("Place Orders Message orders Groups", "okx.okx.trade.sbe.v1.0.placeordersmessageordersgroups", ftypes.STRING)
omi_okx_okx_trade_sbe_v1_0.fields.place_orders_response_message_data_group = ProtoField.new("Place Orders Response Message data Group", "okx.okx.trade.sbe.v1.0.placeordersresponsemessagedatagroup", ftypes.STRING)
omi_okx_okx_trade_sbe_v1_0.fields.place_orders_response_message_data_groups = ProtoField.new("Place Orders Response Message data Groups", "okx.okx.trade.sbe.v1.0.placeordersresponsemessagedatagroups", ftypes.STRING)
omi_okx_okx_trade_sbe_v1_0.fields.px_exponent = ProtoField.new("Px Exponent", "okx.okx.trade.sbe.v1.0.pxexponent", ftypes.INT8)
omi_okx_okx_trade_sbe_v1_0.fields.px_mantissa = ProtoField.new("Px Mantissa", "okx.okx.trade.sbe.v1.0.pxmantissa", ftypes.INT64)
omi_okx_okx_trade_sbe_v1_0.fields.req_id = ProtoField.new("Req Id", "okx.okx.trade.sbe.v1.0.reqid", ftypes.INT64)
omi_okx_okx_trade_sbe_v1_0.fields.rpi_taker_access = ProtoField.new("Rpi Taker Access", "okx.okx.trade.sbe.v1.0.rpitakeraccess", ftypes.INT8)
omi_okx_okx_trade_sbe_v1_0.fields.s_code = ProtoField.new("S Code", "okx.okx.trade.sbe.v1.0.scode", ftypes.INT32)
omi_okx_okx_trade_sbe_v1_0.fields.schema_id = ProtoField.new("Schema Id", "okx.okx.trade.sbe.v1.0.schemaid", ftypes.UINT16)
omi_okx_okx_trade_sbe_v1_0.fields.side = ProtoField.new("Side", "okx.okx.trade.sbe.v1.0.side", ftypes.INT8)
omi_okx_okx_trade_sbe_v1_0.fields.sub_code = ProtoField.new("Sub Code", "okx.okx.trade.sbe.v1.0.subcode", ftypes.INT32)
omi_okx_okx_trade_sbe_v1_0.fields.sz_exponent = ProtoField.new("Sz Exponent", "okx.okx.trade.sbe.v1.0.szexponent", ftypes.INT8)
omi_okx_okx_trade_sbe_v1_0.fields.sz_mantissa = ProtoField.new("Sz Mantissa", "okx.okx.trade.sbe.v1.0.szmantissa", ftypes.INT64)
omi_okx_okx_trade_sbe_v1_0.fields.tag = ProtoField.new("Tag", "okx.okx.trade.sbe.v1.0.tag", ftypes.INT64)
omi_okx_okx_trade_sbe_v1_0.fields.td_mode = ProtoField.new("Td Mode", "okx.okx.trade.sbe.v1.0.tdmode", ftypes.INT8)
omi_okx_okx_trade_sbe_v1_0.fields.template_id = ProtoField.new("Template Id", "okx.okx.trade.sbe.v1.0.templateid", ftypes.UINT16)
omi_okx_okx_trade_sbe_v1_0.fields.ts = ProtoField.new("Ts", "okx.okx.trade.sbe.v1.0.ts", ftypes.INT64)
omi_okx_okx_trade_sbe_v1_0.fields.ts_optional = ProtoField.new("Ts Optional", "okx.okx.trade.sbe.v1.0.tsoptional", ftypes.INT64)
omi_okx_okx_trade_sbe_v1_0.fields.version = ProtoField.new("Version", "okx.okx.trade.sbe.v1.0.version", ftypes.UINT16)

-- Okx Okx Trade Sbe 1.0 Framing
omi_okx_okx_trade_sbe_v1_0.fields.frame = ProtoField.new("Frame", "okx.okx.trade.sbe.v1.0.frame", ftypes.STRING)
omi_okx_okx_trade_sbe_v1_0.fields.message_header = ProtoField.new("Message Header", "okx.okx.trade.sbe.v1.0.messageheader", ftypes.STRING)
omi_okx_okx_trade_sbe_v1_0.fields.sbe_message = ProtoField.new("Sbe Message", "okx.okx.trade.sbe.v1.0.sbemessage", ftypes.STRING)

-- Okx Okx Trade 1.0 Application Messages
omi_okx_okx_trade_sbe_v1_0.fields.amend_order_message = ProtoField.new("Amend Order Message", "okx.okx.trade.sbe.v1.0.amendordermessage", ftypes.STRING)
omi_okx_okx_trade_sbe_v1_0.fields.amend_order_response_message = ProtoField.new("Amend Order Response Message", "okx.okx.trade.sbe.v1.0.amendorderresponsemessage", ftypes.STRING)
omi_okx_okx_trade_sbe_v1_0.fields.amend_orders_message = ProtoField.new("Amend Orders Message", "okx.okx.trade.sbe.v1.0.amendordersmessage", ftypes.STRING)
omi_okx_okx_trade_sbe_v1_0.fields.amend_orders_response_message = ProtoField.new("Amend Orders Response Message", "okx.okx.trade.sbe.v1.0.amendordersresponsemessage", ftypes.STRING)
omi_okx_okx_trade_sbe_v1_0.fields.cancel_order_message = ProtoField.new("Cancel Order Message", "okx.okx.trade.sbe.v1.0.cancelordermessage", ftypes.STRING)
omi_okx_okx_trade_sbe_v1_0.fields.cancel_order_response_message = ProtoField.new("Cancel Order Response Message", "okx.okx.trade.sbe.v1.0.cancelorderresponsemessage", ftypes.STRING)
omi_okx_okx_trade_sbe_v1_0.fields.cancel_orders_message = ProtoField.new("Cancel Orders Message", "okx.okx.trade.sbe.v1.0.cancelordersmessage", ftypes.STRING)
omi_okx_okx_trade_sbe_v1_0.fields.cancel_orders_response_message = ProtoField.new("Cancel Orders Response Message", "okx.okx.trade.sbe.v1.0.cancelordersresponsemessage", ftypes.STRING)
omi_okx_okx_trade_sbe_v1_0.fields.place_order_message = ProtoField.new("Place Order Message", "okx.okx.trade.sbe.v1.0.placeordermessage", ftypes.STRING)
omi_okx_okx_trade_sbe_v1_0.fields.place_order_response_message = ProtoField.new("Place Order Response Message", "okx.okx.trade.sbe.v1.0.placeorderresponsemessage", ftypes.STRING)
omi_okx_okx_trade_sbe_v1_0.fields.place_orders_message = ProtoField.new("Place Orders Message", "okx.okx.trade.sbe.v1.0.placeordersmessage", ftypes.STRING)
omi_okx_okx_trade_sbe_v1_0.fields.place_orders_response_message = ProtoField.new("Place Orders Response Message", "okx.okx.trade.sbe.v1.0.placeordersresponsemessage", ftypes.STRING)

-- Okx Okx Trade Sbe 1.0 Generated Fields
omi_okx_okx_trade_sbe_v1_0.fields.amend_orders_message_orders_group_index = ProtoField.new("Amend Orders Message orders Group Index", "okx.okx.trade.sbe.v1.0.amendordersmessageordersgroupindex", ftypes.UINT16)
omi_okx_okx_trade_sbe_v1_0.fields.amend_orders_response_message_data_group_index = ProtoField.new("Amend Orders Response Message data Group Index", "okx.okx.trade.sbe.v1.0.amendordersresponsemessagedatagroupindex", ftypes.UINT16)
omi_okx_okx_trade_sbe_v1_0.fields.cancel_orders_message_orders_group_index = ProtoField.new("Cancel Orders Message orders Group Index", "okx.okx.trade.sbe.v1.0.cancelordersmessageordersgroupindex", ftypes.UINT16)
omi_okx_okx_trade_sbe_v1_0.fields.cancel_orders_response_message_data_group_index = ProtoField.new("Cancel Orders Response Message data Group Index", "okx.okx.trade.sbe.v1.0.cancelordersresponsemessagedatagroupindex", ftypes.UINT16)
omi_okx_okx_trade_sbe_v1_0.fields.place_orders_message_orders_group_index = ProtoField.new("Place Orders Message orders Group Index", "okx.okx.trade.sbe.v1.0.placeordersmessageordersgroupindex", ftypes.UINT16)
omi_okx_okx_trade_sbe_v1_0.fields.place_orders_response_message_data_group_index = ProtoField.new("Place Orders Response Message data Group Index", "okx.okx.trade.sbe.v1.0.placeordersresponsemessagedatagroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Okx Okx Trade Sbe 1.0 Element Dissection Options
show.application_messages = true
show.repeating_groups = true
show.headers = true
show.structs = true
show.indexes = true

-- Register Okx Okx Trade Sbe 1.0 Show Options
omi_okx_okx_trade_sbe_v1_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_okx_okx_trade_sbe_v1_0.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_okx_okx_trade_sbe_v1_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_okx_okx_trade_sbe_v1_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_okx_okx_trade_sbe_v1_0.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_okx_okx_trade_sbe_v1_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_okx_okx_trade_sbe_v1_0.prefs.show_application_messages then
    show.application_messages = omi_okx_okx_trade_sbe_v1_0.prefs.show_application_messages
  end
  if show.headers ~= omi_okx_okx_trade_sbe_v1_0.prefs.show_headers then
    show.headers = omi_okx_okx_trade_sbe_v1_0.prefs.show_headers
  end
  if show.repeating_groups ~= omi_okx_okx_trade_sbe_v1_0.prefs.show_repeating_groups then
    show.repeating_groups = omi_okx_okx_trade_sbe_v1_0.prefs.show_repeating_groups
  end
  if show.structs ~= omi_okx_okx_trade_sbe_v1_0.prefs.show_structs then
    show.structs = omi_okx_okx_trade_sbe_v1_0.prefs.show_structs
  end
  if show.indexes ~= omi_okx_okx_trade_sbe_v1_0.prefs.show_indexes then
    show.indexes = omi_okx_okx_trade_sbe_v1_0.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Okx Okx Trade Sbe 1.0 Fields
-----------------------------------------------------------------------

-- Block Length
okx_okx_trade_sbe_v1_0.block_length = {}

-- Size: Block Length
okx_okx_trade_sbe_v1_0.block_length.size = 2

-- Display: Block Length
okx_okx_trade_sbe_v1_0.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
okx_okx_trade_sbe_v1_0.block_length.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = okx_okx_trade_sbe_v1_0.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.block_length, range, value, display)

  return offset + length, value
end

-- Cl Ord Id
okx_okx_trade_sbe_v1_0.cl_ord_id = {}

-- Size: Cl Ord Id
okx_okx_trade_sbe_v1_0.cl_ord_id.size = 8

-- Display: Cl Ord Id
okx_okx_trade_sbe_v1_0.cl_ord_id.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Cl Ord Id: No Value"
  end

  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
okx_okx_trade_sbe_v1_0.cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_trade_sbe_v1_0.cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Code
okx_okx_trade_sbe_v1_0.code = {}

-- Size: Code
okx_okx_trade_sbe_v1_0.code.size = 4

-- Display: Code
okx_okx_trade_sbe_v1_0.code.display = function(value)
  return "Code: "..value
end

-- Dissect: Code
okx_okx_trade_sbe_v1_0.code.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.code.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = okx_okx_trade_sbe_v1_0.code.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.code, range, value, display)

  return offset + length, value
end

-- Code Optional
okx_okx_trade_sbe_v1_0.code_optional = {}

-- Size: Code Optional
okx_okx_trade_sbe_v1_0.code_optional.size = 4

-- Display: Code Optional
okx_okx_trade_sbe_v1_0.code_optional.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Code Optional: No Value"
  end

  return "Code Optional: "..value
end

-- Dissect: Code Optional
okx_okx_trade_sbe_v1_0.code_optional.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.code_optional.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = okx_okx_trade_sbe_v1_0.code_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.code_optional, range, value, display)

  return offset + length, value
end

-- Exp Time
okx_okx_trade_sbe_v1_0.exp_time = {}

-- Size: Exp Time
okx_okx_trade_sbe_v1_0.exp_time.size = 8

-- Display: Exp Time
okx_okx_trade_sbe_v1_0.exp_time.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Exp Time: No Value"
  end

  return "Exp Time: "..value
end

-- Dissect: Exp Time
okx_okx_trade_sbe_v1_0.exp_time.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.exp_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_trade_sbe_v1_0.exp_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.exp_time, range, value, display)

  return offset + length, value
end

-- Id
okx_okx_trade_sbe_v1_0.id = {}

-- Size: Id
okx_okx_trade_sbe_v1_0.id.size = 8

-- Display: Id
okx_okx_trade_sbe_v1_0.id.display = function(value)
  return "Id: "..value
end

-- Dissect: Id
okx_okx_trade_sbe_v1_0.id.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_trade_sbe_v1_0.id.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.id, range, value, display)

  return offset + length, value
end

-- In Time
okx_okx_trade_sbe_v1_0.in_time = {}

-- Size: In Time
okx_okx_trade_sbe_v1_0.in_time.size = 8

-- Display: In Time
okx_okx_trade_sbe_v1_0.in_time.display = function(value)
  return "In Time: "..value
end

-- Dissect: In Time
okx_okx_trade_sbe_v1_0.in_time.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.in_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_trade_sbe_v1_0.in_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.in_time, range, value, display)

  return offset + length, value
end

-- Inst Id Code
okx_okx_trade_sbe_v1_0.inst_id_code = {}

-- Size: Inst Id Code
okx_okx_trade_sbe_v1_0.inst_id_code.size = 8

-- Display: Inst Id Code
okx_okx_trade_sbe_v1_0.inst_id_code.display = function(value)
  return "Inst Id Code: "..value
end

-- Dissect: Inst Id Code
okx_okx_trade_sbe_v1_0.inst_id_code.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.inst_id_code.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_trade_sbe_v1_0.inst_id_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.inst_id_code, range, value, display)

  return offset + length, value
end

-- New Px Exponent
okx_okx_trade_sbe_v1_0.new_px_exponent = {}

-- Size: New Px Exponent
okx_okx_trade_sbe_v1_0.new_px_exponent.size = 1

-- Display: New Px Exponent
okx_okx_trade_sbe_v1_0.new_px_exponent.display = function(value)
  -- Check if field has value
  if value == 128 then
    return "New Px Exponent: No Value"
  end

  return "New Px Exponent: "..value
end

-- Dissect: New Px Exponent
okx_okx_trade_sbe_v1_0.new_px_exponent.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.new_px_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = okx_okx_trade_sbe_v1_0.new_px_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.new_px_exponent, range, value, display)

  return offset + length, value
end

-- New Px Mantissa
okx_okx_trade_sbe_v1_0.new_px_mantissa = {}

-- Size: New Px Mantissa
okx_okx_trade_sbe_v1_0.new_px_mantissa.size = 8

-- Display: New Px Mantissa
okx_okx_trade_sbe_v1_0.new_px_mantissa.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "New Px Mantissa: No Value"
  end

  return "New Px Mantissa: "..value
end

-- Dissect: New Px Mantissa
okx_okx_trade_sbe_v1_0.new_px_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.new_px_mantissa.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_trade_sbe_v1_0.new_px_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.new_px_mantissa, range, value, display)

  return offset + length, value
end

-- New Sz Exponent
okx_okx_trade_sbe_v1_0.new_sz_exponent = {}

-- Size: New Sz Exponent
okx_okx_trade_sbe_v1_0.new_sz_exponent.size = 1

-- Display: New Sz Exponent
okx_okx_trade_sbe_v1_0.new_sz_exponent.display = function(value)
  -- Check if field has value
  if value == 128 then
    return "New Sz Exponent: No Value"
  end

  return "New Sz Exponent: "..value
end

-- Dissect: New Sz Exponent
okx_okx_trade_sbe_v1_0.new_sz_exponent.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.new_sz_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = okx_okx_trade_sbe_v1_0.new_sz_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.new_sz_exponent, range, value, display)

  return offset + length, value
end

-- New Sz Mantissa
okx_okx_trade_sbe_v1_0.new_sz_mantissa = {}

-- Size: New Sz Mantissa
okx_okx_trade_sbe_v1_0.new_sz_mantissa.size = 8

-- Display: New Sz Mantissa
okx_okx_trade_sbe_v1_0.new_sz_mantissa.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "New Sz Mantissa: No Value"
  end

  return "New Sz Mantissa: "..value
end

-- Dissect: New Sz Mantissa
okx_okx_trade_sbe_v1_0.new_sz_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.new_sz_mantissa.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_trade_sbe_v1_0.new_sz_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.new_sz_mantissa, range, value, display)

  return offset + length, value
end

-- Num In Group
okx_okx_trade_sbe_v1_0.num_in_group = {}

-- Size: Num In Group
okx_okx_trade_sbe_v1_0.num_in_group.size = 2

-- Display: Num In Group
okx_okx_trade_sbe_v1_0.num_in_group.display = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
okx_okx_trade_sbe_v1_0.num_in_group.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.num_in_group.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = okx_okx_trade_sbe_v1_0.num_in_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Ord Id
okx_okx_trade_sbe_v1_0.ord_id = {}

-- Size: Ord Id
okx_okx_trade_sbe_v1_0.ord_id.size = 8

-- Display: Ord Id
okx_okx_trade_sbe_v1_0.ord_id.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Ord Id: No Value"
  end

  return "Ord Id: "..value
end

-- Dissect: Ord Id
okx_okx_trade_sbe_v1_0.ord_id.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.ord_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_trade_sbe_v1_0.ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.ord_id, range, value, display)

  return offset + length, value
end

-- Ord Type
okx_okx_trade_sbe_v1_0.ord_type = {}

-- Size: Ord Type
okx_okx_trade_sbe_v1_0.ord_type.size = 1

-- Display: Ord Type
okx_okx_trade_sbe_v1_0.ord_type.display = function(value)
  if value == 1 then
    return "Ord Type: Limit (1)"
  end
  if value == 4 then
    return "Ord Type: Ioc (4)"
  end
  if value == 5 then
    return "Ord Type: Post Only (5)"
  end
  if value == 14 then
    return "Ord Type: Mmp And Post Only (14)"
  end
  if value == 17 then
    return "Ord Type: Rpi (17)"
  end

  return "Ord Type: Unknown("..value..")"
end

-- Dissect: Ord Type
okx_okx_trade_sbe_v1_0.ord_type.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.ord_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = okx_okx_trade_sbe_v1_0.ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Out Time
okx_okx_trade_sbe_v1_0.out_time = {}

-- Size: Out Time
okx_okx_trade_sbe_v1_0.out_time.size = 8

-- Display: Out Time
okx_okx_trade_sbe_v1_0.out_time.display = function(value)
  return "Out Time: "..value
end

-- Dissect: Out Time
okx_okx_trade_sbe_v1_0.out_time.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.out_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_trade_sbe_v1_0.out_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.out_time, range, value, display)

  return offset + length, value
end

-- Px Exponent
okx_okx_trade_sbe_v1_0.px_exponent = {}

-- Size: Px Exponent
okx_okx_trade_sbe_v1_0.px_exponent.size = 1

-- Display: Px Exponent
okx_okx_trade_sbe_v1_0.px_exponent.display = function(value)
  return "Px Exponent: "..value
end

-- Dissect: Px Exponent
okx_okx_trade_sbe_v1_0.px_exponent.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.px_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = okx_okx_trade_sbe_v1_0.px_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.px_exponent, range, value, display)

  return offset + length, value
end

-- Px Mantissa
okx_okx_trade_sbe_v1_0.px_mantissa = {}

-- Size: Px Mantissa
okx_okx_trade_sbe_v1_0.px_mantissa.size = 8

-- Display: Px Mantissa
okx_okx_trade_sbe_v1_0.px_mantissa.display = function(value)
  return "Px Mantissa: "..value
end

-- Dissect: Px Mantissa
okx_okx_trade_sbe_v1_0.px_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.px_mantissa.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_trade_sbe_v1_0.px_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.px_mantissa, range, value, display)

  return offset + length, value
end

-- Req Id
okx_okx_trade_sbe_v1_0.req_id = {}

-- Size: Req Id
okx_okx_trade_sbe_v1_0.req_id.size = 8

-- Display: Req Id
okx_okx_trade_sbe_v1_0.req_id.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Req Id: No Value"
  end

  return "Req Id: "..value
end

-- Dissect: Req Id
okx_okx_trade_sbe_v1_0.req_id.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.req_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_trade_sbe_v1_0.req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.req_id, range, value, display)

  return offset + length, value
end

-- Rpi Taker Access
okx_okx_trade_sbe_v1_0.rpi_taker_access = {}

-- Size: Rpi Taker Access
okx_okx_trade_sbe_v1_0.rpi_taker_access.size = 1

-- Display: Rpi Taker Access
okx_okx_trade_sbe_v1_0.rpi_taker_access.display = function(value)
  if value == 0 then
    return "Rpi Taker Access: False (0)"
  end
  if value == 1 then
    return "Rpi Taker Access: True (1)"
  end
  if value == 128 then
    return "Rpi Taker Access: No Value"
  end

  return "Rpi Taker Access: Unknown("..value..")"
end

-- Dissect: Rpi Taker Access
okx_okx_trade_sbe_v1_0.rpi_taker_access.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.rpi_taker_access.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = okx_okx_trade_sbe_v1_0.rpi_taker_access.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.rpi_taker_access, range, value, display)

  return offset + length, value
end

-- S Code
okx_okx_trade_sbe_v1_0.s_code = {}

-- Size: S Code
okx_okx_trade_sbe_v1_0.s_code.size = 4

-- Display: S Code
okx_okx_trade_sbe_v1_0.s_code.display = function(value)
  return "S Code: "..value
end

-- Dissect: S Code
okx_okx_trade_sbe_v1_0.s_code.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.s_code.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = okx_okx_trade_sbe_v1_0.s_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.s_code, range, value, display)

  return offset + length, value
end

-- Schema Id
okx_okx_trade_sbe_v1_0.schema_id = {}

-- Size: Schema Id
okx_okx_trade_sbe_v1_0.schema_id.size = 2

-- Display: Schema Id
okx_okx_trade_sbe_v1_0.schema_id.display = function(value)
  if value == 1 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
okx_okx_trade_sbe_v1_0.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = okx_okx_trade_sbe_v1_0.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Side
okx_okx_trade_sbe_v1_0.side = {}

-- Size: Side
okx_okx_trade_sbe_v1_0.side.size = 1

-- Display: Side
okx_okx_trade_sbe_v1_0.side.display = function(value)
  if value == 0 then
    return "Side: Sell (0)"
  end
  if value == 1 then
    return "Side: Buy (1)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
okx_okx_trade_sbe_v1_0.side.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.side.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = okx_okx_trade_sbe_v1_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.side, range, value, display)

  return offset + length, value
end

-- Sub Code
okx_okx_trade_sbe_v1_0.sub_code = {}

-- Size: Sub Code
okx_okx_trade_sbe_v1_0.sub_code.size = 4

-- Display: Sub Code
okx_okx_trade_sbe_v1_0.sub_code.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Sub Code: No Value"
  end

  return "Sub Code: "..value
end

-- Dissect: Sub Code
okx_okx_trade_sbe_v1_0.sub_code.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.sub_code.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = okx_okx_trade_sbe_v1_0.sub_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.sub_code, range, value, display)

  return offset + length, value
end

-- Sz Exponent
okx_okx_trade_sbe_v1_0.sz_exponent = {}

-- Size: Sz Exponent
okx_okx_trade_sbe_v1_0.sz_exponent.size = 1

-- Display: Sz Exponent
okx_okx_trade_sbe_v1_0.sz_exponent.display = function(value)
  return "Sz Exponent: "..value
end

-- Dissect: Sz Exponent
okx_okx_trade_sbe_v1_0.sz_exponent.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.sz_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = okx_okx_trade_sbe_v1_0.sz_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.sz_exponent, range, value, display)

  return offset + length, value
end

-- Sz Mantissa
okx_okx_trade_sbe_v1_0.sz_mantissa = {}

-- Size: Sz Mantissa
okx_okx_trade_sbe_v1_0.sz_mantissa.size = 8

-- Display: Sz Mantissa
okx_okx_trade_sbe_v1_0.sz_mantissa.display = function(value)
  return "Sz Mantissa: "..value
end

-- Dissect: Sz Mantissa
okx_okx_trade_sbe_v1_0.sz_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.sz_mantissa.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_trade_sbe_v1_0.sz_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.sz_mantissa, range, value, display)

  return offset + length, value
end

-- Tag
okx_okx_trade_sbe_v1_0.tag = {}

-- Size: Tag
okx_okx_trade_sbe_v1_0.tag.size = 8

-- Display: Tag
okx_okx_trade_sbe_v1_0.tag.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Tag: No Value"
  end

  return "Tag: "..value
end

-- Dissect: Tag
okx_okx_trade_sbe_v1_0.tag.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.tag.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_trade_sbe_v1_0.tag.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.tag, range, value, display)

  return offset + length, value
end

-- Td Mode
okx_okx_trade_sbe_v1_0.td_mode = {}

-- Size: Td Mode
okx_okx_trade_sbe_v1_0.td_mode.size = 1

-- Display: Td Mode
okx_okx_trade_sbe_v1_0.td_mode.display = function(value)
  if value == 1 then
    return "Td Mode: Cash (1)"
  end
  if value == 2 then
    return "Td Mode: Cross (2)"
  end

  return "Td Mode: Unknown("..value..")"
end

-- Dissect: Td Mode
okx_okx_trade_sbe_v1_0.td_mode.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.td_mode.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = okx_okx_trade_sbe_v1_0.td_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.td_mode, range, value, display)

  return offset + length, value
end

-- Template Id
okx_okx_trade_sbe_v1_0.template_id = {}

-- Size: Template Id
okx_okx_trade_sbe_v1_0.template_id.size = 2

-- Display: Template Id
okx_okx_trade_sbe_v1_0.template_id.display = function(value)
  if value == 1 then
    return "Template Id: Place Order Message (1)"
  end
  if value == 2 then
    return "Template Id: Place Order Response Message (2)"
  end
  if value == 3 then
    return "Template Id: Place Orders Message (3)"
  end
  if value == 4 then
    return "Template Id: Place Orders Response Message (4)"
  end
  if value == 5 then
    return "Template Id: Amend Order Message (5)"
  end
  if value == 6 then
    return "Template Id: Amend Order Response Message (6)"
  end
  if value == 7 then
    return "Template Id: Amend Orders Message (7)"
  end
  if value == 8 then
    return "Template Id: Amend Orders Response Message (8)"
  end
  if value == 9 then
    return "Template Id: Cancel Order Message (9)"
  end
  if value == 10 then
    return "Template Id: Cancel Order Response Message (10)"
  end
  if value == 11 then
    return "Template Id: Cancel Orders Message (11)"
  end
  if value == 12 then
    return "Template Id: Cancel Orders Response Message (12)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
okx_okx_trade_sbe_v1_0.template_id.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = okx_okx_trade_sbe_v1_0.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.template_id, range, value, display)

  return offset + length, value
end

-- Ts
okx_okx_trade_sbe_v1_0.ts = {}

-- Size: Ts
okx_okx_trade_sbe_v1_0.ts.size = 8

-- Display: Ts
okx_okx_trade_sbe_v1_0.ts.display = function(value)
  return "Ts: "..value
end

-- Dissect: Ts
okx_okx_trade_sbe_v1_0.ts.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.ts.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_trade_sbe_v1_0.ts.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.ts, range, value, display)

  return offset + length, value
end

-- Ts Optional
okx_okx_trade_sbe_v1_0.ts_optional = {}

-- Size: Ts Optional
okx_okx_trade_sbe_v1_0.ts_optional.size = 8

-- Display: Ts Optional
okx_okx_trade_sbe_v1_0.ts_optional.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Ts Optional: No Value"
  end

  return "Ts Optional: "..value
end

-- Dissect: Ts Optional
okx_okx_trade_sbe_v1_0.ts_optional.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.ts_optional.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_trade_sbe_v1_0.ts_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.ts_optional, range, value, display)

  return offset + length, value
end

-- Version
okx_okx_trade_sbe_v1_0.version = {}

-- Size: Version
okx_okx_trade_sbe_v1_0.version.size = 2

-- Display: Version
okx_okx_trade_sbe_v1_0.version.display = function(value)
  if value == 0 then
    return "Version: Version 1.0.0"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
okx_okx_trade_sbe_v1_0.version.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_trade_sbe_v1_0.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = okx_okx_trade_sbe_v1_0.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_trade_sbe_v1_0.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Okx Okx Trade Sbe 1.0
-----------------------------------------------------------------------

-- Cancel Orders Response Message data Group
okx_okx_trade_sbe_v1_0.cancel_orders_response_message_data_group = {}

-- Size: Cancel Orders Response Message data Group
okx_okx_trade_sbe_v1_0.cancel_orders_response_message_data_group.size =
  okx_okx_trade_sbe_v1_0.s_code.size + 
  okx_okx_trade_sbe_v1_0.ord_id.size + 
  okx_okx_trade_sbe_v1_0.ts_optional.size + 
  okx_okx_trade_sbe_v1_0.cl_ord_id.size + 
  okx_okx_trade_sbe_v1_0.in_time.size + 
  okx_okx_trade_sbe_v1_0.out_time.size

-- Display: Cancel Orders Response Message data Group
okx_okx_trade_sbe_v1_0.cancel_orders_response_message_data_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Orders Response Message data Group
okx_okx_trade_sbe_v1_0.cancel_orders_response_message_data_group.fields = function(buffer, offset, packet, parent, cancel_orders_response_message_data_group_index)
  local index = offset

  -- Implicit Cancel Orders Response Message data Group Index
  if cancel_orders_response_message_data_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.cancel_orders_response_message_data_group_index, cancel_orders_response_message_data_group_index)
    iteration:set_generated()
  end

  -- S Code: int32
  index, s_code = okx_okx_trade_sbe_v1_0.s_code.dissect(buffer, index, packet, parent)

  -- Ord Id: int64
  index, ord_id = okx_okx_trade_sbe_v1_0.ord_id.dissect(buffer, index, packet, parent)

  -- Ts Optional: int64
  index, ts_optional = okx_okx_trade_sbe_v1_0.ts_optional.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: int64
  index, cl_ord_id = okx_okx_trade_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- In Time: int64
  index, in_time = okx_okx_trade_sbe_v1_0.in_time.dissect(buffer, index, packet, parent)

  -- Out Time: int64
  index, out_time = okx_okx_trade_sbe_v1_0.out_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Orders Response Message data Group
okx_okx_trade_sbe_v1_0.cancel_orders_response_message_data_group.dissect = function(buffer, offset, packet, parent, cancel_orders_response_message_data_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.cancel_orders_response_message_data_group, buffer(offset, 0))
    local index = okx_okx_trade_sbe_v1_0.cancel_orders_response_message_data_group.fields(buffer, offset, packet, parent, cancel_orders_response_message_data_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_trade_sbe_v1_0.cancel_orders_response_message_data_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_trade_sbe_v1_0.cancel_orders_response_message_data_group.fields(buffer, offset, packet, parent, cancel_orders_response_message_data_group_index)
  end
end

-- Group Size Encoding
okx_okx_trade_sbe_v1_0.group_size_encoding = {}

-- Size: Group Size Encoding
okx_okx_trade_sbe_v1_0.group_size_encoding.size =
  okx_okx_trade_sbe_v1_0.block_length.size + 
  okx_okx_trade_sbe_v1_0.num_in_group.size

-- Display: Group Size Encoding
okx_okx_trade_sbe_v1_0.group_size_encoding.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size Encoding
okx_okx_trade_sbe_v1_0.group_size_encoding.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = okx_okx_trade_sbe_v1_0.block_length.dissect(buffer, index, packet, parent)

  -- Num In Group: uint16
  index, num_in_group = okx_okx_trade_sbe_v1_0.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size Encoding
okx_okx_trade_sbe_v1_0.group_size_encoding.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.group_size_encoding, buffer(offset, 0))
    local index = okx_okx_trade_sbe_v1_0.group_size_encoding.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_trade_sbe_v1_0.group_size_encoding.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_trade_sbe_v1_0.group_size_encoding.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Orders Response Message data Groups
okx_okx_trade_sbe_v1_0.cancel_orders_response_message_data_groups = {}

-- Calculate size of: Cancel Orders Response Message data Groups
okx_okx_trade_sbe_v1_0.cancel_orders_response_message_data_groups.size = function(buffer, offset)
  local index = 0

  index = index + okx_okx_trade_sbe_v1_0.group_size_encoding.size

  -- Calculate field size from count
  local cancel_orders_response_message_data_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + cancel_orders_response_message_data_group_count * 44

  return index
end

-- Display: Cancel Orders Response Message data Groups
okx_okx_trade_sbe_v1_0.cancel_orders_response_message_data_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Orders Response Message data Groups
okx_okx_trade_sbe_v1_0.cancel_orders_response_message_data_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = okx_okx_trade_sbe_v1_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Cancel Orders Response Message data Group
  for cancel_orders_response_message_data_group_index = 1, num_in_group do
    index, cancel_orders_response_message_data_group = okx_okx_trade_sbe_v1_0.cancel_orders_response_message_data_group.dissect(buffer, index, packet, parent, cancel_orders_response_message_data_group_index)
  end

  return index
end

-- Dissect: Cancel Orders Response Message data Groups
okx_okx_trade_sbe_v1_0.cancel_orders_response_message_data_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.cancel_orders_response_message_data_groups, buffer(offset, 0))
    local index = okx_okx_trade_sbe_v1_0.cancel_orders_response_message_data_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_trade_sbe_v1_0.cancel_orders_response_message_data_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_trade_sbe_v1_0.cancel_orders_response_message_data_groups.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Orders Response Message
okx_okx_trade_sbe_v1_0.cancel_orders_response_message = {}

-- Calculate size of: Cancel Orders Response Message
okx_okx_trade_sbe_v1_0.cancel_orders_response_message.size = function(buffer, offset)
  local index = 0

  index = index + okx_okx_trade_sbe_v1_0.id.size

  index = index + okx_okx_trade_sbe_v1_0.code_optional.size

  index = index + okx_okx_trade_sbe_v1_0.cancel_orders_response_message_data_groups.size(buffer, offset + index)

  return index
end

-- Display: Cancel Orders Response Message
okx_okx_trade_sbe_v1_0.cancel_orders_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Orders Response Message
okx_okx_trade_sbe_v1_0.cancel_orders_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: int64
  index, id = okx_okx_trade_sbe_v1_0.id.dissect(buffer, index, packet, parent)

  -- Code Optional: int32
  index, code_optional = okx_okx_trade_sbe_v1_0.code_optional.dissect(buffer, index, packet, parent)

  -- Cancel Orders Response Message data Groups: Struct of 2 fields
  index, cancel_orders_response_message_data_groups = okx_okx_trade_sbe_v1_0.cancel_orders_response_message_data_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Orders Response Message
okx_okx_trade_sbe_v1_0.cancel_orders_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.cancel_orders_response_message, buffer(offset, 0))
    local index = okx_okx_trade_sbe_v1_0.cancel_orders_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_trade_sbe_v1_0.cancel_orders_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_trade_sbe_v1_0.cancel_orders_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Orders Message orders Group
okx_okx_trade_sbe_v1_0.cancel_orders_message_orders_group = {}

-- Size: Cancel Orders Message orders Group
okx_okx_trade_sbe_v1_0.cancel_orders_message_orders_group.size =
  okx_okx_trade_sbe_v1_0.inst_id_code.size + 
  okx_okx_trade_sbe_v1_0.ord_id.size + 
  okx_okx_trade_sbe_v1_0.cl_ord_id.size

-- Display: Cancel Orders Message orders Group
okx_okx_trade_sbe_v1_0.cancel_orders_message_orders_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Orders Message orders Group
okx_okx_trade_sbe_v1_0.cancel_orders_message_orders_group.fields = function(buffer, offset, packet, parent, cancel_orders_message_orders_group_index)
  local index = offset

  -- Implicit Cancel Orders Message orders Group Index
  if cancel_orders_message_orders_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.cancel_orders_message_orders_group_index, cancel_orders_message_orders_group_index)
    iteration:set_generated()
  end

  -- Inst Id Code: int64
  index, inst_id_code = okx_okx_trade_sbe_v1_0.inst_id_code.dissect(buffer, index, packet, parent)

  -- Ord Id: int64
  index, ord_id = okx_okx_trade_sbe_v1_0.ord_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: int64
  index, cl_ord_id = okx_okx_trade_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Orders Message orders Group
okx_okx_trade_sbe_v1_0.cancel_orders_message_orders_group.dissect = function(buffer, offset, packet, parent, cancel_orders_message_orders_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.cancel_orders_message_orders_group, buffer(offset, 0))
    local index = okx_okx_trade_sbe_v1_0.cancel_orders_message_orders_group.fields(buffer, offset, packet, parent, cancel_orders_message_orders_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_trade_sbe_v1_0.cancel_orders_message_orders_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_trade_sbe_v1_0.cancel_orders_message_orders_group.fields(buffer, offset, packet, parent, cancel_orders_message_orders_group_index)
  end
end

-- Cancel Orders Message orders Groups
okx_okx_trade_sbe_v1_0.cancel_orders_message_orders_groups = {}

-- Calculate size of: Cancel Orders Message orders Groups
okx_okx_trade_sbe_v1_0.cancel_orders_message_orders_groups.size = function(buffer, offset)
  local index = 0

  index = index + okx_okx_trade_sbe_v1_0.group_size_encoding.size

  -- Calculate field size from count
  local cancel_orders_message_orders_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + cancel_orders_message_orders_group_count * 24

  return index
end

-- Display: Cancel Orders Message orders Groups
okx_okx_trade_sbe_v1_0.cancel_orders_message_orders_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Orders Message orders Groups
okx_okx_trade_sbe_v1_0.cancel_orders_message_orders_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = okx_okx_trade_sbe_v1_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Cancel Orders Message orders Group
  for cancel_orders_message_orders_group_index = 1, num_in_group do
    index, cancel_orders_message_orders_group = okx_okx_trade_sbe_v1_0.cancel_orders_message_orders_group.dissect(buffer, index, packet, parent, cancel_orders_message_orders_group_index)
  end

  return index
end

-- Dissect: Cancel Orders Message orders Groups
okx_okx_trade_sbe_v1_0.cancel_orders_message_orders_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.cancel_orders_message_orders_groups, buffer(offset, 0))
    local index = okx_okx_trade_sbe_v1_0.cancel_orders_message_orders_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_trade_sbe_v1_0.cancel_orders_message_orders_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_trade_sbe_v1_0.cancel_orders_message_orders_groups.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Orders Message
okx_okx_trade_sbe_v1_0.cancel_orders_message = {}

-- Calculate size of: Cancel Orders Message
okx_okx_trade_sbe_v1_0.cancel_orders_message.size = function(buffer, offset)
  local index = 0

  index = index + okx_okx_trade_sbe_v1_0.id.size

  index = index + okx_okx_trade_sbe_v1_0.cancel_orders_message_orders_groups.size(buffer, offset + index)

  return index
end

-- Display: Cancel Orders Message
okx_okx_trade_sbe_v1_0.cancel_orders_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Orders Message
okx_okx_trade_sbe_v1_0.cancel_orders_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: int64
  index, id = okx_okx_trade_sbe_v1_0.id.dissect(buffer, index, packet, parent)

  -- Cancel Orders Message orders Groups: Struct of 2 fields
  index, cancel_orders_message_orders_groups = okx_okx_trade_sbe_v1_0.cancel_orders_message_orders_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Orders Message
okx_okx_trade_sbe_v1_0.cancel_orders_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.cancel_orders_message, buffer(offset, 0))
    local index = okx_okx_trade_sbe_v1_0.cancel_orders_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_trade_sbe_v1_0.cancel_orders_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_trade_sbe_v1_0.cancel_orders_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order Response Message
okx_okx_trade_sbe_v1_0.cancel_order_response_message = {}

-- Size: Cancel Order Response Message
okx_okx_trade_sbe_v1_0.cancel_order_response_message.size =
  okx_okx_trade_sbe_v1_0.id.size + 
  okx_okx_trade_sbe_v1_0.code_optional.size + 
  okx_okx_trade_sbe_v1_0.ord_id.size + 
  okx_okx_trade_sbe_v1_0.ts_optional.size + 
  okx_okx_trade_sbe_v1_0.cl_ord_id.size + 
  okx_okx_trade_sbe_v1_0.in_time.size + 
  okx_okx_trade_sbe_v1_0.out_time.size

-- Display: Cancel Order Response Message
okx_okx_trade_sbe_v1_0.cancel_order_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Response Message
okx_okx_trade_sbe_v1_0.cancel_order_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: int64
  index, id = okx_okx_trade_sbe_v1_0.id.dissect(buffer, index, packet, parent)

  -- Code Optional: int32
  index, code_optional = okx_okx_trade_sbe_v1_0.code_optional.dissect(buffer, index, packet, parent)

  -- Ord Id: int64
  index, ord_id = okx_okx_trade_sbe_v1_0.ord_id.dissect(buffer, index, packet, parent)

  -- Ts Optional: int64
  index, ts_optional = okx_okx_trade_sbe_v1_0.ts_optional.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: int64
  index, cl_ord_id = okx_okx_trade_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- In Time: int64
  index, in_time = okx_okx_trade_sbe_v1_0.in_time.dissect(buffer, index, packet, parent)

  -- Out Time: int64
  index, out_time = okx_okx_trade_sbe_v1_0.out_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Response Message
okx_okx_trade_sbe_v1_0.cancel_order_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.cancel_order_response_message, buffer(offset, 0))
    local index = okx_okx_trade_sbe_v1_0.cancel_order_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_trade_sbe_v1_0.cancel_order_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_trade_sbe_v1_0.cancel_order_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order Message
okx_okx_trade_sbe_v1_0.cancel_order_message = {}

-- Size: Cancel Order Message
okx_okx_trade_sbe_v1_0.cancel_order_message.size =
  okx_okx_trade_sbe_v1_0.id.size + 
  okx_okx_trade_sbe_v1_0.inst_id_code.size + 
  okx_okx_trade_sbe_v1_0.ord_id.size + 
  okx_okx_trade_sbe_v1_0.cl_ord_id.size

-- Display: Cancel Order Message
okx_okx_trade_sbe_v1_0.cancel_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Message
okx_okx_trade_sbe_v1_0.cancel_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: int64
  index, id = okx_okx_trade_sbe_v1_0.id.dissect(buffer, index, packet, parent)

  -- Inst Id Code: int64
  index, inst_id_code = okx_okx_trade_sbe_v1_0.inst_id_code.dissect(buffer, index, packet, parent)

  -- Ord Id: int64
  index, ord_id = okx_okx_trade_sbe_v1_0.ord_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: int64
  index, cl_ord_id = okx_okx_trade_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Message
okx_okx_trade_sbe_v1_0.cancel_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.cancel_order_message, buffer(offset, 0))
    local index = okx_okx_trade_sbe_v1_0.cancel_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_trade_sbe_v1_0.cancel_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_trade_sbe_v1_0.cancel_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Amend Orders Response Message data Group
okx_okx_trade_sbe_v1_0.amend_orders_response_message_data_group = {}

-- Size: Amend Orders Response Message data Group
okx_okx_trade_sbe_v1_0.amend_orders_response_message_data_group.size =
  okx_okx_trade_sbe_v1_0.s_code.size + 
  okx_okx_trade_sbe_v1_0.sub_code.size + 
  okx_okx_trade_sbe_v1_0.ord_id.size + 
  okx_okx_trade_sbe_v1_0.req_id.size + 
  okx_okx_trade_sbe_v1_0.ts.size + 
  okx_okx_trade_sbe_v1_0.cl_ord_id.size + 
  okx_okx_trade_sbe_v1_0.in_time.size + 
  okx_okx_trade_sbe_v1_0.out_time.size

-- Display: Amend Orders Response Message data Group
okx_okx_trade_sbe_v1_0.amend_orders_response_message_data_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Amend Orders Response Message data Group
okx_okx_trade_sbe_v1_0.amend_orders_response_message_data_group.fields = function(buffer, offset, packet, parent, amend_orders_response_message_data_group_index)
  local index = offset

  -- Implicit Amend Orders Response Message data Group Index
  if amend_orders_response_message_data_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.amend_orders_response_message_data_group_index, amend_orders_response_message_data_group_index)
    iteration:set_generated()
  end

  -- S Code: int32
  index, s_code = okx_okx_trade_sbe_v1_0.s_code.dissect(buffer, index, packet, parent)

  -- Sub Code: int32
  index, sub_code = okx_okx_trade_sbe_v1_0.sub_code.dissect(buffer, index, packet, parent)

  -- Ord Id: int64
  index, ord_id = okx_okx_trade_sbe_v1_0.ord_id.dissect(buffer, index, packet, parent)

  -- Req Id: int64
  index, req_id = okx_okx_trade_sbe_v1_0.req_id.dissect(buffer, index, packet, parent)

  -- Ts: int64
  index, ts = okx_okx_trade_sbe_v1_0.ts.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: int64
  index, cl_ord_id = okx_okx_trade_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- In Time: int64
  index, in_time = okx_okx_trade_sbe_v1_0.in_time.dissect(buffer, index, packet, parent)

  -- Out Time: int64
  index, out_time = okx_okx_trade_sbe_v1_0.out_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Amend Orders Response Message data Group
okx_okx_trade_sbe_v1_0.amend_orders_response_message_data_group.dissect = function(buffer, offset, packet, parent, amend_orders_response_message_data_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.amend_orders_response_message_data_group, buffer(offset, 0))
    local index = okx_okx_trade_sbe_v1_0.amend_orders_response_message_data_group.fields(buffer, offset, packet, parent, amend_orders_response_message_data_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_trade_sbe_v1_0.amend_orders_response_message_data_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_trade_sbe_v1_0.amend_orders_response_message_data_group.fields(buffer, offset, packet, parent, amend_orders_response_message_data_group_index)
  end
end

-- Amend Orders Response Message data Groups
okx_okx_trade_sbe_v1_0.amend_orders_response_message_data_groups = {}

-- Calculate size of: Amend Orders Response Message data Groups
okx_okx_trade_sbe_v1_0.amend_orders_response_message_data_groups.size = function(buffer, offset)
  local index = 0

  index = index + okx_okx_trade_sbe_v1_0.group_size_encoding.size

  -- Calculate field size from count
  local amend_orders_response_message_data_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + amend_orders_response_message_data_group_count * 56

  return index
end

-- Display: Amend Orders Response Message data Groups
okx_okx_trade_sbe_v1_0.amend_orders_response_message_data_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Amend Orders Response Message data Groups
okx_okx_trade_sbe_v1_0.amend_orders_response_message_data_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = okx_okx_trade_sbe_v1_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Amend Orders Response Message data Group
  for amend_orders_response_message_data_group_index = 1, num_in_group do
    index, amend_orders_response_message_data_group = okx_okx_trade_sbe_v1_0.amend_orders_response_message_data_group.dissect(buffer, index, packet, parent, amend_orders_response_message_data_group_index)
  end

  return index
end

-- Dissect: Amend Orders Response Message data Groups
okx_okx_trade_sbe_v1_0.amend_orders_response_message_data_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.amend_orders_response_message_data_groups, buffer(offset, 0))
    local index = okx_okx_trade_sbe_v1_0.amend_orders_response_message_data_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_trade_sbe_v1_0.amend_orders_response_message_data_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_trade_sbe_v1_0.amend_orders_response_message_data_groups.fields(buffer, offset, packet, parent)
  end
end

-- Amend Orders Response Message
okx_okx_trade_sbe_v1_0.amend_orders_response_message = {}

-- Calculate size of: Amend Orders Response Message
okx_okx_trade_sbe_v1_0.amend_orders_response_message.size = function(buffer, offset)
  local index = 0

  index = index + okx_okx_trade_sbe_v1_0.id.size

  index = index + okx_okx_trade_sbe_v1_0.code_optional.size

  index = index + okx_okx_trade_sbe_v1_0.amend_orders_response_message_data_groups.size(buffer, offset + index)

  return index
end

-- Display: Amend Orders Response Message
okx_okx_trade_sbe_v1_0.amend_orders_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Amend Orders Response Message
okx_okx_trade_sbe_v1_0.amend_orders_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: int64
  index, id = okx_okx_trade_sbe_v1_0.id.dissect(buffer, index, packet, parent)

  -- Code Optional: int32
  index, code_optional = okx_okx_trade_sbe_v1_0.code_optional.dissect(buffer, index, packet, parent)

  -- Amend Orders Response Message data Groups: Struct of 2 fields
  index, amend_orders_response_message_data_groups = okx_okx_trade_sbe_v1_0.amend_orders_response_message_data_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Amend Orders Response Message
okx_okx_trade_sbe_v1_0.amend_orders_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.amend_orders_response_message, buffer(offset, 0))
    local index = okx_okx_trade_sbe_v1_0.amend_orders_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_trade_sbe_v1_0.amend_orders_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_trade_sbe_v1_0.amend_orders_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Amend Orders Message orders Group
okx_okx_trade_sbe_v1_0.amend_orders_message_orders_group = {}

-- Size: Amend Orders Message orders Group
okx_okx_trade_sbe_v1_0.amend_orders_message_orders_group.size =
  okx_okx_trade_sbe_v1_0.inst_id_code.size + 
  okx_okx_trade_sbe_v1_0.ord_id.size + 
  okx_okx_trade_sbe_v1_0.cl_ord_id.size + 
  okx_okx_trade_sbe_v1_0.new_sz_exponent.size + 
  okx_okx_trade_sbe_v1_0.new_sz_mantissa.size + 
  okx_okx_trade_sbe_v1_0.new_px_exponent.size + 
  okx_okx_trade_sbe_v1_0.new_px_mantissa.size + 
  okx_okx_trade_sbe_v1_0.req_id.size + 
  okx_okx_trade_sbe_v1_0.rpi_taker_access.size

-- Display: Amend Orders Message orders Group
okx_okx_trade_sbe_v1_0.amend_orders_message_orders_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Amend Orders Message orders Group
okx_okx_trade_sbe_v1_0.amend_orders_message_orders_group.fields = function(buffer, offset, packet, parent, amend_orders_message_orders_group_index)
  local index = offset

  -- Implicit Amend Orders Message orders Group Index
  if amend_orders_message_orders_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.amend_orders_message_orders_group_index, amend_orders_message_orders_group_index)
    iteration:set_generated()
  end

  -- Inst Id Code: int64
  index, inst_id_code = okx_okx_trade_sbe_v1_0.inst_id_code.dissect(buffer, index, packet, parent)

  -- Ord Id: int64
  index, ord_id = okx_okx_trade_sbe_v1_0.ord_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: int64
  index, cl_ord_id = okx_okx_trade_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- New Sz Exponent: int8
  index, new_sz_exponent = okx_okx_trade_sbe_v1_0.new_sz_exponent.dissect(buffer, index, packet, parent)

  -- New Sz Mantissa: int64
  index, new_sz_mantissa = okx_okx_trade_sbe_v1_0.new_sz_mantissa.dissect(buffer, index, packet, parent)

  -- New Px Exponent: int8
  index, new_px_exponent = okx_okx_trade_sbe_v1_0.new_px_exponent.dissect(buffer, index, packet, parent)

  -- New Px Mantissa: int64
  index, new_px_mantissa = okx_okx_trade_sbe_v1_0.new_px_mantissa.dissect(buffer, index, packet, parent)

  -- Req Id: int64
  index, req_id = okx_okx_trade_sbe_v1_0.req_id.dissect(buffer, index, packet, parent)

  -- Rpi Taker Access: booleanEnum
  index, rpi_taker_access = okx_okx_trade_sbe_v1_0.rpi_taker_access.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Amend Orders Message orders Group
okx_okx_trade_sbe_v1_0.amend_orders_message_orders_group.dissect = function(buffer, offset, packet, parent, amend_orders_message_orders_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.amend_orders_message_orders_group, buffer(offset, 0))
    local index = okx_okx_trade_sbe_v1_0.amend_orders_message_orders_group.fields(buffer, offset, packet, parent, amend_orders_message_orders_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_trade_sbe_v1_0.amend_orders_message_orders_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_trade_sbe_v1_0.amend_orders_message_orders_group.fields(buffer, offset, packet, parent, amend_orders_message_orders_group_index)
  end
end

-- Amend Orders Message orders Groups
okx_okx_trade_sbe_v1_0.amend_orders_message_orders_groups = {}

-- Calculate size of: Amend Orders Message orders Groups
okx_okx_trade_sbe_v1_0.amend_orders_message_orders_groups.size = function(buffer, offset)
  local index = 0

  index = index + okx_okx_trade_sbe_v1_0.group_size_encoding.size

  -- Calculate field size from count
  local amend_orders_message_orders_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + amend_orders_message_orders_group_count * 51

  return index
end

-- Display: Amend Orders Message orders Groups
okx_okx_trade_sbe_v1_0.amend_orders_message_orders_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Amend Orders Message orders Groups
okx_okx_trade_sbe_v1_0.amend_orders_message_orders_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = okx_okx_trade_sbe_v1_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Amend Orders Message orders Group
  for amend_orders_message_orders_group_index = 1, num_in_group do
    index, amend_orders_message_orders_group = okx_okx_trade_sbe_v1_0.amend_orders_message_orders_group.dissect(buffer, index, packet, parent, amend_orders_message_orders_group_index)
  end

  return index
end

-- Dissect: Amend Orders Message orders Groups
okx_okx_trade_sbe_v1_0.amend_orders_message_orders_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.amend_orders_message_orders_groups, buffer(offset, 0))
    local index = okx_okx_trade_sbe_v1_0.amend_orders_message_orders_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_trade_sbe_v1_0.amend_orders_message_orders_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_trade_sbe_v1_0.amend_orders_message_orders_groups.fields(buffer, offset, packet, parent)
  end
end

-- Amend Orders Message
okx_okx_trade_sbe_v1_0.amend_orders_message = {}

-- Calculate size of: Amend Orders Message
okx_okx_trade_sbe_v1_0.amend_orders_message.size = function(buffer, offset)
  local index = 0

  index = index + okx_okx_trade_sbe_v1_0.id.size

  index = index + okx_okx_trade_sbe_v1_0.exp_time.size

  index = index + okx_okx_trade_sbe_v1_0.amend_orders_message_orders_groups.size(buffer, offset + index)

  return index
end

-- Display: Amend Orders Message
okx_okx_trade_sbe_v1_0.amend_orders_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Amend Orders Message
okx_okx_trade_sbe_v1_0.amend_orders_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: int64
  index, id = okx_okx_trade_sbe_v1_0.id.dissect(buffer, index, packet, parent)

  -- Exp Time: int64
  index, exp_time = okx_okx_trade_sbe_v1_0.exp_time.dissect(buffer, index, packet, parent)

  -- Amend Orders Message orders Groups: Struct of 2 fields
  index, amend_orders_message_orders_groups = okx_okx_trade_sbe_v1_0.amend_orders_message_orders_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Amend Orders Message
okx_okx_trade_sbe_v1_0.amend_orders_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.amend_orders_message, buffer(offset, 0))
    local index = okx_okx_trade_sbe_v1_0.amend_orders_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_trade_sbe_v1_0.amend_orders_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_trade_sbe_v1_0.amend_orders_message.fields(buffer, offset, packet, parent)
  end
end

-- Amend Order Response Message
okx_okx_trade_sbe_v1_0.amend_order_response_message = {}

-- Size: Amend Order Response Message
okx_okx_trade_sbe_v1_0.amend_order_response_message.size =
  okx_okx_trade_sbe_v1_0.id.size + 
  okx_okx_trade_sbe_v1_0.code_optional.size + 
  okx_okx_trade_sbe_v1_0.sub_code.size + 
  okx_okx_trade_sbe_v1_0.ord_id.size + 
  okx_okx_trade_sbe_v1_0.req_id.size + 
  okx_okx_trade_sbe_v1_0.ts_optional.size + 
  okx_okx_trade_sbe_v1_0.cl_ord_id.size + 
  okx_okx_trade_sbe_v1_0.in_time.size + 
  okx_okx_trade_sbe_v1_0.out_time.size

-- Display: Amend Order Response Message
okx_okx_trade_sbe_v1_0.amend_order_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Amend Order Response Message
okx_okx_trade_sbe_v1_0.amend_order_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: int64
  index, id = okx_okx_trade_sbe_v1_0.id.dissect(buffer, index, packet, parent)

  -- Code Optional: int32
  index, code_optional = okx_okx_trade_sbe_v1_0.code_optional.dissect(buffer, index, packet, parent)

  -- Sub Code: int32
  index, sub_code = okx_okx_trade_sbe_v1_0.sub_code.dissect(buffer, index, packet, parent)

  -- Ord Id: int64
  index, ord_id = okx_okx_trade_sbe_v1_0.ord_id.dissect(buffer, index, packet, parent)

  -- Req Id: int64
  index, req_id = okx_okx_trade_sbe_v1_0.req_id.dissect(buffer, index, packet, parent)

  -- Ts Optional: int64
  index, ts_optional = okx_okx_trade_sbe_v1_0.ts_optional.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: int64
  index, cl_ord_id = okx_okx_trade_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- In Time: int64
  index, in_time = okx_okx_trade_sbe_v1_0.in_time.dissect(buffer, index, packet, parent)

  -- Out Time: int64
  index, out_time = okx_okx_trade_sbe_v1_0.out_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Amend Order Response Message
okx_okx_trade_sbe_v1_0.amend_order_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.amend_order_response_message, buffer(offset, 0))
    local index = okx_okx_trade_sbe_v1_0.amend_order_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_trade_sbe_v1_0.amend_order_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_trade_sbe_v1_0.amend_order_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Amend Order Message
okx_okx_trade_sbe_v1_0.amend_order_message = {}

-- Size: Amend Order Message
okx_okx_trade_sbe_v1_0.amend_order_message.size =
  okx_okx_trade_sbe_v1_0.id.size + 
  okx_okx_trade_sbe_v1_0.inst_id_code.size + 
  okx_okx_trade_sbe_v1_0.ord_id.size + 
  okx_okx_trade_sbe_v1_0.cl_ord_id.size + 
  okx_okx_trade_sbe_v1_0.new_sz_exponent.size + 
  okx_okx_trade_sbe_v1_0.new_sz_mantissa.size + 
  okx_okx_trade_sbe_v1_0.new_px_exponent.size + 
  okx_okx_trade_sbe_v1_0.new_px_mantissa.size + 
  okx_okx_trade_sbe_v1_0.req_id.size + 
  okx_okx_trade_sbe_v1_0.exp_time.size + 
  okx_okx_trade_sbe_v1_0.rpi_taker_access.size

-- Display: Amend Order Message
okx_okx_trade_sbe_v1_0.amend_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Amend Order Message
okx_okx_trade_sbe_v1_0.amend_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: int64
  index, id = okx_okx_trade_sbe_v1_0.id.dissect(buffer, index, packet, parent)

  -- Inst Id Code: int64
  index, inst_id_code = okx_okx_trade_sbe_v1_0.inst_id_code.dissect(buffer, index, packet, parent)

  -- Ord Id: int64
  index, ord_id = okx_okx_trade_sbe_v1_0.ord_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: int64
  index, cl_ord_id = okx_okx_trade_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- New Sz Exponent: int8
  index, new_sz_exponent = okx_okx_trade_sbe_v1_0.new_sz_exponent.dissect(buffer, index, packet, parent)

  -- New Sz Mantissa: int64
  index, new_sz_mantissa = okx_okx_trade_sbe_v1_0.new_sz_mantissa.dissect(buffer, index, packet, parent)

  -- New Px Exponent: int8
  index, new_px_exponent = okx_okx_trade_sbe_v1_0.new_px_exponent.dissect(buffer, index, packet, parent)

  -- New Px Mantissa: int64
  index, new_px_mantissa = okx_okx_trade_sbe_v1_0.new_px_mantissa.dissect(buffer, index, packet, parent)

  -- Req Id: int64
  index, req_id = okx_okx_trade_sbe_v1_0.req_id.dissect(buffer, index, packet, parent)

  -- Exp Time: int64
  index, exp_time = okx_okx_trade_sbe_v1_0.exp_time.dissect(buffer, index, packet, parent)

  -- Rpi Taker Access: booleanEnum
  index, rpi_taker_access = okx_okx_trade_sbe_v1_0.rpi_taker_access.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Amend Order Message
okx_okx_trade_sbe_v1_0.amend_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.amend_order_message, buffer(offset, 0))
    local index = okx_okx_trade_sbe_v1_0.amend_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_trade_sbe_v1_0.amend_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_trade_sbe_v1_0.amend_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Place Orders Response Message data Group
okx_okx_trade_sbe_v1_0.place_orders_response_message_data_group = {}

-- Size: Place Orders Response Message data Group
okx_okx_trade_sbe_v1_0.place_orders_response_message_data_group.size =
  okx_okx_trade_sbe_v1_0.s_code.size + 
  okx_okx_trade_sbe_v1_0.sub_code.size + 
  okx_okx_trade_sbe_v1_0.ord_id.size + 
  okx_okx_trade_sbe_v1_0.inst_id_code.size + 
  okx_okx_trade_sbe_v1_0.ts_optional.size + 
  okx_okx_trade_sbe_v1_0.cl_ord_id.size + 
  okx_okx_trade_sbe_v1_0.tag.size + 
  okx_okx_trade_sbe_v1_0.in_time.size + 
  okx_okx_trade_sbe_v1_0.out_time.size

-- Display: Place Orders Response Message data Group
okx_okx_trade_sbe_v1_0.place_orders_response_message_data_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Place Orders Response Message data Group
okx_okx_trade_sbe_v1_0.place_orders_response_message_data_group.fields = function(buffer, offset, packet, parent, place_orders_response_message_data_group_index)
  local index = offset

  -- Implicit Place Orders Response Message data Group Index
  if place_orders_response_message_data_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.place_orders_response_message_data_group_index, place_orders_response_message_data_group_index)
    iteration:set_generated()
  end

  -- S Code: int32
  index, s_code = okx_okx_trade_sbe_v1_0.s_code.dissect(buffer, index, packet, parent)

  -- Sub Code: int32
  index, sub_code = okx_okx_trade_sbe_v1_0.sub_code.dissect(buffer, index, packet, parent)

  -- Ord Id: int64
  index, ord_id = okx_okx_trade_sbe_v1_0.ord_id.dissect(buffer, index, packet, parent)

  -- Inst Id Code: int64
  index, inst_id_code = okx_okx_trade_sbe_v1_0.inst_id_code.dissect(buffer, index, packet, parent)

  -- Ts Optional: int64
  index, ts_optional = okx_okx_trade_sbe_v1_0.ts_optional.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: int64
  index, cl_ord_id = okx_okx_trade_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Tag: int64
  index, tag = okx_okx_trade_sbe_v1_0.tag.dissect(buffer, index, packet, parent)

  -- In Time: int64
  index, in_time = okx_okx_trade_sbe_v1_0.in_time.dissect(buffer, index, packet, parent)

  -- Out Time: int64
  index, out_time = okx_okx_trade_sbe_v1_0.out_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Place Orders Response Message data Group
okx_okx_trade_sbe_v1_0.place_orders_response_message_data_group.dissect = function(buffer, offset, packet, parent, place_orders_response_message_data_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.place_orders_response_message_data_group, buffer(offset, 0))
    local index = okx_okx_trade_sbe_v1_0.place_orders_response_message_data_group.fields(buffer, offset, packet, parent, place_orders_response_message_data_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_trade_sbe_v1_0.place_orders_response_message_data_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_trade_sbe_v1_0.place_orders_response_message_data_group.fields(buffer, offset, packet, parent, place_orders_response_message_data_group_index)
  end
end

-- Place Orders Response Message data Groups
okx_okx_trade_sbe_v1_0.place_orders_response_message_data_groups = {}

-- Calculate size of: Place Orders Response Message data Groups
okx_okx_trade_sbe_v1_0.place_orders_response_message_data_groups.size = function(buffer, offset)
  local index = 0

  index = index + okx_okx_trade_sbe_v1_0.group_size_encoding.size

  -- Calculate field size from count
  local place_orders_response_message_data_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + place_orders_response_message_data_group_count * 64

  return index
end

-- Display: Place Orders Response Message data Groups
okx_okx_trade_sbe_v1_0.place_orders_response_message_data_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Place Orders Response Message data Groups
okx_okx_trade_sbe_v1_0.place_orders_response_message_data_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = okx_okx_trade_sbe_v1_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Place Orders Response Message data Group
  for place_orders_response_message_data_group_index = 1, num_in_group do
    index, place_orders_response_message_data_group = okx_okx_trade_sbe_v1_0.place_orders_response_message_data_group.dissect(buffer, index, packet, parent, place_orders_response_message_data_group_index)
  end

  return index
end

-- Dissect: Place Orders Response Message data Groups
okx_okx_trade_sbe_v1_0.place_orders_response_message_data_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.place_orders_response_message_data_groups, buffer(offset, 0))
    local index = okx_okx_trade_sbe_v1_0.place_orders_response_message_data_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_trade_sbe_v1_0.place_orders_response_message_data_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_trade_sbe_v1_0.place_orders_response_message_data_groups.fields(buffer, offset, packet, parent)
  end
end

-- Place Orders Response Message
okx_okx_trade_sbe_v1_0.place_orders_response_message = {}

-- Calculate size of: Place Orders Response Message
okx_okx_trade_sbe_v1_0.place_orders_response_message.size = function(buffer, offset)
  local index = 0

  index = index + okx_okx_trade_sbe_v1_0.id.size

  index = index + okx_okx_trade_sbe_v1_0.code.size

  index = index + okx_okx_trade_sbe_v1_0.place_orders_response_message_data_groups.size(buffer, offset + index)

  return index
end

-- Display: Place Orders Response Message
okx_okx_trade_sbe_v1_0.place_orders_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Place Orders Response Message
okx_okx_trade_sbe_v1_0.place_orders_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: int64
  index, id = okx_okx_trade_sbe_v1_0.id.dissect(buffer, index, packet, parent)

  -- Code: int32
  index, code = okx_okx_trade_sbe_v1_0.code.dissect(buffer, index, packet, parent)

  -- Place Orders Response Message data Groups: Struct of 2 fields
  index, place_orders_response_message_data_groups = okx_okx_trade_sbe_v1_0.place_orders_response_message_data_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Place Orders Response Message
okx_okx_trade_sbe_v1_0.place_orders_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.place_orders_response_message, buffer(offset, 0))
    local index = okx_okx_trade_sbe_v1_0.place_orders_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_trade_sbe_v1_0.place_orders_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_trade_sbe_v1_0.place_orders_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Place Orders Message orders Group
okx_okx_trade_sbe_v1_0.place_orders_message_orders_group = {}

-- Size: Place Orders Message orders Group
okx_okx_trade_sbe_v1_0.place_orders_message_orders_group.size =
  okx_okx_trade_sbe_v1_0.inst_id_code.size + 
  okx_okx_trade_sbe_v1_0.side.size + 
  okx_okx_trade_sbe_v1_0.ord_type.size + 
  okx_okx_trade_sbe_v1_0.td_mode.size + 
  okx_okx_trade_sbe_v1_0.sz_exponent.size + 
  okx_okx_trade_sbe_v1_0.sz_mantissa.size + 
  okx_okx_trade_sbe_v1_0.px_exponent.size + 
  okx_okx_trade_sbe_v1_0.px_mantissa.size + 
  okx_okx_trade_sbe_v1_0.cl_ord_id.size + 
  okx_okx_trade_sbe_v1_0.tag.size + 
  okx_okx_trade_sbe_v1_0.rpi_taker_access.size

-- Display: Place Orders Message orders Group
okx_okx_trade_sbe_v1_0.place_orders_message_orders_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Place Orders Message orders Group
okx_okx_trade_sbe_v1_0.place_orders_message_orders_group.fields = function(buffer, offset, packet, parent, place_orders_message_orders_group_index)
  local index = offset

  -- Implicit Place Orders Message orders Group Index
  if place_orders_message_orders_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.place_orders_message_orders_group_index, place_orders_message_orders_group_index)
    iteration:set_generated()
  end

  -- Inst Id Code: int64
  index, inst_id_code = okx_okx_trade_sbe_v1_0.inst_id_code.dissect(buffer, index, packet, parent)

  -- Side: sideEnum
  index, side = okx_okx_trade_sbe_v1_0.side.dissect(buffer, index, packet, parent)

  -- Ord Type: ordTypeEnum
  index, ord_type = okx_okx_trade_sbe_v1_0.ord_type.dissect(buffer, index, packet, parent)

  -- Td Mode: tdModeEnum
  index, td_mode = okx_okx_trade_sbe_v1_0.td_mode.dissect(buffer, index, packet, parent)

  -- Sz Exponent: int8
  index, sz_exponent = okx_okx_trade_sbe_v1_0.sz_exponent.dissect(buffer, index, packet, parent)

  -- Sz Mantissa: int64
  index, sz_mantissa = okx_okx_trade_sbe_v1_0.sz_mantissa.dissect(buffer, index, packet, parent)

  -- Px Exponent: int8
  index, px_exponent = okx_okx_trade_sbe_v1_0.px_exponent.dissect(buffer, index, packet, parent)

  -- Px Mantissa: int64
  index, px_mantissa = okx_okx_trade_sbe_v1_0.px_mantissa.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: int64
  index, cl_ord_id = okx_okx_trade_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Tag: int64
  index, tag = okx_okx_trade_sbe_v1_0.tag.dissect(buffer, index, packet, parent)

  -- Rpi Taker Access: booleanEnum
  index, rpi_taker_access = okx_okx_trade_sbe_v1_0.rpi_taker_access.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Place Orders Message orders Group
okx_okx_trade_sbe_v1_0.place_orders_message_orders_group.dissect = function(buffer, offset, packet, parent, place_orders_message_orders_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.place_orders_message_orders_group, buffer(offset, 0))
    local index = okx_okx_trade_sbe_v1_0.place_orders_message_orders_group.fields(buffer, offset, packet, parent, place_orders_message_orders_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_trade_sbe_v1_0.place_orders_message_orders_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_trade_sbe_v1_0.place_orders_message_orders_group.fields(buffer, offset, packet, parent, place_orders_message_orders_group_index)
  end
end

-- Place Orders Message orders Groups
okx_okx_trade_sbe_v1_0.place_orders_message_orders_groups = {}

-- Calculate size of: Place Orders Message orders Groups
okx_okx_trade_sbe_v1_0.place_orders_message_orders_groups.size = function(buffer, offset)
  local index = 0

  index = index + okx_okx_trade_sbe_v1_0.group_size_encoding.size

  -- Calculate field size from count
  local place_orders_message_orders_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + place_orders_message_orders_group_count * 46

  return index
end

-- Display: Place Orders Message orders Groups
okx_okx_trade_sbe_v1_0.place_orders_message_orders_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Place Orders Message orders Groups
okx_okx_trade_sbe_v1_0.place_orders_message_orders_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = okx_okx_trade_sbe_v1_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Place Orders Message orders Group
  for place_orders_message_orders_group_index = 1, num_in_group do
    index, place_orders_message_orders_group = okx_okx_trade_sbe_v1_0.place_orders_message_orders_group.dissect(buffer, index, packet, parent, place_orders_message_orders_group_index)
  end

  return index
end

-- Dissect: Place Orders Message orders Groups
okx_okx_trade_sbe_v1_0.place_orders_message_orders_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.place_orders_message_orders_groups, buffer(offset, 0))
    local index = okx_okx_trade_sbe_v1_0.place_orders_message_orders_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_trade_sbe_v1_0.place_orders_message_orders_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_trade_sbe_v1_0.place_orders_message_orders_groups.fields(buffer, offset, packet, parent)
  end
end

-- Place Orders Message
okx_okx_trade_sbe_v1_0.place_orders_message = {}

-- Calculate size of: Place Orders Message
okx_okx_trade_sbe_v1_0.place_orders_message.size = function(buffer, offset)
  local index = 0

  index = index + okx_okx_trade_sbe_v1_0.id.size

  index = index + okx_okx_trade_sbe_v1_0.exp_time.size

  index = index + okx_okx_trade_sbe_v1_0.place_orders_message_orders_groups.size(buffer, offset + index)

  return index
end

-- Display: Place Orders Message
okx_okx_trade_sbe_v1_0.place_orders_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Place Orders Message
okx_okx_trade_sbe_v1_0.place_orders_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: int64
  index, id = okx_okx_trade_sbe_v1_0.id.dissect(buffer, index, packet, parent)

  -- Exp Time: int64
  index, exp_time = okx_okx_trade_sbe_v1_0.exp_time.dissect(buffer, index, packet, parent)

  -- Place Orders Message orders Groups: Struct of 2 fields
  index, place_orders_message_orders_groups = okx_okx_trade_sbe_v1_0.place_orders_message_orders_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Place Orders Message
okx_okx_trade_sbe_v1_0.place_orders_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.place_orders_message, buffer(offset, 0))
    local index = okx_okx_trade_sbe_v1_0.place_orders_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_trade_sbe_v1_0.place_orders_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_trade_sbe_v1_0.place_orders_message.fields(buffer, offset, packet, parent)
  end
end

-- Place Order Response Message
okx_okx_trade_sbe_v1_0.place_order_response_message = {}

-- Size: Place Order Response Message
okx_okx_trade_sbe_v1_0.place_order_response_message.size =
  okx_okx_trade_sbe_v1_0.id.size + 
  okx_okx_trade_sbe_v1_0.code.size + 
  okx_okx_trade_sbe_v1_0.sub_code.size + 
  okx_okx_trade_sbe_v1_0.ord_id.size + 
  okx_okx_trade_sbe_v1_0.inst_id_code.size + 
  okx_okx_trade_sbe_v1_0.ts_optional.size + 
  okx_okx_trade_sbe_v1_0.cl_ord_id.size + 
  okx_okx_trade_sbe_v1_0.tag.size + 
  okx_okx_trade_sbe_v1_0.in_time.size + 
  okx_okx_trade_sbe_v1_0.out_time.size

-- Display: Place Order Response Message
okx_okx_trade_sbe_v1_0.place_order_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Place Order Response Message
okx_okx_trade_sbe_v1_0.place_order_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: int64
  index, id = okx_okx_trade_sbe_v1_0.id.dissect(buffer, index, packet, parent)

  -- Code: int32
  index, code = okx_okx_trade_sbe_v1_0.code.dissect(buffer, index, packet, parent)

  -- Sub Code: int32
  index, sub_code = okx_okx_trade_sbe_v1_0.sub_code.dissect(buffer, index, packet, parent)

  -- Ord Id: int64
  index, ord_id = okx_okx_trade_sbe_v1_0.ord_id.dissect(buffer, index, packet, parent)

  -- Inst Id Code: int64
  index, inst_id_code = okx_okx_trade_sbe_v1_0.inst_id_code.dissect(buffer, index, packet, parent)

  -- Ts Optional: int64
  index, ts_optional = okx_okx_trade_sbe_v1_0.ts_optional.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: int64
  index, cl_ord_id = okx_okx_trade_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Tag: int64
  index, tag = okx_okx_trade_sbe_v1_0.tag.dissect(buffer, index, packet, parent)

  -- In Time: int64
  index, in_time = okx_okx_trade_sbe_v1_0.in_time.dissect(buffer, index, packet, parent)

  -- Out Time: int64
  index, out_time = okx_okx_trade_sbe_v1_0.out_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Place Order Response Message
okx_okx_trade_sbe_v1_0.place_order_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.place_order_response_message, buffer(offset, 0))
    local index = okx_okx_trade_sbe_v1_0.place_order_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_trade_sbe_v1_0.place_order_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_trade_sbe_v1_0.place_order_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Place Order Message
okx_okx_trade_sbe_v1_0.place_order_message = {}

-- Size: Place Order Message
okx_okx_trade_sbe_v1_0.place_order_message.size =
  okx_okx_trade_sbe_v1_0.id.size + 
  okx_okx_trade_sbe_v1_0.inst_id_code.size + 
  okx_okx_trade_sbe_v1_0.side.size + 
  okx_okx_trade_sbe_v1_0.ord_type.size + 
  okx_okx_trade_sbe_v1_0.td_mode.size + 
  okx_okx_trade_sbe_v1_0.sz_exponent.size + 
  okx_okx_trade_sbe_v1_0.sz_mantissa.size + 
  okx_okx_trade_sbe_v1_0.px_exponent.size + 
  okx_okx_trade_sbe_v1_0.px_mantissa.size + 
  okx_okx_trade_sbe_v1_0.cl_ord_id.size + 
  okx_okx_trade_sbe_v1_0.exp_time.size + 
  okx_okx_trade_sbe_v1_0.tag.size + 
  okx_okx_trade_sbe_v1_0.rpi_taker_access.size

-- Display: Place Order Message
okx_okx_trade_sbe_v1_0.place_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Place Order Message
okx_okx_trade_sbe_v1_0.place_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: int64
  index, id = okx_okx_trade_sbe_v1_0.id.dissect(buffer, index, packet, parent)

  -- Inst Id Code: int64
  index, inst_id_code = okx_okx_trade_sbe_v1_0.inst_id_code.dissect(buffer, index, packet, parent)

  -- Side: sideEnum
  index, side = okx_okx_trade_sbe_v1_0.side.dissect(buffer, index, packet, parent)

  -- Ord Type: ordTypeEnum
  index, ord_type = okx_okx_trade_sbe_v1_0.ord_type.dissect(buffer, index, packet, parent)

  -- Td Mode: tdModeEnum
  index, td_mode = okx_okx_trade_sbe_v1_0.td_mode.dissect(buffer, index, packet, parent)

  -- Sz Exponent: int8
  index, sz_exponent = okx_okx_trade_sbe_v1_0.sz_exponent.dissect(buffer, index, packet, parent)

  -- Sz Mantissa: int64
  index, sz_mantissa = okx_okx_trade_sbe_v1_0.sz_mantissa.dissect(buffer, index, packet, parent)

  -- Px Exponent: int8
  index, px_exponent = okx_okx_trade_sbe_v1_0.px_exponent.dissect(buffer, index, packet, parent)

  -- Px Mantissa: int64
  index, px_mantissa = okx_okx_trade_sbe_v1_0.px_mantissa.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: int64
  index, cl_ord_id = okx_okx_trade_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exp Time: int64
  index, exp_time = okx_okx_trade_sbe_v1_0.exp_time.dissect(buffer, index, packet, parent)

  -- Tag: int64
  index, tag = okx_okx_trade_sbe_v1_0.tag.dissect(buffer, index, packet, parent)

  -- Rpi Taker Access: booleanEnum
  index, rpi_taker_access = okx_okx_trade_sbe_v1_0.rpi_taker_access.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Place Order Message
okx_okx_trade_sbe_v1_0.place_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.place_order_message, buffer(offset, 0))
    local index = okx_okx_trade_sbe_v1_0.place_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_trade_sbe_v1_0.place_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_trade_sbe_v1_0.place_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
okx_okx_trade_sbe_v1_0.payload = {}

-- Dissect: Payload
okx_okx_trade_sbe_v1_0.payload.dissect = function(buffer, offset, packet, parent, template_id)
  -- Dissect Place Order Message
  if template_id == 1 then
    return okx_okx_trade_sbe_v1_0.place_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Place Order Response Message
  if template_id == 2 then
    return okx_okx_trade_sbe_v1_0.place_order_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Place Orders Message
  if template_id == 3 then
    return okx_okx_trade_sbe_v1_0.place_orders_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Place Orders Response Message
  if template_id == 4 then
    return okx_okx_trade_sbe_v1_0.place_orders_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Amend Order Message
  if template_id == 5 then
    return okx_okx_trade_sbe_v1_0.amend_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Amend Order Response Message
  if template_id == 6 then
    return okx_okx_trade_sbe_v1_0.amend_order_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Amend Orders Message
  if template_id == 7 then
    return okx_okx_trade_sbe_v1_0.amend_orders_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Amend Orders Response Message
  if template_id == 8 then
    return okx_okx_trade_sbe_v1_0.amend_orders_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Message
  if template_id == 9 then
    return okx_okx_trade_sbe_v1_0.cancel_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Response Message
  if template_id == 10 then
    return okx_okx_trade_sbe_v1_0.cancel_order_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Orders Message
  if template_id == 11 then
    return okx_okx_trade_sbe_v1_0.cancel_orders_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Orders Response Message
  if template_id == 12 then
    return okx_okx_trade_sbe_v1_0.cancel_orders_response_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
okx_okx_trade_sbe_v1_0.message_header = {}

-- Size: Message Header
okx_okx_trade_sbe_v1_0.message_header.size =
  okx_okx_trade_sbe_v1_0.block_length.size + 
  okx_okx_trade_sbe_v1_0.template_id.size + 
  okx_okx_trade_sbe_v1_0.schema_id.size + 
  okx_okx_trade_sbe_v1_0.version.size

-- Display: Message Header
okx_okx_trade_sbe_v1_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
okx_okx_trade_sbe_v1_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = okx_okx_trade_sbe_v1_0.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: uint16
  index, template_id = okx_okx_trade_sbe_v1_0.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: uint16
  index, schema_id = okx_okx_trade_sbe_v1_0.schema_id.dissect(buffer, index, packet, parent)

  -- Version: uint16
  index, version = okx_okx_trade_sbe_v1_0.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
okx_okx_trade_sbe_v1_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.message_header, buffer(offset, 0))
    local index = okx_okx_trade_sbe_v1_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_trade_sbe_v1_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_trade_sbe_v1_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
okx_okx_trade_sbe_v1_0.sbe_message = {}

-- Calculate size of: Sbe Message
okx_okx_trade_sbe_v1_0.sbe_message.size = function(buffer, offset)
  local index = 0

  index = index + okx_okx_trade_sbe_v1_0.message_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 2):le_uint()
  index = index + okx_okx_trade_sbe_v1_0.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Sbe Message
okx_okx_trade_sbe_v1_0.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
okx_okx_trade_sbe_v1_0.sbe_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 4 fields
  index, message_header = okx_okx_trade_sbe_v1_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 12 branches
  index = okx_okx_trade_sbe_v1_0.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Sbe Message
okx_okx_trade_sbe_v1_0.sbe_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_trade_sbe_v1_0.fields.sbe_message, buffer(offset, 0))
    local index = okx_okx_trade_sbe_v1_0.sbe_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_trade_sbe_v1_0.sbe_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_trade_sbe_v1_0.sbe_message.fields(buffer, offset, packet, parent)
  end
end

-- Frame
okx_okx_trade_sbe_v1_0.frame = {}

-- Verify required size of WebSocket packet
okx_okx_trade_sbe_v1_0.frame.requiredsize = function(buffer)
  return buffer:len() >= okx_okx_trade_sbe_v1_0.message_header.size
end

-- Dissect Frame
okx_okx_trade_sbe_v1_0.frame.dissect = function(buffer, packet, parent)
  local index = 0

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = okx_okx_trade_sbe_v1_0.sbe_message.dissect(buffer, index, packet, parent)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_okx_okx_trade_sbe_v1_0.init()
end

-- Dissector for Okx Okx Trade Sbe 1.0
function omi_okx_okx_trade_sbe_v1_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_okx_okx_trade_sbe_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_okx_okx_trade_sbe_v1_0, buffer(), omi_okx_okx_trade_sbe_v1_0.description, "("..buffer:len().." Bytes)")
  return okx_okx_trade_sbe_v1_0.frame.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Schema Id Field
okx_okx_trade_sbe_v1_0.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(4, 2):le_uint()

  if value == 1 then
    return true
  end

  return false
end

-- Verify Version Field
okx_okx_trade_sbe_v1_0.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(6, 2):le_uint()

  if value == 0 then
    return true
  end

  return false
end

-- Dissector Heuristic for Okx Okx Trade Sbe 1.0 (WebSocket)
local function omi_okx_okx_trade_sbe_v1_0_ws_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not okx_okx_trade_sbe_v1_0.frame.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not okx_okx_trade_sbe_v1_0.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not okx_okx_trade_sbe_v1_0.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_okx_okx_trade_sbe_v1_0
  omi_okx_okx_trade_sbe_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Okx Okx Trade Sbe 1.0
omi_okx_okx_trade_sbe_v1_0:register_heuristic("ws", omi_okx_okx_trade_sbe_v1_0_ws_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: OKX
--   Version: 1.0
--   Date: Wednesday, September 30, 2026
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
