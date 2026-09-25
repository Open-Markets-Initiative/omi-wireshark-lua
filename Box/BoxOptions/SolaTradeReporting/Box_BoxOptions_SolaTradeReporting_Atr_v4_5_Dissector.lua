-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Box BoxOptions SolaTradeReporting Atr 4.5 Protocol
local omi_box_boxoptions_solatradereporting_atr_v4_5 = Proto("Omi.Box.BoxOptions.SolaTradeReporting.Atr.v4.5", "Box BoxOptions SolaTradeReporting Atr 4.5")

-- Protocol table
local box_boxoptions_solatradereporting_atr_v4_5 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Box BoxOptions SolaTradeReporting Atr 4.5 Fields
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.account_type = ProtoField.new("Account Type", "box.boxoptions.solatradereporting.atr.v4.5.accounttype", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.acknowledgement_sequence_number = ProtoField.new("Acknowledgement Sequence Number", "box.boxoptions.solatradereporting.atr.v4.5.acknowledgementsequencenumber", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.additional_client_memo = ProtoField.new("Additional Client Memo", "box.boxoptions.solatradereporting.atr.v4.5.additionalclientmemo", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.additional_firm = ProtoField.new("Additional Firm", "box.boxoptions.solatradereporting.atr.v4.5.additionalfirm", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.client_account_number = ProtoField.new("Client Account Number", "box.boxoptions.solatradereporting.atr.v4.5.clientaccountnumber", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.client_memo = ProtoField.new("Client Memo", "box.boxoptions.solatradereporting.atr.v4.5.clientmemo", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.client_order_id = ProtoField.new("Client Order Id", "box.boxoptions.solatradereporting.atr.v4.5.clientorderid", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.cmta_broker = ProtoField.new("Cmta Broker", "box.boxoptions.solatradereporting.atr.v4.5.cmtabroker", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.control_byte = ProtoField.new("Control Byte", "box.boxoptions.solatradereporting.atr.v4.5.controlbyte", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.destination = ProtoField.new("Destination", "box.boxoptions.solatradereporting.atr.v4.5.destination", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.end_of_text = ProtoField.new("End Of Text", "box.boxoptions.solatradereporting.atr.v4.5.endoftext", ftypes.INT8)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.error_code = ProtoField.new("Error Code", "box.boxoptions.solatradereporting.atr.v4.5.errorcode", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.error_text = ProtoField.new("Error Text", "box.boxoptions.solatradereporting.atr.v4.5.errortext", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.executing_broker = ProtoField.new("Executing Broker", "box.boxoptions.solatradereporting.atr.v4.5.executingbroker", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.expiration_date = ProtoField.new("Expiration Date", "box.boxoptions.solatradereporting.atr.v4.5.expirationdate", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.give_up_destination = ProtoField.new("Give Up Destination", "box.boxoptions.solatradereporting.atr.v4.5.giveupdestination", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.give_up_firm = ProtoField.new("Give Up Firm", "box.boxoptions.solatradereporting.atr.v4.5.giveupfirm", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.give_up_source = ProtoField.new("Give Up Source", "box.boxoptions.solatradereporting.atr.v4.5.giveupsource", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.initial_sequence_number = ProtoField.new("Initial Sequence Number", "box.boxoptions.solatradereporting.atr.v4.5.initialsequencenumber", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.last_user_sequence_number = ProtoField.new("Last User Sequence Number", "box.boxoptions.solatradereporting.atr.v4.5.lastusersequencenumber", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.liquidity_status = ProtoField.new("Liquidity Status", "box.boxoptions.solatradereporting.atr.v4.5.liquiditystatus", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.member_number = ProtoField.new("Member Number", "box.boxoptions.solatradereporting.atr.v4.5.membernumber", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.message_flag = ProtoField.new("Message Flag", "box.boxoptions.solatradereporting.atr.v4.5.messageflag", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.message_type = ProtoField.new("Message Type", "box.boxoptions.solatradereporting.atr.v4.5.messagetype", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.open_close = ProtoField.new("Open Close", "box.boxoptions.solatradereporting.atr.v4.5.openclose", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.opposite_account_type = ProtoField.new("Opposite Account Type", "box.boxoptions.solatradereporting.atr.v4.5.oppositeaccounttype", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.opposite_executing_broker = ProtoField.new("Opposite Executing Broker", "box.boxoptions.solatradereporting.atr.v4.5.oppositeexecutingbroker", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.option_type = ProtoField.new("Option Type", "box.boxoptions.solatradereporting.atr.v4.5.optiontype", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.parent_transaction_id = ProtoField.new("Parent Transaction Id", "box.boxoptions.solatradereporting.atr.v4.5.parenttransactionid", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.participant_session_name = ProtoField.new("Participant Session Name", "box.boxoptions.solatradereporting.atr.v4.5.participantsessionname", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.password_md_5_encryption = ProtoField.new("Password Md 5 Encryption", "box.boxoptions.solatradereporting.atr.v4.5.passwordmd5encryption", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.price_x_10000 = ProtoField.new("Price X 10000", "box.boxoptions.solatradereporting.atr.v4.5.pricex10000", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.protocol_version = ProtoField.new("Protocol Version", "box.boxoptions.solatradereporting.atr.v4.5.protocolversion", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.reference_message_type = ProtoField.new("Reference Message Type", "box.boxoptions.solatradereporting.atr.v4.5.referencemessagetype", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.reference_trade_number = ProtoField.new("Reference Trade Number", "box.boxoptions.solatradereporting.atr.v4.5.referencetradenumber", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.reference_transaction_id = ProtoField.new("Reference Transaction Id", "box.boxoptions.solatradereporting.atr.v4.5.referencetransactionid", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.sequence_number = ProtoField.new("Sequence Number", "box.boxoptions.solatradereporting.atr.v4.5.sequencenumber", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.source = ProtoField.new("Source", "box.boxoptions.solatradereporting.atr.v4.5.source", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.strike_price = ProtoField.new("Strike Price", "box.boxoptions.solatradereporting.atr.v4.5.strikeprice", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.strike_price_fraction_indicator = ProtoField.new("Strike Price Fraction Indicator", "box.boxoptions.solatradereporting.atr.v4.5.strikepricefractionindicator", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.subtrader_id = ProtoField.new("Subtrader Id", "box.boxoptions.solatradereporting.atr.v4.5.subtraderid", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.symbol = ProtoField.new("Symbol", "box.boxoptions.solatradereporting.atr.v4.5.symbol", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.time = ProtoField.new("Time", "box.boxoptions.solatradereporting.atr.v4.5.time", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.timestamp = ProtoField.new("Timestamp", "box.boxoptions.solatradereporting.atr.v4.5.timestamp", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.trade_number = ProtoField.new("Trade Number", "box.boxoptions.solatradereporting.atr.v4.5.tradenumber", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.trade_type = ProtoField.new("Trade Type", "box.boxoptions.solatradereporting.atr.v4.5.tradetype", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.transaction_type = ProtoField.new("Transaction Type", "box.boxoptions.solatradereporting.atr.v4.5.transactiontype", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.unique_transaction_id = ProtoField.new("Unique Transaction Id", "box.boxoptions.solatradereporting.atr.v4.5.uniquetransactionid", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.username = ProtoField.new("Username", "box.boxoptions.solatradereporting.atr.v4.5.username", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.volume = ProtoField.new("Volume", "box.boxoptions.solatradereporting.atr.v4.5.volume", ftypes.STRING)

-- Box BoxOptions SolaTradeReporting Atr 4.5 Framing
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.client_packet = ProtoField.new("Client Packet", "box.boxoptions.solatradereporting.atr.v4.5.clientpacket", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.message_header = ProtoField.new("Message Header", "box.boxoptions.solatradereporting.atr.v4.5.messageheader", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.server_packet = ProtoField.new("Server Packet", "box.boxoptions.solatradereporting.atr.v4.5.serverpacket", ftypes.STRING)

-- Box BoxOptions SolaTradeReporting 4.5 Application Messages
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.acknowledgement_message = ProtoField.new("Acknowledgement Message", "box.boxoptions.solatradereporting.atr.v4.5.acknowledgementmessage", ftypes.BYTES)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.allocation = ProtoField.new("Allocation", "box.boxoptions.solatradereporting.atr.v4.5.allocation", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.allocation_cancel = ProtoField.new("Allocation Cancel", "box.boxoptions.solatradereporting.atr.v4.5.allocationcancel", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.circuit_assurance = ProtoField.new("Circuit Assurance", "box.boxoptions.solatradereporting.atr.v4.5.circuitassurance", ftypes.BYTES)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.circuit_response = ProtoField.new("Circuit Response", "box.boxoptions.solatradereporting.atr.v4.5.circuitresponse", ftypes.BYTES)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.client_signon = ProtoField.new("Client Signon", "box.boxoptions.solatradereporting.atr.v4.5.clientsignon", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.client_signon_acknowledgment = ProtoField.new("Client Signon Acknowledgment", "box.boxoptions.solatradereporting.atr.v4.5.clientsignonacknowledgment", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.delete_allocation = ProtoField.new("Delete Allocation", "box.boxoptions.solatradereporting.atr.v4.5.deleteallocation", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.delete_give_up = ProtoField.new("Delete Give Up", "box.boxoptions.solatradereporting.atr.v4.5.deletegiveup", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.end_of_trading = ProtoField.new("End Of Trading", "box.boxoptions.solatradereporting.atr.v4.5.endoftrading", ftypes.BYTES)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.error_message = ProtoField.new("Error Message", "box.boxoptions.solatradereporting.atr.v4.5.errormessage", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.give_up = ProtoField.new("Give Up", "box.boxoptions.solatradereporting.atr.v4.5.giveup", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.give_up_cancel = ProtoField.new("Give Up Cancel", "box.boxoptions.solatradereporting.atr.v4.5.giveupcancel", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.modify_allocation = ProtoField.new("Modify Allocation", "box.boxoptions.solatradereporting.atr.v4.5.modifyallocation", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.modify_give_up = ProtoField.new("Modify Give Up", "box.boxoptions.solatradereporting.atr.v4.5.modifygiveup", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.new_allocation = ProtoField.new("New Allocation", "box.boxoptions.solatradereporting.atr.v4.5.newallocation", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.new_give_up = ProtoField.new("New Give Up", "box.boxoptions.solatradereporting.atr.v4.5.newgiveup", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.restart_accepted = ProtoField.new("Restart Accepted", "box.boxoptions.solatradereporting.atr.v4.5.restartaccepted", ftypes.BYTES)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.restart_request = ProtoField.new("Restart Request", "box.boxoptions.solatradereporting.atr.v4.5.restartrequest", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.start_of_day = ProtoField.new("Start Of Day", "box.boxoptions.solatradereporting.atr.v4.5.startofday", ftypes.BYTES)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.start_of_day_acknowledgement = ProtoField.new("Start Of Day Acknowledgement", "box.boxoptions.solatradereporting.atr.v4.5.startofdayacknowledgement", ftypes.BYTES)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.trade = ProtoField.new("Trade", "box.boxoptions.solatradereporting.atr.v4.5.trade", ftypes.STRING)
omi_box_boxoptions_solatradereporting_atr_v4_5.fields.trade_cancel = ProtoField.new("Trade Cancel", "box.boxoptions.solatradereporting.atr.v4.5.tradecancel", ftypes.STRING)

-----------------------------------------------------------------------
-- Box BoxOptions SolaTradeReporting Atr 4.5 Formatting
-----------------------------------------------------------------------

-- assumed connection role
local role_enum = {
  { 1, "Resolve from the conversation", 0 },
  { 2, "Initiator", 1 },
  { 3, "Acceptor", 2 }
}


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Box BoxOptions SolaTradeReporting Atr 4.5 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true

-- Register Box BoxOptions SolaTradeReporting Atr 4.5 Show Options
omi_box_boxoptions_solatradereporting_atr_v4_5.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_box_boxoptions_solatradereporting_atr_v4_5.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_box_boxoptions_solatradereporting_atr_v4_5.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_box_boxoptions_solatradereporting_atr_v4_5.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_box_boxoptions_solatradereporting_atr_v4_5.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_box_boxoptions_solatradereporting_atr_v4_5.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

-- Handle changed preferences
function omi_box_boxoptions_solatradereporting_atr_v4_5.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_box_boxoptions_solatradereporting_atr_v4_5.prefs.show_application_messages then
    show.application_messages = omi_box_boxoptions_solatradereporting_atr_v4_5.prefs.show_application_messages
  end
  if show.headers ~= omi_box_boxoptions_solatradereporting_atr_v4_5.prefs.show_headers then
    show.headers = omi_box_boxoptions_solatradereporting_atr_v4_5.prefs.show_headers
  end
  if show.structs ~= omi_box_boxoptions_solatradereporting_atr_v4_5.prefs.show_structs then
    show.structs = omi_box_boxoptions_solatradereporting_atr_v4_5.prefs.show_structs
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
-- Box BoxOptions SolaTradeReporting Atr 4.5 Fields
-----------------------------------------------------------------------

-- Account Type
box_boxoptions_solatradereporting_atr_v4_5.account_type = {}

-- Size: Account Type
box_boxoptions_solatradereporting_atr_v4_5.account_type.size = 1

-- Display: Account Type
box_boxoptions_solatradereporting_atr_v4_5.account_type.display = function(value)
  if value == "6" then
    return "Account Type: Public Customer (6)"
  end
  if value == "7" then
    return "Account Type: Broker Dealer (7)"
  end
  if value == "8" then
    return "Account Type: Market Maker (8)"
  end
  if value == "T" then
    return "Account Type: Professional Customer (T)"
  end
  if value == "V" then
    return "Account Type: Floor Broker Customer (V)"
  end
  if value == "W" then
    return "Account Type: Broker Dealer Cleared As Customer (W)"
  end
  if value == "X" then
    return "Account Type: Away Market Maker (X)"
  end
  if value == "Y" then
    return "Account Type: Floor Broker Dealer (Y)"
  end
  if value == "Z" then
    return "Account Type: Floor Market Maker Flex Symbology Symbol Is Prefixed By One Of The Following (Z)"
  end

  return "Account Type: Unknown("..value..")"
end

-- Dissect: Account Type
box_boxoptions_solatradereporting_atr_v4_5.account_type.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.account_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solatradereporting_atr_v4_5.account_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.account_type, range, value, display)

  return offset + length, value
end

-- Acknowledgement Sequence Number
box_boxoptions_solatradereporting_atr_v4_5.acknowledgement_sequence_number = {}

-- Size: Acknowledgement Sequence Number
box_boxoptions_solatradereporting_atr_v4_5.acknowledgement_sequence_number.size = 8

-- Display: Acknowledgement Sequence Number
box_boxoptions_solatradereporting_atr_v4_5.acknowledgement_sequence_number.display = function(value)
  return "Acknowledgement Sequence Number: "..value
end

-- Dissect: Acknowledgement Sequence Number
box_boxoptions_solatradereporting_atr_v4_5.acknowledgement_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.acknowledgement_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solatradereporting_atr_v4_5.acknowledgement_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.acknowledgement_sequence_number, range, value, display)

  return offset + length, value
end

-- Additional Client Memo
box_boxoptions_solatradereporting_atr_v4_5.additional_client_memo = {}

-- Size: Additional Client Memo
box_boxoptions_solatradereporting_atr_v4_5.additional_client_memo.size = 16

-- Display: Additional Client Memo
box_boxoptions_solatradereporting_atr_v4_5.additional_client_memo.display = function(value)
  return "Additional Client Memo: "..value
end

-- Dissect: Additional Client Memo
box_boxoptions_solatradereporting_atr_v4_5.additional_client_memo.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.additional_client_memo.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_boxoptions_solatradereporting_atr_v4_5.additional_client_memo.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.additional_client_memo, range, value, display)

  return offset + length, value
end

-- Additional Firm
box_boxoptions_solatradereporting_atr_v4_5.additional_firm = {}

-- Size: Additional Firm
box_boxoptions_solatradereporting_atr_v4_5.additional_firm.size = 4

-- Display: Additional Firm
box_boxoptions_solatradereporting_atr_v4_5.additional_firm.display = function(value)
  return "Additional Firm: "..value
end

-- Dissect: Additional Firm
box_boxoptions_solatradereporting_atr_v4_5.additional_firm.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.additional_firm.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solatradereporting_atr_v4_5.additional_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.additional_firm, range, value, display)

  return offset + length, value
end

-- Client Account Number
box_boxoptions_solatradereporting_atr_v4_5.client_account_number = {}

-- Size: Client Account Number
box_boxoptions_solatradereporting_atr_v4_5.client_account_number.size = 12

-- Display: Client Account Number
box_boxoptions_solatradereporting_atr_v4_5.client_account_number.display = function(value)
  return "Client Account Number: "..value
end

-- Dissect: Client Account Number
box_boxoptions_solatradereporting_atr_v4_5.client_account_number.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.client_account_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_boxoptions_solatradereporting_atr_v4_5.client_account_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.client_account_number, range, value, display)

  return offset + length, value
end

-- Client Memo
box_boxoptions_solatradereporting_atr_v4_5.client_memo = {}

-- Size: Client Memo
box_boxoptions_solatradereporting_atr_v4_5.client_memo.size = 16

-- Display: Client Memo
box_boxoptions_solatradereporting_atr_v4_5.client_memo.display = function(value)
  return "Client Memo: "..value
end

-- Dissect: Client Memo
box_boxoptions_solatradereporting_atr_v4_5.client_memo.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.client_memo.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_boxoptions_solatradereporting_atr_v4_5.client_memo.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.client_memo, range, value, display)

  return offset + length, value
end

-- Client Order Id
box_boxoptions_solatradereporting_atr_v4_5.client_order_id = {}

-- Size: Client Order Id
box_boxoptions_solatradereporting_atr_v4_5.client_order_id.size = 20

-- Display: Client Order Id
box_boxoptions_solatradereporting_atr_v4_5.client_order_id.display = function(value)
  return "Client Order Id: "..value
end

-- Dissect: Client Order Id
box_boxoptions_solatradereporting_atr_v4_5.client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.client_order_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_boxoptions_solatradereporting_atr_v4_5.client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.client_order_id, range, value, display)

  return offset + length, value
end

-- Cmta Broker
box_boxoptions_solatradereporting_atr_v4_5.cmta_broker = {}

-- Size: Cmta Broker
box_boxoptions_solatradereporting_atr_v4_5.cmta_broker.size = 4

-- Display: Cmta Broker
box_boxoptions_solatradereporting_atr_v4_5.cmta_broker.display = function(value)
  return "Cmta Broker: "..value
end

-- Dissect: Cmta Broker
box_boxoptions_solatradereporting_atr_v4_5.cmta_broker.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.cmta_broker.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solatradereporting_atr_v4_5.cmta_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.cmta_broker, range, value, display)

  return offset + length, value
end

-- Control Byte
box_boxoptions_solatradereporting_atr_v4_5.control_byte = {}

-- Size: Control Byte
box_boxoptions_solatradereporting_atr_v4_5.control_byte.size = 1

-- Display: Control Byte
box_boxoptions_solatradereporting_atr_v4_5.control_byte.display = function(value)
  return "Control Byte: "..value
end

-- Dissect: Control Byte
box_boxoptions_solatradereporting_atr_v4_5.control_byte.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.control_byte.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solatradereporting_atr_v4_5.control_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.control_byte, range, value, display)

  return offset + length, value
end

-- Destination
box_boxoptions_solatradereporting_atr_v4_5.destination = {}

-- Size: Destination
box_boxoptions_solatradereporting_atr_v4_5.destination.size = 4

-- Display: Destination
box_boxoptions_solatradereporting_atr_v4_5.destination.display = function(value)
  return "Destination: "..value
end

-- Dissect: Destination
box_boxoptions_solatradereporting_atr_v4_5.destination.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.destination.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_boxoptions_solatradereporting_atr_v4_5.destination.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.destination, range, value, display)

  return offset + length, value
end

-- End Of Text
box_boxoptions_solatradereporting_atr_v4_5.end_of_text = {}

-- Size: End Of Text
box_boxoptions_solatradereporting_atr_v4_5.end_of_text.size = 1

-- Display: End Of Text
box_boxoptions_solatradereporting_atr_v4_5.end_of_text.display = function(value)
  if value == 3 then
    return "End Of Text: Etx"
  end

  return "End Of Text: Unknown("..value..")"
end

-- Dissect: End Of Text
box_boxoptions_solatradereporting_atr_v4_5.end_of_text.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.end_of_text.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = box_boxoptions_solatradereporting_atr_v4_5.end_of_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.end_of_text, range, value, display)

  return offset + length, value
end

-- Error Code
box_boxoptions_solatradereporting_atr_v4_5.error_code = {}

-- Size: Error Code
box_boxoptions_solatradereporting_atr_v4_5.error_code.size = 4

-- Display: Error Code
box_boxoptions_solatradereporting_atr_v4_5.error_code.display = function(value)
  return "Error Code: "..value
end

-- Dissect: Error Code
box_boxoptions_solatradereporting_atr_v4_5.error_code.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.error_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solatradereporting_atr_v4_5.error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.error_code, range, value, display)

  return offset + length, value
end

-- Error Text
box_boxoptions_solatradereporting_atr_v4_5.error_text = {}

-- Size: Error Text
box_boxoptions_solatradereporting_atr_v4_5.error_text.size = 80

-- Display: Error Text
box_boxoptions_solatradereporting_atr_v4_5.error_text.display = function(value)
  return "Error Text: "..value
end

-- Dissect: Error Text
box_boxoptions_solatradereporting_atr_v4_5.error_text.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.error_text.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_boxoptions_solatradereporting_atr_v4_5.error_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.error_text, range, value, display)

  return offset + length, value
end

-- Executing Broker
box_boxoptions_solatradereporting_atr_v4_5.executing_broker = {}

-- Size: Executing Broker
box_boxoptions_solatradereporting_atr_v4_5.executing_broker.size = 4

-- Display: Executing Broker
box_boxoptions_solatradereporting_atr_v4_5.executing_broker.display = function(value)
  return "Executing Broker: "..value
end

-- Dissect: Executing Broker
box_boxoptions_solatradereporting_atr_v4_5.executing_broker.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.executing_broker.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solatradereporting_atr_v4_5.executing_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.executing_broker, range, value, display)

  return offset + length, value
end

-- Expiration Date
box_boxoptions_solatradereporting_atr_v4_5.expiration_date = {}

-- Size: Expiration Date
box_boxoptions_solatradereporting_atr_v4_5.expiration_date.size = 6

-- Display: Expiration Date
box_boxoptions_solatradereporting_atr_v4_5.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
box_boxoptions_solatradereporting_atr_v4_5.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.expiration_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_boxoptions_solatradereporting_atr_v4_5.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Give Up Destination
box_boxoptions_solatradereporting_atr_v4_5.give_up_destination = {}

-- Size: Give Up Destination
box_boxoptions_solatradereporting_atr_v4_5.give_up_destination.size = 4

-- Display: Give Up Destination
box_boxoptions_solatradereporting_atr_v4_5.give_up_destination.display = function(value)
  return "Give Up Destination: "..value
end

-- Dissect: Give Up Destination
box_boxoptions_solatradereporting_atr_v4_5.give_up_destination.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.give_up_destination.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_boxoptions_solatradereporting_atr_v4_5.give_up_destination.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.give_up_destination, range, value, display)

  return offset + length, value
end

-- Give Up Firm
box_boxoptions_solatradereporting_atr_v4_5.give_up_firm = {}

-- Size: Give Up Firm
box_boxoptions_solatradereporting_atr_v4_5.give_up_firm.size = 4

-- Display: Give Up Firm
box_boxoptions_solatradereporting_atr_v4_5.give_up_firm.display = function(value)
  return "Give Up Firm: "..value
end

-- Dissect: Give Up Firm
box_boxoptions_solatradereporting_atr_v4_5.give_up_firm.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.give_up_firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_boxoptions_solatradereporting_atr_v4_5.give_up_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.give_up_firm, range, value, display)

  return offset + length, value
end

-- Give Up Source
box_boxoptions_solatradereporting_atr_v4_5.give_up_source = {}

-- Size: Give Up Source
box_boxoptions_solatradereporting_atr_v4_5.give_up_source.size = 4

-- Display: Give Up Source
box_boxoptions_solatradereporting_atr_v4_5.give_up_source.display = function(value)
  return "Give Up Source: "..value
end

-- Dissect: Give Up Source
box_boxoptions_solatradereporting_atr_v4_5.give_up_source.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.give_up_source.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_boxoptions_solatradereporting_atr_v4_5.give_up_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.give_up_source, range, value, display)

  return offset + length, value
end

-- Initial Sequence Number
box_boxoptions_solatradereporting_atr_v4_5.initial_sequence_number = {}

-- Size: Initial Sequence Number
box_boxoptions_solatradereporting_atr_v4_5.initial_sequence_number.size = 8

-- Display: Initial Sequence Number
box_boxoptions_solatradereporting_atr_v4_5.initial_sequence_number.display = function(value)
  return "Initial Sequence Number: "..value
end

-- Dissect: Initial Sequence Number
box_boxoptions_solatradereporting_atr_v4_5.initial_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.initial_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solatradereporting_atr_v4_5.initial_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.initial_sequence_number, range, value, display)

  return offset + length, value
end

-- Last User Sequence Number
box_boxoptions_solatradereporting_atr_v4_5.last_user_sequence_number = {}

-- Size: Last User Sequence Number
box_boxoptions_solatradereporting_atr_v4_5.last_user_sequence_number.size = 8

-- Display: Last User Sequence Number
box_boxoptions_solatradereporting_atr_v4_5.last_user_sequence_number.display = function(value)
  return "Last User Sequence Number: "..value
end

-- Dissect: Last User Sequence Number
box_boxoptions_solatradereporting_atr_v4_5.last_user_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.last_user_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solatradereporting_atr_v4_5.last_user_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.last_user_sequence_number, range, value, display)

  return offset + length, value
end

-- Liquidity Status
box_boxoptions_solatradereporting_atr_v4_5.liquidity_status = {}

-- Size: Liquidity Status
box_boxoptions_solatradereporting_atr_v4_5.liquidity_status.size = 1

-- Display: Liquidity Status
box_boxoptions_solatradereporting_atr_v4_5.liquidity_status.display = function(value)
  if value == "M" then
    return "Liquidity Status: Maker (M)"
  end
  if value == "T" then
    return "Liquidity Status: Taker (T)"
  end

  return "Liquidity Status: Unknown("..value..")"
end

-- Dissect: Liquidity Status
box_boxoptions_solatradereporting_atr_v4_5.liquidity_status.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.liquidity_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solatradereporting_atr_v4_5.liquidity_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.liquidity_status, range, value, display)

  return offset + length, value
end

-- Member Number
box_boxoptions_solatradereporting_atr_v4_5.member_number = {}

-- Size: Member Number
box_boxoptions_solatradereporting_atr_v4_5.member_number.size = 4

-- Display: Member Number
box_boxoptions_solatradereporting_atr_v4_5.member_number.display = function(value)
  return "Member Number: "..value
end

-- Dissect: Member Number
box_boxoptions_solatradereporting_atr_v4_5.member_number.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.member_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solatradereporting_atr_v4_5.member_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.member_number, range, value, display)

  return offset + length, value
end

-- Message Flag
box_boxoptions_solatradereporting_atr_v4_5.message_flag = {}

-- Size: Message Flag
box_boxoptions_solatradereporting_atr_v4_5.message_flag.size = 1

-- Display: Message Flag
box_boxoptions_solatradereporting_atr_v4_5.message_flag.display = function(value)
  if value == "R" then
    return "Message Flag: Retransmitted Message (R)"
  end
  if value == "D" then
    return "Message Flag: Duplicated Message (D)"
  end

  return "Message Flag: Unknown("..value..")"
end

-- Dissect: Message Flag
box_boxoptions_solatradereporting_atr_v4_5.message_flag.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.message_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solatradereporting_atr_v4_5.message_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.message_flag, range, value, display)

  return offset + length, value
end

-- Message Type
box_boxoptions_solatradereporting_atr_v4_5.message_type = {}

-- Size: Message Type
box_boxoptions_solatradereporting_atr_v4_5.message_type.size = 2

-- Display: Message Type
box_boxoptions_solatradereporting_atr_v4_5.message_type.display = function(value)
  if value == "00" then
    return "Message Type: Start Of Day (00)"
  end
  if value == "01" then
    return "Message Type: Start Of Day Acknowledgement (01)"
  end
  if value == "02" then
    return "Message Type: Circuit Assurance (02)"
  end
  if value == "03" then
    return "Message Type: Circuit Response (03)"
  end
  if value == "04" then
    return "Message Type: Restart Request (04)"
  end
  if value == "05" then
    return "Message Type: Restart Accepted (05)"
  end
  if value == "08" then
    return "Message Type: End Of Trading (08)"
  end
  if value == "09" then
    return "Message Type: Client Signon (09)"
  end
  if value == "10" then
    return "Message Type: Client Signon Acknowledgment (10)"
  end
  if value == "30" then
    return "Message Type: Trade (30)"
  end
  if value == "31" then
    return "Message Type: Trade Cancel (31)"
  end
  if value == "40" then
    return "Message Type: Allocation (40)"
  end
  if value == "41" then
    return "Message Type: Allocation Cancel (41)"
  end
  if value == "42" then
    return "Message Type: New Allocation (42)"
  end
  if value == "43" then
    return "Message Type: Modify Allocation (43)"
  end
  if value == "44" then
    return "Message Type: Delete Allocation (44)"
  end
  if value == "50" then
    return "Message Type: Give Up (50)"
  end
  if value == "51" then
    return "Message Type: Give Up Cancel (51)"
  end
  if value == "52" then
    return "Message Type: New Give Up (52)"
  end
  if value == "53" then
    return "Message Type: Modify Give Up (53)"
  end
  if value == "54" then
    return "Message Type: Delete Give Up (54)"
  end
  if value == "98" then
    return "Message Type: Acknowledgement Message (98)"
  end
  if value == "99" then
    return "Message Type: Error Message (99)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
box_boxoptions_solatradereporting_atr_v4_5.message_type.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solatradereporting_atr_v4_5.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.message_type, range, value, display)

  return offset + length, value
end

-- Open Close
box_boxoptions_solatradereporting_atr_v4_5.open_close = {}

-- Size: Open Close
box_boxoptions_solatradereporting_atr_v4_5.open_close.size = 1

-- Display: Open Close
box_boxoptions_solatradereporting_atr_v4_5.open_close.display = function(value)
  if value == "O" then
    return "Open Close: Open (O)"
  end
  if value == "C" then
    return "Open Close: Close (C)"
  end

  return "Open Close: Unknown("..value..")"
end

-- Dissect: Open Close
box_boxoptions_solatradereporting_atr_v4_5.open_close.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.open_close.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solatradereporting_atr_v4_5.open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.open_close, range, value, display)

  return offset + length, value
end

-- Opposite Account Type
box_boxoptions_solatradereporting_atr_v4_5.opposite_account_type = {}

-- Size: Opposite Account Type
box_boxoptions_solatradereporting_atr_v4_5.opposite_account_type.size = 1

-- Display: Opposite Account Type
box_boxoptions_solatradereporting_atr_v4_5.opposite_account_type.display = function(value)
  if value == "6" then
    return "Opposite Account Type: Public Customer (6)"
  end
  if value == "7" then
    return "Opposite Account Type: Broker Dealer (7)"
  end
  if value == "8" then
    return "Opposite Account Type: Market Maker (8)"
  end
  if value == "T" then
    return "Opposite Account Type: Professional Customer (T)"
  end
  if value == "V" then
    return "Opposite Account Type: Floor Broker Customer (V)"
  end
  if value == "W" then
    return "Opposite Account Type: Broker Dealer Cleared As Customer (W)"
  end
  if value == "X" then
    return "Opposite Account Type: Away Market Maker (X)"
  end
  if value == "Y" then
    return "Opposite Account Type: Floor Broker Dealer (Y)"
  end
  if value == "Z" then
    return "Opposite Account Type: Floor Market Maker (Z)"
  end

  return "Opposite Account Type: Unknown("..value..")"
end

-- Dissect: Opposite Account Type
box_boxoptions_solatradereporting_atr_v4_5.opposite_account_type.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.opposite_account_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solatradereporting_atr_v4_5.opposite_account_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.opposite_account_type, range, value, display)

  return offset + length, value
end

-- Opposite Executing Broker
box_boxoptions_solatradereporting_atr_v4_5.opposite_executing_broker = {}

-- Size: Opposite Executing Broker
box_boxoptions_solatradereporting_atr_v4_5.opposite_executing_broker.size = 4

-- Display: Opposite Executing Broker
box_boxoptions_solatradereporting_atr_v4_5.opposite_executing_broker.display = function(value)
  return "Opposite Executing Broker: "..value
end

-- Dissect: Opposite Executing Broker
box_boxoptions_solatradereporting_atr_v4_5.opposite_executing_broker.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.opposite_executing_broker.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solatradereporting_atr_v4_5.opposite_executing_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.opposite_executing_broker, range, value, display)

  return offset + length, value
end

-- Option Type
box_boxoptions_solatradereporting_atr_v4_5.option_type = {}

-- Size: Option Type
box_boxoptions_solatradereporting_atr_v4_5.option_type.size = 1

-- Display: Option Type
box_boxoptions_solatradereporting_atr_v4_5.option_type.display = function(value)
  if value == "C" then
    return "Option Type: Call (C)"
  end
  if value == "P" then
    return "Option Type: Put Blank If Not An Option (P)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
box_boxoptions_solatradereporting_atr_v4_5.option_type.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solatradereporting_atr_v4_5.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.option_type, range, value, display)

  return offset + length, value
end

-- Parent Transaction Id
box_boxoptions_solatradereporting_atr_v4_5.parent_transaction_id = {}

-- Size: Parent Transaction Id
box_boxoptions_solatradereporting_atr_v4_5.parent_transaction_id.size = 10

-- Display: Parent Transaction Id
box_boxoptions_solatradereporting_atr_v4_5.parent_transaction_id.display = function(value)
  return "Parent Transaction Id: "..value
end

-- Dissect: Parent Transaction Id
box_boxoptions_solatradereporting_atr_v4_5.parent_transaction_id.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.parent_transaction_id.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solatradereporting_atr_v4_5.parent_transaction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.parent_transaction_id, range, value, display)

  return offset + length, value
end

-- Participant Session Name
box_boxoptions_solatradereporting_atr_v4_5.participant_session_name = {}

-- Size: Participant Session Name
box_boxoptions_solatradereporting_atr_v4_5.participant_session_name.size = 12

-- Display: Participant Session Name
box_boxoptions_solatradereporting_atr_v4_5.participant_session_name.display = function(value)
  return "Participant Session Name: "..value
end

-- Dissect: Participant Session Name
box_boxoptions_solatradereporting_atr_v4_5.participant_session_name.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.participant_session_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_boxoptions_solatradereporting_atr_v4_5.participant_session_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.participant_session_name, range, value, display)

  return offset + length, value
end

-- Password Md 5 Encryption
box_boxoptions_solatradereporting_atr_v4_5.password_md_5_encryption = {}

-- Size: Password Md 5 Encryption
box_boxoptions_solatradereporting_atr_v4_5.password_md_5_encryption.size = 8

-- Display: Password Md 5 Encryption
box_boxoptions_solatradereporting_atr_v4_5.password_md_5_encryption.display = function(value)
  return "Password Md 5 Encryption: "..value
end

-- Dissect: Password Md 5 Encryption
box_boxoptions_solatradereporting_atr_v4_5.password_md_5_encryption.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.password_md_5_encryption.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solatradereporting_atr_v4_5.password_md_5_encryption.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.password_md_5_encryption, range, value, display)

  return offset + length, value
end

-- Price X 10000
box_boxoptions_solatradereporting_atr_v4_5.price_x_10000 = {}

-- Size: Price X 10000
box_boxoptions_solatradereporting_atr_v4_5.price_x_10000.size = 8

-- Display: Price X 10000
box_boxoptions_solatradereporting_atr_v4_5.price_x_10000.display = function(value)
  return "Price X 10000: "..value
end

-- Dissect: Price X 10000
box_boxoptions_solatradereporting_atr_v4_5.price_x_10000.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.price_x_10000.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solatradereporting_atr_v4_5.price_x_10000.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.price_x_10000, range, value, display)

  return offset + length, value
end

-- Protocol Version
box_boxoptions_solatradereporting_atr_v4_5.protocol_version = {}

-- Size: Protocol Version
box_boxoptions_solatradereporting_atr_v4_5.protocol_version.size = 2

-- Display: Protocol Version
box_boxoptions_solatradereporting_atr_v4_5.protocol_version.display = function(value)
  return "Protocol Version: "..value
end

-- Dissect: Protocol Version
box_boxoptions_solatradereporting_atr_v4_5.protocol_version.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.protocol_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_boxoptions_solatradereporting_atr_v4_5.protocol_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.protocol_version, range, value, display)

  return offset + length, value
end

-- Reference Message Type
box_boxoptions_solatradereporting_atr_v4_5.reference_message_type = {}

-- Size: Reference Message Type
box_boxoptions_solatradereporting_atr_v4_5.reference_message_type.size = 2

-- Display: Reference Message Type
box_boxoptions_solatradereporting_atr_v4_5.reference_message_type.display = function(value)
  return "Reference Message Type: "..value
end

-- Dissect: Reference Message Type
box_boxoptions_solatradereporting_atr_v4_5.reference_message_type.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.reference_message_type.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solatradereporting_atr_v4_5.reference_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.reference_message_type, range, value, display)

  return offset + length, value
end

-- Reference Trade Number
box_boxoptions_solatradereporting_atr_v4_5.reference_trade_number = {}

-- Size: Reference Trade Number
box_boxoptions_solatradereporting_atr_v4_5.reference_trade_number.size = 15

-- Display: Reference Trade Number
box_boxoptions_solatradereporting_atr_v4_5.reference_trade_number.display = function(value)
  return "Reference Trade Number: "..value
end

-- Dissect: Reference Trade Number
box_boxoptions_solatradereporting_atr_v4_5.reference_trade_number.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.reference_trade_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_boxoptions_solatradereporting_atr_v4_5.reference_trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.reference_trade_number, range, value, display)

  return offset + length, value
end

-- Reference Transaction Id
box_boxoptions_solatradereporting_atr_v4_5.reference_transaction_id = {}

-- Size: Reference Transaction Id
box_boxoptions_solatradereporting_atr_v4_5.reference_transaction_id.size = 10

-- Display: Reference Transaction Id
box_boxoptions_solatradereporting_atr_v4_5.reference_transaction_id.display = function(value)
  return "Reference Transaction Id: "..value
end

-- Dissect: Reference Transaction Id
box_boxoptions_solatradereporting_atr_v4_5.reference_transaction_id.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.reference_transaction_id.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solatradereporting_atr_v4_5.reference_transaction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.reference_transaction_id, range, value, display)

  return offset + length, value
end

-- Sequence Number
box_boxoptions_solatradereporting_atr_v4_5.sequence_number = {}

-- Size: Sequence Number
box_boxoptions_solatradereporting_atr_v4_5.sequence_number.size = 8

-- Display: Sequence Number
box_boxoptions_solatradereporting_atr_v4_5.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
box_boxoptions_solatradereporting_atr_v4_5.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solatradereporting_atr_v4_5.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Source
box_boxoptions_solatradereporting_atr_v4_5.source = {}

-- Size: Source
box_boxoptions_solatradereporting_atr_v4_5.source.size = 4

-- Display: Source
box_boxoptions_solatradereporting_atr_v4_5.source.display = function(value)
  return "Source: "..value
end

-- Dissect: Source
box_boxoptions_solatradereporting_atr_v4_5.source.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.source.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_boxoptions_solatradereporting_atr_v4_5.source.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.source, range, value, display)

  return offset + length, value
end

-- Strike Price
box_boxoptions_solatradereporting_atr_v4_5.strike_price = {}

-- Size: Strike Price
box_boxoptions_solatradereporting_atr_v4_5.strike_price.size = 8

-- Display: Strike Price
box_boxoptions_solatradereporting_atr_v4_5.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
box_boxoptions_solatradereporting_atr_v4_5.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.strike_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solatradereporting_atr_v4_5.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Strike Price Fraction Indicator
box_boxoptions_solatradereporting_atr_v4_5.strike_price_fraction_indicator = {}

-- Size: Strike Price Fraction Indicator
box_boxoptions_solatradereporting_atr_v4_5.strike_price_fraction_indicator.size = 1

-- Display: Strike Price Fraction Indicator
box_boxoptions_solatradereporting_atr_v4_5.strike_price_fraction_indicator.display = function(value)
  return "Strike Price Fraction Indicator: "..value
end

-- Dissect: Strike Price Fraction Indicator
box_boxoptions_solatradereporting_atr_v4_5.strike_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.strike_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solatradereporting_atr_v4_5.strike_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.strike_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Subtrader Id
box_boxoptions_solatradereporting_atr_v4_5.subtrader_id = {}

-- Size: Subtrader Id
box_boxoptions_solatradereporting_atr_v4_5.subtrader_id.size = 3

-- Display: Subtrader Id
box_boxoptions_solatradereporting_atr_v4_5.subtrader_id.display = function(value)
  return "Subtrader Id: "..value
end

-- Dissect: Subtrader Id
box_boxoptions_solatradereporting_atr_v4_5.subtrader_id.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.subtrader_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_boxoptions_solatradereporting_atr_v4_5.subtrader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.subtrader_id, range, value, display)

  return offset + length, value
end

-- Symbol
box_boxoptions_solatradereporting_atr_v4_5.symbol = {}

-- Size: Symbol
box_boxoptions_solatradereporting_atr_v4_5.symbol.size = 30

-- Display: Symbol
box_boxoptions_solatradereporting_atr_v4_5.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
box_boxoptions_solatradereporting_atr_v4_5.symbol.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_boxoptions_solatradereporting_atr_v4_5.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.symbol, range, value, display)

  return offset + length, value
end

-- Time
box_boxoptions_solatradereporting_atr_v4_5.time = {}

-- Size: Time
box_boxoptions_solatradereporting_atr_v4_5.time.size = 6

-- Display: Time
box_boxoptions_solatradereporting_atr_v4_5.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
box_boxoptions_solatradereporting_atr_v4_5.time.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.time.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solatradereporting_atr_v4_5.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.time, range, value, display)

  return offset + length, value
end

-- Timestamp
box_boxoptions_solatradereporting_atr_v4_5.timestamp = {}

-- Size: Timestamp
box_boxoptions_solatradereporting_atr_v4_5.timestamp.size = 6

-- Display: Timestamp
box_boxoptions_solatradereporting_atr_v4_5.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
box_boxoptions_solatradereporting_atr_v4_5.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.timestamp.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_boxoptions_solatradereporting_atr_v4_5.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Number
box_boxoptions_solatradereporting_atr_v4_5.trade_number = {}

-- Size: Trade Number
box_boxoptions_solatradereporting_atr_v4_5.trade_number.size = 15

-- Display: Trade Number
box_boxoptions_solatradereporting_atr_v4_5.trade_number.display = function(value)
  if value == "of" then
    return "Trade Number: Side Field Only The First Letter Of The Verb Ie B For Buy And S For Sell Instrument Id And Group Id Field Trade Id Field (of)"
  end

  return "Trade Number: Unknown("..value..")"
end

-- Dissect: Trade Number
box_boxoptions_solatradereporting_atr_v4_5.trade_number.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.trade_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_boxoptions_solatradereporting_atr_v4_5.trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.trade_number, range, value, display)

  return offset + length, value
end

-- Trade Type
box_boxoptions_solatradereporting_atr_v4_5.trade_type = {}

-- Size: Trade Type
box_boxoptions_solatradereporting_atr_v4_5.trade_type.size = 1

-- Display: Trade Type
box_boxoptions_solatradereporting_atr_v4_5.trade_type.display = function(value)
  if value == "O" then
    return "Trade Type: Crossed Orders A Trade With The Same Firm Id On Both Sides (O)"
  end
  if value == "T" then
    return "Trade Type: Trader Crossed Orders A Trade With The Same Trader Id On Both Sides (T)"
  end
  if value == "M" then
    return "Trade Type: Tpr Trade A Trade Done By A Third Party Router (M)"
  end
  if value == "P" then
    return "Trade Type: Pip A Trade Done At The End Of A Pip Auction (P)"
  end
  if value == "F" then
    return "Trade Type: Firm Do A Trade Resulting From A Directed Order (F)"
  end
  if value == "A" then
    return "Trade Type: As Of A Trade Entered By The Box Moc To Correct A Trade Executed On A Previous Day (A)"
  end
  if value == "E" then
    return "Trade Type: Late A Trade Entered By The Box Moc To Correct A Trade Executed On The Same Day (E)"
  end
  if value == "S" then
    return "Trade Type: Solicitation A Trade Done As Part Of A Solicitation Auction (S)"
  end
  if value == "I" then
    return "Trade Type: Facilitation A Trade Done As Part Of A Facilitation Auction (I)"
  end
  if value == "R" then
    return "Trade Type: Floor Trade (R)"
  end
  if value == "C" then
    return "Trade Type: Customer Cross Orders Or Qualified Contingent Cross Orders (C)"
  end

  return "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
box_boxoptions_solatradereporting_atr_v4_5.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solatradereporting_atr_v4_5.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Transaction Type
box_boxoptions_solatradereporting_atr_v4_5.transaction_type = {}

-- Size: Transaction Type
box_boxoptions_solatradereporting_atr_v4_5.transaction_type.size = 1

-- Display: Transaction Type
box_boxoptions_solatradereporting_atr_v4_5.transaction_type.display = function(value)
  if value == "B" then
    return "Transaction Type: Buy (B)"
  end
  if value == "S" then
    return "Transaction Type: Sell (S)"
  end

  return "Transaction Type: Unknown("..value..")"
end

-- Dissect: Transaction Type
box_boxoptions_solatradereporting_atr_v4_5.transaction_type.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.transaction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solatradereporting_atr_v4_5.transaction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.transaction_type, range, value, display)

  return offset + length, value
end

-- Unique Transaction Id
box_boxoptions_solatradereporting_atr_v4_5.unique_transaction_id = {}

-- Size: Unique Transaction Id
box_boxoptions_solatradereporting_atr_v4_5.unique_transaction_id.size = 10

-- Display: Unique Transaction Id
box_boxoptions_solatradereporting_atr_v4_5.unique_transaction_id.display = function(value)
  return "Unique Transaction Id: "..value
end

-- Dissect: Unique Transaction Id
box_boxoptions_solatradereporting_atr_v4_5.unique_transaction_id.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.unique_transaction_id.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solatradereporting_atr_v4_5.unique_transaction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.unique_transaction_id, range, value, display)

  return offset + length, value
end

-- Username
box_boxoptions_solatradereporting_atr_v4_5.username = {}

-- Size: Username
box_boxoptions_solatradereporting_atr_v4_5.username.size = 8

-- Display: Username
box_boxoptions_solatradereporting_atr_v4_5.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
box_boxoptions_solatradereporting_atr_v4_5.username.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.username.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_boxoptions_solatradereporting_atr_v4_5.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.username, range, value, display)

  return offset + length, value
end

-- Volume
box_boxoptions_solatradereporting_atr_v4_5.volume = {}

-- Size: Volume
box_boxoptions_solatradereporting_atr_v4_5.volume.size = 8

-- Display: Volume
box_boxoptions_solatradereporting_atr_v4_5.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
box_boxoptions_solatradereporting_atr_v4_5.volume.dissect = function(buffer, offset, packet, parent)
  local length = box_boxoptions_solatradereporting_atr_v4_5.volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_boxoptions_solatradereporting_atr_v4_5.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.volume, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Box BoxOptions SolaTradeReporting Atr 4.5
-----------------------------------------------------------------------

-- Error Message
box_boxoptions_solatradereporting_atr_v4_5.error_message = {}

-- Size: Error Message
box_boxoptions_solatradereporting_atr_v4_5.error_message.size =
  box_boxoptions_solatradereporting_atr_v4_5.reference_message_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.error_code.size + 
  box_boxoptions_solatradereporting_atr_v4_5.error_text.size

-- Display: Error Message
box_boxoptions_solatradereporting_atr_v4_5.error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Error Message
box_boxoptions_solatradereporting_atr_v4_5.error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reference Message Type: N
  index, reference_message_type = box_boxoptions_solatradereporting_atr_v4_5.reference_message_type.dissect(buffer, index, packet, parent)

  -- Error Code: N
  index, error_code = box_boxoptions_solatradereporting_atr_v4_5.error_code.dissect(buffer, index, packet, parent)

  -- Error Text: A
  index, error_text = box_boxoptions_solatradereporting_atr_v4_5.error_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Error Message
box_boxoptions_solatradereporting_atr_v4_5.error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.error_message, buffer(offset, 0))
    local index = box_boxoptions_solatradereporting_atr_v4_5.error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solatradereporting_atr_v4_5.error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solatradereporting_atr_v4_5.error_message.fields(buffer, offset, packet, parent)
  end
end

-- Acknowledgement Message
box_boxoptions_solatradereporting_atr_v4_5.acknowledgement_message = {}

-- Display: Acknowledgement Message
box_boxoptions_solatradereporting_atr_v4_5.acknowledgement_message.display = function(packet, parent, length)
  return "Acknowledgement Message"
end


-- Dissect: Acknowledgement Message
box_boxoptions_solatradereporting_atr_v4_5.acknowledgement_message.dissect = function(buffer, offset, packet, parent)
  local display = box_boxoptions_solatradereporting_atr_v4_5.acknowledgement_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Give Up Cancel
box_boxoptions_solatradereporting_atr_v4_5.give_up_cancel = {}

-- Size: Give Up Cancel
box_boxoptions_solatradereporting_atr_v4_5.give_up_cancel.size =
  box_boxoptions_solatradereporting_atr_v4_5.trade_number.size + 
  box_boxoptions_solatradereporting_atr_v4_5.transaction_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.timestamp.size + 
  box_boxoptions_solatradereporting_atr_v4_5.symbol.size + 
  box_boxoptions_solatradereporting_atr_v4_5.expiration_date.size + 
  box_boxoptions_solatradereporting_atr_v4_5.strike_price.size + 
  box_boxoptions_solatradereporting_atr_v4_5.strike_price_fraction_indicator.size + 
  box_boxoptions_solatradereporting_atr_v4_5.option_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.volume.size + 
  box_boxoptions_solatradereporting_atr_v4_5.price_x_10000.size + 
  box_boxoptions_solatradereporting_atr_v4_5.cmta_broker.size + 
  box_boxoptions_solatradereporting_atr_v4_5.account_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.subtrader_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.open_close.size + 
  box_boxoptions_solatradereporting_atr_v4_5.executing_broker.size + 
  box_boxoptions_solatradereporting_atr_v4_5.client_account_number.size + 
  box_boxoptions_solatradereporting_atr_v4_5.client_order_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.client_memo.size + 
  box_boxoptions_solatradereporting_atr_v4_5.liquidity_status.size + 
  box_boxoptions_solatradereporting_atr_v4_5.trade_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.opposite_account_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.give_up_source.size + 
  box_boxoptions_solatradereporting_atr_v4_5.give_up_destination.size + 
  box_boxoptions_solatradereporting_atr_v4_5.participant_session_name.size + 
  box_boxoptions_solatradereporting_atr_v4_5.unique_transaction_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.parent_transaction_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.opposite_executing_broker.size + 
  box_boxoptions_solatradereporting_atr_v4_5.additional_client_memo.size

-- Display: Give Up Cancel
box_boxoptions_solatradereporting_atr_v4_5.give_up_cancel.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Give Up Cancel
box_boxoptions_solatradereporting_atr_v4_5.give_up_cancel.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Number: A
  index, trade_number = box_boxoptions_solatradereporting_atr_v4_5.trade_number.dissect(buffer, index, packet, parent)

  -- Transaction Type: A
  index, transaction_type = box_boxoptions_solatradereporting_atr_v4_5.transaction_type.dissect(buffer, index, packet, parent)

  -- Timestamp: A
  index, timestamp = box_boxoptions_solatradereporting_atr_v4_5.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: A
  index, symbol = box_boxoptions_solatradereporting_atr_v4_5.symbol.dissect(buffer, index, packet, parent)

  -- Expiration Date: A
  index, expiration_date = box_boxoptions_solatradereporting_atr_v4_5.expiration_date.dissect(buffer, index, packet, parent)

  -- Strike Price: N
  index, strike_price = box_boxoptions_solatradereporting_atr_v4_5.strike_price.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: A
  index, strike_price_fraction_indicator = box_boxoptions_solatradereporting_atr_v4_5.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Option Type: A
  index, option_type = box_boxoptions_solatradereporting_atr_v4_5.option_type.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = box_boxoptions_solatradereporting_atr_v4_5.volume.dissect(buffer, index, packet, parent)

  -- Price X 10000: N
  index, price_x_10000 = box_boxoptions_solatradereporting_atr_v4_5.price_x_10000.dissect(buffer, index, packet, parent)

  -- Cmta Broker: N
  index, cmta_broker = box_boxoptions_solatradereporting_atr_v4_5.cmta_broker.dissect(buffer, index, packet, parent)

  -- Account Type: A
  index, account_type = box_boxoptions_solatradereporting_atr_v4_5.account_type.dissect(buffer, index, packet, parent)

  -- Subtrader Id: A
  index, subtrader_id = box_boxoptions_solatradereporting_atr_v4_5.subtrader_id.dissect(buffer, index, packet, parent)

  -- Open Close: A
  index, open_close = box_boxoptions_solatradereporting_atr_v4_5.open_close.dissect(buffer, index, packet, parent)

  -- Executing Broker: N
  index, executing_broker = box_boxoptions_solatradereporting_atr_v4_5.executing_broker.dissect(buffer, index, packet, parent)

  -- Client Account Number: A
  index, client_account_number = box_boxoptions_solatradereporting_atr_v4_5.client_account_number.dissect(buffer, index, packet, parent)

  -- Client Order Id: A
  index, client_order_id = box_boxoptions_solatradereporting_atr_v4_5.client_order_id.dissect(buffer, index, packet, parent)

  -- Client Memo: A
  index, client_memo = box_boxoptions_solatradereporting_atr_v4_5.client_memo.dissect(buffer, index, packet, parent)

  -- Liquidity Status: A
  index, liquidity_status = box_boxoptions_solatradereporting_atr_v4_5.liquidity_status.dissect(buffer, index, packet, parent)

  -- Trade Type: A
  index, trade_type = box_boxoptions_solatradereporting_atr_v4_5.trade_type.dissect(buffer, index, packet, parent)

  -- Opposite Account Type: A
  index, opposite_account_type = box_boxoptions_solatradereporting_atr_v4_5.opposite_account_type.dissect(buffer, index, packet, parent)

  -- Give Up Source: A
  index, give_up_source = box_boxoptions_solatradereporting_atr_v4_5.give_up_source.dissect(buffer, index, packet, parent)

  -- Give Up Destination: A
  index, give_up_destination = box_boxoptions_solatradereporting_atr_v4_5.give_up_destination.dissect(buffer, index, packet, parent)

  -- Participant Session Name: A
  index, participant_session_name = box_boxoptions_solatradereporting_atr_v4_5.participant_session_name.dissect(buffer, index, packet, parent)

  -- Unique Transaction Id: N
  index, unique_transaction_id = box_boxoptions_solatradereporting_atr_v4_5.unique_transaction_id.dissect(buffer, index, packet, parent)

  -- Parent Transaction Id: N
  index, parent_transaction_id = box_boxoptions_solatradereporting_atr_v4_5.parent_transaction_id.dissect(buffer, index, packet, parent)

  -- Opposite Executing Broker: N
  index, opposite_executing_broker = box_boxoptions_solatradereporting_atr_v4_5.opposite_executing_broker.dissect(buffer, index, packet, parent)

  -- Additional Client Memo: A
  index, additional_client_memo = box_boxoptions_solatradereporting_atr_v4_5.additional_client_memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Give Up Cancel
box_boxoptions_solatradereporting_atr_v4_5.give_up_cancel.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.give_up_cancel, buffer(offset, 0))
    local index = box_boxoptions_solatradereporting_atr_v4_5.give_up_cancel.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solatradereporting_atr_v4_5.give_up_cancel.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solatradereporting_atr_v4_5.give_up_cancel.fields(buffer, offset, packet, parent)
  end
end

-- Give Up
box_boxoptions_solatradereporting_atr_v4_5.give_up = {}

-- Size: Give Up
box_boxoptions_solatradereporting_atr_v4_5.give_up.size =
  box_boxoptions_solatradereporting_atr_v4_5.trade_number.size + 
  box_boxoptions_solatradereporting_atr_v4_5.transaction_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.timestamp.size + 
  box_boxoptions_solatradereporting_atr_v4_5.symbol.size + 
  box_boxoptions_solatradereporting_atr_v4_5.expiration_date.size + 
  box_boxoptions_solatradereporting_atr_v4_5.strike_price.size + 
  box_boxoptions_solatradereporting_atr_v4_5.strike_price_fraction_indicator.size + 
  box_boxoptions_solatradereporting_atr_v4_5.option_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.volume.size + 
  box_boxoptions_solatradereporting_atr_v4_5.price_x_10000.size + 
  box_boxoptions_solatradereporting_atr_v4_5.cmta_broker.size + 
  box_boxoptions_solatradereporting_atr_v4_5.account_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.subtrader_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.open_close.size + 
  box_boxoptions_solatradereporting_atr_v4_5.executing_broker.size + 
  box_boxoptions_solatradereporting_atr_v4_5.client_account_number.size + 
  box_boxoptions_solatradereporting_atr_v4_5.client_order_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.client_memo.size + 
  box_boxoptions_solatradereporting_atr_v4_5.liquidity_status.size + 
  box_boxoptions_solatradereporting_atr_v4_5.trade_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.opposite_account_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.give_up_source.size + 
  box_boxoptions_solatradereporting_atr_v4_5.give_up_destination.size + 
  box_boxoptions_solatradereporting_atr_v4_5.participant_session_name.size + 
  box_boxoptions_solatradereporting_atr_v4_5.unique_transaction_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.parent_transaction_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.opposite_executing_broker.size + 
  box_boxoptions_solatradereporting_atr_v4_5.additional_client_memo.size

-- Display: Give Up
box_boxoptions_solatradereporting_atr_v4_5.give_up.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Give Up
box_boxoptions_solatradereporting_atr_v4_5.give_up.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Number: A
  index, trade_number = box_boxoptions_solatradereporting_atr_v4_5.trade_number.dissect(buffer, index, packet, parent)

  -- Transaction Type: A
  index, transaction_type = box_boxoptions_solatradereporting_atr_v4_5.transaction_type.dissect(buffer, index, packet, parent)

  -- Timestamp: A
  index, timestamp = box_boxoptions_solatradereporting_atr_v4_5.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: A
  index, symbol = box_boxoptions_solatradereporting_atr_v4_5.symbol.dissect(buffer, index, packet, parent)

  -- Expiration Date: A
  index, expiration_date = box_boxoptions_solatradereporting_atr_v4_5.expiration_date.dissect(buffer, index, packet, parent)

  -- Strike Price: N
  index, strike_price = box_boxoptions_solatradereporting_atr_v4_5.strike_price.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: A
  index, strike_price_fraction_indicator = box_boxoptions_solatradereporting_atr_v4_5.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Option Type: A
  index, option_type = box_boxoptions_solatradereporting_atr_v4_5.option_type.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = box_boxoptions_solatradereporting_atr_v4_5.volume.dissect(buffer, index, packet, parent)

  -- Price X 10000: N
  index, price_x_10000 = box_boxoptions_solatradereporting_atr_v4_5.price_x_10000.dissect(buffer, index, packet, parent)

  -- Cmta Broker: N
  index, cmta_broker = box_boxoptions_solatradereporting_atr_v4_5.cmta_broker.dissect(buffer, index, packet, parent)

  -- Account Type: A
  index, account_type = box_boxoptions_solatradereporting_atr_v4_5.account_type.dissect(buffer, index, packet, parent)

  -- Subtrader Id: A
  index, subtrader_id = box_boxoptions_solatradereporting_atr_v4_5.subtrader_id.dissect(buffer, index, packet, parent)

  -- Open Close: A
  index, open_close = box_boxoptions_solatradereporting_atr_v4_5.open_close.dissect(buffer, index, packet, parent)

  -- Executing Broker: N
  index, executing_broker = box_boxoptions_solatradereporting_atr_v4_5.executing_broker.dissect(buffer, index, packet, parent)

  -- Client Account Number: A
  index, client_account_number = box_boxoptions_solatradereporting_atr_v4_5.client_account_number.dissect(buffer, index, packet, parent)

  -- Client Order Id: A
  index, client_order_id = box_boxoptions_solatradereporting_atr_v4_5.client_order_id.dissect(buffer, index, packet, parent)

  -- Client Memo: A
  index, client_memo = box_boxoptions_solatradereporting_atr_v4_5.client_memo.dissect(buffer, index, packet, parent)

  -- Liquidity Status: A
  index, liquidity_status = box_boxoptions_solatradereporting_atr_v4_5.liquidity_status.dissect(buffer, index, packet, parent)

  -- Trade Type: A
  index, trade_type = box_boxoptions_solatradereporting_atr_v4_5.trade_type.dissect(buffer, index, packet, parent)

  -- Opposite Account Type: A
  index, opposite_account_type = box_boxoptions_solatradereporting_atr_v4_5.opposite_account_type.dissect(buffer, index, packet, parent)

  -- Give Up Source: A
  index, give_up_source = box_boxoptions_solatradereporting_atr_v4_5.give_up_source.dissect(buffer, index, packet, parent)

  -- Give Up Destination: A
  index, give_up_destination = box_boxoptions_solatradereporting_atr_v4_5.give_up_destination.dissect(buffer, index, packet, parent)

  -- Participant Session Name: A
  index, participant_session_name = box_boxoptions_solatradereporting_atr_v4_5.participant_session_name.dissect(buffer, index, packet, parent)

  -- Unique Transaction Id: N
  index, unique_transaction_id = box_boxoptions_solatradereporting_atr_v4_5.unique_transaction_id.dissect(buffer, index, packet, parent)

  -- Parent Transaction Id: N
  index, parent_transaction_id = box_boxoptions_solatradereporting_atr_v4_5.parent_transaction_id.dissect(buffer, index, packet, parent)

  -- Opposite Executing Broker: N
  index, opposite_executing_broker = box_boxoptions_solatradereporting_atr_v4_5.opposite_executing_broker.dissect(buffer, index, packet, parent)

  -- Additional Client Memo: A
  index, additional_client_memo = box_boxoptions_solatradereporting_atr_v4_5.additional_client_memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Give Up
box_boxoptions_solatradereporting_atr_v4_5.give_up.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.give_up, buffer(offset, 0))
    local index = box_boxoptions_solatradereporting_atr_v4_5.give_up.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solatradereporting_atr_v4_5.give_up.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solatradereporting_atr_v4_5.give_up.fields(buffer, offset, packet, parent)
  end
end

-- Allocation Cancel
box_boxoptions_solatradereporting_atr_v4_5.allocation_cancel = {}

-- Size: Allocation Cancel
box_boxoptions_solatradereporting_atr_v4_5.allocation_cancel.size =
  box_boxoptions_solatradereporting_atr_v4_5.trade_number.size + 
  box_boxoptions_solatradereporting_atr_v4_5.transaction_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.timestamp.size + 
  box_boxoptions_solatradereporting_atr_v4_5.symbol.size + 
  box_boxoptions_solatradereporting_atr_v4_5.expiration_date.size + 
  box_boxoptions_solatradereporting_atr_v4_5.strike_price.size + 
  box_boxoptions_solatradereporting_atr_v4_5.strike_price_fraction_indicator.size + 
  box_boxoptions_solatradereporting_atr_v4_5.option_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.volume.size + 
  box_boxoptions_solatradereporting_atr_v4_5.price_x_10000.size + 
  box_boxoptions_solatradereporting_atr_v4_5.cmta_broker.size + 
  box_boxoptions_solatradereporting_atr_v4_5.account_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.subtrader_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.open_close.size + 
  box_boxoptions_solatradereporting_atr_v4_5.executing_broker.size + 
  box_boxoptions_solatradereporting_atr_v4_5.client_account_number.size + 
  box_boxoptions_solatradereporting_atr_v4_5.client_order_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.client_memo.size + 
  box_boxoptions_solatradereporting_atr_v4_5.liquidity_status.size + 
  box_boxoptions_solatradereporting_atr_v4_5.trade_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.opposite_account_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.participant_session_name.size + 
  box_boxoptions_solatradereporting_atr_v4_5.unique_transaction_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.parent_transaction_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.opposite_executing_broker.size + 
  box_boxoptions_solatradereporting_atr_v4_5.additional_client_memo.size

-- Display: Allocation Cancel
box_boxoptions_solatradereporting_atr_v4_5.allocation_cancel.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Allocation Cancel
box_boxoptions_solatradereporting_atr_v4_5.allocation_cancel.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Number: A
  index, trade_number = box_boxoptions_solatradereporting_atr_v4_5.trade_number.dissect(buffer, index, packet, parent)

  -- Transaction Type: A
  index, transaction_type = box_boxoptions_solatradereporting_atr_v4_5.transaction_type.dissect(buffer, index, packet, parent)

  -- Timestamp: A
  index, timestamp = box_boxoptions_solatradereporting_atr_v4_5.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: A
  index, symbol = box_boxoptions_solatradereporting_atr_v4_5.symbol.dissect(buffer, index, packet, parent)

  -- Expiration Date: A
  index, expiration_date = box_boxoptions_solatradereporting_atr_v4_5.expiration_date.dissect(buffer, index, packet, parent)

  -- Strike Price: N
  index, strike_price = box_boxoptions_solatradereporting_atr_v4_5.strike_price.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: A
  index, strike_price_fraction_indicator = box_boxoptions_solatradereporting_atr_v4_5.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Option Type: A
  index, option_type = box_boxoptions_solatradereporting_atr_v4_5.option_type.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = box_boxoptions_solatradereporting_atr_v4_5.volume.dissect(buffer, index, packet, parent)

  -- Price X 10000: N
  index, price_x_10000 = box_boxoptions_solatradereporting_atr_v4_5.price_x_10000.dissect(buffer, index, packet, parent)

  -- Cmta Broker: N
  index, cmta_broker = box_boxoptions_solatradereporting_atr_v4_5.cmta_broker.dissect(buffer, index, packet, parent)

  -- Account Type: A
  index, account_type = box_boxoptions_solatradereporting_atr_v4_5.account_type.dissect(buffer, index, packet, parent)

  -- Subtrader Id: A
  index, subtrader_id = box_boxoptions_solatradereporting_atr_v4_5.subtrader_id.dissect(buffer, index, packet, parent)

  -- Open Close: A
  index, open_close = box_boxoptions_solatradereporting_atr_v4_5.open_close.dissect(buffer, index, packet, parent)

  -- Executing Broker: N
  index, executing_broker = box_boxoptions_solatradereporting_atr_v4_5.executing_broker.dissect(buffer, index, packet, parent)

  -- Client Account Number: A
  index, client_account_number = box_boxoptions_solatradereporting_atr_v4_5.client_account_number.dissect(buffer, index, packet, parent)

  -- Client Order Id: A
  index, client_order_id = box_boxoptions_solatradereporting_atr_v4_5.client_order_id.dissect(buffer, index, packet, parent)

  -- Client Memo: A
  index, client_memo = box_boxoptions_solatradereporting_atr_v4_5.client_memo.dissect(buffer, index, packet, parent)

  -- Liquidity Status: A
  index, liquidity_status = box_boxoptions_solatradereporting_atr_v4_5.liquidity_status.dissect(buffer, index, packet, parent)

  -- Trade Type: A
  index, trade_type = box_boxoptions_solatradereporting_atr_v4_5.trade_type.dissect(buffer, index, packet, parent)

  -- Opposite Account Type: A
  index, opposite_account_type = box_boxoptions_solatradereporting_atr_v4_5.opposite_account_type.dissect(buffer, index, packet, parent)

  -- Participant Session Name: A
  index, participant_session_name = box_boxoptions_solatradereporting_atr_v4_5.participant_session_name.dissect(buffer, index, packet, parent)

  -- Unique Transaction Id: N
  index, unique_transaction_id = box_boxoptions_solatradereporting_atr_v4_5.unique_transaction_id.dissect(buffer, index, packet, parent)

  -- Parent Transaction Id: N
  index, parent_transaction_id = box_boxoptions_solatradereporting_atr_v4_5.parent_transaction_id.dissect(buffer, index, packet, parent)

  -- Opposite Executing Broker: N
  index, opposite_executing_broker = box_boxoptions_solatradereporting_atr_v4_5.opposite_executing_broker.dissect(buffer, index, packet, parent)

  -- Additional Client Memo: A
  index, additional_client_memo = box_boxoptions_solatradereporting_atr_v4_5.additional_client_memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Allocation Cancel
box_boxoptions_solatradereporting_atr_v4_5.allocation_cancel.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.allocation_cancel, buffer(offset, 0))
    local index = box_boxoptions_solatradereporting_atr_v4_5.allocation_cancel.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solatradereporting_atr_v4_5.allocation_cancel.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solatradereporting_atr_v4_5.allocation_cancel.fields(buffer, offset, packet, parent)
  end
end

-- Allocation
box_boxoptions_solatradereporting_atr_v4_5.allocation = {}

-- Size: Allocation
box_boxoptions_solatradereporting_atr_v4_5.allocation.size =
  box_boxoptions_solatradereporting_atr_v4_5.trade_number.size + 
  box_boxoptions_solatradereporting_atr_v4_5.transaction_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.timestamp.size + 
  box_boxoptions_solatradereporting_atr_v4_5.symbol.size + 
  box_boxoptions_solatradereporting_atr_v4_5.expiration_date.size + 
  box_boxoptions_solatradereporting_atr_v4_5.strike_price.size + 
  box_boxoptions_solatradereporting_atr_v4_5.strike_price_fraction_indicator.size + 
  box_boxoptions_solatradereporting_atr_v4_5.option_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.volume.size + 
  box_boxoptions_solatradereporting_atr_v4_5.price_x_10000.size + 
  box_boxoptions_solatradereporting_atr_v4_5.cmta_broker.size + 
  box_boxoptions_solatradereporting_atr_v4_5.account_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.subtrader_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.open_close.size + 
  box_boxoptions_solatradereporting_atr_v4_5.executing_broker.size + 
  box_boxoptions_solatradereporting_atr_v4_5.client_account_number.size + 
  box_boxoptions_solatradereporting_atr_v4_5.client_order_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.client_memo.size + 
  box_boxoptions_solatradereporting_atr_v4_5.liquidity_status.size + 
  box_boxoptions_solatradereporting_atr_v4_5.trade_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.opposite_account_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.participant_session_name.size + 
  box_boxoptions_solatradereporting_atr_v4_5.unique_transaction_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.parent_transaction_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.opposite_executing_broker.size + 
  box_boxoptions_solatradereporting_atr_v4_5.additional_client_memo.size

-- Display: Allocation
box_boxoptions_solatradereporting_atr_v4_5.allocation.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Allocation
box_boxoptions_solatradereporting_atr_v4_5.allocation.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Number: A
  index, trade_number = box_boxoptions_solatradereporting_atr_v4_5.trade_number.dissect(buffer, index, packet, parent)

  -- Transaction Type: A
  index, transaction_type = box_boxoptions_solatradereporting_atr_v4_5.transaction_type.dissect(buffer, index, packet, parent)

  -- Timestamp: A
  index, timestamp = box_boxoptions_solatradereporting_atr_v4_5.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: A
  index, symbol = box_boxoptions_solatradereporting_atr_v4_5.symbol.dissect(buffer, index, packet, parent)

  -- Expiration Date: A
  index, expiration_date = box_boxoptions_solatradereporting_atr_v4_5.expiration_date.dissect(buffer, index, packet, parent)

  -- Strike Price: N
  index, strike_price = box_boxoptions_solatradereporting_atr_v4_5.strike_price.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: A
  index, strike_price_fraction_indicator = box_boxoptions_solatradereporting_atr_v4_5.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Option Type: A
  index, option_type = box_boxoptions_solatradereporting_atr_v4_5.option_type.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = box_boxoptions_solatradereporting_atr_v4_5.volume.dissect(buffer, index, packet, parent)

  -- Price X 10000: N
  index, price_x_10000 = box_boxoptions_solatradereporting_atr_v4_5.price_x_10000.dissect(buffer, index, packet, parent)

  -- Cmta Broker: N
  index, cmta_broker = box_boxoptions_solatradereporting_atr_v4_5.cmta_broker.dissect(buffer, index, packet, parent)

  -- Account Type: A
  index, account_type = box_boxoptions_solatradereporting_atr_v4_5.account_type.dissect(buffer, index, packet, parent)

  -- Subtrader Id: A
  index, subtrader_id = box_boxoptions_solatradereporting_atr_v4_5.subtrader_id.dissect(buffer, index, packet, parent)

  -- Open Close: A
  index, open_close = box_boxoptions_solatradereporting_atr_v4_5.open_close.dissect(buffer, index, packet, parent)

  -- Executing Broker: N
  index, executing_broker = box_boxoptions_solatradereporting_atr_v4_5.executing_broker.dissect(buffer, index, packet, parent)

  -- Client Account Number: A
  index, client_account_number = box_boxoptions_solatradereporting_atr_v4_5.client_account_number.dissect(buffer, index, packet, parent)

  -- Client Order Id: A
  index, client_order_id = box_boxoptions_solatradereporting_atr_v4_5.client_order_id.dissect(buffer, index, packet, parent)

  -- Client Memo: A
  index, client_memo = box_boxoptions_solatradereporting_atr_v4_5.client_memo.dissect(buffer, index, packet, parent)

  -- Liquidity Status: A
  index, liquidity_status = box_boxoptions_solatradereporting_atr_v4_5.liquidity_status.dissect(buffer, index, packet, parent)

  -- Trade Type: A
  index, trade_type = box_boxoptions_solatradereporting_atr_v4_5.trade_type.dissect(buffer, index, packet, parent)

  -- Opposite Account Type: A
  index, opposite_account_type = box_boxoptions_solatradereporting_atr_v4_5.opposite_account_type.dissect(buffer, index, packet, parent)

  -- Participant Session Name: A
  index, participant_session_name = box_boxoptions_solatradereporting_atr_v4_5.participant_session_name.dissect(buffer, index, packet, parent)

  -- Unique Transaction Id: N
  index, unique_transaction_id = box_boxoptions_solatradereporting_atr_v4_5.unique_transaction_id.dissect(buffer, index, packet, parent)

  -- Parent Transaction Id: N
  index, parent_transaction_id = box_boxoptions_solatradereporting_atr_v4_5.parent_transaction_id.dissect(buffer, index, packet, parent)

  -- Opposite Executing Broker: N
  index, opposite_executing_broker = box_boxoptions_solatradereporting_atr_v4_5.opposite_executing_broker.dissect(buffer, index, packet, parent)

  -- Additional Client Memo: A
  index, additional_client_memo = box_boxoptions_solatradereporting_atr_v4_5.additional_client_memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Allocation
box_boxoptions_solatradereporting_atr_v4_5.allocation.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.allocation, buffer(offset, 0))
    local index = box_boxoptions_solatradereporting_atr_v4_5.allocation.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solatradereporting_atr_v4_5.allocation.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solatradereporting_atr_v4_5.allocation.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel
box_boxoptions_solatradereporting_atr_v4_5.trade_cancel = {}

-- Size: Trade Cancel
box_boxoptions_solatradereporting_atr_v4_5.trade_cancel.size =
  box_boxoptions_solatradereporting_atr_v4_5.trade_number.size + 
  box_boxoptions_solatradereporting_atr_v4_5.transaction_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.timestamp.size + 
  box_boxoptions_solatradereporting_atr_v4_5.symbol.size + 
  box_boxoptions_solatradereporting_atr_v4_5.expiration_date.size + 
  box_boxoptions_solatradereporting_atr_v4_5.strike_price.size + 
  box_boxoptions_solatradereporting_atr_v4_5.strike_price_fraction_indicator.size + 
  box_boxoptions_solatradereporting_atr_v4_5.option_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.volume.size + 
  box_boxoptions_solatradereporting_atr_v4_5.price_x_10000.size + 
  box_boxoptions_solatradereporting_atr_v4_5.cmta_broker.size + 
  box_boxoptions_solatradereporting_atr_v4_5.account_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.subtrader_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.open_close.size + 
  box_boxoptions_solatradereporting_atr_v4_5.executing_broker.size + 
  box_boxoptions_solatradereporting_atr_v4_5.client_account_number.size + 
  box_boxoptions_solatradereporting_atr_v4_5.client_order_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.client_memo.size + 
  box_boxoptions_solatradereporting_atr_v4_5.liquidity_status.size + 
  box_boxoptions_solatradereporting_atr_v4_5.trade_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.opposite_account_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.participant_session_name.size + 
  box_boxoptions_solatradereporting_atr_v4_5.unique_transaction_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.parent_transaction_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.opposite_executing_broker.size + 
  box_boxoptions_solatradereporting_atr_v4_5.additional_client_memo.size

-- Display: Trade Cancel
box_boxoptions_solatradereporting_atr_v4_5.trade_cancel.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel
box_boxoptions_solatradereporting_atr_v4_5.trade_cancel.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Number: A
  index, trade_number = box_boxoptions_solatradereporting_atr_v4_5.trade_number.dissect(buffer, index, packet, parent)

  -- Transaction Type: A
  index, transaction_type = box_boxoptions_solatradereporting_atr_v4_5.transaction_type.dissect(buffer, index, packet, parent)

  -- Timestamp: A
  index, timestamp = box_boxoptions_solatradereporting_atr_v4_5.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: A
  index, symbol = box_boxoptions_solatradereporting_atr_v4_5.symbol.dissect(buffer, index, packet, parent)

  -- Expiration Date: A
  index, expiration_date = box_boxoptions_solatradereporting_atr_v4_5.expiration_date.dissect(buffer, index, packet, parent)

  -- Strike Price: N
  index, strike_price = box_boxoptions_solatradereporting_atr_v4_5.strike_price.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: A
  index, strike_price_fraction_indicator = box_boxoptions_solatradereporting_atr_v4_5.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Option Type: A
  index, option_type = box_boxoptions_solatradereporting_atr_v4_5.option_type.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = box_boxoptions_solatradereporting_atr_v4_5.volume.dissect(buffer, index, packet, parent)

  -- Price X 10000: N
  index, price_x_10000 = box_boxoptions_solatradereporting_atr_v4_5.price_x_10000.dissect(buffer, index, packet, parent)

  -- Cmta Broker: N
  index, cmta_broker = box_boxoptions_solatradereporting_atr_v4_5.cmta_broker.dissect(buffer, index, packet, parent)

  -- Account Type: A
  index, account_type = box_boxoptions_solatradereporting_atr_v4_5.account_type.dissect(buffer, index, packet, parent)

  -- Subtrader Id: A
  index, subtrader_id = box_boxoptions_solatradereporting_atr_v4_5.subtrader_id.dissect(buffer, index, packet, parent)

  -- Open Close: A
  index, open_close = box_boxoptions_solatradereporting_atr_v4_5.open_close.dissect(buffer, index, packet, parent)

  -- Executing Broker: N
  index, executing_broker = box_boxoptions_solatradereporting_atr_v4_5.executing_broker.dissect(buffer, index, packet, parent)

  -- Client Account Number: A
  index, client_account_number = box_boxoptions_solatradereporting_atr_v4_5.client_account_number.dissect(buffer, index, packet, parent)

  -- Client Order Id: A
  index, client_order_id = box_boxoptions_solatradereporting_atr_v4_5.client_order_id.dissect(buffer, index, packet, parent)

  -- Client Memo: A
  index, client_memo = box_boxoptions_solatradereporting_atr_v4_5.client_memo.dissect(buffer, index, packet, parent)

  -- Liquidity Status: A
  index, liquidity_status = box_boxoptions_solatradereporting_atr_v4_5.liquidity_status.dissect(buffer, index, packet, parent)

  -- Trade Type: A
  index, trade_type = box_boxoptions_solatradereporting_atr_v4_5.trade_type.dissect(buffer, index, packet, parent)

  -- Opposite Account Type: A
  index, opposite_account_type = box_boxoptions_solatradereporting_atr_v4_5.opposite_account_type.dissect(buffer, index, packet, parent)

  -- Participant Session Name: A
  index, participant_session_name = box_boxoptions_solatradereporting_atr_v4_5.participant_session_name.dissect(buffer, index, packet, parent)

  -- Unique Transaction Id: N
  index, unique_transaction_id = box_boxoptions_solatradereporting_atr_v4_5.unique_transaction_id.dissect(buffer, index, packet, parent)

  -- Parent Transaction Id: N
  index, parent_transaction_id = box_boxoptions_solatradereporting_atr_v4_5.parent_transaction_id.dissect(buffer, index, packet, parent)

  -- Opposite Executing Broker: N
  index, opposite_executing_broker = box_boxoptions_solatradereporting_atr_v4_5.opposite_executing_broker.dissect(buffer, index, packet, parent)

  -- Additional Client Memo: A
  index, additional_client_memo = box_boxoptions_solatradereporting_atr_v4_5.additional_client_memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel
box_boxoptions_solatradereporting_atr_v4_5.trade_cancel.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.trade_cancel, buffer(offset, 0))
    local index = box_boxoptions_solatradereporting_atr_v4_5.trade_cancel.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solatradereporting_atr_v4_5.trade_cancel.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solatradereporting_atr_v4_5.trade_cancel.fields(buffer, offset, packet, parent)
  end
end

-- Trade
box_boxoptions_solatradereporting_atr_v4_5.trade = {}

-- Size: Trade
box_boxoptions_solatradereporting_atr_v4_5.trade.size =
  box_boxoptions_solatradereporting_atr_v4_5.trade_number.size + 
  box_boxoptions_solatradereporting_atr_v4_5.transaction_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.timestamp.size + 
  box_boxoptions_solatradereporting_atr_v4_5.symbol.size + 
  box_boxoptions_solatradereporting_atr_v4_5.expiration_date.size + 
  box_boxoptions_solatradereporting_atr_v4_5.strike_price.size + 
  box_boxoptions_solatradereporting_atr_v4_5.strike_price_fraction_indicator.size + 
  box_boxoptions_solatradereporting_atr_v4_5.option_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.volume.size + 
  box_boxoptions_solatradereporting_atr_v4_5.price_x_10000.size + 
  box_boxoptions_solatradereporting_atr_v4_5.cmta_broker.size + 
  box_boxoptions_solatradereporting_atr_v4_5.account_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.subtrader_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.open_close.size + 
  box_boxoptions_solatradereporting_atr_v4_5.executing_broker.size + 
  box_boxoptions_solatradereporting_atr_v4_5.client_account_number.size + 
  box_boxoptions_solatradereporting_atr_v4_5.client_order_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.client_memo.size + 
  box_boxoptions_solatradereporting_atr_v4_5.liquidity_status.size + 
  box_boxoptions_solatradereporting_atr_v4_5.trade_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.opposite_account_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.participant_session_name.size + 
  box_boxoptions_solatradereporting_atr_v4_5.unique_transaction_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.parent_transaction_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.opposite_executing_broker.size + 
  box_boxoptions_solatradereporting_atr_v4_5.additional_client_memo.size

-- Display: Trade
box_boxoptions_solatradereporting_atr_v4_5.trade.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade
box_boxoptions_solatradereporting_atr_v4_5.trade.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Number: A
  index, trade_number = box_boxoptions_solatradereporting_atr_v4_5.trade_number.dissect(buffer, index, packet, parent)

  -- Transaction Type: A
  index, transaction_type = box_boxoptions_solatradereporting_atr_v4_5.transaction_type.dissect(buffer, index, packet, parent)

  -- Timestamp: A
  index, timestamp = box_boxoptions_solatradereporting_atr_v4_5.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: A
  index, symbol = box_boxoptions_solatradereporting_atr_v4_5.symbol.dissect(buffer, index, packet, parent)

  -- Expiration Date: A
  index, expiration_date = box_boxoptions_solatradereporting_atr_v4_5.expiration_date.dissect(buffer, index, packet, parent)

  -- Strike Price: N
  index, strike_price = box_boxoptions_solatradereporting_atr_v4_5.strike_price.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: A
  index, strike_price_fraction_indicator = box_boxoptions_solatradereporting_atr_v4_5.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Option Type: A
  index, option_type = box_boxoptions_solatradereporting_atr_v4_5.option_type.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = box_boxoptions_solatradereporting_atr_v4_5.volume.dissect(buffer, index, packet, parent)

  -- Price X 10000: N
  index, price_x_10000 = box_boxoptions_solatradereporting_atr_v4_5.price_x_10000.dissect(buffer, index, packet, parent)

  -- Cmta Broker: N
  index, cmta_broker = box_boxoptions_solatradereporting_atr_v4_5.cmta_broker.dissect(buffer, index, packet, parent)

  -- Account Type: A
  index, account_type = box_boxoptions_solatradereporting_atr_v4_5.account_type.dissect(buffer, index, packet, parent)

  -- Subtrader Id: A
  index, subtrader_id = box_boxoptions_solatradereporting_atr_v4_5.subtrader_id.dissect(buffer, index, packet, parent)

  -- Open Close: A
  index, open_close = box_boxoptions_solatradereporting_atr_v4_5.open_close.dissect(buffer, index, packet, parent)

  -- Executing Broker: N
  index, executing_broker = box_boxoptions_solatradereporting_atr_v4_5.executing_broker.dissect(buffer, index, packet, parent)

  -- Client Account Number: A
  index, client_account_number = box_boxoptions_solatradereporting_atr_v4_5.client_account_number.dissect(buffer, index, packet, parent)

  -- Client Order Id: A
  index, client_order_id = box_boxoptions_solatradereporting_atr_v4_5.client_order_id.dissect(buffer, index, packet, parent)

  -- Client Memo: A
  index, client_memo = box_boxoptions_solatradereporting_atr_v4_5.client_memo.dissect(buffer, index, packet, parent)

  -- Liquidity Status: A
  index, liquidity_status = box_boxoptions_solatradereporting_atr_v4_5.liquidity_status.dissect(buffer, index, packet, parent)

  -- Trade Type: A
  index, trade_type = box_boxoptions_solatradereporting_atr_v4_5.trade_type.dissect(buffer, index, packet, parent)

  -- Opposite Account Type: A
  index, opposite_account_type = box_boxoptions_solatradereporting_atr_v4_5.opposite_account_type.dissect(buffer, index, packet, parent)

  -- Participant Session Name: A
  index, participant_session_name = box_boxoptions_solatradereporting_atr_v4_5.participant_session_name.dissect(buffer, index, packet, parent)

  -- Unique Transaction Id: N
  index, unique_transaction_id = box_boxoptions_solatradereporting_atr_v4_5.unique_transaction_id.dissect(buffer, index, packet, parent)

  -- Parent Transaction Id: N
  index, parent_transaction_id = box_boxoptions_solatradereporting_atr_v4_5.parent_transaction_id.dissect(buffer, index, packet, parent)

  -- Opposite Executing Broker: N
  index, opposite_executing_broker = box_boxoptions_solatradereporting_atr_v4_5.opposite_executing_broker.dissect(buffer, index, packet, parent)

  -- Additional Client Memo: A
  index, additional_client_memo = box_boxoptions_solatradereporting_atr_v4_5.additional_client_memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade
box_boxoptions_solatradereporting_atr_v4_5.trade.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.trade, buffer(offset, 0))
    local index = box_boxoptions_solatradereporting_atr_v4_5.trade.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solatradereporting_atr_v4_5.trade.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solatradereporting_atr_v4_5.trade.fields(buffer, offset, packet, parent)
  end
end

-- Client Signon Acknowledgment
box_boxoptions_solatradereporting_atr_v4_5.client_signon_acknowledgment = {}

-- Size: Client Signon Acknowledgment
box_boxoptions_solatradereporting_atr_v4_5.client_signon_acknowledgment.size =
  box_boxoptions_solatradereporting_atr_v4_5.last_user_sequence_number.size

-- Display: Client Signon Acknowledgment
box_boxoptions_solatradereporting_atr_v4_5.client_signon_acknowledgment.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Signon Acknowledgment
box_boxoptions_solatradereporting_atr_v4_5.client_signon_acknowledgment.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last User Sequence Number: N
  index, last_user_sequence_number = box_boxoptions_solatradereporting_atr_v4_5.last_user_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Signon Acknowledgment
box_boxoptions_solatradereporting_atr_v4_5.client_signon_acknowledgment.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.client_signon_acknowledgment, buffer(offset, 0))
    local index = box_boxoptions_solatradereporting_atr_v4_5.client_signon_acknowledgment.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solatradereporting_atr_v4_5.client_signon_acknowledgment.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solatradereporting_atr_v4_5.client_signon_acknowledgment.fields(buffer, offset, packet, parent)
  end
end

-- End Of Trading
box_boxoptions_solatradereporting_atr_v4_5.end_of_trading = {}

-- Display: End Of Trading
box_boxoptions_solatradereporting_atr_v4_5.end_of_trading.display = function(packet, parent, length)
  return "End Of Trading"
end


-- Dissect: End Of Trading
box_boxoptions_solatradereporting_atr_v4_5.end_of_trading.dissect = function(buffer, offset, packet, parent)
  local display = box_boxoptions_solatradereporting_atr_v4_5.end_of_trading.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Restart Accepted
box_boxoptions_solatradereporting_atr_v4_5.restart_accepted = {}

-- Display: Restart Accepted
box_boxoptions_solatradereporting_atr_v4_5.restart_accepted.display = function(packet, parent, length)
  return "Restart Accepted"
end


-- Dissect: Restart Accepted
box_boxoptions_solatradereporting_atr_v4_5.restart_accepted.dissect = function(buffer, offset, packet, parent)
  local display = box_boxoptions_solatradereporting_atr_v4_5.restart_accepted.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Circuit Assurance
box_boxoptions_solatradereporting_atr_v4_5.circuit_assurance = {}

-- Display: Circuit Assurance
box_boxoptions_solatradereporting_atr_v4_5.circuit_assurance.display = function(packet, parent, length)
  return "Circuit Assurance"
end


-- Dissect: Circuit Assurance
box_boxoptions_solatradereporting_atr_v4_5.circuit_assurance.dissect = function(buffer, offset, packet, parent)
  local display = box_boxoptions_solatradereporting_atr_v4_5.circuit_assurance.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Start Of Day
box_boxoptions_solatradereporting_atr_v4_5.start_of_day = {}

-- Display: Start Of Day
box_boxoptions_solatradereporting_atr_v4_5.start_of_day.display = function(packet, parent, length)
  return "Start Of Day"
end


-- Dissect: Start Of Day
box_boxoptions_solatradereporting_atr_v4_5.start_of_day.dissect = function(buffer, offset, packet, parent)
  local display = box_boxoptions_solatradereporting_atr_v4_5.start_of_day.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Message
box_boxoptions_solatradereporting_atr_v4_5.server_message = {}

-- Dissect: Server Message
box_boxoptions_solatradereporting_atr_v4_5.server_message.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Start Of Day
  if message_type == "00" then
    return box_boxoptions_solatradereporting_atr_v4_5.start_of_day.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Circuit Assurance
  if message_type == "02" then
    return box_boxoptions_solatradereporting_atr_v4_5.circuit_assurance.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Restart Accepted
  if message_type == "05" then
    return box_boxoptions_solatradereporting_atr_v4_5.restart_accepted.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Trading
  if message_type == "08" then
    return box_boxoptions_solatradereporting_atr_v4_5.end_of_trading.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Signon Acknowledgment
  if message_type == "10" then
    return box_boxoptions_solatradereporting_atr_v4_5.client_signon_acknowledgment.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade
  if message_type == "30" then
    return box_boxoptions_solatradereporting_atr_v4_5.trade.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel
  if message_type == "31" then
    return box_boxoptions_solatradereporting_atr_v4_5.trade_cancel.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Allocation
  if message_type == "40" then
    return box_boxoptions_solatradereporting_atr_v4_5.allocation.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Allocation Cancel
  if message_type == "41" then
    return box_boxoptions_solatradereporting_atr_v4_5.allocation_cancel.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Give Up
  if message_type == "50" then
    return box_boxoptions_solatradereporting_atr_v4_5.give_up.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Give Up Cancel
  if message_type == "51" then
    return box_boxoptions_solatradereporting_atr_v4_5.give_up_cancel.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Acknowledgement Message
  if message_type == "98" then
    return box_boxoptions_solatradereporting_atr_v4_5.acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Error Message
  if message_type == "99" then
    return box_boxoptions_solatradereporting_atr_v4_5.error_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
box_boxoptions_solatradereporting_atr_v4_5.message_header = {}

-- Size: Message Header
box_boxoptions_solatradereporting_atr_v4_5.message_header.size =
  box_boxoptions_solatradereporting_atr_v4_5.source.size + 
  box_boxoptions_solatradereporting_atr_v4_5.destination.size + 
  box_boxoptions_solatradereporting_atr_v4_5.message_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.message_flag.size + 
  box_boxoptions_solatradereporting_atr_v4_5.control_byte.size + 
  box_boxoptions_solatradereporting_atr_v4_5.sequence_number.size + 
  box_boxoptions_solatradereporting_atr_v4_5.acknowledgement_sequence_number.size

-- Display: Message Header
box_boxoptions_solatradereporting_atr_v4_5.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
box_boxoptions_solatradereporting_atr_v4_5.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source: A
  index, source = box_boxoptions_solatradereporting_atr_v4_5.source.dissect(buffer, index, packet, parent)

  -- Destination: A
  index, destination = box_boxoptions_solatradereporting_atr_v4_5.destination.dissect(buffer, index, packet, parent)

  -- Message Type: N
  index, message_type = box_boxoptions_solatradereporting_atr_v4_5.message_type.dissect(buffer, index, packet, parent)

  -- Message Flag: A
  index, message_flag = box_boxoptions_solatradereporting_atr_v4_5.message_flag.dissect(buffer, index, packet, parent)

  -- Control Byte: A
  index, control_byte = box_boxoptions_solatradereporting_atr_v4_5.control_byte.dissect(buffer, index, packet, parent)

  -- Sequence Number: N
  index, sequence_number = box_boxoptions_solatradereporting_atr_v4_5.sequence_number.dissect(buffer, index, packet, parent)

  -- Acknowledgement Sequence Number: N
  index, acknowledgement_sequence_number = box_boxoptions_solatradereporting_atr_v4_5.acknowledgement_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
box_boxoptions_solatradereporting_atr_v4_5.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.message_header, buffer(offset, 0))
    local index = box_boxoptions_solatradereporting_atr_v4_5.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solatradereporting_atr_v4_5.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solatradereporting_atr_v4_5.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Packet
box_boxoptions_solatradereporting_atr_v4_5.server_packet = {}

-- Verify required size of Tcp packet
box_boxoptions_solatradereporting_atr_v4_5.server_packet.requiredsize = function(buffer)
  return buffer:len() >= box_boxoptions_solatradereporting_atr_v4_5.message_header.size
end

-- Dissect Server Packet
box_boxoptions_solatradereporting_atr_v4_5.server_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Message Header: Struct of 7 fields
  index, message_header = box_boxoptions_solatradereporting_atr_v4_5.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 20, 2):string()

  -- Server Message: Runtime Type with 13 branches
  index = box_boxoptions_solatradereporting_atr_v4_5.server_message.dissect(buffer, index, packet, parent, message_type)

  -- End Of Text: A
  index, end_of_text = box_boxoptions_solatradereporting_atr_v4_5.end_of_text.dissect(buffer, index, packet, parent)

  return index
end

-- Delete Give Up
box_boxoptions_solatradereporting_atr_v4_5.delete_give_up = {}

-- Size: Delete Give Up
box_boxoptions_solatradereporting_atr_v4_5.delete_give_up.size =
  box_boxoptions_solatradereporting_atr_v4_5.reference_transaction_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.reference_trade_number.size

-- Display: Delete Give Up
box_boxoptions_solatradereporting_atr_v4_5.delete_give_up.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Give Up
box_boxoptions_solatradereporting_atr_v4_5.delete_give_up.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reference Transaction Id: N
  index, reference_transaction_id = box_boxoptions_solatradereporting_atr_v4_5.reference_transaction_id.dissect(buffer, index, packet, parent)

  -- Reference Trade Number: A
  index, reference_trade_number = box_boxoptions_solatradereporting_atr_v4_5.reference_trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Give Up
box_boxoptions_solatradereporting_atr_v4_5.delete_give_up.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.delete_give_up, buffer(offset, 0))
    local index = box_boxoptions_solatradereporting_atr_v4_5.delete_give_up.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solatradereporting_atr_v4_5.delete_give_up.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solatradereporting_atr_v4_5.delete_give_up.fields(buffer, offset, packet, parent)
  end
end

-- Modify Give Up
box_boxoptions_solatradereporting_atr_v4_5.modify_give_up = {}

-- Size: Modify Give Up
box_boxoptions_solatradereporting_atr_v4_5.modify_give_up.size =
  box_boxoptions_solatradereporting_atr_v4_5.reference_transaction_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.reference_trade_number.size + 
  box_boxoptions_solatradereporting_atr_v4_5.give_up_firm.size + 
  box_boxoptions_solatradereporting_atr_v4_5.volume.size + 
  box_boxoptions_solatradereporting_atr_v4_5.account_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.open_close.size + 
  box_boxoptions_solatradereporting_atr_v4_5.client_account_number.size + 
  box_boxoptions_solatradereporting_atr_v4_5.subtrader_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.cmta_broker.size + 
  box_boxoptions_solatradereporting_atr_v4_5.client_memo.size + 
  box_boxoptions_solatradereporting_atr_v4_5.additional_firm.size + 
  box_boxoptions_solatradereporting_atr_v4_5.additional_client_memo.size

-- Display: Modify Give Up
box_boxoptions_solatradereporting_atr_v4_5.modify_give_up.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Give Up
box_boxoptions_solatradereporting_atr_v4_5.modify_give_up.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reference Transaction Id: N
  index, reference_transaction_id = box_boxoptions_solatradereporting_atr_v4_5.reference_transaction_id.dissect(buffer, index, packet, parent)

  -- Reference Trade Number: A
  index, reference_trade_number = box_boxoptions_solatradereporting_atr_v4_5.reference_trade_number.dissect(buffer, index, packet, parent)

  -- Give Up Firm: A
  index, give_up_firm = box_boxoptions_solatradereporting_atr_v4_5.give_up_firm.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = box_boxoptions_solatradereporting_atr_v4_5.volume.dissect(buffer, index, packet, parent)

  -- Account Type: A
  index, account_type = box_boxoptions_solatradereporting_atr_v4_5.account_type.dissect(buffer, index, packet, parent)

  -- Open Close: A
  index, open_close = box_boxoptions_solatradereporting_atr_v4_5.open_close.dissect(buffer, index, packet, parent)

  -- Client Account Number: A
  index, client_account_number = box_boxoptions_solatradereporting_atr_v4_5.client_account_number.dissect(buffer, index, packet, parent)

  -- Subtrader Id: A
  index, subtrader_id = box_boxoptions_solatradereporting_atr_v4_5.subtrader_id.dissect(buffer, index, packet, parent)

  -- Cmta Broker: N
  index, cmta_broker = box_boxoptions_solatradereporting_atr_v4_5.cmta_broker.dissect(buffer, index, packet, parent)

  -- Client Memo: A
  index, client_memo = box_boxoptions_solatradereporting_atr_v4_5.client_memo.dissect(buffer, index, packet, parent)

  -- Additional Firm: N
  index, additional_firm = box_boxoptions_solatradereporting_atr_v4_5.additional_firm.dissect(buffer, index, packet, parent)

  -- Additional Client Memo: A
  index, additional_client_memo = box_boxoptions_solatradereporting_atr_v4_5.additional_client_memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Give Up
box_boxoptions_solatradereporting_atr_v4_5.modify_give_up.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.modify_give_up, buffer(offset, 0))
    local index = box_boxoptions_solatradereporting_atr_v4_5.modify_give_up.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solatradereporting_atr_v4_5.modify_give_up.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solatradereporting_atr_v4_5.modify_give_up.fields(buffer, offset, packet, parent)
  end
end

-- New Give Up
box_boxoptions_solatradereporting_atr_v4_5.new_give_up = {}

-- Size: New Give Up
box_boxoptions_solatradereporting_atr_v4_5.new_give_up.size =
  box_boxoptions_solatradereporting_atr_v4_5.reference_transaction_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.reference_trade_number.size + 
  box_boxoptions_solatradereporting_atr_v4_5.give_up_firm.size + 
  box_boxoptions_solatradereporting_atr_v4_5.volume.size + 
  box_boxoptions_solatradereporting_atr_v4_5.account_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.open_close.size + 
  box_boxoptions_solatradereporting_atr_v4_5.client_account_number.size + 
  box_boxoptions_solatradereporting_atr_v4_5.subtrader_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.cmta_broker.size + 
  box_boxoptions_solatradereporting_atr_v4_5.client_memo.size + 
  box_boxoptions_solatradereporting_atr_v4_5.additional_firm.size + 
  box_boxoptions_solatradereporting_atr_v4_5.additional_client_memo.size

-- Display: New Give Up
box_boxoptions_solatradereporting_atr_v4_5.new_give_up.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Give Up
box_boxoptions_solatradereporting_atr_v4_5.new_give_up.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reference Transaction Id: N
  index, reference_transaction_id = box_boxoptions_solatradereporting_atr_v4_5.reference_transaction_id.dissect(buffer, index, packet, parent)

  -- Reference Trade Number: A
  index, reference_trade_number = box_boxoptions_solatradereporting_atr_v4_5.reference_trade_number.dissect(buffer, index, packet, parent)

  -- Give Up Firm: A
  index, give_up_firm = box_boxoptions_solatradereporting_atr_v4_5.give_up_firm.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = box_boxoptions_solatradereporting_atr_v4_5.volume.dissect(buffer, index, packet, parent)

  -- Account Type: A
  index, account_type = box_boxoptions_solatradereporting_atr_v4_5.account_type.dissect(buffer, index, packet, parent)

  -- Open Close: A
  index, open_close = box_boxoptions_solatradereporting_atr_v4_5.open_close.dissect(buffer, index, packet, parent)

  -- Client Account Number: A
  index, client_account_number = box_boxoptions_solatradereporting_atr_v4_5.client_account_number.dissect(buffer, index, packet, parent)

  -- Subtrader Id: A
  index, subtrader_id = box_boxoptions_solatradereporting_atr_v4_5.subtrader_id.dissect(buffer, index, packet, parent)

  -- Cmta Broker: N
  index, cmta_broker = box_boxoptions_solatradereporting_atr_v4_5.cmta_broker.dissect(buffer, index, packet, parent)

  -- Client Memo: A
  index, client_memo = box_boxoptions_solatradereporting_atr_v4_5.client_memo.dissect(buffer, index, packet, parent)

  -- Additional Firm: N
  index, additional_firm = box_boxoptions_solatradereporting_atr_v4_5.additional_firm.dissect(buffer, index, packet, parent)

  -- Additional Client Memo: A
  index, additional_client_memo = box_boxoptions_solatradereporting_atr_v4_5.additional_client_memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Give Up
box_boxoptions_solatradereporting_atr_v4_5.new_give_up.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.new_give_up, buffer(offset, 0))
    local index = box_boxoptions_solatradereporting_atr_v4_5.new_give_up.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solatradereporting_atr_v4_5.new_give_up.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solatradereporting_atr_v4_5.new_give_up.fields(buffer, offset, packet, parent)
  end
end

-- Delete Allocation
box_boxoptions_solatradereporting_atr_v4_5.delete_allocation = {}

-- Size: Delete Allocation
box_boxoptions_solatradereporting_atr_v4_5.delete_allocation.size =
  box_boxoptions_solatradereporting_atr_v4_5.reference_transaction_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.reference_trade_number.size

-- Display: Delete Allocation
box_boxoptions_solatradereporting_atr_v4_5.delete_allocation.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Allocation
box_boxoptions_solatradereporting_atr_v4_5.delete_allocation.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reference Transaction Id: N
  index, reference_transaction_id = box_boxoptions_solatradereporting_atr_v4_5.reference_transaction_id.dissect(buffer, index, packet, parent)

  -- Reference Trade Number: A
  index, reference_trade_number = box_boxoptions_solatradereporting_atr_v4_5.reference_trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Allocation
box_boxoptions_solatradereporting_atr_v4_5.delete_allocation.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.delete_allocation, buffer(offset, 0))
    local index = box_boxoptions_solatradereporting_atr_v4_5.delete_allocation.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solatradereporting_atr_v4_5.delete_allocation.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solatradereporting_atr_v4_5.delete_allocation.fields(buffer, offset, packet, parent)
  end
end

-- Modify Allocation
box_boxoptions_solatradereporting_atr_v4_5.modify_allocation = {}

-- Size: Modify Allocation
box_boxoptions_solatradereporting_atr_v4_5.modify_allocation.size =
  box_boxoptions_solatradereporting_atr_v4_5.reference_transaction_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.reference_trade_number.size + 
  box_boxoptions_solatradereporting_atr_v4_5.give_up_firm.size + 
  box_boxoptions_solatradereporting_atr_v4_5.volume.size + 
  box_boxoptions_solatradereporting_atr_v4_5.account_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.open_close.size + 
  box_boxoptions_solatradereporting_atr_v4_5.client_account_number.size + 
  box_boxoptions_solatradereporting_atr_v4_5.subtrader_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.cmta_broker.size + 
  box_boxoptions_solatradereporting_atr_v4_5.client_memo.size + 
  box_boxoptions_solatradereporting_atr_v4_5.additional_firm.size + 
  box_boxoptions_solatradereporting_atr_v4_5.additional_client_memo.size

-- Display: Modify Allocation
box_boxoptions_solatradereporting_atr_v4_5.modify_allocation.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Allocation
box_boxoptions_solatradereporting_atr_v4_5.modify_allocation.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reference Transaction Id: N
  index, reference_transaction_id = box_boxoptions_solatradereporting_atr_v4_5.reference_transaction_id.dissect(buffer, index, packet, parent)

  -- Reference Trade Number: A
  index, reference_trade_number = box_boxoptions_solatradereporting_atr_v4_5.reference_trade_number.dissect(buffer, index, packet, parent)

  -- Give Up Firm: A
  index, give_up_firm = box_boxoptions_solatradereporting_atr_v4_5.give_up_firm.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = box_boxoptions_solatradereporting_atr_v4_5.volume.dissect(buffer, index, packet, parent)

  -- Account Type: A
  index, account_type = box_boxoptions_solatradereporting_atr_v4_5.account_type.dissect(buffer, index, packet, parent)

  -- Open Close: A
  index, open_close = box_boxoptions_solatradereporting_atr_v4_5.open_close.dissect(buffer, index, packet, parent)

  -- Client Account Number: A
  index, client_account_number = box_boxoptions_solatradereporting_atr_v4_5.client_account_number.dissect(buffer, index, packet, parent)

  -- Subtrader Id: A
  index, subtrader_id = box_boxoptions_solatradereporting_atr_v4_5.subtrader_id.dissect(buffer, index, packet, parent)

  -- Cmta Broker: N
  index, cmta_broker = box_boxoptions_solatradereporting_atr_v4_5.cmta_broker.dissect(buffer, index, packet, parent)

  -- Client Memo: A
  index, client_memo = box_boxoptions_solatradereporting_atr_v4_5.client_memo.dissect(buffer, index, packet, parent)

  -- Additional Firm: N
  index, additional_firm = box_boxoptions_solatradereporting_atr_v4_5.additional_firm.dissect(buffer, index, packet, parent)

  -- Additional Client Memo: A
  index, additional_client_memo = box_boxoptions_solatradereporting_atr_v4_5.additional_client_memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Allocation
box_boxoptions_solatradereporting_atr_v4_5.modify_allocation.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.modify_allocation, buffer(offset, 0))
    local index = box_boxoptions_solatradereporting_atr_v4_5.modify_allocation.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solatradereporting_atr_v4_5.modify_allocation.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solatradereporting_atr_v4_5.modify_allocation.fields(buffer, offset, packet, parent)
  end
end

-- New Allocation
box_boxoptions_solatradereporting_atr_v4_5.new_allocation = {}

-- Size: New Allocation
box_boxoptions_solatradereporting_atr_v4_5.new_allocation.size =
  box_boxoptions_solatradereporting_atr_v4_5.reference_transaction_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.reference_trade_number.size + 
  box_boxoptions_solatradereporting_atr_v4_5.give_up_firm.size + 
  box_boxoptions_solatradereporting_atr_v4_5.volume.size + 
  box_boxoptions_solatradereporting_atr_v4_5.account_type.size + 
  box_boxoptions_solatradereporting_atr_v4_5.open_close.size + 
  box_boxoptions_solatradereporting_atr_v4_5.client_account_number.size + 
  box_boxoptions_solatradereporting_atr_v4_5.subtrader_id.size + 
  box_boxoptions_solatradereporting_atr_v4_5.cmta_broker.size + 
  box_boxoptions_solatradereporting_atr_v4_5.client_memo.size + 
  box_boxoptions_solatradereporting_atr_v4_5.additional_firm.size + 
  box_boxoptions_solatradereporting_atr_v4_5.additional_client_memo.size

-- Display: New Allocation
box_boxoptions_solatradereporting_atr_v4_5.new_allocation.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Allocation
box_boxoptions_solatradereporting_atr_v4_5.new_allocation.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reference Transaction Id: N
  index, reference_transaction_id = box_boxoptions_solatradereporting_atr_v4_5.reference_transaction_id.dissect(buffer, index, packet, parent)

  -- Reference Trade Number: A
  index, reference_trade_number = box_boxoptions_solatradereporting_atr_v4_5.reference_trade_number.dissect(buffer, index, packet, parent)

  -- Give Up Firm: A
  index, give_up_firm = box_boxoptions_solatradereporting_atr_v4_5.give_up_firm.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = box_boxoptions_solatradereporting_atr_v4_5.volume.dissect(buffer, index, packet, parent)

  -- Account Type: A
  index, account_type = box_boxoptions_solatradereporting_atr_v4_5.account_type.dissect(buffer, index, packet, parent)

  -- Open Close: A
  index, open_close = box_boxoptions_solatradereporting_atr_v4_5.open_close.dissect(buffer, index, packet, parent)

  -- Client Account Number: A
  index, client_account_number = box_boxoptions_solatradereporting_atr_v4_5.client_account_number.dissect(buffer, index, packet, parent)

  -- Subtrader Id: A
  index, subtrader_id = box_boxoptions_solatradereporting_atr_v4_5.subtrader_id.dissect(buffer, index, packet, parent)

  -- Cmta Broker: N
  index, cmta_broker = box_boxoptions_solatradereporting_atr_v4_5.cmta_broker.dissect(buffer, index, packet, parent)

  -- Client Memo: A
  index, client_memo = box_boxoptions_solatradereporting_atr_v4_5.client_memo.dissect(buffer, index, packet, parent)

  -- Additional Firm: N
  index, additional_firm = box_boxoptions_solatradereporting_atr_v4_5.additional_firm.dissect(buffer, index, packet, parent)

  -- Additional Client Memo: A
  index, additional_client_memo = box_boxoptions_solatradereporting_atr_v4_5.additional_client_memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Allocation
box_boxoptions_solatradereporting_atr_v4_5.new_allocation.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.new_allocation, buffer(offset, 0))
    local index = box_boxoptions_solatradereporting_atr_v4_5.new_allocation.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solatradereporting_atr_v4_5.new_allocation.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solatradereporting_atr_v4_5.new_allocation.fields(buffer, offset, packet, parent)
  end
end

-- Client Signon
box_boxoptions_solatradereporting_atr_v4_5.client_signon = {}

-- Size: Client Signon
box_boxoptions_solatradereporting_atr_v4_5.client_signon.size =
  box_boxoptions_solatradereporting_atr_v4_5.member_number.size + 
  box_boxoptions_solatradereporting_atr_v4_5.initial_sequence_number.size + 
  box_boxoptions_solatradereporting_atr_v4_5.protocol_version.size + 
  box_boxoptions_solatradereporting_atr_v4_5.time.size + 
  box_boxoptions_solatradereporting_atr_v4_5.username.size + 
  box_boxoptions_solatradereporting_atr_v4_5.password_md_5_encryption.size

-- Display: Client Signon
box_boxoptions_solatradereporting_atr_v4_5.client_signon.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Signon
box_boxoptions_solatradereporting_atr_v4_5.client_signon.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Member Number: N
  index, member_number = box_boxoptions_solatradereporting_atr_v4_5.member_number.dissect(buffer, index, packet, parent)

  -- Initial Sequence Number: N
  index, initial_sequence_number = box_boxoptions_solatradereporting_atr_v4_5.initial_sequence_number.dissect(buffer, index, packet, parent)

  -- Protocol Version: A
  index, protocol_version = box_boxoptions_solatradereporting_atr_v4_5.protocol_version.dissect(buffer, index, packet, parent)

  -- Time: N
  index, time = box_boxoptions_solatradereporting_atr_v4_5.time.dissect(buffer, index, packet, parent)

  -- Username: X
  index, username = box_boxoptions_solatradereporting_atr_v4_5.username.dissect(buffer, index, packet, parent)

  -- Password Md 5 Encryption: X
  index, password_md_5_encryption = box_boxoptions_solatradereporting_atr_v4_5.password_md_5_encryption.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Signon
box_boxoptions_solatradereporting_atr_v4_5.client_signon.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.client_signon, buffer(offset, 0))
    local index = box_boxoptions_solatradereporting_atr_v4_5.client_signon.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solatradereporting_atr_v4_5.client_signon.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solatradereporting_atr_v4_5.client_signon.fields(buffer, offset, packet, parent)
  end
end

-- Restart Request
box_boxoptions_solatradereporting_atr_v4_5.restart_request = {}

-- Size: Restart Request
box_boxoptions_solatradereporting_atr_v4_5.restart_request.size =
  box_boxoptions_solatradereporting_atr_v4_5.sequence_number.size

-- Display: Restart Request
box_boxoptions_solatradereporting_atr_v4_5.restart_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Restart Request
box_boxoptions_solatradereporting_atr_v4_5.restart_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: N
  index, sequence_number = box_boxoptions_solatradereporting_atr_v4_5.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Restart Request
box_boxoptions_solatradereporting_atr_v4_5.restart_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5.fields.restart_request, buffer(offset, 0))
    local index = box_boxoptions_solatradereporting_atr_v4_5.restart_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_boxoptions_solatradereporting_atr_v4_5.restart_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_boxoptions_solatradereporting_atr_v4_5.restart_request.fields(buffer, offset, packet, parent)
  end
end

-- Circuit Response
box_boxoptions_solatradereporting_atr_v4_5.circuit_response = {}

-- Display: Circuit Response
box_boxoptions_solatradereporting_atr_v4_5.circuit_response.display = function(packet, parent, length)
  return "Circuit Response"
end


-- Dissect: Circuit Response
box_boxoptions_solatradereporting_atr_v4_5.circuit_response.dissect = function(buffer, offset, packet, parent)
  local display = box_boxoptions_solatradereporting_atr_v4_5.circuit_response.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Start Of Day Acknowledgement
box_boxoptions_solatradereporting_atr_v4_5.start_of_day_acknowledgement = {}

-- Display: Start Of Day Acknowledgement
box_boxoptions_solatradereporting_atr_v4_5.start_of_day_acknowledgement.display = function(packet, parent, length)
  return "Start Of Day Acknowledgement"
end


-- Dissect: Start Of Day Acknowledgement
box_boxoptions_solatradereporting_atr_v4_5.start_of_day_acknowledgement.dissect = function(buffer, offset, packet, parent)
  local display = box_boxoptions_solatradereporting_atr_v4_5.start_of_day_acknowledgement.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Message
box_boxoptions_solatradereporting_atr_v4_5.client_message = {}

-- Dissect: Client Message
box_boxoptions_solatradereporting_atr_v4_5.client_message.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Start Of Day Acknowledgement
  if message_type == "01" then
    return box_boxoptions_solatradereporting_atr_v4_5.start_of_day_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Circuit Response
  if message_type == "03" then
    return box_boxoptions_solatradereporting_atr_v4_5.circuit_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Restart Request
  if message_type == "04" then
    return box_boxoptions_solatradereporting_atr_v4_5.restart_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Signon
  if message_type == "09" then
    return box_boxoptions_solatradereporting_atr_v4_5.client_signon.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Allocation
  if message_type == "42" then
    return box_boxoptions_solatradereporting_atr_v4_5.new_allocation.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Allocation
  if message_type == "43" then
    return box_boxoptions_solatradereporting_atr_v4_5.modify_allocation.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Allocation
  if message_type == "44" then
    return box_boxoptions_solatradereporting_atr_v4_5.delete_allocation.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Give Up
  if message_type == "52" then
    return box_boxoptions_solatradereporting_atr_v4_5.new_give_up.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Give Up
  if message_type == "53" then
    return box_boxoptions_solatradereporting_atr_v4_5.modify_give_up.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Give Up
  if message_type == "54" then
    return box_boxoptions_solatradereporting_atr_v4_5.delete_give_up.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet
box_boxoptions_solatradereporting_atr_v4_5.client_packet = {}

-- Verify required size of Tcp packet
box_boxoptions_solatradereporting_atr_v4_5.client_packet.requiredsize = function(buffer)
  return buffer:len() >= box_boxoptions_solatradereporting_atr_v4_5.message_header.size
end

-- Dissect Client Packet
box_boxoptions_solatradereporting_atr_v4_5.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Message Header: Struct of 7 fields
  index, message_header = box_boxoptions_solatradereporting_atr_v4_5.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 20, 2):string()

  -- Client Message: Runtime Type with 10 branches
  index = box_boxoptions_solatradereporting_atr_v4_5.client_message.dissect(buffer, index, packet, parent, message_type)

  -- End Of Text: A
  index, end_of_text = box_boxoptions_solatradereporting_atr_v4_5.end_of_text.dissect(buffer, index, packet, parent)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_box_boxoptions_solatradereporting_atr_v4_5.init()
end

-- Connection roles for Box BoxOptions SolaTradeReporting Atr 4.5: Client is the initiator, Server is the acceptor
-- Initiator endpoint of each conversation, recorded from its first frame
local initiators = {}

-- Conversations whose first frame proved to be the acceptor's: the heuristic swaps the sides
local swapped = {}

-- Endpoint key of an address and port
local function endpoint(address, port)
  return tostring(address)..":"..tostring(port)
end


-- Conversation key, the same in both directions
local function conversation(packet)
  local source = endpoint(packet.src, packet.src_port)
  local destination = endpoint(packet.dst, packet.dst_port)

  if source < destination then
    return source.." "..destination
  end

  return destination.." "..source
end


-- Connection role of the frame's sender
box_boxoptions_solatradereporting_atr_v4_5.role = function(packet)
  if omi_box_boxoptions_solatradereporting_atr_v4_5.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_box_boxoptions_solatradereporting_atr_v4_5.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_box_boxoptions_solatradereporting_atr_v4_5.prefs.acceptor_port

  if acceptor_port ~= 0 and packet.dst_port == acceptor_port then
    return "initiator"
  end

  if acceptor_port ~= 0 and packet.src_port == acceptor_port then
    return "acceptor"
  end

  local key = conversation(packet)
  local sender = endpoint(packet.src, packet.src_port)

  if initiators[key] == nil then
    initiators[key] = sender
  end

  local sender_initiated = initiators[key] == sender

  if omi_box_boxoptions_solatradereporting_atr_v4_5.prefs.swap_sides then
    sender_initiated = not sender_initiated
  end

  if swapped[key] then
    sender_initiated = not sender_initiated
  end

  if sender_initiated then
    return "initiator"
  end

  return "acceptor"
end


-- Swap the resolved sides of the frame's conversation
box_boxoptions_solatradereporting_atr_v4_5.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Box BoxOptions SolaTradeReporting Atr 4.5
function omi_box_boxoptions_solatradereporting_atr_v4_5.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_box_boxoptions_solatradereporting_atr_v4_5.name

  -- Dissect protocol
  local protocol = parent:add(omi_box_boxoptions_solatradereporting_atr_v4_5, buffer(), omi_box_boxoptions_solatradereporting_atr_v4_5.description, "("..buffer:len().." Bytes)")

  local role = box_boxoptions_solatradereporting_atr_v4_5.role(packet)

  if role == "initiator" then
    return box_boxoptions_solatradereporting_atr_v4_5.client_packet.dissect(buffer, packet, protocol)
  end

  return box_boxoptions_solatradereporting_atr_v4_5.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
box_boxoptions_solatradereporting_atr_v4_5.client_packet.fingerprint = function(buffer)
  if buffer:len() < 10 then
    return false
  end

  local message_type = buffer(8, 2):string()

  -- Start Of Day Acknowledgement
  if message_type == "01" then
    return true
  end

  -- Circuit Response
  if message_type == "03" then
    return true
  end

  -- Restart Request
  if message_type == "04" then
    return true
  end

  -- Client Signon
  if message_type == "09" then
    return true
  end

  -- New Allocation
  if message_type == "42" then
    return true
  end

  -- Modify Allocation
  if message_type == "43" then
    return true
  end

  -- Delete Allocation
  if message_type == "44" then
    return true
  end

  -- New Give Up
  if message_type == "52" then
    return true
  end

  -- Modify Give Up
  if message_type == "53" then
    return true
  end

  -- Delete Give Up
  if message_type == "54" then
    return true
  end

  return false
end

-- Fingerprint of Server Packet: would its message dispatch accept this frame?
box_boxoptions_solatradereporting_atr_v4_5.server_packet.fingerprint = function(buffer)
  if buffer:len() < 10 then
    return false
  end

  local message_type = buffer(8, 2):string()

  -- Start Of Day
  if message_type == "00" then
    return true
  end

  -- Circuit Assurance
  if message_type == "02" then
    return true
  end

  -- Restart Accepted
  if message_type == "05" then
    return true
  end

  -- End Of Trading
  if message_type == "08" then
    return true
  end

  -- Client Signon Acknowledgment
  if message_type == "10" then
    return true
  end

  -- Trade
  if message_type == "30" then
    return true
  end

  -- Trade Cancel
  if message_type == "31" then
    return true
  end

  -- Allocation
  if message_type == "40" then
    return true
  end

  -- Allocation Cancel
  if message_type == "41" then
    return true
  end

  -- Give Up
  if message_type == "50" then
    return true
  end

  -- Give Up Cancel
  if message_type == "51" then
    return true
  end

  -- Acknowledgement Message
  if message_type == "98" then
    return true
  end

  -- Error Message
  if message_type == "99" then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Box BoxOptions SolaTradeReporting Atr 4.5 (Tcp)
local function omi_box_boxoptions_solatradereporting_atr_v4_5_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not box_boxoptions_solatradereporting_atr_v4_5.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not box_boxoptions_solatradereporting_atr_v4_5.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_box_boxoptions_solatradereporting_atr_v4_5
  omi_box_boxoptions_solatradereporting_atr_v4_5.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Box BoxOptions SolaTradeReporting Atr 4.5 (Tcp)
local function omi_box_boxoptions_solatradereporting_atr_v4_5_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not box_boxoptions_solatradereporting_atr_v4_5.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not box_boxoptions_solatradereporting_atr_v4_5.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_box_boxoptions_solatradereporting_atr_v4_5
  omi_box_boxoptions_solatradereporting_atr_v4_5.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Box BoxOptions SolaTradeReporting Atr 4.5 (Tcp): apply the heuristic of the sender's connection role
local function omi_box_boxoptions_solatradereporting_atr_v4_5_tcp_heuristic(buffer, packet, parent)
  local role = box_boxoptions_solatradereporting_atr_v4_5.role(packet)
  local initiator = omi_box_boxoptions_solatradereporting_atr_v4_5_tcp_initiator_heuristic
  local acceptor = omi_box_boxoptions_solatradereporting_atr_v4_5_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  box_boxoptions_solatradereporting_atr_v4_5.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  box_boxoptions_solatradereporting_atr_v4_5.swap(packet)

  return false
end

-- Register Heuristics for Box BoxOptions SolaTradeReporting Atr 4.5
omi_box_boxoptions_solatradereporting_atr_v4_5:register_heuristic("tcp", omi_box_boxoptions_solatradereporting_atr_v4_5_tcp_heuristic)

-- Register Box BoxOptions SolaTradeReporting Atr 4.5 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_box_boxoptions_solatradereporting_atr_v4_5)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Box Options Market
--   Version: 4.5
--   Date: Tuesday, November 5, 2024
--   Specification: ATR-BX-001E-BOX-SOLA-ATR-Specifications-v4.5.pdf
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
