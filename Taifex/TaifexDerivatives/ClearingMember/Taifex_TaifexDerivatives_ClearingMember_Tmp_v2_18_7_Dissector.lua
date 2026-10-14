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
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.apcode = ProtoField.new("Apcode", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.apcode", ftypes.UINT8)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.appendno = ProtoField.new("Appendno", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.appendno", ftypes.UINT16)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.beforeqty = ProtoField.new("Beforeqty", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.beforeqty", ftypes.UINT16)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.cancelordersec = ProtoField.new("Cancelordersec", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.cancelordersec", ftypes.UINT8)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.check_sum = ProtoField.new("Check Sum", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.checksum", ftypes.UINT8)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.cmid = ProtoField.new("Cmid", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.cmid", ftypes.UINT16)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.combop = ProtoField.new("Combop", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.combop", ftypes.UINT8)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.cum_qty = ProtoField.new("Cum Qty", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.cumqty", ftypes.UINT16)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.encrypt_method = ProtoField.new("Encrypt Method", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.encryptmethod", ftypes.UINT8)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.endoutboundnum = ProtoField.new("Endoutboundnum", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.endoutboundnum", ftypes.UINT32)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.epochs_int_324 = ProtoField.new("Epochs Int 324", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.epochsint324", ftypes.INT32)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.epochs_uint_324 = ProtoField.new("Epochs Uint 324", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.epochsuint324", ftypes.UINT32)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.exec_type = ProtoField.new("Exec Type", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.exectype", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.fcmid = ProtoField.new("Fcmid", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.fcmid", ftypes.UINT16)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.header_epoch_s = ProtoField.new("Header Epoch S", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.headerepochs", ftypes.INT32)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.header_ms = ProtoField.new("Header Ms", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.headerms", ftypes.UINT16)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.header_time = ProtoField.new("Header Time", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.headertime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.header_time_utc = ProtoField.new("Header Time", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.headertime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.heart_bt_int = ProtoField.new("Heart Bt Int", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.heartbtint", ftypes.UINT8)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.investoracno = ProtoField.new("Investoracno", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.investoracno", ftypes.UINT32)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.investorflag = ProtoField.new("Investorflag", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.investorflag", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.keyvalue = ProtoField.new("Keyvalue", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.keyvalue", ftypes.UINT8)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.last_px = ProtoField.new("Last Px", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.lastpx", ftypes.INT32)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.last_qty = ProtoField.new("Last Qty", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.lastqty", ftypes.UINT16)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.leaves_qty = ProtoField.new("Leaves Qty", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.leavesqty", ftypes.UINT16)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.legentrynum = ProtoField.new("Legentrynum", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.legentrynum", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.legentrytxt = ProtoField.new("Legentrytxt", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.legentrytxt", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.legpx = ProtoField.new("Legpx", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.legpx", ftypes.INT32)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.legqty_uint_162 = ProtoField.new("Legqty Uint 162", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.legqtyuint162", ftypes.UINT16)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.legqty_uint_1624 = ProtoField.new("Legqty Uint 1624", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.legqtyuint1624", ftypes.UINT16)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.legside_uint_81 = ProtoField.new("Legside Uint 81", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.legsideuint81", ftypes.UINT8)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.legside_uint_822 = ProtoField.new("Legside Uint 822", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.legsideuint822", ftypes.UINT8)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.legsym_symbolnumx = ProtoField.new("Legsym Symbolnumx", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.legsymsymbolnumx", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.legsym_symboltxtx = ProtoField.new("Legsym Symboltxtx", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.legsymsymboltxtx", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.longsymbolnum = ProtoField.new("Longsymbolnum", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.longsymbolnum", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.longsymboltext = ProtoField.new("Longsymboltext", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.longsymboltext", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.maxflowctrlcnt = ProtoField.new("Maxflowctrlcnt", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.maxflowctrlcnt", ftypes.UINT16)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.memberid = ProtoField.new("Memberid", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.memberid", ftypes.UINT16)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.message_tail = ProtoField.new("Message Tail", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.messagetail", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.message_type = ProtoField.new("Message Type", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.messagetype", ftypes.UINT8)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.ms = ProtoField.new("Ms", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.ms", ftypes.UINT16)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.msg_length = ProtoField.new("Msg Length", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.msglength", ftypes.UINT16)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.msgseqnum", ftypes.UINT32)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.msg_type_ext = ProtoField.new("Msg Type Ext", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.msgtypeext", ftypes.UINT8)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.msgtimens = ProtoField.new("Msgtimens", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.msgtimens", ftypes.UINT32)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.multilegnum = ProtoField.new("Multilegnum", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.multilegnum", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.multilegtxt = ProtoField.new("Multilegtxt", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.multilegtxt", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.nanosecond = ProtoField.new("Nanosecond", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.nanosecond", ftypes.UINT32)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.no_leg = ProtoField.new("No Leg", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.noleg", ftypes.UINT8)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.ord_type = ProtoField.new("Ord Type", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.ordtype", ftypes.UINT8)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.orderno = ProtoField.new("Orderno", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.orderno", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.ordid = ProtoField.new("Ordid", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.ordid", ftypes.UINT32)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.orgtranstime_msgtime = ProtoField.new("Orgtranstime Msgtime", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.orgtranstimemsgtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.orgtranstime_msgtime_utc = ProtoField.new("Orgtranstime Msgtime", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.orgtranstimemsgtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.orgtranstime_msgtimex = ProtoField.new("Orgtranstime Msgtimex", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.orgtranstimemsgtimex", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.orgtranstime_msgtimex_utc = ProtoField.new("Orgtranstime Msgtimex", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.orgtranstimemsgtimex.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.partid = ProtoField.new("Partid", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.partid", ftypes.UINT8)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.position_effect = ProtoField.new("Position Effect", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.positioneffect", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.preserve = ProtoField.new("Preserve", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.preserve", ftypes.UINT8)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.price = ProtoField.new("Price", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.price", ftypes.INT32)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.prodid = ProtoField.new("Prodid", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.prodid", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.protocoltype = ProtoField.new("Protocoltype", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.protocoltype", ftypes.UINT8)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.pseq = ProtoField.new("Pseq", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.pseq", ftypes.UINT32)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.pseq_1 = ProtoField.new("Pseq 1", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.pseq1", ftypes.UINT16)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.pseq_2 = ProtoField.new("Pseq 2", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.pseq2", ftypes.UINT16)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.pxsubtotal = ProtoField.new("Pxsubtotal", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.pxsubtotal", ftypes.INT64)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.qty = ProtoField.new("Qty", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.qty", ftypes.UINT16)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.reqcmseq = ProtoField.new("Reqcmseq", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.reqcmseq", ftypes.UINT32)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.requeststartseq = ProtoField.new("Requeststartseq", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.requeststartseq", ftypes.UINT32)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.reserved_12 = ProtoField.new("Reserved 12", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.reserved12", ftypes.BYTES)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.reserved_13 = ProtoField.new("Reserved 13", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.reserved13", ftypes.BYTES)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.reserved_16 = ProtoField.new("Reserved 16", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.reserved16", ftypes.BYTES)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.reserved_33 = ProtoField.new("Reserved 33", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.reserved33", ftypes.BYTES)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.reserved_8 = ProtoField.new("Reserved 8", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.reserved8", ftypes.BYTES)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.rptseq = ProtoField.new("Rptseq", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.rptseq", ftypes.UINT32)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.rptsessionid = ProtoField.new("Rptsessionid", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.rptsessionid", ftypes.UINT16)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.rptsessionseq = ProtoField.new("Rptsessionseq", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.rptsessionseq", ftypes.UINT32)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.sessionid = ProtoField.new("Sessionid", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.sessionid", ftypes.UINT16)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.side = ProtoField.new("Side", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.side", ftypes.UINT8)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.startinboundnum = ProtoField.new("Startinboundnum", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.startinboundnum", ftypes.UINT32)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.statuscode_uint_162 = ProtoField.new("Statuscode Uint 162", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.statuscodeuint162", ftypes.UINT16)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.statuscode_uint_81 = ProtoField.new("Statuscode Uint 81", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.statuscodeuint81", ftypes.UINT8)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.subhdr = ProtoField.new("Subhdr", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.subhdr", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.symbol_char_2020 = ProtoField.new("Symbol Char 2020", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.symbolchar2020", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.symbol_char_4040 = ProtoField.new("Symbol Char 4040", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.symbolchar4040", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.symbolnum = ProtoField.new("Symbolnum", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.symbolnum", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.symbolnumx = ProtoField.new("Symbolnumx", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.symbolnumx", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.symboltext = ProtoField.new("Symboltext", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.symboltext", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.symboltxtx = ProtoField.new("Symboltxtx", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.symboltxtx", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.symboltype = ProtoField.new("Symboltype", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.symboltype", ftypes.UINT8)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.systemtype = ProtoField.new("Systemtype", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.systemtype", ftypes.UINT8)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.targetid = ProtoField.new("Targetid", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.targetid", ftypes.UINT8)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.time_in_force = ProtoField.new("Time In Force", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.timeinforce", ftypes.UINT8)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.transact_time_msgtime = ProtoField.new("Transact Time Msgtime", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.transacttimemsgtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.transact_time_msgtime_utc = ProtoField.new("Transact Time Msgtime", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.transacttimemsgtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.transact_time_msgtimex = ProtoField.new("Transact Time Msgtimex", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.transacttimemsgtimex", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.transact_time_msgtimex_utc = ProtoField.new("Transact Time Msgtimex", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.transacttimemsgtimex.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.uniqid = ProtoField.new("Uniqid", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.uniqid", ftypes.UINT32)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.userdefine = ProtoField.new("Userdefine", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.userdefine", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.version = ProtoField.new("Version", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.version", ftypes.UINT8)

-- Taifex TaifexDerivatives ClearingMember Tmp 2.18.7 Framing
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.hdr = ProtoField.new("Hdr", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.hdr", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.tmp_message = ProtoField.new("Tmp Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.tmpmessage", ftypes.STRING)

-- Taifex TaifexDerivatives ClearingMember 2.18.7 Application Messages
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.activate_application_system_confirmed_message = ProtoField.new("Activate Application System Confirmed Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.activateapplicationsystemconfirmedmessage", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.activate_application_system_message = ProtoField.new("Activate Application System Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.activateapplicationsystemmessage", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.clearing_member_initiate_operation_confirmed_message = ProtoField.new("Clearing Member Initiate Operation Confirmed Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.clearingmemberinitiateoperationconfirmedmessage", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.clearing_member_initiate_operation_message = ProtoField.new("Clearing Member Initiate Operation Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.clearingmemberinitiateoperationmessage", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.confirm_connection_message = ProtoField.new("Confirm Connection Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.confirmconnectionmessage", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.connection_confirmed_message = ProtoField.new("Connection Confirmed Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.connectionconfirmedmessage", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.execution_report_including_head_office_and_branch_offices_message = ProtoField.new("Execution Report Including Head Office And Branch Offices Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.executionreportincludingheadofficeandbranchofficesmessage", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.final_sequential_number_notification_for_group_message = ProtoField.new("Final Sequential Number Notification For Group Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.finalsequentialnumbernotificationforgroupmessage", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.flex_clearing_member_initiate_operation_confirmed_message = ProtoField.new("Flex Clearing Member Initiate Operation Confirmed Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.flexclearingmemberinitiateoperationconfirmedmessage", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.flex_clearing_member_initiate_operation_message = ProtoField.new("Flex Clearing Member Initiate Operation Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.flexclearingmemberinitiateoperationmessage", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.flex_order_status_report_message = ProtoField.new("Flex Order Status Report Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.flexorderstatusreportmessage", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.logon_notice_message = ProtoField.new("Logon Notice Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.logonnoticemessage", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.logout_confirmed_message = ProtoField.new("Logout Confirmed Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.logoutconfirmedmessage", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.logout_message = ProtoField.new("Logout Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.logoutmessage", ftypes.BYTES)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.order_status_report_long_format_message = ProtoField.new("Order Status Report Long Format Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.orderstatusreportlongformatmessage", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.order_status_report_message = ProtoField.new("Order Status Report Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.orderstatusreportmessage", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.request_logon_message = ProtoField.new("Request Logon Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.requestlogonmessage", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.wake_up_call_confirmed_message = ProtoField.new("Wake Up Call Confirmed Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.wakeupcallconfirmedmessage", ftypes.STRING)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.wake_up_call_message = ProtoField.new("Wake Up Call Message", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.wakeupcallmessage", ftypes.STRING)

-- Taifex TaifexDerivatives ClearingMember Tmp 2.18.7 Generated Fields
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.legentrynum_index = ProtoField.new("Legentrynum Index", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.legentrynumindex", ftypes.UINT16)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.legentrytxt_index = ProtoField.new("Legentrytxt Index", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.legentrytxtindex", ftypes.UINT16)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.legpx_index = ProtoField.new("Legpx Index", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.legpxindex", ftypes.UINT16)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.legqty_uint_1624_index = ProtoField.new("Legqty Uint 1624 Index", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.legqtyuint1624index", ftypes.UINT16)
omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.legside_uint_822_index = ProtoField.new("Legside Uint 822 Index", "taifex.taifexderivatives.clearingmember.tmp.v2.18.7.legsideuint822index", ftypes.UINT16)

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

-- Apcode
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.apcode = {}

-- Size: Apcode
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.apcode.size = 1

-- Display: Apcode
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.apcode.display = function(value)
  if value == 4 then
    return "Apcode: Fcm Order Transaction (4)"
  end
  if value == 6 then
    return "Apcode: Fcm Condensed Version Order Transaction (6)"
  end
  if value == 7 then
    return "Apcode: Tmpdc Session (7)"
  end
  if value == 8 then
    return "Apcode: Clearing Member Order Transaction Report (8)"
  end

  return "Apcode: Unknown("..value..")"
end

-- Dissect: Apcode
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.apcode.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.apcode.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.apcode.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.apcode, range, value, display)

  return offset + length, value
end

-- Appendno
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.appendno = {}

-- Size: Appendno
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.appendno.size = 2

-- Display: Appendno
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.appendno.display = function(value)
  return "Appendno: "..value
end

-- Dissect: Appendno
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.appendno.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.appendno.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.appendno.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.appendno, range, value, display)

  return offset + length, value
end

-- Beforeqty
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.beforeqty = {}

-- Size: Beforeqty
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.beforeqty.size = 2

-- Display: Beforeqty
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.beforeqty.display = function(value)
  return "Beforeqty: "..value
end

-- Dissect: Beforeqty
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.beforeqty.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.beforeqty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.beforeqty.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.beforeqty, range, value, display)

  return offset + length, value
end

-- Cancelordersec
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cancelordersec = {}

-- Size: Cancelordersec
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cancelordersec.size = 1

-- Display: Cancelordersec
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cancelordersec.display = function(value)
  return "Cancelordersec: "..value
end

-- Dissect: Cancelordersec
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cancelordersec.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cancelordersec.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cancelordersec.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.cancelordersec, range, value, display)

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

-- Cmid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cmid = {}

-- Size: Cmid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cmid.size = 2

-- Display: Cmid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cmid.display = function(value)
  return "Cmid: "..value
end

-- Dissect: Cmid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cmid.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cmid.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cmid.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.cmid, range, value, display)

  return offset + length, value
end

-- Combop
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.combop = {}

-- Size: Combop
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.combop.size = 1

-- Display: Combop
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.combop.display = function(value)
  if value == 0 then
    return "Combop: Single Order (0)"
  end
  if value == 1 then
    return "Combop: Price Spread (1)"
  end
  if value == 2 then
    return "Combop: Time Spread (2)"
  end
  if value == 3 then
    return "Combop: Straddle (3)"
  end
  if value == 4 then
    return "Combop: Strangle (4)"
  end
  if value == 5 then
    return "Combop: Conversion And Reversals (5)"
  end

  return "Combop: Unknown("..value..")"
end

-- Dissect: Combop
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.combop.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.combop.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.combop.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.combop, range, value, display)

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
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.encrypt_method.display = function(value)
  if value == 0 then
    return "Encrypt Method: Unencrypted (0)"
  end

  return "Encrypt Method: Unknown("..value..")"
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

-- Endoutboundnum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.endoutboundnum = {}

-- Size: Endoutboundnum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.endoutboundnum.size = 4

-- Display: Endoutboundnum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.endoutboundnum.display = function(value)
  return "Endoutboundnum: "..value
end

-- Dissect: Endoutboundnum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.endoutboundnum.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.endoutboundnum.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.endoutboundnum.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.endoutboundnum, range, value, display)

  return offset + length, value
end

-- Epochs Int 324
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epochs_int_324 = {}

-- Size: Epochs Int 324
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epochs_int_324.size = 4

-- Display: Epochs Int 324
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epochs_int_324.display = function(value)
  -- Parse unix seconds timestamp
  return "Epochs Int 324: "..os.date("%Y-%m-%d %H:%M:%S", value)
end

-- Dissect: Epochs Int 324
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epochs_int_324.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epochs_int_324.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epochs_int_324.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.epochs_int_324, range, value, display)

  return offset + length, value
end

-- Epochs Uint 324
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epochs_uint_324 = {}

-- Size: Epochs Uint 324
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epochs_uint_324.size = 4

-- Display: Epochs Uint 324
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epochs_uint_324.display = function(value)
  -- Parse unix seconds timestamp
  return "Epochs Uint 324: "..os.date("%Y-%m-%d %H:%M:%S", value)
end

-- Dissect: Epochs Uint 324
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epochs_uint_324.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epochs_uint_324.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epochs_uint_324.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.epochs_uint_324, range, value, display)

  return offset + length, value
end

-- Exec Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.exec_type = {}

-- Size: Exec Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.exec_type.size = 1

-- Display: Exec Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.exec_type.display = function(value)
  if value == "0" then
    return "Exec Type: New (0)"
  end
  if value == "4" then
    return "Exec Type: Cancel (4)"
  end
  if value == "5" then
    return "Exec Type: Decrease (5)"
  end
  if value == "6" then
    return "Exec Type: New And Execution Report (6)"
  end
  if value == "F" then
    return "Exec Type: Execution Report (F)"
  end
  if value == "I" then
    return "Exec Type: Query (I)"
  end
  if value == "M" then
    return "Exec Type: Modify Price Replying To The Modifying Line (M)"
  end
  if value == "m" then
    return "Exec Type: Modify Price Replying To The Original Line (m)"
  end

  return "Exec Type: Unknown("..value..")"
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

-- Fcmid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcmid = {}

-- Size: Fcmid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcmid.size = 2

-- Display: Fcmid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcmid.display = function(value)
  return "Fcmid: "..value
end

-- Dissect: Fcmid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcmid.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcmid.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcmid.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.fcmid, range, value, display)

  return offset + length, value
end

-- Header Epoch S
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.header_epoch_s = {}

-- Size: Header Epoch S
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.header_epoch_s.size = 4

-- Display: Header Epoch S
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.header_epoch_s.display = function(value)
  -- Parse unix seconds timestamp
  return "Header Epoch S: "..os.date("%Y-%m-%d %H:%M:%S", value)
end

-- Dissect: Header Epoch S
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.header_epoch_s.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.header_epoch_s.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.header_epoch_s.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.header_epoch_s, range, value, display)

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

-- Investoracno
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investoracno = {}

-- Size: Investoracno
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investoracno.size = 4

-- Display: Investoracno
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investoracno.display = function(value)
  return "Investoracno: "..value
end

-- Dissect: Investoracno
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investoracno.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investoracno.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investoracno.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.investoracno, range, value, display)

  return offset + length, value
end

-- Investorflag
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investorflag = {}

-- Size: Investorflag
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investorflag.size = 1

-- Display: Investorflag
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investorflag.display = function(value)
  return "Investorflag: "..value
end

-- Dissect: Investorflag
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investorflag.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investorflag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investorflag.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.investorflag, range, value, display)

  return offset + length, value
end

-- Keyvalue
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.keyvalue = {}

-- Size: Keyvalue
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.keyvalue.size = 1

-- Display: Keyvalue
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.keyvalue.display = function(value)
  return "Keyvalue: "..value
end

-- Dissect: Keyvalue
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.keyvalue.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.keyvalue.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.keyvalue.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.keyvalue, range, value, display)

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

-- Legpx
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legpx = {}

-- Size: Legpx
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legpx.size = 4

-- Display: Legpx
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legpx.display = function(value)
  return "Legpx: "..value
end

-- Dissect: Legpx
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legpx.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legpx.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legpx.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.legpx, range, value, display)

  return offset + length, value
end

-- Legqty Uint 162
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legqty_uint_162 = {}

-- Size: Legqty Uint 162
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legqty_uint_162.size = 2

-- Display: Legqty Uint 162
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legqty_uint_162.display = function(value)
  return "Legqty Uint 162: "..value
end

-- Dissect: Legqty Uint 162
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legqty_uint_162.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legqty_uint_162.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legqty_uint_162.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.legqty_uint_162, range, value, display)

  return offset + length, value
end

-- Legqty Uint 1624
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legqty_uint_1624 = {}

-- Size: Legqty Uint 1624
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legqty_uint_1624.size = 2

-- Display: Legqty Uint 1624
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legqty_uint_1624.display = function(value)
  return "Legqty Uint 1624: "..value
end

-- Dissect: Legqty Uint 1624
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legqty_uint_1624.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legqty_uint_1624.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legqty_uint_1624.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.legqty_uint_1624, range, value, display)

  return offset + length, value
end

-- Legside Uint 81
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legside_uint_81 = {}

-- Size: Legside Uint 81
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legside_uint_81.size = 1

-- Display: Legside Uint 81
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legside_uint_81.display = function(value)
  if value == 0 then
    return "Legside Uint 81: Single Order (0)"
  end
  if value == 1 then
    return "Legside Uint 81: Buy (1)"
  end
  if value == 2 then
    return "Legside Uint 81: Sell (2)"
  end

  return "Legside Uint 81: Unknown("..value..")"
end

-- Dissect: Legside Uint 81
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legside_uint_81.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legside_uint_81.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legside_uint_81.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.legside_uint_81, range, value, display)

  return offset + length, value
end

-- Legside Uint 822
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legside_uint_822 = {}

-- Size: Legside Uint 822
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legside_uint_822.size = 1

-- Display: Legside Uint 822
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legside_uint_822.display = function(value)
  if value == 0 then
    return "Legside Uint 822: Single Order (0)"
  end
  if value == 1 then
    return "Legside Uint 822: Buy (1)"
  end
  if value == 2 then
    return "Legside Uint 822: Sell (2)"
  end

  return "Legside Uint 822: Unknown("..value..")"
end

-- Dissect: Legside Uint 822
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legside_uint_822.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legside_uint_822.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legside_uint_822.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.legside_uint_822, range, value, display)

  return offset + length, value
end

-- Maxflowctrlcnt
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.maxflowctrlcnt = {}

-- Size: Maxflowctrlcnt
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.maxflowctrlcnt.size = 2

-- Display: Maxflowctrlcnt
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.maxflowctrlcnt.display = function(value)
  return "Maxflowctrlcnt: "..value
end

-- Dissect: Maxflowctrlcnt
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.maxflowctrlcnt.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.maxflowctrlcnt.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.maxflowctrlcnt.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.maxflowctrlcnt, range, value, display)

  return offset + length, value
end

-- Memberid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.memberid = {}

-- Size: Memberid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.memberid.size = 2

-- Display: Memberid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.memberid.display = function(value)
  return "Memberid: "..value
end

-- Dissect: Memberid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.memberid.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.memberid.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.memberid.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.memberid, range, value, display)

  return offset + length, value
end

-- Message Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.message_type = {}

-- Size: Message Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.message_type.size = 1

-- Display: Message Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.message_type.display = function(value)
  if value == 10 then
    return "Message Type: Wake Up Call Message (10)"
  end
  if value == 20 then
    return "Message Type: Wake Up Call Confirmed Message (20)"
  end
  if value == 30 then
    return "Message Type: Logon Notice Message (30)"
  end
  if value == 230 then
    return "Message Type: Final Sequential Number Notification For Group Message (230)"
  end
  if value == 40 then
    return "Message Type: Request Logon Message (40)"
  end
  if value == 50 then
    return "Message Type: Activate Application System Message (50)"
  end
  if value == 60 then
    return "Message Type: Activate Application System Confirmed Message (60)"
  end
  if value == 70 then
    return "Message Type: Logout Message (70)"
  end
  if value == 80 then
    return "Message Type: Logout Confirmed Message (80)"
  end
  if value == 104 then
    return "Message Type: Confirm Connection Message (104)"
  end
  if value == 105 then
    return "Message Type: Connection Confirmed Message (105)"
  end
  if value == 102 then
    return "Message Type: Order Status Report Message (102)"
  end
  if value == 132 then
    return "Message Type: Order Status Report Long Format Message (132)"
  end
  if value == 106 then
    return "Message Type: Execution Report Including Head Office And Branch Offices Message (106)"
  end
  if value == 202 then
    return "Message Type: Flex Order Status Report Message (202)"
  end
  if value == 115 then
    return "Message Type: Clearing Member Initiate Operation Message (115)"
  end
  if value == 116 then
    return "Message Type: Clearing Member Initiate Operation Confirmed Message (116)"
  end
  if value == 215 then
    return "Message Type: Flex Clearing Member Initiate Operation Message (215)"
  end
  if value == 216 then
    return "Message Type: Flex Clearing Member Initiate Operation Confirmed Message (216)"
  end

  return "Message Type: Unknown("..value..")"
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

-- Msg Type Ext
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_type_ext = {}

-- Size: Msg Type Ext
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_type_ext.size = 1

-- Display: Msg Type Ext
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_type_ext.display = function(value)
  if value == 0 then
    return "Msg Type Ext: Same Product As The Original Order Input (0)"
  end
  if value == 1 then
    return "Msg Type Ext: Single Leg Order With A Numeric Product Serial Number (1)"
  end
  if value == 2 then
    return "Msg Type Ext: Single Leg Order With A Textual Product Symbol (2)"
  end
  if value == 3 then
    return "Msg Type Ext: Multi Leg Order With A Numeric Product Serial Number (3)"
  end
  if value == 4 then
    return "Msg Type Ext: Multi Leg Order With A Textual Product Symbol (4)"
  end
  if value == 255 then
    return "Msg Type Ext: Unexpected Error Record (255)"
  end

  return "Msg Type Ext: Unknown("..value..")"
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

-- Msgtimens
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msgtimens = {}

-- Size: Msgtimens
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msgtimens.size = 4

-- Display: Msgtimens
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msgtimens.display = function(value)
  return "Msgtimens: "..value
end

-- Dissect: Msgtimens
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msgtimens.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msgtimens.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msgtimens.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.msgtimens, range, value, display)

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

-- Ord Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_type = {}

-- Size: Ord Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_type.size = 1

-- Display: Ord Type
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_type.display = function(value)
  if value == 1 then
    return "Ord Type: Market (1)"
  end
  if value == 2 then
    return "Ord Type: Limit (2)"
  end
  if value == 3 then
    return "Ord Type: Market With Protection (3)"
  end

  return "Ord Type: Unknown("..value..")"
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

-- Orderno
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orderno = {}

-- Size: Orderno
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orderno.size = 5

-- Display: Orderno
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orderno.display = function(value)
  return "Orderno: "..value
end

-- Dissect: Orderno
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orderno.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orderno.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orderno.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.orderno, range, value, display)

  return offset + length, value
end

-- Ordid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ordid = {}

-- Size: Ordid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ordid.size = 4

-- Display: Ordid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ordid.display = function(value)
  return "Ordid: "..value
end

-- Dissect: Ordid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ordid.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ordid.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ordid.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.ordid, range, value, display)

  return offset + length, value
end

-- Partid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.partid = {}

-- Size: Partid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.partid.size = 1

-- Display: Partid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.partid.display = function(value)
  if value == 102 then
    return "Partid: Flex Options Regular Market Hours (102)"
  end
  if value == 202 then
    return "Partid: Flex Futures Regular Market Hours (202)"
  end

  return "Partid: Unknown("..value..")"
end

-- Dissect: Partid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.partid.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.partid.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.partid.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.partid, range, value, display)

  return offset + length, value
end

-- Position Effect
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.position_effect = {}

-- Size: Position Effect
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.position_effect.size = 1

-- Display: Position Effect
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.position_effect.display = function(value)
  if value == "O" then
    return "Position Effect: Open (O)"
  end
  if value == "C" then
    return "Position Effect: Close (C)"
  end
  if value == "D" then
    return "Position Effect: Daytrade (D)"
  end
  if value == "A" then
    return "Position Effect: Open And Specified Position Offsets (A)"
  end
  if value == "7" then
    return "Position Effect: Offset By Fcm (7)"
  end
  if value == "9" then
    return "Position Effect: Market Maker Quote (9)"
  end

  return "Position Effect: Unknown("..value..")"
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

-- Prodid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prodid = {}

-- Size: Prodid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prodid.size = 20

-- Display: Prodid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prodid.display = function(value)
  return "Prodid: "..value
end

-- Dissect: Prodid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prodid.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prodid.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prodid.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.prodid, range, value, display)

  return offset + length, value
end

-- Protocoltype
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.protocoltype = {}

-- Size: Protocoltype
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.protocoltype.size = 1

-- Display: Protocoltype
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.protocoltype.display = function(value)
  if value == 0 then
    return "Protocoltype: Reserved (0)"
  end
  if value == 1 then
    return "Protocoltype: Tmp (1)"
  end
  if value == 2 then
    return "Protocoltype: Fix (2)"
  end

  return "Protocoltype: Unknown("..value..")"
end

-- Dissect: Protocoltype
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.protocoltype.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.protocoltype.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.protocoltype.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.protocoltype, range, value, display)

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

-- Pxsubtotal
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pxsubtotal = {}

-- Size: Pxsubtotal
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pxsubtotal.size = 8

-- Display: Pxsubtotal
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pxsubtotal.display = function(value)
  return "Pxsubtotal: "..value
end

-- Dissect: Pxsubtotal
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pxsubtotal.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pxsubtotal.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pxsubtotal.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.pxsubtotal, range, value, display)

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

-- Reqcmseq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reqcmseq = {}

-- Size: Reqcmseq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reqcmseq.size = 4

-- Display: Reqcmseq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reqcmseq.display = function(value)
  return "Reqcmseq: "..value
end

-- Dissect: Reqcmseq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reqcmseq.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reqcmseq.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reqcmseq.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.reqcmseq, range, value, display)

  return offset + length, value
end

-- Requeststartseq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.requeststartseq = {}

-- Size: Requeststartseq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.requeststartseq.size = 4

-- Display: Requeststartseq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.requeststartseq.display = function(value)
  return "Requeststartseq: "..value
end

-- Dissect: Requeststartseq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.requeststartseq.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.requeststartseq.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.requeststartseq.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.requeststartseq, range, value, display)

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

-- Rptseq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptseq = {}

-- Size: Rptseq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptseq.size = 4

-- Display: Rptseq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptseq.display = function(value)
  return "Rptseq: "..value
end

-- Dissect: Rptseq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptseq.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptseq.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptseq.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.rptseq, range, value, display)

  return offset + length, value
end

-- Rptsessionid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptsessionid = {}

-- Size: Rptsessionid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptsessionid.size = 2

-- Display: Rptsessionid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptsessionid.display = function(value)
  return "Rptsessionid: "..value
end

-- Dissect: Rptsessionid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptsessionid.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptsessionid.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptsessionid.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.rptsessionid, range, value, display)

  return offset + length, value
end

-- Rptsessionseq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptsessionseq = {}

-- Size: Rptsessionseq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptsessionseq.size = 4

-- Display: Rptsessionseq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptsessionseq.display = function(value)
  return "Rptsessionseq: "..value
end

-- Dissect: Rptsessionseq
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptsessionseq.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptsessionseq.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptsessionseq.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.rptsessionseq, range, value, display)

  return offset + length, value
end

-- Sessionid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sessionid = {}

-- Size: Sessionid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sessionid.size = 2

-- Display: Sessionid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sessionid.display = function(value)
  return "Sessionid: "..value
end

-- Dissect: Sessionid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sessionid.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sessionid.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sessionid.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.sessionid, range, value, display)

  return offset + length, value
end

-- Side
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.side = {}

-- Size: Side
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.side.size = 1

-- Display: Side
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.side.display = function(value)
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == 2 then
    return "Side: Sell (2)"
  end

  return "Side: Unknown("..value..")"
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

-- Startinboundnum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.startinboundnum = {}

-- Size: Startinboundnum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.startinboundnum.size = 4

-- Display: Startinboundnum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.startinboundnum.display = function(value)
  return "Startinboundnum: "..value
end

-- Dissect: Startinboundnum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.startinboundnum.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.startinboundnum.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.startinboundnum.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.startinboundnum, range, value, display)

  return offset + length, value
end

-- Statuscode Uint 162
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_162 = {}

-- Size: Statuscode Uint 162
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_162.size = 2

-- Display: Statuscode Uint 162
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_162.display = function(value)
  if value == 0 then
    return "Statuscode Uint 162: Succeed (0)"
  end
  if value == 1 then
    return "Statuscode Uint 162: Trading Time Over (1)"
  end
  if value == 2 then
    return "Statuscode Uint 162: Order Acceptance Not Yet Started Or Trading Halt (2)"
  end
  if value == 3 then
    return "Statuscode Uint 162: Price Quote Not Yet Accepted (3)"
  end
  if value == 4 then
    return "Statuscode Uint 162: In Processing No Order Accepted For The Time Being (4)"
  end
  if value == 5 then
    return "Statuscode Uint 162: No Such Order No (5)"
  end
  if value == 6 then
    return "Statuscode Uint 162: Order Or Quote Filled (6)"
  end
  if value == 7 then
    return "Statuscode Uint 162: Order Or Quote Cancelled (7)"
  end
  if value == 8 then
    return "Statuscode Uint 162: Stop Order (8)"
  end
  if value == 9 then
    return "Statuscode Uint 162: Order Limit (9)"
  end
  if value == 10 then
    return "Statuscode Uint 162: Order Not In The Book (10)"
  end
  if value == 11 then
    return "Statuscode Uint 162: Exec Type Error (11)"
  end
  if value == 12 then
    return "Statuscode Uint 162: Broker Id Error (12)"
  end
  if value == 13 then
    return "Statuscode Uint 162: Branch No Error (13)"
  end
  if value == 14 then
    return "Statuscode Uint 162: Investor Account Error (14)"
  end
  if value == 15 then
    return "Statuscode Uint 162: Investor Id Code Error (15)"
  end
  if value == 16 then
    return "Statuscode Uint 162: Reject Delete Or Modify Order During Noncancel Period (16)"
  end
  if value == 17 then
    return "Statuscode Uint 162: Duplicate Order No Or Quote No (17)"
  end
  if value == 18 then
    return "Statuscode Uint 162: Order No Or Quote No Error (18)"
  end
  if value == 19 then
    return "Statuscode Uint 162: The Same Side Order Not Exist (19)"
  end
  if value == 20 then
    return "Statuscode Uint 162: Product Id Error (20)"
  end
  if value == 21 then
    return "Statuscode Uint 162: Exceeding Risefall Limit (21)"
  end
  if value == 22 then
    return "Statuscode Uint 162: Order Quantity Error (22)"
  end
  if value == 23 then
    return "Statuscode Uint 162: Price Inquiry Not Accepted Yet Or Price Is At Risefall Limit Price Inquiry Not Accepted (23)"
  end
  if value == 24 then
    return "Statuscode Uint 162: Buysell Error (24)"
  end
  if value == 25 then
    return "Statuscode Uint 162: Ord Type Error (25)"
  end
  if value == 26 then
    return "Statuscode Uint 162: Order Type And Price Not Matched (26)"
  end
  if value == 27 then
    return "Statuscode Uint 162: Time In Force Error (27)"
  end
  if value == 28 then
    return "Statuscode Uint 162: Position Effect Error (28)"
  end
  if value == 29 then
    return "Statuscode Uint 162: Price And Tick Size Not Matched (29)"
  end
  if value == 30 then
    return "Statuscode Uint 162: Product Expired (30)"
  end
  if value == 31 then
    return "Statuscode Uint 162: Broker Id Product Group And Market Makers Account No Inconsistent (31)"
  end
  if value == 32 then
    return "Statuscode Uint 162: Decrease Successful But Requested More Than The Decreasable Unfilled Part (32)"
  end
  if value == 33 then
    return "Statuscode Uint 162: Quoted Bidask Price May Not Exceed The Spread Limit Of The Product (33)"
  end
  if value == 34 then
    return "Statuscode Uint 162: Bid Price Exceeding Ask Price (34)"
  end
  if value == 35 then
    return "Statuscode Uint 162: Remaining Quantity Of The Unmodified Side Is Zero (35)"
  end
  if value == 36 then
    return "Statuscode Uint 162: The Unfilled Part Of The Oneway Quote Is Less Than The Minimum Quantity Limit (36)"
  end
  if value == 37 then
    return "Statuscode Uint 162: Price Inquiry Already Present (37)"
  end
  if value == 38 then
    return "Statuscode Uint 162: Market Orderand Mwp Does Not Accept Rod (38)"
  end
  if value == 39 then
    return "Statuscode Uint 162: Decrease Quantity Error (39)"
  end
  if value == 40 then
    return "Statuscode Uint 162: Price Error Singleside Quote Order Modification (40)"
  end
  if value == 41 then
    return "Statuscode Uint 162: Settlement Month Error (41)"
  end
  if value == 42 then
    return "Statuscode Uint 162: Strike Price Error (42)"
  end
  if value == 43 then
    return "Statuscode Uint 162: Clearing Member Id Error (43)"
  end
  if value == 44 then
    return "Statuscode Uint 162: Ordersource Error (44)"
  end
  if value == 45 then
    return "Statuscode Uint 162: Infosource Error (45)"
  end
  if value == 46 then
    return "Statuscode Uint 162: Disable Kill Switch Operation Error (46)"
  end
  if value == 47 then
    return "Statuscode Uint 162: Leaves Quantity Rejected At The Dynamic Price Banding Limit (47)"
  end
  if value == 48 then
    return "Statuscode Uint 162: Dynamic Price Banding Limit Price Disclosure (48)"
  end
  if value == 51 then
    return "Statuscode Uint 162: Fok Not Filled And Deleted By System (51)"
  end
  if value == 52 then
    return "Statuscode Uint 162: Ioc Is Partially Filled (52)"
  end
  if value == 53 then
    return "Statuscode Uint 162: Ioc Not Filled And Deleted By System (53)"
  end
  if value == 54 then
    return "Statuscode Uint 162: Delete The Order Because Of Cod (54)"
  end
  if value == 61 then
    return "Statuscode Uint 162: Buysell Code Of Canceldecrease Order Not Matching Original Order (61)"
  end
  if value == 62 then
    return "Statuscode Uint 162: Product Id Of Canceldecrease Order Not Matching Original Order (62)"
  end
  if value == 63 then
    return "Statuscode Uint 162: Modify Price Of Ioc Order Not Allowed (63)"
  end
  if value == 64 then
    return "Statuscode Uint 162: Order Partially Traded Modify To Market Fok Order Or Mwp Fok Order Is Not Allowed (64)"
  end
  if value == 65 then
    return "Statuscode Uint 162: Kill Switch In Operation The Order Execution Type Is Not Allowed (65)"
  end
  if value == 77 then
    return "Statuscode Uint 162: No Such Contract (77)"
  end
  if value == 78 then
    return "Statuscode Uint 162: Order Of This Contract Is Restricted For This Accountcode (78)"
  end
  if value == 79 then
    return "Statuscode Uint 162: Order Deleted Due To Trading Suspension Or Order Acceptance Before Collective Bidding (79)"
  end
  if value == 80 then
    return "Statuscode Uint 162: Fcm Is Not Yet Approved To Trade This Product Or Execute The Function (80)"
  end
  if value == 89 then
    return "Statuscode Uint 162: Too Many Errors (89)"
  end
  if value == 91 then
    return "Statuscode Uint 162: Message Time Out (91)"
  end
  if value == 92 then
    return "Statuscode Uint 162: Message Length Error (92)"
  end
  if value == 93 then
    return "Statuscode Uint 162: Message Format Error (93)"
  end
  if value == 99 then
    return "Statuscode Uint 162: Major Error (99)"
  end
  if value == 110 then
    return "Statuscode Uint 162: Illegal File Code (110)"
  end
  if value == 113 then
    return "Statuscode Uint 162: Wrong File Request Range (113)"
  end
  if value == 114 then
    return "Statuscode Uint 162: File Is Not Ready (114)"
  end
  if value == 117 then
    return "Statuscode Uint 162: File Is Ready But Empty (117)"
  end
  if value == 120 then
    return "Statuscode Uint 162: File Not Found For Broker (120)"
  end
  if value == 121 then
    return "Statuscode Uint 162: Illegal Time To Get File (121)"
  end
  if value == 150 then
    return "Statuscode Uint 162: Fcmuniqueid Or Serial No Duplicate (150)"
  end
  if value == 151 then
    return "Statuscode Uint 162: Product Can Not Block Trade (151)"
  end
  if value == 152 then
    return "Statuscode Uint 162: Block Trade Order Quantity Error (152)"
  end
  if value == 153 then
    return "Statuscode Uint 162: Invalid Prodcount (153)"
  end
  if value == 154 then
    return "Statuscode Uint 162: Prodcount Is Not Match With The Number Of Legs In A Block Trade Order (154)"
  end
  if value == 155 then
    return "Statuscode Uint 162: Invalid Fcmuniqueid Or Serial No (155)"
  end
  if value == 156 then
    return "Statuscode Uint 162: Block Trade Id Duplicate (156)"
  end
  if value == 157 then
    return "Statuscode Uint 162: Invalid Block Trade Id (157)"
  end
  if value == 158 then
    return "Statuscode Uint 162: Invalid Participantfcmcount (158)"
  end
  if value == 159 then
    return "Statuscode Uint 162: Participantfcmcount Is Not Consistent With Participantfcmid List (159)"
  end
  if value == 160 then
    return "Statuscode Uint 162: Participantfcmid Error (160)"
  end
  if value == 161 then
    return "Statuscode Uint 162: Invalid Prodcount (161)"
  end
  if value == 162 then
    return "Statuscode Uint 162: Block Trade Id Does Not Exist (162)"
  end
  if value == 163 then
    return "Statuscode Uint 162: Negotiated Block Trade Success (163)"
  end
  if value == 164 then
    return "Statuscode Uint 162: Negotiated Block Trade Fail (164)"
  end
  if value == 165 then
    return "Statuscode Uint 162: Negotiated Block Trade Calcelled (165)"
  end
  if value == 166 then
    return "Statuscode Uint 162: Negotiated Block Trade Wait Fcm To Comfirm Order (166)"
  end
  if value == 167 then
    return "Statuscode Uint 162: Fcmid Not Matching Represent Fcm (167)"
  end
  if value == 168 then
    return "Statuscode Uint 162: Symboltype Error (168)"
  end
  if value == 169 then
    return "Statuscode Uint 162: Invalid Ordercount Of Negotiated Block Trade Confirm Input (169)"
  end
  if value == 170 then
    return "Statuscode Uint 162: Number Of Orders In B 31 Xb 31 Is Not Consistent With Ordercount Field (170)"
  end
  if value == 171 then
    return "Statuscode Uint 162: Negotiated Block Trade Is Not In The Status Of Waiting For Confirm Input (171)"
  end
  if value == 172 then
    return "Statuscode Uint 162: Investoracno Duplicate In Negotiated Block Trade Confirm Input (172)"
  end
  if value == 175 then
    return "Statuscode Uint 162: Negotiated Block Trade Timed Out (175)"
  end
  if value == 176 then
    return "Statuscode Uint 162: The Confirm Input Data Is Not Consistent With B 21 Xb 21 Registered Data (176)"
  end
  if value == 177 then
    return "Statuscode Uint 162: Negotiated Block Trade Beyond The Position Limit (177)"
  end
  if value == 186 then
    return "Statuscode Uint 162: Illegal Source Id (186)"
  end
  if value == 200 then
    return "Statuscode Uint 162: Significant System Time Error (200)"
  end
  if value == 201 then
    return "Statuscode Uint 162: Appendno Error (201)"
  end
  if value == 202 then
    return "Statuscode Uint 162: Fcmid Error (202)"
  end
  if value == 203 then
    return "Statuscode Uint 162: Apcode Error (203)"
  end
  if value == 204 then
    return "Statuscode Uint 162: Keyvalue Error (204)"
  end
  if value == 205 then
    return "Statuscode Uint 162: Sessionid Error (205)"
  end
  if value == 206 then
    return "Statuscode Uint 162: Systemtype Error (206)"
  end
  if value == 207 then
    return "Statuscode Uint 162: Msg Seq Num Error (207)"
  end
  if value == 208 then
    return "Statuscode Uint 162: Targetid Error (208)"
  end
  if value == 209 then
    return "Statuscode Uint 162: Flowgroupno Error (209)"
  end
  if value == 210 then
    return "Statuscode Uint 162: Subscription Request Type Error (210)"
  end
  if value == 220 then
    return "Statuscode Uint 162: Msg Type Ext Error (220)"
  end
  if value == 221 then
    return "Statuscode Uint 162: Partid Error (221)"
  end
  if value == 240 then
    return "Statuscode Uint 162: Session Exceeds The Flow Limit (240)"
  end
  if value == 241 then
    return "Statuscode Uint 162: Session Exceeds Flow Limit Continuously And Is Locked (241)"
  end
  if value == 242 then
    return "Statuscode Uint 162: Order Older Than Cancelordersec And Rejected (242)"
  end
  if value == 248 then
    return "Statuscode Uint 162: Session Reach 80% Of The Flow Limit (248)"
  end
  if value == 249 then
    return "Statuscode Uint 162: Session Reach 90% Of The Flow Limit (249)"
  end
  if value == 250 then
    return "Statuscode Uint 162: Order Older Than Two Seconds (250)"
  end
  if value == 300 then
    return "Statuscode Uint 162: The Flex Contract Has Been Resubmitted (300)"
  end
  if value == 301 then
    return "Statuscode Uint 162: Open Interest For Today Undetermined (301)"
  end
  if value == 302 then
    return "Statuscode Uint 162: The Flex Contract Is Listed For Trading (302)"
  end
  if value == 303 then
    return "Statuscode Uint 162: Incorrect Expiration Date For The Flex Contract (303)"
  end
  if value == 304 then
    return "Statuscode Uint 162: Duplicate Unique Id Of A Security Definition Request For The Flex Contract (304)"
  end
  if value == 305 then
    return "Statuscode Uint 162: Exceeding The Flex Contract Limit (305)"
  end
  if value == 306 then
    return "Statuscode Uint 162: No Record Of Successful Flex Contract Application Was Found (306)"
  end
  if value == 310 then
    return "Statuscode Uint 162: Nonflexible Contract Application Period (310)"
  end
  if value == 311 then
    return "Statuscode Uint 162: The Proprietary Trading Account Has Not Been Approved To Apply For Flex Contracts (311)"
  end
  if value == 312 then
    return "Statuscode Uint 162: The Fcm Account Has Not Been Approved To Apply For Flex Contracts (312)"
  end
  if value == 313 then
    return "Statuscode Uint 162: Incorrect Coverage Range For The Flex Contract (313)"
  end
  if value == 314 then
    return "Statuscode Uint 162: Invalid Strikeprice For The Flex Contract (314)"
  end
  if value == 315 then
    return "Statuscode Uint 162: Invalid Security Request Type For The Flex Contract (315)"
  end
  if value == 316 then
    return "Statuscode Uint 162: Invalid Application Type For The Flex Contract (316)"
  end
  if value == 317 then
    return "Statuscode Uint 162: Invalid Type For The Flex Contract (317)"
  end
  if value == 318 then
    return "Statuscode Uint 162: Expirytype Error (318)"
  end
  if value == 319 then
    return "Statuscode Uint 162: Callputcode Error (319)"
  end

  return "Statuscode Uint 162: Unknown("..value..")"
end

-- Dissect: Statuscode Uint 162
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_162.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_162.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_162.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.statuscode_uint_162, range, value, display)

  return offset + length, value
end

-- Statuscode Uint 81
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_81 = {}

-- Size: Statuscode Uint 81
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_81.size = 1

-- Display: Statuscode Uint 81
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_81.display = function(value)
  if value == 0 then
    return "Statuscode Uint 81: Succeed (0)"
  end
  if value == 1 then
    return "Statuscode Uint 81: Trading Time Over (1)"
  end
  if value == 2 then
    return "Statuscode Uint 81: Order Acceptance Not Yet Started Or Trading Halt (2)"
  end
  if value == 3 then
    return "Statuscode Uint 81: Price Quote Not Yet Accepted (3)"
  end
  if value == 4 then
    return "Statuscode Uint 81: In Processing No Order Accepted For The Time Being (4)"
  end
  if value == 5 then
    return "Statuscode Uint 81: No Such Order No (5)"
  end
  if value == 6 then
    return "Statuscode Uint 81: Order Or Quote Filled (6)"
  end
  if value == 7 then
    return "Statuscode Uint 81: Order Or Quote Cancelled (7)"
  end
  if value == 8 then
    return "Statuscode Uint 81: Stop Order (8)"
  end
  if value == 9 then
    return "Statuscode Uint 81: Order Limit (9)"
  end
  if value == 10 then
    return "Statuscode Uint 81: Order Not In The Book (10)"
  end
  if value == 11 then
    return "Statuscode Uint 81: Exec Type Error (11)"
  end
  if value == 12 then
    return "Statuscode Uint 81: Broker Id Error (12)"
  end
  if value == 13 then
    return "Statuscode Uint 81: Branch No Error (13)"
  end
  if value == 14 then
    return "Statuscode Uint 81: Investor Account Error (14)"
  end
  if value == 15 then
    return "Statuscode Uint 81: Investor Id Code Error (15)"
  end
  if value == 16 then
    return "Statuscode Uint 81: Reject Delete Or Modify Order During Noncancel Period (16)"
  end
  if value == 17 then
    return "Statuscode Uint 81: Duplicate Order No Or Quote No (17)"
  end
  if value == 18 then
    return "Statuscode Uint 81: Order No Or Quote No Error (18)"
  end
  if value == 19 then
    return "Statuscode Uint 81: The Same Side Order Not Exist (19)"
  end
  if value == 20 then
    return "Statuscode Uint 81: Product Id Error (20)"
  end
  if value == 21 then
    return "Statuscode Uint 81: Exceeding Risefall Limit (21)"
  end
  if value == 22 then
    return "Statuscode Uint 81: Order Quantity Error (22)"
  end
  if value == 23 then
    return "Statuscode Uint 81: Price Inquiry Not Accepted Yet Or Price Is At Risefall Limit Price Inquiry Not Accepted (23)"
  end
  if value == 24 then
    return "Statuscode Uint 81: Buysell Error (24)"
  end
  if value == 25 then
    return "Statuscode Uint 81: Ord Type Error (25)"
  end
  if value == 26 then
    return "Statuscode Uint 81: Order Type And Price Not Matched (26)"
  end
  if value == 27 then
    return "Statuscode Uint 81: Time In Force Error (27)"
  end
  if value == 28 then
    return "Statuscode Uint 81: Position Effect Error (28)"
  end
  if value == 29 then
    return "Statuscode Uint 81: Price And Tick Size Not Matched (29)"
  end
  if value == 30 then
    return "Statuscode Uint 81: Product Expired (30)"
  end
  if value == 31 then
    return "Statuscode Uint 81: Broker Id Product Group And Market Makers Account No Inconsistent (31)"
  end
  if value == 32 then
    return "Statuscode Uint 81: Decrease Successful But Requested More Than The Decreasable Unfilled Part (32)"
  end
  if value == 33 then
    return "Statuscode Uint 81: Quoted Bidask Price May Not Exceed The Spread Limit Of The Product (33)"
  end
  if value == 34 then
    return "Statuscode Uint 81: Bid Price Exceeding Ask Price (34)"
  end
  if value == 35 then
    return "Statuscode Uint 81: Remaining Quantity Of The Unmodified Side Is Zero (35)"
  end
  if value == 36 then
    return "Statuscode Uint 81: The Unfilled Part Of The Oneway Quote Is Less Than The Minimum Quantity Limit (36)"
  end
  if value == 37 then
    return "Statuscode Uint 81: Price Inquiry Already Present (37)"
  end
  if value == 38 then
    return "Statuscode Uint 81: Market Orderand Mwp Does Not Accept Rod (38)"
  end
  if value == 39 then
    return "Statuscode Uint 81: Decrease Quantity Error (39)"
  end
  if value == 40 then
    return "Statuscode Uint 81: Price Error Singleside Quote Order Modification (40)"
  end
  if value == 41 then
    return "Statuscode Uint 81: Settlement Month Error (41)"
  end
  if value == 42 then
    return "Statuscode Uint 81: Strike Price Error (42)"
  end
  if value == 43 then
    return "Statuscode Uint 81: Clearing Member Id Error (43)"
  end
  if value == 44 then
    return "Statuscode Uint 81: Ordersource Error (44)"
  end
  if value == 45 then
    return "Statuscode Uint 81: Infosource Error (45)"
  end
  if value == 46 then
    return "Statuscode Uint 81: Disable Kill Switch Operation Error (46)"
  end
  if value == 47 then
    return "Statuscode Uint 81: Leaves Quantity Rejected At The Dynamic Price Banding Limit (47)"
  end
  if value == 48 then
    return "Statuscode Uint 81: Dynamic Price Banding Limit Price Disclosure (48)"
  end
  if value == 51 then
    return "Statuscode Uint 81: Fok Not Filled And Deleted By System (51)"
  end
  if value == 52 then
    return "Statuscode Uint 81: Ioc Is Partially Filled (52)"
  end
  if value == 53 then
    return "Statuscode Uint 81: Ioc Not Filled And Deleted By System (53)"
  end
  if value == 54 then
    return "Statuscode Uint 81: Delete The Order Because Of Cod (54)"
  end
  if value == 61 then
    return "Statuscode Uint 81: Buysell Code Of Canceldecrease Order Not Matching Original Order (61)"
  end
  if value == 62 then
    return "Statuscode Uint 81: Product Id Of Canceldecrease Order Not Matching Original Order (62)"
  end
  if value == 63 then
    return "Statuscode Uint 81: Modify Price Of Ioc Order Not Allowed (63)"
  end
  if value == 64 then
    return "Statuscode Uint 81: Order Partially Traded Modify To Market Fok Order Or Mwp Fok Order Is Not Allowed (64)"
  end
  if value == 65 then
    return "Statuscode Uint 81: Kill Switch In Operation The Order Execution Type Is Not Allowed (65)"
  end
  if value == 77 then
    return "Statuscode Uint 81: No Such Contract (77)"
  end
  if value == 78 then
    return "Statuscode Uint 81: Order Of This Contract Is Restricted For This Accountcode (78)"
  end
  if value == 79 then
    return "Statuscode Uint 81: Order Deleted Due To Trading Suspension Or Order Acceptance Before Collective Bidding (79)"
  end
  if value == 80 then
    return "Statuscode Uint 81: Fcm Is Not Yet Approved To Trade This Product Or Execute The Function (80)"
  end
  if value == 89 then
    return "Statuscode Uint 81: Too Many Errors (89)"
  end
  if value == 91 then
    return "Statuscode Uint 81: Message Time Out (91)"
  end
  if value == 92 then
    return "Statuscode Uint 81: Message Length Error (92)"
  end
  if value == 93 then
    return "Statuscode Uint 81: Message Format Error (93)"
  end
  if value == 99 then
    return "Statuscode Uint 81: Major Error (99)"
  end
  if value == 110 then
    return "Statuscode Uint 81: Illegal File Code (110)"
  end
  if value == 113 then
    return "Statuscode Uint 81: Wrong File Request Range (113)"
  end
  if value == 114 then
    return "Statuscode Uint 81: File Is Not Ready (114)"
  end
  if value == 117 then
    return "Statuscode Uint 81: File Is Ready But Empty (117)"
  end
  if value == 120 then
    return "Statuscode Uint 81: File Not Found For Broker (120)"
  end
  if value == 121 then
    return "Statuscode Uint 81: Illegal Time To Get File (121)"
  end
  if value == 150 then
    return "Statuscode Uint 81: Fcmuniqueid Or Serial No Duplicate (150)"
  end
  if value == 151 then
    return "Statuscode Uint 81: Product Can Not Block Trade (151)"
  end
  if value == 152 then
    return "Statuscode Uint 81: Block Trade Order Quantity Error (152)"
  end
  if value == 153 then
    return "Statuscode Uint 81: Invalid Prodcount (153)"
  end
  if value == 154 then
    return "Statuscode Uint 81: Prodcount Is Not Match With The Number Of Legs In A Block Trade Order (154)"
  end
  if value == 155 then
    return "Statuscode Uint 81: Invalid Fcmuniqueid Or Serial No (155)"
  end
  if value == 156 then
    return "Statuscode Uint 81: Block Trade Id Duplicate (156)"
  end
  if value == 157 then
    return "Statuscode Uint 81: Invalid Block Trade Id (157)"
  end
  if value == 158 then
    return "Statuscode Uint 81: Invalid Participantfcmcount (158)"
  end
  if value == 159 then
    return "Statuscode Uint 81: Participantfcmcount Is Not Consistent With Participantfcmid List (159)"
  end
  if value == 160 then
    return "Statuscode Uint 81: Participantfcmid Error (160)"
  end
  if value == 161 then
    return "Statuscode Uint 81: Invalid Prodcount (161)"
  end
  if value == 162 then
    return "Statuscode Uint 81: Block Trade Id Does Not Exist (162)"
  end
  if value == 163 then
    return "Statuscode Uint 81: Negotiated Block Trade Success (163)"
  end
  if value == 164 then
    return "Statuscode Uint 81: Negotiated Block Trade Fail (164)"
  end
  if value == 165 then
    return "Statuscode Uint 81: Negotiated Block Trade Calcelled (165)"
  end
  if value == 166 then
    return "Statuscode Uint 81: Negotiated Block Trade Wait Fcm To Comfirm Order (166)"
  end
  if value == 167 then
    return "Statuscode Uint 81: Fcmid Not Matching Represent Fcm (167)"
  end
  if value == 168 then
    return "Statuscode Uint 81: Symboltype Error (168)"
  end
  if value == 169 then
    return "Statuscode Uint 81: Invalid Ordercount Of Negotiated Block Trade Confirm Input (169)"
  end
  if value == 170 then
    return "Statuscode Uint 81: Number Of Orders In B 31 Xb 31 Is Not Consistent With Ordercount Field (170)"
  end
  if value == 171 then
    return "Statuscode Uint 81: Negotiated Block Trade Is Not In The Status Of Waiting For Confirm Input (171)"
  end
  if value == 172 then
    return "Statuscode Uint 81: Investoracno Duplicate In Negotiated Block Trade Confirm Input (172)"
  end
  if value == 175 then
    return "Statuscode Uint 81: Negotiated Block Trade Timed Out (175)"
  end
  if value == 176 then
    return "Statuscode Uint 81: The Confirm Input Data Is Not Consistent With B 21 Xb 21 Registered Data (176)"
  end
  if value == 177 then
    return "Statuscode Uint 81: Negotiated Block Trade Beyond The Position Limit (177)"
  end
  if value == 186 then
    return "Statuscode Uint 81: Illegal Source Id (186)"
  end
  if value == 200 then
    return "Statuscode Uint 81: Significant System Time Error (200)"
  end
  if value == 201 then
    return "Statuscode Uint 81: Appendno Error (201)"
  end
  if value == 202 then
    return "Statuscode Uint 81: Fcmid Error (202)"
  end
  if value == 203 then
    return "Statuscode Uint 81: Apcode Error (203)"
  end
  if value == 204 then
    return "Statuscode Uint 81: Keyvalue Error (204)"
  end
  if value == 205 then
    return "Statuscode Uint 81: Sessionid Error (205)"
  end
  if value == 206 then
    return "Statuscode Uint 81: Systemtype Error (206)"
  end
  if value == 207 then
    return "Statuscode Uint 81: Msg Seq Num Error (207)"
  end
  if value == 208 then
    return "Statuscode Uint 81: Targetid Error (208)"
  end
  if value == 209 then
    return "Statuscode Uint 81: Flowgroupno Error (209)"
  end
  if value == 210 then
    return "Statuscode Uint 81: Subscription Request Type Error (210)"
  end
  if value == 220 then
    return "Statuscode Uint 81: Msg Type Ext Error (220)"
  end
  if value == 221 then
    return "Statuscode Uint 81: Partid Error (221)"
  end
  if value == 240 then
    return "Statuscode Uint 81: Session Exceeds The Flow Limit (240)"
  end
  if value == 241 then
    return "Statuscode Uint 81: Session Exceeds Flow Limit Continuously And Is Locked (241)"
  end
  if value == 242 then
    return "Statuscode Uint 81: Order Older Than Cancelordersec And Rejected (242)"
  end
  if value == 248 then
    return "Statuscode Uint 81: Session Reach 80% Of The Flow Limit (248)"
  end
  if value == 249 then
    return "Statuscode Uint 81: Session Reach 90% Of The Flow Limit (249)"
  end
  if value == 250 then
    return "Statuscode Uint 81: Order Older Than Two Seconds (250)"
  end

  return "Statuscode Uint 81: Unknown("..value..")"
end

-- Dissect: Statuscode Uint 81
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_81.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_81.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_81.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.statuscode_uint_81, range, value, display)

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

-- Symboltype
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symboltype = {}

-- Size: Symboltype
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symboltype.size = 1

-- Display: Symboltype
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symboltype.display = function(value)
  if value == 1 then
    return "Symboltype: Numeric Product Id (1)"
  end
  if value == 2 then
    return "Symboltype: Text Product Id (2)"
  end
  if value == 3 then
    return "Symboltype: Numeric Product Id Long Format (3)"
  end
  if value == 4 then
    return "Symboltype: Text Product Id Long Format (4)"
  end

  return "Symboltype: Unknown("..value..")"
end

-- Dissect: Symboltype
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symboltype.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symboltype.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symboltype.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.symboltype, range, value, display)

  return offset + length, value
end

-- Systemtype
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.systemtype = {}

-- Size: Systemtype
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.systemtype.size = 1

-- Display: Systemtype
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.systemtype.display = function(value)
  if value == 10 then
    return "Systemtype: Options Regular Market Hours (10)"
  end
  if value == 20 then
    return "Systemtype: Futures Regular Market Hours (20)"
  end
  if value == 11 then
    return "Systemtype: Options After Market Hours (11)"
  end
  if value == 21 then
    return "Systemtype: Futures After Market Hours (21)"
  end

  return "Systemtype: Unknown("..value..")"
end

-- Dissect: Systemtype
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.systemtype.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.systemtype.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.systemtype.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.systemtype, range, value, display)

  return offset + length, value
end

-- Targetid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.targetid = {}

-- Size: Targetid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.targetid.size = 1

-- Display: Targetid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.targetid.display = function(value)
  if value == 3 then
    return "Targetid: Execution Report Including Head Office And Branch Offices In R 02 Format (3)"
  end
  if value == 4 then
    return "Targetid: Fcm (4)"
  end
  if value == 7 then
    return "Targetid: Drop Copy In R 02 Format (7)"
  end
  if value == 8 then
    return "Targetid: Clearing Member Order And Execution In R 02 Format (8)"
  end
  if value == 9 then
    return "Targetid: Clearing Member Execution In R 02 Format (9)"
  end
  if value == 13 then
    return "Targetid: Execution Report Including Head Office And Branch Offices In R 32 Format (13)"
  end
  if value == 17 then
    return "Targetid: Drop Copy In R 32 Format (17)"
  end
  if value == 18 then
    return "Targetid: Clearing Member Order And Execution In R 32 Format (18)"
  end
  if value == 19 then
    return "Targetid: Clearing Member Execution In R 32 Format (19)"
  end
  if value == 23 then
    return "Targetid: Execution Report Including Head Office And Branch Offices In R 06 Format (23)"
  end

  return "Targetid: Unknown("..value..")"
end

-- Dissect: Targetid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.targetid.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.targetid.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.targetid.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.targetid, range, value, display)

  return offset + length, value
end

-- Time In Force
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.time_in_force = {}

-- Size: Time In Force
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.time_in_force.size = 1

-- Display: Time In Force
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.time_in_force.display = function(value)
  if value == 0 then
    return "Time In Force: Rod (0)"
  end
  if value == 3 then
    return "Time In Force: Ioc (3)"
  end
  if value == 4 then
    return "Time In Force: Fok (4)"
  end
  if value == 8 then
    return "Time In Force: Automatically Cancelled After A Period Of Time (8)"
  end

  return "Time In Force: Unknown("..value..")"
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

-- Uniqid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.uniqid = {}

-- Size: Uniqid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.uniqid.size = 4

-- Display: Uniqid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.uniqid.display = function(value)
  return "Uniqid: "..value
end

-- Dissect: Uniqid
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.uniqid.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.uniqid.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.uniqid.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.uniqid, range, value, display)

  return offset + length, value
end

-- Userdefine
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.userdefine = {}

-- Size: Userdefine
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.userdefine.size = 8

-- Display: Userdefine
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.userdefine.display = function(value)
  return "Userdefine: "..value
end

-- Dissect: Userdefine
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.userdefine.dissect = function(buffer, offset, packet, parent)
  local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.userdefine.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.userdefine.display(value, buffer, offset, packet, parent)

  parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.userdefine, range, value, display)

  return offset + length, value
end

-- Version
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.version = {}

-- Size: Version
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.version.size = 1

-- Display: Version
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.version.display = function(value)
  if value == 0 then
    return "Version: Regular Trading (0)"
  end
  if value == 1 then
    return "Version: Regular Trading And Flex Trading (1)"
  end

  return "Version: Unknown("..value..")"
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

-- Subhdr
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.subhdr = {}

-- Size: Subhdr
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.subhdr.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_type_ext.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.preserve.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msgtimens.size

-- Display: Subhdr
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.subhdr.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Subhdr
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.subhdr.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type Ext: uint8
  index, msg_type_ext = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msg_type_ext.dissect(buffer, index, packet, parent)

  -- Preserve: uint8
  index, preserve = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.preserve.dissect(buffer, index, packet, parent)

  -- Msgtimens: uint32
  index, msgtimens = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.msgtimens.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Subhdr
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.subhdr.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.subhdr, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.subhdr.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.subhdr.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.subhdr.fields(buffer, offset, packet, parent)
  end
end

-- Flex Clearing Member Initiate Operation Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_clearing_member_initiate_operation_confirmed_message = {}

-- Size: Flex Clearing Member Initiate Operation Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_clearing_member_initiate_operation_confirmed_message.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.subhdr.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.partid.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_162.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.memberid.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.targetid.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reqcmseq.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_16.size

-- Display: Flex Clearing Member Initiate Operation Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_clearing_member_initiate_operation_confirmed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Flex Clearing Member Initiate Operation Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_clearing_member_initiate_operation_confirmed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Subhdr: Struct of 3 fields
  index, subhdr = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.subhdr.dissect(buffer, index, packet, parent)

  -- Partid: uint8
  index, partid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.partid.dissect(buffer, index, packet, parent)

  -- Statuscode Uint 162: uint16
  index, statuscode_uint_162 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_162.dissect(buffer, index, packet, parent)

  -- Memberid: uint16
  index, memberid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.memberid.dissect(buffer, index, packet, parent)

  -- Targetid: uint8
  index, targetid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.targetid.dissect(buffer, index, packet, parent)

  -- Reqcmseq: uint32
  index, reqcmseq = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reqcmseq.dissect(buffer, index, packet, parent)

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
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.subhdr.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.partid.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.memberid.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.targetid.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reqcmseq.size

-- Display: Flex Clearing Member Initiate Operation Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_clearing_member_initiate_operation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Flex Clearing Member Initiate Operation Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_clearing_member_initiate_operation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Subhdr: Struct of 3 fields
  index, subhdr = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.subhdr.dissect(buffer, index, packet, parent)

  -- Partid: uint8
  index, partid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.partid.dissect(buffer, index, packet, parent)

  -- Memberid: uint16
  index, memberid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.memberid.dissect(buffer, index, packet, parent)

  -- Targetid: uint8
  index, targetid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.targetid.dissect(buffer, index, packet, parent)

  -- Reqcmseq: uint32
  index, reqcmseq = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reqcmseq.dissect(buffer, index, packet, parent)

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
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_81.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.memberid.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.targetid.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reqcmseq.size

-- Display: Clearing Member Initiate Operation Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.clearing_member_initiate_operation_confirmed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clearing Member Initiate Operation Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.clearing_member_initiate_operation_confirmed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Statuscode Uint 81: uint8
  index, statuscode_uint_81 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_81.dissect(buffer, index, packet, parent)

  -- Memberid: uint16
  index, memberid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.memberid.dissect(buffer, index, packet, parent)

  -- Targetid: uint8
  index, targetid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.targetid.dissect(buffer, index, packet, parent)

  -- Reqcmseq: uint32
  index, reqcmseq = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reqcmseq.dissect(buffer, index, packet, parent)

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
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.memberid.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.targetid.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reqcmseq.size

-- Display: Clearing Member Initiate Operation Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.clearing_member_initiate_operation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clearing Member Initiate Operation Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.clearing_member_initiate_operation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Memberid: uint16
  index, memberid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.memberid.dissect(buffer, index, packet, parent)

  -- Targetid: uint8
  index, targetid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.targetid.dissect(buffer, index, packet, parent)

  -- Reqcmseq: uint32
  index, reqcmseq = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reqcmseq.dissect(buffer, index, packet, parent)

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

-- Transact Time Msgtimex
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msgtimex = {}

-- Size: Transact Time Msgtimex
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msgtimex.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epochs_uint_324.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.nanosecond.size

-- Display: Transact Time Msgtimex
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msgtimex.display = function(packet, parent, value)
  -- Check null value
  if value == nil then
    return "No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect Fields: Transact Time Msgtimex
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msgtimex.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Epochs Uint 324: uint32
  index, epochs_uint_324 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epochs_uint_324.dissect(buffer, index, packet, parent)

  -- Nanosecond: uint32
  index, nanosecond = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.nanosecond.dissect(buffer, index, packet, parent)

  -- Composite value
  local transact_time_msgtimex = UInt64.new(epochs_uint_324 * 1000000000 + nanosecond)

  return index, transact_time_msgtimex
end

-- Dissect: Transact Time Msgtimex
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msgtimex.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- An absolute time item carries its value from the moment it is created,
    -- so the parts are read here rather than taken from the fields below it
    local epochs_uint_324 = buffer(offset, 4):uint()
    local nanosecond = buffer(offset + 4, 4):uint()
    local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msgtimex.size
    -- A field's absolute time base is fixed when it is declared, so the
    -- protocol declares one per base and the preference picks between them
    local field = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.transact_time_msgtimex
    if taifex_taifexderivatives_clearingmember_tmp_v2_18_7.absolute_time_base == 1 then field = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.transact_time_msgtimex_utc end
    parent = parent:add(field, buffer(offset, length), NSTime.new(epochs_uint_324, nanosecond))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msgtimex.fields(buffer, offset, packet, parent)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msgtimex.fields(buffer, offset, packet, parent)
  end
end

-- Orgtranstime Msgtimex
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orgtranstime_msgtimex = {}

-- Size: Orgtranstime Msgtimex
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orgtranstime_msgtimex.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epochs_uint_324.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.nanosecond.size

-- Display: Orgtranstime Msgtimex
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orgtranstime_msgtimex.display = function(packet, parent, value)
  -- Check null value
  if value == nil then
    return "No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect Fields: Orgtranstime Msgtimex
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orgtranstime_msgtimex.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Epochs Uint 324: uint32
  index, epochs_uint_324 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epochs_uint_324.dissect(buffer, index, packet, parent)

  -- Nanosecond: uint32
  index, nanosecond = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.nanosecond.dissect(buffer, index, packet, parent)

  -- Composite value
  local orgtranstime_msgtimex = UInt64.new(epochs_uint_324 * 1000000000 + nanosecond)

  return index, orgtranstime_msgtimex
end

-- Dissect: Orgtranstime Msgtimex
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orgtranstime_msgtimex.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- An absolute time item carries its value from the moment it is created,
    -- so the parts are read here rather than taken from the fields below it
    local epochs_uint_324 = buffer(offset, 4):uint()
    local nanosecond = buffer(offset + 4, 4):uint()
    local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orgtranstime_msgtimex.size
    -- A field's absolute time base is fixed when it is declared, so the
    -- protocol declares one per base and the preference picks between them
    local field = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.orgtranstime_msgtimex
    if taifex_taifexderivatives_clearingmember_tmp_v2_18_7.absolute_time_base == 1 then field = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.orgtranstime_msgtimex_utc end
    parent = parent:add(field, buffer(offset, length), NSTime.new(epochs_uint_324, nanosecond))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orgtranstime_msgtimex.fields(buffer, offset, packet, parent)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orgtranstime_msgtimex.fields(buffer, offset, packet, parent)
  end
end

-- Legsym Symboltxtx
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legsym_symboltxtx = {}

-- Size: Legsym Symboltxtx
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legsym_symboltxtx.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prodid.size

-- Display: Legsym Symboltxtx
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legsym_symboltxtx.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Legsym Symboltxtx
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legsym_symboltxtx.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Prodid: char[20]
  index, prodid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prodid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Legsym Symboltxtx
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legsym_symboltxtx.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.legsym_symboltxtx, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legsym_symboltxtx.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legsym_symboltxtx.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legsym_symboltxtx.fields(buffer, offset, packet, parent)
  end
end

-- Legentrytxt
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legentrytxt = {}

-- Size: Legentrytxt
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legentrytxt.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legsym_symboltxtx.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legside_uint_81.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legqty_uint_162.size

-- Display: Legentrytxt
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legentrytxt.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Legentrytxt
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legentrytxt.fields = function(buffer, offset, packet, parent, legentrytxt_index)
  local index = offset

  -- Implicit Legentrytxt Index
  if legentrytxt_index ~= nil and show.indexes then
    local iteration = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.legentrytxt_index, legentrytxt_index)
    iteration:set_generated()
  end

  -- Legsym Symboltxtx: Struct of 1 fields
  index, legsym_symboltxtx = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legsym_symboltxtx.dissect(buffer, index, packet, parent)

  -- Legside Uint 81: uint8
  index, legside_uint_81 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legside_uint_81.dissect(buffer, index, packet, parent)

  -- Legqty Uint 162: uint16
  index, legqty_uint_162 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legqty_uint_162.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Legentrytxt
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legentrytxt.dissect = function(buffer, offset, packet, parent, legentrytxt_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.legentrytxt, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legentrytxt.fields(buffer, offset, packet, parent, legentrytxt_index)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legentrytxt.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legentrytxt.fields(buffer, offset, packet, parent, legentrytxt_index)
  end
end

-- Multilegtxt
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multilegtxt = {}

-- Calculate size of: Multilegtxt
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multilegtxt.size = function(buffer, offset)
  local index = 0

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.no_leg.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.combop.size

  -- Calculate field size from count
  local legentrytxt_count = buffer(offset + index - 2, 1):uint()
  index = index + legentrytxt_count * 23

  return index
end

-- Display: Multilegtxt
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multilegtxt.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Multilegtxt
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multilegtxt.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- No Leg: uint8
  index, no_leg = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.no_leg.dissect(buffer, index, packet, parent)

  -- Combop: uint8
  index, combop = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.combop.dissect(buffer, index, packet, parent)

  -- Repeating: Legentrytxt
  for legentrytxt_index = 1, no_leg do
    index, legentrytxt = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legentrytxt.dissect(buffer, index, packet, parent, legentrytxt_index)
  end

  return index
end

-- Dissect: Multilegtxt
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multilegtxt.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.multilegtxt, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multilegtxt.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multilegtxt.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multilegtxt.fields(buffer, offset, packet, parent)
  end
end

-- Legsym Symbolnumx
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legsym_symbolnumx = {}

-- Size: Legsym Symbolnumx
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legsym_symbolnumx.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq.size

-- Display: Legsym Symbolnumx
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legsym_symbolnumx.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Legsym Symbolnumx
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legsym_symbolnumx.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pseq: uint32
  index, pseq = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Legsym Symbolnumx
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legsym_symbolnumx.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.legsym_symbolnumx, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legsym_symbolnumx.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legsym_symbolnumx.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legsym_symbolnumx.fields(buffer, offset, packet, parent)
  end
end

-- Legentrynum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legentrynum = {}

-- Size: Legentrynum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legentrynum.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legsym_symbolnumx.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legside_uint_81.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legqty_uint_162.size

-- Display: Legentrynum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legentrynum.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Legentrynum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legentrynum.fields = function(buffer, offset, packet, parent, legentrynum_index)
  local index = offset

  -- Implicit Legentrynum Index
  if legentrynum_index ~= nil and show.indexes then
    local iteration = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.legentrynum_index, legentrynum_index)
    iteration:set_generated()
  end

  -- Legsym Symbolnumx: Struct of 1 fields
  index, legsym_symbolnumx = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legsym_symbolnumx.dissect(buffer, index, packet, parent)

  -- Legside Uint 81: uint8
  index, legside_uint_81 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legside_uint_81.dissect(buffer, index, packet, parent)

  -- Legqty Uint 162: uint16
  index, legqty_uint_162 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legqty_uint_162.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Legentrynum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legentrynum.dissect = function(buffer, offset, packet, parent, legentrynum_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.legentrynum, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legentrynum.fields(buffer, offset, packet, parent, legentrynum_index)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legentrynum.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legentrynum.fields(buffer, offset, packet, parent, legentrynum_index)
  end
end

-- Multilegnum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multilegnum = {}

-- Calculate size of: Multilegnum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multilegnum.size = function(buffer, offset)
  local index = 0

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.no_leg.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.combop.size

  -- Calculate field size from count
  local legentrynum_count = buffer(offset + index - 2, 1):uint()
  index = index + legentrynum_count * 7

  return index
end

-- Display: Multilegnum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multilegnum.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Multilegnum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multilegnum.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- No Leg: uint8
  index, no_leg = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.no_leg.dissect(buffer, index, packet, parent)

  -- Combop: uint8
  index, combop = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.combop.dissect(buffer, index, packet, parent)

  -- Repeating: Legentrynum
  for legentrynum_index = 1, no_leg do
    index, legentrynum = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legentrynum.dissect(buffer, index, packet, parent, legentrynum_index)
  end

  return index
end

-- Dissect: Multilegnum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multilegnum.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.multilegnum, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multilegnum.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multilegnum.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multilegnum.fields(buffer, offset, packet, parent)
  end
end

-- Symboltxtx
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symboltxtx = {}

-- Size: Symboltxtx
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symboltxtx.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prodid.size

-- Display: Symboltxtx
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symboltxtx.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symboltxtx
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symboltxtx.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Prodid: char[20]
  index, prodid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.prodid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symboltxtx
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symboltxtx.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.symboltxtx, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symboltxtx.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symboltxtx.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symboltxtx.fields(buffer, offset, packet, parent)
  end
end

-- Symbolnumx
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbolnumx = {}

-- Size: Symbolnumx
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbolnumx.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq.size

-- Display: Symbolnumx
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbolnumx.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbolnumx
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbolnumx.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pseq: uint32
  index, pseq = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbolnumx
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbolnumx.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.symbolnumx, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbolnumx.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbolnumx.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbolnumx.fields(buffer, offset, packet, parent)
  end
end

-- Sym Flexproductx
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_flexproductx = {}

-- Dissect: Sym Flexproductx
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_flexproductx.dissect = function(buffer, offset, packet, parent, msg_type_ext)
  -- Dissect Symbolnumx
  if msg_type_ext == 1 then
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbolnumx.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symboltxtx
  if msg_type_ext == 2 then
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symboltxtx.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Multilegnum
  if msg_type_ext == 3 then
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multilegnum.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Multilegtxt
  if msg_type_ext == 4 then
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.multilegtxt.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Flex Order Status Report Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_order_status_report_message = {}

-- Calculate size of: Flex Order Status Report Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_order_status_report_message.size = function(buffer, offset)
  local index = 0

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.subhdr.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.partid.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.no_leg.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_162.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.exec_type.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cmid.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcmid.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orderno.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ordid.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.userdefine.size

  -- Calculate runtime size of Sym Flexproductx field
  local sym_flexproductx_offset = offset + index
  local sym_flexproductx_type = buffer(sym_flexproductx_offset - 32, 1):uint()
  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_flexproductx.size(buffer, sym_flexproductx_offset, sym_flexproductx_type)

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.price.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investoracno.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investorflag.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.side.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_type.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.time_in_force.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.position_effect.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_px.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pxsubtotal.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cum_qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leaves_qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.beforeqty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orgtranstime_msgtimex.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msgtimex.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.targetid.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.uniqid.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptseq.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptsessionid.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptsessionseq.size

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

  -- Subhdr: Struct of 3 fields
  index, subhdr = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.subhdr.dissect(buffer, index, packet, parent)

  -- Partid: uint8
  index, partid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.partid.dissect(buffer, index, packet, parent)

  -- No Leg: uint8
  index, no_leg = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.no_leg.dissect(buffer, index, packet, parent)

  -- Statuscode Uint 162: uint16
  index, statuscode_uint_162 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_162.dissect(buffer, index, packet, parent)

  -- Exec Type: char
  index, exec_type = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.exec_type.dissect(buffer, index, packet, parent)

  -- Cmid: uint16
  index, cmid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cmid.dissect(buffer, index, packet, parent)

  -- Fcmid: uint16
  index, fcmid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcmid.dissect(buffer, index, packet, parent)

  -- Orderno: char [5]
  index, orderno = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orderno.dissect(buffer, index, packet, parent)

  -- Ordid: uint32
  index, ordid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ordid.dissect(buffer, index, packet, parent)

  -- Userdefine: char [8]
  index, userdefine = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.userdefine.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type Ext
  local msg_type_ext = buffer(index - 32, 1):uint()

  -- Sym Flexproductx: Runtime Type with 4 branches
  index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_flexproductx.dissect(buffer, index, packet, parent, msg_type_ext)

  -- Price: int32
  index, price = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.price.dissect(buffer, index, packet, parent)

  -- Qty: uint16
  index, qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.qty.dissect(buffer, index, packet, parent)

  -- Investoracno: uint32
  index, investoracno = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investoracno.dissect(buffer, index, packet, parent)

  -- Investorflag: char
  index, investorflag = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investorflag.dissect(buffer, index, packet, parent)

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

  -- Pxsubtotal: int64
  index, pxsubtotal = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pxsubtotal.dissect(buffer, index, packet, parent)

  -- Cum Qty: uint16
  index, cum_qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cum_qty.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint16
  index, leaves_qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leaves_qty.dissect(buffer, index, packet, parent)

  -- Beforeqty: uint16
  index, beforeqty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.beforeqty.dissect(buffer, index, packet, parent)

  -- Orgtranstime Msgtimex: Struct of 2 fields
  index, orgtranstime_msgtimex = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orgtranstime_msgtimex.dissect(buffer, index, packet, parent)

  -- Transact Time Msgtimex: Struct of 2 fields
  index, transact_time_msgtimex = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msgtimex.dissect(buffer, index, packet, parent)

  -- Targetid: uint8
  index, targetid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.targetid.dissect(buffer, index, packet, parent)

  -- Uniqid: uint32
  index, uniqid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.uniqid.dissect(buffer, index, packet, parent)

  -- Rptseq: uint32
  index, rptseq = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptseq.dissect(buffer, index, packet, parent)

  -- Rptsessionid: uint16
  index, rptsessionid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptsessionid.dissect(buffer, index, packet, parent)

  -- Rptsessionseq: uint32
  index, rptsessionseq = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptsessionseq.dissect(buffer, index, packet, parent)

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

-- Transact Time Msgtime
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msgtime = {}

-- Size: Transact Time Msgtime
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msgtime.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epochs_int_324.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ms.size

-- Display: Transact Time Msgtime
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msgtime.display = function(packet, parent, value)
  -- Check null value
  if value == nil then
    return "No Value"

  end

  -- Parse unix millisecond timestamp
  local seconds = (value / UInt64(1000)):tonumber()
  local milliseconds = (value % UInt64(1000)):tonumber()

  return os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect Fields: Transact Time Msgtime
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msgtime.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Epochs Int 324: int32
  index, epochs_int_324 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epochs_int_324.dissect(buffer, index, packet, parent)

  -- Ms: uint16
  index, ms = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ms.dissect(buffer, index, packet, parent)

  -- Composite value
  local transact_time_msgtime = epochs_int_324 * 1000 + ms

  return index, transact_time_msgtime
end

-- Dissect: Transact Time Msgtime
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msgtime.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- An absolute time item carries its value from the moment it is created,
    -- so the parts are read here rather than taken from the fields below it
    local epochs_int_324 = buffer(offset, 4):int()
    local ms = buffer(offset + 4, 2):uint()
    local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msgtime.size
    -- A field's absolute time base is fixed when it is declared, so the
    -- protocol declares one per base and the preference picks between them
    local field = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.transact_time_msgtime
    if taifex_taifexderivatives_clearingmember_tmp_v2_18_7.absolute_time_base == 1 then field = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.transact_time_msgtime_utc end
    parent = parent:add(field, buffer(offset, length), NSTime.new(epochs_int_324, ms * 1000000))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msgtime.fields(buffer, offset, packet, parent)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msgtime.fields(buffer, offset, packet, parent)
  end
end

-- Orgtranstime Msgtime
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orgtranstime_msgtime = {}

-- Size: Orgtranstime Msgtime
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orgtranstime_msgtime.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epochs_int_324.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ms.size

-- Display: Orgtranstime Msgtime
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orgtranstime_msgtime.display = function(packet, parent, value)
  -- Check null value
  if value == nil then
    return "No Value"

  end

  -- Parse unix millisecond timestamp
  local seconds = (value / UInt64(1000)):tonumber()
  local milliseconds = (value % UInt64(1000)):tonumber()

  return os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect Fields: Orgtranstime Msgtime
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orgtranstime_msgtime.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Epochs Int 324: int32
  index, epochs_int_324 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.epochs_int_324.dissect(buffer, index, packet, parent)

  -- Ms: uint16
  index, ms = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ms.dissect(buffer, index, packet, parent)

  -- Composite value
  local orgtranstime_msgtime = epochs_int_324 * 1000 + ms

  return index, orgtranstime_msgtime
end

-- Dissect: Orgtranstime Msgtime
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orgtranstime_msgtime.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- An absolute time item carries its value from the moment it is created,
    -- so the parts are read here rather than taken from the fields below it
    local epochs_int_324 = buffer(offset, 4):int()
    local ms = buffer(offset + 4, 2):uint()
    local length = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orgtranstime_msgtime.size
    -- A field's absolute time base is fixed when it is declared, so the
    -- protocol declares one per base and the preference picks between them
    local field = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.orgtranstime_msgtime
    if taifex_taifexderivatives_clearingmember_tmp_v2_18_7.absolute_time_base == 1 then field = omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.orgtranstime_msgtime_utc end
    parent = parent:add(field, buffer(offset, length), NSTime.new(epochs_int_324, ms * 1000000))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orgtranstime_msgtime.fields(buffer, offset, packet, parent)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orgtranstime_msgtime.fields(buffer, offset, packet, parent)
  end
end

-- Symboltext
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symboltext = {}

-- Size: Symboltext
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symboltext.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_char_2020.size

-- Display: Symboltext
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symboltext.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symboltext
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symboltext.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Char 2020: char [20]
  index, symbol_char_2020 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_char_2020.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symboltext
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symboltext.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.symboltext, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symboltext.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symboltext.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symboltext.fields(buffer, offset, packet, parent)
  end
end

-- Symbolnum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbolnum = {}

-- Size: Symbolnum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbolnum.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq_1.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq_2.size + 
  2 * taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legside_uint_822.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.combop.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_13.size

-- Display: Symbolnum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbolnum.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbolnum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbolnum.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pseq 1: uint16
  index, pseq_1 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq_1.dissect(buffer, index, packet, parent)

  -- Pseq 2: uint16
  index, pseq_2 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq_2.dissect(buffer, index, packet, parent)

  -- Array Of: Legside Uint 822
  for legside_uint_822_index = 1, 2 do
    index, legside_uint_822 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legside_uint_822.dissect(buffer, index, packet, parent, legside_uint_822_index)
  end

  -- Combop: uint8
  index, combop = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.combop.dissect(buffer, index, packet, parent)

  -- Reserved 13: uint8 [13]
  index, reserved_13 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_13.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbolnum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbolnum.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.symbolnum, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbolnum.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbolnum.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbolnum.fields(buffer, offset, packet, parent)
  end
end

-- Sym Symbolx
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_symbolx = {}

-- Dissect: Sym Symbolx
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_symbolx.dissect = function(buffer, offset, packet, parent, symboltype)
  -- Dissect Symbolnum
  if symboltype == 1 then
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbolnum.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symboltext
  if symboltype == 2 then
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symboltext.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Execution Report Including Head Office And Branch Offices Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.execution_report_including_head_office_and_branch_offices_message = {}

-- Calculate size of: Execution Report Including Head Office And Branch Offices Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.execution_report_including_head_office_and_branch_offices_message.size = function(buffer, offset)
  local index = 0

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_81.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.exec_type.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cmid.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcmid.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orderno.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ordid.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.userdefine.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symboltype.size

  -- Calculate runtime size of Sym Symbolx field
  local sym_symbolx_offset = offset + index
  local sym_symbolx_type = buffer(sym_symbolx_offset - 1, 1):uint()
  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_symbolx.size(buffer, sym_symbolx_offset, sym_symbolx_type)

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.price.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investoracno.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investorflag.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.side.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_type.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.time_in_force.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.position_effect.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_px.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pxsubtotal.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cum_qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leaves_qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.beforeqty.size

  index = index + 2 * taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legside_uint_822.size

  index = index + 2 * taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legpx.size

  index = index + 2 * taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legqty_uint_1624.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orgtranstime_msgtime.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msgtime.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.targetid.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.uniqid.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptseq.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.protocoltype.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptsessionid.size

  return index
end

-- Display: Execution Report Including Head Office And Branch Offices Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.execution_report_including_head_office_and_branch_offices_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Including Head Office And Branch Offices Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.execution_report_including_head_office_and_branch_offices_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Statuscode Uint 81: uint8
  index, statuscode_uint_81 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_81.dissect(buffer, index, packet, parent)

  -- Exec Type: char
  index, exec_type = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.exec_type.dissect(buffer, index, packet, parent)

  -- Cmid: uint16
  index, cmid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cmid.dissect(buffer, index, packet, parent)

  -- Fcmid: uint16
  index, fcmid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcmid.dissect(buffer, index, packet, parent)

  -- Orderno: char [5]
  index, orderno = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orderno.dissect(buffer, index, packet, parent)

  -- Ordid: uint32
  index, ordid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ordid.dissect(buffer, index, packet, parent)

  -- Userdefine: char [8]
  index, userdefine = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.userdefine.dissect(buffer, index, packet, parent)

  -- Symboltype: uint8
  index, symboltype = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symboltype.dissect(buffer, index, packet, parent)

  -- Sym Symbolx: Runtime Type with 2 branches
  index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_symbolx.dissect(buffer, index, packet, parent, symboltype)

  -- Price: int32
  index, price = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.price.dissect(buffer, index, packet, parent)

  -- Qty: uint16
  index, qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.qty.dissect(buffer, index, packet, parent)

  -- Investoracno: uint32
  index, investoracno = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investoracno.dissect(buffer, index, packet, parent)

  -- Investorflag: char
  index, investorflag = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investorflag.dissect(buffer, index, packet, parent)

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

  -- Pxsubtotal: int64
  index, pxsubtotal = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pxsubtotal.dissect(buffer, index, packet, parent)

  -- Cum Qty: uint16
  index, cum_qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cum_qty.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint16
  index, leaves_qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leaves_qty.dissect(buffer, index, packet, parent)

  -- Beforeqty: uint16
  index, beforeqty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.beforeqty.dissect(buffer, index, packet, parent)

  -- Array Of: Legside Uint 822
  for legside_uint_822_index = 1, 2 do
    index, legside_uint_822 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legside_uint_822.dissect(buffer, index, packet, parent, legside_uint_822_index)
  end

  -- Array Of: Legpx
  for legpx_index = 1, 2 do
    index, legpx = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legpx.dissect(buffer, index, packet, parent, legpx_index)
  end

  -- Array Of: Legqty Uint 1624
  for legqty_uint_1624_index = 1, 2 do
    index, legqty_uint_1624 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legqty_uint_1624.dissect(buffer, index, packet, parent, legqty_uint_1624_index)
  end

  -- Orgtranstime Msgtime: Struct of 2 fields
  index, orgtranstime_msgtime = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orgtranstime_msgtime.dissect(buffer, index, packet, parent)

  -- Transact Time Msgtime: Struct of 2 fields
  index, transact_time_msgtime = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msgtime.dissect(buffer, index, packet, parent)

  -- Targetid: uint8
  index, targetid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.targetid.dissect(buffer, index, packet, parent)

  -- Uniqid: uint32
  index, uniqid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.uniqid.dissect(buffer, index, packet, parent)

  -- Rptseq: uint32
  index, rptseq = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptseq.dissect(buffer, index, packet, parent)

  -- Protocoltype: uint8
  index, protocoltype = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.protocoltype.dissect(buffer, index, packet, parent)

  -- Rptsessionid: uint16
  index, rptsessionid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptsessionid.dissect(buffer, index, packet, parent)

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

-- Longsymboltext
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.longsymboltext = {}

-- Size: Longsymboltext
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.longsymboltext.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_char_4040.size

-- Display: Longsymboltext
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.longsymboltext.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Longsymboltext
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.longsymboltext.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Char 4040: char [40]
  index, symbol_char_4040 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symbol_char_4040.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Longsymboltext
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.longsymboltext.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.longsymboltext, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.longsymboltext.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.longsymboltext.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.longsymboltext.fields(buffer, offset, packet, parent)
  end
end

-- Longsymbolnum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.longsymbolnum = {}

-- Size: Longsymbolnum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.longsymbolnum.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq_1.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq_2.size + 
  2 * taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legside_uint_822.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.combop.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_33.size

-- Display: Longsymbolnum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.longsymbolnum.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Longsymbolnum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.longsymbolnum.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pseq 1: uint16
  index, pseq_1 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq_1.dissect(buffer, index, packet, parent)

  -- Pseq 2: uint16
  index, pseq_2 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pseq_2.dissect(buffer, index, packet, parent)

  -- Array Of: Legside Uint 822
  for legside_uint_822_index = 1, 2 do
    index, legside_uint_822 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legside_uint_822.dissect(buffer, index, packet, parent, legside_uint_822_index)
  end

  -- Combop: uint8
  index, combop = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.combop.dissect(buffer, index, packet, parent)

  -- Reserved 33: uint8 [33]
  index, reserved_33 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_33.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Longsymbolnum
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.longsymbolnum.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fields.longsymbolnum, buffer(offset, 0))
    local index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.longsymbolnum.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.longsymbolnum.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.longsymbolnum.fields(buffer, offset, packet, parent)
  end
end

-- Sym Longsymbolx
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_longsymbolx = {}

-- Dissect: Sym Longsymbolx
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_longsymbolx.dissect = function(buffer, offset, packet, parent, symboltype)
  -- Dissect Longsymbolnum
  if symboltype == 3 then
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.longsymbolnum.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Longsymboltext
  if symboltype == 4 then
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.longsymboltext.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Order Status Report Long Format Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_status_report_long_format_message = {}

-- Calculate size of: Order Status Report Long Format Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_status_report_long_format_message.size = function(buffer, offset)
  local index = 0

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_81.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.exec_type.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cmid.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcmid.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orderno.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ordid.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.userdefine.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symboltype.size

  -- Calculate runtime size of Sym Longsymbolx field
  local sym_longsymbolx_offset = offset + index
  local sym_longsymbolx_type = buffer(sym_longsymbolx_offset - 1, 1):uint()
  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_longsymbolx.size(buffer, sym_longsymbolx_offset, sym_longsymbolx_type)

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.price.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investoracno.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investorflag.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.side.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_type.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.time_in_force.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.position_effect.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_px.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pxsubtotal.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cum_qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leaves_qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.beforeqty.size

  index = index + 2 * taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legside_uint_822.size

  index = index + 2 * taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legpx.size

  index = index + 2 * taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legqty_uint_1624.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orgtranstime_msgtime.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msgtime.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.targetid.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.uniqid.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptseq.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.protocoltype.size

  return index
end

-- Display: Order Status Report Long Format Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_status_report_long_format_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Status Report Long Format Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_status_report_long_format_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Statuscode Uint 81: uint8
  index, statuscode_uint_81 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_81.dissect(buffer, index, packet, parent)

  -- Exec Type: char
  index, exec_type = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.exec_type.dissect(buffer, index, packet, parent)

  -- Cmid: uint16
  index, cmid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cmid.dissect(buffer, index, packet, parent)

  -- Fcmid: uint16
  index, fcmid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcmid.dissect(buffer, index, packet, parent)

  -- Orderno: char [5]
  index, orderno = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orderno.dissect(buffer, index, packet, parent)

  -- Ordid: uint32
  index, ordid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ordid.dissect(buffer, index, packet, parent)

  -- Userdefine: char [8]
  index, userdefine = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.userdefine.dissect(buffer, index, packet, parent)

  -- Symboltype: uint8
  index, symboltype = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symboltype.dissect(buffer, index, packet, parent)

  -- Sym Longsymbolx: Runtime Type with 2 branches
  index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_longsymbolx.dissect(buffer, index, packet, parent, symboltype)

  -- Price: int32
  index, price = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.price.dissect(buffer, index, packet, parent)

  -- Qty: uint16
  index, qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.qty.dissect(buffer, index, packet, parent)

  -- Investoracno: uint32
  index, investoracno = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investoracno.dissect(buffer, index, packet, parent)

  -- Investorflag: char
  index, investorflag = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investorflag.dissect(buffer, index, packet, parent)

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

  -- Pxsubtotal: int64
  index, pxsubtotal = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pxsubtotal.dissect(buffer, index, packet, parent)

  -- Cum Qty: uint16
  index, cum_qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cum_qty.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint16
  index, leaves_qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leaves_qty.dissect(buffer, index, packet, parent)

  -- Beforeqty: uint16
  index, beforeqty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.beforeqty.dissect(buffer, index, packet, parent)

  -- Array Of: Legside Uint 822
  for legside_uint_822_index = 1, 2 do
    index, legside_uint_822 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legside_uint_822.dissect(buffer, index, packet, parent, legside_uint_822_index)
  end

  -- Array Of: Legpx
  for legpx_index = 1, 2 do
    index, legpx = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legpx.dissect(buffer, index, packet, parent, legpx_index)
  end

  -- Array Of: Legqty Uint 1624
  for legqty_uint_1624_index = 1, 2 do
    index, legqty_uint_1624 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legqty_uint_1624.dissect(buffer, index, packet, parent, legqty_uint_1624_index)
  end

  -- Orgtranstime Msgtime: Struct of 2 fields
  index, orgtranstime_msgtime = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orgtranstime_msgtime.dissect(buffer, index, packet, parent)

  -- Transact Time Msgtime: Struct of 2 fields
  index, transact_time_msgtime = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msgtime.dissect(buffer, index, packet, parent)

  -- Targetid: uint8
  index, targetid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.targetid.dissect(buffer, index, packet, parent)

  -- Uniqid: uint32
  index, uniqid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.uniqid.dissect(buffer, index, packet, parent)

  -- Rptseq: uint32
  index, rptseq = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptseq.dissect(buffer, index, packet, parent)

  -- Protocoltype: uint8
  index, protocoltype = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.protocoltype.dissect(buffer, index, packet, parent)

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

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_81.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.exec_type.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cmid.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcmid.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orderno.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ordid.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.userdefine.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symboltype.size

  -- Calculate runtime size of Sym Symbolx field
  local sym_symbolx_offset = offset + index
  local sym_symbolx_type = buffer(sym_symbolx_offset - 1, 1):uint()
  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_symbolx.size(buffer, sym_symbolx_offset, sym_symbolx_type)

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.price.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investoracno.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investorflag.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.side.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ord_type.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.time_in_force.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.position_effect.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_px.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.last_qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pxsubtotal.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cum_qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leaves_qty.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.beforeqty.size

  index = index + 2 * taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legside_uint_822.size

  index = index + 2 * taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legpx.size

  index = index + 2 * taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legqty_uint_1624.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orgtranstime_msgtime.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msgtime.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.targetid.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.uniqid.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptseq.size

  index = index + taifex_taifexderivatives_clearingmember_tmp_v2_18_7.protocoltype.size

  return index
end

-- Display: Order Status Report Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_status_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Status Report Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_status_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Statuscode Uint 81: uint8
  index, statuscode_uint_81 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_81.dissect(buffer, index, packet, parent)

  -- Exec Type: char
  index, exec_type = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.exec_type.dissect(buffer, index, packet, parent)

  -- Cmid: uint16
  index, cmid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cmid.dissect(buffer, index, packet, parent)

  -- Fcmid: uint16
  index, fcmid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcmid.dissect(buffer, index, packet, parent)

  -- Orderno: char [5]
  index, orderno = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orderno.dissect(buffer, index, packet, parent)

  -- Ordid: uint32
  index, ordid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.ordid.dissect(buffer, index, packet, parent)

  -- Userdefine: char [8]
  index, userdefine = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.userdefine.dissect(buffer, index, packet, parent)

  -- Symboltype: uint8
  index, symboltype = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.symboltype.dissect(buffer, index, packet, parent)

  -- Sym Symbolx: Runtime Type with 2 branches
  index = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sym_symbolx.dissect(buffer, index, packet, parent, symboltype)

  -- Price: int32
  index, price = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.price.dissect(buffer, index, packet, parent)

  -- Qty: uint16
  index, qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.qty.dissect(buffer, index, packet, parent)

  -- Investoracno: uint32
  index, investoracno = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investoracno.dissect(buffer, index, packet, parent)

  -- Investorflag: char
  index, investorflag = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.investorflag.dissect(buffer, index, packet, parent)

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

  -- Pxsubtotal: int64
  index, pxsubtotal = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.pxsubtotal.dissect(buffer, index, packet, parent)

  -- Cum Qty: uint16
  index, cum_qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cum_qty.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint16
  index, leaves_qty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.leaves_qty.dissect(buffer, index, packet, parent)

  -- Beforeqty: uint16
  index, beforeqty = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.beforeqty.dissect(buffer, index, packet, parent)

  -- Array Of: Legside Uint 822
  for legside_uint_822_index = 1, 2 do
    index, legside_uint_822 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legside_uint_822.dissect(buffer, index, packet, parent, legside_uint_822_index)
  end

  -- Array Of: Legpx
  for legpx_index = 1, 2 do
    index, legpx = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legpx.dissect(buffer, index, packet, parent, legpx_index)
  end

  -- Array Of: Legqty Uint 1624
  for legqty_uint_1624_index = 1, 2 do
    index, legqty_uint_1624 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.legqty_uint_1624.dissect(buffer, index, packet, parent, legqty_uint_1624_index)
  end

  -- Orgtranstime Msgtime: Struct of 2 fields
  index, orgtranstime_msgtime = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.orgtranstime_msgtime.dissect(buffer, index, packet, parent)

  -- Transact Time Msgtime: Struct of 2 fields
  index, transact_time_msgtime = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.transact_time_msgtime.dissect(buffer, index, packet, parent)

  -- Targetid: uint8
  index, targetid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.targetid.dissect(buffer, index, packet, parent)

  -- Uniqid: uint32
  index, uniqid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.uniqid.dissect(buffer, index, packet, parent)

  -- Rptseq: uint32
  index, rptseq = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.rptseq.dissect(buffer, index, packet, parent)

  -- Protocoltype: uint8
  index, protocoltype = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.protocoltype.dissect(buffer, index, packet, parent)

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
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_81.size

-- Display: Connection Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.connection_confirmed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Connection Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.connection_confirmed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Statuscode Uint 81: uint8
  index, statuscode_uint_81 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_81.dissect(buffer, index, packet, parent)

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
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_81.size

-- Display: Confirm Connection Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.confirm_connection_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Confirm Connection Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.confirm_connection_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Statuscode Uint 81: uint8
  index, statuscode_uint_81 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_81.dissect(buffer, index, packet, parent)

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
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_81.size

-- Display: Logout Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.logout_confirmed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.logout_confirmed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Statuscode Uint 81: uint8
  index, statuscode_uint_81 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_81.dissect(buffer, index, packet, parent)

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

-- Activate Application System Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.activate_application_system_confirmed_message = {}

-- Size: Activate Application System Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.activate_application_system_confirmed_message.size =
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_81.size

-- Display: Activate Application System Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.activate_application_system_confirmed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Activate Application System Confirmed Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.activate_application_system_confirmed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Statuscode Uint 81: uint8
  index, statuscode_uint_81 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_81.dissect(buffer, index, packet, parent)

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
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_81.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.heart_bt_int.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.maxflowctrlcnt.size

-- Display: Activate Application System Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.activate_application_system_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Activate Application System Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.activate_application_system_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Statuscode Uint 81: uint8
  index, statuscode_uint_81 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_81.dissect(buffer, index, packet, parent)

  -- Heart Bt Int: uint8
  index, heart_bt_int = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.heart_bt_int.dissect(buffer, index, packet, parent)

  -- Maxflowctrlcnt: uint16
  index, maxflowctrlcnt = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.maxflowctrlcnt.dissect(buffer, index, packet, parent)

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
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_81.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.appendno.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcmid.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sessionid.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.systemtype.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.apcode.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.keyvalue.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.requeststartseq.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cancelordersec.size

-- Display: Request Logon Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.request_logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Logon Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.request_logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Statuscode Uint 81: uint8
  index, statuscode_uint_81 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_81.dissect(buffer, index, packet, parent)

  -- Appendno: uint16
  index, appendno = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.appendno.dissect(buffer, index, packet, parent)

  -- Fcmid: uint16
  index, fcmid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcmid.dissect(buffer, index, packet, parent)

  -- Sessionid: uint16
  index, sessionid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sessionid.dissect(buffer, index, packet, parent)

  -- Systemtype: uint8
  index, systemtype = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.systemtype.dissect(buffer, index, packet, parent)

  -- Apcode: uint8
  index, apcode = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.apcode.dissect(buffer, index, packet, parent)

  -- Keyvalue: uint8
  index, keyvalue = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.keyvalue.dissect(buffer, index, packet, parent)

  -- Requeststartseq: uint32
  index, requeststartseq = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.requeststartseq.dissect(buffer, index, packet, parent)

  -- Cancelordersec: uint8
  index, cancelordersec = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.cancelordersec.dissect(buffer, index, packet, parent)

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
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.subhdr.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_162.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.partid.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.endoutboundnum.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.reserved_8.size

-- Display: Final Sequential Number Notification For Group Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.final_sequential_number_notification_for_group_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Final Sequential Number Notification For Group Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.final_sequential_number_notification_for_group_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Subhdr: Struct of 3 fields
  index, subhdr = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.subhdr.dissect(buffer, index, packet, parent)

  -- Statuscode Uint 162: uint16
  index, statuscode_uint_162 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_162.dissect(buffer, index, packet, parent)

  -- Partid: uint8
  index, partid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.partid.dissect(buffer, index, packet, parent)

  -- Endoutboundnum: uint32
  index, endoutboundnum = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.endoutboundnum.dissect(buffer, index, packet, parent)

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
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_81.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.appendno.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.endoutboundnum.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.systemtype.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.encrypt_method.size

-- Display: Logon Notice Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.logon_notice_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Notice Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.logon_notice_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Statuscode Uint 81: uint8
  index, statuscode_uint_81 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_81.dissect(buffer, index, packet, parent)

  -- Appendno: uint16
  index, appendno = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.appendno.dissect(buffer, index, packet, parent)

  -- Endoutboundnum: uint32
  index, endoutboundnum = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.endoutboundnum.dissect(buffer, index, packet, parent)

  -- Systemtype: uint8
  index, systemtype = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.systemtype.dissect(buffer, index, packet, parent)

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
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_81.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.startinboundnum.size

-- Display: Wake Up Call Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.wake_up_call_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Wake Up Call Message
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.wake_up_call_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Statuscode Uint 81: uint8
  index, statuscode_uint_81 = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.statuscode_uint_81.dissect(buffer, index, packet, parent)

  -- Startinboundnum: uint32
  index, startinboundnum = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.startinboundnum.dissect(buffer, index, packet, parent)

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

-- Dissect: Payload
taifex_taifexderivatives_clearingmember_tmp_v2_18_7.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Wake Up Call Message
  if message_type == 10 then
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.wake_up_call_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Wake Up Call Confirmed Message
  if message_type == 20 then
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.wake_up_call_confirmed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Notice Message
  if message_type == 30 then
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.logon_notice_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Final Sequential Number Notification For Group Message
  if message_type == 230 then
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.final_sequential_number_notification_for_group_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request Logon Message
  if message_type == 40 then
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.request_logon_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Activate Application System Message
  if message_type == 50 then
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.activate_application_system_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Activate Application System Confirmed Message
  if message_type == 60 then
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.activate_application_system_confirmed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Message
  if message_type == 70 then
    return offset
  end
  -- Dissect Logout Confirmed Message
  if message_type == 80 then
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.logout_confirmed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Confirm Connection Message
  if message_type == 104 then
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.confirm_connection_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Connection Confirmed Message
  if message_type == 105 then
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.connection_confirmed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Status Report Message
  if message_type == 102 then
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_status_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Status Report Long Format Message
  if message_type == 132 then
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.order_status_report_long_format_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Including Head Office And Branch Offices Message
  if message_type == 106 then
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.execution_report_including_head_office_and_branch_offices_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Flex Order Status Report Message
  if message_type == 202 then
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_order_status_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Clearing Member Initiate Operation Message
  if message_type == 115 then
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.clearing_member_initiate_operation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Clearing Member Initiate Operation Confirmed Message
  if message_type == 116 then
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.clearing_member_initiate_operation_confirmed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Flex Clearing Member Initiate Operation Message
  if message_type == 215 then
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_clearing_member_initiate_operation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Flex Clearing Member Initiate Operation Confirmed Message
  if message_type == 216 then
    return taifex_taifexderivatives_clearingmember_tmp_v2_18_7.flex_clearing_member_initiate_operation_confirmed_message.dissect(buffer, offset, packet, parent)
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
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcmid.size + 
  taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sessionid.size

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

  -- Fcmid: uint16
  index, fcmid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.fcmid.dissect(buffer, index, packet, parent)

  -- Sessionid: uint16
  index, sessionid = taifex_taifexderivatives_clearingmember_tmp_v2_18_7.sessionid.dissect(buffer, index, packet, parent)

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
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Taifex TaifexDerivatives ClearingMember Tmp 2.18.7 (Tcp)
local function omi_taifex_taifexderivatives_clearingmember_tmp_v2_18_7_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not taifex_taifexderivatives_clearingmember_tmp_v2_18_7.tmp_message.requiredsize(buffer) then return false end

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
