-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nse NseFo OrderEntry NnfDirect 9.50 Protocol
local omi_nse_nsefo_orderentry_nnfdirect_v9_50 = Proto("Omi.Nse.NseFo.OrderEntry.NnfDirect.v9.50", "Nse NseFo OrderEntry NnfDirect 9.50")

-- Protocol table
local nse_nsefo_orderentry_nnfdirect_v9_50 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nse NseFo OrderEntry NnfDirect 9.50 Fields
omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.alpha_char = ProtoField.new("Alpha Char", "nse.nsefo.orderentry.nnfdirect.v9.50.alphachar", ftypes.STRING)
omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.checksum = ProtoField.new("Checksum", "nse.nsefo.orderentry.nnfdirect.v9.50.checksum", ftypes.BYTES)
omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.error_code = ProtoField.new("Error Code", "nse.nsefo.orderentry.nnfdirect.v9.50.errorcode", ftypes.INT16)
omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.header_timestamp = ProtoField.new("Header Timestamp", "nse.nsefo.orderentry.nnfdirect.v9.50.headertimestamp", ftypes.INT64)
omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.log_time = ProtoField.new("Log Time", "nse.nsefo.orderentry.nnfdirect.v9.50.logtime", ftypes.INT32)
omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.message_length = ProtoField.new("Message Length", "nse.nsefo.orderentry.nnfdirect.v9.50.messagelength", ftypes.INT16)
omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.packet_length = ProtoField.new("Packet Length", "nse.nsefo.orderentry.nnfdirect.v9.50.packetlength", ftypes.UINT16)
omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.packet_sequence_number = ProtoField.new("Packet Sequence Number", "nse.nsefo.orderentry.nnfdirect.v9.50.packetsequencenumber", ftypes.UINT32)
omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.time_stamp_1 = ProtoField.new("Time Stamp 1", "nse.nsefo.orderentry.nnfdirect.v9.50.timestamp1", ftypes.STRING)
omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.time_stamp_2 = ProtoField.new("Time Stamp 2", "nse.nsefo.orderentry.nnfdirect.v9.50.timestamp2", ftypes.STRING)
omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.trader_id = ProtoField.new("Trader Id", "nse.nsefo.orderentry.nnfdirect.v9.50.traderid", ftypes.INT32)
omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.transaction_code = ProtoField.new("Transaction Code", "nse.nsefo.orderentry.nnfdirect.v9.50.transactioncode", ftypes.INT16)

-- Nse NseFo OrderEntry NnfDirect 9.50 Framing
omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.direct_packet = ProtoField.new("Direct Packet", "nse.nsefo.orderentry.nnfdirect.v9.50.directpacket", ftypes.STRING)
omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.message_header = ProtoField.new("Message Header", "nse.nsefo.orderentry.nnfdirect.v9.50.messageheader", ftypes.STRING)
omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.packet = ProtoField.new("Packet", "nse.nsefo.orderentry.nnfdirect.v9.50.packet", ftypes.STRING)
omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.packet_header = ProtoField.new("Packet Header", "nse.nsefo.orderentry.nnfdirect.v9.50.packetheader", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nse NseFo OrderEntry NnfDirect 9.50 Element Dissection Options
show.structs = true
show.headers = true

-- Register Nse NseFo OrderEntry NnfDirect 9.50 Show Options
omi_nse_nsefo_orderentry_nnfdirect_v9_50.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nse_nsefo_orderentry_nnfdirect_v9_50.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

-- Handle changed preferences
function omi_nse_nsefo_orderentry_nnfdirect_v9_50.prefs_changed()

  -- Check if preferences have changed
  if show.headers ~= omi_nse_nsefo_orderentry_nnfdirect_v9_50.prefs.show_headers then
    show.headers = omi_nse_nsefo_orderentry_nnfdirect_v9_50.prefs.show_headers
  end
  if show.structs ~= omi_nse_nsefo_orderentry_nnfdirect_v9_50.prefs.show_structs then
    show.structs = omi_nse_nsefo_orderentry_nnfdirect_v9_50.prefs.show_structs
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
-- Nse NseFo OrderEntry NnfDirect 9.50 Fields
-----------------------------------------------------------------------

-- Alpha Char
nse_nsefo_orderentry_nnfdirect_v9_50.alpha_char = {}

-- Size: Alpha Char
nse_nsefo_orderentry_nnfdirect_v9_50.alpha_char.size = 2

-- Display: Alpha Char
nse_nsefo_orderentry_nnfdirect_v9_50.alpha_char.display = function(value)
  return "Alpha Char: "..value
end

-- Dissect: Alpha Char
nse_nsefo_orderentry_nnfdirect_v9_50.alpha_char.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnfdirect_v9_50.alpha_char.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnfdirect_v9_50.alpha_char.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.alpha_char, range, value, display)

  return offset + length, value
end

-- Checksum
nse_nsefo_orderentry_nnfdirect_v9_50.checksum = {}

-- Size: Checksum
nse_nsefo_orderentry_nnfdirect_v9_50.checksum.size = 16

-- Display: Checksum
nse_nsefo_orderentry_nnfdirect_v9_50.checksum.display = function(value)
  return "Checksum: "..value
end

-- Dissect: Checksum
nse_nsefo_orderentry_nnfdirect_v9_50.checksum.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnfdirect_v9_50.checksum.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsefo_orderentry_nnfdirect_v9_50.checksum.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.checksum, range, value, display)

  return offset + length, value
end

-- Error Code
nse_nsefo_orderentry_nnfdirect_v9_50.error_code = {}

-- Size: Error Code
nse_nsefo_orderentry_nnfdirect_v9_50.error_code.size = 2

-- Display: Error Code
nse_nsefo_orderentry_nnfdirect_v9_50.error_code.display = function(value)
  if value == 293 then
    return "Error Code: Invalid Instrument Type (293)"
  end
  if value == 509 then
    return "Error Code: Order Number Invalid (509)"
  end
  if value == 8049 then
    return "Error Code: Ord Cxl Initiator Auc Not Allowed (8049)"
  end
  if value == 8485 then
    return "Error Code: Auction Number Invalid (8485)"
  end
  if value == 16000 then
    return "Error Code: Market Closed (16000)"
  end
  if value == 16001 then
    return "Error Code: E Invalid User (16001)"
  end
  if value == 16003 then
    return "Error Code: Error Bad Trans Code (16003)"
  end
  if value == 16004 then
    return "Error Code: E User Already Signed On (16004)"
  end
  if value == 16005 then
    return "Error Code: E Invalid Signoff (16005)"
  end
  if value == 16006 then
    return "Error Code: E Invalid Signon (16006)"
  end
  if value == 16007 then
    return "Error Code: E Signon Not Possible (16007)"
  end
  if value == 16012 then
    return "Error Code: Err Invalid Symbol (16012)"
  end
  if value == 16013 then
    return "Error Code: Err Invalid Order Number (16013)"
  end
  if value == 16014 then
    return "Error Code: E Not Your Order (16014)"
  end
  if value == 16015 then
    return "Error Code: E Not Your Fill (16015)"
  end
  if value == 16016 then
    return "Error Code: E Invalid Fill Number (16016)"
  end
  if value == 16019 then
    return "Error Code: E Stock Not Found (16019)"
  end
  if value == 16020 then
    return "Error Code: E Order Price Out Of Revised Price Ra (16020)"
  end
  if value == 16035 then
    return "Error Code: Security Not Available (16035)"
  end
  if value == 16041 then
    return "Error Code: Broker Not Found (16041)"
  end
  if value == 16042 then
    return "Error Code: User Not Found (16042)"
  end
  if value == 16043 then
    return "Error Code: Duplicate Record (16043)"
  end
  if value == 16044 then
    return "Error Code: E Order Modified (16044)"
  end
  if value == 16049 then
    return "Error Code: Stock Suspended (16049)"
  end
  if value == 16052 then
    return "Error Code: Err Function Not Available (16052)"
  end
  if value == 16053 then
    return "Error Code: E Change Password (16053)"
  end
  if value == 16054 then
    return "Error Code: Err Invalid Branch (16054)"
  end
  if value == 16056 then
    return "Error Code: Oe Program Error (16056)"
  end
  if value == 16063 then
    return "Error Code: Err Invalid Status (16063)"
  end
  if value == 16070 then
    return "Error Code: Err Data Not Changed (16070)"
  end
  if value == 16086 then
    return "Error Code: E Dup Trd Cxl Request (16086)"
  end
  if value == 16098 then
    return "Error Code: Err Invalid Buyer User Id (16098)"
  end
  if value == 16099 then
    return "Error Code: Err Invalid Seller User Id (16099)"
  end
  if value == 16100 then
    return "Error Code: E Invalid Version (16100)"
  end
  if value == 16104 then
    return "Error Code: Oe System Error (16104)"
  end
  if value == 16134 then
    return "Error Code: Err User Disabled (16134)"
  end
  if value == 16145 then
    return "Error Code: Oe Invalid Stock Status (16145)"
  end
  if value == 16148 then
    return "Error Code: Err Invalid User Id (16148)"
  end
  if value == 16154 then
    return "Error Code: Err Invalid Trader Id (16154)"
  end
  if value == 16169 then
    return "Error Code: Oe Ato In Open (16169)"
  end
  if value == 16198 then
    return "Error Code: E Dup Request (16198)"
  end
  if value == 16227 then
    return "Error Code: E Only Cp Allowed (16227)"
  end
  if value == 16228 then
    return "Error Code: E Sl Mit Nt Not Allowed Pclose (16228)"
  end
  if value == 16229 then
    return "Error Code: E Gtc Gtd Ord Not Allowed Pclose (16229)"
  end
  if value == 16230 then
    return "Error Code: Oe Cont Mod Not Allowed (16230)"
  end
  if value == 16231 then
    return "Error Code: Trd Cont Mod Not Allowed (16231)"
  end
  if value == 16233 then
    return "Error Code: Str Pro Partivipant Invalid (16233)"
  end
  if value == 16247 then
    return "Error Code: Error Invalid Price (16247)"
  end
  if value == 16251 then
    return "Error Code: Oe Diff Trd Mod Vol (16251)"
  end
  if value == 16260 then
    return "Error Code: Error User Not Exists In System (16260)"
  end
  if value == 16264 then
    return "Error Code: Err Already Deleted (16264)"
  end
  if value == 16273 then
    return "Error Code: Record Not Found (16273)"
  end
  if value == 16278 then
    return "Error Code: Oe Markets Closed (16278)"
  end
  if value == 16279 then
    return "Error Code: Oe Security Not Admitted (16279)"
  end
  if value == 16280 then
    return "Error Code: Oe Security Matured (16280)"
  end
  if value == 16281 then
    return "Error Code: Oe Security Expelled (16281)"
  end
  if value == 16282 then
    return "Error Code: Oe Issued Cap Exceeds (16282)"
  end
  if value == 16283 then
    return "Error Code: Oe Price Not Mult (16283)"
  end
  if value == 16284 then
    return "Error Code: Oe Price Exceeds Day Min Max (16284)"
  end
  if value == 16285 then
    return "Error Code: Oe Is Not Active (16285)"
  end
  if value == 16300 then
    return "Error Code: E System Wrong State (16300)"
  end
  if value == 16303 then
    return "Error Code: Oe Auction Pending (16303)"
  end
  if value == 16307 then
    return "Error Code: Oe Qty Freeze Can (16307)"
  end
  if value == 16308 then
    return "Error Code: Oe Price Freeze Can (16308)"
  end
  if value == 16311 then
    return "Error Code: Oe Sol Period Over (16311)"
  end
  if value == 16312 then
    return "Error Code: Oe Comp Period Over (16312)"
  end
  if value == 16313 then
    return "Error Code: Oe Auc Period Greater (16313)"
  end
  if value == 16315 then
    return "Error Code: Oe Limit Trigger (16315)"
  end
  if value == 16316 then
    return "Error Code: Oe Trigger Price Not Mult (16316)"
  end
  if value == 16317 then
    return "Error Code: Oe No Aon Attrib (16317)"
  end
  if value == 16318 then
    return "Error Code: Oe No Mf Attrib (16318)"
  end
  if value == 16319 then
    return "Error Code: Oe No Aon In Attrib 1 (16319)"
  end
  if value == 16320 then
    return "Error Code: Oe No Mf Attrib 1 (16320)"
  end
  if value == 16321 then
    return "Error Code: Oe Mf Greater Disc (16321)"
  end
  if value == 16322 then
    return "Error Code: Oe Mf Not Mult (16322)"
  end
  if value == 16323 then
    return "Error Code: Oe Mf Greater Original (16323)"
  end
  if value == 16324 then
    return "Error Code: Oe Disc Greater Original (16324)"
  end
  if value == 16325 then
    return "Error Code: Oe Disc Not Mult (16325)"
  end
  if value == 16326 then
    return "Error Code: Oe Gtd Greater (16326)"
  end
  if value == 16327 then
    return "Error Code: Oe Quantity Gerater Rl (16327)"
  end
  if value == 16328 then
    return "Error Code: Oe Quantity Not Mult Rl (16328)"
  end
  if value == 16329 then
    return "Error Code: Oe Broker Not Permitted (16329)"
  end
  if value == 16330 then
    return "Error Code: Oe Is Suspended (16330)"
  end
  if value == 16333 then
    return "Error Code: Oe Branch Li Mit Exceeded (16333)"
  end
  if value == 16343 then
    return "Error Code: Oe Ord Can Changed (16343)"
  end
  if value == 16344 then
    return "Error Code: Oe Ord Cannot Cancel (16344)"
  end
  if value == 16345 then
    return "Error Code: Oe Init Ord Cancel (16345)"
  end
  if value == 16346 then
    return "Error Code: Oe Ord Cannot Modify (16346)"
  end
  if value == 16348 then
    return "Error Code: Err Trading Not Allowed (16348)"
  end
  if value == 16357 then
    return "Error Code: Oe Nt Rejected (16357)"
  end
  if value == 16363 then
    return "Error Code: Chg St Exists (16363)"
  end
  if value == 16369 then
    return "Error Code: Oe Security In Preopen (16369)"
  end
  if value == 16372 then
    return "Error Code: Oe Inq Not Allowed (16372)"
  end
  if value == 16387 then
    return "Error Code: Oe Security Ineligible (16387)"
  end
  if value == 16388 then
    return "Error Code: E Fok Order Cancelled (16388)"
  end
  if value == 16392 then
    return "Error Code: Turnover Limit Not Provided (16392)"
  end
  if value == 16397 then
    return "Error Code: Err Cannot Mod Auc Order (16397)"
  end
  if value == 16400 then
    return "Error Code: Oe Max Dq Allowed (16400)"
  end
  if value == 16404 then
    return "Error Code: Oe Admin Susp Can (16404)"
  end
  if value == 16405 then
    return "Error Code: E Invalid Buy Sell Type (16405)"
  end
  if value == 16406 then
    return "Error Code: E Invalid Book Type (16406)"
  end
  if value == 16408 then
    return "Error Code: E Invalid Trigger Price (16408)"
  end
  if value == 16414 then
    return "Error Code: E Invalid Pro Client (16414)"
  end
  if value == 16415 then
    return "Error Code: E Invalid Instructions (16415)"
  end
  if value == 16416 then
    return "Error Code: E Invalid Order Parameters (16416)"
  end
  if value == 16418 then
    return "Error Code: E Nnf Req Exceeded (16418)"
  end
  if value == 16419 then
    return "Error Code: Invalid Order (16419)"
  end
  if value == 16420 then
    return "Error Code: Err Box Rate Exceeded At Millisecond Level (16420)"
  end
  if value == 16440 then
    return "Error Code: E Gtd Gt Maturity (16440)"
  end
  if value == 16441 then
    return "Error Code: Dq Not Allowed In Preopen (16441)"
  end
  if value == 16442 then
    return "Error Code: St Ord Not Allowed Popen (16442)"
  end
  if value == 16443 then
    return "Error Code: E Ord Lim Exceeds Ord Val Lim (16443)"
  end
  if value == 16444 then
    return "Error Code: Err Usr Ord Value Limit Exceeded (16444)"
  end
  if value == 16445 then
    return "Error Code: Sl Not Allowed (16445)"
  end
  if value == 16446 then
    return "Error Code: Mit Not Allowed (16446)"
  end
  if value == 16447 then
    return "Error Code: E Ord Not Allowed In Preopen (16447)"
  end
  if value == 16448 then
    return "Error Code: Error Sl Lmt Rsnblty Check (16448)"
  end
  if value == 16514 then
    return "Error Code: E Not Modifiable (16514)"
  end
  if value == 16518 then
    return "Error Code: E Tm Cm Does Not Exist (16518)"
  end
  if value == 16521 then
    return "Error Code: E Not Clg Mem (16521)"
  end
  if value == 16523 then
    return "Error Code: E User Not Corp Mgr (16523)"
  end
  if value == 16532 then
    return "Error Code: E Pm Cm Invalid (16532)"
  end
  if value == 16533 then
    return "Error Code: E Corp Mgr Vu Mod (16533)"
  end
  if value == 16541 then
    return "Error Code: E Invalid Participant (16541)"
  end
  if value == 16550 then
    return "Error Code: E Trade Approved By Cm (16550)"
  end
  if value == 16552 then
    return "Error Code: E Cm Stock Suspended (16552)"
  end
  if value == 16554 then
    return "Error Code: E Broker Not Permitted In Fut (16554)"
  end
  if value == 16555 then
    return "Error Code: E Broker Not Permitted In Opt (16555)"
  end
  if value == 16556 then
    return "Error Code: E Qty Less Than Min Lot (16556)"
  end
  if value == 16557 then
    return "Error Code: E Disc Qty Less Than Min Lot (16557)"
  end
  if value == 16558 then
    return "Error Code: E Mf Qty Less Than Min Lot (16558)"
  end
  if value == 16560 then
    return "Error Code: E Already Rejected (16560)"
  end
  if value == 16561 then
    return "Error Code: E Nt Orders Not Allowed (16561)"
  end
  if value == 16562 then
    return "Error Code: E Nt Trade Not Allowed (16562)"
  end
  if value == 16566 then
    return "Error Code: E Inconsistent Broker Branch (16566)"
  end
  if value == 16570 then
    return "Error Code: M Post Close Start (16570)"
  end
  if value == 16571 then
    return "Error Code: M Post Close Ended (16571)"
  end
  if value == 16572 then
    return "Error Code: M Post Close Trades (16572)"
  end
  if value == 16573 then
    return "Error Code: E Invalid Msg Length (16573)"
  end
  if value == 16574 then
    return "Error Code: E Invalid Open Close Type (16574)"
  end
  if value == 16576 then
    return "Error Code: E Nnf Inq Req Exceeded (16576)"
  end
  if value == 16577 then
    return "Error Code: E Participant And Volume Changed (16577)"
  end
  if value == 16578 then
    return "Error Code: E Invalid Cover Uncover Type (16578)"
  end
  if value == 16580 then
    return "Error Code: E Illegal Participant (16580)"
  end
  if value == 16581 then
    return "Error Code: E Invalid Fill Price (16581)"
  end
  if value == 16583 then
    return "Error Code: E Pro No Participant (16583)"
  end
  if value == 16585 then
    return "Error Code: E Invalid Account No (16585)"
  end
  if value == 16586 then
    return "Error Code: E Allow No Participant Order (16586)"
  end
  if value == 16589 then
    return "Error Code: M Delete All Orders (16589)"
  end
  if value == 16597 then
    return "Error Code: E Cum Ur Ord Val Limit Exceede (16597)"
  end
  if value == 16598 then
    return "Error Code: E Branch Ord Val Limit Exceeded (16598)"
  end
  if value == 16600 then
    return "Error Code: Err Ord Val Exceeded (16600)"
  end
  if value == 16601 then
    return "Error Code: Err Preopen Order Reject (16601)"
  end
  if value == 16602 then
    return "Error Code: E Dealer Value Limit Exceeds (16602)"
  end
  if value == 16604 then
    return "Error Code: E Participant Not Found (16604)"
  end
  if value == 16605 then
    return "Error Code: E Either Leg Failed (16605)"
  end
  if value == 16606 then
    return "Error Code: E Qty Greater Than Freeze Qty (16606)"
  end
  if value == 16607 then
    return "Error Code: E Spread Not Allowed (16607)"
  end
  if value == 16609 then
    return "Error Code: E Spread Allowed If Stock Open (16609)"
  end
  if value == 16610 then
    return "Error Code: E Qty Should Be Same (16610)"
  end
  if value == 16611 then
    return "Error Code: E Ord Mod Qty Frz Not Allowed (16611)"
  end
  if value == 16612 then
    return "Error Code: E Trade Rec Modified (16612)"
  end
  if value == 16615 then
    return "Error Code: E Tm Order Cant Be Modified (16615)"
  end
  if value == 16616 then
    return "Error Code: E Tm Order Cant Be Cancelled (16616)"
  end
  if value == 16617 then
    return "Error Code: E Tm Trade Cant Be Manipulated (16617)"
  end
  if value == 16625 then
    return "Error Code: E Cm Of Tm Suspended (16625)"
  end
  if value == 16626 then
    return "Error Code: E Expdate Not In Ascending Ord (16626)"
  end
  if value == 16627 then
    return "Error Code: E Invalid Contract Comb (16627)"
  end
  if value == 16628 then
    return "Error Code: E Bm Cannot Cancel Cm Orders (16628)"
  end
  if value == 16629 then
    return "Error Code: E Bm Cannot Cancel Bm Orders (16629)"
  end
  if value == 16630 then
    return "Error Code: E Cm Cannot Cancel Cm Orders (16630)"
  end
  if value == 16631 then
    return "Error Code: E Spread In Different Underlying (16631)"
  end
  if value == 16632 then
    return "Error Code: E Invalid Cli Ac (16632)"
  end
  if value == 16636 then
    return "Error Code: E Br Ord Limit Fut Buy Exceeded (16636)"
  end
  if value == 16637 then
    return "Error Code: E Br Ord Limit Fut Sell Exceeded (16637)"
  end
  if value == 16638 then
    return "Error Code: E Br Ord Limit Opt Buy Exceeded (16638)"
  end
  if value == 16639 then
    return "Error Code: E Br Ord Limit Opt Sell Exceeded (16639)"
  end
  if value == 16640 then
    return "Error Code: E Ur Ord Limit Fut Buy Exceeded (16640)"
  end
  if value == 16641 then
    return "Error Code: E Ur Ord Limit Fut Sell Exceeded (16641)"
  end
  if value == 16642 then
    return "Error Code: E Ur Ord Limit Opt Buy Exceeded (16642)"
  end
  if value == 16643 then
    return "Error Code: E Ur Ord Limit Opt Sell Exceeded (16643)"
  end
  if value == 16645 then
    return "Error Code: E Cant Appr Bhav Copy Generated (16645)"
  end
  if value == 16646 then
    return "Error Code: E Collateral Lmt Chk (16646)"
  end
  if value == 16656 then
    return "Error Code: E Address Not Found (16656)"
  end
  if value == 16662 then
    return "Error Code: E Stk In Popen (16662)"
  end
  if value == 16666 then
    return "Error Code: E Invalid Nnf Field (16666)"
  end
  if value == 16667 then
    return "Error Code: E Gtcgtd Not Allowed (16667)"
  end
  if value == 16683 then
    return "Error Code: Err User Already Signed Off (16683)"
  end
  if value == 16684 then
    return "Error Code: Err No Privilege (16684)"
  end
  if value == 16686 then
    return "Error Code: Closeout Order Reject (16686)"
  end
  if value == 16687 then
    return "Error Code: Closeout Frz Reject (16687)"
  end
  if value == 16688 then
    return "Error Code: Closeout Not Allowed (16688)"
  end
  if value == 16690 then
    return "Error Code: Closeout Trdmod Reject (16690)"
  end
  if value == 16706 then
    return "Error Code: Partial Order Reject (16706)"
  end
  if value == 16708 then
    return "Error Code: Partial Quick Order Cxl Rej (16708)"
  end
  if value == 16711 then
    return "Error Code: Error Invalid Sprd Combination (16711)"
  end
  if value == 16713 then
    return "Error Code: E Price Diff Out Of Range (16713)"
  end
  if value == 16725 then
    return "Error Code: Rms Rejected In Preopen (16725)"
  end
  if value == 16730 then
    return "Error Code: Error Algoid Nnfid Mismatch 1 (16730)"
  end
  if value == 16731 then
    return "Error Code: Error Algoid Nnfid Mismatch 2 (16731)"
  end
  if value == 16732 then
    return "Error Code: Error Algo Mkt Not Allowed (16732)"
  end
  if value == 16733 then
    return "Error Code: Error Invalid Nnf Id (16733)"
  end
  if value == 16749 then
    return "Error Code: Error Preopn Ato Mod Can Rej (16749)"
  end
  if value == 16752 then
    return "Error Code: Error Preopn Ato Not Allowed (16752)"
  end
  if value == 16778 then
    return "Error Code: Err Usr Not Found In Nnf File (16778)"
  end
  if value == 16793 then
    return "Error Code: E Vc Order Rejected (16793)"
  end
  if value == 16794 then
    return "Error Code: E Ssd Order Rejected (16794)"
  end
  if value == 16795 then
    return "Error Code: E Order Cancelled For Vc (16795)"
  end
  if value == 16796 then
    return "Error Code: E Order Cancelled For Ssd (16796)"
  end
  if value == 16797 then
    return "Error Code: Msg Code Voluntary Close Out Status (16797)"
  end
  if value == 16798 then
    return "Error Code: Msg Code Suspended Status (16798)"
  end
  if value == 16803 then
    return "Error Code: E Bo Price Out Of Range (16803)"
  end
  if value == 16804 then
    return "Error Code: E Bo Excess Quantity (16804)"
  end
  if value == 16805 then
    return "Error Code: E User Ineligible For Bulk Orders (16805)"
  end
  if value == 16806 then
    return "Error Code: E User Not Allowed For Regular (16806)"
  end
  if value == 16807 then
    return "Error Code: E Account Debarred (16807)"
  end
  if value == 16816 then
    return "Error Code: E Account Debarred By Pit (16816)"
  end
  if value == 16810 then
    return "Error Code: Err Usr Already Unlcked (16810)"
  end
  if value == 16811 then
    return "Error Code: Err Duplicate Unlck Alrt (16811)"
  end
  if value == 17022 then
    return "Error Code: Err Actv Num Of Usrs In Brnch Exceeded (17022)"
  end
  if value == 17039 then
    return "Error Code: Ec Trd Mod Rej Cli Cp Mod Not Allowed (17039)"
  end
  if value == 17045 then
    return "Error Code: Error Quantity Lim Exceeds Qty Val Lim (17045)"
  end
  if value == 17046 then
    return "Error Code: User Trd Mod Disabled (17046)"
  end
  if value == 16055 then
    return "Error Code: Preopen Trade Cancellation Not Allowed (16055)"
  end
  if value == 17063 then
    return "Error Code: Err Depndent Sessn Not Active (17063)"
  end
  if value == 17070 then
    return "Error Code: E Trd Price Out Of Stock Tpp (17070)"
  end
  if value == 17071 then
    return "Error Code: E Order Cancelled For Self Trade (17071)"
  end
  if value == 17101 then
    return "Error Code: E Invalid Packet (17101)"
  end
  if value == 17102 then
    return "Error Code: Sssssse Hearbeat Not Received (17102)"
  end
  if value == 17104 then
    return "Error Code: E Invalid Box Id (17104)"
  end
  if value == 17105 then
    return "Error Code: E Seq No Mismatch (17105)"
  end
  if value == 17106 then
    return "Error Code: E Box Rate Exceeded (17106)"
  end
  if value == 17107 then
    return "Error Code: Error Hb Rate Exceeded (17107)"
  end
  if value == 17142 then
    return "Error Code: E Max User Count Exceeded (17142)"
  end
  if value == 16403 then
    return "Error Code: E Invalid Box Ip Combination (16403)"
  end
  if value == 17177 then
    return "Error Code: Err Invalid Pan Id (17177)"
  end
  if value == 17179 then
    return "Error Code: Err Invalid Algo Id (17179)"
  end
  if value == 17180 then
    return "Error Code: Err Invalid Value In Reserved (17180)"
  end
  if value == 17185 then
    return "Error Code: Err Algo Id Disabled (17185)"
  end
  if value == 17186 then
    return "Error Code: Err Order Cancelled Algoid Disabled (17186)"
  end
  if value == 19028 then
    return "Error Code: Err Checksum Failed Gr (19028)"
  end
  if value == 19029 then
    return "Error Code: Err Multiple Gr Query Rcv (19029)"
  end
  if value == 17181 then
    return "Error Code: Err Mkt Order Not Allowed (17181)"
  end
  if value == 17182 then
    return "Error Code: Err Trade Beyond Markup Price (17182)"
  end
  if value == 19030 then
    return "Error Code: Err Encryption Flag Mismatch (19030)"
  end
  if value == 19031 then
    return "Error Code: Err Md 5 Checksum Failure (19031)"
  end
  if value == 17184 then
    return "Error Code: Err User Having Null Rights (17184)"
  end

  return "Error Code: Unknown("..value..")"
end

-- Dissect: Error Code
nse_nsefo_orderentry_nnfdirect_v9_50.error_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnfdirect_v9_50.error_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnfdirect_v9_50.error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.error_code, range, value, display)

  return offset + length, value
end

-- Header Timestamp
nse_nsefo_orderentry_nnfdirect_v9_50.header_timestamp = {}

-- Size: Header Timestamp
nse_nsefo_orderentry_nnfdirect_v9_50.header_timestamp.size = 8

-- Display: Header Timestamp
nse_nsefo_orderentry_nnfdirect_v9_50.header_timestamp.display = function(value)
  -- Parse Dos epoch nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber() + 315532800
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- a value os.date cannot represent is shown raw rather than aborting the dissection
  local ok, text = pcall(os.date, "%Y-%m-%d %H:%M:%S.", seconds)

  if not ok then
    return "Header Timestamp: "..tostring(value)
  end

  return "Header Timestamp: "..text..string.format("%09d", nanoseconds)
end

-- Dissect: Header Timestamp
nse_nsefo_orderentry_nnfdirect_v9_50.header_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnfdirect_v9_50.header_timestamp.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsefo_orderentry_nnfdirect_v9_50.header_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.header_timestamp, range, value, display)

  return offset + length, value
end

-- Log Time
nse_nsefo_orderentry_nnfdirect_v9_50.log_time = {}

-- Size: Log Time
nse_nsefo_orderentry_nnfdirect_v9_50.log_time.size = 4

-- Display: Log Time
nse_nsefo_orderentry_nnfdirect_v9_50.log_time.display = function(value)
  -- Parse Dos epoch seconds timestamp; a value os.date cannot represent is shown raw rather than aborting the dissection
  local ok, text = pcall(os.date, "!%Y-%m-%d %H:%M:%S", value + 315532800)

  if not ok then
    return "Log Time: "..value
  end

  return "Log Time: "..text
end

-- Dissect: Log Time
nse_nsefo_orderentry_nnfdirect_v9_50.log_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnfdirect_v9_50.log_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnfdirect_v9_50.log_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.log_time, range, value, display)

  return offset + length, value
end

-- Message Length
nse_nsefo_orderentry_nnfdirect_v9_50.message_length = {}

-- Size: Message Length
nse_nsefo_orderentry_nnfdirect_v9_50.message_length.size = 2

-- Display: Message Length
nse_nsefo_orderentry_nnfdirect_v9_50.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nse_nsefo_orderentry_nnfdirect_v9_50.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnfdirect_v9_50.message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnfdirect_v9_50.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.message_length, range, value, display)

  return offset + length, value
end

-- Packet Length
nse_nsefo_orderentry_nnfdirect_v9_50.packet_length = {}

-- Size: Packet Length
nse_nsefo_orderentry_nnfdirect_v9_50.packet_length.size = 2

-- Display: Packet Length
nse_nsefo_orderentry_nnfdirect_v9_50.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nse_nsefo_orderentry_nnfdirect_v9_50.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnfdirect_v9_50.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nse_nsefo_orderentry_nnfdirect_v9_50.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Sequence Number
nse_nsefo_orderentry_nnfdirect_v9_50.packet_sequence_number = {}

-- Size: Packet Sequence Number
nse_nsefo_orderentry_nnfdirect_v9_50.packet_sequence_number.size = 4

-- Display: Packet Sequence Number
nse_nsefo_orderentry_nnfdirect_v9_50.packet_sequence_number.display = function(value)
  return "Packet Sequence Number: "..value
end

-- Dissect: Packet Sequence Number
nse_nsefo_orderentry_nnfdirect_v9_50.packet_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnfdirect_v9_50.packet_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nse_nsefo_orderentry_nnfdirect_v9_50.packet_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.packet_sequence_number, range, value, display)

  return offset + length, value
end

-- Time Stamp 1
nse_nsefo_orderentry_nnfdirect_v9_50.time_stamp_1 = {}

-- Size: Time Stamp 1
nse_nsefo_orderentry_nnfdirect_v9_50.time_stamp_1.size = 8

-- Display: Time Stamp 1
nse_nsefo_orderentry_nnfdirect_v9_50.time_stamp_1.display = function(value)
  return "Time Stamp 1: "..value
end

-- Dissect: Time Stamp 1
nse_nsefo_orderentry_nnfdirect_v9_50.time_stamp_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnfdirect_v9_50.time_stamp_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnfdirect_v9_50.time_stamp_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.time_stamp_1, range, value, display)

  return offset + length, value
end

-- Time Stamp 2
nse_nsefo_orderentry_nnfdirect_v9_50.time_stamp_2 = {}

-- Size: Time Stamp 2
nse_nsefo_orderentry_nnfdirect_v9_50.time_stamp_2.size = 8

-- Display: Time Stamp 2
nse_nsefo_orderentry_nnfdirect_v9_50.time_stamp_2.display = function(value)
  return "Time Stamp 2: "..value
end

-- Dissect: Time Stamp 2
nse_nsefo_orderentry_nnfdirect_v9_50.time_stamp_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnfdirect_v9_50.time_stamp_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnfdirect_v9_50.time_stamp_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.time_stamp_2, range, value, display)

  return offset + length, value
end

-- Trader Id
nse_nsefo_orderentry_nnfdirect_v9_50.trader_id = {}

-- Size: Trader Id
nse_nsefo_orderentry_nnfdirect_v9_50.trader_id.size = 4

-- Display: Trader Id
nse_nsefo_orderentry_nnfdirect_v9_50.trader_id.display = function(value)
  return "Trader Id: "..value
end

-- Dissect: Trader Id
nse_nsefo_orderentry_nnfdirect_v9_50.trader_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnfdirect_v9_50.trader_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnfdirect_v9_50.trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.trader_id, range, value, display)

  return offset + length, value
end

-- Transaction Code
nse_nsefo_orderentry_nnfdirect_v9_50.transaction_code = {}

-- Size: Transaction Code
nse_nsefo_orderentry_nnfdirect_v9_50.transaction_code.size = 2

-- Display: Transaction Code
nse_nsefo_orderentry_nnfdirect_v9_50.transaction_code.display = function(value)
  if value == 2300 then
    return "Transaction Code: Sign On Request In Message (2300)"
  end
  if value == 2301 then
    return "Transaction Code: Sign On Request Out Message (2301)"
  end
  if value == 2321 then
    return "Transaction Code: Sign Off Request Out Message (2321)"
  end
  if value == 1600 then
    return "Transaction Code: System Information In Message (1600)"
  end
  if value == 1601 then
    return "Transaction Code: System Information Out Message (1601)"
  end
  if value == 2400 then
    return "Transaction Code: Gateway Router Request Message (2400)"
  end
  if value == 2401 then
    return "Transaction Code: Gateway Router Response Message (2401)"
  end
  if value == 2320 then
    return "Transaction Code: Sign Off Request In Message (2320)"
  end
  if value == 7300 then
    return "Transaction Code: Update Local Database In Message (7300)"
  end
  if value == 7307 then
    return "Transaction Code: Update Local Database Header Message (7307)"
  end
  if value == 7308 then
    return "Transaction Code: Update Local Database Trailer Message (7308)"
  end
  if value == 7000 then
    return "Transaction Code: Download Request Message (7000)"
  end
  if value == 7304 then
    return "Transaction Code: Update Local Database Data Message (7304)"
  end
  if value == 7011 then
    return "Transaction Code: Header Record Message (7011)"
  end
  if value == 7021 then
    return "Transaction Code: Message Record Message (7021)"
  end
  if value == 7031 then
    return "Transaction Code: Trailer Record Message (7031)"
  end
  if value == 2000 then
    return "Transaction Code: Order Entry Request Message (2000)"
  end
  if value == 2040 then
    return "Transaction Code: Order Modification Request Message (2040)"
  end
  if value == 2070 then
    return "Transaction Code: Order Cancellation Request Message (2070)"
  end
  if value == 2073 then
    return "Transaction Code: Order Confirmation Message (2073)"
  end
  if value == 2074 then
    return "Transaction Code: Order Modification Confirmation Message (2074)"
  end
  if value == 2012 then
    return "Transaction Code: Order Entry Message (2012)"
  end
  if value == 2042 then
    return "Transaction Code: Order Entry Message (2042)"
  end
  if value == 2062 then
    return "Transaction Code: Order Entry Message (2062)"
  end
  if value == 2072 then
    return "Transaction Code: Order Entry Message (2072)"
  end
  if value == 2170 then
    return "Transaction Code: Order Entry Message (2170)"
  end
  if value == 2231 then
    return "Transaction Code: Order Entry Message (2231)"
  end
  if value == 9002 then
    return "Transaction Code: Order Entry Message (9002)"
  end
  if value == 2013 then
    return "Transaction Code: Price Modification Message (2013)"
  end
  if value == 20406 then
    return "Transaction Code: Price Modification Message (20406)"
  end
  if value == 5445 then
    return "Transaction Code: Trade Inquiry Message (5445)"
  end
  if value == 5440 then
    return "Transaction Code: Trade Inquiry Message (5440)"
  end
  if value == 5441 then
    return "Transaction Code: Trade Inquiry Message (5441)"
  end
  if value == 2223 then
    return "Transaction Code: Trade Inquiry Message (2223)"
  end
  if value == 2100 then
    return "Transaction Code: Spread Order Entry Message (2100)"
  end
  if value == 2102 then
    return "Transaction Code: Spread Order Entry Message (2102)"
  end
  if value == 2104 then
    return "Transaction Code: Spread Order Entry Message (2104)"
  end
  if value == 2106 then
    return "Transaction Code: Spread Order Entry Message (2106)"
  end
  if value == 2118 then
    return "Transaction Code: Spread Order Entry Message (2118)"
  end
  if value == 2124 then
    return "Transaction Code: Spread Order Entry Message (2124)"
  end
  if value == 2125 then
    return "Transaction Code: Spread Order Entry Message (2125)"
  end
  if value == 2126 then
    return "Transaction Code: Spread Order Entry Message (2126)"
  end
  if value == 2127 then
    return "Transaction Code: Spread Order Entry Message (2127)"
  end
  if value == 2130 then
    return "Transaction Code: Spread Order Entry Message (2130)"
  end
  if value == 2131 then
    return "Transaction Code: Spread Order Entry Message (2131)"
  end
  if value == 2132 then
    return "Transaction Code: Spread Order Entry Message (2132)"
  end
  if value == 2133 then
    return "Transaction Code: Spread Order Entry Message (2133)"
  end
  if value == 2136 then
    return "Transaction Code: Spread Order Entry Message (2136)"
  end
  if value == 2154 then
    return "Transaction Code: Spread Order Entry Message (2154)"
  end
  if value == 2155 then
    return "Transaction Code: Spread Order Entry Message (2155)"
  end
  if value == 2156 then
    return "Transaction Code: Spread Order Entry Message (2156)"
  end
  if value == 9004 then
    return "Transaction Code: Spread Order Entry Message (9004)"
  end
  if value == 20408 then
    return "Transaction Code: Spread Order Entry Message (20408)"
  end
  if value == 20410 then
    return "Transaction Code: Spread Order Entry Message (20410)"
  end
  if value == 20412 then
    return "Transaction Code: Spread Order Entry Message (20412)"
  end
  if value == 20414 then
    return "Transaction Code: Spread Order Entry Message (20414)"
  end
  if value == 20416 then
    return "Transaction Code: Spread Order Entry Message (20416)"
  end
  if value == 2222 then
    return "Transaction Code: Trade Confirmation Message (2222)"
  end
  if value == 2212 then
    return "Transaction Code: Trade Confirmation Message (2212)"
  end
  if value == 2282 then
    return "Transaction Code: Trade Confirmation Message (2282)"
  end
  if value == 2286 then
    return "Transaction Code: Trade Confirmation Message (2286)"
  end
  if value == 2287 then
    return "Transaction Code: Trade Confirmation Message (2287)"
  end
  if value == 2288 then
    return "Transaction Code: Trade Confirmation Message (2288)"
  end
  if value == 5731 then
    return "Transaction Code: User Order Limit Update Message (5731)"
  end
  if value == 5733 then
    return "Transaction Code: Dealer Limit Update Message (5733)"
  end
  if value == 5772 then
    return "Transaction Code: Spread Order Limit Update Message (5772)"
  end
  if value == 5295 then
    return "Transaction Code: Control Message To Trader Message (5295)"
  end
  if value == 1833 then
    return "Transaction Code: Market Statistics Report Message (1833)"
  end
  if value == 11833 then
    return "Transaction Code: Enhanced Market Statistics Report Message (11833)"
  end
  if value == 1836 then
    return "Transaction Code: Market Index Report Message (1836)"
  end
  if value == 1837 then
    return "Transaction Code: Industry Index Report Message (1837)"
  end
  if value == 1838 then
    return "Transaction Code: Sector Index Report Message (1838)"
  end
  if value == 1862 then
    return "Transaction Code: Spread Bhavcopy Message (1862)"
  end
  if value == 7732 then
    return "Transaction Code: Global Indices Message (7732)"
  end
  if value == 7733 then
    return "Transaction Code: Global Contracts Message (7733)"
  end
  if value == 23008 then
    return "Transaction Code: Secure Box Registration Request In Message (23008)"
  end
  if value == 23009 then
    return "Transaction Code: Secure Box Registration Response Out Message (23009)"
  end
  if value == 23000 then
    return "Transaction Code: Box Sign On Request In Message (23000)"
  end
  if value == 23001 then
    return "Transaction Code: Box Sign On Request Out Message (23001)"
  end
  if value == 23506 then
    return "Transaction Code: Heartbeat Message (23506)"
  end
  if value == 20322 then
    return "Transaction Code: Box Sign Off Message (20322)"
  end
  if value == 5294 then
    return "Transaction Code: Contingency Broadcast Message (5294)"
  end
  if value == 5716 then
    return "Transaction Code: Branch Order Value Limit Update Message (5716)"
  end
  if value == 5730 then
    return "Transaction Code: User Order Value Limit Update Message (5730)"
  end
  if value == 5732 then
    return "Transaction Code: Normal Order Limit Update Message (5732)"
  end
  if value == 5740 then
    return "Transaction Code: Reset User Password Message (5740)"
  end
  if value == 5744 then
    return "Transaction Code: Collateral User Status Change Request Message (5744)"
  end
  if value == 5745 then
    return "Transaction Code: Collateral User Status Change Response Message (5745)"
  end
  if value == 5738 then
    return "Transaction Code: User Trade Modify Cancel Status Change Request Message (5738)"
  end
  if value == 5739 then
    return "Transaction Code: User Trade Modify Cancel Status Change Response Message (5739)"
  end
  if value == 5427 then
    return "Transaction Code: User Address Unlock Request Message (5427)"
  end
  if value == 5428 then
    return "Transaction Code: User Address Unlock Confirm Message (5428)"
  end
  if value == 5483 then
    return "Transaction Code: User Address Unlock Approve Message (5483)"
  end
  if value == 4506 then
    return "Transaction Code: Giveup Confirmation Message (4506)"
  end
  if value == 4507 then
    return "Transaction Code: Giveup Confirmation Message (4507)"
  end
  if value == 2075 then
    return "Transaction Code: Order Cancellation Confirmation Message (2075)"
  end

  return "Transaction Code: Unknown("..value..")"
end

-- Dissect: Transaction Code
nse_nsefo_orderentry_nnfdirect_v9_50.transaction_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnfdirect_v9_50.transaction_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnfdirect_v9_50.transaction_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.transaction_code, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nse NseFo OrderEntry NnfDirect 9.50
-----------------------------------------------------------------------

-- Message Header
nse_nsefo_orderentry_nnfdirect_v9_50.message_header = {}

-- Size: Message Header
nse_nsefo_orderentry_nnfdirect_v9_50.message_header.size =
  nse_nsefo_orderentry_nnfdirect_v9_50.transaction_code.size + 
  nse_nsefo_orderentry_nnfdirect_v9_50.log_time.size + 
  nse_nsefo_orderentry_nnfdirect_v9_50.alpha_char.size + 
  nse_nsefo_orderentry_nnfdirect_v9_50.trader_id.size + 
  nse_nsefo_orderentry_nnfdirect_v9_50.error_code.size + 
  nse_nsefo_orderentry_nnfdirect_v9_50.header_timestamp.size + 
  nse_nsefo_orderentry_nnfdirect_v9_50.time_stamp_1.size + 
  nse_nsefo_orderentry_nnfdirect_v9_50.time_stamp_2.size + 
  nse_nsefo_orderentry_nnfdirect_v9_50.message_length.size

-- Display: Message Header
nse_nsefo_orderentry_nnfdirect_v9_50.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nse_nsefo_orderentry_nnfdirect_v9_50.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Code: SHORT
  index, transaction_code = nse_nsefo_orderentry_nnfdirect_v9_50.transaction_code.dissect(buffer, index, packet, parent)

  -- Log Time: LONG
  index, log_time = nse_nsefo_orderentry_nnfdirect_v9_50.log_time.dissect(buffer, index, packet, parent)

  -- Alpha Char: CHAR
  index, alpha_char = nse_nsefo_orderentry_nnfdirect_v9_50.alpha_char.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nsefo_orderentry_nnfdirect_v9_50.trader_id.dissect(buffer, index, packet, parent)

  -- Error Code: SHORT
  index, error_code = nse_nsefo_orderentry_nnfdirect_v9_50.error_code.dissect(buffer, index, packet, parent)

  -- Header Timestamp: LONG LONG
  index, header_timestamp = nse_nsefo_orderentry_nnfdirect_v9_50.header_timestamp.dissect(buffer, index, packet, parent)

  -- Time Stamp 1: CHAR
  index, time_stamp_1 = nse_nsefo_orderentry_nnfdirect_v9_50.time_stamp_1.dissect(buffer, index, packet, parent)

  -- Time Stamp 2: CHAR
  index, time_stamp_2 = nse_nsefo_orderentry_nnfdirect_v9_50.time_stamp_2.dissect(buffer, index, packet, parent)

  -- Message Length: SHORT
  index, message_length = nse_nsefo_orderentry_nnfdirect_v9_50.message_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nse_nsefo_orderentry_nnfdirect_v9_50.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.message_header, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnfdirect_v9_50.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnfdirect_v9_50.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnfdirect_v9_50.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet Header
nse_nsefo_orderentry_nnfdirect_v9_50.packet_header = {}

-- Size: Packet Header
nse_nsefo_orderentry_nnfdirect_v9_50.packet_header.size =
  nse_nsefo_orderentry_nnfdirect_v9_50.packet_length.size + 
  nse_nsefo_orderentry_nnfdirect_v9_50.packet_sequence_number.size + 
  nse_nsefo_orderentry_nnfdirect_v9_50.checksum.size

-- Display: Packet Header
nse_nsefo_orderentry_nnfdirect_v9_50.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nse_nsefo_orderentry_nnfdirect_v9_50.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nse_nsefo_orderentry_nnfdirect_v9_50.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, packet_sequence_number = nse_nsefo_orderentry_nnfdirect_v9_50.packet_sequence_number.dissect(buffer, index, packet, parent)

  -- Checksum: 16 Byte
  index, checksum = nse_nsefo_orderentry_nnfdirect_v9_50.checksum.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nse_nsefo_orderentry_nnfdirect_v9_50.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.packet_header, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnfdirect_v9_50.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnfdirect_v9_50.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnfdirect_v9_50.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Direct Packet
nse_nsefo_orderentry_nnfdirect_v9_50.direct_packet = {}

-- Display: Direct Packet
nse_nsefo_orderentry_nnfdirect_v9_50.direct_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Direct Packet
nse_nsefo_orderentry_nnfdirect_v9_50.direct_packet.fields = function(buffer, offset, packet, parent, size_of_direct_packet)
  local index = offset

  -- Packet Header: Struct of 3 fields
  index, packet_header = nse_nsefo_orderentry_nnfdirect_v9_50.packet_header.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 9 fields
  index, message_header = nse_nsefo_orderentry_nnfdirect_v9_50.message_header.dissect(buffer, index, packet, parent)

  -- Message Payload
  index, message_payload = nse_nsefo_orderentry_nnfdirect_v9_50.message_payload.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Direct Packet
nse_nsefo_orderentry_nnfdirect_v9_50.direct_packet.dissect = function(buffer, offset, packet, parent, size_of_direct_packet)
  local index = offset + size_of_direct_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nse_nsefo_orderentry_nnfdirect_v9_50.fields.direct_packet, buffer(offset, 0))
    local current = nse_nsefo_orderentry_nnfdirect_v9_50.direct_packet.fields(buffer, offset, packet, parent, size_of_direct_packet)
    parent:set_len(size_of_direct_packet)
    local display = nse_nsefo_orderentry_nnfdirect_v9_50.direct_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nse_nsefo_orderentry_nnfdirect_v9_50.direct_packet.fields(buffer, offset, packet, parent, size_of_direct_packet)

    return index
  end
end

-- Remaining Bytes For: Direct Packet
local direct_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nse_nsefo_orderentry_nnfdirect_v9_50.packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):uint()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
nse_nsefo_orderentry_nnfdirect_v9_50.packet = {}

-- Verify required size of Tcp packet
nse_nsefo_orderentry_nnfdirect_v9_50.packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nsefo_orderentry_nnfdirect_v9_50.packet_header.size + nse_nsefo_orderentry_nnfdirect_v9_50.message_header.size + nse_nsefo_orderentry_nnfdirect_v9_50.message_payload.size
end

-- Dissect Packet
nse_nsefo_orderentry_nnfdirect_v9_50.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Direct Packet
  local end_of_payload = buffer:len()

  -- Direct Packet: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_direct_packet = direct_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_direct_packet):tvb()
      index = nse_nsefo_orderentry_nnfdirect_v9_50.direct_packet.dissect(frame, index, packet, parent, size_of_direct_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      -- Claim the whole buffer: tcp keeps the bytes from desegment_offset for reassembly
      return end_of_payload
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nse_nsefo_orderentry_nnfdirect_v9_50.init()
end

-- Dissector for Nse NseFo OrderEntry NnfDirect 9.50
function omi_nse_nsefo_orderentry_nnfdirect_v9_50.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nse_nsefo_orderentry_nnfdirect_v9_50.name

  -- Dissect protocol
  local protocol = parent:add(omi_nse_nsefo_orderentry_nnfdirect_v9_50, buffer(), omi_nse_nsefo_orderentry_nnfdirect_v9_50.description, "("..buffer:len().." Bytes)")
  return nse_nsefo_orderentry_nnfdirect_v9_50.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nse NseFo OrderEntry NnfDirect 9.50 (Tcp)
local function omi_nse_nsefo_orderentry_nnfdirect_v9_50_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nsefo_orderentry_nnfdirect_v9_50.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nsefo_orderentry_nnfdirect_v9_50
  omi_nse_nsefo_orderentry_nnfdirect_v9_50.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nse NseFo OrderEntry NnfDirect 9.50
omi_nse_nsefo_orderentry_nnfdirect_v9_50:register_heuristic("tcp", omi_nse_nsefo_orderentry_nnfdirect_v9_50_tcp_heuristic)

-- Register Nse NseFo OrderEntry NnfDirect 9.50 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nse_nsefo_orderentry_nnfdirect_v9_50)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Stock Exchange of India Ltd
--   Version: 9.50
--   Date: Monday, July 27, 2026
--   Specification: TP_FO_Trimmed_NNF_PROTOCOL_9.50_20260820170606.pdf
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
