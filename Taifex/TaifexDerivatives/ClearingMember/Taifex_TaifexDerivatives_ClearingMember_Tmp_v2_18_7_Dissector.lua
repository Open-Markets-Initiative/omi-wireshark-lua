-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Taifex TaifexDerivatives ClearingMember Tmp 2.18.7 Protocol
local omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7 = Proto("Omi.Taifex.TaifexDerivatives.ClearingMember.Tmp.v2.18.7", "Taifex TaifexDerivatives ClearingMember Tmp 2.18.7")

-- Protocol table
local taifex_taifexderivatives_clearingmember_tmp_v2_18_7 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Taifex TaifexDerivatives ClearingMember Tmp 2.18.7 Fields
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.ap_code = ProtoField.new("Ap Code", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.apcode", ftypes.UINT8, nil, nil, nil, "Application system code, naming the line the session joins.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.append_no = ProtoField.new("Append No", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.appendno", ftypes.UINT16, nil, nil, nil, "Appended check value, a three-digit random number the futures commission merchant is asked to include in its logon message for the calculation of KEY-VALUE.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.before_qty = ProtoField.new("Before Qty", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.beforeqty", ftypes.UINT16, nil, nil, nil, "Remaining order quantity before match.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.cancel_order_sec = ProtoField.new("Cancel Order Sec", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.cancelordersec", ftypes.UINT8, nil, nil, nil, "Reject order second on an order line, and the reply data per second in units of 100 on a TMPCM or TMPDC session.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.check_sum = ProtoField.new("Check Sum", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.checksum", ftypes.UINT8, nil, nil, nil, "Check sum, the remainder of the sum of the binary values of every byte from the front-end field up to the field right before the CheckSum field divided by 256")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.cm_id = ProtoField.new("Cm Id", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.cmid", ftypes.UINT16, nil, nil, nil, "Clearing member ID, read from the FCM ID Mapping File P06.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.comb_op = ProtoField.new("Comb Op", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.combop", ftypes.UINT8, nil, nil, nil, "ID of multi-leg order.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.cum_qty = ProtoField.new("Cum Qty", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.cumqty", ftypes.UINT16, nil, nil, nil, "Total quantity executed.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.encrypt_method = ProtoField.new("Encrypt Method", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.encryptmethod", ftypes.UINT8, nil, nil, nil, "Encryption method, 0 if unencrypted.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.end_out_bound_num = ProtoField.new("End Out Bound Num", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.endoutboundnum", ftypes.UINT32, nil, nil, nil, "The last end message No, the number of the last valid response message Taifex sent the futures commission merchant.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.epoch_s_int_324 = ProtoField.new("Epoch S Int 324", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.epochsint324", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Seconds since the epoch, the number of seconds from 1970/01/01 0:0 UTC.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.epoch_s_int_324_utc = ProtoField.new("Epoch S Int 324", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.epochsint324.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Seconds since the epoch, the number of seconds from 1970/01/01 0:0 UTC.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.epoch_s_uint_324 = ProtoField.new("Epoch S Uint 324", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.epochsuint324", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Seconds since the epoch, the number of seconds from 1970/01/01 0:0 UTC.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.epoch_s_uint_324_utc = ProtoField.new("Epoch S Uint 324", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.epochsuint324.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Seconds since the epoch, the number of seconds from 1970/01/01 0:0 UTC.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.exec_type = ProtoField.new("Exec Type", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.exectype", ftypes.STRING, nil, nil, nil, "Execution type.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.fcm_id = ProtoField.new("Fcm Id", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.fcmid", ftypes.UINT16, nil, nil, nil, "FCM ID, read from the FCM ID Mapping File P06.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.header_epoch_s = ProtoField.new("Header Epoch S", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.headerepochs", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Seconds since the epoch, the number of seconds from 1970/01/01 0:0 UTC")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.header_epoch_s_utc = ProtoField.new("Header Epoch S", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.headerepochs.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Seconds since the epoch, the number of seconds from 1970/01/01 0:0 UTC")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.header_ms = ProtoField.new("Header Ms", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.headerms", ftypes.UINT16, nil, nil, nil, "One thousandth of a second, the millisecond fraction of the second carried beside it")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.header_time = ProtoField.new("Header Time", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.headertime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Message time, the Tmp time format of section 2.1 carried by the common message header")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.header_time_utc = ProtoField.new("Header Time", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.headertime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Message time, the Tmp time format of section 2.1 carried by the common message header")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.heart_bt_int = ProtoField.new("Heart Bt Int", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.heartbtint", ftypes.UINT8, nil, nil, nil, "Seconds in synchronization, whose default is 30.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.investor_acno = ProtoField.new("Investor Acno", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.investoracno", ftypes.UINT32, nil, nil, nil, "Investor account No.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.investor_flag = ProtoField.new("Investor Flag", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.investorflag", ftypes.STRING, nil, nil, nil, "Investor ID code.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.key_value = ProtoField.new("Key Value", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.keyvalue", ftypes.UINT8, nil, nil, nil, "Key value, the two-digit number at the thousandth and hundredth place of append_no multiplied by the password the futures commission merchant set on line application.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.last_px = ProtoField.new("Last Px", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.lastpx", ftypes.INT32, nil, nil, nil, "Last execution price, which is the last execution price for an execution report and 0 for a cancel, decrease or modify price order.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.last_qty = ProtoField.new("Last Qty", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.lastqty", ftypes.UINT16, nil, nil, nil, "Last quantity executed, which is the last execution quantity for an execution report and 0 for a cancel, decrease or modify price order.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.leaves_qty = ProtoField.new("Leaves Qty", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.leavesqty", ftypes.UINT16, nil, nil, nil, "Remaining quantity.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.leg_entry_num = ProtoField.new("Leg Entry Num", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.legentrynum", ftypes.STRING, nil, nil, nil, "One leg of a multi leg FLEX order whose product is named by a numeric product serial number")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.leg_entry_txt = ProtoField.new("Leg Entry Txt", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.legentrytxt", ftypes.STRING, nil, nil, nil, "One leg of a multi leg FLEX order whose product is named by a textual product symbol")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.leg_px = ProtoField.new("Leg Px", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.legpx", ftypes.INT32, nil, nil, nil, "Execution price for both legs.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.leg_qty_uint_162 = ProtoField.new("Leg Qty Uint 162", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.legqtyuint162", ftypes.UINT16, nil, nil, nil, "Quantity for one leg.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.leg_qty_uint_1624 = ProtoField.new("Leg Qty Uint 1624", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.legqtyuint1624", ftypes.UINT16, nil, nil, nil, "Quantity executed for both legs.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.leg_side_uint_81 = ProtoField.new("Leg Side Uint 81", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.legsideuint81", ftypes.UINT8, nil, nil, nil, "Buy/sell code for one leg.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.leg_side_uint_822 = ProtoField.new("Leg Side Uint 822", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.legsideuint822", ftypes.UINT8, nil, nil, nil, "Buy/sell code for both legs, where 0 in the first element means a single order.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.leg_sym_symbol_num_x = ProtoField.new("Leg Sym Symbol Num X", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.legsymsymbolnumx", ftypes.STRING, nil, nil, nil, "FLEX Numeric Single Product Serial number, naming a FLEX product by the serial number of the XP08 product and time flow group definition file")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.leg_sym_symbol_txt_x = ProtoField.new("Leg Sym Symbol Txt X", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.legsymsymboltxtx", ftypes.STRING, nil, nil, nil, "FLEX Textual Single Product Symbol, naming a FLEX product by the product symbol of the XP08 product and time flow group definition file")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.long_symbol_num = ProtoField.new("Long Symbol Num", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.longsymbolnum", ftypes.STRING, nil, nil, nil, "Numeric product ID in the long product format, naming a product by the number Taifex assigns it in each session")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.long_symbol_text = ProtoField.new("Long Symbol Text", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.longsymboltext", ftypes.STRING, nil, nil, nil, "Text product ID in the long product format, naming a product by its Ascii character string symbol")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.max_flow_ctrl_cnt = ProtoField.new("Max Flow Ctrl Cnt", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.maxflowctrlcnt", ftypes.UINT16, nil, nil, nil, "Maximum flow per second, informing the futures commission merchant of the limit of input per second in this session.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.member_id = ProtoField.new("Member Id", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.memberid", ftypes.UINT16, nil, nil, nil, "Member id, the cm_id where target_id is 8, 9, 18 or 19 and the fcm_id where it is 3, 13 or 23.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.message_tail = ProtoField.new("Message Tail", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.messagetail", ftypes.STRING, nil, nil, nil, "Tmp Message Tail, carrying the check sum of a message")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.message_type = ProtoField.new("Message Type", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.messagetype", ftypes.UINT8, nil, nil, nil, "Message code, which section 2.1 names by a letter and a number, L for a Link Subsystem message and R for a Trading Subsystem message")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.ms = ProtoField.new("Ms", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.ms", ftypes.UINT16, nil, nil, nil, "One thousandth of a second.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.msg_length = ProtoField.new("Msg Length", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.msglength", ftypes.UINT16, nil, nil, nil, "Message length, the total number of bytes behind the msg_length field up to before the CheckSum field")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.msgseqnum", ftypes.UINT32, nil, nil, nil, "Message sequence number, assigned to each new order, cancel or change order message as a unique identification code and entered as zero on the messages that carry none")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.msg_time_ns = ProtoField.new("Msg Time Ns", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.msgtimens", ftypes.UINT32, nil, nil, nil, "Nanosecond-level timing details for the msg_time field in the hdr, of which currently only data at the microsecond level is available.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.msg_type_ext = ProtoField.new("Msg Type Ext", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.msgtypeext", ftypes.UINT8, nil, nil, nil, "Expanded MessageType, by which additional subcategories of a MessageType assign different functionalities based on each specific definition.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.multi_leg_num = ProtoField.new("Multi Leg Num", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.multilegnum", ftypes.STRING, nil, nil, nil, "Multi leg FLEX product named by numeric product serial numbers, which section 2.17.1 lays out as a number of legs, the multi leg order code and one block per leg")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.multi_leg_txt = ProtoField.new("Multi Leg Txt", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.multilegtxt", ftypes.STRING, nil, nil, nil, "Multi leg FLEX product named by textual product symbols, which section 2.17.1 lays out as a number of legs, the multi leg order code and one block per leg")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.nanosecond = ProtoField.new("Nanosecond", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.nanosecond", ftypes.UINT32, nil, nil, nil, "One billionth of a second.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.no_leg = ProtoField.new("No Leg", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.noleg", ftypes.UINT8, nil, nil, nil, "Number of legs, which is 1 for a single-leg product and by which the content of the NoLeg related block is modified.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.ord_id = ProtoField.new("Ord Id", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.ordid", ftypes.UINT32, nil, nil, nil, "Order serial No, a number of at most seven digits.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.ord_type = ProtoField.new("Ord Type", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.ordtype", ftypes.UINT8, nil, nil, nil, "Order type.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.order_no = ProtoField.new("Order No", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.orderno", ftypes.STRING, nil, nil, nil, "Order No, whose five characters may all be alphanumeric.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.org_trans_time_msg_time = ProtoField.new("Org Trans Time Msg Time", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.orgtranstimemsgtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Tmp time format, the seconds since the epoch and the thousandth of a second")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.org_trans_time_msg_time_utc = ProtoField.new("Org Trans Time Msg Time", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.orgtranstimemsgtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Tmp time format, the seconds since the epoch and the thousandth of a second")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.org_trans_time_msg_time_x = ProtoField.new("Org Trans Time Msg Time X", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.orgtranstimemsgtimex", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Tmp Expanded Time Format, the seconds since the epoch and the billionth of a second, which the FLEX reports carry in place of msg_time")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.org_trans_time_msg_time_x_utc = ProtoField.new("Org Trans Time Msg Time X", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.orgtranstimemsgtimex.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Tmp Expanded Time Format, the seconds since the epoch and the billionth of a second, which the FLEX reports carry in place of msg_time")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.part_id = ProtoField.new("Part Id", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.partid", ftypes.UINT8, nil, nil, nil, "Partition ID, referring to Section 3.6.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.position_effect = ProtoField.new("Position Effect", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.positioneffect", ftypes.STRING, nil, nil, nil, "Open/offset code.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.preserve = ProtoField.new("Preserve", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.preserve", ftypes.UINT8, nil, nil, nil, "Preserve, whose default is 0.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.price = ProtoField.new("Price", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.price", ftypes.INT32, nil, nil, nil, "Order price, an integer whose number of decimal digits is the Decimal_Locator of the product definition file.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.prod_id = ProtoField.new("Prod Id", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.prodid", ftypes.STRING, nil, nil, nil, "Textual Product Symbol, referring to the product symbol in XP08.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.protocol_type = ProtoField.new("Protocol Type", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.protocoltype", ftypes.UINT8, nil, nil, nil, "Source of new order data, distinguishing the protocol the order was placed over.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.pseq = ProtoField.new("Pseq", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.pseq", ftypes.UINT32, nil, nil, nil, "Numeric product serial number, referring to the product serial number in XP08.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.pseq_1 = ProtoField.new("Pseq 1", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.pseq1", ftypes.UINT16, nil, nil, nil, "First leg product ID, whose minimum value is 1.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.pseq_2 = ProtoField.new("Pseq 2", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.pseq2", ftypes.UINT16, nil, nil, nil, "Second leg product ID, where 0 means a single order.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.px_subtotal = ProtoField.new("Px Subtotal", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.pxsubtotal", ftypes.INT64, nil, nil, nil, "Cumulative weighted execution price, which divided by CumQty is the average price per contract.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.qty = ProtoField.new("Qty", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.qty", ftypes.UINT16, nil, nil, nil, "Order quantity.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.req_cm_seq = ProtoField.new("Req Cm Seq", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.reqcmseq", ftypes.UINT32, nil, nil, nil, "Request report start No, corresponding to the rpt_seq of the reports the connection will receive.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.request_start_seq = ProtoField.new("Request Start Seq", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.requeststartseq", ftypes.UINT32, nil, nil, nil, "The start message No this time, entered as 0 for the Clearing member order and execution report Line and the TMPDC Session.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.reserved_12 = ProtoField.new("Reserved 12", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.reserved12", ftypes.BYTES, nil, nil, nil, "Reserved.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.reserved_13 = ProtoField.new("Reserved 13", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.reserved13", ftypes.BYTES, nil, nil, nil, "Make up field length.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.reserved_16 = ProtoField.new("Reserved 16", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.reserved16", ftypes.BYTES, nil, nil, nil, "Reserved.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.reserved_33 = ProtoField.new("Reserved 33", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.reserved33", ftypes.BYTES, nil, nil, nil, "Make up field length.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.reserved_8 = ProtoField.new("Reserved 8", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.reserved8", ftypes.BYTES, nil, nil, nil, "Reserved.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.rpt_seq = ProtoField.new("Rpt Seq", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.rptseq", ftypes.UINT32, nil, nil, nil, "Report sequence No.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.rpt_session_id = ProtoField.new("Rpt Session Id", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.rptsessionid", ftypes.UINT16, nil, nil, nil, "Session ID of the session the report relates to.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.rpt_session_seq = ProtoField.new("Rpt Session Seq", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.rptsessionseq", ftypes.UINT32, nil, nil, nil, "Session serial No, the current session_seq where target_id is 4 and the session_seq of the original reporting session where it is 8 or 9.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.session_id = ProtoField.new("Session Id", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.sessionid", ftypes.UINT16, nil, nil, nil, "Tcp connection session number, connection to the trading system being allowed only if fcm_id and session_id are provided together.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.side = ProtoField.new("Side", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.side", ftypes.UINT8, nil, nil, nil, "Buy/sell code.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.start_in_bound_num = ProtoField.new("Start In Bound Num", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.startinboundnum", ftypes.UINT32, nil, nil, nil, "Order message start No, assigned zero.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.status_code_uint_162 = ProtoField.new("Status Code Uint 162", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.statuscodeuint162", ftypes.UINT16, nil, nil, nil, "Status code, referring to the Error Message Table.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.status_code_uint_81 = ProtoField.new("Status Code Uint 81", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.statuscodeuint81", ftypes.UINT8, nil, nil, nil, "Status code, referring to the Error Message Tables.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.sub_hdr = ProtoField.new("Sub Hdr", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.subhdr", ftypes.STRING, nil, nil, nil, "Tmp Expanded Message Header, which assigns different functionalities to a MessageType by defining additional subcategories for it")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.symbol_char_2020 = ProtoField.new("Symbol Char 2020", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.symbolchar2020", ftypes.STRING, nil, nil, nil, "Text product ID.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.symbol_char_4040 = ProtoField.new("Symbol Char 4040", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.symbolchar4040", ftypes.STRING, nil, nil, nil, "Text product ID.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.symbol_num = ProtoField.new("Symbol Num", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.symbolnum", ftypes.STRING, nil, nil, nil, "Numeric product ID, naming a product by the number Taifex assigns it in each session")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.symbol_num_x = ProtoField.new("Symbol Num X", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.symbolnumx", ftypes.STRING, nil, nil, nil, "FLEX Numeric Single Product Serial number, naming a FLEX product by the serial number of the XP08 product and time flow group definition file")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.symbol_text = ProtoField.new("Symbol Text", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.symboltext", ftypes.STRING, nil, nil, nil, "Text product ID, naming a product by its Ascii character string symbol")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.symbol_txt_x = ProtoField.new("Symbol Txt X", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.symboltxtx", ftypes.STRING, nil, nil, nil, "FLEX Textual Single Product Symbol, naming a FLEX product by the product symbol of the XP08 product and time flow group definition file")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.symbol_type = ProtoField.new("Symbol Type", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.symboltype", ftypes.UINT8, nil, nil, nil, "Product ID format, 1 for a numeric and 2 for a text product ID.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.system_type = ProtoField.new("System Type", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.systemtype", ftypes.UINT8, nil, nil, nil, "System type, naming the market and the trading session.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.target_id = ProtoField.new("Target Id", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.targetid", ftypes.UINT8, nil, nil, nil, "Target ID, naming the report this message carries and the line it is sent on.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.time_in_force = ProtoField.new("Time In Force", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.timeinforce", ftypes.UINT8, nil, nil, nil, "Order condition.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.transact_time_msg_time = ProtoField.new("Transact Time Msg Time", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.transacttimemsgtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Tmp time format, the seconds since the epoch and the thousandth of a second")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.transact_time_msg_time_utc = ProtoField.new("Transact Time Msg Time", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.transacttimemsgtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Tmp time format, the seconds since the epoch and the thousandth of a second")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.transact_time_msg_time_x = ProtoField.new("Transact Time Msg Time X", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.transacttimemsgtimex", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Tmp Expanded Time Format, the seconds since the epoch and the billionth of a second, which the FLEX reports carry in place of msg_time")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.transact_time_msg_time_x_utc = ProtoField.new("Transact Time Msg Time X", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.transacttimemsgtimex.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Tmp Expanded Time Format, the seconds since the epoch and the billionth of a second, which the FLEX reports carry in place of msg_time")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.uniq_id = ProtoField.new("Uniq Id", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.uniqid", ftypes.UINT32, nil, nil, nil, "Unique ID, a system unique No assigned to the order reply of each order.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.user_define = ProtoField.new("User Define", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.userdefine", ftypes.STRING, nil, nil, nil, "FCM defined variable, which the trading system updates in the order status when it adds, cancels or changes an order.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.version = ProtoField.new("Version", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.version", ftypes.UINT8, nil, nil, nil, "Version, indicating the message version, with 1 denoting the use of the new FLEX message.")

-- Taifex TaifexDerivatives ClearingMember Tmp 2.18.7 Framing
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.hdr = ProtoField.new("Hdr", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.hdr", ftypes.STRING, nil, nil, nil, "Tmp Common message header, carried by every Tmp message")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.tmp_message = ProtoField.new("Tmp Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.tmpmessage", ftypes.STRING, nil, nil, nil, "Taifex Tmp Tcp Message, a common message header, a message body and a one byte check sum")

-- Taifex TaifexDerivatives ClearingMember 2.18.7 Application Messages
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.activate_application_system_confirmed_message = ProtoField.new("Activate Application System Confirmed Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.activateapplicationsystemconfirmedmessage", ftypes.STRING, nil, nil, nil, "Activate application system confirmed, from which Taifex calculates the round trip time of the L50 message to determine the maximum peak flow per second.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.activate_application_system_message = ProtoField.new("Activate Application System Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.activateapplicationsystemmessage", ftypes.STRING, nil, nil, nil, "Activate application system, sent by Taifex to the futures commission merchant.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.clearing_member_initiate_operation_confirmed_message = ProtoField.new("Clearing Member Initiate Operation Confirmed Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.clearingmemberinitiateoperationconfirmedmessage", ftypes.STRING, nil, nil, nil, "Clearing member initiate operation confirmed message, with which Taifex answers the clearing member with a report start notice.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.clearing_member_initiate_operation_message = ProtoField.new("Clearing Member Initiate Operation Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.clearingmemberinitiateoperationmessage", ftypes.STRING, nil, nil, nil, "Clearing member initiate operation message, with which the clearing member requests the report start sequence of its downline FCM data.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.confirm_connection_message = ProtoField.new("Confirm Connection Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.confirmconnectionmessage", ftypes.STRING, nil, nil, nil, "Confirm connection message, which either party sends when no new message has arrived from the other after the number of seconds set in the HeartBtInt field of L50.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.connection_confirmed_message = ProtoField.new("Connection Confirmed Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.connectionconfirmedmessage", ftypes.STRING, nil, nil, nil, "Connection confirmed message, with which a party answers the confirm connection message of the other.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.execution_report_including_head_office_and_branch_offices_message = ProtoField.new("Execution Report Including Head Office And Branch Offices Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.executionreportincludingheadofficeandbranchofficesmessage", ftypes.STRING, nil, nil, nil, "Execution report including head office and branch offices, which carries the executions of every protocol and neither the order response nor a deletion or decrease.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.final_sequential_number_notification_for_group_message = ProtoField.new("Final Sequential Number Notification For Group Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.finalsequentialnumbernotificationforgroupmessage", ftypes.STRING, nil, nil, nil, "Final Sequential Number Notification Message for Group, transmitting the group's last report sequence number to the futures commission merchant.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.flex_clearing_member_initiate_operation_confirmed_message = ProtoField.new("Flex Clearing Member Initiate Operation Confirmed Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.flexclearingmemberinitiateoperationconfirmedmessage", ftypes.STRING, nil, nil, nil, "Clearing member initiate FLEX operation confirmed message, with which Taifex confirms the FLEX subscription.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.flex_clearing_member_initiate_operation_message = ProtoField.new("Flex Clearing Member Initiate Operation Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.flexclearingmemberinitiateoperationmessage", ftypes.STRING, nil, nil, nil, "Clearing member initiate FLEX operation message, with which the clearing member subscribes to the FLEX order and execution data of a partition.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.flex_order_status_report_message = ProtoField.new("Flex Order Status Report Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.flexorderstatusreportmessage", ftypes.STRING, nil, nil, nil, "FLEX Order status report, with which Taifex answers a FLEX order input and reports each execution against it, and which is not reported if the L20 version is 0.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.logon_notice_message = ProtoField.new("Logon Notice Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.logonnoticemessage", ftypes.STRING, nil, nil, nil, "Logon notice message, carrying the sequence No of the last message Taifex sent the futures commission merchant in the session.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.logout_confirmed_message = ProtoField.new("Logout Confirmed Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.logoutconfirmedmessage", ftypes.STRING, nil, nil, nil, "Logout confirmed message, sent by Taifex to the futures commission merchant.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.logout_message = ProtoField.new("Logout Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.logoutmessage", ftypes.BYTES, nil, nil, nil, "Logout message, sent by the futures commission merchant to Taifex, and carrying no field of its own beyond the common message header and the check sum.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.order_status_report_long_format_message = ProtoField.new("Order Status Report Long Format Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.orderstatusreportlongformatmessage", ftypes.STRING, nil, nil, nil, "Order status report, with which Taifex answers an order input and reports each execution against it, naming its product in the long product format.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.order_status_report_message = ProtoField.new("Order Status Report Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.orderstatusreportmessage", ftypes.STRING, nil, nil, nil, "Order status report, with which Taifex answers an order input and reports each execution against it, naming its product in the short product format.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.request_logon_message = ProtoField.new("Request Logon Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.requestlogonmessage", ftypes.STRING, nil, nil, nil, "Request logon, sent by the futures commission merchant to Taifex with the start sequence of the messages it requests Taifex to resend.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.wake_up_call_confirmed_message = ProtoField.new("Wake Up Call Confirmed Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.wakeupcallconfirmedmessage", ftypes.STRING, nil, nil, nil, "Wake up call confirmed message, sent by the futures commission merchant to Taifex.")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.wake_up_call_message = ProtoField.new("Wake Up Call Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.wakeupcallmessage", ftypes.STRING, nil, nil, nil, "Wake up call message, which either Taifex or the futures commission merchant may initiate in the logon phase of the Link Subsystem.")

-- Taifex TaifexDerivatives ClearingMember Tmp 2.18.7 Generated Fields
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.leg_entry_num_index = ProtoField.new("Leg Entry Num Index", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.legentrynumindex", ftypes.UINT16)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.leg_entry_txt_index = ProtoField.new("Leg Entry Txt Index", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.legentrytxtindex", ftypes.UINT16)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.leg_px_index = ProtoField.new("Leg Px Index", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.legpxindex", ftypes.UINT16)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.leg_qty_uint_1624_index = ProtoField.new("Leg Qty Uint 1624 Index", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.legqtyuint1624index", ftypes.UINT16)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.leg_side_uint_822_index = ProtoField.new("Leg Side Uint 822 Index", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.legsideuint822index", ftypes.UINT16)

-----------------------------------------------------------------------
-- Taifex TaifexDerivatives ClearingMember Tmp 2.18.7 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Taifex TaifexDerivatives ClearingMember Tmp 2.18.7 Element Dissection Options
show.application_messages = true
show.headers = true
show.structs = true
show.repeating_groups = true
show.indexes = true

-- Register Taifex TaifexDerivatives ClearingMember Tmp 2.18.7 Show Options
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prefs.show_application_messages then
    show.application_messages = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prefs.show_application_messages
  end
  if show.headers ~= omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prefs.show_headers then
    show.headers = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prefs.show_headers
  end
  if show.repeating_groups ~= omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prefs.show_repeating_groups then
    show.repeating_groups = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prefs.show_repeating_groups
  end
  if show.structs ~= omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prefs.show_structs then
    show.structs = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prefs.show_structs
  end
  if show.indexes ~= omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prefs.show_indexes then
    show.indexes = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prefs.show_indexes
  end
  if taifex_taifexderivatives_clearingmember_tmp_v2_18_7.absolute_time_base ~= omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prefs.absolute_time_base then
    taifex_taifexderivatives_clearingmember_tmp_v2_18_7.absolute_time_base = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Taifex TaifexDerivatives ClearingMember Tmp 2.18.7 Fields
-----------------------------------------------------------------------

-- Ap Code
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ap_code = {}

-- Size: Ap Code
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ap_code.size = 1

-- Display: Ap Code
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ap_code.labels = {
  [4] = "Ap Code: Fcm Order Transaction (4)",
  [6] = "Ap Code: Fcm Condensed Version Order Transaction (6)",
  [7] = "Ap Code: Tmpdc Session (7)",
  [8] = "Ap Code: Clearing Member Order Transaction Report (8)",
}

taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ap_code.display = function(value)
  return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ap_code.labels[value] or "Ap Code: Unknown("..value..")"
end

-- Dissect: Ap Code
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ap_code.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ap_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ap_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.ap_code, range, value, display)

  return offset + length, value
end

-- Append No
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.append_no = {}

-- Size: Append No
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.append_no.size = 2

-- Display: Append No
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.append_no.display = function(value)
  return "Append No: "..value
end

-- Dissect: Append No
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.append_no.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.append_no.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.append_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.append_no, range, value, display)

  return offset + length, value
end

-- Before Qty
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.before_qty = {}

-- Size: Before Qty
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.before_qty.size = 2

-- Display: Before Qty
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.before_qty.display = function(value)
  return "Before Qty: "..value
end

-- Dissect: Before Qty
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.before_qty.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.before_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.before_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.before_qty, range, value, display)

  return offset + length, value
end

-- Cancel Order Sec
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cancel_order_sec = {}

-- Size: Cancel Order Sec
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cancel_order_sec.size = 1

-- Display: Cancel Order Sec
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cancel_order_sec.display = function(value)
  return "Cancel Order Sec: "..value
end

-- Dissect: Cancel Order Sec
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cancel_order_sec.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cancel_order_sec.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cancel_order_sec.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.cancel_order_sec, range, value, display)

  return offset + length, value
end

-- Check Sum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.check_sum = {}

-- Size: Check Sum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.check_sum.size = 1

-- Display: Check Sum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.check_sum.display = function(value)
  return "Check Sum: "..value
end

-- Dissect: Check Sum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.check_sum.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.check_sum.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.check_sum.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.check_sum, range, value, display)

  return offset + length, value
end

-- Cm Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cm_id = {}

-- Size: Cm Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cm_id.size = 2

-- Display: Cm Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cm_id.display = function(value)
  return "Cm Id: "..value
end

-- Dissect: Cm Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cm_id.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cm_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.cm_id, range, value, display)

  return offset + length, value
end

-- Comb Op
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.comb_op = {}

-- Size: Comb Op
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.comb_op.size = 1

-- Display: Comb Op
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.comb_op.labels = {
  [0] = "Comb Op: Single Order (0)",
  [1] = "Comb Op: Price Spread (1)",
  [2] = "Comb Op: Time Spread (2)",
  [3] = "Comb Op: Straddle (3)",
  [4] = "Comb Op: Strangle (4)",
  [5] = "Comb Op: Conversion And Reversals (5)",
}

taifex_taifexderivatives_clearingmember_tmp_v2_18_7.comb_op.display = function(value)
  return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.comb_op.labels[value] or "Comb Op: Unknown("..value..")"
end

-- Dissect: Comb Op
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.comb_op.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.comb_op.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.comb_op.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.comb_op, range, value, display)

  return offset + length, value
end

-- Cum Qty
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cum_qty = {}

-- Size: Cum Qty
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cum_qty.size = 2

-- Display: Cum Qty
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cum_qty.display = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cum_qty.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cum_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cum_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Encrypt Method
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.encrypt_method = {}

-- Size: Encrypt Method
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.encrypt_method.size = 1

-- Display: Encrypt Method
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.encrypt_method.labels = {
  [0] = "Encrypt Method: Unencrypted (0)",
}

taifex_taifexderivatives_clearingmember_tmp_v2_18_7.encrypt_method.display = function(value)
  return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.encrypt_method.labels[value] or "Encrypt Method: Unknown("..value..")"
end

-- Dissect: Encrypt Method
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.encrypt_method.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.encrypt_method.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.encrypt_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.encrypt_method, range, value, display)

  return offset + length, value
end

-- End Out Bound Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.end_out_bound_num = {}

-- Size: End Out Bound Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.end_out_bound_num.size = 4

-- Display: End Out Bound Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.end_out_bound_num.display = function(value)
  return "End Out Bound Num: "..value
end

-- Dissect: End Out Bound Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.end_out_bound_num.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.end_out_bound_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.end_out_bound_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.end_out_bound_num, range, value, display)

  return offset + length, value
end

-- Epoch S Int 324
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epoch_s_int_324 = {}

-- Size: Epoch S Int 324
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epoch_s_int_324.size = 4

-- Dissect: Epoch S Int 324
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epoch_s_int_324.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epoch_s_int_324.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.epoch_s_int_324
  if taifex_taifexderivatives_clearingmember_tmp_v2_18_7.absolute_time_base == 1 then field = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.epoch_s_int_324_utc end

  local seconds = value
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Epoch S Uint 324
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epoch_s_uint_324 = {}

-- Size: Epoch S Uint 324
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epoch_s_uint_324.size = 4

-- Dissect: Epoch S Uint 324
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epoch_s_uint_324.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epoch_s_uint_324.size
  local range = buffer(offset, length)
  local value = range:uint()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.epoch_s_uint_324
  if taifex_taifexderivatives_clearingmember_tmp_v2_18_7.absolute_time_base == 1 then field = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.epoch_s_uint_324_utc end

  local seconds = value
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Exec Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.exec_type = {}

-- Size: Exec Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.exec_type.size = 1

-- Display: Exec Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.exec_type.labels = {
  ["0"] = "Exec Type: New (0)",
  ["4"] = "Exec Type: Cancel (4)",
  ["5"] = "Exec Type: Decrease (5)",
  ["6"] = "Exec Type: New And Execution Report (6)",
  ["F"] = "Exec Type: Execution Report (F)",
  ["I"] = "Exec Type: Query (I)",
  ["M"] = "Exec Type: Modify Price Replying To The Modifying Line (M)",
  ["m"] = "Exec Type: Modify Price Replying To The Original Line (m)",
}

taifex_taifexderivatives_clearingmember_tmp_v2_18_7.exec_type.display = function(value)
  return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.exec_type.labels[value] or "Exec Type: Unknown("..value..")"
end

-- Dissect: Exec Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.exec_type.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.exec_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.exec_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.exec_type, range, value, display)

  return offset + length, value
end

-- Fcm Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcm_id = {}

-- Size: Fcm Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcm_id.size = 2

-- Display: Fcm Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcm_id.display = function(value)
  return "Fcm Id: "..value
end

-- Dissect: Fcm Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcm_id.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcm_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.fcm_id, range, value, display)

  return offset + length, value
end

-- Header Epoch S
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.header_epoch_s = {}

-- Size: Header Epoch S
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.header_epoch_s.size = 4

-- Dissect: Header Epoch S
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.header_epoch_s.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.header_epoch_s.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.header_epoch_s
  if taifex_taifexderivatives_clearingmember_tmp_v2_18_7.absolute_time_base == 1 then field = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.header_epoch_s_utc end

  local seconds = value
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Header Ms
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.header_ms = {}

-- Size: Header Ms
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.header_ms.size = 2

-- Display: Header Ms
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.header_ms.display = function(value)
  return "Header Ms: "..value
end

-- Dissect: Header Ms
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.header_ms.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.header_ms.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.header_ms.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.header_ms, range, value, display)

  return offset + length, value
end

-- Heart Bt Int
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.heart_bt_int = {}

-- Size: Heart Bt Int
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.heart_bt_int.size = 1

-- Display: Heart Bt Int
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.heart_bt_int.display = function(value)
  return "Heart Bt Int: "..value
end

-- Dissect: Heart Bt Int
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.heart_bt_int.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.heart_bt_int.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.heart_bt_int.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.heart_bt_int, range, value, display)

  return offset + length, value
end

-- Investor Acno
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investor_acno = {}

-- Size: Investor Acno
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investor_acno.size = 4

-- Display: Investor Acno
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investor_acno.display = function(value)
  return "Investor Acno: "..value
end

-- Dissect: Investor Acno
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investor_acno.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investor_acno.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investor_acno.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.investor_acno, range, value, display)

  return offset + length, value
end

-- Investor Flag
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investor_flag = {}

-- Size: Investor Flag
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investor_flag.size = 1

-- Display: Investor Flag
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investor_flag.display = function(value)
  return "Investor Flag: "..value
end

-- Dissect: Investor Flag
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investor_flag.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investor_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investor_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.investor_flag, range, value, display)

  return offset + length, value
end

-- Key Value
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.key_value = {}

-- Size: Key Value
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.key_value.size = 1

-- Display: Key Value
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.key_value.display = function(value)
  return "Key Value: "..value
end

-- Dissect: Key Value
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.key_value.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.key_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.key_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.key_value, range, value, display)

  return offset + length, value
end

-- Last Px
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_px = {}

-- Size: Last Px
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_px.size = 4

-- Display: Last Px
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_px.display = function(value)
  return "Last Px: "..value
end

-- Dissect: Last Px
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_px.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_px.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Qty
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_qty = {}

-- Size: Last Qty
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_qty.size = 2

-- Display: Last Qty
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_qty.display = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Leaves Qty
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leaves_qty = {}

-- Size: Leaves Qty
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leaves_qty.size = 2

-- Display: Leaves Qty
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Leg Px
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_px = {}

-- Size: Leg Px
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_px.size = 4

-- Display: Leg Px
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_px.display = function(value)
  return "Leg Px: "..value
end

-- Dissect: Leg Px
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_px.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_px.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.leg_px, range, value, display)

  return offset + length, value
end

-- Leg Qty Uint 162
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_qty_uint_162 = {}

-- Size: Leg Qty Uint 162
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_qty_uint_162.size = 2

-- Display: Leg Qty Uint 162
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_qty_uint_162.display = function(value)
  return "Leg Qty Uint 162: "..value
end

-- Dissect: Leg Qty Uint 162
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_qty_uint_162.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_qty_uint_162.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_qty_uint_162.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.leg_qty_uint_162, range, value, display)

  return offset + length, value
end

-- Leg Qty Uint 1624
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_qty_uint_1624 = {}

-- Size: Leg Qty Uint 1624
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_qty_uint_1624.size = 2

-- Display: Leg Qty Uint 1624
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_qty_uint_1624.display = function(value)
  return "Leg Qty Uint 1624: "..value
end

-- Dissect: Leg Qty Uint 1624
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_qty_uint_1624.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_qty_uint_1624.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_qty_uint_1624.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.leg_qty_uint_1624, range, value, display)

  return offset + length, value
end

-- Leg Side Uint 81
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_side_uint_81 = {}

-- Size: Leg Side Uint 81
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_side_uint_81.size = 1

-- Display: Leg Side Uint 81
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_side_uint_81.labels = {
  [0] = "Leg Side Uint 81: Single Order (0)",
  [1] = "Leg Side Uint 81: Buy (1)",
  [2] = "Leg Side Uint 81: Sell (2)",
}

taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_side_uint_81.display = function(value)
  return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_side_uint_81.labels[value] or "Leg Side Uint 81: Unknown("..value..")"
end

-- Dissect: Leg Side Uint 81
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_side_uint_81.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_side_uint_81.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_side_uint_81.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.leg_side_uint_81, range, value, display)

  return offset + length, value
end

-- Leg Side Uint 822
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_side_uint_822 = {}

-- Size: Leg Side Uint 822
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_side_uint_822.size = 1

-- Display: Leg Side Uint 822
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_side_uint_822.labels = {
  [0] = "Leg Side Uint 822: Single Order (0)",
  [1] = "Leg Side Uint 822: Buy (1)",
  [2] = "Leg Side Uint 822: Sell (2)",
}

taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_side_uint_822.display = function(value)
  return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_side_uint_822.labels[value] or "Leg Side Uint 822: Unknown("..value..")"
end

-- Dissect: Leg Side Uint 822
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_side_uint_822.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_side_uint_822.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_side_uint_822.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.leg_side_uint_822, range, value, display)

  return offset + length, value
end

-- Max Flow Ctrl Cnt
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.max_flow_ctrl_cnt = {}

-- Size: Max Flow Ctrl Cnt
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.max_flow_ctrl_cnt.size = 2

-- Display: Max Flow Ctrl Cnt
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.max_flow_ctrl_cnt.display = function(value)
  return "Max Flow Ctrl Cnt: "..value
end

-- Dissect: Max Flow Ctrl Cnt
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.max_flow_ctrl_cnt.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.max_flow_ctrl_cnt.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.max_flow_ctrl_cnt.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.max_flow_ctrl_cnt, range, value, display)

  return offset + length, value
end

-- Member Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.member_id = {}

-- Size: Member Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.member_id.size = 2

-- Display: Member Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.member_id.display = function(value)
  return "Member Id: "..value
end

-- Dissect: Member Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.member_id.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.member_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.member_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.member_id, range, value, display)

  return offset + length, value
end

-- Message Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.message_type = {}

-- Size: Message Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.message_type.size = 1

-- Display: Message Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.message_type.labels = {
  [10] = "Message Type: Wake Up Call Message (10)",
  [20] = "Message Type: Wake Up Call Confirmed Message (20)",
  [30] = "Message Type: Logon Notice Message (30)",
  [230] = "Message Type: Final Sequential Number Notification For Group Message (230)",
  [40] = "Message Type: Request Logon Message (40)",
  [50] = "Message Type: Activate Application System Message (50)",
  [60] = "Message Type: Activate Application System Confirmed Message (60)",
  [70] = "Message Type: Logout Message (70)",
  [80] = "Message Type: Logout Confirmed Message (80)",
  [104] = "Message Type: Confirm Connection Message (104)",
  [105] = "Message Type: Connection Confirmed Message (105)",
  [102] = "Message Type: Order Status Report Message (102)",
  [132] = "Message Type: Order Status Report Long Format Message (132)",
  [106] = "Message Type: Execution Report Including Head Office And Branch Offices Message (106)",
  [202] = "Message Type: Flex Order Status Report Message (202)",
  [115] = "Message Type: Clearing Member Initiate Operation Message (115)",
  [116] = "Message Type: Clearing Member Initiate Operation Confirmed Message (116)",
  [215] = "Message Type: Flex Clearing Member Initiate Operation Message (215)",
  [216] = "Message Type: Flex Clearing Member Initiate Operation Confirmed Message (216)",
}

taifex_taifexderivatives_clearingmember_tmp_v2_18_7.message_type.display = function(value)
  return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.message_type.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.message_type, range, value, display)

  return offset + length, value
end

-- Ms
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ms = {}

-- Size: Ms
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ms.size = 2

-- Display: Ms
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ms.display = function(value)
  return "Ms: "..value
end

-- Dissect: Ms
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ms.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ms.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ms.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.ms, range, value, display)

  return offset + length, value
end

-- Msg Length
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_length = {}

-- Size: Msg Length
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_length.size = 2

-- Display: Msg Length
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Msg Seq Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_seq_num = {}

-- Size: Msg Seq Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_seq_num.size = 4

-- Display: Msg Seq Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_seq_num.display = function(value)
  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.msg_seq_num, range, value, display)

  return offset + length, value
end

-- Msg Time Ns
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_time_ns = {}

-- Size: Msg Time Ns
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_time_ns.size = 4

-- Display: Msg Time Ns
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_time_ns.display = function(value)
  return "Msg Time Ns: "..value
end

-- Dissect: Msg Time Ns
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_time_ns.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_time_ns.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_time_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.msg_time_ns, range, value, display)

  return offset + length, value
end

-- Msg Type Ext
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_type_ext = {}

-- Size: Msg Type Ext
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_type_ext.size = 1

-- Display: Msg Type Ext
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_type_ext.labels = {
  [0] = "Msg Type Ext: Same Product As The Original Order Input (0)",
  [1] = "Msg Type Ext: Single Leg Order With A Numeric Product Serial Number (1)",
  [2] = "Msg Type Ext: Single Leg Order With A Textual Product Symbol (2)",
  [3] = "Msg Type Ext: Multi Leg Order With A Numeric Product Serial Number (3)",
  [4] = "Msg Type Ext: Multi Leg Order With A Textual Product Symbol (4)",
  [255] = "Msg Type Ext: Unexpected Error Record (255)",
}

taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_type_ext.display = function(value)
  return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_type_ext.labels[value] or "Msg Type Ext: Unknown("..value..")"
end

-- Dissect: Msg Type Ext
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_type_ext.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_type_ext.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_type_ext.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.msg_type_ext, range, value, display)

  return offset + length, value
end

-- Nanosecond
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.nanosecond = {}

-- Size: Nanosecond
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.nanosecond.size = 4

-- Display: Nanosecond
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.nanosecond.display = function(value)
  return "Nanosecond: "..value
end

-- Dissect: Nanosecond
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.nanosecond.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.nanosecond.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.nanosecond.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.nanosecond, range, value, display)

  return offset + length, value
end

-- No Leg
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.no_leg = {}

-- Size: No Leg
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.no_leg.size = 1

-- Display: No Leg
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.no_leg.display = function(value)
  return "No Leg: "..value
end

-- Dissect: No Leg
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.no_leg.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.no_leg.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.no_leg.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.no_leg, range, value, display)

  return offset + length, value
end

-- Ord Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_id = {}

-- Size: Ord Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_id.size = 4

-- Display: Ord Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_id.display = function(value)
  return "Ord Id: "..value
end

-- Dissect: Ord Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_id.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.ord_id, range, value, display)

  return offset + length, value
end

-- Ord Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_type = {}

-- Size: Ord Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_type.size = 1

-- Display: Ord Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_type.labels = {
  [1] = "Ord Type: Market (1)",
  [2] = "Ord Type: Limit (2)",
  [3] = "Ord Type: Market With Protection (3)",
}

taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_type.display = function(value)
  return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_type.labels[value] or "Ord Type: Unknown("..value..")"
end

-- Dissect: Ord Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_type.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Order No
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_no = {}

-- Size: Order No
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_no.size = 5

-- Display: Order No
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_no.display = function(value)
  return "Order No: "..value
end

-- Dissect: Order No
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_no.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_no.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.order_no, range, value, display)

  return offset + length, value
end

-- Part Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.part_id = {}

-- Size: Part Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.part_id.size = 1

-- Display: Part Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.part_id.labels = {
  [102] = "Part Id: Flex Options Regular Market Hours (102)",
  [202] = "Part Id: Flex Futures Regular Market Hours (202)",
}

taifex_taifexderivatives_clearingmember_tmp_v2_18_7.part_id.display = function(value)
  return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.part_id.labels[value] or "Part Id: Unknown("..value..")"
end

-- Dissect: Part Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.part_id.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.part_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.part_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.part_id, range, value, display)

  return offset + length, value
end

-- Position Effect
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.position_effect = {}

-- Size: Position Effect
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.position_effect.size = 1

-- Display: Position Effect
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.position_effect.labels = {
  ["O"] = "Position Effect: Open (O)",
  ["C"] = "Position Effect: Close (C)",
  ["D"] = "Position Effect: Daytrade (D)",
  ["A"] = "Position Effect: Open And Specified Position Offsets (A)",
  ["7"] = "Position Effect: Offset By Fcm (7)",
  ["9"] = "Position Effect: Market Maker Quote (9)",
}

taifex_taifexderivatives_clearingmember_tmp_v2_18_7.position_effect.display = function(value)
  return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.position_effect.labels[value] or "Position Effect: Unknown("..value..")"
end

-- Dissect: Position Effect
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.position_effect.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.position_effect.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.position_effect.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.position_effect, range, value, display)

  return offset + length, value
end

-- Preserve
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.preserve = {}

-- Size: Preserve
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.preserve.size = 1

-- Display: Preserve
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.preserve.display = function(value)
  return "Preserve: "..value
end

-- Dissect: Preserve
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.preserve.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.preserve.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.preserve.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.preserve, range, value, display)

  return offset + length, value
end

-- Price
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.price = {}

-- Size: Price
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.price.size = 4

-- Display: Price
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.price.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.price, range, value, display)

  return offset + length, value
end

-- Prod Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prod_id = {}

-- Size: Prod Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prod_id.size = 20

-- Display: Prod Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prod_id.display = function(value)
  return "Prod Id: "..value
end

-- Dissect: Prod Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prod_id.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prod_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prod_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.prod_id, range, value, display)

  return offset + length, value
end

-- Protocol Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.protocol_type = {}

-- Size: Protocol Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.protocol_type.size = 1

-- Display: Protocol Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.protocol_type.labels = {
  [0] = "Protocol Type: Reserved (0)",
  [1] = "Protocol Type: Tmp (1)",
  [2] = "Protocol Type: Fix (2)",
}

taifex_taifexderivatives_clearingmember_tmp_v2_18_7.protocol_type.display = function(value)
  return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.protocol_type.labels[value] or "Protocol Type: Unknown("..value..")"
end

-- Dissect: Protocol Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.protocol_type.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.protocol_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.protocol_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.protocol_type, range, value, display)

  return offset + length, value
end

-- Pseq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq = {}

-- Size: Pseq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq.size = 4

-- Display: Pseq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq.display = function(value)
  return "Pseq: "..value
end

-- Dissect: Pseq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.pseq, range, value, display)

  return offset + length, value
end

-- Pseq 1
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq_1 = {}

-- Size: Pseq 1
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq_1.size = 2

-- Display: Pseq 1
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq_1.display = function(value)
  return "Pseq 1: "..value
end

-- Dissect: Pseq 1
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq_1.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq_1.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.pseq_1, range, value, display)

  return offset + length, value
end

-- Pseq 2
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq_2 = {}

-- Size: Pseq 2
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq_2.size = 2

-- Display: Pseq 2
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq_2.display = function(value)
  return "Pseq 2: "..value
end

-- Dissect: Pseq 2
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq_2.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq_2.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.pseq_2, range, value, display)

  return offset + length, value
end

-- Px Subtotal
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.px_subtotal = {}

-- Size: Px Subtotal
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.px_subtotal.size = 8

-- Display: Px Subtotal
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.px_subtotal.display = function(value)
  return "Px Subtotal: "..value
end

-- Dissect: Px Subtotal
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.px_subtotal.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.px_subtotal.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.px_subtotal.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.px_subtotal, range, value, display)

  return offset + length, value
end

-- Qty
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.qty = {}

-- Size: Qty
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.qty.size = 2

-- Display: Qty
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.qty.display = function(value)
  return "Qty: "..value
end

-- Dissect: Qty
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.qty.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.qty, range, value, display)

  return offset + length, value
end

-- Req Cm Seq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.req_cm_seq = {}

-- Size: Req Cm Seq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.req_cm_seq.size = 4

-- Display: Req Cm Seq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.req_cm_seq.display = function(value)
  return "Req Cm Seq: "..value
end

-- Dissect: Req Cm Seq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.req_cm_seq.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.req_cm_seq.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.req_cm_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.req_cm_seq, range, value, display)

  return offset + length, value
end

-- Request Start Seq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.request_start_seq = {}

-- Size: Request Start Seq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.request_start_seq.size = 4

-- Display: Request Start Seq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.request_start_seq.display = function(value)
  return "Request Start Seq: "..value
end

-- Dissect: Request Start Seq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.request_start_seq.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.request_start_seq.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.request_start_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.request_start_seq, range, value, display)

  return offset + length, value
end

-- Reserved 12
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_12 = {}

-- Size: Reserved 12
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_12.size = 12

-- Display: Reserved 12
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_12.display = function(value)
  return "Reserved 12: "..value
end

-- Dissect: Reserved 12
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_12.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_12.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.reserved_12, range, value, display)

  return offset + length, value
end

-- Reserved 13
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_13 = {}

-- Size: Reserved 13
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_13.size = 13

-- Display: Reserved 13
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_13.display = function(value)
  return "Reserved 13: "..value
end

-- Dissect: Reserved 13
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_13.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_13.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_13.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.reserved_13, range, value, display)

  return offset + length, value
end

-- Reserved 16
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_16 = {}

-- Size: Reserved 16
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_16.size = 16

-- Display: Reserved 16
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_16.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Reserved 33
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_33 = {}

-- Size: Reserved 33
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_33.size = 33

-- Display: Reserved 33
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_33.display = function(value)
  return "Reserved 33: "..value
end

-- Dissect: Reserved 33
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_33.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_33.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_33.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.reserved_33, range, value, display)

  return offset + length, value
end

-- Reserved 8
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_8 = {}

-- Size: Reserved 8
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_8.size = 8

-- Display: Reserved 8
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Rpt Seq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_seq = {}

-- Size: Rpt Seq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_seq.size = 4

-- Display: Rpt Seq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_seq.display = function(value)
  return "Rpt Seq: "..value
end

-- Dissect: Rpt Seq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_seq.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_seq.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.rpt_seq, range, value, display)

  return offset + length, value
end

-- Rpt Session Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_session_id = {}

-- Size: Rpt Session Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_session_id.size = 2

-- Display: Rpt Session Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_session_id.display = function(value)
  return "Rpt Session Id: "..value
end

-- Dissect: Rpt Session Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_session_id.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.rpt_session_id, range, value, display)

  return offset + length, value
end

-- Rpt Session Seq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_session_seq = {}

-- Size: Rpt Session Seq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_session_seq.size = 4

-- Display: Rpt Session Seq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_session_seq.display = function(value)
  return "Rpt Session Seq: "..value
end

-- Dissect: Rpt Session Seq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_session_seq.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_session_seq.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_session_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.rpt_session_seq, range, value, display)

  return offset + length, value
end

-- Session Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.session_id = {}

-- Size: Session Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.session_id.size = 2

-- Display: Session Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.session_id.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.session_id, range, value, display)

  return offset + length, value
end

-- Side
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.side = {}

-- Size: Side
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.side.size = 1

-- Display: Side
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.side.labels = {
  [1] = "Side: Buy (1)",
  [2] = "Side: Sell (2)",
}

taifex_taifexderivatives_clearingmember_tmp_v2_18_7.side.display = function(value)
  return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.side.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.side.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.side, range, value, display)

  return offset + length, value
end

-- Start In Bound Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.start_in_bound_num = {}

-- Size: Start In Bound Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.start_in_bound_num.size = 4

-- Display: Start In Bound Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.start_in_bound_num.display = function(value)
  return "Start In Bound Num: "..value
end

-- Dissect: Start In Bound Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.start_in_bound_num.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.start_in_bound_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.start_in_bound_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.start_in_bound_num, range, value, display)

  return offset + length, value
end

-- Status Code Uint 162
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_162 = {}

-- Size: Status Code Uint 162
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_162.size = 2

-- Display: Status Code Uint 162
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_162.labels = {
  [0] = "Status Code Uint 162: Succeed (0)",
  [1] = "Status Code Uint 162: Trading Time Over (1)",
  [2] = "Status Code Uint 162: Order Acceptance Not Yet Started Or Trading Halt (2)",
  [3] = "Status Code Uint 162: Price Quote Not Yet Accepted (3)",
  [4] = "Status Code Uint 162: In Processing No Order Accepted For The Time Being (4)",
  [5] = "Status Code Uint 162: No Such Order No (5)",
  [6] = "Status Code Uint 162: Order Or Quote Filled (6)",
  [7] = "Status Code Uint 162: Order Or Quote Cancelled (7)",
  [8] = "Status Code Uint 162: Stop Order (8)",
  [9] = "Status Code Uint 162: Order Limit (9)",
  [10] = "Status Code Uint 162: Order Not In The Book (10)",
  [11] = "Status Code Uint 162: Exec Type Error (11)",
  [12] = "Status Code Uint 162: Broker Id Error (12)",
  [13] = "Status Code Uint 162: Branch No Error (13)",
  [14] = "Status Code Uint 162: 1. Investor Acct No. error 2.The investor account is not opened in NBT. (14)",
  [15] = "Status Code Uint 162: Investor Id Code Error (15)",
  [16] = "Status Code Uint 162: Reject Delete Or Modify Order During Non Cancel Period (16)",
  [17] = "Status Code Uint 162: Duplicate Order No Or Quote No (17)",
  [18] = "Status Code Uint 162: Order No Or Quote No Error (18)",
  [19] = "Status Code Uint 162: The Same Side Order Not Exist (19)",
  [20] = "Status Code Uint 162: Product Id Error (20)",
  [21] = "Status Code Uint 162: Exceeding Risefall Limit (21)",
  [22] = "Status Code Uint 162: Order Quantity Error (22)",
  [23] = "Status Code Uint 162: Price Inquiry Not Accepted Yet Or Price Is At Risefall Limit Price Inquiry Not Accepted (23)",
  [24] = "Status Code Uint 162: Buy Sell Error (24)",
  [25] = "Status Code Uint 162: Ord Type Error (25)",
  [26] = "Status Code Uint 162: Order Type And Price Not Matched (26)",
  [27] = "Status Code Uint 162: Time In Force Error (27)",
  [28] = "Status Code Uint 162: Position Effect Error (28)",
  [29] = "Status Code Uint 162: Price And Tick Size Not Matched (29)",
  [30] = "Status Code Uint 162: Product Expired (30)",
  [31] = "Status Code Uint 162: Broker Id Product Group And Market Makers Account No Inconsistent (31)",
  [32] = "Status Code Uint 162: Decrease Successful But Requested More Than The Decreasable Unfilled Part (32)",
  [33] = "Status Code Uint 162: Quoted Bidask Price May Not Exceed The Spread Limit Of The Product (33)",
  [34] = "Status Code Uint 162: Bid Price Exceeding Ask Price (34)",
  [35] = "Status Code Uint 162: Remaining Quantity Of The Unmodified Side Is Zero (35)",
  [36] = "Status Code Uint 162: The Unfilled Part Of The One Way Quote Is Less Than The Minimum Quantity Limit (36)",
  [37] = "Status Code Uint 162: Price Inquiry Already Present (37)",
  [38] = "Status Code Uint 162: Market Orderand Mwp Does Not Accept Rod (38)",
  [39] = "Status Code Uint 162: Decrease Quantity Error (39)",
  [40] = "Status Code Uint 162: Price Error Single Side Quote Order Modification (40)",
  [41] = "Status Code Uint 162: Settlement Month Error (41)",
  [42] = "Status Code Uint 162: Strike Price Error (42)",
  [43] = "Status Code Uint 162: Clearing Member Id Error (43)",
  [44] = "Status Code Uint 162: Order Source Error (44)",
  [45] = "Status Code Uint 162: Info Source Error (45)",
  [46] = "Status Code Uint 162: Disable Kill Switch Operation Error (46)",
  [47] = "Status Code Uint 162: Leaves Quantity Rejected At The Dynamic Price Banding Limit (47)",
  [48] = "Status Code Uint 162: Dynamic Price Banding Limit Price Disclosure (48)",
  [51] = "Status Code Uint 162: Fok Not Filled And Deleted By System (51)",
  [52] = "Status Code Uint 162: Ioc Is Partially Filled (52)",
  [53] = "Status Code Uint 162: Ioc Not Filled And Deleted By System (53)",
  [54] = "Status Code Uint 162: Delete The Order Because Of Cod (54)",
  [61] = "Status Code Uint 162: Buysell Code Of Canceldecrease Order Not Matching Original Order (61)",
  [62] = "Status Code Uint 162: Product Id Of Canceldecrease Order Not Matching Original Order (62)",
  [63] = "Status Code Uint 162: Modify Price Of Ioc Order Not Allowed (63)",
  [64] = "Status Code Uint 162: Order Partially Traded Modify To Market Fok Order Or Mwp Fok Order Is Not Allowed (64)",
  [65] = "Status Code Uint 162: Kill Switch In Operation The Order Execution Type Is Not Allowed (65)",
  [77] = "Status Code Uint 162: No Such Contract (77)",
  [78] = "Status Code Uint 162: Order Of This Contract Is Restricted For This Account Code (78)",
  [79] = "Status Code Uint 162: Order Deleted Due To Trading Suspension Or Order Acceptance Before Collective Bidding (79)",
  [80] = "Status Code Uint 162: Fcm Is Not Yet Approved To Trade This Product Or Execute The Function (80)",
  [89] = "Status Code Uint 162: Too Many Errors (89)",
  [91] = "Status Code Uint 162: Message Time Out (91)",
  [92] = "Status Code Uint 162: Message Length Error (92)",
  [93] = "Status Code Uint 162: Message Format Error (93)",
  [99] = "Status Code Uint 162: Major Error (99)",
  [110] = "Status Code Uint 162: Illegal File Code (110)",
  [113] = "Status Code Uint 162: Wrong File Request Range (113)",
  [114] = "Status Code Uint 162: File Is Not Ready (114)",
  [117] = "Status Code Uint 162: File Is Ready But Empty (117)",
  [120] = "Status Code Uint 162: File Not Found For Broker (120)",
  [121] = "Status Code Uint 162: Illegal Time To Get File (121)",
  [150] = "Status Code Uint 162: Fcm Unique Id Or Serial No Duplicate (150)",
  [151] = "Status Code Uint 162: Product Can Not Block Trade (151)",
  [152] = "Status Code Uint 162: Block Trade Order Quantity Error (152)",
  [153] = "Status Code Uint 162: Invalid Prod Count (153)",
  [154] = "Status Code Uint 162: Prod Count Is Not Match With The Number Of Legs In A Block Trade Order (154)",
  [155] = "Status Code Uint 162: Invalid Fcm Unique Id Or Serial No (155)",
  [156] = "Status Code Uint 162: Block Trade Id Duplicate (156)",
  [157] = "Status Code Uint 162: Invalid Block Trade Id (157)",
  [158] = "Status Code Uint 162: Invalid Participant Fcm Count (158)",
  [159] = "Status Code Uint 162: Participant Fcm Count Is Not Consistent With Participant Fcm Id List (159)",
  [160] = "Status Code Uint 162: Participant Fcm Id Error (160)",
  [161] = "Status Code Uint 162: Invalid Prod Count (161)",
  [162] = "Status Code Uint 162: Block Trade Id Does Not Exist (162)",
  [163] = "Status Code Uint 162: Negotiated Block Trade Success (163)",
  [164] = "Status Code Uint 162: Negotiated Block Trade Fail (164)",
  [165] = "Status Code Uint 162: Negotiated Block Trade Calcelled (165)",
  [166] = "Status Code Uint 162: Negotiated Block Trade Wait Fcm To Comfirm Order (166)",
  [167] = "Status Code Uint 162: Fcm Id Not Matching Represent Fcm (167)",
  [168] = "Status Code Uint 162: Symbol Type Error (168)",
  [169] = "Status Code Uint 162: Invalid Order Count Of Negotiated Block Trade Confirm Input (169)",
  [170] = "Status Code Uint 162: Number Of Orders In B 31 Xb 31 Is Not Consistent With Order Count Field (170)",
  [171] = "Status Code Uint 162: Negotiated Block Trade Is Not In The Status Of Waiting For Confirm Input (171)",
  [172] = "Status Code Uint 162: Investor Acno Duplicate In Negotiated Block Trade Confirm Input (172)",
  [175] = "Status Code Uint 162: Negotiated Block Trade Timed Out (175)",
  [176] = "Status Code Uint 162: The Confirm Input Data Is Not Consistent With B 21 Xb 21 Registered Data (176)",
  [177] = "Status Code Uint 162: Negotiated Block Trade Beyond The Position Limit (177)",
  [186] = "Status Code Uint 162: Illegal Source Id (186)",
  [200] = "Status Code Uint 162: Significant System Time Error (200)",
  [201] = "Status Code Uint 162: Append No Error (201)",
  [202] = "Status Code Uint 162: Fcm Id Error (202)",
  [203] = "Status Code Uint 162: Ap Code Error (203)",
  [204] = "Status Code Uint 162: Key Value Error (204)",
  [205] = "Status Code Uint 162: Session Id Error (205)",
  [206] = "Status Code Uint 162: System Type Error (206)",
  [207] = "Status Code Uint 162: Msg Seq Num Error (207)",
  [208] = "Status Code Uint 162: Target Id Error (208)",
  [209] = "Status Code Uint 162: Flow Group No Error (209)",
  [210] = "Status Code Uint 162: Subscription Request Type Error (210)",
  [220] = "Status Code Uint 162: Msg Type Ext Error (220)",
  [221] = "Status Code Uint 162: Part Id Error (221)",
  [240] = "Status Code Uint 162: Session Exceeds The Flow Limit (240)",
  [241] = "Status Code Uint 162: Session Exceeds Flow Limit Continuously And Is Locked (241)",
  [242] = "Status Code Uint 162: Order Older Than Cancel Order Sec And Rejected (242)",
  [248] = "Status Code Uint 162: Session Reach 80% Of The Flow Limit (248)",
  [249] = "Status Code Uint 162: Session Reach 90% Of The Flow Limit (249)",
  [250] = "Status Code Uint 162: Order Older Than Two Seconds (250)",
  [300] = "Status Code Uint 162: The Flex Contract Has Been Resubmitted (300)",
  [301] = "Status Code Uint 162: Open Interest For Today Undetermined (301)",
  [302] = "Status Code Uint 162: The Flex Contract Is Listed For Trading (302)",
  [303] = "Status Code Uint 162: Incorrect Expiration Date For The Flex Contract (303)",
  [304] = "Status Code Uint 162: Duplicate Unique Id Of A Security Definition Request For The Flex Contract (304)",
  [305] = "Status Code Uint 162: Exceeding The Flex Contract Limit (305)",
  [306] = "Status Code Uint 162: No Record Of Successful Flex Contract Application Was Found (306)",
  [310] = "Status Code Uint 162: Non Flexible Contract Application Period (310)",
  [311] = "Status Code Uint 162: The Proprietary Trading Account Has Not Been Approved To Apply For Flex Contracts (311)",
  [312] = "Status Code Uint 162: The Fcm Account Has Not Been Approved To Apply For Flex Contracts (312)",
  [313] = "Status Code Uint 162: Incorrect Coverage Range For The Flex Contract (313)",
  [314] = "Status Code Uint 162: Invalid Strike Price For The Flex Contract (314)",
  [315] = "Status Code Uint 162: Invalid Security Request Type For The Flex Contract (315)",
  [316] = "Status Code Uint 162: Invalid Application Type For The Flex Contract (316)",
  [317] = "Status Code Uint 162: Invalid Type For The Flex Contract (317)",
  [318] = "Status Code Uint 162: Expiry Type Error (318)",
  [319] = "Status Code Uint 162: Call Put Code Error (319)",
}

taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_162.display = function(value)
  return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_162.labels[value] or "Status Code Uint 162: Unknown("..value..")"
end

-- Dissect: Status Code Uint 162
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_162.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_162.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_162.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.status_code_uint_162, range, value, display)

  return offset + length, value
end

-- Status Code Uint 81
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81 = {}

-- Size: Status Code Uint 81
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.size = 1

-- Display: Status Code Uint 81
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.labels = {
  [0] = "Status Code Uint 81: Succeed (0)",
  [1] = "Status Code Uint 81: Trading Time Over (1)",
  [2] = "Status Code Uint 81: Order Acceptance Not Yet Started Or Trading Halt (2)",
  [3] = "Status Code Uint 81: Price Quote Not Yet Accepted (3)",
  [4] = "Status Code Uint 81: In Processing No Order Accepted For The Time Being (4)",
  [5] = "Status Code Uint 81: No Such Order No (5)",
  [6] = "Status Code Uint 81: Order Or Quote Filled (6)",
  [7] = "Status Code Uint 81: Order Or Quote Cancelled (7)",
  [8] = "Status Code Uint 81: Stop Order (8)",
  [9] = "Status Code Uint 81: Order Limit (9)",
  [10] = "Status Code Uint 81: Order Not In The Book (10)",
  [11] = "Status Code Uint 81: Exec Type Error (11)",
  [12] = "Status Code Uint 81: Broker Id Error (12)",
  [13] = "Status Code Uint 81: Branch No Error (13)",
  [14] = "Status Code Uint 81: 1. Investor Acct No. error 2.The investor account is not opened in NBT. (14)",
  [15] = "Status Code Uint 81: Investor Id Code Error (15)",
  [16] = "Status Code Uint 81: Reject Delete Or Modify Order During Non Cancel Period (16)",
  [17] = "Status Code Uint 81: Duplicate Order No Or Quote No (17)",
  [18] = "Status Code Uint 81: Order No Or Quote No Error (18)",
  [19] = "Status Code Uint 81: The Same Side Order Not Exist (19)",
  [20] = "Status Code Uint 81: Product Id Error (20)",
  [21] = "Status Code Uint 81: Exceeding Risefall Limit (21)",
  [22] = "Status Code Uint 81: Order Quantity Error (22)",
  [23] = "Status Code Uint 81: Price Inquiry Not Accepted Yet Or Price Is At Risefall Limit Price Inquiry Not Accepted (23)",
  [24] = "Status Code Uint 81: Buy Sell Error (24)",
  [25] = "Status Code Uint 81: Ord Type Error (25)",
  [26] = "Status Code Uint 81: Order Type And Price Not Matched (26)",
  [27] = "Status Code Uint 81: Time In Force Error (27)",
  [28] = "Status Code Uint 81: Position Effect Error (28)",
  [29] = "Status Code Uint 81: Price And Tick Size Not Matched (29)",
  [30] = "Status Code Uint 81: Product Expired (30)",
  [31] = "Status Code Uint 81: Broker Id Product Group And Market Makers Account No Inconsistent (31)",
  [32] = "Status Code Uint 81: Decrease Successful But Requested More Than The Decreasable Unfilled Part (32)",
  [33] = "Status Code Uint 81: Quoted Bidask Price May Not Exceed The Spread Limit Of The Product (33)",
  [34] = "Status Code Uint 81: Bid Price Exceeding Ask Price (34)",
  [35] = "Status Code Uint 81: Remaining Quantity Of The Unmodified Side Is Zero (35)",
  [36] = "Status Code Uint 81: The Unfilled Part Of The One Way Quote Is Less Than The Minimum Quantity Limit (36)",
  [37] = "Status Code Uint 81: Price Inquiry Already Present (37)",
  [38] = "Status Code Uint 81: Market Orderand Mwp Does Not Accept Rod (38)",
  [39] = "Status Code Uint 81: Decrease Quantity Error (39)",
  [40] = "Status Code Uint 81: Price Error Single Side Quote Order Modification (40)",
  [41] = "Status Code Uint 81: Settlement Month Error (41)",
  [42] = "Status Code Uint 81: Strike Price Error (42)",
  [43] = "Status Code Uint 81: Clearing Member Id Error (43)",
  [44] = "Status Code Uint 81: Order Source Error (44)",
  [45] = "Status Code Uint 81: Info Source Error (45)",
  [46] = "Status Code Uint 81: Disable Kill Switch Operation Error (46)",
  [47] = "Status Code Uint 81: Leaves Quantity Rejected At The Dynamic Price Banding Limit (47)",
  [48] = "Status Code Uint 81: Dynamic Price Banding Limit Price Disclosure (48)",
  [51] = "Status Code Uint 81: Fok Not Filled And Deleted By System (51)",
  [52] = "Status Code Uint 81: Ioc Is Partially Filled (52)",
  [53] = "Status Code Uint 81: Ioc Not Filled And Deleted By System (53)",
  [54] = "Status Code Uint 81: Delete The Order Because Of Cod (54)",
  [61] = "Status Code Uint 81: Buysell Code Of Canceldecrease Order Not Matching Original Order (61)",
  [62] = "Status Code Uint 81: Product Id Of Canceldecrease Order Not Matching Original Order (62)",
  [63] = "Status Code Uint 81: Modify Price Of Ioc Order Not Allowed (63)",
  [64] = "Status Code Uint 81: Order Partially Traded Modify To Market Fok Order Or Mwp Fok Order Is Not Allowed (64)",
  [65] = "Status Code Uint 81: Kill Switch In Operation The Order Execution Type Is Not Allowed (65)",
  [77] = "Status Code Uint 81: No Such Contract (77)",
  [78] = "Status Code Uint 81: Order Of This Contract Is Restricted For This Account Code (78)",
  [79] = "Status Code Uint 81: Order Deleted Due To Trading Suspension Or Order Acceptance Before Collective Bidding (79)",
  [80] = "Status Code Uint 81: Fcm Is Not Yet Approved To Trade This Product Or Execute The Function (80)",
  [89] = "Status Code Uint 81: Too Many Errors (89)",
  [91] = "Status Code Uint 81: Message Time Out (91)",
  [92] = "Status Code Uint 81: Message Length Error (92)",
  [93] = "Status Code Uint 81: Message Format Error (93)",
  [99] = "Status Code Uint 81: Major Error (99)",
  [110] = "Status Code Uint 81: Illegal File Code (110)",
  [113] = "Status Code Uint 81: Wrong File Request Range (113)",
  [114] = "Status Code Uint 81: File Is Not Ready (114)",
  [117] = "Status Code Uint 81: File Is Ready But Empty (117)",
  [120] = "Status Code Uint 81: File Not Found For Broker (120)",
  [121] = "Status Code Uint 81: Illegal Time To Get File (121)",
  [150] = "Status Code Uint 81: Fcm Unique Id Or Serial No Duplicate (150)",
  [151] = "Status Code Uint 81: Product Can Not Block Trade (151)",
  [152] = "Status Code Uint 81: Block Trade Order Quantity Error (152)",
  [153] = "Status Code Uint 81: Invalid Prod Count (153)",
  [154] = "Status Code Uint 81: Prod Count Is Not Match With The Number Of Legs In A Block Trade Order (154)",
  [155] = "Status Code Uint 81: Invalid Fcm Unique Id Or Serial No (155)",
  [156] = "Status Code Uint 81: Block Trade Id Duplicate (156)",
  [157] = "Status Code Uint 81: Invalid Block Trade Id (157)",
  [158] = "Status Code Uint 81: Invalid Participant Fcm Count (158)",
  [159] = "Status Code Uint 81: Participant Fcm Count Is Not Consistent With Participant Fcm Id List (159)",
  [160] = "Status Code Uint 81: Participant Fcm Id Error (160)",
  [161] = "Status Code Uint 81: Invalid Prod Count (161)",
  [162] = "Status Code Uint 81: Block Trade Id Does Not Exist (162)",
  [163] = "Status Code Uint 81: Negotiated Block Trade Success (163)",
  [164] = "Status Code Uint 81: Negotiated Block Trade Fail (164)",
  [165] = "Status Code Uint 81: Negotiated Block Trade Calcelled (165)",
  [166] = "Status Code Uint 81: Negotiated Block Trade Wait Fcm To Comfirm Order (166)",
  [167] = "Status Code Uint 81: Fcm Id Not Matching Represent Fcm (167)",
  [168] = "Status Code Uint 81: Symbol Type Error (168)",
  [169] = "Status Code Uint 81: Invalid Order Count Of Negotiated Block Trade Confirm Input (169)",
  [170] = "Status Code Uint 81: Number Of Orders In B 31 Xb 31 Is Not Consistent With Order Count Field (170)",
  [171] = "Status Code Uint 81: Negotiated Block Trade Is Not In The Status Of Waiting For Confirm Input (171)",
  [172] = "Status Code Uint 81: Investor Acno Duplicate In Negotiated Block Trade Confirm Input (172)",
  [175] = "Status Code Uint 81: Negotiated Block Trade Timed Out (175)",
  [176] = "Status Code Uint 81: The Confirm Input Data Is Not Consistent With B 21 Xb 21 Registered Data (176)",
  [177] = "Status Code Uint 81: Negotiated Block Trade Beyond The Position Limit (177)",
  [186] = "Status Code Uint 81: Illegal Source Id (186)",
  [200] = "Status Code Uint 81: Significant System Time Error (200)",
  [201] = "Status Code Uint 81: Append No Error (201)",
  [202] = "Status Code Uint 81: Fcm Id Error (202)",
  [203] = "Status Code Uint 81: Ap Code Error (203)",
  [204] = "Status Code Uint 81: Key Value Error (204)",
  [205] = "Status Code Uint 81: Session Id Error (205)",
  [206] = "Status Code Uint 81: System Type Error (206)",
  [207] = "Status Code Uint 81: Msg Seq Num Error (207)",
  [208] = "Status Code Uint 81: Target Id Error (208)",
  [209] = "Status Code Uint 81: Flow Group No Error (209)",
  [210] = "Status Code Uint 81: Subscription Request Type Error (210)",
  [220] = "Status Code Uint 81: Msg Type Ext Error (220)",
  [221] = "Status Code Uint 81: Part Id Error (221)",
  [240] = "Status Code Uint 81: Session Exceeds The Flow Limit (240)",
  [241] = "Status Code Uint 81: Session Exceeds Flow Limit Continuously And Is Locked (241)",
  [242] = "Status Code Uint 81: Order Older Than Cancel Order Sec And Rejected (242)",
  [248] = "Status Code Uint 81: Session Reach 80% Of The Flow Limit (248)",
  [249] = "Status Code Uint 81: Session Reach 90% Of The Flow Limit (249)",
  [250] = "Status Code Uint 81: Order Older Than Two Seconds (250)",
}

taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.display = function(value)
  return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.labels[value] or "Status Code Uint 81: Unknown("..value..")"
end

-- Dissect: Status Code Uint 81
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.status_code_uint_81, range, value, display)

  return offset + length, value
end

-- Symbol Char 2020
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_char_2020 = {}

-- Size: Symbol Char 2020
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_char_2020.size = 20

-- Display: Symbol Char 2020
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_char_2020.display = function(value)
  return "Symbol Char 2020: "..value
end

-- Dissect: Symbol Char 2020
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_char_2020.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_char_2020.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_char_2020.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.symbol_char_2020, range, value, display)

  return offset + length, value
end

-- Symbol Char 4040
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_char_4040 = {}

-- Size: Symbol Char 4040
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_char_4040.size = 40

-- Display: Symbol Char 4040
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_char_4040.display = function(value)
  return "Symbol Char 4040: "..value
end

-- Dissect: Symbol Char 4040
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_char_4040.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_char_4040.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_char_4040.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.symbol_char_4040, range, value, display)

  return offset + length, value
end

-- Symbol Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_type = {}

-- Size: Symbol Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_type.size = 1

-- Display: Symbol Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_type.labels = {
  [1] = "Symbol Type: Numeric Product Id (1)",
  [2] = "Symbol Type: Text Product Id (2)",
  [3] = "Symbol Type: Numeric Product Id Long Format (3)",
  [4] = "Symbol Type: Text Product Id Long Format (4)",
}

taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_type.display = function(value)
  return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_type.labels[value] or "Symbol Type: Unknown("..value..")"
end

-- Dissect: Symbol Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_type.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.symbol_type, range, value, display)

  return offset + length, value
end

-- System Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.system_type = {}

-- Size: System Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.system_type.size = 1

-- Display: System Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.system_type.labels = {
  [10] = "System Type: Options Regular Market Hours (10)",
  [20] = "System Type: Futures Regular Market Hours (20)",
  [11] = "System Type: Options After Market Hours (11)",
  [21] = "System Type: Futures After Market Hours (21)",
}

taifex_taifexderivatives_clearingmember_tmp_v2_18_7.system_type.display = function(value)
  return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.system_type.labels[value] or "System Type: Unknown("..value..")"
end

-- Dissect: System Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.system_type.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.system_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.system_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.system_type, range, value, display)

  return offset + length, value
end

-- Target Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.target_id = {}

-- Size: Target Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.target_id.size = 1

-- Display: Target Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.target_id.labels = {
  [3] = "Target Id: Execution Report Including Head Office And Branch Offices In R 02 Format (3)",
  [4] = "Target Id: Fcm (4)",
  [7] = "Target Id: Drop Copy In R 02 Format (7)",
  [8] = "Target Id: Clearing Member Order And Execution In R 02 Format (8)",
  [9] = "Target Id: Clearing Member Execution In R 02 Format (9)",
  [13] = "Target Id: Execution Report Including Head Office And Branch Offices In R 32 Format (13)",
  [17] = "Target Id: Drop Copy In R 32 Format (17)",
  [18] = "Target Id: Clearing Member Order And Execution In R 32 Format (18)",
  [19] = "Target Id: Clearing Member Execution In R 32 Format (19)",
  [23] = "Target Id: Execution Report Including Head Office And Branch Offices In R 06 Format (23)",
}

taifex_taifexderivatives_clearingmember_tmp_v2_18_7.target_id.display = function(value)
  return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.target_id.labels[value] or "Target Id: Unknown("..value..")"
end

-- Dissect: Target Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.target_id.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.target_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.target_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.target_id, range, value, display)

  return offset + length, value
end

-- Time In Force
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.time_in_force = {}

-- Size: Time In Force
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.time_in_force.size = 1

-- Display: Time In Force
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.time_in_force.labels = {
  [0] = "Time In Force: Rod (0)",
  [3] = "Time In Force: Ioc (3)",
  [4] = "Time In Force: Fok (4)",
  [8] = "Time In Force: Automatically Cancelled After A Period Of Time (8)",
}

taifex_taifexderivatives_clearingmember_tmp_v2_18_7.time_in_force.display = function(value)
  return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.time_in_force.labels[value] or "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.time_in_force.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Uniq Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.uniq_id = {}

-- Size: Uniq Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.uniq_id.size = 4

-- Display: Uniq Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.uniq_id.display = function(value)
  return "Uniq Id: "..value
end

-- Dissect: Uniq Id
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.uniq_id.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.uniq_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.uniq_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.uniq_id, range, value, display)

  return offset + length, value
end

-- User Define
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.user_define = {}

-- Size: User Define
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.user_define.size = 8

-- Display: User Define
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.user_define.display = function(value)
  return "User Define: "..value
end

-- Dissect: User Define
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.user_define.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.user_define.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.user_define.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.user_define, range, value, display)

  return offset + length, value
end

-- Version
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.version = {}

-- Size: Version
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.version.size = 1

-- Display: Version
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.version.labels = {
  [0] = "Version: Regular Trading (0)",
  [1] = "Version: Regular Trading And Flex Trading (1)",
}

taifex_taifexderivatives_clearingmember_tmp_v2_18_7.version.display = function(value)
  return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.version.labels[value] or "Version: Unknown("..value..")"
end

-- Dissect: Version
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.version.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Taifex TaifexDerivatives ClearingMember Tmp 2.18.7
-----------------------------------------------------------------------

-- Message Tail
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.message_tail = {}

-- Size: Message Tail
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.message_tail.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.check_sum.size

-- Display: Message Tail
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.message_tail.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Tail
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.message_tail.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Check Sum: uint8
  index, check_sum = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.check_sum.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Tail
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.message_tail.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.message_tail, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.message_tail.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.message_tail.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.message_tail.fields(buffer, offset, packet, parent)
  end
end

-- Sub Hdr
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sub_hdr = {}

-- Size: Sub Hdr
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sub_hdr.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_type_ext.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.preserve.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_time_ns.size

-- Display: Sub Hdr
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sub_hdr.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sub Hdr
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sub_hdr.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type Ext: uint8
  index, msg_type_ext = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_type_ext.dissect(buffer, index, packet, parent)

  -- Preserve: uint8
  index, preserve = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.preserve.dissect(buffer, index, packet, parent)

  -- Msg Time Ns: uint32
  index, msg_time_ns = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_time_ns.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sub Hdr
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sub_hdr.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.sub_hdr, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sub_hdr.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sub_hdr.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sub_hdr.fields(buffer, offset, packet, parent)
  end
end

-- Flex Clearing Member Initiate Operation Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_clearing_member_initiate_operation_confirmed_message = {}

-- Size: Flex Clearing Member Initiate Operation Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_clearing_member_initiate_operation_confirmed_message.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sub_hdr.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.part_id.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_162.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.member_id.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.target_id.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.req_cm_seq.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_16.size

-- Display: Flex Clearing Member Initiate Operation Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_clearing_member_initiate_operation_confirmed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Flex Clearing Member Initiate Operation Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_clearing_member_initiate_operation_confirmed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sub Hdr: Struct of 3 fields
  index, sub_hdr = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sub_hdr.dissect(buffer, index, packet, parent)

  -- Part Id: uint8
  index, part_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.part_id.dissect(buffer, index, packet, parent)

  -- Status Code Uint 162: uint16
  index, status_code_uint_162 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_162.dissect(buffer, index, packet, parent)

  -- Member Id: uint16
  index, member_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.member_id.dissect(buffer, index, packet, parent)

  -- Target Id: uint8
  index, target_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.target_id.dissect(buffer, index, packet, parent)

  -- Req Cm Seq: uint32
  index, req_cm_seq = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.req_cm_seq.dissect(buffer, index, packet, parent)

  -- Reserved 16: uint8[16]
  index, reserved_16 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Flex Clearing Member Initiate Operation Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_clearing_member_initiate_operation_confirmed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.flex_clearing_member_initiate_operation_confirmed_message, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_clearing_member_initiate_operation_confirmed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_clearing_member_initiate_operation_confirmed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_clearing_member_initiate_operation_confirmed_message.fields(buffer, offset, packet, parent)
  end
end

-- Flex Clearing Member Initiate Operation Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_clearing_member_initiate_operation_message = {}

-- Size: Flex Clearing Member Initiate Operation Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_clearing_member_initiate_operation_message.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sub_hdr.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.part_id.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.member_id.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.target_id.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.req_cm_seq.size

-- Display: Flex Clearing Member Initiate Operation Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_clearing_member_initiate_operation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Flex Clearing Member Initiate Operation Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_clearing_member_initiate_operation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sub Hdr: Struct of 3 fields
  index, sub_hdr = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sub_hdr.dissect(buffer, index, packet, parent)

  -- Part Id: uint8
  index, part_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.part_id.dissect(buffer, index, packet, parent)

  -- Member Id: uint16
  index, member_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.member_id.dissect(buffer, index, packet, parent)

  -- Target Id: uint8
  index, target_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.target_id.dissect(buffer, index, packet, parent)

  -- Req Cm Seq: uint32
  index, req_cm_seq = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.req_cm_seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Flex Clearing Member Initiate Operation Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_clearing_member_initiate_operation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.flex_clearing_member_initiate_operation_message, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_clearing_member_initiate_operation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_clearing_member_initiate_operation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_clearing_member_initiate_operation_message.fields(buffer, offset, packet, parent)
  end
end

-- Clearing Member Initiate Operation Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.clearing_member_initiate_operation_confirmed_message = {}

-- Size: Clearing Member Initiate Operation Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.clearing_member_initiate_operation_confirmed_message.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.member_id.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.target_id.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.req_cm_seq.size

-- Display: Clearing Member Initiate Operation Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.clearing_member_initiate_operation_confirmed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clearing Member Initiate Operation Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.clearing_member_initiate_operation_confirmed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Status Code Uint 81: uint8
  index, status_code_uint_81 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.dissect(buffer, index, packet, parent)

  -- Member Id: uint16
  index, member_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.member_id.dissect(buffer, index, packet, parent)

  -- Target Id: uint8
  index, target_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.target_id.dissect(buffer, index, packet, parent)

  -- Req Cm Seq: uint32
  index, req_cm_seq = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.req_cm_seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clearing Member Initiate Operation Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.clearing_member_initiate_operation_confirmed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.clearing_member_initiate_operation_confirmed_message, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.clearing_member_initiate_operation_confirmed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.clearing_member_initiate_operation_confirmed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.clearing_member_initiate_operation_confirmed_message.fields(buffer, offset, packet, parent)
  end
end

-- Clearing Member Initiate Operation Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.clearing_member_initiate_operation_message = {}

-- Size: Clearing Member Initiate Operation Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.clearing_member_initiate_operation_message.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.member_id.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.target_id.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.req_cm_seq.size

-- Display: Clearing Member Initiate Operation Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.clearing_member_initiate_operation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clearing Member Initiate Operation Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.clearing_member_initiate_operation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Member Id: uint16
  index, member_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.member_id.dissect(buffer, index, packet, parent)

  -- Target Id: uint8
  index, target_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.target_id.dissect(buffer, index, packet, parent)

  -- Req Cm Seq: uint32
  index, req_cm_seq = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.req_cm_seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clearing Member Initiate Operation Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.clearing_member_initiate_operation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.clearing_member_initiate_operation_message, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.clearing_member_initiate_operation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.clearing_member_initiate_operation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.clearing_member_initiate_operation_message.fields(buffer, offset, packet, parent)
  end
end

-- Transact Time Msg Time X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msg_time_x = {}

-- Size: Transact Time Msg Time X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msg_time_x.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epoch_s_uint_324.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.nanosecond.size

-- Display: Transact Time Msg Time X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msg_time_x.display = function(packet, parent, value)
  -- Check null value
  if value == nil then
    return "No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect Fields: Transact Time Msg Time X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msg_time_x.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Epoch S Uint 324: uint32
  index, epoch_s_uint_324 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epoch_s_uint_324.dissect(buffer, index, packet, parent)

  -- Nanosecond: uint32
  index, nanosecond = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.nanosecond.dissect(buffer, index, packet, parent)

  -- Composite value
  local transact_time_msg_time_x = UInt64.new(epoch_s_uint_324 * 1000000000 + nanosecond)

  return index, transact_time_msg_time_x
end

-- Dissect: Transact Time Msg Time X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msg_time_x.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- An absolute time item carries its value from the moment it is created,
    -- so the parts are read here rather than taken from the fields below it
    local epoch_s_uint_324 = buffer(offset, 4):uint()
    local nanosecond = buffer(offset + 4, 4):uint()
    local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msg_time_x.size
    -- A field's absolute time base is fixed when it is declared, so the
    -- protocol declares one per base and the preference picks between them
    local field = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.transact_time_msg_time_x
    if taifex_taifexderivatives_clearingmember_tmp_v2_18_7.absolute_time_base == 1 then field = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.transact_time_msg_time_x_utc end
    parent = parent:add(field, buffer(offset, length), NSTime.new(epoch_s_uint_324, nanosecond))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msg_time_x.fields(buffer, offset, packet, parent)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msg_time_x.fields(buffer, offset, packet, parent)
  end
end

-- Org Trans Time Msg Time X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.org_trans_time_msg_time_x = {}

-- Size: Org Trans Time Msg Time X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.org_trans_time_msg_time_x.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epoch_s_uint_324.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.nanosecond.size

-- Display: Org Trans Time Msg Time X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.org_trans_time_msg_time_x.display = function(packet, parent, value)
  -- Check null value
  if value == nil then
    return "No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect Fields: Org Trans Time Msg Time X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.org_trans_time_msg_time_x.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Epoch S Uint 324: uint32
  index, epoch_s_uint_324 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epoch_s_uint_324.dissect(buffer, index, packet, parent)

  -- Nanosecond: uint32
  index, nanosecond = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.nanosecond.dissect(buffer, index, packet, parent)

  -- Composite value
  local org_trans_time_msg_time_x = UInt64.new(epoch_s_uint_324 * 1000000000 + nanosecond)

  return index, org_trans_time_msg_time_x
end

-- Dissect: Org Trans Time Msg Time X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.org_trans_time_msg_time_x.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- An absolute time item carries its value from the moment it is created,
    -- so the parts are read here rather than taken from the fields below it
    local epoch_s_uint_324 = buffer(offset, 4):uint()
    local nanosecond = buffer(offset + 4, 4):uint()
    local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.org_trans_time_msg_time_x.size
    -- A field's absolute time base is fixed when it is declared, so the
    -- protocol declares one per base and the preference picks between them
    local field = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.org_trans_time_msg_time_x
    if taifex_taifexderivatives_clearingmember_tmp_v2_18_7.absolute_time_base == 1 then field = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.org_trans_time_msg_time_x_utc end
    parent = parent:add(field, buffer(offset, length), NSTime.new(epoch_s_uint_324, nanosecond))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.org_trans_time_msg_time_x.fields(buffer, offset, packet, parent)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.org_trans_time_msg_time_x.fields(buffer, offset, packet, parent)
  end
end

-- Leg Sym Symbol Txt X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_sym_symbol_txt_x = {}

-- Size: Leg Sym Symbol Txt X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_sym_symbol_txt_x.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prod_id.size

-- Display: Leg Sym Symbol Txt X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_sym_symbol_txt_x.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg Sym Symbol Txt X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_sym_symbol_txt_x.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Prod Id: char[20]
  index, prod_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prod_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Sym Symbol Txt X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_sym_symbol_txt_x.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.leg_sym_symbol_txt_x, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_sym_symbol_txt_x.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_sym_symbol_txt_x.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_sym_symbol_txt_x.fields(buffer, offset, packet, parent)
  end
end

-- Leg Entry Txt
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_entry_txt = {}

-- Size: Leg Entry Txt
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_entry_txt.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_sym_symbol_txt_x.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_side_uint_81.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_qty_uint_162.size

-- Display: Leg Entry Txt
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_entry_txt.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg Entry Txt
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_entry_txt.fields = function(buffer, offset, packet, parent, leg_entry_txt_index)
  local index = offset

  -- Implicit Leg Entry Txt Index
  if leg_entry_txt_index ~= nil and show.indexes then
    local iteration = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.leg_entry_txt_index, leg_entry_txt_index)
    iteration:set_generated()
  end

  -- Leg Sym Symbol Txt X: Struct of 1 fields
  index, leg_sym_symbol_txt_x = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_sym_symbol_txt_x.dissect(buffer, index, packet, parent)

  -- Leg Side Uint 81: uint8
  index, leg_side_uint_81 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_side_uint_81.dissect(buffer, index, packet, parent)

  -- Leg Qty Uint 162: uint16
  index, leg_qty_uint_162 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_qty_uint_162.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Entry Txt
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_entry_txt.dissect = function(buffer, offset, packet, parent, leg_entry_txt_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.leg_entry_txt, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_entry_txt.fields(buffer, offset, packet, parent, leg_entry_txt_index)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_entry_txt.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_entry_txt.fields(buffer, offset, packet, parent, leg_entry_txt_index)
  end
end

-- Multi Leg Txt
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multi_leg_txt = {}

-- Calculate size of: Multi Leg Txt
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multi_leg_txt.size = function(buffer, offset)
  local index = 0

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.no_leg.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.comb_op.size

  -- Calculate field size from count
  local leg_entry_txt_count = buffer(offset + index - 2, 1):uint()
  index = index + leg_entry_txt_count * 23

  return index
end

-- Display: Multi Leg Txt
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multi_leg_txt.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Multi Leg Txt
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multi_leg_txt.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- No Leg: uint8
  index, no_leg = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.no_leg.dissect(buffer, index, packet, parent)

  -- Comb Op: uint8
  index, comb_op = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.comb_op.dissect(buffer, index, packet, parent)

  -- Repeating: Leg Entry Txt
  for leg_entry_txt_index = 1, no_leg do
    index, leg_entry_txt = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_entry_txt.dissect(buffer, index, packet, parent, leg_entry_txt_index)
  end

  return index
end

-- Dissect: Multi Leg Txt
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multi_leg_txt.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.multi_leg_txt, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multi_leg_txt.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multi_leg_txt.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multi_leg_txt.fields(buffer, offset, packet, parent)
  end
end

-- Leg Sym Symbol Num X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_sym_symbol_num_x = {}

-- Size: Leg Sym Symbol Num X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_sym_symbol_num_x.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq.size

-- Display: Leg Sym Symbol Num X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_sym_symbol_num_x.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg Sym Symbol Num X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_sym_symbol_num_x.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pseq: uint32
  index, pseq = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Sym Symbol Num X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_sym_symbol_num_x.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.leg_sym_symbol_num_x, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_sym_symbol_num_x.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_sym_symbol_num_x.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_sym_symbol_num_x.fields(buffer, offset, packet, parent)
  end
end

-- Leg Entry Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_entry_num = {}

-- Size: Leg Entry Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_entry_num.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_sym_symbol_num_x.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_side_uint_81.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_qty_uint_162.size

-- Display: Leg Entry Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_entry_num.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg Entry Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_entry_num.fields = function(buffer, offset, packet, parent, leg_entry_num_index)
  local index = offset

  -- Implicit Leg Entry Num Index
  if leg_entry_num_index ~= nil and show.indexes then
    local iteration = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.leg_entry_num_index, leg_entry_num_index)
    iteration:set_generated()
  end

  -- Leg Sym Symbol Num X: Struct of 1 fields
  index, leg_sym_symbol_num_x = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_sym_symbol_num_x.dissect(buffer, index, packet, parent)

  -- Leg Side Uint 81: uint8
  index, leg_side_uint_81 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_side_uint_81.dissect(buffer, index, packet, parent)

  -- Leg Qty Uint 162: uint16
  index, leg_qty_uint_162 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_qty_uint_162.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Entry Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_entry_num.dissect = function(buffer, offset, packet, parent, leg_entry_num_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.leg_entry_num, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_entry_num.fields(buffer, offset, packet, parent, leg_entry_num_index)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_entry_num.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_entry_num.fields(buffer, offset, packet, parent, leg_entry_num_index)
  end
end

-- Multi Leg Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multi_leg_num = {}

-- Calculate size of: Multi Leg Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multi_leg_num.size = function(buffer, offset)
  local index = 0

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.no_leg.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.comb_op.size

  -- Calculate field size from count
  local leg_entry_num_count = buffer(offset + index - 2, 1):uint()
  index = index + leg_entry_num_count * 7

  return index
end

-- Display: Multi Leg Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multi_leg_num.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Multi Leg Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multi_leg_num.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- No Leg: uint8
  index, no_leg = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.no_leg.dissect(buffer, index, packet, parent)

  -- Comb Op: uint8
  index, comb_op = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.comb_op.dissect(buffer, index, packet, parent)

  -- Repeating: Leg Entry Num
  for leg_entry_num_index = 1, no_leg do
    index, leg_entry_num = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_entry_num.dissect(buffer, index, packet, parent, leg_entry_num_index)
  end

  return index
end

-- Dissect: Multi Leg Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multi_leg_num.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.multi_leg_num, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multi_leg_num.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multi_leg_num.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multi_leg_num.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Txt X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_txt_x = {}

-- Size: Symbol Txt X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_txt_x.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prod_id.size

-- Display: Symbol Txt X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_txt_x.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Txt X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_txt_x.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Prod Id: char[20]
  index, prod_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prod_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Txt X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_txt_x.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.symbol_txt_x, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_txt_x.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_txt_x.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_txt_x.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Num X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_num_x = {}

-- Size: Symbol Num X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_num_x.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq.size

-- Display: Symbol Num X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_num_x.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Num X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_num_x.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pseq: uint32
  index, pseq = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Num X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_num_x.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.symbol_num_x, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_num_x.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_num_x.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_num_x.fields(buffer, offset, packet, parent)
  end
end

-- Sym Flex Product X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_flex_product_x = {}

-- Dispatch: Sym Flex Product X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_flex_product_x.dispatch = {
  [1] = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_num_x.dissect,
  [2] = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_txt_x.dissect,
  [3] = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multi_leg_num.dissect,
  [4] = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multi_leg_txt.dissect,
}

-- Dissect: Sym Flex Product X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_flex_product_x.dissect = function(buffer, offset, packet, parent, msg_type_ext)
  local dissect = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_flex_product_x.dispatch[msg_type_ext]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Flex Order Status Report Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_order_status_report_message = {}

-- Calculate size of: Flex Order Status Report Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_order_status_report_message.size = function(buffer, offset)
  local index = 0

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sub_hdr.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.part_id.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.no_leg.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_162.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.exec_type.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cm_id.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcm_id.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_no.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_id.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.user_define.size

  -- Calculate runtime size of Sym Flex Product X field
  local sym_flex_product_x_offset = offset + index
  local sym_flex_product_x_type = buffer(sym_flex_product_x_offset - 32, 1):uint()
  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_flex_product_x.size(buffer, sym_flex_product_x_offset, sym_flex_product_x_type)

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.price.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investor_acno.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investor_flag.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.side.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_type.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.time_in_force.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.position_effect.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_px.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.px_subtotal.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cum_qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leaves_qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.before_qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.org_trans_time_msg_time_x.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msg_time_x.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.target_id.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.uniq_id.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_seq.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_session_id.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_session_seq.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_12.size

  return index
end

-- Display: Flex Order Status Report Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_order_status_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Flex Order Status Report Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_order_status_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sub Hdr: Struct of 3 fields
  index, sub_hdr = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sub_hdr.dissect(buffer, index, packet, parent)

  -- Part Id: uint8
  index, part_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.part_id.dissect(buffer, index, packet, parent)

  -- No Leg: uint8
  index, no_leg = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.no_leg.dissect(buffer, index, packet, parent)

  -- Status Code Uint 162: uint16
  index, status_code_uint_162 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_162.dissect(buffer, index, packet, parent)

  -- Exec Type: char
  index, exec_type = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.exec_type.dissect(buffer, index, packet, parent)

  -- Cm Id: uint16
  index, cm_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cm_id.dissect(buffer, index, packet, parent)

  -- Fcm Id: uint16
  index, fcm_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcm_id.dissect(buffer, index, packet, parent)

  -- Order No: char [5]
  index, order_no = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_no.dissect(buffer, index, packet, parent)

  -- Ord Id: uint32
  index, ord_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_id.dissect(buffer, index, packet, parent)

  -- User Define: char [8]
  index, user_define = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.user_define.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type Ext
  local msg_type_ext = buffer(index - 32, 1):uint()

  -- Sym Flex Product X: Runtime Type with 4 branches
  index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_flex_product_x.dissect(buffer, index, packet, parent, msg_type_ext)

  -- Price: int32
  index, price = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.price.dissect(buffer, index, packet, parent)

  -- Qty: uint16
  index, qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.qty.dissect(buffer, index, packet, parent)

  -- Investor Acno: uint32
  index, investor_acno = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investor_acno.dissect(buffer, index, packet, parent)

  -- Investor Flag: char
  index, investor_flag = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investor_flag.dissect(buffer, index, packet, parent)

  -- Side: uint8
  index, side = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.side.dissect(buffer, index, packet, parent)

  -- Ord Type: uint8
  index, ord_type = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_type.dissect(buffer, index, packet, parent)

  -- Time In Force: uint8
  index, time_in_force = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.time_in_force.dissect(buffer, index, packet, parent)

  -- Position Effect: char
  index, position_effect = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.position_effect.dissect(buffer, index, packet, parent)

  -- Last Px: int32
  index, last_px = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: uint16
  index, last_qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_qty.dissect(buffer, index, packet, parent)

  -- Px Subtotal: int64
  index, px_subtotal = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.px_subtotal.dissect(buffer, index, packet, parent)

  -- Cum Qty: uint16
  index, cum_qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cum_qty.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint16
  index, leaves_qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leaves_qty.dissect(buffer, index, packet, parent)

  -- Before Qty: uint16
  index, before_qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.before_qty.dissect(buffer, index, packet, parent)

  -- Org Trans Time Msg Time X: Struct of 2 fields
  index, org_trans_time_msg_time_x = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.org_trans_time_msg_time_x.dissect(buffer, index, packet, parent)

  -- Transact Time Msg Time X: Struct of 2 fields
  index, transact_time_msg_time_x = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msg_time_x.dissect(buffer, index, packet, parent)

  -- Target Id: uint8
  index, target_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.target_id.dissect(buffer, index, packet, parent)

  -- Uniq Id: uint32
  index, uniq_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.uniq_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: uint32
  index, rpt_seq = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_seq.dissect(buffer, index, packet, parent)

  -- Rpt Session Id: uint16
  index, rpt_session_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_session_id.dissect(buffer, index, packet, parent)

  -- Rpt Session Seq: uint32
  index, rpt_session_seq = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_session_seq.dissect(buffer, index, packet, parent)

  -- Reserved 12: uint8[12]
  index, reserved_12 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_12.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Flex Order Status Report Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_order_status_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.flex_order_status_report_message, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_order_status_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_order_status_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_order_status_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Transact Time Msg Time
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msg_time = {}

-- Size: Transact Time Msg Time
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msg_time.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epoch_s_int_324.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ms.size

-- Display: Transact Time Msg Time
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msg_time.display = function(packet, parent, value)
  -- Check null value
  if value == nil then
    return "No Value"

  end

  -- Parse unix millisecond timestamp
  local seconds = (value / UInt64(1000)):tonumber()
  local milliseconds = (value % UInt64(1000)):tonumber()

  return os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect Fields: Transact Time Msg Time
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msg_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Epoch S Int 324: int32
  index, epoch_s_int_324 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epoch_s_int_324.dissect(buffer, index, packet, parent)

  -- Ms: uint16
  index, ms = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ms.dissect(buffer, index, packet, parent)

  -- Composite value
  local transact_time_msg_time = epoch_s_int_324 * 1000 + ms

  return index, transact_time_msg_time
end

-- Dissect: Transact Time Msg Time
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msg_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- An absolute time item carries its value from the moment it is created,
    -- so the parts are read here rather than taken from the fields below it
    local epoch_s_int_324 = buffer(offset, 4):int()
    local ms = buffer(offset + 4, 2):uint()
    local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msg_time.size
    -- A field's absolute time base is fixed when it is declared, so the
    -- protocol declares one per base and the preference picks between them
    local field = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.transact_time_msg_time
    if taifex_taifexderivatives_clearingmember_tmp_v2_18_7.absolute_time_base == 1 then field = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.transact_time_msg_time_utc end
    parent = parent:add(field, buffer(offset, length), NSTime.new(epoch_s_int_324, ms * 1000000))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msg_time.fields(buffer, offset, packet, parent)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msg_time.fields(buffer, offset, packet, parent)
  end
end

-- Org Trans Time Msg Time
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.org_trans_time_msg_time = {}

-- Size: Org Trans Time Msg Time
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.org_trans_time_msg_time.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epoch_s_int_324.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ms.size

-- Display: Org Trans Time Msg Time
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.org_trans_time_msg_time.display = function(packet, parent, value)
  -- Check null value
  if value == nil then
    return "No Value"

  end

  -- Parse unix millisecond timestamp
  local seconds = (value / UInt64(1000)):tonumber()
  local milliseconds = (value % UInt64(1000)):tonumber()

  return os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect Fields: Org Trans Time Msg Time
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.org_trans_time_msg_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Epoch S Int 324: int32
  index, epoch_s_int_324 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epoch_s_int_324.dissect(buffer, index, packet, parent)

  -- Ms: uint16
  index, ms = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ms.dissect(buffer, index, packet, parent)

  -- Composite value
  local org_trans_time_msg_time = epoch_s_int_324 * 1000 + ms

  return index, org_trans_time_msg_time
end

-- Dissect: Org Trans Time Msg Time
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.org_trans_time_msg_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- An absolute time item carries its value from the moment it is created,
    -- so the parts are read here rather than taken from the fields below it
    local epoch_s_int_324 = buffer(offset, 4):int()
    local ms = buffer(offset + 4, 2):uint()
    local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.org_trans_time_msg_time.size
    -- A field's absolute time base is fixed when it is declared, so the
    -- protocol declares one per base and the preference picks between them
    local field = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.org_trans_time_msg_time
    if taifex_taifexderivatives_clearingmember_tmp_v2_18_7.absolute_time_base == 1 then field = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.org_trans_time_msg_time_utc end
    parent = parent:add(field, buffer(offset, length), NSTime.new(epoch_s_int_324, ms * 1000000))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.org_trans_time_msg_time.fields(buffer, offset, packet, parent)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.org_trans_time_msg_time.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Text
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_text = {}

-- Size: Symbol Text
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_text.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_char_2020.size

-- Display: Symbol Text
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_text.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Text
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_text.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Char 2020: char [20]
  index, symbol_char_2020 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_char_2020.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Text
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_text.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.symbol_text, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_text.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_text.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_text.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_num = {}

-- Size: Symbol Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_num.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq_1.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq_2.size + 
  2 * taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_side_uint_822.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.comb_op.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_13.size

-- Display: Symbol Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_num.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_num.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pseq 1: uint16
  index, pseq_1 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq_1.dissect(buffer, index, packet, parent)

  -- Pseq 2: uint16
  index, pseq_2 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq_2.dissect(buffer, index, packet, parent)

  -- Array Of: Leg Side Uint 822
  for leg_side_uint_822_index = 1, 2 do
    index, leg_side_uint_822 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_side_uint_822.dissect(buffer, index, packet, parent, leg_side_uint_822_index)
  end

  -- Comb Op: uint8
  index, comb_op = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.comb_op.dissect(buffer, index, packet, parent)

  -- Reserved 13: uint8 [13]
  index, reserved_13 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_13.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_num.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.symbol_num, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_num.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_num.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_num.fields(buffer, offset, packet, parent)
  end
end

-- Sym Symbol X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_symbol_x = {}

-- Dispatch: Sym Symbol X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_symbol_x.dispatch = {
  [1] = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_num.dissect,
  [2] = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_text.dissect,
}

-- Dissect: Sym Symbol X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_symbol_x.dissect = function(buffer, offset, packet, parent, symbol_type)
  local dissect = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_symbol_x.dispatch[symbol_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Execution Report Including Head Office And Branch Offices Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.execution_report_including_head_office_and_branch_offices_message = {}

-- Calculate size of: Execution Report Including Head Office And Branch Offices Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.execution_report_including_head_office_and_branch_offices_message.size = function(buffer, offset)
  local index = 0

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.exec_type.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cm_id.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcm_id.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_no.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_id.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.user_define.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_type.size

  -- Calculate runtime size of Sym Symbol X field
  local sym_symbol_x_offset = offset + index
  local sym_symbol_x_type = buffer(sym_symbol_x_offset - 1, 1):uint()
  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_symbol_x.size(buffer, sym_symbol_x_offset, sym_symbol_x_type)

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.price.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investor_acno.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investor_flag.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.side.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_type.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.time_in_force.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.position_effect.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_px.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.px_subtotal.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cum_qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leaves_qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.before_qty.size

  index = index + 2 * taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_side_uint_822.size

  index = index + 2 * taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_px.size

  index = index + 2 * taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_qty_uint_1624.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.org_trans_time_msg_time.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msg_time.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.target_id.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.uniq_id.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_seq.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.protocol_type.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_session_id.size

  return index
end

-- Display: Execution Report Including Head Office And Branch Offices Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.execution_report_including_head_office_and_branch_offices_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Including Head Office And Branch Offices Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.execution_report_including_head_office_and_branch_offices_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Status Code Uint 81: uint8
  index, status_code_uint_81 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.dissect(buffer, index, packet, parent)

  -- Exec Type: char
  index, exec_type = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.exec_type.dissect(buffer, index, packet, parent)

  -- Cm Id: uint16
  index, cm_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cm_id.dissect(buffer, index, packet, parent)

  -- Fcm Id: uint16
  index, fcm_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcm_id.dissect(buffer, index, packet, parent)

  -- Order No: char [5]
  index, order_no = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_no.dissect(buffer, index, packet, parent)

  -- Ord Id: uint32
  index, ord_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_id.dissect(buffer, index, packet, parent)

  -- User Define: char [8]
  index, user_define = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.user_define.dissect(buffer, index, packet, parent)

  -- Symbol Type: uint8
  index, symbol_type = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_type.dissect(buffer, index, packet, parent)

  -- Sym Symbol X: Runtime Type with 2 branches
  index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_symbol_x.dissect(buffer, index, packet, parent, symbol_type)

  -- Price: int32
  index, price = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.price.dissect(buffer, index, packet, parent)

  -- Qty: uint16
  index, qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.qty.dissect(buffer, index, packet, parent)

  -- Investor Acno: uint32
  index, investor_acno = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investor_acno.dissect(buffer, index, packet, parent)

  -- Investor Flag: char
  index, investor_flag = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investor_flag.dissect(buffer, index, packet, parent)

  -- Side: uint8
  index, side = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.side.dissect(buffer, index, packet, parent)

  -- Ord Type: uint8
  index, ord_type = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_type.dissect(buffer, index, packet, parent)

  -- Time In Force: uint8
  index, time_in_force = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.time_in_force.dissect(buffer, index, packet, parent)

  -- Position Effect: char
  index, position_effect = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.position_effect.dissect(buffer, index, packet, parent)

  -- Last Px: int32
  index, last_px = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: uint16
  index, last_qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_qty.dissect(buffer, index, packet, parent)

  -- Px Subtotal: int64
  index, px_subtotal = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.px_subtotal.dissect(buffer, index, packet, parent)

  -- Cum Qty: uint16
  index, cum_qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cum_qty.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint16
  index, leaves_qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leaves_qty.dissect(buffer, index, packet, parent)

  -- Before Qty: uint16
  index, before_qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.before_qty.dissect(buffer, index, packet, parent)

  -- Array Of: Leg Side Uint 822
  for leg_side_uint_822_index = 1, 2 do
    index, leg_side_uint_822 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_side_uint_822.dissect(buffer, index, packet, parent, leg_side_uint_822_index)
  end

  -- Array Of: Leg Px
  for leg_px_index = 1, 2 do
    index, leg_px = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_px.dissect(buffer, index, packet, parent, leg_px_index)
  end

  -- Array Of: Leg Qty Uint 1624
  for leg_qty_uint_1624_index = 1, 2 do
    index, leg_qty_uint_1624 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_qty_uint_1624.dissect(buffer, index, packet, parent, leg_qty_uint_1624_index)
  end

  -- Org Trans Time Msg Time: Struct of 2 fields
  index, org_trans_time_msg_time = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.org_trans_time_msg_time.dissect(buffer, index, packet, parent)

  -- Transact Time Msg Time: Struct of 2 fields
  index, transact_time_msg_time = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msg_time.dissect(buffer, index, packet, parent)

  -- Target Id: uint8
  index, target_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.target_id.dissect(buffer, index, packet, parent)

  -- Uniq Id: uint32
  index, uniq_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.uniq_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: uint32
  index, rpt_seq = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_seq.dissect(buffer, index, packet, parent)

  -- Protocol Type: uint8
  index, protocol_type = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.protocol_type.dissect(buffer, index, packet, parent)

  -- Rpt Session Id: uint16
  index, rpt_session_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Including Head Office And Branch Offices Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.execution_report_including_head_office_and_branch_offices_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.execution_report_including_head_office_and_branch_offices_message, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.execution_report_including_head_office_and_branch_offices_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.execution_report_including_head_office_and_branch_offices_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.execution_report_including_head_office_and_branch_offices_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Symbol Text
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.long_symbol_text = {}

-- Size: Long Symbol Text
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.long_symbol_text.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_char_4040.size

-- Display: Long Symbol Text
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.long_symbol_text.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Symbol Text
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.long_symbol_text.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Char 4040: char [40]
  index, symbol_char_4040 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_char_4040.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Symbol Text
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.long_symbol_text.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.long_symbol_text, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.long_symbol_text.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.long_symbol_text.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.long_symbol_text.fields(buffer, offset, packet, parent)
  end
end

-- Long Symbol Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.long_symbol_num = {}

-- Size: Long Symbol Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.long_symbol_num.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq_1.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq_2.size + 
  2 * taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_side_uint_822.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.comb_op.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_33.size

-- Display: Long Symbol Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.long_symbol_num.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Symbol Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.long_symbol_num.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pseq 1: uint16
  index, pseq_1 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq_1.dissect(buffer, index, packet, parent)

  -- Pseq 2: uint16
  index, pseq_2 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq_2.dissect(buffer, index, packet, parent)

  -- Array Of: Leg Side Uint 822
  for leg_side_uint_822_index = 1, 2 do
    index, leg_side_uint_822 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_side_uint_822.dissect(buffer, index, packet, parent, leg_side_uint_822_index)
  end

  -- Comb Op: uint8
  index, comb_op = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.comb_op.dissect(buffer, index, packet, parent)

  -- Reserved 33: uint8 [33]
  index, reserved_33 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_33.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Symbol Num
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.long_symbol_num.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.long_symbol_num, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.long_symbol_num.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.long_symbol_num.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.long_symbol_num.fields(buffer, offset, packet, parent)
  end
end

-- Sym Long Symbol X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_long_symbol_x = {}

-- Dispatch: Sym Long Symbol X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_long_symbol_x.dispatch = {
  [3] = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.long_symbol_num.dissect,
  [4] = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.long_symbol_text.dissect,
}

-- Dissect: Sym Long Symbol X
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_long_symbol_x.dissect = function(buffer, offset, packet, parent, symbol_type)
  local dissect = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_long_symbol_x.dispatch[symbol_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Order Status Report Long Format Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_status_report_long_format_message = {}

-- Calculate size of: Order Status Report Long Format Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_status_report_long_format_message.size = function(buffer, offset)
  local index = 0

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.exec_type.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cm_id.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcm_id.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_no.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_id.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.user_define.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_type.size

  -- Calculate runtime size of Sym Long Symbol X field
  local sym_long_symbol_x_offset = offset + index
  local sym_long_symbol_x_type = buffer(sym_long_symbol_x_offset - 1, 1):uint()
  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_long_symbol_x.size(buffer, sym_long_symbol_x_offset, sym_long_symbol_x_type)

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.price.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investor_acno.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investor_flag.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.side.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_type.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.time_in_force.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.position_effect.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_px.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.px_subtotal.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cum_qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leaves_qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.before_qty.size

  index = index + 2 * taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_side_uint_822.size

  index = index + 2 * taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_px.size

  index = index + 2 * taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_qty_uint_1624.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.org_trans_time_msg_time.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msg_time.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.target_id.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.uniq_id.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_seq.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.protocol_type.size

  return index
end

-- Display: Order Status Report Long Format Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_status_report_long_format_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Status Report Long Format Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_status_report_long_format_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Status Code Uint 81: uint8
  index, status_code_uint_81 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.dissect(buffer, index, packet, parent)

  -- Exec Type: char
  index, exec_type = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.exec_type.dissect(buffer, index, packet, parent)

  -- Cm Id: uint16
  index, cm_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cm_id.dissect(buffer, index, packet, parent)

  -- Fcm Id: uint16
  index, fcm_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcm_id.dissect(buffer, index, packet, parent)

  -- Order No: char [5]
  index, order_no = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_no.dissect(buffer, index, packet, parent)

  -- Ord Id: uint32
  index, ord_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_id.dissect(buffer, index, packet, parent)

  -- User Define: char [8]
  index, user_define = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.user_define.dissect(buffer, index, packet, parent)

  -- Symbol Type: uint8
  index, symbol_type = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_type.dissect(buffer, index, packet, parent)

  -- Sym Long Symbol X: Runtime Type with 2 branches
  index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_long_symbol_x.dissect(buffer, index, packet, parent, symbol_type)

  -- Price: int32
  index, price = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.price.dissect(buffer, index, packet, parent)

  -- Qty: uint16
  index, qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.qty.dissect(buffer, index, packet, parent)

  -- Investor Acno: uint32
  index, investor_acno = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investor_acno.dissect(buffer, index, packet, parent)

  -- Investor Flag: char
  index, investor_flag = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investor_flag.dissect(buffer, index, packet, parent)

  -- Side: uint8
  index, side = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.side.dissect(buffer, index, packet, parent)

  -- Ord Type: uint8
  index, ord_type = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_type.dissect(buffer, index, packet, parent)

  -- Time In Force: uint8
  index, time_in_force = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.time_in_force.dissect(buffer, index, packet, parent)

  -- Position Effect: char
  index, position_effect = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.position_effect.dissect(buffer, index, packet, parent)

  -- Last Px: int32
  index, last_px = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: uint16
  index, last_qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_qty.dissect(buffer, index, packet, parent)

  -- Px Subtotal: int64
  index, px_subtotal = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.px_subtotal.dissect(buffer, index, packet, parent)

  -- Cum Qty: uint16
  index, cum_qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cum_qty.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint16
  index, leaves_qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leaves_qty.dissect(buffer, index, packet, parent)

  -- Before Qty: uint16
  index, before_qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.before_qty.dissect(buffer, index, packet, parent)

  -- Array Of: Leg Side Uint 822
  for leg_side_uint_822_index = 1, 2 do
    index, leg_side_uint_822 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_side_uint_822.dissect(buffer, index, packet, parent, leg_side_uint_822_index)
  end

  -- Array Of: Leg Px
  for leg_px_index = 1, 2 do
    index, leg_px = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_px.dissect(buffer, index, packet, parent, leg_px_index)
  end

  -- Array Of: Leg Qty Uint 1624
  for leg_qty_uint_1624_index = 1, 2 do
    index, leg_qty_uint_1624 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_qty_uint_1624.dissect(buffer, index, packet, parent, leg_qty_uint_1624_index)
  end

  -- Org Trans Time Msg Time: Struct of 2 fields
  index, org_trans_time_msg_time = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.org_trans_time_msg_time.dissect(buffer, index, packet, parent)

  -- Transact Time Msg Time: Struct of 2 fields
  index, transact_time_msg_time = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msg_time.dissect(buffer, index, packet, parent)

  -- Target Id: uint8
  index, target_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.target_id.dissect(buffer, index, packet, parent)

  -- Uniq Id: uint32
  index, uniq_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.uniq_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: uint32
  index, rpt_seq = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_seq.dissect(buffer, index, packet, parent)

  -- Protocol Type: uint8
  index, protocol_type = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.protocol_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Status Report Long Format Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_status_report_long_format_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.order_status_report_long_format_message, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_status_report_long_format_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_status_report_long_format_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_status_report_long_format_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Status Report Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_status_report_message = {}

-- Calculate size of: Order Status Report Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_status_report_message.size = function(buffer, offset)
  local index = 0

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.exec_type.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cm_id.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcm_id.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_no.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_id.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.user_define.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_type.size

  -- Calculate runtime size of Sym Symbol X field
  local sym_symbol_x_offset = offset + index
  local sym_symbol_x_type = buffer(sym_symbol_x_offset - 1, 1):uint()
  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_symbol_x.size(buffer, sym_symbol_x_offset, sym_symbol_x_type)

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.price.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investor_acno.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investor_flag.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.side.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_type.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.time_in_force.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.position_effect.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_px.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.px_subtotal.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cum_qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leaves_qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.before_qty.size

  index = index + 2 * taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_side_uint_822.size

  index = index + 2 * taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_px.size

  index = index + 2 * taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_qty_uint_1624.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.org_trans_time_msg_time.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msg_time.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.target_id.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.uniq_id.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_seq.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.protocol_type.size

  return index
end

-- Display: Order Status Report Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_status_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Status Report Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_status_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Status Code Uint 81: uint8
  index, status_code_uint_81 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.dissect(buffer, index, packet, parent)

  -- Exec Type: char
  index, exec_type = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.exec_type.dissect(buffer, index, packet, parent)

  -- Cm Id: uint16
  index, cm_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cm_id.dissect(buffer, index, packet, parent)

  -- Fcm Id: uint16
  index, fcm_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcm_id.dissect(buffer, index, packet, parent)

  -- Order No: char [5]
  index, order_no = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_no.dissect(buffer, index, packet, parent)

  -- Ord Id: uint32
  index, ord_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_id.dissect(buffer, index, packet, parent)

  -- User Define: char [8]
  index, user_define = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.user_define.dissect(buffer, index, packet, parent)

  -- Symbol Type: uint8
  index, symbol_type = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_type.dissect(buffer, index, packet, parent)

  -- Sym Symbol X: Runtime Type with 2 branches
  index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_symbol_x.dissect(buffer, index, packet, parent, symbol_type)

  -- Price: int32
  index, price = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.price.dissect(buffer, index, packet, parent)

  -- Qty: uint16
  index, qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.qty.dissect(buffer, index, packet, parent)

  -- Investor Acno: uint32
  index, investor_acno = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investor_acno.dissect(buffer, index, packet, parent)

  -- Investor Flag: char
  index, investor_flag = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investor_flag.dissect(buffer, index, packet, parent)

  -- Side: uint8
  index, side = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.side.dissect(buffer, index, packet, parent)

  -- Ord Type: uint8
  index, ord_type = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_type.dissect(buffer, index, packet, parent)

  -- Time In Force: uint8
  index, time_in_force = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.time_in_force.dissect(buffer, index, packet, parent)

  -- Position Effect: char
  index, position_effect = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.position_effect.dissect(buffer, index, packet, parent)

  -- Last Px: int32
  index, last_px = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: uint16
  index, last_qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_qty.dissect(buffer, index, packet, parent)

  -- Px Subtotal: int64
  index, px_subtotal = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.px_subtotal.dissect(buffer, index, packet, parent)

  -- Cum Qty: uint16
  index, cum_qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cum_qty.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint16
  index, leaves_qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leaves_qty.dissect(buffer, index, packet, parent)

  -- Before Qty: uint16
  index, before_qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.before_qty.dissect(buffer, index, packet, parent)

  -- Array Of: Leg Side Uint 822
  for leg_side_uint_822_index = 1, 2 do
    index, leg_side_uint_822 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_side_uint_822.dissect(buffer, index, packet, parent, leg_side_uint_822_index)
  end

  -- Array Of: Leg Px
  for leg_px_index = 1, 2 do
    index, leg_px = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_px.dissect(buffer, index, packet, parent, leg_px_index)
  end

  -- Array Of: Leg Qty Uint 1624
  for leg_qty_uint_1624_index = 1, 2 do
    index, leg_qty_uint_1624 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leg_qty_uint_1624.dissect(buffer, index, packet, parent, leg_qty_uint_1624_index)
  end

  -- Org Trans Time Msg Time: Struct of 2 fields
  index, org_trans_time_msg_time = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.org_trans_time_msg_time.dissect(buffer, index, packet, parent)

  -- Transact Time Msg Time: Struct of 2 fields
  index, transact_time_msg_time = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msg_time.dissect(buffer, index, packet, parent)

  -- Target Id: uint8
  index, target_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.target_id.dissect(buffer, index, packet, parent)

  -- Uniq Id: uint32
  index, uniq_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.uniq_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: uint32
  index, rpt_seq = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rpt_seq.dissect(buffer, index, packet, parent)

  -- Protocol Type: uint8
  index, protocol_type = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.protocol_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Status Report Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_status_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.order_status_report_message, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_status_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_status_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_status_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Connection Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.connection_confirmed_message = {}

-- Size: Connection Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.connection_confirmed_message.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.size

-- Display: Connection Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.connection_confirmed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Connection Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.connection_confirmed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Status Code Uint 81: uint8
  index, status_code_uint_81 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Connection Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.connection_confirmed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.connection_confirmed_message, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.connection_confirmed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.connection_confirmed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.connection_confirmed_message.fields(buffer, offset, packet, parent)
  end
end

-- Confirm Connection Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.confirm_connection_message = {}

-- Size: Confirm Connection Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.confirm_connection_message.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.size

-- Display: Confirm Connection Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.confirm_connection_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Confirm Connection Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.confirm_connection_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Status Code Uint 81: uint8
  index, status_code_uint_81 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Confirm Connection Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.confirm_connection_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.confirm_connection_message, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.confirm_connection_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.confirm_connection_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.confirm_connection_message.fields(buffer, offset, packet, parent)
  end
end

-- Logout Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.logout_confirmed_message = {}

-- Size: Logout Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.logout_confirmed_message.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.size

-- Display: Logout Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.logout_confirmed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.logout_confirmed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Status Code Uint 81: uint8
  index, status_code_uint_81 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.logout_confirmed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.logout_confirmed_message, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.logout_confirmed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.logout_confirmed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.logout_confirmed_message.fields(buffer, offset, packet, parent)
  end
end

-- Logout Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.logout_message = {}

-- Display: Logout Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.logout_message.display = function(packet, parent, length)
  return "Logout Message"
end


-- Dissect: Logout Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.logout_message.dissect = function(buffer, offset, packet, parent)
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.logout_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Activate Application System Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.activate_application_system_confirmed_message = {}

-- Size: Activate Application System Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.activate_application_system_confirmed_message.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.size

-- Display: Activate Application System Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.activate_application_system_confirmed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Activate Application System Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.activate_application_system_confirmed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Status Code Uint 81: uint8
  index, status_code_uint_81 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Activate Application System Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.activate_application_system_confirmed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.activate_application_system_confirmed_message, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.activate_application_system_confirmed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.activate_application_system_confirmed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.activate_application_system_confirmed_message.fields(buffer, offset, packet, parent)
  end
end

-- Activate Application System Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.activate_application_system_message = {}

-- Size: Activate Application System Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.activate_application_system_message.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.heart_bt_int.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.max_flow_ctrl_cnt.size

-- Display: Activate Application System Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.activate_application_system_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Activate Application System Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.activate_application_system_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Status Code Uint 81: uint8
  index, status_code_uint_81 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.dissect(buffer, index, packet, parent)

  -- Heart Bt Int: uint8
  index, heart_bt_int = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.heart_bt_int.dissect(buffer, index, packet, parent)

  -- Max Flow Ctrl Cnt: uint16
  index, max_flow_ctrl_cnt = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.max_flow_ctrl_cnt.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Activate Application System Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.activate_application_system_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.activate_application_system_message, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.activate_application_system_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.activate_application_system_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.activate_application_system_message.fields(buffer, offset, packet, parent)
  end
end

-- Request Logon Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.request_logon_message = {}

-- Size: Request Logon Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.request_logon_message.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.append_no.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcm_id.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.session_id.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.system_type.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ap_code.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.key_value.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.request_start_seq.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cancel_order_sec.size

-- Display: Request Logon Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.request_logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Logon Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.request_logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Status Code Uint 81: uint8
  index, status_code_uint_81 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.dissect(buffer, index, packet, parent)

  -- Append No: uint16
  index, append_no = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.append_no.dissect(buffer, index, packet, parent)

  -- Fcm Id: uint16
  index, fcm_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcm_id.dissect(buffer, index, packet, parent)

  -- Session Id: uint16
  index, session_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.session_id.dissect(buffer, index, packet, parent)

  -- System Type: uint8
  index, system_type = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.system_type.dissect(buffer, index, packet, parent)

  -- Ap Code: uint8
  index, ap_code = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ap_code.dissect(buffer, index, packet, parent)

  -- Key Value: uint8
  index, key_value = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.key_value.dissect(buffer, index, packet, parent)

  -- Request Start Seq: uint32
  index, request_start_seq = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.request_start_seq.dissect(buffer, index, packet, parent)

  -- Cancel Order Sec: uint8
  index, cancel_order_sec = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cancel_order_sec.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Logon Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.request_logon_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.request_logon_message, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.request_logon_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.request_logon_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.request_logon_message.fields(buffer, offset, packet, parent)
  end
end

-- Final Sequential Number Notification For Group Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.final_sequential_number_notification_for_group_message = {}

-- Size: Final Sequential Number Notification For Group Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.final_sequential_number_notification_for_group_message.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sub_hdr.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_162.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.part_id.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.end_out_bound_num.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_8.size

-- Display: Final Sequential Number Notification For Group Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.final_sequential_number_notification_for_group_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Final Sequential Number Notification For Group Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.final_sequential_number_notification_for_group_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sub Hdr: Struct of 3 fields
  index, sub_hdr = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sub_hdr.dissect(buffer, index, packet, parent)

  -- Status Code Uint 162: uint16
  index, status_code_uint_162 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_162.dissect(buffer, index, packet, parent)

  -- Part Id: uint8
  index, part_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.part_id.dissect(buffer, index, packet, parent)

  -- End Out Bound Num: uint32
  index, end_out_bound_num = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.end_out_bound_num.dissect(buffer, index, packet, parent)

  -- Reserved 8: uint8[8]
  index, reserved_8 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Final Sequential Number Notification For Group Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.final_sequential_number_notification_for_group_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.final_sequential_number_notification_for_group_message, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.final_sequential_number_notification_for_group_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.final_sequential_number_notification_for_group_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.final_sequential_number_notification_for_group_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Notice Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.logon_notice_message = {}

-- Size: Logon Notice Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.logon_notice_message.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.append_no.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.end_out_bound_num.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.system_type.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.encrypt_method.size

-- Display: Logon Notice Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.logon_notice_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Notice Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.logon_notice_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Status Code Uint 81: uint8
  index, status_code_uint_81 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.dissect(buffer, index, packet, parent)

  -- Append No: uint16
  index, append_no = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.append_no.dissect(buffer, index, packet, parent)

  -- End Out Bound Num: uint32
  index, end_out_bound_num = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.end_out_bound_num.dissect(buffer, index, packet, parent)

  -- System Type: uint8
  index, system_type = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.system_type.dissect(buffer, index, packet, parent)

  -- Encrypt Method: uint8
  index, encrypt_method = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.encrypt_method.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Notice Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.logon_notice_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.logon_notice_message, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.logon_notice_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.logon_notice_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.logon_notice_message.fields(buffer, offset, packet, parent)
  end
end

-- Wake Up Call Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.wake_up_call_confirmed_message = {}

-- Size: Wake Up Call Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.wake_up_call_confirmed_message.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.version.size

-- Display: Wake Up Call Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.wake_up_call_confirmed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Wake Up Call Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.wake_up_call_confirmed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: uint8
  index, version = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Wake Up Call Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.wake_up_call_confirmed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.wake_up_call_confirmed_message, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.wake_up_call_confirmed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.wake_up_call_confirmed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.wake_up_call_confirmed_message.fields(buffer, offset, packet, parent)
  end
end

-- Wake Up Call Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.wake_up_call_message = {}

-- Size: Wake Up Call Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.wake_up_call_message.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.start_in_bound_num.size

-- Display: Wake Up Call Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.wake_up_call_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Wake Up Call Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.wake_up_call_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Status Code Uint 81: uint8
  index, status_code_uint_81 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.status_code_uint_81.dissect(buffer, index, packet, parent)

  -- Start In Bound Num: uint32
  index, start_in_bound_num = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.start_in_bound_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Wake Up Call Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.wake_up_call_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.wake_up_call_message, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.wake_up_call_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.wake_up_call_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.wake_up_call_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.payload = {}

-- Dispatch: Payload
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.payload.dispatch = {
  [10] = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.wake_up_call_message.dissect,
  [20] = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.wake_up_call_confirmed_message.dissect,
  [30] = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.logon_notice_message.dissect,
  [230] = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.final_sequential_number_notification_for_group_message.dissect,
  [40] = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.request_logon_message.dissect,
  [50] = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.activate_application_system_message.dissect,
  [60] = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.activate_application_system_confirmed_message.dissect,
  [70] = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.logout_message.dissect,
  [80] = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.logout_confirmed_message.dissect,
  [104] = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.confirm_connection_message.dissect,
  [105] = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.connection_confirmed_message.dissect,
  [102] = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_status_report_message.dissect,
  [132] = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_status_report_long_format_message.dissect,
  [106] = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.execution_report_including_head_office_and_branch_offices_message.dissect,
  [202] = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_order_status_report_message.dissect,
  [115] = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.clearing_member_initiate_operation_message.dissect,
  [116] = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.clearing_member_initiate_operation_confirmed_message.dissect,
  [215] = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_clearing_member_initiate_operation_message.dissect,
  [216] = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_clearing_member_initiate_operation_confirmed_message.dissect,
}

-- Dissect: Payload
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Header Time
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.header_time = {}

-- Size: Header Time
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.header_time.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.header_epoch_s.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.header_ms.size

-- Display: Header Time
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.header_time.display = function(packet, parent, value)
  -- Check null value
  if value == nil then
    return "No Value"

  end

  -- Parse unix millisecond timestamp
  local seconds = (value / UInt64(1000)):tonumber()
  local milliseconds = (value % UInt64(1000)):tonumber()

  return os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect Fields: Header Time
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.header_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Header Epoch S: int32
  index, header_epoch_s = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.header_epoch_s.dissect(buffer, index, packet, parent)

  -- Header Ms: uint16
  index, header_ms = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.header_ms.dissect(buffer, index, packet, parent)

  -- Composite value
  local header_time = header_epoch_s * 1000 + header_ms

  return index, header_time
end

-- Dissect: Header Time
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.header_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- An absolute time item carries its value from the moment it is created,
    -- so the parts are read here rather than taken from the fields below it
    local header_epoch_s = buffer(offset, 4):int()
    local header_ms = buffer(offset + 4, 2):uint()
    local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.header_time.size
    -- A field's absolute time base is fixed when it is declared, so the
    -- protocol declares one per base and the preference picks between them
    local field = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.header_time
    if taifex_taifexderivatives_clearingmember_tmp_v2_18_7.absolute_time_base == 1 then field = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.header_time_utc end
    parent = parent:add(field, buffer(offset, length), NSTime.new(header_epoch_s, header_ms * 1000000))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.header_time.fields(buffer, offset, packet, parent)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.header_time.fields(buffer, offset, packet, parent)
  end
end

-- Hdr
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.hdr = {}

-- Size: Hdr
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.hdr.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_length.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_seq_num.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.header_time.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.message_type.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcm_id.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.session_id.size

-- Display: Hdr
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.hdr.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Hdr
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.hdr.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Length: uint16
  index, msg_length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_length.dissect(buffer, index, packet, parent)

  -- Msg Seq Num: uint32
  index, msg_seq_num = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Header Time: Struct of 2 fields
  index, header_time = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.header_time.dissect(buffer, index, packet, parent)

  -- Message Type: uint8
  index, message_type = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.message_type.dissect(buffer, index, packet, parent)

  -- Fcm Id: uint16
  index, fcm_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcm_id.dissect(buffer, index, packet, parent)

  -- Session Id: uint16
  index, session_id = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Hdr
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.hdr.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.hdr, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.hdr.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.hdr.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.hdr.fields(buffer, offset, packet, parent)
  end
end

-- Tmp Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.tmp_message = {}

-- Verify required size of Tcp packet
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.tmp_message.requiredsize = function(buffer)
  return buffer:len() >= taifex_taifexderivatives_clearingmember_tmp_v2_18_7.hdr.size
end

-- Dissect Tmp Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.tmp_message.dissect = function(buffer, packet, parent)
  local index = 0

  -- Hdr: Struct of 6 fields
  index, hdr = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.hdr.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 5, 1):uint()

  -- Payload: Runtime Type with 19 branches
  index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.payload.dissect(buffer, index, packet, parent, message_type)

  -- Message Tail: Struct of 1 fields
  index, message_tail = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.message_tail.dissect(buffer, index, packet, parent)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.init()
end

-- Dissector for Taifex TaifexDerivatives ClearingMember Tmp 2.18.7
function omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.name

  local length = buffer:len()
  local index = 0

  -- Dissect each message the segment carries
  while index < length do
    local remaining = length - index

    -- The message length lives in the header: wait for the header before reading it
    if remaining < taifex_taifexderivatives_clearingmember_tmp_v2_18_7.hdr.size then
      packet.desegment_offset = index
      packet.desegment_len = DESEGMENT_ONE_MORE_SEGMENT
      return length
    end

    local size = buffer(index, 2):uint() + 3
    -- A message split across segments: ask TCP for exactly the bytes still missing
    if remaining < size then
      packet.desegment_offset = index
      packet.desegment_len = size - remaining
      return length
    end

    local protocol = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7, buffer(index, size), omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.description, "("..size.." Bytes)")
    taifex_taifexderivatives_clearingmember_tmp_v2_18_7.tmp_message.dissect(buffer(index, size):tvb(), packet, protocol)
    protocol:set_len(size)
    index = index + size
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Tmp Message: would its message dispatch accept this frame?
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.tmp_message.fingerprint = function(buffer)
  if buffer:len() < 13 then
    return false
  end

  local message_type = buffer(12, 1):uint()

  -- Wake Up Call Message
  if message_type == 10 then
    return true
  end

  -- Wake Up Call Confirmed Message
  if message_type == 20 then
    return true
  end

  -- Logon Notice Message
  if message_type == 30 then
    return true
  end

  -- Final Sequential Number Notification For Group Message
  if message_type == 230 then
    return true
  end

  -- Request Logon Message
  if message_type == 40 then
    return true
  end

  -- Activate Application System Message
  if message_type == 50 then
    return true
  end

  -- Activate Application System Confirmed Message
  if message_type == 60 then
    return true
  end

  -- Logout Message
  if message_type == 70 then
    return true
  end

  -- Logout Confirmed Message
  if message_type == 80 then
    return true
  end

  -- Confirm Connection Message
  if message_type == 104 then
    return true
  end

  -- Connection Confirmed Message
  if message_type == 105 then
    return true
  end

  -- Order Status Report Message
  if message_type == 102 then
    return true
  end

  -- Order Status Report Long Format Message
  if message_type == 132 then
    return true
  end

  -- Execution Report Including Head Office And Branch Offices Message
  if message_type == 106 then
    return true
  end

  -- Flex Order Status Report Message
  if message_type == 202 then
    return true
  end

  -- Clearing Member Initiate Operation Message
  if message_type == 115 then
    return true
  end

  -- Clearing Member Initiate Operation Confirmed Message
  if message_type == 116 then
    return true
  end

  -- Flex Clearing Member Initiate Operation Message
  if message_type == 215 then
    return true
  end

  -- Flex Clearing Member Initiate Operation Confirmed Message
  if message_type == 216 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Taifex TaifexDerivatives ClearingMember Tmp 2.18.7 (Tcp)
local function omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not taifex_taifexderivatives_clearingmember_tmp_v2_18_7.tmp_message.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp tmp message message dispatch
  if not taifex_taifexderivatives_clearingmember_tmp_v2_18_7.tmp_message.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7
  omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Taifex TaifexDerivatives ClearingMember Tmp 2.18.7
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7:register_heuristic("tcp", omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7_tcp_heuristic)

-- Register Taifex TaifexDerivatives ClearingMember Tmp 2.18.7 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Taiwan Futures Exchange
--   Version: 2.18.7
--   Date: Monday, August 18, 2025
--   Specification: Taifex_TCPIP_TMP_v2.18.7.pdf
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
