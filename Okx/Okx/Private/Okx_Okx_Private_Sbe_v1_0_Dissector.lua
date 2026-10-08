-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Okx Okx Private Sbe 1.0 Protocol
local omi_okx_okx_private_sbe_v1_0 = Proto("Omi.Okx.Okx.Private.Sbe.v1.0", "Okx Okx Private Sbe 1.0")

-- Protocol table
local okx_okx_private_sbe_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Okx Okx Private Sbe 1.0 Fields
omi_okx_okx_private_sbe_v1_0.fields.acc_fill_sz_mantissa = ProtoField.new("Acc Fill Sz Mantissa", "okx.okx.private.sbe.v1.0.accfillszmantissa", ftypes.INT64)
omi_okx_okx_private_sbe_v1_0.fields.amend_result = ProtoField.new("Amend Result", "okx.okx.private.sbe.v1.0.amendresult", ftypes.INT8)
omi_okx_okx_private_sbe_v1_0.fields.amend_source = ProtoField.new("Amend Source", "okx.okx.private.sbe.v1.0.amendsource", ftypes.INT8)
omi_okx_okx_private_sbe_v1_0.fields.block_length = ProtoField.new("Block Length", "okx.okx.private.sbe.v1.0.blocklength", ftypes.UINT16)
omi_okx_okx_private_sbe_v1_0.fields.c_time = ProtoField.new("C Time", "okx.okx.private.sbe.v1.0.ctime", ftypes.INT64)
omi_okx_okx_private_sbe_v1_0.fields.cancel_source = ProtoField.new("Cancel Source", "okx.okx.private.sbe.v1.0.cancelsource", ftypes.INT8)
omi_okx_okx_private_sbe_v1_0.fields.category = ProtoField.new("Category", "okx.okx.private.sbe.v1.0.category", ftypes.INT8)
omi_okx_okx_private_sbe_v1_0.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "okx.okx.private.sbe.v1.0.clordid", ftypes.INT64)
omi_okx_okx_private_sbe_v1_0.fields.count = ProtoField.new("Count", "okx.okx.private.sbe.v1.0.count", ftypes.INT16)
omi_okx_okx_private_sbe_v1_0.fields.exec_type = ProtoField.new("Exec Type", "okx.okx.private.sbe.v1.0.exectype", ftypes.INT8)
omi_okx_okx_private_sbe_v1_0.fields.exec_type_optional = ProtoField.new("Exec Type Optional", "okx.okx.private.sbe.v1.0.exectypeoptional", ftypes.INT8)
omi_okx_okx_private_sbe_v1_0.fields.fee_exponent = ProtoField.new("Fee Exponent", "okx.okx.private.sbe.v1.0.feeexponent", ftypes.INT8)
omi_okx_okx_private_sbe_v1_0.fields.fee_mantissa = ProtoField.new("Fee Mantissa", "okx.okx.private.sbe.v1.0.feemantissa", ftypes.INT64)
omi_okx_okx_private_sbe_v1_0.fields.fill_fee_mantissa = ProtoField.new("Fill Fee Mantissa", "okx.okx.private.sbe.v1.0.fillfeemantissa", ftypes.INT64)
omi_okx_okx_private_sbe_v1_0.fields.fill_px_exponent = ProtoField.new("Fill Px Exponent", "okx.okx.private.sbe.v1.0.fillpxexponent", ftypes.INT8)
omi_okx_okx_private_sbe_v1_0.fields.fill_px_mantissa = ProtoField.new("Fill Px Mantissa", "okx.okx.private.sbe.v1.0.fillpxmantissa", ftypes.INT64)
omi_okx_okx_private_sbe_v1_0.fields.fill_px_mantissa_optional = ProtoField.new("Fill Px Mantissa Optional", "okx.okx.private.sbe.v1.0.fillpxmantissaoptional", ftypes.INT64)
omi_okx_okx_private_sbe_v1_0.fields.fill_sz_exponent = ProtoField.new("Fill Sz Exponent", "okx.okx.private.sbe.v1.0.fillszexponent", ftypes.INT8)
omi_okx_okx_private_sbe_v1_0.fields.fill_sz_mantissa = ProtoField.new("Fill Sz Mantissa", "okx.okx.private.sbe.v1.0.fillszmantissa", ftypes.INT64)
omi_okx_okx_private_sbe_v1_0.fields.fill_sz_mantissa_optional = ProtoField.new("Fill Sz Mantissa Optional", "okx.okx.private.sbe.v1.0.fillszmantissaoptional", ftypes.INT64)
omi_okx_okx_private_sbe_v1_0.fields.fill_time = ProtoField.new("Fill Time", "okx.okx.private.sbe.v1.0.filltime", ftypes.INT64)
omi_okx_okx_private_sbe_v1_0.fields.inst_id_code = ProtoField.new("Inst Id Code", "okx.okx.private.sbe.v1.0.instidcode", ftypes.INT64)
omi_okx_okx_private_sbe_v1_0.fields.ord_id = ProtoField.new("Ord Id", "okx.okx.private.sbe.v1.0.ordid", ftypes.INT64)
omi_okx_okx_private_sbe_v1_0.fields.px_exponent = ProtoField.new("Px Exponent", "okx.okx.private.sbe.v1.0.pxexponent", ftypes.INT8)
omi_okx_okx_private_sbe_v1_0.fields.px_mantissa = ProtoField.new("Px Mantissa", "okx.okx.private.sbe.v1.0.pxmantissa", ftypes.INT64)
omi_okx_okx_private_sbe_v1_0.fields.req_id = ProtoField.new("Req Id", "okx.okx.private.sbe.v1.0.reqid", ftypes.INT64)
omi_okx_okx_private_sbe_v1_0.fields.risk_bypass_result = ProtoField.new("Risk Bypass Result", "okx.okx.private.sbe.v1.0.riskbypassresult", ftypes.INT8)
omi_okx_okx_private_sbe_v1_0.fields.schema_id = ProtoField.new("Schema Id", "okx.okx.private.sbe.v1.0.schemaid", ftypes.UINT16)
omi_okx_okx_private_sbe_v1_0.fields.side = ProtoField.new("Side", "okx.okx.private.sbe.v1.0.side", ftypes.INT8)
omi_okx_okx_private_sbe_v1_0.fields.state = ProtoField.new("State", "okx.okx.private.sbe.v1.0.state", ftypes.INT8)
omi_okx_okx_private_sbe_v1_0.fields.sz_exponent = ProtoField.new("Sz Exponent", "okx.okx.private.sbe.v1.0.szexponent", ftypes.INT8)
omi_okx_okx_private_sbe_v1_0.fields.sz_mantissa = ProtoField.new("Sz Mantissa", "okx.okx.private.sbe.v1.0.szmantissa", ftypes.INT64)
omi_okx_okx_private_sbe_v1_0.fields.tag = ProtoField.new("Tag", "okx.okx.private.sbe.v1.0.tag", ftypes.INT64)
omi_okx_okx_private_sbe_v1_0.fields.td_mode = ProtoField.new("Td Mode", "okx.okx.private.sbe.v1.0.tdmode", ftypes.INT8)
omi_okx_okx_private_sbe_v1_0.fields.template_id = ProtoField.new("Template Id", "okx.okx.private.sbe.v1.0.templateid", ftypes.UINT16)
omi_okx_okx_private_sbe_v1_0.fields.trade_id = ProtoField.new("Trade Id", "okx.okx.private.sbe.v1.0.tradeid", ftypes.INT64)
omi_okx_okx_private_sbe_v1_0.fields.trade_id_optional = ProtoField.new("Trade Id Optional", "okx.okx.private.sbe.v1.0.tradeidoptional", ftypes.INT64)
omi_okx_okx_private_sbe_v1_0.fields.ts = ProtoField.new("Ts", "okx.okx.private.sbe.v1.0.ts", ftypes.INT64)
omi_okx_okx_private_sbe_v1_0.fields.u_time = ProtoField.new("U Time", "okx.okx.private.sbe.v1.0.utime", ftypes.INT64)
omi_okx_okx_private_sbe_v1_0.fields.version = ProtoField.new("Version", "okx.okx.private.sbe.v1.0.version", ftypes.UINT16)

-- Okx Okx Private Sbe 1.0 Framing
omi_okx_okx_private_sbe_v1_0.fields.frame = ProtoField.new("Frame", "okx.okx.private.sbe.v1.0.frame", ftypes.STRING)
omi_okx_okx_private_sbe_v1_0.fields.message_header = ProtoField.new("Message Header", "okx.okx.private.sbe.v1.0.messageheader", ftypes.STRING)
omi_okx_okx_private_sbe_v1_0.fields.sbe_message = ProtoField.new("Sbe Message", "okx.okx.private.sbe.v1.0.sbemessage", ftypes.STRING)

-- Okx Okx Private 1.0 Application Messages
omi_okx_okx_private_sbe_v1_0.fields.fills_channel_event_message = ProtoField.new("Fills Channel Event Message", "okx.okx.private.sbe.v1.0.fillschanneleventmessage", ftypes.STRING)
omi_okx_okx_private_sbe_v1_0.fields.orders_channel_event_message = ProtoField.new("Orders Channel Event Message", "okx.okx.private.sbe.v1.0.orderschanneleventmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Okx Okx Private Sbe 1.0 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true

-- Register Okx Okx Private Sbe 1.0 Show Options
omi_okx_okx_private_sbe_v1_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_okx_okx_private_sbe_v1_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_okx_okx_private_sbe_v1_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

-- Handle changed preferences
function omi_okx_okx_private_sbe_v1_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_okx_okx_private_sbe_v1_0.prefs.show_application_messages then
    show.application_messages = omi_okx_okx_private_sbe_v1_0.prefs.show_application_messages
  end
  if show.headers ~= omi_okx_okx_private_sbe_v1_0.prefs.show_headers then
    show.headers = omi_okx_okx_private_sbe_v1_0.prefs.show_headers
  end
  if show.structs ~= omi_okx_okx_private_sbe_v1_0.prefs.show_structs then
    show.structs = omi_okx_okx_private_sbe_v1_0.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Okx Okx Private Sbe 1.0 Fields
-----------------------------------------------------------------------

-- Acc Fill Sz Mantissa
okx_okx_private_sbe_v1_0.acc_fill_sz_mantissa = {}

-- Size: Acc Fill Sz Mantissa
okx_okx_private_sbe_v1_0.acc_fill_sz_mantissa.size = 8

-- Display: Acc Fill Sz Mantissa
okx_okx_private_sbe_v1_0.acc_fill_sz_mantissa.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Acc Fill Sz Mantissa: No Value"
  end

  return "Acc Fill Sz Mantissa: "..value
end

-- Dissect: Acc Fill Sz Mantissa
okx_okx_private_sbe_v1_0.acc_fill_sz_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.acc_fill_sz_mantissa.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_private_sbe_v1_0.acc_fill_sz_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.acc_fill_sz_mantissa, range, value, display)

  return offset + length, value
end

-- Amend Result
okx_okx_private_sbe_v1_0.amend_result = {}

-- Size: Amend Result
okx_okx_private_sbe_v1_0.amend_result.size = 1

-- Display: Amend Result
okx_okx_private_sbe_v1_0.amend_result.display = function(value)
  if value == -1 then
    return "Amend Result: Failed (-1)"
  end
  if value == 0 then
    return "Amend Result: Success (0)"
  end
  if value == 1 then
    return "Amend Result: Auto Canceled (1)"
  end
  if value == 2 then
    return "Amend Result: Auto Amended (2)"
  end
  if value == 128 then
    return "Amend Result: No Value"
  end

  return "Amend Result: Unknown("..value..")"
end

-- Dissect: Amend Result
okx_okx_private_sbe_v1_0.amend_result.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.amend_result.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = okx_okx_private_sbe_v1_0.amend_result.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.amend_result, range, value, display)

  return offset + length, value
end

-- Amend Source
okx_okx_private_sbe_v1_0.amend_source = {}

-- Size: Amend Source
okx_okx_private_sbe_v1_0.amend_source.size = 1

-- Display: Amend Source
okx_okx_private_sbe_v1_0.amend_source.display = function(value)
  if value == 1 then
    return "Amend Source: User Amendment (1)"
  end
  if value == 2 then
    return "Amend Source: User Amendment Reduce Only Adjusted (2)"
  end
  if value == 4 then
    return "Amend Source: System Reduce Only Adjustment (4)"
  end
  if value == 5 then
    return "Amend Source: Option Px Follow Up Amendment (5)"
  end
  if value == 128 then
    return "Amend Source: No Value"
  end

  return "Amend Source: Unknown("..value..")"
end

-- Dissect: Amend Source
okx_okx_private_sbe_v1_0.amend_source.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.amend_source.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = okx_okx_private_sbe_v1_0.amend_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.amend_source, range, value, display)

  return offset + length, value
end

-- Block Length
okx_okx_private_sbe_v1_0.block_length = {}

-- Size: Block Length
okx_okx_private_sbe_v1_0.block_length.size = 2

-- Display: Block Length
okx_okx_private_sbe_v1_0.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
okx_okx_private_sbe_v1_0.block_length.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = okx_okx_private_sbe_v1_0.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.block_length, range, value, display)

  return offset + length, value
end

-- C Time
okx_okx_private_sbe_v1_0.c_time = {}

-- Size: C Time
okx_okx_private_sbe_v1_0.c_time.size = 8

-- Display: C Time
okx_okx_private_sbe_v1_0.c_time.display = function(value)
  return "C Time: "..value
end

-- Dissect: C Time
okx_okx_private_sbe_v1_0.c_time.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.c_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_private_sbe_v1_0.c_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.c_time, range, value, display)

  return offset + length, value
end

-- Cancel Source
okx_okx_private_sbe_v1_0.cancel_source = {}

-- Size: Cancel Source
okx_okx_private_sbe_v1_0.cancel_source.size = 1

-- Display: Cancel Source
okx_okx_private_sbe_v1_0.cancel_source.display = function(value)
  if value == 0 then
    return "Cancel Source: System (0)"
  end
  if value == 1 then
    return "Cancel Source: User (1)"
  end
  if value == 2 then
    return "Cancel Source: Pre Reduce Margin (2)"
  end
  if value == 3 then
    return "Cancel Source: Risk Control (3)"
  end
  if value == 4 then
    return "Cancel Source: Borrow Cap (4)"
  end
  if value == 6 then
    return "Cancel Source: Adl (6)"
  end
  if value == 7 then
    return "Cancel Source: Futures Expiry (7)"
  end
  if value == 9 then
    return "Cancel Source: Funding Fee Balance (9)"
  end
  if value == 10 then
    return "Cancel Source: Option Expiry (10)"
  end
  if value == 13 then
    return "Cancel Source: Fok Incomplete (13)"
  end
  if value == 14 then
    return "Cancel Source: Ioc Remainder (14)"
  end
  if value == 15 then
    return "Cancel Source: Price Limit (15)"
  end
  if value == 17 then
    return "Cancel Source: Position Market Closed (17)"
  end
  if value == 20 then
    return "Cancel Source: Cancel All After (20)"
  end
  if value == 21 then
    return "Cancel Source: Position Fully Closed (21)"
  end
  if value == 22 then
    return "Cancel Source: Better Same Side Current Reduce Only (22)"
  end
  if value == 23 then
    return "Cancel Source: Better Same Side Existing Reduce Only (23)"
  end
  if value == 27 then
    return "Cancel Source: Slippage Protection (27)"
  end
  if value == 31 then
    return "Cancel Source: Post Only Would Take (31)"
  end
  if value == 32 then
    return "Cancel Source: Stp (32)"
  end
  if value == 33 then
    return "Cancel Source: Taker Match Count Limit (33)"
  end
  if value == 36 then
    return "Cancel Source: Linked Stop Loss Triggered (36)"
  end
  if value == 37 then
    return "Cancel Source: Linked Stop Loss Canceled (37)"
  end
  if value == 38 then
    return "Cancel Source: Mmp Canceled By User (38)"
  end
  if value == 39 then
    return "Cancel Source: Mmp Triggered (39)"
  end
  if value == 42 then
    return "Cancel Source: Chase Distance (42)"
  end
  if value == 43 then
    return "Cancel Source: Index Price Validation (43)"
  end
  if value == 44 then
    return "Cancel Source: Auto Conversion Balance (44)"
  end
  if value == 45 then
    return "Cancel Source: Elp Price Validation (45)"
  end
  if value == 46 then
    return "Cancel Source: Delta Reduction (46)"
  end
  if value == 128 then
    return "Cancel Source: No Value"
  end

  return "Cancel Source: Unknown("..value..")"
end

-- Dissect: Cancel Source
okx_okx_private_sbe_v1_0.cancel_source.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.cancel_source.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = okx_okx_private_sbe_v1_0.cancel_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.cancel_source, range, value, display)

  return offset + length, value
end

-- Category
okx_okx_private_sbe_v1_0.category = {}

-- Size: Category
okx_okx_private_sbe_v1_0.category.size = 1

-- Display: Category
okx_okx_private_sbe_v1_0.category.display = function(value)
  if value == 0 then
    return "Category: Normal (0)"
  end
  if value == 1 then
    return "Category: Twap (1)"
  end
  if value == 2 then
    return "Category: Adl (2)"
  end
  if value == 3 then
    return "Category: Full Liquidation (3)"
  end
  if value == 4 then
    return "Category: Partial Liquidation (4)"
  end
  if value == 5 then
    return "Category: Delivery (5)"
  end
  if value == 6 then
    return "Category: Ddh (6)"
  end
  if value == 7 then
    return "Category: Auto Conversion (7)"
  end
  if value == 8 then
    return "Category: Xstock Liquidation (8)"
  end
  if value == 128 then
    return "Category: No Value"
  end

  return "Category: Unknown("..value..")"
end

-- Dissect: Category
okx_okx_private_sbe_v1_0.category.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.category.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = okx_okx_private_sbe_v1_0.category.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.category, range, value, display)

  return offset + length, value
end

-- Cl Ord Id
okx_okx_private_sbe_v1_0.cl_ord_id = {}

-- Size: Cl Ord Id
okx_okx_private_sbe_v1_0.cl_ord_id.size = 8

-- Display: Cl Ord Id
okx_okx_private_sbe_v1_0.cl_ord_id.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Cl Ord Id: No Value"
  end

  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
okx_okx_private_sbe_v1_0.cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_private_sbe_v1_0.cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Count
okx_okx_private_sbe_v1_0.count = {}

-- Size: Count
okx_okx_private_sbe_v1_0.count.size = 2

-- Display: Count
okx_okx_private_sbe_v1_0.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
okx_okx_private_sbe_v1_0.count.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.count.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = okx_okx_private_sbe_v1_0.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.count, range, value, display)

  return offset + length, value
end

-- Exec Type
okx_okx_private_sbe_v1_0.exec_type = {}

-- Size: Exec Type
okx_okx_private_sbe_v1_0.exec_type.size = 1

-- Display: Exec Type
okx_okx_private_sbe_v1_0.exec_type.display = function(value)
  if value == 0 then
    return "Exec Type: Maker (0)"
  end
  if value == 1 then
    return "Exec Type: Taker (1)"
  end

  return "Exec Type: Unknown("..value..")"
end

-- Dissect: Exec Type
okx_okx_private_sbe_v1_0.exec_type.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.exec_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = okx_okx_private_sbe_v1_0.exec_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.exec_type, range, value, display)

  return offset + length, value
end

-- Exec Type Optional
okx_okx_private_sbe_v1_0.exec_type_optional = {}

-- Size: Exec Type Optional
okx_okx_private_sbe_v1_0.exec_type_optional.size = 1

-- Display: Exec Type Optional
okx_okx_private_sbe_v1_0.exec_type_optional.display = function(value)
  if value == 0 then
    return "Exec Type Optional: Maker (0)"
  end
  if value == 1 then
    return "Exec Type Optional: Taker (1)"
  end
  if value == 128 then
    return "Exec Type Optional: No Value"
  end

  return "Exec Type Optional: Unknown("..value..")"
end

-- Dissect: Exec Type Optional
okx_okx_private_sbe_v1_0.exec_type_optional.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.exec_type_optional.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = okx_okx_private_sbe_v1_0.exec_type_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.exec_type_optional, range, value, display)

  return offset + length, value
end

-- Fee Exponent
okx_okx_private_sbe_v1_0.fee_exponent = {}

-- Size: Fee Exponent
okx_okx_private_sbe_v1_0.fee_exponent.size = 1

-- Display: Fee Exponent
okx_okx_private_sbe_v1_0.fee_exponent.display = function(value)
  return "Fee Exponent: "..value
end

-- Dissect: Fee Exponent
okx_okx_private_sbe_v1_0.fee_exponent.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.fee_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = okx_okx_private_sbe_v1_0.fee_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.fee_exponent, range, value, display)

  return offset + length, value
end

-- Fee Mantissa
okx_okx_private_sbe_v1_0.fee_mantissa = {}

-- Size: Fee Mantissa
okx_okx_private_sbe_v1_0.fee_mantissa.size = 8

-- Display: Fee Mantissa
okx_okx_private_sbe_v1_0.fee_mantissa.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Fee Mantissa: No Value"
  end

  return "Fee Mantissa: "..value
end

-- Dissect: Fee Mantissa
okx_okx_private_sbe_v1_0.fee_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.fee_mantissa.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_private_sbe_v1_0.fee_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.fee_mantissa, range, value, display)

  return offset + length, value
end

-- Fill Fee Mantissa
okx_okx_private_sbe_v1_0.fill_fee_mantissa = {}

-- Size: Fill Fee Mantissa
okx_okx_private_sbe_v1_0.fill_fee_mantissa.size = 8

-- Display: Fill Fee Mantissa
okx_okx_private_sbe_v1_0.fill_fee_mantissa.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Fill Fee Mantissa: No Value"
  end

  return "Fill Fee Mantissa: "..value
end

-- Dissect: Fill Fee Mantissa
okx_okx_private_sbe_v1_0.fill_fee_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.fill_fee_mantissa.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_private_sbe_v1_0.fill_fee_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.fill_fee_mantissa, range, value, display)

  return offset + length, value
end

-- Fill Px Exponent
okx_okx_private_sbe_v1_0.fill_px_exponent = {}

-- Size: Fill Px Exponent
okx_okx_private_sbe_v1_0.fill_px_exponent.size = 1

-- Display: Fill Px Exponent
okx_okx_private_sbe_v1_0.fill_px_exponent.display = function(value)
  return "Fill Px Exponent: "..value
end

-- Dissect: Fill Px Exponent
okx_okx_private_sbe_v1_0.fill_px_exponent.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.fill_px_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = okx_okx_private_sbe_v1_0.fill_px_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.fill_px_exponent, range, value, display)

  return offset + length, value
end

-- Fill Px Mantissa
okx_okx_private_sbe_v1_0.fill_px_mantissa = {}

-- Size: Fill Px Mantissa
okx_okx_private_sbe_v1_0.fill_px_mantissa.size = 8

-- Display: Fill Px Mantissa
okx_okx_private_sbe_v1_0.fill_px_mantissa.display = function(value)
  return "Fill Px Mantissa: "..value
end

-- Dissect: Fill Px Mantissa
okx_okx_private_sbe_v1_0.fill_px_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.fill_px_mantissa.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_private_sbe_v1_0.fill_px_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.fill_px_mantissa, range, value, display)

  return offset + length, value
end

-- Fill Px Mantissa Optional
okx_okx_private_sbe_v1_0.fill_px_mantissa_optional = {}

-- Size: Fill Px Mantissa Optional
okx_okx_private_sbe_v1_0.fill_px_mantissa_optional.size = 8

-- Display: Fill Px Mantissa Optional
okx_okx_private_sbe_v1_0.fill_px_mantissa_optional.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Fill Px Mantissa Optional: No Value"
  end

  return "Fill Px Mantissa Optional: "..value
end

-- Dissect: Fill Px Mantissa Optional
okx_okx_private_sbe_v1_0.fill_px_mantissa_optional.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.fill_px_mantissa_optional.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_private_sbe_v1_0.fill_px_mantissa_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.fill_px_mantissa_optional, range, value, display)

  return offset + length, value
end

-- Fill Sz Exponent
okx_okx_private_sbe_v1_0.fill_sz_exponent = {}

-- Size: Fill Sz Exponent
okx_okx_private_sbe_v1_0.fill_sz_exponent.size = 1

-- Display: Fill Sz Exponent
okx_okx_private_sbe_v1_0.fill_sz_exponent.display = function(value)
  return "Fill Sz Exponent: "..value
end

-- Dissect: Fill Sz Exponent
okx_okx_private_sbe_v1_0.fill_sz_exponent.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.fill_sz_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = okx_okx_private_sbe_v1_0.fill_sz_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.fill_sz_exponent, range, value, display)

  return offset + length, value
end

-- Fill Sz Mantissa
okx_okx_private_sbe_v1_0.fill_sz_mantissa = {}

-- Size: Fill Sz Mantissa
okx_okx_private_sbe_v1_0.fill_sz_mantissa.size = 8

-- Display: Fill Sz Mantissa
okx_okx_private_sbe_v1_0.fill_sz_mantissa.display = function(value)
  return "Fill Sz Mantissa: "..value
end

-- Dissect: Fill Sz Mantissa
okx_okx_private_sbe_v1_0.fill_sz_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.fill_sz_mantissa.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_private_sbe_v1_0.fill_sz_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.fill_sz_mantissa, range, value, display)

  return offset + length, value
end

-- Fill Sz Mantissa Optional
okx_okx_private_sbe_v1_0.fill_sz_mantissa_optional = {}

-- Size: Fill Sz Mantissa Optional
okx_okx_private_sbe_v1_0.fill_sz_mantissa_optional.size = 8

-- Display: Fill Sz Mantissa Optional
okx_okx_private_sbe_v1_0.fill_sz_mantissa_optional.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Fill Sz Mantissa Optional: No Value"
  end

  return "Fill Sz Mantissa Optional: "..value
end

-- Dissect: Fill Sz Mantissa Optional
okx_okx_private_sbe_v1_0.fill_sz_mantissa_optional.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.fill_sz_mantissa_optional.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_private_sbe_v1_0.fill_sz_mantissa_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.fill_sz_mantissa_optional, range, value, display)

  return offset + length, value
end

-- Fill Time
okx_okx_private_sbe_v1_0.fill_time = {}

-- Size: Fill Time
okx_okx_private_sbe_v1_0.fill_time.size = 8

-- Display: Fill Time
okx_okx_private_sbe_v1_0.fill_time.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Fill Time: No Value"
  end

  return "Fill Time: "..value
end

-- Dissect: Fill Time
okx_okx_private_sbe_v1_0.fill_time.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.fill_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_private_sbe_v1_0.fill_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.fill_time, range, value, display)

  return offset + length, value
end

-- Inst Id Code
okx_okx_private_sbe_v1_0.inst_id_code = {}

-- Size: Inst Id Code
okx_okx_private_sbe_v1_0.inst_id_code.size = 8

-- Display: Inst Id Code
okx_okx_private_sbe_v1_0.inst_id_code.display = function(value)
  return "Inst Id Code: "..value
end

-- Dissect: Inst Id Code
okx_okx_private_sbe_v1_0.inst_id_code.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.inst_id_code.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_private_sbe_v1_0.inst_id_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.inst_id_code, range, value, display)

  return offset + length, value
end

-- Ord Id
okx_okx_private_sbe_v1_0.ord_id = {}

-- Size: Ord Id
okx_okx_private_sbe_v1_0.ord_id.size = 8

-- Display: Ord Id
okx_okx_private_sbe_v1_0.ord_id.display = function(value)
  return "Ord Id: "..value
end

-- Dissect: Ord Id
okx_okx_private_sbe_v1_0.ord_id.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.ord_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_private_sbe_v1_0.ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.ord_id, range, value, display)

  return offset + length, value
end

-- Px Exponent
okx_okx_private_sbe_v1_0.px_exponent = {}

-- Size: Px Exponent
okx_okx_private_sbe_v1_0.px_exponent.size = 1

-- Display: Px Exponent
okx_okx_private_sbe_v1_0.px_exponent.display = function(value)
  return "Px Exponent: "..value
end

-- Dissect: Px Exponent
okx_okx_private_sbe_v1_0.px_exponent.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.px_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = okx_okx_private_sbe_v1_0.px_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.px_exponent, range, value, display)

  return offset + length, value
end

-- Px Mantissa
okx_okx_private_sbe_v1_0.px_mantissa = {}

-- Size: Px Mantissa
okx_okx_private_sbe_v1_0.px_mantissa.size = 8

-- Display: Px Mantissa
okx_okx_private_sbe_v1_0.px_mantissa.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Px Mantissa: No Value"
  end

  return "Px Mantissa: "..value
end

-- Dissect: Px Mantissa
okx_okx_private_sbe_v1_0.px_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.px_mantissa.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_private_sbe_v1_0.px_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.px_mantissa, range, value, display)

  return offset + length, value
end

-- Req Id
okx_okx_private_sbe_v1_0.req_id = {}

-- Size: Req Id
okx_okx_private_sbe_v1_0.req_id.size = 8

-- Display: Req Id
okx_okx_private_sbe_v1_0.req_id.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Req Id: No Value"
  end

  return "Req Id: "..value
end

-- Dissect: Req Id
okx_okx_private_sbe_v1_0.req_id.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.req_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_private_sbe_v1_0.req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.req_id, range, value, display)

  return offset + length, value
end

-- Risk Bypass Result
okx_okx_private_sbe_v1_0.risk_bypass_result = {}

-- Size: Risk Bypass Result
okx_okx_private_sbe_v1_0.risk_bypass_result.size = 1

-- Display: Risk Bypass Result
okx_okx_private_sbe_v1_0.risk_bypass_result.display = function(value)
  if value == 1 then
    return "Risk Bypass Result: Applied (1)"
  end
  if value == 2 then
    return "Risk Bypass Result: Imr Gate Ratio Below Threshold (2)"
  end
  if value == 3 then
    return "Risk Bypass Result: Adjusted Equity Below Minimum (3)"
  end
  if value == 4 then
    return "Risk Bypass Result: Borrowing Limit Exceeded (4)"
  end
  if value == 5 then
    return "Risk Bypass Result: Per Order Value Limit Exceeded (5)"
  end
  if value == 6 then
    return "Risk Bypass Result: Cumulative Order Value Limit Exceeded (6)"
  end
  if value == 7 then
    return "Risk Bypass Result: Platform Disabled (7)"
  end
  if value == 8 then
    return "Risk Bypass Result: Unsupported Type (8)"
  end
  if value == 9 then
    return "Risk Bypass Result: Auto Borrow Disabled (9)"
  end
  if value == 10 then
    return "Risk Bypass Result: Multiple Margin Currencies In Batch (10)"
  end
  if value == 11 then
    return "Risk Bypass Result: Temporarily Unavailable (11)"
  end
  if value == 128 then
    return "Risk Bypass Result: No Value"
  end

  return "Risk Bypass Result: Unknown("..value..")"
end

-- Dissect: Risk Bypass Result
okx_okx_private_sbe_v1_0.risk_bypass_result.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.risk_bypass_result.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = okx_okx_private_sbe_v1_0.risk_bypass_result.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.risk_bypass_result, range, value, display)

  return offset + length, value
end

-- Schema Id
okx_okx_private_sbe_v1_0.schema_id = {}

-- Size: Schema Id
okx_okx_private_sbe_v1_0.schema_id.size = 2

-- Display: Schema Id
okx_okx_private_sbe_v1_0.schema_id.display = function(value)
  if value == 1 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
okx_okx_private_sbe_v1_0.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = okx_okx_private_sbe_v1_0.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Side
okx_okx_private_sbe_v1_0.side = {}

-- Size: Side
okx_okx_private_sbe_v1_0.side.size = 1

-- Display: Side
okx_okx_private_sbe_v1_0.side.display = function(value)
  if value == 0 then
    return "Side: Sell (0)"
  end
  if value == 1 then
    return "Side: Buy (1)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
okx_okx_private_sbe_v1_0.side.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.side.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = okx_okx_private_sbe_v1_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.side, range, value, display)

  return offset + length, value
end

-- State
okx_okx_private_sbe_v1_0.state = {}

-- Size: State
okx_okx_private_sbe_v1_0.state.size = 1

-- Display: State
okx_okx_private_sbe_v1_0.state.display = function(value)
  if value == 2 then
    return "State: Canceled (2)"
  end
  if value == 3 then
    return "State: Live (3)"
  end
  if value == 4 then
    return "State: Partially Filled (4)"
  end
  if value == 5 then
    return "State: Filled (5)"
  end
  if value == 6 then
    return "State: Mmp Canceled (6)"
  end

  return "State: Unknown("..value..")"
end

-- Dissect: State
okx_okx_private_sbe_v1_0.state.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.state.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = okx_okx_private_sbe_v1_0.state.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.state, range, value, display)

  return offset + length, value
end

-- Sz Exponent
okx_okx_private_sbe_v1_0.sz_exponent = {}

-- Size: Sz Exponent
okx_okx_private_sbe_v1_0.sz_exponent.size = 1

-- Display: Sz Exponent
okx_okx_private_sbe_v1_0.sz_exponent.display = function(value)
  return "Sz Exponent: "..value
end

-- Dissect: Sz Exponent
okx_okx_private_sbe_v1_0.sz_exponent.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.sz_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = okx_okx_private_sbe_v1_0.sz_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.sz_exponent, range, value, display)

  return offset + length, value
end

-- Sz Mantissa
okx_okx_private_sbe_v1_0.sz_mantissa = {}

-- Size: Sz Mantissa
okx_okx_private_sbe_v1_0.sz_mantissa.size = 8

-- Display: Sz Mantissa
okx_okx_private_sbe_v1_0.sz_mantissa.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Sz Mantissa: No Value"
  end

  return "Sz Mantissa: "..value
end

-- Dissect: Sz Mantissa
okx_okx_private_sbe_v1_0.sz_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.sz_mantissa.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_private_sbe_v1_0.sz_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.sz_mantissa, range, value, display)

  return offset + length, value
end

-- Tag
okx_okx_private_sbe_v1_0.tag = {}

-- Size: Tag
okx_okx_private_sbe_v1_0.tag.size = 8

-- Display: Tag
okx_okx_private_sbe_v1_0.tag.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Tag: No Value"
  end

  return "Tag: "..value
end

-- Dissect: Tag
okx_okx_private_sbe_v1_0.tag.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.tag.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_private_sbe_v1_0.tag.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.tag, range, value, display)

  return offset + length, value
end

-- Td Mode
okx_okx_private_sbe_v1_0.td_mode = {}

-- Size: Td Mode
okx_okx_private_sbe_v1_0.td_mode.size = 1

-- Display: Td Mode
okx_okx_private_sbe_v1_0.td_mode.display = function(value)
  if value == 1 then
    return "Td Mode: Cash (1)"
  end
  if value == 2 then
    return "Td Mode: Cross (2)"
  end
  if value == 3 then
    return "Td Mode: Isolated (3)"
  end
  if value == 4 then
    return "Td Mode: Spot Isolated (4)"
  end

  return "Td Mode: Unknown("..value..")"
end

-- Dissect: Td Mode
okx_okx_private_sbe_v1_0.td_mode.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.td_mode.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = okx_okx_private_sbe_v1_0.td_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.td_mode, range, value, display)

  return offset + length, value
end

-- Template Id
okx_okx_private_sbe_v1_0.template_id = {}

-- Size: Template Id
okx_okx_private_sbe_v1_0.template_id.size = 2

-- Display: Template Id
okx_okx_private_sbe_v1_0.template_id.display = function(value)
  if value == 1100 then
    return "Template Id: Orders Channel Event Message (1100)"
  end
  if value == 1101 then
    return "Template Id: Fills Channel Event Message (1101)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
okx_okx_private_sbe_v1_0.template_id.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = okx_okx_private_sbe_v1_0.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.template_id, range, value, display)

  return offset + length, value
end

-- Trade Id
okx_okx_private_sbe_v1_0.trade_id = {}

-- Size: Trade Id
okx_okx_private_sbe_v1_0.trade_id.size = 8

-- Display: Trade Id
okx_okx_private_sbe_v1_0.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
okx_okx_private_sbe_v1_0.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_private_sbe_v1_0.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Id Optional
okx_okx_private_sbe_v1_0.trade_id_optional = {}

-- Size: Trade Id Optional
okx_okx_private_sbe_v1_0.trade_id_optional.size = 8

-- Display: Trade Id Optional
okx_okx_private_sbe_v1_0.trade_id_optional.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Trade Id Optional: No Value"
  end

  return "Trade Id Optional: "..value
end

-- Dissect: Trade Id Optional
okx_okx_private_sbe_v1_0.trade_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.trade_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_private_sbe_v1_0.trade_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.trade_id_optional, range, value, display)

  return offset + length, value
end

-- Ts
okx_okx_private_sbe_v1_0.ts = {}

-- Size: Ts
okx_okx_private_sbe_v1_0.ts.size = 8

-- Display: Ts
okx_okx_private_sbe_v1_0.ts.display = function(value)
  return "Ts: "..value
end

-- Dissect: Ts
okx_okx_private_sbe_v1_0.ts.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.ts.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_private_sbe_v1_0.ts.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.ts, range, value, display)

  return offset + length, value
end

-- U Time
okx_okx_private_sbe_v1_0.u_time = {}

-- Size: U Time
okx_okx_private_sbe_v1_0.u_time.size = 8

-- Display: U Time
okx_okx_private_sbe_v1_0.u_time.display = function(value)
  return "U Time: "..value
end

-- Dissect: U Time
okx_okx_private_sbe_v1_0.u_time.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.u_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = okx_okx_private_sbe_v1_0.u_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.u_time, range, value, display)

  return offset + length, value
end

-- Version
okx_okx_private_sbe_v1_0.version = {}

-- Size: Version
okx_okx_private_sbe_v1_0.version.size = 2

-- Display: Version
okx_okx_private_sbe_v1_0.version.display = function(value)
  if value == 0 then
    return "Version: Version 1.0.0"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
okx_okx_private_sbe_v1_0.version.dissect = function(buffer, offset, packet, parent)
  local length = okx_okx_private_sbe_v1_0.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = okx_okx_private_sbe_v1_0.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_okx_okx_private_sbe_v1_0.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Okx Okx Private Sbe 1.0
-----------------------------------------------------------------------

-- Fills Channel Event Message
okx_okx_private_sbe_v1_0.fills_channel_event_message = {}

-- Size: Fills Channel Event Message
okx_okx_private_sbe_v1_0.fills_channel_event_message.size =
  okx_okx_private_sbe_v1_0.inst_id_code.size + 
  okx_okx_private_sbe_v1_0.ts.size + 
  okx_okx_private_sbe_v1_0.trade_id.size + 
  okx_okx_private_sbe_v1_0.ord_id.size + 
  okx_okx_private_sbe_v1_0.cl_ord_id.size + 
  okx_okx_private_sbe_v1_0.fill_px_mantissa.size + 
  okx_okx_private_sbe_v1_0.fill_sz_mantissa.size + 
  okx_okx_private_sbe_v1_0.count.size + 
  okx_okx_private_sbe_v1_0.side.size + 
  okx_okx_private_sbe_v1_0.exec_type.size + 
  okx_okx_private_sbe_v1_0.fill_px_exponent.size + 
  okx_okx_private_sbe_v1_0.fill_sz_exponent.size

-- Display: Fills Channel Event Message
okx_okx_private_sbe_v1_0.fills_channel_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fills Channel Event Message
okx_okx_private_sbe_v1_0.fills_channel_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inst Id Code: int64
  index, inst_id_code = okx_okx_private_sbe_v1_0.inst_id_code.dissect(buffer, index, packet, parent)

  -- Ts: int64
  index, ts = okx_okx_private_sbe_v1_0.ts.dissect(buffer, index, packet, parent)

  -- Trade Id: int64
  index, trade_id = okx_okx_private_sbe_v1_0.trade_id.dissect(buffer, index, packet, parent)

  -- Ord Id: int64
  index, ord_id = okx_okx_private_sbe_v1_0.ord_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: int64
  index, cl_ord_id = okx_okx_private_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Fill Px Mantissa: int64
  index, fill_px_mantissa = okx_okx_private_sbe_v1_0.fill_px_mantissa.dissect(buffer, index, packet, parent)

  -- Fill Sz Mantissa: int64
  index, fill_sz_mantissa = okx_okx_private_sbe_v1_0.fill_sz_mantissa.dissect(buffer, index, packet, parent)

  -- Count: int16
  index, count = okx_okx_private_sbe_v1_0.count.dissect(buffer, index, packet, parent)

  -- Side: sideEnum
  index, side = okx_okx_private_sbe_v1_0.side.dissect(buffer, index, packet, parent)

  -- Exec Type: execTypeEnum
  index, exec_type = okx_okx_private_sbe_v1_0.exec_type.dissect(buffer, index, packet, parent)

  -- Fill Px Exponent: int8
  index, fill_px_exponent = okx_okx_private_sbe_v1_0.fill_px_exponent.dissect(buffer, index, packet, parent)

  -- Fill Sz Exponent: int8
  index, fill_sz_exponent = okx_okx_private_sbe_v1_0.fill_sz_exponent.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fills Channel Event Message
okx_okx_private_sbe_v1_0.fills_channel_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_private_sbe_v1_0.fields.fills_channel_event_message, buffer(offset, 0))
    local index = okx_okx_private_sbe_v1_0.fills_channel_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_private_sbe_v1_0.fills_channel_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_private_sbe_v1_0.fills_channel_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Orders Channel Event Message
okx_okx_private_sbe_v1_0.orders_channel_event_message = {}

-- Size: Orders Channel Event Message
okx_okx_private_sbe_v1_0.orders_channel_event_message.size =
  okx_okx_private_sbe_v1_0.inst_id_code.size + 
  okx_okx_private_sbe_v1_0.ord_id.size + 
  okx_okx_private_sbe_v1_0.cl_ord_id.size + 
  okx_okx_private_sbe_v1_0.tag.size + 
  okx_okx_private_sbe_v1_0.px_mantissa.size + 
  okx_okx_private_sbe_v1_0.px_exponent.size + 
  okx_okx_private_sbe_v1_0.sz_mantissa.size + 
  okx_okx_private_sbe_v1_0.sz_exponent.size + 
  okx_okx_private_sbe_v1_0.side.size + 
  okx_okx_private_sbe_v1_0.td_mode.size + 
  okx_okx_private_sbe_v1_0.fill_px_mantissa_optional.size + 
  okx_okx_private_sbe_v1_0.fill_sz_mantissa_optional.size + 
  okx_okx_private_sbe_v1_0.fill_time.size + 
  okx_okx_private_sbe_v1_0.trade_id_optional.size + 
  okx_okx_private_sbe_v1_0.exec_type_optional.size + 
  okx_okx_private_sbe_v1_0.fill_fee_mantissa.size + 
  okx_okx_private_sbe_v1_0.acc_fill_sz_mantissa.size + 
  okx_okx_private_sbe_v1_0.state.size + 
  okx_okx_private_sbe_v1_0.fee_mantissa.size + 
  okx_okx_private_sbe_v1_0.fee_exponent.size + 
  okx_okx_private_sbe_v1_0.cancel_source.size + 
  okx_okx_private_sbe_v1_0.amend_source.size + 
  okx_okx_private_sbe_v1_0.category.size + 
  okx_okx_private_sbe_v1_0.u_time.size + 
  okx_okx_private_sbe_v1_0.c_time.size + 
  okx_okx_private_sbe_v1_0.req_id.size + 
  okx_okx_private_sbe_v1_0.amend_result.size + 
  okx_okx_private_sbe_v1_0.risk_bypass_result.size

-- Display: Orders Channel Event Message
okx_okx_private_sbe_v1_0.orders_channel_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orders Channel Event Message
okx_okx_private_sbe_v1_0.orders_channel_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inst Id Code: int64
  index, inst_id_code = okx_okx_private_sbe_v1_0.inst_id_code.dissect(buffer, index, packet, parent)

  -- Ord Id: int64
  index, ord_id = okx_okx_private_sbe_v1_0.ord_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: int64
  index, cl_ord_id = okx_okx_private_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Tag: int64
  index, tag = okx_okx_private_sbe_v1_0.tag.dissect(buffer, index, packet, parent)

  -- Px Mantissa: int64
  index, px_mantissa = okx_okx_private_sbe_v1_0.px_mantissa.dissect(buffer, index, packet, parent)

  -- Px Exponent: int8
  index, px_exponent = okx_okx_private_sbe_v1_0.px_exponent.dissect(buffer, index, packet, parent)

  -- Sz Mantissa: int64
  index, sz_mantissa = okx_okx_private_sbe_v1_0.sz_mantissa.dissect(buffer, index, packet, parent)

  -- Sz Exponent: int8
  index, sz_exponent = okx_okx_private_sbe_v1_0.sz_exponent.dissect(buffer, index, packet, parent)

  -- Side: sideEnum
  index, side = okx_okx_private_sbe_v1_0.side.dissect(buffer, index, packet, parent)

  -- Td Mode: tdModeEnum
  index, td_mode = okx_okx_private_sbe_v1_0.td_mode.dissect(buffer, index, packet, parent)

  -- Fill Px Mantissa Optional: int64
  index, fill_px_mantissa_optional = okx_okx_private_sbe_v1_0.fill_px_mantissa_optional.dissect(buffer, index, packet, parent)

  -- Fill Sz Mantissa Optional: int64
  index, fill_sz_mantissa_optional = okx_okx_private_sbe_v1_0.fill_sz_mantissa_optional.dissect(buffer, index, packet, parent)

  -- Fill Time: int64
  index, fill_time = okx_okx_private_sbe_v1_0.fill_time.dissect(buffer, index, packet, parent)

  -- Trade Id Optional: int64
  index, trade_id_optional = okx_okx_private_sbe_v1_0.trade_id_optional.dissect(buffer, index, packet, parent)

  -- Exec Type Optional: execTypeEnum
  index, exec_type_optional = okx_okx_private_sbe_v1_0.exec_type_optional.dissect(buffer, index, packet, parent)

  -- Fill Fee Mantissa: int64
  index, fill_fee_mantissa = okx_okx_private_sbe_v1_0.fill_fee_mantissa.dissect(buffer, index, packet, parent)

  -- Acc Fill Sz Mantissa: int64
  index, acc_fill_sz_mantissa = okx_okx_private_sbe_v1_0.acc_fill_sz_mantissa.dissect(buffer, index, packet, parent)

  -- State: stateEnum
  index, state = okx_okx_private_sbe_v1_0.state.dissect(buffer, index, packet, parent)

  -- Fee Mantissa: int64
  index, fee_mantissa = okx_okx_private_sbe_v1_0.fee_mantissa.dissect(buffer, index, packet, parent)

  -- Fee Exponent: int8
  index, fee_exponent = okx_okx_private_sbe_v1_0.fee_exponent.dissect(buffer, index, packet, parent)

  -- Cancel Source: cancelSourceEnum
  index, cancel_source = okx_okx_private_sbe_v1_0.cancel_source.dissect(buffer, index, packet, parent)

  -- Amend Source: amendSourceEnum
  index, amend_source = okx_okx_private_sbe_v1_0.amend_source.dissect(buffer, index, packet, parent)

  -- Category: categoryEnum
  index, category = okx_okx_private_sbe_v1_0.category.dissect(buffer, index, packet, parent)

  -- U Time: int64
  index, u_time = okx_okx_private_sbe_v1_0.u_time.dissect(buffer, index, packet, parent)

  -- C Time: int64
  index, c_time = okx_okx_private_sbe_v1_0.c_time.dissect(buffer, index, packet, parent)

  -- Req Id: int64
  index, req_id = okx_okx_private_sbe_v1_0.req_id.dissect(buffer, index, packet, parent)

  -- Amend Result: amendResultEnum
  index, amend_result = okx_okx_private_sbe_v1_0.amend_result.dissect(buffer, index, packet, parent)

  -- Risk Bypass Result: riskBypassResultEnum
  index, risk_bypass_result = okx_okx_private_sbe_v1_0.risk_bypass_result.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Orders Channel Event Message
okx_okx_private_sbe_v1_0.orders_channel_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_private_sbe_v1_0.fields.orders_channel_event_message, buffer(offset, 0))
    local index = okx_okx_private_sbe_v1_0.orders_channel_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_private_sbe_v1_0.orders_channel_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_private_sbe_v1_0.orders_channel_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
okx_okx_private_sbe_v1_0.payload = {}

-- Dissect: Payload
okx_okx_private_sbe_v1_0.payload.dissect = function(buffer, offset, packet, parent, template_id)
  -- Dissect Orders Channel Event Message
  if template_id == 1100 then
    return okx_okx_private_sbe_v1_0.orders_channel_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fills Channel Event Message
  if template_id == 1101 then
    return okx_okx_private_sbe_v1_0.fills_channel_event_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
okx_okx_private_sbe_v1_0.message_header = {}

-- Size: Message Header
okx_okx_private_sbe_v1_0.message_header.size =
  okx_okx_private_sbe_v1_0.block_length.size + 
  okx_okx_private_sbe_v1_0.template_id.size + 
  okx_okx_private_sbe_v1_0.schema_id.size + 
  okx_okx_private_sbe_v1_0.version.size

-- Display: Message Header
okx_okx_private_sbe_v1_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
okx_okx_private_sbe_v1_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = okx_okx_private_sbe_v1_0.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: uint16
  index, template_id = okx_okx_private_sbe_v1_0.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: uint16
  index, schema_id = okx_okx_private_sbe_v1_0.schema_id.dissect(buffer, index, packet, parent)

  -- Version: uint16
  index, version = okx_okx_private_sbe_v1_0.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
okx_okx_private_sbe_v1_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_private_sbe_v1_0.fields.message_header, buffer(offset, 0))
    local index = okx_okx_private_sbe_v1_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_private_sbe_v1_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_private_sbe_v1_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
okx_okx_private_sbe_v1_0.sbe_message = {}

-- Calculate size of: Sbe Message
okx_okx_private_sbe_v1_0.sbe_message.size = function(buffer, offset)
  local index = 0

  index = index + okx_okx_private_sbe_v1_0.message_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 2):le_uint()
  index = index + okx_okx_private_sbe_v1_0.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Sbe Message
okx_okx_private_sbe_v1_0.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
okx_okx_private_sbe_v1_0.sbe_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 4 fields
  index, message_header = okx_okx_private_sbe_v1_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 2 branches
  index = okx_okx_private_sbe_v1_0.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Sbe Message
okx_okx_private_sbe_v1_0.sbe_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_okx_okx_private_sbe_v1_0.fields.sbe_message, buffer(offset, 0))
    local index = okx_okx_private_sbe_v1_0.sbe_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = okx_okx_private_sbe_v1_0.sbe_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return okx_okx_private_sbe_v1_0.sbe_message.fields(buffer, offset, packet, parent)
  end
end

-- Frame
okx_okx_private_sbe_v1_0.frame = {}

-- Verify required size of WebSocket packet
okx_okx_private_sbe_v1_0.frame.requiredsize = function(buffer)
  return buffer:len() >= okx_okx_private_sbe_v1_0.message_header.size
end

-- Dissect Frame
okx_okx_private_sbe_v1_0.frame.dissect = function(buffer, packet, parent)
  local index = 0

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = okx_okx_private_sbe_v1_0.sbe_message.dissect(buffer, index, packet, parent)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_okx_okx_private_sbe_v1_0.init()
end

-- Dissector for Okx Okx Private Sbe 1.0
function omi_okx_okx_private_sbe_v1_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_okx_okx_private_sbe_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_okx_okx_private_sbe_v1_0, buffer(), omi_okx_okx_private_sbe_v1_0.description, "("..buffer:len().." Bytes)")
  return okx_okx_private_sbe_v1_0.frame.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Schema Id Field
okx_okx_private_sbe_v1_0.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(4, 2):le_uint()

  if value == 1 then
    return true
  end

  return false
end

-- Verify Version Field
okx_okx_private_sbe_v1_0.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(6, 2):le_uint()

  if value == 0 then
    return true
  end

  return false
end

-- Dissector Heuristic for Okx Okx Private Sbe 1.0 (WebSocket)
local function omi_okx_okx_private_sbe_v1_0_ws_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not okx_okx_private_sbe_v1_0.frame.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not okx_okx_private_sbe_v1_0.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not okx_okx_private_sbe_v1_0.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_okx_okx_private_sbe_v1_0
  omi_okx_okx_private_sbe_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Okx Okx Private Sbe 1.0
omi_okx_okx_private_sbe_v1_0:register_heuristic("ws", omi_okx_okx_private_sbe_v1_0_ws_heuristic)

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
