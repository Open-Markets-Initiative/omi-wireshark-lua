-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cme Globex SessionMgmt Sbe 0.2 Protocol
local omi_cme_globex_sessionmgmt_sbe_v0_2 = Proto("Omi.Cme.Globex.SessionMgmt.Sbe.v0.2", "Cme Globex SessionMgmt Sbe 0.2")

-- Protocol table
local cme_globex_sessionmgmt_sbe_v0_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cme Globex SessionMgmt Sbe 0.2 Fields
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.access_key_id = ProtoField.new("Access Key Id", "cme.globex.sessionmgmt.sbe.v0.2.accesskeyid", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.block_length = ProtoField.new("Block Length", "cme.globex.sessionmgmt.sbe.v0.2.blocklength", ftypes.UINT16)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.encoding_type = ProtoField.new("Encoding Type", "cme.globex.sessionmgmt.sbe.v0.2.encodingtype", ftypes.UINT16)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.error_codes = ProtoField.new("Error Codes", "cme.globex.sessionmgmt.sbe.v0.2.errorcodes", ftypes.UINT8)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.firm = ProtoField.new("Firm", "cme.globex.sessionmgmt.sbe.v0.2.firm", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.group_size = ProtoField.new("Group Size", "cme.globex.sessionmgmt.sbe.v0.2.groupsize", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.hmac_signature = ProtoField.new("Hmac Signature", "cme.globex.sessionmgmt.sbe.v0.2.hmacsignature", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.market_data_request_related_symbol_group = ProtoField.new("Market Data Request Related Symbol Group", "cme.globex.sessionmgmt.sbe.v0.2.marketdatarequestrelatedsymbolgroup", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.market_data_request_related_symbol_groups = ProtoField.new("Market Data Request Related Symbol Groups", "cme.globex.sessionmgmt.sbe.v0.2.marketdatarequestrelatedsymbolgroups", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.market_data_request_security_group = ProtoField.new("Market Data Request Security Group", "cme.globex.sessionmgmt.sbe.v0.2.marketdatarequestsecuritygroup", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.market_data_request_security_groups = ProtoField.new("Market Data Request Security Groups", "cme.globex.sessionmgmt.sbe.v0.2.marketdatarequestsecuritygroups", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.md_req_id = ProtoField.new("Md Req Id", "cme.globex.sessionmgmt.sbe.v0.2.mdreqid", ftypes.UINT32)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.md_req_id_optional = ProtoField.new("Md Req Id Optional", "cme.globex.sessionmgmt.sbe.v0.2.mdreqidoptional", ftypes.UINT32)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.md_req_id_status = ProtoField.new("Md Req Id Status", "cme.globex.sessionmgmt.sbe.v0.2.mdreqidstatus", ftypes.UINT8)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.md_req_rej_reason = ProtoField.new("Md Req Rej Reason", "cme.globex.sessionmgmt.sbe.v0.2.mdreqrejreason", ftypes.UINT8)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "cme.globex.sessionmgmt.sbe.v0.2.messagesequencenumber", ftypes.UINT32)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.message_size = ProtoField.new("Message Size", "cme.globex.sessionmgmt.sbe.v0.2.messagesize", ftypes.UINT16)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.num_in_group = ProtoField.new("Num In Group", "cme.globex.sessionmgmt.sbe.v0.2.numingroup", ftypes.UINT8)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.padding_4 = ProtoField.new("Padding 4", "cme.globex.sessionmgmt.sbe.v0.2.padding4", ftypes.BYTES)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.padding_5 = ProtoField.new("Padding 5", "cme.globex.sessionmgmt.sbe.v0.2.padding5", ftypes.BYTES)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.reason = ProtoField.new("Reason", "cme.globex.sessionmgmt.sbe.v0.2.reason", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.request_ack_related_symbol_group = ProtoField.new("Request Ack Related Symbol Group", "cme.globex.sessionmgmt.sbe.v0.2.requestackrelatedsymbolgroup", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.request_ack_related_symbol_groups = ProtoField.new("Request Ack Related Symbol Groups", "cme.globex.sessionmgmt.sbe.v0.2.requestackrelatedsymbolgroups", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.request_ack_security_group = ProtoField.new("Request Ack Security Group", "cme.globex.sessionmgmt.sbe.v0.2.requestacksecuritygroup", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.request_ack_security_groups = ProtoField.new("Request Ack Security Groups", "cme.globex.sessionmgmt.sbe.v0.2.requestacksecuritygroups", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.request_timestamp = ProtoField.new("Request Timestamp", "cme.globex.sessionmgmt.sbe.v0.2.requesttimestamp", ftypes.UINT64)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.schema_id = ProtoField.new("Schema Id", "cme.globex.sessionmgmt.sbe.v0.2.schemaid", ftypes.UINT16)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.secret_key_secure_id_expiration = ProtoField.new("Secret Key Secure Id Expiration", "cme.globex.sessionmgmt.sbe.v0.2.secretkeysecureidexpiration", ftypes.UINT16)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_group = ProtoField.new("Security Group", "cme.globex.sessionmgmt.sbe.v0.2.securitygroup", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_id = ProtoField.new("Security Id", "cme.globex.sessionmgmt.sbe.v0.2.securityid", ftypes.INT32)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_list_request_related_symbol_group = ProtoField.new("Security List Request Related Symbol Group", "cme.globex.sessionmgmt.sbe.v0.2.securitylistrequestrelatedsymbolgroup", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_list_request_related_symbol_groups = ProtoField.new("Security List Request Related Symbol Groups", "cme.globex.sessionmgmt.sbe.v0.2.securitylistrequestrelatedsymbolgroups", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_list_request_security_group = ProtoField.new("Security List Request Security Group", "cme.globex.sessionmgmt.sbe.v0.2.securitylistrequestsecuritygroup", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_list_request_security_groups = ProtoField.new("Security List Request Security Groups", "cme.globex.sessionmgmt.sbe.v0.2.securitylistrequestsecuritygroups", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_status_request_related_symbol_group = ProtoField.new("Security Status Request Related Symbol Group", "cme.globex.sessionmgmt.sbe.v0.2.securitystatusrequestrelatedsymbolgroup", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_status_request_related_symbol_groups = ProtoField.new("Security Status Request Related Symbol Groups", "cme.globex.sessionmgmt.sbe.v0.2.securitystatusrequestrelatedsymbolgroups", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_status_request_security_group = ProtoField.new("Security Status Request Security Group", "cme.globex.sessionmgmt.sbe.v0.2.securitystatusrequestsecuritygroup", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_status_request_security_groups = ProtoField.new("Security Status Request Security Groups", "cme.globex.sessionmgmt.sbe.v0.2.securitystatusrequestsecuritygroups", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.sending_time = ProtoField.new("Sending Time", "cme.globex.sessionmgmt.sbe.v0.2.sendingtime", ftypes.UINT64)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.session = ProtoField.new("Session", "cme.globex.sessionmgmt.sbe.v0.2.session", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.subscription_req_type = ProtoField.new("Subscription Req Type", "cme.globex.sessionmgmt.sbe.v0.2.subscriptionreqtype", ftypes.UINT8)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.template_id = ProtoField.new("Template Id", "cme.globex.sessionmgmt.sbe.v0.2.templateid", ftypes.UINT16)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.text = ProtoField.new("Text", "cme.globex.sessionmgmt.sbe.v0.2.text", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.uuid = ProtoField.new("Uuid", "cme.globex.sessionmgmt.sbe.v0.2.uuid", ftypes.UINT64)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.version = ProtoField.new("Version", "cme.globex.sessionmgmt.sbe.v0.2.version", ftypes.UINT16)

-- Cme Globex SessionMgmt Sbe 0.2 Framing
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.client_message = ProtoField.new("Client Message", "cme.globex.sessionmgmt.sbe.v0.2.clientmessage", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.client_packet = ProtoField.new("Client Packet", "cme.globex.sessionmgmt.sbe.v0.2.clientpacket", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.client_technical_header = ProtoField.new("Client Technical Header", "cme.globex.sessionmgmt.sbe.v0.2.clienttechnicalheader", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.message_header = ProtoField.new("Message Header", "cme.globex.sessionmgmt.sbe.v0.2.messageheader", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.server_message = ProtoField.new("Server Message", "cme.globex.sessionmgmt.sbe.v0.2.servermessage", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.server_packet = ProtoField.new("Server Packet", "cme.globex.sessionmgmt.sbe.v0.2.serverpacket", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.server_technical_header = ProtoField.new("Server Technical Header", "cme.globex.sessionmgmt.sbe.v0.2.servertechnicalheader", ftypes.STRING)

-- Cme Globex SessionMgmt 0.2 Application Messages
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.market_data_request = ProtoField.new("Market Data Request", "cme.globex.sessionmgmt.sbe.v0.2.marketdatarequest", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.negotiate = ProtoField.new("Negotiate", "cme.globex.sessionmgmt.sbe.v0.2.negotiate", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.negotiation_reject = ProtoField.new("Negotiation Reject", "cme.globex.sessionmgmt.sbe.v0.2.negotiationreject", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.negotiation_response = ProtoField.new("Negotiation Response", "cme.globex.sessionmgmt.sbe.v0.2.negotiationresponse", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.request_ack = ProtoField.new("Request Ack", "cme.globex.sessionmgmt.sbe.v0.2.requestack", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.request_reject = ProtoField.new("Request Reject", "cme.globex.sessionmgmt.sbe.v0.2.requestreject", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_list_request = ProtoField.new("Security List Request", "cme.globex.sessionmgmt.sbe.v0.2.securitylistrequest", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_status_request = ProtoField.new("Security Status Request", "cme.globex.sessionmgmt.sbe.v0.2.securitystatusrequest", ftypes.STRING)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.subscriber_heartbeat = ProtoField.new("Subscriber Heartbeat", "cme.globex.sessionmgmt.sbe.v0.2.subscriberheartbeat", ftypes.BYTES)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.terminate = ProtoField.new("Terminate", "cme.globex.sessionmgmt.sbe.v0.2.terminate", ftypes.STRING)

-- Cme Globex SessionMgmt Sbe 0.2 Generated Fields
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.market_data_request_related_symbol_group_index = ProtoField.new("Market Data Request Related Symbol Group Index", "cme.globex.sessionmgmt.sbe.v0.2.marketdatarequestrelatedsymbolgroupindex", ftypes.UINT16)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.market_data_request_security_group_index = ProtoField.new("Market Data Request Security Group Index", "cme.globex.sessionmgmt.sbe.v0.2.marketdatarequestsecuritygroupindex", ftypes.UINT16)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.request_ack_related_symbol_group_index = ProtoField.new("Request Ack Related Symbol Group Index", "cme.globex.sessionmgmt.sbe.v0.2.requestackrelatedsymbolgroupindex", ftypes.UINT16)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.request_ack_security_group_index = ProtoField.new("Request Ack Security Group Index", "cme.globex.sessionmgmt.sbe.v0.2.requestacksecuritygroupindex", ftypes.UINT16)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_list_request_related_symbol_group_index = ProtoField.new("Security List Request Related Symbol Group Index", "cme.globex.sessionmgmt.sbe.v0.2.securitylistrequestrelatedsymbolgroupindex", ftypes.UINT16)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_list_request_security_group_index = ProtoField.new("Security List Request Security Group Index", "cme.globex.sessionmgmt.sbe.v0.2.securitylistrequestsecuritygroupindex", ftypes.UINT16)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_status_request_related_symbol_group_index = ProtoField.new("Security Status Request Related Symbol Group Index", "cme.globex.sessionmgmt.sbe.v0.2.securitystatusrequestrelatedsymbolgroupindex", ftypes.UINT16)
omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_status_request_security_group_index = ProtoField.new("Security Status Request Security Group Index", "cme.globex.sessionmgmt.sbe.v0.2.securitystatusrequestsecuritygroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Cme Globex SessionMgmt Sbe 0.2 Formatting
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

-- Cme Globex SessionMgmt Sbe 0.2 Element Dissection Options
show.structs = true
show.headers = true
show.application_messages = true
show.repeating_groups = true
show.indexes = true

-- Register Cme Globex SessionMgmt Sbe 0.2 Show Options
omi_cme_globex_sessionmgmt_sbe_v0_2.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_cme_globex_sessionmgmt_sbe_v0_2.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_cme_globex_sessionmgmt_sbe_v0_2.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_cme_globex_sessionmgmt_sbe_v0_2.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cme_globex_sessionmgmt_sbe_v0_2.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cme_globex_sessionmgmt_sbe_v0_2.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cme_globex_sessionmgmt_sbe_v0_2.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_cme_globex_sessionmgmt_sbe_v0_2.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_cme_globex_sessionmgmt_sbe_v0_2.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cme_globex_sessionmgmt_sbe_v0_2.prefs.show_application_messages then
    show.application_messages = omi_cme_globex_sessionmgmt_sbe_v0_2.prefs.show_application_messages
  end
  if show.headers ~= omi_cme_globex_sessionmgmt_sbe_v0_2.prefs.show_headers then
    show.headers = omi_cme_globex_sessionmgmt_sbe_v0_2.prefs.show_headers
  end
  if show.repeating_groups ~= omi_cme_globex_sessionmgmt_sbe_v0_2.prefs.show_repeating_groups then
    show.repeating_groups = omi_cme_globex_sessionmgmt_sbe_v0_2.prefs.show_repeating_groups
  end
  if show.structs ~= omi_cme_globex_sessionmgmt_sbe_v0_2.prefs.show_structs then
    show.structs = omi_cme_globex_sessionmgmt_sbe_v0_2.prefs.show_structs
  end
  if show.indexes ~= omi_cme_globex_sessionmgmt_sbe_v0_2.prefs.show_indexes then
    show.indexes = omi_cme_globex_sessionmgmt_sbe_v0_2.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Cme Globex SessionMgmt Sbe 0.2 Fields
-----------------------------------------------------------------------

-- Access Key Id
cme_globex_sessionmgmt_sbe_v0_2.access_key_id = {}

-- Size: Access Key Id
cme_globex_sessionmgmt_sbe_v0_2.access_key_id.size = 20

-- Display: Access Key Id
cme_globex_sessionmgmt_sbe_v0_2.access_key_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Access Key Id: No Value"
  end

  return "Access Key Id: "..value
end

-- Dissect: Access Key Id
cme_globex_sessionmgmt_sbe_v0_2.access_key_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_sessionmgmt_sbe_v0_2.access_key_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_globex_sessionmgmt_sbe_v0_2.access_key_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.access_key_id, range, value, display)

  return offset + length, value
end

-- Block Length
cme_globex_sessionmgmt_sbe_v0_2.block_length = {}

-- Size: Block Length
cme_globex_sessionmgmt_sbe_v0_2.block_length.size = 2

-- Display: Block Length
cme_globex_sessionmgmt_sbe_v0_2.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
cme_globex_sessionmgmt_sbe_v0_2.block_length.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_sessionmgmt_sbe_v0_2.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_sessionmgmt_sbe_v0_2.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.block_length, range, value, display)

  return offset + length, value
end

-- Encoding Type
cme_globex_sessionmgmt_sbe_v0_2.encoding_type = {}

-- Size: Encoding Type
cme_globex_sessionmgmt_sbe_v0_2.encoding_type.size = 2

-- Display: Encoding Type
cme_globex_sessionmgmt_sbe_v0_2.encoding_type.display = function(value)
  return "Encoding Type: "..value
end

-- Dissect: Encoding Type
cme_globex_sessionmgmt_sbe_v0_2.encoding_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_sessionmgmt_sbe_v0_2.encoding_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_sessionmgmt_sbe_v0_2.encoding_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.encoding_type, range, value, display)

  return offset + length, value
end

-- Error Codes
cme_globex_sessionmgmt_sbe_v0_2.error_codes = {}

-- Size: Error Codes
cme_globex_sessionmgmt_sbe_v0_2.error_codes.size = 1

-- Display: Error Codes
cme_globex_sessionmgmt_sbe_v0_2.error_codes.display = function(value)
  if value == 0 then
    return "Error Codes: Hmac Reject (0)"
  end
  if value == 1 then
    return "Error Codes: Invalid Value (1)"
  end
  if value == 2 then
    return "Error Codes: Slow Connection (2)"
  end
  if value == 3 then
    return "Error Codes: Other (3)"
  end

  return "Error Codes: Unknown("..value..")"
end

-- Dissect: Error Codes
cme_globex_sessionmgmt_sbe_v0_2.error_codes.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_sessionmgmt_sbe_v0_2.error_codes.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_globex_sessionmgmt_sbe_v0_2.error_codes.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.error_codes, range, value, display)

  return offset + length, value
end

-- Firm
cme_globex_sessionmgmt_sbe_v0_2.firm = {}

-- Size: Firm
cme_globex_sessionmgmt_sbe_v0_2.firm.size = 5

-- Display: Firm
cme_globex_sessionmgmt_sbe_v0_2.firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Firm: No Value"
  end

  return "Firm: "..value
end

-- Dissect: Firm
cme_globex_sessionmgmt_sbe_v0_2.firm.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_sessionmgmt_sbe_v0_2.firm.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_globex_sessionmgmt_sbe_v0_2.firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.firm, range, value, display)

  return offset + length, value
end

-- Hmac Signature
cme_globex_sessionmgmt_sbe_v0_2.hmac_signature = {}

-- Size: Hmac Signature
cme_globex_sessionmgmt_sbe_v0_2.hmac_signature.size = 32

-- Display: Hmac Signature
cme_globex_sessionmgmt_sbe_v0_2.hmac_signature.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Hmac Signature: No Value"
  end

  return "Hmac Signature: "..value
end

-- Dissect: Hmac Signature
cme_globex_sessionmgmt_sbe_v0_2.hmac_signature.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_sessionmgmt_sbe_v0_2.hmac_signature.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_globex_sessionmgmt_sbe_v0_2.hmac_signature.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.hmac_signature, range, value, display)

  return offset + length, value
end

-- Md Req Id
cme_globex_sessionmgmt_sbe_v0_2.md_req_id = {}

-- Size: Md Req Id
cme_globex_sessionmgmt_sbe_v0_2.md_req_id.size = 4

-- Display: Md Req Id
cme_globex_sessionmgmt_sbe_v0_2.md_req_id.display = function(value)
  return "Md Req Id: "..value
end

-- Dissect: Md Req Id
cme_globex_sessionmgmt_sbe_v0_2.md_req_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_sessionmgmt_sbe_v0_2.md_req_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_sessionmgmt_sbe_v0_2.md_req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.md_req_id, range, value, display)

  return offset + length, value
end

-- Md Req Id Optional
cme_globex_sessionmgmt_sbe_v0_2.md_req_id_optional = {}

-- Size: Md Req Id Optional
cme_globex_sessionmgmt_sbe_v0_2.md_req_id_optional.size = 4

-- Display: Md Req Id Optional
cme_globex_sessionmgmt_sbe_v0_2.md_req_id_optional.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Md Req Id Optional: No Value"
  end

  return "Md Req Id Optional: "..value
end

-- Dissect: Md Req Id Optional
cme_globex_sessionmgmt_sbe_v0_2.md_req_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_sessionmgmt_sbe_v0_2.md_req_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_sessionmgmt_sbe_v0_2.md_req_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.md_req_id_optional, range, value, display)

  return offset + length, value
end

-- Md Req Id Status
cme_globex_sessionmgmt_sbe_v0_2.md_req_id_status = {}

-- Size: Md Req Id Status
cme_globex_sessionmgmt_sbe_v0_2.md_req_id_status.size = 1

-- Display: Md Req Id Status
cme_globex_sessionmgmt_sbe_v0_2.md_req_id_status.display = function(value)
  if value == 0 then
    return "Md Req Id Status: Full Ack (0)"
  end
  if value == 1 then
    return "Md Req Id Status: Partial Ack (1)"
  end

  return "Md Req Id Status: Unknown("..value..")"
end

-- Dissect: Md Req Id Status
cme_globex_sessionmgmt_sbe_v0_2.md_req_id_status.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_sessionmgmt_sbe_v0_2.md_req_id_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_globex_sessionmgmt_sbe_v0_2.md_req_id_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.md_req_id_status, range, value, display)

  return offset + length, value
end

-- Md Req Rej Reason
cme_globex_sessionmgmt_sbe_v0_2.md_req_rej_reason = {}

-- Size: Md Req Rej Reason
cme_globex_sessionmgmt_sbe_v0_2.md_req_rej_reason.size = 1

-- Display: Md Req Rej Reason
cme_globex_sessionmgmt_sbe_v0_2.md_req_rej_reason.display = function(value)
  if value == 0 then
    return "Md Req Rej Reason: Unknown Security (0)"
  end
  if value == 1 then
    return "Md Req Rej Reason: Unknown Message (1)"
  end
  if value == 2 then
    return "Md Req Rej Reason: Unsupported Scope (2)"
  end
  if value == 3 then
    return "Md Req Rej Reason: Other (3)"
  end

  return "Md Req Rej Reason: Unknown("..value..")"
end

-- Dissect: Md Req Rej Reason
cme_globex_sessionmgmt_sbe_v0_2.md_req_rej_reason.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_sessionmgmt_sbe_v0_2.md_req_rej_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_globex_sessionmgmt_sbe_v0_2.md_req_rej_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.md_req_rej_reason, range, value, display)

  return offset + length, value
end

-- Message Sequence Number
cme_globex_sessionmgmt_sbe_v0_2.message_sequence_number = {}

-- Size: Message Sequence Number
cme_globex_sessionmgmt_sbe_v0_2.message_sequence_number.size = 4

-- Display: Message Sequence Number
cme_globex_sessionmgmt_sbe_v0_2.message_sequence_number.display = function(value)
  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
cme_globex_sessionmgmt_sbe_v0_2.message_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_sessionmgmt_sbe_v0_2.message_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_sessionmgmt_sbe_v0_2.message_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Message Size
cme_globex_sessionmgmt_sbe_v0_2.message_size = {}

-- Size: Message Size
cme_globex_sessionmgmt_sbe_v0_2.message_size.size = 2

-- Display: Message Size
cme_globex_sessionmgmt_sbe_v0_2.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
cme_globex_sessionmgmt_sbe_v0_2.message_size.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_sessionmgmt_sbe_v0_2.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_sessionmgmt_sbe_v0_2.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.message_size, range, value, display)

  return offset + length, value
end

-- Num In Group
cme_globex_sessionmgmt_sbe_v0_2.num_in_group = {}

-- Size: Num In Group
cme_globex_sessionmgmt_sbe_v0_2.num_in_group.size = 1

-- Display: Num In Group
cme_globex_sessionmgmt_sbe_v0_2.num_in_group.display = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
cme_globex_sessionmgmt_sbe_v0_2.num_in_group.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_sessionmgmt_sbe_v0_2.num_in_group.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_globex_sessionmgmt_sbe_v0_2.num_in_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Padding 4
cme_globex_sessionmgmt_sbe_v0_2.padding_4 = {}

-- Size: Padding 4
cme_globex_sessionmgmt_sbe_v0_2.padding_4.size = 4

-- Display: Padding 4
cme_globex_sessionmgmt_sbe_v0_2.padding_4.display = function(value)
  return "Padding 4: "..value
end

-- Dissect: Padding 4
cme_globex_sessionmgmt_sbe_v0_2.padding_4.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_sessionmgmt_sbe_v0_2.padding_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_globex_sessionmgmt_sbe_v0_2.padding_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.padding_4, range, value, display)

  return offset + length, value
end

-- Padding 5
cme_globex_sessionmgmt_sbe_v0_2.padding_5 = {}

-- Size: Padding 5
cme_globex_sessionmgmt_sbe_v0_2.padding_5.size = 5

-- Display: Padding 5
cme_globex_sessionmgmt_sbe_v0_2.padding_5.display = function(value)
  return "Padding 5: "..value
end

-- Dissect: Padding 5
cme_globex_sessionmgmt_sbe_v0_2.padding_5.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_sessionmgmt_sbe_v0_2.padding_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_globex_sessionmgmt_sbe_v0_2.padding_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.padding_5, range, value, display)

  return offset + length, value
end

-- Reason
cme_globex_sessionmgmt_sbe_v0_2.reason = {}

-- Size: Reason
cme_globex_sessionmgmt_sbe_v0_2.reason.size = 48

-- Display: Reason
cme_globex_sessionmgmt_sbe_v0_2.reason.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reason: No Value"
  end

  return "Reason: "..value
end

-- Dissect: Reason
cme_globex_sessionmgmt_sbe_v0_2.reason.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_sessionmgmt_sbe_v0_2.reason.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_globex_sessionmgmt_sbe_v0_2.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.reason, range, value, display)

  return offset + length, value
end

-- Request Timestamp
cme_globex_sessionmgmt_sbe_v0_2.request_timestamp = {}

-- Size: Request Timestamp
cme_globex_sessionmgmt_sbe_v0_2.request_timestamp.size = 8

-- Display: Request Timestamp
cme_globex_sessionmgmt_sbe_v0_2.request_timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Request Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Request Timestamp
cme_globex_sessionmgmt_sbe_v0_2.request_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_sessionmgmt_sbe_v0_2.request_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_globex_sessionmgmt_sbe_v0_2.request_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.request_timestamp, range, value, display)

  return offset + length, value
end

-- Schema Id
cme_globex_sessionmgmt_sbe_v0_2.schema_id = {}

-- Size: Schema Id
cme_globex_sessionmgmt_sbe_v0_2.schema_id.size = 2

-- Display: Schema Id
cme_globex_sessionmgmt_sbe_v0_2.schema_id.display = function(value)
  if value == 2 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
cme_globex_sessionmgmt_sbe_v0_2.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_sessionmgmt_sbe_v0_2.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_sessionmgmt_sbe_v0_2.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Secret Key Secure Id Expiration
cme_globex_sessionmgmt_sbe_v0_2.secret_key_secure_id_expiration = {}

-- Size: Secret Key Secure Id Expiration
cme_globex_sessionmgmt_sbe_v0_2.secret_key_secure_id_expiration.size = 2

-- Display: Secret Key Secure Id Expiration
cme_globex_sessionmgmt_sbe_v0_2.secret_key_secure_id_expiration.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Secret Key Secure Id Expiration: No Value"
  end

  return "Secret Key Secure Id Expiration: "..value
end

-- Dissect: Secret Key Secure Id Expiration
cme_globex_sessionmgmt_sbe_v0_2.secret_key_secure_id_expiration.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_sessionmgmt_sbe_v0_2.secret_key_secure_id_expiration.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_sessionmgmt_sbe_v0_2.secret_key_secure_id_expiration.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.secret_key_secure_id_expiration, range, value, display)

  return offset + length, value
end

-- Security Group
cme_globex_sessionmgmt_sbe_v0_2.security_group = {}

-- Size: Security Group
cme_globex_sessionmgmt_sbe_v0_2.security_group.size = 6

-- Display: Security Group
cme_globex_sessionmgmt_sbe_v0_2.security_group.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Group: No Value"
  end

  return "Security Group: "..value
end

-- Dissect: Security Group
cme_globex_sessionmgmt_sbe_v0_2.security_group.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_sessionmgmt_sbe_v0_2.security_group.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_globex_sessionmgmt_sbe_v0_2.security_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_group, range, value, display)

  return offset + length, value
end

-- Security Id
cme_globex_sessionmgmt_sbe_v0_2.security_id = {}

-- Size: Security Id
cme_globex_sessionmgmt_sbe_v0_2.security_id.size = 4

-- Display: Security Id
cme_globex_sessionmgmt_sbe_v0_2.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
cme_globex_sessionmgmt_sbe_v0_2.security_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_sessionmgmt_sbe_v0_2.security_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_globex_sessionmgmt_sbe_v0_2.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_id, range, value, display)

  return offset + length, value
end

-- Sending Time
cme_globex_sessionmgmt_sbe_v0_2.sending_time = {}

-- Size: Sending Time
cme_globex_sessionmgmt_sbe_v0_2.sending_time.size = 8

-- Display: Sending Time
cme_globex_sessionmgmt_sbe_v0_2.sending_time.display = function(value)
  return "Sending Time: "..value
end

-- Dissect: Sending Time
cme_globex_sessionmgmt_sbe_v0_2.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_sessionmgmt_sbe_v0_2.sending_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_globex_sessionmgmt_sbe_v0_2.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Session
cme_globex_sessionmgmt_sbe_v0_2.session = {}

-- Size: Session
cme_globex_sessionmgmt_sbe_v0_2.session.size = 5

-- Display: Session
cme_globex_sessionmgmt_sbe_v0_2.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
cme_globex_sessionmgmt_sbe_v0_2.session.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_sessionmgmt_sbe_v0_2.session.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_globex_sessionmgmt_sbe_v0_2.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.session, range, value, display)

  return offset + length, value
end

-- Subscription Req Type
cme_globex_sessionmgmt_sbe_v0_2.subscription_req_type = {}

-- Size: Subscription Req Type
cme_globex_sessionmgmt_sbe_v0_2.subscription_req_type.size = 1

-- Display: Subscription Req Type
cme_globex_sessionmgmt_sbe_v0_2.subscription_req_type.display = function(value)
  if value == 0 then
    return "Subscription Req Type: Snapshot (0)"
  end
  if value == 1 then
    return "Subscription Req Type: Snapshot And Updates (1)"
  end
  if value == 2 then
    return "Subscription Req Type: Unsubscribe (2)"
  end

  return "Subscription Req Type: Unknown("..value..")"
end

-- Dissect: Subscription Req Type
cme_globex_sessionmgmt_sbe_v0_2.subscription_req_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_sessionmgmt_sbe_v0_2.subscription_req_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_globex_sessionmgmt_sbe_v0_2.subscription_req_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.subscription_req_type, range, value, display)

  return offset + length, value
end

-- Template Id
cme_globex_sessionmgmt_sbe_v0_2.template_id = {}

-- Size: Template Id
cme_globex_sessionmgmt_sbe_v0_2.template_id.size = 2

-- Display: Template Id
cme_globex_sessionmgmt_sbe_v0_2.template_id.display = function(value)
  if value == 200 then
    return "Template Id: Negotiate (200)"
  end
  if value == 201 then
    return "Template Id: Negotiation Reject (201)"
  end
  if value == 202 then
    return "Template Id: Negotiation Response (202)"
  end
  if value == 203 then
    return "Template Id: Terminate (203)"
  end
  if value == 205 then
    return "Template Id: Market Data Request (205)"
  end
  if value == 206 then
    return "Template Id: Request Ack (206)"
  end
  if value == 207 then
    return "Template Id: Request Reject (207)"
  end
  if value == 208 then
    return "Template Id: Security List Request (208)"
  end
  if value == 209 then
    return "Template Id: Security Status Request (209)"
  end
  if value == 210 then
    return "Template Id: Subscriber Heartbeat (210)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
cme_globex_sessionmgmt_sbe_v0_2.template_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_sessionmgmt_sbe_v0_2.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_sessionmgmt_sbe_v0_2.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.template_id, range, value, display)

  return offset + length, value
end

-- Text
cme_globex_sessionmgmt_sbe_v0_2.text = {}

-- Size: Text
cme_globex_sessionmgmt_sbe_v0_2.text.size = 100

-- Display: Text
cme_globex_sessionmgmt_sbe_v0_2.text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text: No Value"
  end

  return "Text: "..value
end

-- Dissect: Text
cme_globex_sessionmgmt_sbe_v0_2.text.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_sessionmgmt_sbe_v0_2.text.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_globex_sessionmgmt_sbe_v0_2.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.text, range, value, display)

  return offset + length, value
end

-- Uuid
cme_globex_sessionmgmt_sbe_v0_2.uuid = {}

-- Size: Uuid
cme_globex_sessionmgmt_sbe_v0_2.uuid.size = 8

-- Display: Uuid
cme_globex_sessionmgmt_sbe_v0_2.uuid.display = function(value)
  return "Uuid: "..value
end

-- Dissect: Uuid
cme_globex_sessionmgmt_sbe_v0_2.uuid.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_sessionmgmt_sbe_v0_2.uuid.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_globex_sessionmgmt_sbe_v0_2.uuid.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.uuid, range, value, display)

  return offset + length, value
end

-- Version
cme_globex_sessionmgmt_sbe_v0_2.version = {}

-- Size: Version
cme_globex_sessionmgmt_sbe_v0_2.version.size = 2

-- Display: Version
cme_globex_sessionmgmt_sbe_v0_2.version.display = function(value)
  if value == 0 then
    return "Version: Version"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
cme_globex_sessionmgmt_sbe_v0_2.version.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_sessionmgmt_sbe_v0_2.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_sessionmgmt_sbe_v0_2.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cme Globex SessionMgmt Sbe 0.2
-----------------------------------------------------------------------

-- Request Reject
cme_globex_sessionmgmt_sbe_v0_2.request_reject = {}

-- Size: Request Reject
cme_globex_sessionmgmt_sbe_v0_2.request_reject.size =
  cme_globex_sessionmgmt_sbe_v0_2.md_req_id_optional.size + 
  cme_globex_sessionmgmt_sbe_v0_2.md_req_rej_reason.size + 
  cme_globex_sessionmgmt_sbe_v0_2.text.size

-- Display: Request Reject
cme_globex_sessionmgmt_sbe_v0_2.request_reject.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Reject
cme_globex_sessionmgmt_sbe_v0_2.request_reject.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Req Id Optional: uInt32NULL
  index, md_req_id_optional = cme_globex_sessionmgmt_sbe_v0_2.md_req_id_optional.dissect(buffer, index, packet, parent)

  -- Md Req Rej Reason: MDReqRejReason
  index, md_req_rej_reason = cme_globex_sessionmgmt_sbe_v0_2.md_req_rej_reason.dissect(buffer, index, packet, parent)

  -- Text: String100
  index, text = cme_globex_sessionmgmt_sbe_v0_2.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Reject
cme_globex_sessionmgmt_sbe_v0_2.request_reject.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.request_reject, buffer(offset, 0))
    local index = cme_globex_sessionmgmt_sbe_v0_2.request_reject.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_sessionmgmt_sbe_v0_2.request_reject.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_sessionmgmt_sbe_v0_2.request_reject.fields(buffer, offset, packet, parent)
  end
end

-- Request Ack Related Symbol Group
cme_globex_sessionmgmt_sbe_v0_2.request_ack_related_symbol_group = {}

-- Size: Request Ack Related Symbol Group
cme_globex_sessionmgmt_sbe_v0_2.request_ack_related_symbol_group.size =
  cme_globex_sessionmgmt_sbe_v0_2.security_id.size

-- Display: Request Ack Related Symbol Group
cme_globex_sessionmgmt_sbe_v0_2.request_ack_related_symbol_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Ack Related Symbol Group
cme_globex_sessionmgmt_sbe_v0_2.request_ack_related_symbol_group.fields = function(buffer, offset, packet, parent, request_ack_related_symbol_group_index)
  local index = offset

  -- Implicit Request Ack Related Symbol Group Index
  if request_ack_related_symbol_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.request_ack_related_symbol_group_index, request_ack_related_symbol_group_index)
    iteration:set_generated()
  end

  -- Security Id: Int32
  index, security_id = cme_globex_sessionmgmt_sbe_v0_2.security_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Ack Related Symbol Group
cme_globex_sessionmgmt_sbe_v0_2.request_ack_related_symbol_group.dissect = function(buffer, offset, packet, parent, request_ack_related_symbol_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.request_ack_related_symbol_group, buffer(offset, 0))
    local index = cme_globex_sessionmgmt_sbe_v0_2.request_ack_related_symbol_group.fields(buffer, offset, packet, parent, request_ack_related_symbol_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_sessionmgmt_sbe_v0_2.request_ack_related_symbol_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_sessionmgmt_sbe_v0_2.request_ack_related_symbol_group.fields(buffer, offset, packet, parent, request_ack_related_symbol_group_index)
  end
end

-- Group Size
cme_globex_sessionmgmt_sbe_v0_2.group_size = {}

-- Size: Group Size
cme_globex_sessionmgmt_sbe_v0_2.group_size.size =
  cme_globex_sessionmgmt_sbe_v0_2.block_length.size + 
  cme_globex_sessionmgmt_sbe_v0_2.num_in_group.size

-- Display: Group Size
cme_globex_sessionmgmt_sbe_v0_2.group_size.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size
cme_globex_sessionmgmt_sbe_v0_2.group_size.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = cme_globex_sessionmgmt_sbe_v0_2.block_length.dissect(buffer, index, packet, parent)

  -- Num In Group: uint8
  index, num_in_group = cme_globex_sessionmgmt_sbe_v0_2.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size
cme_globex_sessionmgmt_sbe_v0_2.group_size.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.group_size, buffer(offset, 0))
    local index = cme_globex_sessionmgmt_sbe_v0_2.group_size.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_sessionmgmt_sbe_v0_2.group_size.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_sessionmgmt_sbe_v0_2.group_size.fields(buffer, offset, packet, parent)
  end
end

-- Request Ack Related Symbol Groups
cme_globex_sessionmgmt_sbe_v0_2.request_ack_related_symbol_groups = {}

-- Calculate size of: Request Ack Related Symbol Groups
cme_globex_sessionmgmt_sbe_v0_2.request_ack_related_symbol_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_sessionmgmt_sbe_v0_2.group_size.size

  -- Calculate field size from count
  local request_ack_related_symbol_group_count = buffer(offset + index - 1, 1):uint()
  index = index + request_ack_related_symbol_group_count * 4

  return index
end

-- Display: Request Ack Related Symbol Groups
cme_globex_sessionmgmt_sbe_v0_2.request_ack_related_symbol_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Ack Related Symbol Groups
cme_globex_sessionmgmt_sbe_v0_2.request_ack_related_symbol_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_sessionmgmt_sbe_v0_2.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Request Ack Related Symbol Group
  for request_ack_related_symbol_group_index = 1, num_in_group do
    index, request_ack_related_symbol_group = cme_globex_sessionmgmt_sbe_v0_2.request_ack_related_symbol_group.dissect(buffer, index, packet, parent, request_ack_related_symbol_group_index)
  end

  return index
end

-- Dissect: Request Ack Related Symbol Groups
cme_globex_sessionmgmt_sbe_v0_2.request_ack_related_symbol_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.request_ack_related_symbol_groups, buffer(offset, 0))
    local index = cme_globex_sessionmgmt_sbe_v0_2.request_ack_related_symbol_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_sessionmgmt_sbe_v0_2.request_ack_related_symbol_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_sessionmgmt_sbe_v0_2.request_ack_related_symbol_groups.fields(buffer, offset, packet, parent)
  end
end

-- Request Ack Security Group
cme_globex_sessionmgmt_sbe_v0_2.request_ack_security_group = {}

-- Size: Request Ack Security Group
cme_globex_sessionmgmt_sbe_v0_2.request_ack_security_group.size =
  cme_globex_sessionmgmt_sbe_v0_2.security_group.size

-- Display: Request Ack Security Group
cme_globex_sessionmgmt_sbe_v0_2.request_ack_security_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Ack Security Group
cme_globex_sessionmgmt_sbe_v0_2.request_ack_security_group.fields = function(buffer, offset, packet, parent, request_ack_security_group_index)
  local index = offset

  -- Implicit Request Ack Security Group Index
  if request_ack_security_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.request_ack_security_group_index, request_ack_security_group_index)
    iteration:set_generated()
  end

  -- Security Group: SecurityGroup
  index, security_group = cme_globex_sessionmgmt_sbe_v0_2.security_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Ack Security Group
cme_globex_sessionmgmt_sbe_v0_2.request_ack_security_group.dissect = function(buffer, offset, packet, parent, request_ack_security_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.request_ack_security_group, buffer(offset, 0))
    local index = cme_globex_sessionmgmt_sbe_v0_2.request_ack_security_group.fields(buffer, offset, packet, parent, request_ack_security_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_sessionmgmt_sbe_v0_2.request_ack_security_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_sessionmgmt_sbe_v0_2.request_ack_security_group.fields(buffer, offset, packet, parent, request_ack_security_group_index)
  end
end

-- Request Ack Security Groups
cme_globex_sessionmgmt_sbe_v0_2.request_ack_security_groups = {}

-- Calculate size of: Request Ack Security Groups
cme_globex_sessionmgmt_sbe_v0_2.request_ack_security_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_sessionmgmt_sbe_v0_2.group_size.size

  -- Calculate field size from count
  local request_ack_security_group_count = buffer(offset + index - 1, 1):uint()
  index = index + request_ack_security_group_count * 6

  return index
end

-- Display: Request Ack Security Groups
cme_globex_sessionmgmt_sbe_v0_2.request_ack_security_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Ack Security Groups
cme_globex_sessionmgmt_sbe_v0_2.request_ack_security_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_sessionmgmt_sbe_v0_2.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Request Ack Security Group
  for request_ack_security_group_index = 1, num_in_group do
    index, request_ack_security_group = cme_globex_sessionmgmt_sbe_v0_2.request_ack_security_group.dissect(buffer, index, packet, parent, request_ack_security_group_index)
  end

  return index
end

-- Dissect: Request Ack Security Groups
cme_globex_sessionmgmt_sbe_v0_2.request_ack_security_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.request_ack_security_groups, buffer(offset, 0))
    local index = cme_globex_sessionmgmt_sbe_v0_2.request_ack_security_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_sessionmgmt_sbe_v0_2.request_ack_security_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_sessionmgmt_sbe_v0_2.request_ack_security_groups.fields(buffer, offset, packet, parent)
  end
end

-- Request Ack
cme_globex_sessionmgmt_sbe_v0_2.request_ack = {}

-- Calculate size of: Request Ack
cme_globex_sessionmgmt_sbe_v0_2.request_ack.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_sessionmgmt_sbe_v0_2.md_req_id.size

  index = index + cme_globex_sessionmgmt_sbe_v0_2.subscription_req_type.size

  index = index + cme_globex_sessionmgmt_sbe_v0_2.md_req_id_status.size

  index = index + cme_globex_sessionmgmt_sbe_v0_2.request_ack_security_groups.size(buffer, offset + index)

  index = index + cme_globex_sessionmgmt_sbe_v0_2.request_ack_related_symbol_groups.size(buffer, offset + index)

  return index
end

-- Display: Request Ack
cme_globex_sessionmgmt_sbe_v0_2.request_ack.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Ack
cme_globex_sessionmgmt_sbe_v0_2.request_ack.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Req Id: uInt32
  index, md_req_id = cme_globex_sessionmgmt_sbe_v0_2.md_req_id.dissect(buffer, index, packet, parent)

  -- Subscription Req Type: SubscriptionReqType
  index, subscription_req_type = cme_globex_sessionmgmt_sbe_v0_2.subscription_req_type.dissect(buffer, index, packet, parent)

  -- Md Req Id Status: RequestIDStatus
  index, md_req_id_status = cme_globex_sessionmgmt_sbe_v0_2.md_req_id_status.dissect(buffer, index, packet, parent)

  -- Request Ack Security Groups: Struct of 2 fields
  index, request_ack_security_groups = cme_globex_sessionmgmt_sbe_v0_2.request_ack_security_groups.dissect(buffer, index, packet, parent)

  -- Request Ack Related Symbol Groups: Struct of 2 fields
  index, request_ack_related_symbol_groups = cme_globex_sessionmgmt_sbe_v0_2.request_ack_related_symbol_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Ack
cme_globex_sessionmgmt_sbe_v0_2.request_ack.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.request_ack, buffer(offset, 0))
    local index = cme_globex_sessionmgmt_sbe_v0_2.request_ack.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_sessionmgmt_sbe_v0_2.request_ack.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_sessionmgmt_sbe_v0_2.request_ack.fields(buffer, offset, packet, parent)
  end
end

-- Terminate
cme_globex_sessionmgmt_sbe_v0_2.terminate = {}

-- Size: Terminate
cme_globex_sessionmgmt_sbe_v0_2.terminate.size =
  cme_globex_sessionmgmt_sbe_v0_2.reason.size + 
  cme_globex_sessionmgmt_sbe_v0_2.uuid.size + 
  cme_globex_sessionmgmt_sbe_v0_2.request_timestamp.size + 
  cme_globex_sessionmgmt_sbe_v0_2.error_codes.size + 
  cme_globex_sessionmgmt_sbe_v0_2.padding_5.size

-- Display: Terminate
cme_globex_sessionmgmt_sbe_v0_2.terminate.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Terminate
cme_globex_sessionmgmt_sbe_v0_2.terminate.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: String48
  index, reason = cme_globex_sessionmgmt_sbe_v0_2.reason.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_globex_sessionmgmt_sbe_v0_2.uuid.dissect(buffer, index, packet, parent)

  -- Request Timestamp: uInt64
  index, request_timestamp = cme_globex_sessionmgmt_sbe_v0_2.request_timestamp.dissect(buffer, index, packet, parent)

  -- Error Codes: ErrorCodes
  index, error_codes = cme_globex_sessionmgmt_sbe_v0_2.error_codes.dissect(buffer, index, packet, parent)

  -- Padding 5: 5 Byte
  index, padding_5 = cme_globex_sessionmgmt_sbe_v0_2.padding_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Terminate
cme_globex_sessionmgmt_sbe_v0_2.terminate.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.terminate, buffer(offset, 0))
    local index = cme_globex_sessionmgmt_sbe_v0_2.terminate.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_sessionmgmt_sbe_v0_2.terminate.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_sessionmgmt_sbe_v0_2.terminate.fields(buffer, offset, packet, parent)
  end
end

-- Negotiation Response
cme_globex_sessionmgmt_sbe_v0_2.negotiation_response = {}

-- Size: Negotiation Response
cme_globex_sessionmgmt_sbe_v0_2.negotiation_response.size =
  cme_globex_sessionmgmt_sbe_v0_2.uuid.size + 
  cme_globex_sessionmgmt_sbe_v0_2.request_timestamp.size + 
  cme_globex_sessionmgmt_sbe_v0_2.secret_key_secure_id_expiration.size + 
  cme_globex_sessionmgmt_sbe_v0_2.padding_4.size

-- Display: Negotiation Response
cme_globex_sessionmgmt_sbe_v0_2.negotiation_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Negotiation Response
cme_globex_sessionmgmt_sbe_v0_2.negotiation_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Uuid: uInt64
  index, uuid = cme_globex_sessionmgmt_sbe_v0_2.uuid.dissect(buffer, index, packet, parent)

  -- Request Timestamp: uInt64
  index, request_timestamp = cme_globex_sessionmgmt_sbe_v0_2.request_timestamp.dissect(buffer, index, packet, parent)

  -- Secret Key Secure Id Expiration: uInt16NULL
  index, secret_key_secure_id_expiration = cme_globex_sessionmgmt_sbe_v0_2.secret_key_secure_id_expiration.dissect(buffer, index, packet, parent)

  -- Padding 4: 4 Byte
  index, padding_4 = cme_globex_sessionmgmt_sbe_v0_2.padding_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Negotiation Response
cme_globex_sessionmgmt_sbe_v0_2.negotiation_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.negotiation_response, buffer(offset, 0))
    local index = cme_globex_sessionmgmt_sbe_v0_2.negotiation_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_sessionmgmt_sbe_v0_2.negotiation_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_sessionmgmt_sbe_v0_2.negotiation_response.fields(buffer, offset, packet, parent)
  end
end

-- Negotiation Reject
cme_globex_sessionmgmt_sbe_v0_2.negotiation_reject = {}

-- Size: Negotiation Reject
cme_globex_sessionmgmt_sbe_v0_2.negotiation_reject.size =
  cme_globex_sessionmgmt_sbe_v0_2.reason.size + 
  cme_globex_sessionmgmt_sbe_v0_2.uuid.size + 
  cme_globex_sessionmgmt_sbe_v0_2.request_timestamp.size + 
  cme_globex_sessionmgmt_sbe_v0_2.error_codes.size + 
  cme_globex_sessionmgmt_sbe_v0_2.padding_5.size

-- Display: Negotiation Reject
cme_globex_sessionmgmt_sbe_v0_2.negotiation_reject.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Negotiation Reject
cme_globex_sessionmgmt_sbe_v0_2.negotiation_reject.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: String48
  index, reason = cme_globex_sessionmgmt_sbe_v0_2.reason.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_globex_sessionmgmt_sbe_v0_2.uuid.dissect(buffer, index, packet, parent)

  -- Request Timestamp: uInt64
  index, request_timestamp = cme_globex_sessionmgmt_sbe_v0_2.request_timestamp.dissect(buffer, index, packet, parent)

  -- Error Codes: ErrorCodes
  index, error_codes = cme_globex_sessionmgmt_sbe_v0_2.error_codes.dissect(buffer, index, packet, parent)

  -- Padding 5: 5 Byte
  index, padding_5 = cme_globex_sessionmgmt_sbe_v0_2.padding_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Negotiation Reject
cme_globex_sessionmgmt_sbe_v0_2.negotiation_reject.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.negotiation_reject, buffer(offset, 0))
    local index = cme_globex_sessionmgmt_sbe_v0_2.negotiation_reject.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_sessionmgmt_sbe_v0_2.negotiation_reject.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_sessionmgmt_sbe_v0_2.negotiation_reject.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
cme_globex_sessionmgmt_sbe_v0_2.server_payload = {}

-- Dissect: Server Payload
cme_globex_sessionmgmt_sbe_v0_2.server_payload.dissect = function(buffer, offset, packet, parent, template_id)
  -- Dissect Negotiation Reject
  if template_id == 201 then
    return cme_globex_sessionmgmt_sbe_v0_2.negotiation_reject.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Negotiation Response
  if template_id == 202 then
    return cme_globex_sessionmgmt_sbe_v0_2.negotiation_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Terminate
  if template_id == 203 then
    return cme_globex_sessionmgmt_sbe_v0_2.terminate.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request Ack
  if template_id == 206 then
    return cme_globex_sessionmgmt_sbe_v0_2.request_ack.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request Reject
  if template_id == 207 then
    return cme_globex_sessionmgmt_sbe_v0_2.request_reject.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cme_globex_sessionmgmt_sbe_v0_2.message_header = {}

-- Size: Message Header
cme_globex_sessionmgmt_sbe_v0_2.message_header.size =
  cme_globex_sessionmgmt_sbe_v0_2.block_length.size + 
  cme_globex_sessionmgmt_sbe_v0_2.template_id.size + 
  cme_globex_sessionmgmt_sbe_v0_2.schema_id.size + 
  cme_globex_sessionmgmt_sbe_v0_2.version.size

-- Display: Message Header
cme_globex_sessionmgmt_sbe_v0_2.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cme_globex_sessionmgmt_sbe_v0_2.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = cme_globex_sessionmgmt_sbe_v0_2.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: uint16
  index, template_id = cme_globex_sessionmgmt_sbe_v0_2.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: uint16
  index, schema_id = cme_globex_sessionmgmt_sbe_v0_2.schema_id.dissect(buffer, index, packet, parent)

  -- Version: uint16
  index, version = cme_globex_sessionmgmt_sbe_v0_2.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cme_globex_sessionmgmt_sbe_v0_2.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.message_header, buffer(offset, 0))
    local index = cme_globex_sessionmgmt_sbe_v0_2.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_sessionmgmt_sbe_v0_2.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_sessionmgmt_sbe_v0_2.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Message
cme_globex_sessionmgmt_sbe_v0_2.server_message = {}

-- Display: Server Message
cme_globex_sessionmgmt_sbe_v0_2.server_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Message
cme_globex_sessionmgmt_sbe_v0_2.server_message.fields = function(buffer, offset, packet, parent, size_of_server_message)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = cme_globex_sessionmgmt_sbe_v0_2.message_size.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = cme_globex_sessionmgmt_sbe_v0_2.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Server Payload: Runtime Type with 5 branches
  index = cme_globex_sessionmgmt_sbe_v0_2.server_payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Server Message
cme_globex_sessionmgmt_sbe_v0_2.server_message.dissect = function(buffer, offset, packet, parent, size_of_server_message)
  local index = offset + size_of_server_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.server_message, buffer(offset, 0))
    local current = cme_globex_sessionmgmt_sbe_v0_2.server_message.fields(buffer, offset, packet, parent, size_of_server_message)
    parent:set_len(size_of_server_message)
    local display = cme_globex_sessionmgmt_sbe_v0_2.server_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cme_globex_sessionmgmt_sbe_v0_2.server_message.fields(buffer, offset, packet, parent, size_of_server_message)

    return index
  end
end

-- Server Technical Header
cme_globex_sessionmgmt_sbe_v0_2.server_technical_header = {}

-- Size: Server Technical Header
cme_globex_sessionmgmt_sbe_v0_2.server_technical_header.size =
  cme_globex_sessionmgmt_sbe_v0_2.encoding_type.size + 
  cme_globex_sessionmgmt_sbe_v0_2.message_sequence_number.size + 
  cme_globex_sessionmgmt_sbe_v0_2.sending_time.size

-- Display: Server Technical Header
cme_globex_sessionmgmt_sbe_v0_2.server_technical_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Technical Header
cme_globex_sessionmgmt_sbe_v0_2.server_technical_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Encoding Type: 2 Byte Unsigned Fixed Width Integer
  index, encoding_type = cme_globex_sessionmgmt_sbe_v0_2.encoding_type.dissect(buffer, index, packet, parent)

  -- Message Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, message_sequence_number = cme_globex_sessionmgmt_sbe_v0_2.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = cme_globex_sessionmgmt_sbe_v0_2.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Technical Header
cme_globex_sessionmgmt_sbe_v0_2.server_technical_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.server_technical_header, buffer(offset, 0))
    local index = cme_globex_sessionmgmt_sbe_v0_2.server_technical_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_sessionmgmt_sbe_v0_2.server_technical_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_sessionmgmt_sbe_v0_2.server_technical_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Packet
cme_globex_sessionmgmt_sbe_v0_2.server_packet = {}

-- Verify required size of Tcp packet
cme_globex_sessionmgmt_sbe_v0_2.server_packet.requiredsize = function(buffer)
  return buffer:len() >= cme_globex_sessionmgmt_sbe_v0_2.server_technical_header.size + cme_globex_sessionmgmt_sbe_v0_2.message_size.size + cme_globex_sessionmgmt_sbe_v0_2.message_header.size
end

-- Dissect Server Packet
cme_globex_sessionmgmt_sbe_v0_2.server_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Server Technical Header: Struct of 3 fields
  index, server_technical_header = cme_globex_sessionmgmt_sbe_v0_2.server_technical_header.dissect(buffer, index, packet, parent)

  -- Dependency for Server Message
  local end_of_payload = buffer:len()

  -- Server Message: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Server Message
    index, server_message = cme_globex_sessionmgmt_sbe_v0_2.server_message.dissect(buffer, index, packet, parent, message_size)
  end

  return index
end

-- Subscriber Heartbeat
cme_globex_sessionmgmt_sbe_v0_2.subscriber_heartbeat = {}

-- Display: Subscriber Heartbeat
cme_globex_sessionmgmt_sbe_v0_2.subscriber_heartbeat.display = function(packet, parent, length)
  return "Subscriber Heartbeat"
end


-- Dissect: Subscriber Heartbeat
cme_globex_sessionmgmt_sbe_v0_2.subscriber_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cme_globex_sessionmgmt_sbe_v0_2.subscriber_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Security Status Request Related Symbol Group
cme_globex_sessionmgmt_sbe_v0_2.security_status_request_related_symbol_group = {}

-- Size: Security Status Request Related Symbol Group
cme_globex_sessionmgmt_sbe_v0_2.security_status_request_related_symbol_group.size =
  cme_globex_sessionmgmt_sbe_v0_2.security_id.size

-- Display: Security Status Request Related Symbol Group
cme_globex_sessionmgmt_sbe_v0_2.security_status_request_related_symbol_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Request Related Symbol Group
cme_globex_sessionmgmt_sbe_v0_2.security_status_request_related_symbol_group.fields = function(buffer, offset, packet, parent, security_status_request_related_symbol_group_index)
  local index = offset

  -- Implicit Security Status Request Related Symbol Group Index
  if security_status_request_related_symbol_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_status_request_related_symbol_group_index, security_status_request_related_symbol_group_index)
    iteration:set_generated()
  end

  -- Security Id: Int32
  index, security_id = cme_globex_sessionmgmt_sbe_v0_2.security_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Request Related Symbol Group
cme_globex_sessionmgmt_sbe_v0_2.security_status_request_related_symbol_group.dissect = function(buffer, offset, packet, parent, security_status_request_related_symbol_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_status_request_related_symbol_group, buffer(offset, 0))
    local index = cme_globex_sessionmgmt_sbe_v0_2.security_status_request_related_symbol_group.fields(buffer, offset, packet, parent, security_status_request_related_symbol_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_sessionmgmt_sbe_v0_2.security_status_request_related_symbol_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_sessionmgmt_sbe_v0_2.security_status_request_related_symbol_group.fields(buffer, offset, packet, parent, security_status_request_related_symbol_group_index)
  end
end

-- Security Status Request Related Symbol Groups
cme_globex_sessionmgmt_sbe_v0_2.security_status_request_related_symbol_groups = {}

-- Calculate size of: Security Status Request Related Symbol Groups
cme_globex_sessionmgmt_sbe_v0_2.security_status_request_related_symbol_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_sessionmgmt_sbe_v0_2.group_size.size

  -- Calculate field size from count
  local security_status_request_related_symbol_group_count = buffer(offset + index - 1, 1):uint()
  index = index + security_status_request_related_symbol_group_count * 4

  return index
end

-- Display: Security Status Request Related Symbol Groups
cme_globex_sessionmgmt_sbe_v0_2.security_status_request_related_symbol_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Request Related Symbol Groups
cme_globex_sessionmgmt_sbe_v0_2.security_status_request_related_symbol_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_sessionmgmt_sbe_v0_2.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Security Status Request Related Symbol Group
  for security_status_request_related_symbol_group_index = 1, num_in_group do
    index, security_status_request_related_symbol_group = cme_globex_sessionmgmt_sbe_v0_2.security_status_request_related_symbol_group.dissect(buffer, index, packet, parent, security_status_request_related_symbol_group_index)
  end

  return index
end

-- Dissect: Security Status Request Related Symbol Groups
cme_globex_sessionmgmt_sbe_v0_2.security_status_request_related_symbol_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_status_request_related_symbol_groups, buffer(offset, 0))
    local index = cme_globex_sessionmgmt_sbe_v0_2.security_status_request_related_symbol_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_sessionmgmt_sbe_v0_2.security_status_request_related_symbol_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_sessionmgmt_sbe_v0_2.security_status_request_related_symbol_groups.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Request Security Group
cme_globex_sessionmgmt_sbe_v0_2.security_status_request_security_group = {}

-- Size: Security Status Request Security Group
cme_globex_sessionmgmt_sbe_v0_2.security_status_request_security_group.size =
  cme_globex_sessionmgmt_sbe_v0_2.security_group.size

-- Display: Security Status Request Security Group
cme_globex_sessionmgmt_sbe_v0_2.security_status_request_security_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Request Security Group
cme_globex_sessionmgmt_sbe_v0_2.security_status_request_security_group.fields = function(buffer, offset, packet, parent, security_status_request_security_group_index)
  local index = offset

  -- Implicit Security Status Request Security Group Index
  if security_status_request_security_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_status_request_security_group_index, security_status_request_security_group_index)
    iteration:set_generated()
  end

  -- Security Group: SecurityGroup
  index, security_group = cme_globex_sessionmgmt_sbe_v0_2.security_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Request Security Group
cme_globex_sessionmgmt_sbe_v0_2.security_status_request_security_group.dissect = function(buffer, offset, packet, parent, security_status_request_security_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_status_request_security_group, buffer(offset, 0))
    local index = cme_globex_sessionmgmt_sbe_v0_2.security_status_request_security_group.fields(buffer, offset, packet, parent, security_status_request_security_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_sessionmgmt_sbe_v0_2.security_status_request_security_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_sessionmgmt_sbe_v0_2.security_status_request_security_group.fields(buffer, offset, packet, parent, security_status_request_security_group_index)
  end
end

-- Security Status Request Security Groups
cme_globex_sessionmgmt_sbe_v0_2.security_status_request_security_groups = {}

-- Calculate size of: Security Status Request Security Groups
cme_globex_sessionmgmt_sbe_v0_2.security_status_request_security_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_sessionmgmt_sbe_v0_2.group_size.size

  -- Calculate field size from count
  local security_status_request_security_group_count = buffer(offset + index - 1, 1):uint()
  index = index + security_status_request_security_group_count * 6

  return index
end

-- Display: Security Status Request Security Groups
cme_globex_sessionmgmt_sbe_v0_2.security_status_request_security_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Request Security Groups
cme_globex_sessionmgmt_sbe_v0_2.security_status_request_security_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_sessionmgmt_sbe_v0_2.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Security Status Request Security Group
  for security_status_request_security_group_index = 1, num_in_group do
    index, security_status_request_security_group = cme_globex_sessionmgmt_sbe_v0_2.security_status_request_security_group.dissect(buffer, index, packet, parent, security_status_request_security_group_index)
  end

  return index
end

-- Dissect: Security Status Request Security Groups
cme_globex_sessionmgmt_sbe_v0_2.security_status_request_security_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_status_request_security_groups, buffer(offset, 0))
    local index = cme_globex_sessionmgmt_sbe_v0_2.security_status_request_security_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_sessionmgmt_sbe_v0_2.security_status_request_security_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_sessionmgmt_sbe_v0_2.security_status_request_security_groups.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Request
cme_globex_sessionmgmt_sbe_v0_2.security_status_request = {}

-- Calculate size of: Security Status Request
cme_globex_sessionmgmt_sbe_v0_2.security_status_request.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_sessionmgmt_sbe_v0_2.md_req_id.size

  index = index + cme_globex_sessionmgmt_sbe_v0_2.subscription_req_type.size

  index = index + cme_globex_sessionmgmt_sbe_v0_2.security_status_request_security_groups.size(buffer, offset + index)

  index = index + cme_globex_sessionmgmt_sbe_v0_2.security_status_request_related_symbol_groups.size(buffer, offset + index)

  return index
end

-- Display: Security Status Request
cme_globex_sessionmgmt_sbe_v0_2.security_status_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Request
cme_globex_sessionmgmt_sbe_v0_2.security_status_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Req Id: uInt32
  index, md_req_id = cme_globex_sessionmgmt_sbe_v0_2.md_req_id.dissect(buffer, index, packet, parent)

  -- Subscription Req Type: SubscriptionReqType
  index, subscription_req_type = cme_globex_sessionmgmt_sbe_v0_2.subscription_req_type.dissect(buffer, index, packet, parent)

  -- Security Status Request Security Groups: Struct of 2 fields
  index, security_status_request_security_groups = cme_globex_sessionmgmt_sbe_v0_2.security_status_request_security_groups.dissect(buffer, index, packet, parent)

  -- Security Status Request Related Symbol Groups: Struct of 2 fields
  index, security_status_request_related_symbol_groups = cme_globex_sessionmgmt_sbe_v0_2.security_status_request_related_symbol_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Request
cme_globex_sessionmgmt_sbe_v0_2.security_status_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_status_request, buffer(offset, 0))
    local index = cme_globex_sessionmgmt_sbe_v0_2.security_status_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_sessionmgmt_sbe_v0_2.security_status_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_sessionmgmt_sbe_v0_2.security_status_request.fields(buffer, offset, packet, parent)
  end
end

-- Security List Request Related Symbol Group
cme_globex_sessionmgmt_sbe_v0_2.security_list_request_related_symbol_group = {}

-- Size: Security List Request Related Symbol Group
cme_globex_sessionmgmt_sbe_v0_2.security_list_request_related_symbol_group.size =
  cme_globex_sessionmgmt_sbe_v0_2.security_id.size

-- Display: Security List Request Related Symbol Group
cme_globex_sessionmgmt_sbe_v0_2.security_list_request_related_symbol_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security List Request Related Symbol Group
cme_globex_sessionmgmt_sbe_v0_2.security_list_request_related_symbol_group.fields = function(buffer, offset, packet, parent, security_list_request_related_symbol_group_index)
  local index = offset

  -- Implicit Security List Request Related Symbol Group Index
  if security_list_request_related_symbol_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_list_request_related_symbol_group_index, security_list_request_related_symbol_group_index)
    iteration:set_generated()
  end

  -- Security Id: Int32
  index, security_id = cme_globex_sessionmgmt_sbe_v0_2.security_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security List Request Related Symbol Group
cme_globex_sessionmgmt_sbe_v0_2.security_list_request_related_symbol_group.dissect = function(buffer, offset, packet, parent, security_list_request_related_symbol_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_list_request_related_symbol_group, buffer(offset, 0))
    local index = cme_globex_sessionmgmt_sbe_v0_2.security_list_request_related_symbol_group.fields(buffer, offset, packet, parent, security_list_request_related_symbol_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_sessionmgmt_sbe_v0_2.security_list_request_related_symbol_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_sessionmgmt_sbe_v0_2.security_list_request_related_symbol_group.fields(buffer, offset, packet, parent, security_list_request_related_symbol_group_index)
  end
end

-- Security List Request Related Symbol Groups
cme_globex_sessionmgmt_sbe_v0_2.security_list_request_related_symbol_groups = {}

-- Calculate size of: Security List Request Related Symbol Groups
cme_globex_sessionmgmt_sbe_v0_2.security_list_request_related_symbol_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_sessionmgmt_sbe_v0_2.group_size.size

  -- Calculate field size from count
  local security_list_request_related_symbol_group_count = buffer(offset + index - 1, 1):uint()
  index = index + security_list_request_related_symbol_group_count * 4

  return index
end

-- Display: Security List Request Related Symbol Groups
cme_globex_sessionmgmt_sbe_v0_2.security_list_request_related_symbol_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security List Request Related Symbol Groups
cme_globex_sessionmgmt_sbe_v0_2.security_list_request_related_symbol_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_sessionmgmt_sbe_v0_2.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Security List Request Related Symbol Group
  for security_list_request_related_symbol_group_index = 1, num_in_group do
    index, security_list_request_related_symbol_group = cme_globex_sessionmgmt_sbe_v0_2.security_list_request_related_symbol_group.dissect(buffer, index, packet, parent, security_list_request_related_symbol_group_index)
  end

  return index
end

-- Dissect: Security List Request Related Symbol Groups
cme_globex_sessionmgmt_sbe_v0_2.security_list_request_related_symbol_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_list_request_related_symbol_groups, buffer(offset, 0))
    local index = cme_globex_sessionmgmt_sbe_v0_2.security_list_request_related_symbol_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_sessionmgmt_sbe_v0_2.security_list_request_related_symbol_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_sessionmgmt_sbe_v0_2.security_list_request_related_symbol_groups.fields(buffer, offset, packet, parent)
  end
end

-- Security List Request Security Group
cme_globex_sessionmgmt_sbe_v0_2.security_list_request_security_group = {}

-- Size: Security List Request Security Group
cme_globex_sessionmgmt_sbe_v0_2.security_list_request_security_group.size =
  cme_globex_sessionmgmt_sbe_v0_2.security_group.size

-- Display: Security List Request Security Group
cme_globex_sessionmgmt_sbe_v0_2.security_list_request_security_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security List Request Security Group
cme_globex_sessionmgmt_sbe_v0_2.security_list_request_security_group.fields = function(buffer, offset, packet, parent, security_list_request_security_group_index)
  local index = offset

  -- Implicit Security List Request Security Group Index
  if security_list_request_security_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_list_request_security_group_index, security_list_request_security_group_index)
    iteration:set_generated()
  end

  -- Security Group: SecurityGroup
  index, security_group = cme_globex_sessionmgmt_sbe_v0_2.security_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security List Request Security Group
cme_globex_sessionmgmt_sbe_v0_2.security_list_request_security_group.dissect = function(buffer, offset, packet, parent, security_list_request_security_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_list_request_security_group, buffer(offset, 0))
    local index = cme_globex_sessionmgmt_sbe_v0_2.security_list_request_security_group.fields(buffer, offset, packet, parent, security_list_request_security_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_sessionmgmt_sbe_v0_2.security_list_request_security_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_sessionmgmt_sbe_v0_2.security_list_request_security_group.fields(buffer, offset, packet, parent, security_list_request_security_group_index)
  end
end

-- Security List Request Security Groups
cme_globex_sessionmgmt_sbe_v0_2.security_list_request_security_groups = {}

-- Calculate size of: Security List Request Security Groups
cme_globex_sessionmgmt_sbe_v0_2.security_list_request_security_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_sessionmgmt_sbe_v0_2.group_size.size

  -- Calculate field size from count
  local security_list_request_security_group_count = buffer(offset + index - 1, 1):uint()
  index = index + security_list_request_security_group_count * 6

  return index
end

-- Display: Security List Request Security Groups
cme_globex_sessionmgmt_sbe_v0_2.security_list_request_security_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security List Request Security Groups
cme_globex_sessionmgmt_sbe_v0_2.security_list_request_security_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_sessionmgmt_sbe_v0_2.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Security List Request Security Group
  for security_list_request_security_group_index = 1, num_in_group do
    index, security_list_request_security_group = cme_globex_sessionmgmt_sbe_v0_2.security_list_request_security_group.dissect(buffer, index, packet, parent, security_list_request_security_group_index)
  end

  return index
end

-- Dissect: Security List Request Security Groups
cme_globex_sessionmgmt_sbe_v0_2.security_list_request_security_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_list_request_security_groups, buffer(offset, 0))
    local index = cme_globex_sessionmgmt_sbe_v0_2.security_list_request_security_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_sessionmgmt_sbe_v0_2.security_list_request_security_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_sessionmgmt_sbe_v0_2.security_list_request_security_groups.fields(buffer, offset, packet, parent)
  end
end

-- Security List Request
cme_globex_sessionmgmt_sbe_v0_2.security_list_request = {}

-- Calculate size of: Security List Request
cme_globex_sessionmgmt_sbe_v0_2.security_list_request.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_sessionmgmt_sbe_v0_2.md_req_id.size

  index = index + cme_globex_sessionmgmt_sbe_v0_2.subscription_req_type.size

  index = index + cme_globex_sessionmgmt_sbe_v0_2.security_list_request_security_groups.size(buffer, offset + index)

  index = index + cme_globex_sessionmgmt_sbe_v0_2.security_list_request_related_symbol_groups.size(buffer, offset + index)

  return index
end

-- Display: Security List Request
cme_globex_sessionmgmt_sbe_v0_2.security_list_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security List Request
cme_globex_sessionmgmt_sbe_v0_2.security_list_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Req Id: uInt32
  index, md_req_id = cme_globex_sessionmgmt_sbe_v0_2.md_req_id.dissect(buffer, index, packet, parent)

  -- Subscription Req Type: SubscriptionReqType
  index, subscription_req_type = cme_globex_sessionmgmt_sbe_v0_2.subscription_req_type.dissect(buffer, index, packet, parent)

  -- Security List Request Security Groups: Struct of 2 fields
  index, security_list_request_security_groups = cme_globex_sessionmgmt_sbe_v0_2.security_list_request_security_groups.dissect(buffer, index, packet, parent)

  -- Security List Request Related Symbol Groups: Struct of 2 fields
  index, security_list_request_related_symbol_groups = cme_globex_sessionmgmt_sbe_v0_2.security_list_request_related_symbol_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security List Request
cme_globex_sessionmgmt_sbe_v0_2.security_list_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.security_list_request, buffer(offset, 0))
    local index = cme_globex_sessionmgmt_sbe_v0_2.security_list_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_sessionmgmt_sbe_v0_2.security_list_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_sessionmgmt_sbe_v0_2.security_list_request.fields(buffer, offset, packet, parent)
  end
end

-- Market Data Request Related Symbol Group
cme_globex_sessionmgmt_sbe_v0_2.market_data_request_related_symbol_group = {}

-- Size: Market Data Request Related Symbol Group
cme_globex_sessionmgmt_sbe_v0_2.market_data_request_related_symbol_group.size =
  cme_globex_sessionmgmt_sbe_v0_2.security_id.size

-- Display: Market Data Request Related Symbol Group
cme_globex_sessionmgmt_sbe_v0_2.market_data_request_related_symbol_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Data Request Related Symbol Group
cme_globex_sessionmgmt_sbe_v0_2.market_data_request_related_symbol_group.fields = function(buffer, offset, packet, parent, market_data_request_related_symbol_group_index)
  local index = offset

  -- Implicit Market Data Request Related Symbol Group Index
  if market_data_request_related_symbol_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.market_data_request_related_symbol_group_index, market_data_request_related_symbol_group_index)
    iteration:set_generated()
  end

  -- Security Id: Int32
  index, security_id = cme_globex_sessionmgmt_sbe_v0_2.security_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Data Request Related Symbol Group
cme_globex_sessionmgmt_sbe_v0_2.market_data_request_related_symbol_group.dissect = function(buffer, offset, packet, parent, market_data_request_related_symbol_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.market_data_request_related_symbol_group, buffer(offset, 0))
    local index = cme_globex_sessionmgmt_sbe_v0_2.market_data_request_related_symbol_group.fields(buffer, offset, packet, parent, market_data_request_related_symbol_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_sessionmgmt_sbe_v0_2.market_data_request_related_symbol_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_sessionmgmt_sbe_v0_2.market_data_request_related_symbol_group.fields(buffer, offset, packet, parent, market_data_request_related_symbol_group_index)
  end
end

-- Market Data Request Related Symbol Groups
cme_globex_sessionmgmt_sbe_v0_2.market_data_request_related_symbol_groups = {}

-- Calculate size of: Market Data Request Related Symbol Groups
cme_globex_sessionmgmt_sbe_v0_2.market_data_request_related_symbol_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_sessionmgmt_sbe_v0_2.group_size.size

  -- Calculate field size from count
  local market_data_request_related_symbol_group_count = buffer(offset + index - 1, 1):uint()
  index = index + market_data_request_related_symbol_group_count * 4

  return index
end

-- Display: Market Data Request Related Symbol Groups
cme_globex_sessionmgmt_sbe_v0_2.market_data_request_related_symbol_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Data Request Related Symbol Groups
cme_globex_sessionmgmt_sbe_v0_2.market_data_request_related_symbol_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_sessionmgmt_sbe_v0_2.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Market Data Request Related Symbol Group
  for market_data_request_related_symbol_group_index = 1, num_in_group do
    index, market_data_request_related_symbol_group = cme_globex_sessionmgmt_sbe_v0_2.market_data_request_related_symbol_group.dissect(buffer, index, packet, parent, market_data_request_related_symbol_group_index)
  end

  return index
end

-- Dissect: Market Data Request Related Symbol Groups
cme_globex_sessionmgmt_sbe_v0_2.market_data_request_related_symbol_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.market_data_request_related_symbol_groups, buffer(offset, 0))
    local index = cme_globex_sessionmgmt_sbe_v0_2.market_data_request_related_symbol_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_sessionmgmt_sbe_v0_2.market_data_request_related_symbol_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_sessionmgmt_sbe_v0_2.market_data_request_related_symbol_groups.fields(buffer, offset, packet, parent)
  end
end

-- Market Data Request Security Group
cme_globex_sessionmgmt_sbe_v0_2.market_data_request_security_group = {}

-- Size: Market Data Request Security Group
cme_globex_sessionmgmt_sbe_v0_2.market_data_request_security_group.size =
  cme_globex_sessionmgmt_sbe_v0_2.security_group.size

-- Display: Market Data Request Security Group
cme_globex_sessionmgmt_sbe_v0_2.market_data_request_security_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Data Request Security Group
cme_globex_sessionmgmt_sbe_v0_2.market_data_request_security_group.fields = function(buffer, offset, packet, parent, market_data_request_security_group_index)
  local index = offset

  -- Implicit Market Data Request Security Group Index
  if market_data_request_security_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.market_data_request_security_group_index, market_data_request_security_group_index)
    iteration:set_generated()
  end

  -- Security Group: SecurityGroup
  index, security_group = cme_globex_sessionmgmt_sbe_v0_2.security_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Data Request Security Group
cme_globex_sessionmgmt_sbe_v0_2.market_data_request_security_group.dissect = function(buffer, offset, packet, parent, market_data_request_security_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.market_data_request_security_group, buffer(offset, 0))
    local index = cme_globex_sessionmgmt_sbe_v0_2.market_data_request_security_group.fields(buffer, offset, packet, parent, market_data_request_security_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_sessionmgmt_sbe_v0_2.market_data_request_security_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_sessionmgmt_sbe_v0_2.market_data_request_security_group.fields(buffer, offset, packet, parent, market_data_request_security_group_index)
  end
end

-- Market Data Request Security Groups
cme_globex_sessionmgmt_sbe_v0_2.market_data_request_security_groups = {}

-- Calculate size of: Market Data Request Security Groups
cme_globex_sessionmgmt_sbe_v0_2.market_data_request_security_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_sessionmgmt_sbe_v0_2.group_size.size

  -- Calculate field size from count
  local market_data_request_security_group_count = buffer(offset + index - 1, 1):uint()
  index = index + market_data_request_security_group_count * 6

  return index
end

-- Display: Market Data Request Security Groups
cme_globex_sessionmgmt_sbe_v0_2.market_data_request_security_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Data Request Security Groups
cme_globex_sessionmgmt_sbe_v0_2.market_data_request_security_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_sessionmgmt_sbe_v0_2.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Market Data Request Security Group
  for market_data_request_security_group_index = 1, num_in_group do
    index, market_data_request_security_group = cme_globex_sessionmgmt_sbe_v0_2.market_data_request_security_group.dissect(buffer, index, packet, parent, market_data_request_security_group_index)
  end

  return index
end

-- Dissect: Market Data Request Security Groups
cme_globex_sessionmgmt_sbe_v0_2.market_data_request_security_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.market_data_request_security_groups, buffer(offset, 0))
    local index = cme_globex_sessionmgmt_sbe_v0_2.market_data_request_security_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_sessionmgmt_sbe_v0_2.market_data_request_security_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_sessionmgmt_sbe_v0_2.market_data_request_security_groups.fields(buffer, offset, packet, parent)
  end
end

-- Market Data Request
cme_globex_sessionmgmt_sbe_v0_2.market_data_request = {}

-- Calculate size of: Market Data Request
cme_globex_sessionmgmt_sbe_v0_2.market_data_request.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_sessionmgmt_sbe_v0_2.md_req_id.size

  index = index + cme_globex_sessionmgmt_sbe_v0_2.subscription_req_type.size

  index = index + cme_globex_sessionmgmt_sbe_v0_2.market_data_request_security_groups.size(buffer, offset + index)

  index = index + cme_globex_sessionmgmt_sbe_v0_2.market_data_request_related_symbol_groups.size(buffer, offset + index)

  return index
end

-- Display: Market Data Request
cme_globex_sessionmgmt_sbe_v0_2.market_data_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Data Request
cme_globex_sessionmgmt_sbe_v0_2.market_data_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Req Id: uInt32
  index, md_req_id = cme_globex_sessionmgmt_sbe_v0_2.md_req_id.dissect(buffer, index, packet, parent)

  -- Subscription Req Type: SubscriptionReqType
  index, subscription_req_type = cme_globex_sessionmgmt_sbe_v0_2.subscription_req_type.dissect(buffer, index, packet, parent)

  -- Market Data Request Security Groups: Struct of 2 fields
  index, market_data_request_security_groups = cme_globex_sessionmgmt_sbe_v0_2.market_data_request_security_groups.dissect(buffer, index, packet, parent)

  -- Market Data Request Related Symbol Groups: Struct of 2 fields
  index, market_data_request_related_symbol_groups = cme_globex_sessionmgmt_sbe_v0_2.market_data_request_related_symbol_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Data Request
cme_globex_sessionmgmt_sbe_v0_2.market_data_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.market_data_request, buffer(offset, 0))
    local index = cme_globex_sessionmgmt_sbe_v0_2.market_data_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_sessionmgmt_sbe_v0_2.market_data_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_sessionmgmt_sbe_v0_2.market_data_request.fields(buffer, offset, packet, parent)
  end
end

-- Negotiate
cme_globex_sessionmgmt_sbe_v0_2.negotiate = {}

-- Size: Negotiate
cme_globex_sessionmgmt_sbe_v0_2.negotiate.size =
  cme_globex_sessionmgmt_sbe_v0_2.hmac_signature.size + 
  cme_globex_sessionmgmt_sbe_v0_2.access_key_id.size + 
  cme_globex_sessionmgmt_sbe_v0_2.uuid.size + 
  cme_globex_sessionmgmt_sbe_v0_2.request_timestamp.size + 
  cme_globex_sessionmgmt_sbe_v0_2.session.size + 
  cme_globex_sessionmgmt_sbe_v0_2.firm.size

-- Display: Negotiate
cme_globex_sessionmgmt_sbe_v0_2.negotiate.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Negotiate
cme_globex_sessionmgmt_sbe_v0_2.negotiate.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hmac Signature: String32Req
  index, hmac_signature = cme_globex_sessionmgmt_sbe_v0_2.hmac_signature.dissect(buffer, index, packet, parent)

  -- Access Key Id: String20Req
  index, access_key_id = cme_globex_sessionmgmt_sbe_v0_2.access_key_id.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_globex_sessionmgmt_sbe_v0_2.uuid.dissect(buffer, index, packet, parent)

  -- Request Timestamp: uInt64
  index, request_timestamp = cme_globex_sessionmgmt_sbe_v0_2.request_timestamp.dissect(buffer, index, packet, parent)

  -- Session: String5
  index, session = cme_globex_sessionmgmt_sbe_v0_2.session.dissect(buffer, index, packet, parent)

  -- Firm: String5
  index, firm = cme_globex_sessionmgmt_sbe_v0_2.firm.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Negotiate
cme_globex_sessionmgmt_sbe_v0_2.negotiate.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.negotiate, buffer(offset, 0))
    local index = cme_globex_sessionmgmt_sbe_v0_2.negotiate.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_sessionmgmt_sbe_v0_2.negotiate.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_sessionmgmt_sbe_v0_2.negotiate.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
cme_globex_sessionmgmt_sbe_v0_2.client_payload = {}

-- Dissect: Client Payload
cme_globex_sessionmgmt_sbe_v0_2.client_payload.dissect = function(buffer, offset, packet, parent, template_id)
  -- Dissect Negotiate
  if template_id == 200 then
    return cme_globex_sessionmgmt_sbe_v0_2.negotiate.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Terminate
  if template_id == 203 then
    return cme_globex_sessionmgmt_sbe_v0_2.terminate.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Data Request
  if template_id == 205 then
    return cme_globex_sessionmgmt_sbe_v0_2.market_data_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security List Request
  if template_id == 208 then
    return cme_globex_sessionmgmt_sbe_v0_2.security_list_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Request
  if template_id == 209 then
    return cme_globex_sessionmgmt_sbe_v0_2.security_status_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Subscriber Heartbeat
  if template_id == 210 then
    return cme_globex_sessionmgmt_sbe_v0_2.subscriber_heartbeat.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Message
cme_globex_sessionmgmt_sbe_v0_2.client_message = {}

-- Display: Client Message
cme_globex_sessionmgmt_sbe_v0_2.client_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Message
cme_globex_sessionmgmt_sbe_v0_2.client_message.fields = function(buffer, offset, packet, parent, size_of_client_message)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = cme_globex_sessionmgmt_sbe_v0_2.message_size.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = cme_globex_sessionmgmt_sbe_v0_2.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Client Payload: Runtime Type with 6 branches
  index = cme_globex_sessionmgmt_sbe_v0_2.client_payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Client Message
cme_globex_sessionmgmt_sbe_v0_2.client_message.dissect = function(buffer, offset, packet, parent, size_of_client_message)
  local index = offset + size_of_client_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.client_message, buffer(offset, 0))
    local current = cme_globex_sessionmgmt_sbe_v0_2.client_message.fields(buffer, offset, packet, parent, size_of_client_message)
    parent:set_len(size_of_client_message)
    local display = cme_globex_sessionmgmt_sbe_v0_2.client_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cme_globex_sessionmgmt_sbe_v0_2.client_message.fields(buffer, offset, packet, parent, size_of_client_message)

    return index
  end
end

-- Client Technical Header
cme_globex_sessionmgmt_sbe_v0_2.client_technical_header = {}

-- Size: Client Technical Header
cme_globex_sessionmgmt_sbe_v0_2.client_technical_header.size =
  cme_globex_sessionmgmt_sbe_v0_2.encoding_type.size + 
  cme_globex_sessionmgmt_sbe_v0_2.message_sequence_number.size + 
  cme_globex_sessionmgmt_sbe_v0_2.sending_time.size

-- Display: Client Technical Header
cme_globex_sessionmgmt_sbe_v0_2.client_technical_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Technical Header
cme_globex_sessionmgmt_sbe_v0_2.client_technical_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Encoding Type: 2 Byte Unsigned Fixed Width Integer
  index, encoding_type = cme_globex_sessionmgmt_sbe_v0_2.encoding_type.dissect(buffer, index, packet, parent)

  -- Message Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, message_sequence_number = cme_globex_sessionmgmt_sbe_v0_2.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = cme_globex_sessionmgmt_sbe_v0_2.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Technical Header
cme_globex_sessionmgmt_sbe_v0_2.client_technical_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2.fields.client_technical_header, buffer(offset, 0))
    local index = cme_globex_sessionmgmt_sbe_v0_2.client_technical_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_sessionmgmt_sbe_v0_2.client_technical_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_sessionmgmt_sbe_v0_2.client_technical_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Packet
cme_globex_sessionmgmt_sbe_v0_2.client_packet = {}

-- Verify required size of Tcp packet
cme_globex_sessionmgmt_sbe_v0_2.client_packet.requiredsize = function(buffer)
  return buffer:len() >= cme_globex_sessionmgmt_sbe_v0_2.client_technical_header.size + cme_globex_sessionmgmt_sbe_v0_2.message_size.size + cme_globex_sessionmgmt_sbe_v0_2.message_header.size
end

-- Dissect Client Packet
cme_globex_sessionmgmt_sbe_v0_2.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Client Technical Header: Struct of 3 fields
  index, client_technical_header = cme_globex_sessionmgmt_sbe_v0_2.client_technical_header.dissect(buffer, index, packet, parent)

  -- Dependency for Client Message
  local end_of_payload = buffer:len()

  -- Client Message: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Client Message
    index, client_message = cme_globex_sessionmgmt_sbe_v0_2.client_message.dissect(buffer, index, packet, parent, message_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cme_globex_sessionmgmt_sbe_v0_2.init()
end

-- Connection roles for Cme Globex SessionMgmt Sbe 0.2: Client is the initiator, Server is the acceptor
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
cme_globex_sessionmgmt_sbe_v0_2.role = function(packet)
  if omi_cme_globex_sessionmgmt_sbe_v0_2.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_cme_globex_sessionmgmt_sbe_v0_2.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_cme_globex_sessionmgmt_sbe_v0_2.prefs.acceptor_port

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

  if omi_cme_globex_sessionmgmt_sbe_v0_2.prefs.swap_sides then
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
cme_globex_sessionmgmt_sbe_v0_2.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Cme Globex SessionMgmt Sbe 0.2
function omi_cme_globex_sessionmgmt_sbe_v0_2.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cme_globex_sessionmgmt_sbe_v0_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_cme_globex_sessionmgmt_sbe_v0_2, buffer(), omi_cme_globex_sessionmgmt_sbe_v0_2.description, "("..buffer:len().." Bytes)")

  local role = cme_globex_sessionmgmt_sbe_v0_2.role(packet)

  if role == "initiator" then
    return cme_globex_sessionmgmt_sbe_v0_2.client_packet.dissect(buffer, packet, protocol)
  end

  return cme_globex_sessionmgmt_sbe_v0_2.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
cme_globex_sessionmgmt_sbe_v0_2.client_packet.fingerprint = function(buffer)
  if buffer:len() < 20 then
    return false
  end

  local template_id = buffer(18, 2):le_uint()

  -- Negotiate
  if template_id == 200 then
    return true
  end

  -- Terminate
  if template_id == 203 then
    return true
  end

  -- Market Data Request
  if template_id == 205 then
    return true
  end

  -- Security List Request
  if template_id == 208 then
    return true
  end

  -- Security Status Request
  if template_id == 209 then
    return true
  end

  -- Subscriber Heartbeat
  if template_id == 210 then
    return true
  end

  return false
end

-- Fingerprint of Server Packet: would its message dispatch accept this frame?
cme_globex_sessionmgmt_sbe_v0_2.server_packet.fingerprint = function(buffer)
  if buffer:len() < 20 then
    return false
  end

  local template_id = buffer(18, 2):le_uint()

  -- Negotiation Reject
  if template_id == 201 then
    return true
  end

  -- Negotiation Response
  if template_id == 202 then
    return true
  end

  -- Terminate
  if template_id == 203 then
    return true
  end

  -- Request Ack
  if template_id == 206 then
    return true
  end

  -- Request Reject
  if template_id == 207 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Schema Id Field
cme_globex_sessionmgmt_sbe_v0_2.schema_id.client_packet_verify = function(buffer)
  -- Attempt to read field
  local value = buffer(20, 2):le_uint()

  if value == 2 then
    return true
  end

  return false
end

-- Verify Version Field
cme_globex_sessionmgmt_sbe_v0_2.version.client_packet_verify = function(buffer)
  -- Attempt to read field
  local value = buffer(22, 2):le_uint()

  if value == 0 then
    return true
  end

  return false
end

-- Verify Schema Id Field
cme_globex_sessionmgmt_sbe_v0_2.schema_id.server_packet_verify = function(buffer)
  -- Attempt to read field
  local value = buffer(20, 2):le_uint()

  if value == 2 then
    return true
  end

  return false
end

-- Verify Version Field
cme_globex_sessionmgmt_sbe_v0_2.version.server_packet_verify = function(buffer)
  -- Attempt to read field
  local value = buffer(22, 2):le_uint()

  if value == 0 then
    return true
  end

  return false
end

-- Dissector Heuristic for Cme Globex SessionMgmt Sbe 0.2 (Tcp)
local function omi_cme_globex_sessionmgmt_sbe_v0_2_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cme_globex_sessionmgmt_sbe_v0_2.client_packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not cme_globex_sessionmgmt_sbe_v0_2.schema_id.client_packet_verify(buffer) then return false end

  -- Verify Version
  if not cme_globex_sessionmgmt_sbe_v0_2.version.client_packet_verify(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not cme_globex_sessionmgmt_sbe_v0_2.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cme_globex_sessionmgmt_sbe_v0_2
  omi_cme_globex_sessionmgmt_sbe_v0_2.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Cme Globex SessionMgmt Sbe 0.2 (Tcp)
local function omi_cme_globex_sessionmgmt_sbe_v0_2_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cme_globex_sessionmgmt_sbe_v0_2.server_packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not cme_globex_sessionmgmt_sbe_v0_2.schema_id.server_packet_verify(buffer) then return false end

  -- Verify Version
  if not cme_globex_sessionmgmt_sbe_v0_2.version.server_packet_verify(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not cme_globex_sessionmgmt_sbe_v0_2.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cme_globex_sessionmgmt_sbe_v0_2
  omi_cme_globex_sessionmgmt_sbe_v0_2.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Cme Globex SessionMgmt Sbe 0.2 (Tcp): apply the heuristic of the sender's connection role
local function omi_cme_globex_sessionmgmt_sbe_v0_2_tcp_heuristic(buffer, packet, parent)
  local role = cme_globex_sessionmgmt_sbe_v0_2.role(packet)
  local initiator = omi_cme_globex_sessionmgmt_sbe_v0_2_tcp_initiator_heuristic
  local acceptor = omi_cme_globex_sessionmgmt_sbe_v0_2_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  cme_globex_sessionmgmt_sbe_v0_2.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  cme_globex_sessionmgmt_sbe_v0_2.swap(packet)

  return false
end

-- Register Heuristics for Cme Globex SessionMgmt Sbe 0.2
omi_cme_globex_sessionmgmt_sbe_v0_2:register_heuristic("tcp", omi_cme_globex_sessionmgmt_sbe_v0_2_tcp_heuristic)

-- Register Cme Globex SessionMgmt Sbe 0.2 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cme_globex_sessionmgmt_sbe_v0_2)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: CME Group
--   Version: 0.2
--   Date: Wednesday, March 10, 2021
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
