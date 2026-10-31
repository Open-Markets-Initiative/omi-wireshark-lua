-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Eurex T7 Emdi Fast 14.0 Protocol
local omi_eurex_t7_emdi_fast_v14_0 = Proto("Omi.Eurex.T7.Emdi.Fast.v14.0", "Eurex T7 Emdi Fast 14.0")

-- Protocol table
local eurex_t7_emdi_fast_v14_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Eurex T7 Emdi Fast 14.0 Framing
omi_eurex_t7_emdi_fast_v14_0.fields.message = ProtoField.new("Message", "eurex.t7.emdi.fast.v14.0.message", ftypes.NONE)
omi_eurex_t7_emdi_fast_v14_0.fields.message_header = ProtoField.new("Message Header", "eurex.t7.emdi.fast.v14.0.messageheader", ftypes.NONE)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_map = ProtoField.new("Presence Map", "eurex.t7.emdi.fast.v14.0.presencemap", ftypes.BYTES)
omi_eurex_t7_emdi_fast_v14_0.fields.template_id = ProtoField.new("Template Id", "eurex.t7.emdi.fast.v14.0.templateid", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_stop = ProtoField.new("Stop Bit", "eurex.t7.emdi.fast.v14.0.presencestop", ftypes.UINT8, { [0] = "Clear", [1] = "Set" }, base.DEC)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_identified = ProtoField.new("Template Id", "eurex.t7.emdi.fast.v14.0.presencetemplateid", ftypes.UINT8, { [0] = "Repeated", [1] = "Sent" }, base.DEC)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_unused = ProtoField.new("Unused", "eurex.t7.emdi.fast.v14.0.presenceunused", ftypes.UINT8, nil, base.HEX)
eurex_t7_emdi_fast_v14_0.presence_bits = {}

-- Eurex T7 Emdi Fast 14.0 Presence Map Fields
omi_eurex_t7_emdi_fast_v14_0.fields.presence_sender_comp_id = ProtoField.new("Sender Comp Id", "eurex.t7.emdi.fast.v14.0.sendercompidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_sender_sub_id = ProtoField.new("Sender Sub Id", "eurex.t7.emdi.fast.v14.0.sendersubidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_msg_seq_num = ProtoField.new("Msg Seq Num", "eurex.t7.emdi.fast.v14.0.msgseqnumpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_market_segment_id = ProtoField.new("Market Segment Id", "eurex.t7.emdi.fast.v14.0.marketsegmentidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_trading_session_id = ProtoField.new("Trading Session Id", "eurex.t7.emdi.fast.v14.0.tradingsessionidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_market_condition = ProtoField.new("Market Condition", "eurex.t7.emdi.fast.v14.0.marketconditionpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_fast_market_indicator = ProtoField.new("Fast Market Indicator", "eurex.t7.emdi.fast.v14.0.fastmarketindicatorpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_instrument_scope_product_complex = ProtoField.new("Instrument Scope Product Complex", "eurex.t7.emdi.fast.v14.0.instrumentscopeproductcomplexpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_security_mass_status = ProtoField.new("Security Mass Status", "eurex.t7.emdi.fast.v14.0.securitymassstatuspresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_security_mass_trading_status = ProtoField.new("Security Mass Trading Status", "eurex.t7.emdi.fast.v14.0.securitymasstradingstatuspresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_mass_market_condition = ProtoField.new("Mass Market Condition", "eurex.t7.emdi.fast.v14.0.massmarketconditionpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_security_mass_trading_event = ProtoField.new("Security Mass Trading Event", "eurex.t7.emdi.fast.v14.0.securitymasstradingeventpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_mass_sold_out_indicator = ProtoField.new("Mass Sold Out Indicator", "eurex.t7.emdi.fast.v14.0.masssoldoutindicatorpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_tes_security_mass_status = ProtoField.new("Tes Security Mass Status", "eurex.t7.emdi.fast.v14.0.tessecuritymassstatuspresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_no_related_sym = ProtoField.new("No Related Sym", "eurex.t7.emdi.fast.v14.0.norelatedsympresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_last_fragment = ProtoField.new("Last Fragment", "eurex.t7.emdi.fast.v14.0.lastfragmentpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_security_status = ProtoField.new("Security Status", "eurex.t7.emdi.fast.v14.0.securitystatuspresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_security_trading_status = ProtoField.new("Security Trading Status", "eurex.t7.emdi.fast.v14.0.securitytradingstatuspresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_security_trading_event = ProtoField.new("Security Trading Event", "eurex.t7.emdi.fast.v14.0.securitytradingeventpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_sold_out_indicator = ProtoField.new("Sold Out Indicator", "eurex.t7.emdi.fast.v14.0.soldoutindicatorpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_high_px = ProtoField.new("High Px", "eurex.t7.emdi.fast.v14.0.highpxpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_low_px = ProtoField.new("Low Px", "eurex.t7.emdi.fast.v14.0.lowpxpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_tes_security_status = ProtoField.new("Tes Security Status", "eurex.t7.emdi.fast.v14.0.tessecuritystatuspresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_product_complex = ProtoField.new("Product Complex", "eurex.t7.emdi.fast.v14.0.productcomplexpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_leg_ratio_multiplier = ProtoField.new("Leg Ratio Multiplier", "eurex.t7.emdi.fast.v14.0.legratiomultiplierpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_no_cross_request_side_grp = ProtoField.new("No Cross Request Side Grp", "eurex.t7.emdi.fast.v14.0.nocrossrequestsidegrppresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "eurex.t7.emdi.fast.v14.0.lastmsgseqnumprocessedpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_refresh_indicator = ProtoField.new("Refresh Indicator", "eurex.t7.emdi.fast.v14.0.refreshindicatorpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_emdi_fast_v14_0.fields.presence_no_md_entries = ProtoField.new("No Md Entries", "eurex.t7.emdi.fast.v14.0.nomdentriespresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)

eurex_t7_emdi_fast_v14_0.presence_bits.named = {
  [109] = {
    [2] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_sender_comp_id,
    [3] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_sender_sub_id,
  },
  [97] = {
    [2] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_msg_seq_num,
    [3] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_sender_comp_id,
    [4] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_market_segment_id,
    [5] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_trading_session_id,
    [6] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_market_condition,
    [7] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_fast_market_indicator,
  },
  [99] = {
    [2] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_msg_seq_num,
    [3] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_sender_comp_id,
    [4] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_market_segment_id,
    [5] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_instrument_scope_product_complex,
    [6] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_security_mass_status,
    [7] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_security_mass_trading_status,
    [8] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_mass_market_condition,
    [9] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_fast_market_indicator,
    [10] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_security_mass_trading_event,
    [11] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_mass_sold_out_indicator,
    [12] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_tes_security_mass_status,
    [13] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_no_related_sym,
    [14] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_last_fragment,
  },
  [98] = {
    [2] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_msg_seq_num,
    [3] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_sender_comp_id,
    [4] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_market_segment_id,
    [5] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_security_status,
    [6] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_security_trading_status,
    [7] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_market_condition,
    [8] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_fast_market_indicator,
    [9] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_security_trading_event,
    [10] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_sold_out_indicator,
    [11] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_high_px,
    [12] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_low_px,
    [13] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_tes_security_status,
  },
  [94] = {
    [2] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_msg_seq_num,
    [3] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_sender_comp_id,
    [4] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_market_segment_id,
  },
  [124] = {
    [2] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_msg_seq_num,
    [3] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_sender_comp_id,
    [4] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_product_complex,
    [5] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_leg_ratio_multiplier,
    [6] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_last_fragment,
  },
  [95] = {
    [2] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_msg_seq_num,
    [3] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_sender_comp_id,
    [4] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_market_segment_id,
  },
  [96] = {
    [2] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_msg_seq_num,
    [3] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_no_cross_request_side_grp,
  },
  [93] = {
    [2] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_msg_seq_num,
    [3] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_sender_comp_id,
    [4] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_last_msg_seq_num_processed,
    [5] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_refresh_indicator,
    [6] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_market_segment_id,
    [7] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_product_complex,
    [8] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_security_status,
    [9] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_no_md_entries,
  },
  [512] = {
    [2] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_msg_seq_num,
    [3] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_sender_comp_id,
    [4] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_market_segment_id,
  },
  [100] = {
    [2] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_msg_seq_num,
    [3] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_sender_comp_id,
  },
  [516] = {
    [2] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_msg_seq_num,
    [3] = omi_eurex_t7_emdi_fast_v14_0.fields.presence_sender_comp_id,
  },
}

-- Eurex T7 Emdi Fast 14.0 Fields
omi_eurex_t7_emdi_fast_v14_0.fields.partition_id = ProtoField.new("Partition Id", "eurex.t7.emdi.fast.v14.0.partitionid", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.sender_comp_id = ProtoField.new("Sender Comp Id", "eurex.t7.emdi.fast.v14.0.sendercompid", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.packet_seq_num = ProtoField.new("Packet Seq Num", "eurex.t7.emdi.fast.v14.0.packetseqnum", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.sending_time = ProtoField.new("Sending Time", "eurex.t7.emdi.fast.v14.0.sendingtime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_eurex_t7_emdi_fast_v14_0.fields.performance_indicator = ProtoField.new("Performance Indicator", "eurex.t7.emdi.fast.v14.0.performanceindicator", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.msg_type = ProtoField.new("Msg Type", "eurex.t7.emdi.fast.v14.0.msgtype", ftypes.STRING)
omi_eurex_t7_emdi_fast_v14_0.fields.sender_sub_id = ProtoField.new("Sender Sub Id", "eurex.t7.emdi.fast.v14.0.sendersubid", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "eurex.t7.emdi.fast.v14.0.lastmsgseqnumprocessed", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "eurex.t7.emdi.fast.v14.0.msgseqnum", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.market_segment_id = ProtoField.new("Market Segment Id", "eurex.t7.emdi.fast.v14.0.marketsegmentid", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.trading_session_id = ProtoField.new("Trading Session Id", "eurex.t7.emdi.fast.v14.0.tradingsessionid", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "eurex.t7.emdi.fast.v14.0.tradingsessionsubid", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.trad_ses_status = ProtoField.new("Trad Ses Status", "eurex.t7.emdi.fast.v14.0.tradsesstatus", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.market_condition = ProtoField.new("Market Condition", "eurex.t7.emdi.fast.v14.0.marketcondition", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.fast_market_indicator = ProtoField.new("Fast Market Indicator", "eurex.t7.emdi.fast.v14.0.fastmarketindicator", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.transact_time = ProtoField.new("Transact Time", "eurex.t7.emdi.fast.v14.0.transacttime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_eurex_t7_emdi_fast_v14_0.fields.tes_trad_ses_status = ProtoField.new("Tes Trad Ses Status", "eurex.t7.emdi.fast.v14.0.testradsesstatus", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.instrument_scope_product_complex = ProtoField.new("Instrument Scope Product Complex", "eurex.t7.emdi.fast.v14.0.instrumentscopeproductcomplex", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.security_mass_status = ProtoField.new("Security Mass Status", "eurex.t7.emdi.fast.v14.0.securitymassstatus", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.security_mass_trading_status = ProtoField.new("Security Mass Trading Status", "eurex.t7.emdi.fast.v14.0.securitymasstradingstatus", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.mass_market_condition = ProtoField.new("Mass Market Condition", "eurex.t7.emdi.fast.v14.0.massmarketcondition", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.security_mass_trading_event = ProtoField.new("Security Mass Trading Event", "eurex.t7.emdi.fast.v14.0.securitymasstradingevent", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.mass_sold_out_indicator = ProtoField.new("Mass Sold Out Indicator", "eurex.t7.emdi.fast.v14.0.masssoldoutindicator", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.tes_security_mass_status = ProtoField.new("Tes Security Mass Status", "eurex.t7.emdi.fast.v14.0.tessecuritymassstatus", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.no_related_sym = ProtoField.new("No Related Sym", "eurex.t7.emdi.fast.v14.0.norelatedsym", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.security_id = ProtoField.new("Security Id", "eurex.t7.emdi.fast.v14.0.securityid", ftypes.INT64)
omi_eurex_t7_emdi_fast_v14_0.fields.security_id_source = ProtoField.new("Security Id Source", "eurex.t7.emdi.fast.v14.0.securityidsource", ftypes.STRING)
omi_eurex_t7_emdi_fast_v14_0.fields.security_status = ProtoField.new("Security Status", "eurex.t7.emdi.fast.v14.0.securitystatus", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.security_trading_status = ProtoField.new("Security Trading Status", "eurex.t7.emdi.fast.v14.0.securitytradingstatus", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.security_trading_event = ProtoField.new("Security Trading Event", "eurex.t7.emdi.fast.v14.0.securitytradingevent", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.sold_out_indicator = ProtoField.new("Sold Out Indicator", "eurex.t7.emdi.fast.v14.0.soldoutindicator", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.high_px = ProtoField.new("High Px", "eurex.t7.emdi.fast.v14.0.highpx", ftypes.DOUBLE)
omi_eurex_t7_emdi_fast_v14_0.fields.low_px = ProtoField.new("Low Px", "eurex.t7.emdi.fast.v14.0.lowpx", ftypes.DOUBLE)
omi_eurex_t7_emdi_fast_v14_0.fields.tes_security_status = ProtoField.new("Tes Security Status", "eurex.t7.emdi.fast.v14.0.tessecuritystatus", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.last_fragment = ProtoField.new("Last Fragment", "eurex.t7.emdi.fast.v14.0.lastfragment", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.no_md_entries = ProtoField.new("No Md Entries", "eurex.t7.emdi.fast.v14.0.nomdentries", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.md_origin_type = ProtoField.new("Md Origin Type", "eurex.t7.emdi.fast.v14.0.mdorigintype", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.md_update_action = ProtoField.new("Md Update Action", "eurex.t7.emdi.fast.v14.0.mdupdateaction", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.md_entry_type = ProtoField.new("Md Entry Type", "eurex.t7.emdi.fast.v14.0.mdentrytype", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.md_entry_px = ProtoField.new("Md Entry Px", "eurex.t7.emdi.fast.v14.0.mdentrypx", ftypes.DOUBLE)
omi_eurex_t7_emdi_fast_v14_0.fields.md_entry_size = ProtoField.new("Md Entry Size", "eurex.t7.emdi.fast.v14.0.mdentrysize", ftypes.DOUBLE)
omi_eurex_t7_emdi_fast_v14_0.fields.number_of_orders = ProtoField.new("Number Of Orders", "eurex.t7.emdi.fast.v14.0.numberoforders", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.md_price_level = ProtoField.new("Md Price Level", "eurex.t7.emdi.fast.v14.0.mdpricelevel", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.md_entry_time = ProtoField.new("Md Entry Time", "eurex.t7.emdi.fast.v14.0.mdentrytime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_eurex_t7_emdi_fast_v14_0.fields.potential_security_trading_event = ProtoField.new("Potential Security Trading Event", "eurex.t7.emdi.fast.v14.0.potentialsecuritytradingevent", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.quote_condition = ProtoField.new("Quote Condition", "eurex.t7.emdi.fast.v14.0.quotecondition", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.trd_type = ProtoField.new("Trd Type", "eurex.t7.emdi.fast.v14.0.trdtype", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.algorithmic_trade_indicator = ProtoField.new("Algorithmic Trade Indicator", "eurex.t7.emdi.fast.v14.0.algorithmictradeindicator", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.trade_condition = ProtoField.new("Trade Condition", "eurex.t7.emdi.fast.v14.0.tradecondition", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.multi_leg_reporting_type = ProtoField.new("Multi Leg Reporting Type", "eurex.t7.emdi.fast.v14.0.multilegreportingtype", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.multi_leg_price_model = ProtoField.new("Multi Leg Price Model", "eurex.t7.emdi.fast.v14.0.multilegpricemodel", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.aggressor_time = ProtoField.new("Aggressor Time", "eurex.t7.emdi.fast.v14.0.aggressortime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_eurex_t7_emdi_fast_v14_0.fields.request_time = ProtoField.new("Request Time", "eurex.t7.emdi.fast.v14.0.requesttime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_eurex_t7_emdi_fast_v14_0.fields.trans_bkd_time = ProtoField.new("Trans Bkd Time", "eurex.t7.emdi.fast.v14.0.transbkdtime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_eurex_t7_emdi_fast_v14_0.fields.aggressor_side = ProtoField.new("Aggressor Side", "eurex.t7.emdi.fast.v14.0.aggressorside", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.number_of_buy_orders = ProtoField.new("Number Of Buy Orders", "eurex.t7.emdi.fast.v14.0.numberofbuyorders", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.number_of_sell_orders = ProtoField.new("Number Of Sell Orders", "eurex.t7.emdi.fast.v14.0.numberofsellorders", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.number_of_buy_sides = ProtoField.new("Number Of Buy Sides", "eurex.t7.emdi.fast.v14.0.numberofbuysides", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.number_of_sell_sides = ProtoField.new("Number Of Sell Sides", "eurex.t7.emdi.fast.v14.0.numberofsellsides", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.total_num_of_trades = ProtoField.new("Total Num Of Trades", "eurex.t7.emdi.fast.v14.0.totalnumoftrades", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.resting_cxl_qty = ProtoField.new("Resting Cxl Qty", "eurex.t7.emdi.fast.v14.0.restingcxlqty", ftypes.DOUBLE)
omi_eurex_t7_emdi_fast_v14_0.fields.md_entry_id = ProtoField.new("Md Entry Id", "eurex.t7.emdi.fast.v14.0.mdentryid", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.non_disclosed_trade_volume = ProtoField.new("Non Disclosed Trade Volume", "eurex.t7.emdi.fast.v14.0.nondisclosedtradevolume", ftypes.DOUBLE)
omi_eurex_t7_emdi_fast_v14_0.fields.security_update_action = ProtoField.new("Security Update Action", "eurex.t7.emdi.fast.v14.0.securityupdateaction", ftypes.STRING)
omi_eurex_t7_emdi_fast_v14_0.fields.security_desc = ProtoField.new("Security Desc", "eurex.t7.emdi.fast.v14.0.securitydesc", ftypes.STRING)
omi_eurex_t7_emdi_fast_v14_0.fields.security_type = ProtoField.new("Security Type", "eurex.t7.emdi.fast.v14.0.securitytype", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.security_sub_type = ProtoField.new("Security Sub Type", "eurex.t7.emdi.fast.v14.0.securitysubtype", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.product_complex = ProtoField.new("Product Complex", "eurex.t7.emdi.fast.v14.0.productcomplex", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.leg_ratio_multiplier = ProtoField.new("Leg Ratio Multiplier", "eurex.t7.emdi.fast.v14.0.legratiomultiplier", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.quantity_scaling_factor = ProtoField.new("Quantity Scaling Factor", "eurex.t7.emdi.fast.v14.0.quantityscalingfactor", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.no_legs = ProtoField.new("No Legs", "eurex.t7.emdi.fast.v14.0.nolegs", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.leg_symbol = ProtoField.new("Leg Symbol", "eurex.t7.emdi.fast.v14.0.legsymbol", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.leg_security_id = ProtoField.new("Leg Security Id", "eurex.t7.emdi.fast.v14.0.legsecurityid", ftypes.INT64)
omi_eurex_t7_emdi_fast_v14_0.fields.leg_security_id_source = ProtoField.new("Leg Security Id Source", "eurex.t7.emdi.fast.v14.0.legsecurityidsource", ftypes.STRING)
omi_eurex_t7_emdi_fast_v14_0.fields.leg_security_type = ProtoField.new("Leg Security Type", "eurex.t7.emdi.fast.v14.0.legsecuritytype", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "eurex.t7.emdi.fast.v14.0.legratioqty", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.leg_side = ProtoField.new("Leg Side", "eurex.t7.emdi.fast.v14.0.legside", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.leg_price = ProtoField.new("Leg Price", "eurex.t7.emdi.fast.v14.0.legprice", ftypes.DOUBLE)
omi_eurex_t7_emdi_fast_v14_0.fields.related_price = ProtoField.new("Related Price", "eurex.t7.emdi.fast.v14.0.relatedprice", ftypes.DOUBLE)
omi_eurex_t7_emdi_fast_v14_0.fields.related_price_type = ProtoField.new("Related Price Type", "eurex.t7.emdi.fast.v14.0.relatedpricetype", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.trading_style = ProtoField.new("Trading Style", "eurex.t7.emdi.fast.v14.0.tradingstyle", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.no_market_segments = ProtoField.new("No Market Segments", "eurex.t7.emdi.fast.v14.0.nomarketsegments", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.implied_market_indicator = ProtoField.new("Implied Market Indicator", "eurex.t7.emdi.fast.v14.0.impliedmarketindicator", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.side = ProtoField.new("Side", "eurex.t7.emdi.fast.v14.0.side", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.order_qty = ProtoField.new("Order Qty", "eurex.t7.emdi.fast.v14.0.orderqty", ftypes.DOUBLE)
omi_eurex_t7_emdi_fast_v14_0.fields.cross_request_type = ProtoField.new("Cross Request Type", "eurex.t7.emdi.fast.v14.0.crossrequesttype", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.no_cross_request_side_grp = ProtoField.new("No Cross Request Side Grp", "eurex.t7.emdi.fast.v14.0.nocrossrequestsidegrp", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.input_source = ProtoField.new("Input Source", "eurex.t7.emdi.fast.v14.0.inputsource", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.refresh_indicator = ProtoField.new("Refresh Indicator", "eurex.t7.emdi.fast.v14.0.refreshindicator", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.last_update_time = ProtoField.new("Last Update Time", "eurex.t7.emdi.fast.v14.0.lastupdatetime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_eurex_t7_emdi_fast_v14_0.fields.md_book_type = ProtoField.new("Md Book Type", "eurex.t7.emdi.fast.v14.0.mdbooktype", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.md_sub_book_type = ProtoField.new("Md Sub Book Type", "eurex.t7.emdi.fast.v14.0.mdsubbooktype", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.maturity_date = ProtoField.new("Maturity Date", "eurex.t7.emdi.fast.v14.0.maturitydate", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.contract_date = ProtoField.new("Contract Date", "eurex.t7.emdi.fast.v14.0.contractdate", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.security_reference_data_supplement = ProtoField.new("Security Reference Data Supplement", "eurex.t7.emdi.fast.v14.0.securityreferencedatasupplement", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.strike_price = ProtoField.new("Strike Price", "eurex.t7.emdi.fast.v14.0.strikeprice", ftypes.DOUBLE)
omi_eurex_t7_emdi_fast_v14_0.fields.put_or_call = ProtoField.new("Put Or Call", "eurex.t7.emdi.fast.v14.0.putorcall", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.opt_attribute = ProtoField.new("Opt Attribute", "eurex.t7.emdi.fast.v14.0.optattribute", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.exercise_style = ProtoField.new("Exercise Style", "eurex.t7.emdi.fast.v14.0.exercisestyle", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.settl_method = ProtoField.new("Settl Method", "eurex.t7.emdi.fast.v14.0.settlmethod", ftypes.UINT32)
omi_eurex_t7_emdi_fast_v14_0.fields.related_security_id = ProtoField.new("Related Security Id", "eurex.t7.emdi.fast.v14.0.relatedsecurityid", ftypes.INT64)
omi_eurex_t7_emdi_fast_v14_0.fields.related_security_id_source = ProtoField.new("Related Security Id Source", "eurex.t7.emdi.fast.v14.0.relatedsecurityidsource", ftypes.STRING)

-- Eurex T7 Emdi Fast 14.0 Messages
omi_eurex_t7_emdi_fast_v14_0.fields.emd_packet_header = ProtoField.new("Emd Packet Header Framing", "eurex.t7.emdi.fast.v14.0.emdpacketheader", ftypes.NONE)
omi_eurex_t7_emdi_fast_v14_0.fields.beacon = ProtoField.new("Beacon Message", "eurex.t7.emdi.fast.v14.0.beacon", ftypes.NONE)
omi_eurex_t7_emdi_fast_v14_0.fields.product_state_change = ProtoField.new("Product State Change Message", "eurex.t7.emdi.fast.v14.0.productstatechange", ftypes.NONE)
omi_eurex_t7_emdi_fast_v14_0.fields.mass_instrument_state_change = ProtoField.new("Mass Instrument State Change Message", "eurex.t7.emdi.fast.v14.0.massinstrumentstatechange", ftypes.NONE)
omi_eurex_t7_emdi_fast_v14_0.fields.sec_mass_stat_grp = ProtoField.new("Sec Mass Stat Grp", "eurex.t7.emdi.fast.v14.0.secmassstatgrp", ftypes.NONE)
omi_eurex_t7_emdi_fast_v14_0.fields.instrument_state_change = ProtoField.new("Instrument State Change Message", "eurex.t7.emdi.fast.v14.0.instrumentstatechange", ftypes.NONE)
omi_eurex_t7_emdi_fast_v14_0.fields.depth_incremental = ProtoField.new("Depth Incremental Message", "eurex.t7.emdi.fast.v14.0.depthincremental", ftypes.NONE)
omi_eurex_t7_emdi_fast_v14_0.fields.depth_incremental_md_inc_grp = ProtoField.new("Depth Incremental Md Inc Grp", "eurex.t7.emdi.fast.v14.0.depthincrementalmdincgrp", ftypes.NONE)
omi_eurex_t7_emdi_fast_v14_0.fields.trade_entry_grp = ProtoField.new("Trade Entry Grp", "eurex.t7.emdi.fast.v14.0.tradeentrygrp", ftypes.NONE)
omi_eurex_t7_emdi_fast_v14_0.fields.complex_instrument_update = ProtoField.new("Complex Instrument Update Message", "eurex.t7.emdi.fast.v14.0.complexinstrumentupdate", ftypes.NONE)
omi_eurex_t7_emdi_fast_v14_0.fields.instrmt_leg_grp = ProtoField.new("Instrmt Leg Grp", "eurex.t7.emdi.fast.v14.0.instrmtleggrp", ftypes.NONE)
omi_eurex_t7_emdi_fast_v14_0.fields.complex_instrument_update_market_segment_grp = ProtoField.new("Complex Instrument Update Market Segment Grp", "eurex.t7.emdi.fast.v14.0.complexinstrumentupdatemarketsegmentgrp", ftypes.NONE)
omi_eurex_t7_emdi_fast_v14_0.fields.quote_request = ProtoField.new("Quote Request Message", "eurex.t7.emdi.fast.v14.0.quoterequest", ftypes.NONE)
omi_eurex_t7_emdi_fast_v14_0.fields.quot_req_grp = ProtoField.new("Quot Req Grp", "eurex.t7.emdi.fast.v14.0.quotreqgrp", ftypes.NONE)
omi_eurex_t7_emdi_fast_v14_0.fields.cross_request = ProtoField.new("Cross Request Message", "eurex.t7.emdi.fast.v14.0.crossrequest", ftypes.NONE)
omi_eurex_t7_emdi_fast_v14_0.fields.cross_request_side_grp = ProtoField.new("Cross Request Side Grp", "eurex.t7.emdi.fast.v14.0.crossrequestsidegrp", ftypes.NONE)
omi_eurex_t7_emdi_fast_v14_0.fields.depth_snapshot = ProtoField.new("Depth Snapshot Message", "eurex.t7.emdi.fast.v14.0.depthsnapshot", ftypes.NONE)
omi_eurex_t7_emdi_fast_v14_0.fields.md_ssh_grp = ProtoField.new("Md Ssh Grp", "eurex.t7.emdi.fast.v14.0.mdsshgrp", ftypes.NONE)
omi_eurex_t7_emdi_fast_v14_0.fields.top_of_book_implied = ProtoField.new("Top Of Book Implied Message", "eurex.t7.emdi.fast.v14.0.topofbookimplied", ftypes.NONE)
omi_eurex_t7_emdi_fast_v14_0.fields.top_of_book_implied_md_inc_grp = ProtoField.new("Top Of Book Implied Md Inc Grp", "eurex.t7.emdi.fast.v14.0.topofbookimpliedmdincgrp", ftypes.NONE)
omi_eurex_t7_emdi_fast_v14_0.fields.flexible_instrument_update = ProtoField.new("Flexible Instrument Update Message", "eurex.t7.emdi.fast.v14.0.flexibleinstrumentupdate", ftypes.NONE)
omi_eurex_t7_emdi_fast_v14_0.fields.flexible_instrument_update_market_segment_grp = ProtoField.new("Flexible Instrument Update Market Segment Grp", "eurex.t7.emdi.fast.v14.0.flexibleinstrumentupdatemarketsegmentgrp", ftypes.NONE)
omi_eurex_t7_emdi_fast_v14_0.fields.scaled_simple_instrument_update = ProtoField.new("Scaled Simple Instrument Update Message", "eurex.t7.emdi.fast.v14.0.scaledsimpleinstrumentupdate", ftypes.NONE)
omi_eurex_t7_emdi_fast_v14_0.fields.related_instrument_grp = ProtoField.new("Related Instrument Grp", "eurex.t7.emdi.fast.v14.0.relatedinstrumentgrp", ftypes.NONE)
omi_eurex_t7_emdi_fast_v14_0.fields.scaled_simple_instrument_update_market_segment_grp = ProtoField.new("Scaled Simple Instrument Update Market Segment Grp", "eurex.t7.emdi.fast.v14.0.scaledsimpleinstrumentupdatemarketsegmentgrp", ftypes.NONE)

-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------

-- read a fast presence map: seven bits an octet, closed by the stop bit
local function read_presence_map(buffer, offset)
  local bits = {}
  local masks = { 0x40, 0x20, 0x10, 0x08, 0x04, 0x02, 0x01 }
  local octet

  repeat
    if offset >= buffer:len() then error("truncated FAST presence map") end
    octet = buffer(offset, 1):uint()
    offset = offset + 1

    for _, mask in ipairs(masks) do
      bits[#bits + 1] = bit.band(octet, mask) ~= 0
    end
  until bit.band(octet, 0x80) ~= 0

  return bits, offset
end

-- add a presence map to the tree as the bitfield it is.
--
-- The first bit of the first octet says whether the template id was sent; the
-- rest gate the fields that read the map, in the order the template declares
-- them. Which field each bit is comes from the template, so named carries that
-- template's bits and each line reads as the field it gates. A bit the template
-- does not name falls back to its number.
-- one bit of an octet, as the one or nought a presence field is added with
local function presence_bit(octet, mask)
  if bit.band(octet, mask) ~= 0 then
    return 1
  end

  return 0
end

-- an octet's bits written out, so the map line shows the layout the fields
-- beneath it are read from
local function presence_layout(octet)
  local written = ""

  for position = 0, 7 do
    if position == 4 then written = written .. " " end

    written = written .. presence_bit(octet, bit.rshift(0x80, position))
  end

  return written
end

local function add_presence_map(parent, range, map_field, stop_field, identified, unused_field, named)
  local node = parent:add(map_field, range)
  local layout = {}

  for octet = 0, range:len() - 1 do
    local scope = node
    local octet_range = range:range(octet, 1)
    local octet_value = octet_range:uint()
    local first = octet * 7 + 1
    local unused = 0
    local unnamed = 0

    layout[#layout + 1] = presence_layout(octet_value)

    -- a map wider than one octet says which fields each octet carries, or every
    -- octet would show the same seven bits with nothing to tell them apart
    if range:len() > 1 then
      scope = node:add(map_field, octet_range)
      scope:set_text(string.format("Octet %d: fields %d to %d",
        octet + 1, first, first + 6))
    end

    -- the eighth bit closes the run rather than gating a field
    scope:add(stop_field, octet_range, presence_bit(octet_value, 0x80))

    for position = 0, 6 do
      local index = first + position
      local mask = bit.rshift(0x40, position)

      if index == 1 then
        scope:add(identified, octet_range, presence_bit(octet_value, mask))
      elseif named ~= nil and named[index] ~= nil then
        scope:add(named[index], octet_range, presence_bit(octet_value, mask))
      else
        -- carries no field this dissector names, so it joins the unused run
        unnamed = unnamed + 1
        unused = unused + bit.band(octet_value, mask)
      end
    end

    if unnamed > 0 then
      scope:add(unused_field, octet_range, unused)
    end
  end

  node:append_text(" (" .. table.concat(layout, " ") .. ")")

  return node
end

-- read an unsigned fast integer
local function read_stop_bit_unsigned(buffer, offset)
  local value = 0
  local octet

  repeat
    if offset >= buffer:len() then error("truncated FAST unsigned integer") end
    octet = buffer(offset, 1):uint()
    value = (value * 128) + bit.band(octet, 0x7f)
    offset = offset + 1
  until bit.band(octet, 0x80) ~= 0

  return value, offset
end

-- read a signed fast integer, its sign taken from the first octet
local function read_stop_bit_signed(buffer, offset)
  if offset >= buffer:len() then error("truncated FAST signed integer") end
  local octet = buffer(offset, 1):uint()
  local value = (bit.band(octet, 0x40) ~= 0) and -1 or 0

  repeat
    if offset >= buffer:len() then error("truncated FAST signed integer") end
    octet = buffer(offset, 1):uint()
    value = (value * 128) + bit.band(octet, 0x7f)
    offset = offset + 1
  until bit.band(octet, 0x80) ~= 0

  return value, offset
end

-- read a wide unsigned fast integer, which keeps its low bits as a UInt64
local function read_stop_bit_uint64(buffer, offset)
  local value = UInt64(0)
  local octet

  repeat
    if offset >= buffer:len() then error("truncated FAST unsigned integer") end
    octet = buffer(offset, 1):uint()
    value = value * 128 + bit.band(octet, 0x7f)
    offset = offset + 1
  until bit.band(octet, 0x80) ~= 0

  return value, offset
end

-- read a wide signed fast integer, which keeps its low bits as an Int64
local function read_stop_bit_int64(buffer, offset)
  if offset >= buffer:len() then error("truncated FAST signed integer") end
  local octet = buffer(offset, 1):uint()
  local value = (bit.band(octet, 0x40) ~= 0) and Int64(-1) or Int64(0)

  repeat
    if offset >= buffer:len() then error("truncated FAST signed integer") end
    octet = buffer(offset, 1):uint()
    value = value * 128 + bit.band(octet, 0x7f)
    offset = offset + 1
  until bit.band(octet, 0x80) ~= 0

  return value, offset
end

-- Optional integers shift by one on the wire: zero is the explicit null
local function read_nullable_unsigned(buffer, offset)
  local value
  value, offset = read_stop_bit_unsigned(buffer, offset)
  if value == 0 then return nil, offset end

  return value - 1, offset
end

local function read_nullable_signed(buffer, offset)
  local value
  value, offset = read_stop_bit_signed(buffer, offset)
  if value == 0 then return nil, offset end
  if value > 0 then return value - 1, offset end

  return value, offset
end

local function read_nullable_uint64(buffer, offset)
  local value
  value, offset = read_stop_bit_uint64(buffer, offset)
  if value == UInt64(0) then return nil, offset end

  return value - 1, offset
end

local function read_nullable_int64(buffer, offset)
  local value
  value, offset = read_stop_bit_int64(buffer, offset)
  if value == Int64(0) then return nil, offset end
  if value > Int64(0) then return value - 1, offset end

  return value, offset
end

-- read a fast ascii string, which runs to the octet carrying the stop bit
local function read_ascii_string(buffer, offset)
  local start = offset
  local octet

  repeat
    if offset >= buffer:len() then error("truncated FAST ascii string") end
    octet = buffer(offset, 1):uint()
    offset = offset + 1
  until bit.band(octet, 0x80) ~= 0

  -- the stop bit rides in the high bit of the last character, so that octet is
  -- masked back to the character it carries
  local text = buffer(start, offset - start):string()
  local last = bit.band(octet, 0x7f)

  -- a run closing on a nul carries no character there: the string ends before it
  if last == 0 then
    return text:sub(1, -2), offset
  end

  return text:sub(1, -2) .. string.char(last), offset
end

-- read a fast byte vector, counted by the length that precedes it
local function read_byte_vector(buffer, offset)
  local length
  length, offset = read_stop_bit_unsigned(buffer, offset)
  if offset + length > buffer:len() then error("truncated FAST byte vector") end

  return buffer(offset, length), offset + length
end

-- read a byte vector whose octets carry a big endian unsigned integer. A field
-- a receiver must be able to skip without decoding cannot be a stop bit
-- integer, which is as wide as its value needs, so a protocol carries the
-- integer in a vector of fixed width instead.
local function read_byte_vector_unsigned(buffer, offset)
  local range
  range, offset = read_byte_vector(buffer, offset)
  if range:len() == 0 then return 0, offset end
  if range:len() > 4 then error("FAST byte vector too wide for a 32 bit integer") end

  return range:uint(), offset
end

local function read_byte_vector_uint64(buffer, offset)
  local range
  range, offset = read_byte_vector(buffer, offset)
  if range:len() == 0 then return UInt64(0), offset end
  if range:len() > 8 then error("FAST byte vector too wide for a 64 bit integer") end

  return range:uint64(), offset
end

-- the same, read signed: an instant is accumulated signed because Wireshark
-- refuses arithmetic between an Int64 and a UInt64, and turning a count of
-- time units into a time divides it
local function read_byte_vector_int64(buffer, offset)
  local range
  range, offset = read_byte_vector(buffer, offset)
  if range:len() == 0 then return Int64(0), offset end
  if range:len() > 8 then error("FAST byte vector too wide for a 64 bit integer") end

  return range:int64(), offset
end

-- transfer operator state, isolated by directed transport stream
local stream_states = {}

local function state_for(packet)
  local key = tostring(packet.src) .. ":" .. tostring(packet.src_port)
    .. ">" .. tostring(packet.dst) .. ":" .. tostring(packet.dst_port)
  local state = stream_states[key]

  if state == nil then
    state = { values = {}, last_template_id = nil }
    stream_states[key] = state
  end

  return state
end


-----------------------------------------------------------------------
-- Eurex T7 Emdi Fast 14.0 Fields
-----------------------------------------------------------------------

-- Partition Id
eurex_t7_emdi_fast_v14_0.partition_id = {}

-- Dissect: Partition Id
eurex_t7_emdi_fast_v14_0.partition_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.partition_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.partition_id, range, 0)
    absent:set_text("Partition Id: No Value")
  end

  return offset, value
end

-- Sender Comp Id (Sent)
eurex_t7_emdi_fast_v14_0.sender_comp_id_sent = {}

-- Dissect: Sender Comp Id (Sent)
eurex_t7_emdi_fast_v14_0.sender_comp_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.sender_comp_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.sender_comp_id, range, 0)
    absent:set_text("Sender Comp Id: No Value")
  end

  return offset, value
end

-- Sender Comp Id (Copy)
eurex_t7_emdi_fast_v14_0.sender_comp_id_copy = {}

-- Dissect: Sender Comp Id (Copy)
eurex_t7_emdi_fast_v14_0.sender_comp_id_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Sender Comp Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.sender_comp_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.sender_comp_id, range, 0)
    absent:set_text("Sender Comp Id: No Value")
  end

  return offset, value
end

-- Packet Seq Num
eurex_t7_emdi_fast_v14_0.packet_seq_num = {}

-- Dissect: Packet Seq Num
eurex_t7_emdi_fast_v14_0.packet_seq_num.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.packet_seq_num, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.packet_seq_num, range, 0)
    absent:set_text("Packet Seq Num: No Value")
  end

  return offset, value
end

-- Sending Time
eurex_t7_emdi_fast_v14_0.sending_time = {}

-- Dissect: Sending Time
eurex_t7_emdi_fast_v14_0.sending_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.sending_time, range, NSTime.new(0, 0))
    absent:set_text("Sending Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.sending_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Performance Indicator
eurex_t7_emdi_fast_v14_0.performance_indicator = {}

-- Dissect: Performance Indicator
eurex_t7_emdi_fast_v14_0.performance_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.performance_indicator, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.performance_indicator, range, 0)
    absent:set_text("Performance Indicator: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
eurex_t7_emdi_fast_v14_0.msg_type_constant_0 = {}

-- Display: Msg Type (Constant)
eurex_t7_emdi_fast_v14_0.msg_type_constant_0.display = function(value)
  if value == nil then
    return "Msg Type: No Value"
  end

  if value == "0" then
    return "Msg Type: Heartbeat (0)"
  end
  if value == "BP" then
    return "Msg Type: Security Definition Update Report (BP)"
  end
  if value == "CO" then
    return "Msg Type: Security Mass Status (CO)"
  end
  if value == "R" then
    return "Msg Type: Quote Request (R)"
  end
  if value == "U16" then
    return "Msg Type: Cross Request (U16)"
  end
  if value == "W" then
    return "Msg Type: Market Data Snapshot Full Refresh (W)"
  end
  if value == "X" then
    return "Msg Type: Market Data Incremental Refresh (X)"
  end
  if value == "f" then
    return "Msg Type: Security Status (f)"
  end
  if value == "h" then
    return "Msg Type: Trading Session Status (h)"
  end

  return "Msg Type: "..value
end

-- Dissect: Msg Type (Constant)
eurex_t7_emdi_fast_v14_0.msg_type_constant_0.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "0"

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.msg_type_constant_0.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.msg_type, range, "", display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.msg_type, range, value, display)
  end

  return offset, value
end

-- Msg Type (Constant)
eurex_t7_emdi_fast_v14_0.msg_type_constant_h = {}

-- Display: Msg Type (Constant)
eurex_t7_emdi_fast_v14_0.msg_type_constant_h.display = function(value)
  if value == nil then
    return "Msg Type: No Value"
  end

  if value == "0" then
    return "Msg Type: Heartbeat (0)"
  end
  if value == "BP" then
    return "Msg Type: Security Definition Update Report (BP)"
  end
  if value == "CO" then
    return "Msg Type: Security Mass Status (CO)"
  end
  if value == "R" then
    return "Msg Type: Quote Request (R)"
  end
  if value == "U16" then
    return "Msg Type: Cross Request (U16)"
  end
  if value == "W" then
    return "Msg Type: Market Data Snapshot Full Refresh (W)"
  end
  if value == "X" then
    return "Msg Type: Market Data Incremental Refresh (X)"
  end
  if value == "f" then
    return "Msg Type: Security Status (f)"
  end
  if value == "h" then
    return "Msg Type: Trading Session Status (h)"
  end

  return "Msg Type: "..value
end

-- Dissect: Msg Type (Constant)
eurex_t7_emdi_fast_v14_0.msg_type_constant_h.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "h"

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.msg_type_constant_h.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.msg_type, range, "", display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.msg_type, range, value, display)
  end

  return offset, value
end

-- Msg Type (Constant)
eurex_t7_emdi_fast_v14_0.msg_type_constant_co = {}

-- Display: Msg Type (Constant)
eurex_t7_emdi_fast_v14_0.msg_type_constant_co.display = function(value)
  if value == nil then
    return "Msg Type: No Value"
  end

  if value == "0" then
    return "Msg Type: Heartbeat (0)"
  end
  if value == "BP" then
    return "Msg Type: Security Definition Update Report (BP)"
  end
  if value == "CO" then
    return "Msg Type: Security Mass Status (CO)"
  end
  if value == "R" then
    return "Msg Type: Quote Request (R)"
  end
  if value == "U16" then
    return "Msg Type: Cross Request (U16)"
  end
  if value == "W" then
    return "Msg Type: Market Data Snapshot Full Refresh (W)"
  end
  if value == "X" then
    return "Msg Type: Market Data Incremental Refresh (X)"
  end
  if value == "f" then
    return "Msg Type: Security Status (f)"
  end
  if value == "h" then
    return "Msg Type: Trading Session Status (h)"
  end

  return "Msg Type: "..value
end

-- Dissect: Msg Type (Constant)
eurex_t7_emdi_fast_v14_0.msg_type_constant_co.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "CO"

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.msg_type_constant_co.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.msg_type, range, "", display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.msg_type, range, value, display)
  end

  return offset, value
end

-- Msg Type (Constant)
eurex_t7_emdi_fast_v14_0.msg_type_constant_f = {}

-- Display: Msg Type (Constant)
eurex_t7_emdi_fast_v14_0.msg_type_constant_f.display = function(value)
  if value == nil then
    return "Msg Type: No Value"
  end

  if value == "0" then
    return "Msg Type: Heartbeat (0)"
  end
  if value == "BP" then
    return "Msg Type: Security Definition Update Report (BP)"
  end
  if value == "CO" then
    return "Msg Type: Security Mass Status (CO)"
  end
  if value == "R" then
    return "Msg Type: Quote Request (R)"
  end
  if value == "U16" then
    return "Msg Type: Cross Request (U16)"
  end
  if value == "W" then
    return "Msg Type: Market Data Snapshot Full Refresh (W)"
  end
  if value == "X" then
    return "Msg Type: Market Data Incremental Refresh (X)"
  end
  if value == "f" then
    return "Msg Type: Security Status (f)"
  end
  if value == "h" then
    return "Msg Type: Trading Session Status (h)"
  end

  return "Msg Type: "..value
end

-- Dissect: Msg Type (Constant)
eurex_t7_emdi_fast_v14_0.msg_type_constant_f.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "f"

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.msg_type_constant_f.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.msg_type, range, "", display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.msg_type, range, value, display)
  end

  return offset, value
end

-- Msg Type (Constant)
eurex_t7_emdi_fast_v14_0.msg_type_constant_x = {}

-- Display: Msg Type (Constant)
eurex_t7_emdi_fast_v14_0.msg_type_constant_x.display = function(value)
  if value == nil then
    return "Msg Type: No Value"
  end

  if value == "0" then
    return "Msg Type: Heartbeat (0)"
  end
  if value == "BP" then
    return "Msg Type: Security Definition Update Report (BP)"
  end
  if value == "CO" then
    return "Msg Type: Security Mass Status (CO)"
  end
  if value == "R" then
    return "Msg Type: Quote Request (R)"
  end
  if value == "U16" then
    return "Msg Type: Cross Request (U16)"
  end
  if value == "W" then
    return "Msg Type: Market Data Snapshot Full Refresh (W)"
  end
  if value == "X" then
    return "Msg Type: Market Data Incremental Refresh (X)"
  end
  if value == "f" then
    return "Msg Type: Security Status (f)"
  end
  if value == "h" then
    return "Msg Type: Trading Session Status (h)"
  end

  return "Msg Type: "..value
end

-- Dissect: Msg Type (Constant)
eurex_t7_emdi_fast_v14_0.msg_type_constant_x.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "X"

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.msg_type_constant_x.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.msg_type, range, "", display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.msg_type, range, value, display)
  end

  return offset, value
end

-- Msg Type (Constant)
eurex_t7_emdi_fast_v14_0.msg_type_constant_bp = {}

-- Display: Msg Type (Constant)
eurex_t7_emdi_fast_v14_0.msg_type_constant_bp.display = function(value)
  if value == nil then
    return "Msg Type: No Value"
  end

  if value == "0" then
    return "Msg Type: Heartbeat (0)"
  end
  if value == "BP" then
    return "Msg Type: Security Definition Update Report (BP)"
  end
  if value == "CO" then
    return "Msg Type: Security Mass Status (CO)"
  end
  if value == "R" then
    return "Msg Type: Quote Request (R)"
  end
  if value == "U16" then
    return "Msg Type: Cross Request (U16)"
  end
  if value == "W" then
    return "Msg Type: Market Data Snapshot Full Refresh (W)"
  end
  if value == "X" then
    return "Msg Type: Market Data Incremental Refresh (X)"
  end
  if value == "f" then
    return "Msg Type: Security Status (f)"
  end
  if value == "h" then
    return "Msg Type: Trading Session Status (h)"
  end

  return "Msg Type: "..value
end

-- Dissect: Msg Type (Constant)
eurex_t7_emdi_fast_v14_0.msg_type_constant_bp.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "BP"

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.msg_type_constant_bp.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.msg_type, range, "", display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.msg_type, range, value, display)
  end

  return offset, value
end

-- Msg Type (Constant)
eurex_t7_emdi_fast_v14_0.msg_type_constant_r = {}

-- Display: Msg Type (Constant)
eurex_t7_emdi_fast_v14_0.msg_type_constant_r.display = function(value)
  if value == nil then
    return "Msg Type: No Value"
  end

  if value == "0" then
    return "Msg Type: Heartbeat (0)"
  end
  if value == "BP" then
    return "Msg Type: Security Definition Update Report (BP)"
  end
  if value == "CO" then
    return "Msg Type: Security Mass Status (CO)"
  end
  if value == "R" then
    return "Msg Type: Quote Request (R)"
  end
  if value == "U16" then
    return "Msg Type: Cross Request (U16)"
  end
  if value == "W" then
    return "Msg Type: Market Data Snapshot Full Refresh (W)"
  end
  if value == "X" then
    return "Msg Type: Market Data Incremental Refresh (X)"
  end
  if value == "f" then
    return "Msg Type: Security Status (f)"
  end
  if value == "h" then
    return "Msg Type: Trading Session Status (h)"
  end

  return "Msg Type: "..value
end

-- Dissect: Msg Type (Constant)
eurex_t7_emdi_fast_v14_0.msg_type_constant_r.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "R"

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.msg_type_constant_r.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.msg_type, range, "", display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.msg_type, range, value, display)
  end

  return offset, value
end

-- Msg Type (Constant)
eurex_t7_emdi_fast_v14_0.msg_type_constant_u16 = {}

-- Display: Msg Type (Constant)
eurex_t7_emdi_fast_v14_0.msg_type_constant_u16.display = function(value)
  if value == nil then
    return "Msg Type: No Value"
  end

  if value == "0" then
    return "Msg Type: Heartbeat (0)"
  end
  if value == "BP" then
    return "Msg Type: Security Definition Update Report (BP)"
  end
  if value == "CO" then
    return "Msg Type: Security Mass Status (CO)"
  end
  if value == "R" then
    return "Msg Type: Quote Request (R)"
  end
  if value == "U16" then
    return "Msg Type: Cross Request (U16)"
  end
  if value == "W" then
    return "Msg Type: Market Data Snapshot Full Refresh (W)"
  end
  if value == "X" then
    return "Msg Type: Market Data Incremental Refresh (X)"
  end
  if value == "f" then
    return "Msg Type: Security Status (f)"
  end
  if value == "h" then
    return "Msg Type: Trading Session Status (h)"
  end

  return "Msg Type: "..value
end

-- Dissect: Msg Type (Constant)
eurex_t7_emdi_fast_v14_0.msg_type_constant_u16.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "U16"

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.msg_type_constant_u16.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.msg_type, range, "", display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.msg_type, range, value, display)
  end

  return offset, value
end

-- Msg Type (Constant)
eurex_t7_emdi_fast_v14_0.msg_type_constant_w = {}

-- Display: Msg Type (Constant)
eurex_t7_emdi_fast_v14_0.msg_type_constant_w.display = function(value)
  if value == nil then
    return "Msg Type: No Value"
  end

  if value == "0" then
    return "Msg Type: Heartbeat (0)"
  end
  if value == "BP" then
    return "Msg Type: Security Definition Update Report (BP)"
  end
  if value == "CO" then
    return "Msg Type: Security Mass Status (CO)"
  end
  if value == "R" then
    return "Msg Type: Quote Request (R)"
  end
  if value == "U16" then
    return "Msg Type: Cross Request (U16)"
  end
  if value == "W" then
    return "Msg Type: Market Data Snapshot Full Refresh (W)"
  end
  if value == "X" then
    return "Msg Type: Market Data Incremental Refresh (X)"
  end
  if value == "f" then
    return "Msg Type: Security Status (f)"
  end
  if value == "h" then
    return "Msg Type: Trading Session Status (h)"
  end

  return "Msg Type: "..value
end

-- Dissect: Msg Type (Constant)
eurex_t7_emdi_fast_v14_0.msg_type_constant_w.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "W"

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.msg_type_constant_w.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.msg_type, range, "", display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.msg_type, range, value, display)
  end

  return offset, value
end

-- Sender Sub Id
eurex_t7_emdi_fast_v14_0.sender_sub_id = {}

-- Dissect: Sender Sub Id
eurex_t7_emdi_fast_v14_0.sender_sub_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Sender Sub Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.sender_sub_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.sender_sub_id, range, 0)
    absent:set_text("Sender Sub Id: No Value")
  end

  return offset, value
end

-- Last Msg Seq Num Processed (Sent)
eurex_t7_emdi_fast_v14_0.last_msg_seq_num_processed_sent = {}

-- Dissect: Last Msg Seq Num Processed (Sent)
eurex_t7_emdi_fast_v14_0.last_msg_seq_num_processed_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.last_msg_seq_num_processed, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.last_msg_seq_num_processed, range, 0)
    absent:set_text("Last Msg Seq Num Processed: No Value")
  end

  return offset, value
end

-- Last Msg Seq Num Processed (Increment)
eurex_t7_emdi_fast_v14_0.last_msg_seq_num_processed_increment = {}

-- Dissect: Last Msg Seq Num Processed (Increment)
eurex_t7_emdi_fast_v14_0.last_msg_seq_num_processed_increment.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = state.values[key]
    if value ~= nil then value = value + 1 end
  end

  state.values[key] = value


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.last_msg_seq_num_processed, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.last_msg_seq_num_processed, range, 0)
    absent:set_text("Last Msg Seq Num Processed: No Value")
  end

  return offset, value
end

-- Msg Seq Num (Increment)
eurex_t7_emdi_fast_v14_0.msg_seq_num_increment_required = {}

-- Dissect: Msg Seq Num (Increment)
eurex_t7_emdi_fast_v14_0.msg_seq_num_increment_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = state.values[key]
    if value ~= nil then value = value + 1 end
  end

  state.values[key] = value

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Msg Seq Num was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.msg_seq_num, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.msg_seq_num, range, 0)
    absent:set_text("Msg Seq Num: No Value")
  end

  return offset, value
end

-- Msg Seq Num (Increment)
eurex_t7_emdi_fast_v14_0.msg_seq_num_increment_optional = {}

-- Dissect: Msg Seq Num (Increment)
eurex_t7_emdi_fast_v14_0.msg_seq_num_increment_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = state.values[key]
    if value ~= nil then value = value + 1 end
  end

  state.values[key] = value


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.msg_seq_num, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.msg_seq_num, range, 0)
    absent:set_text("Msg Seq Num: No Value")
  end

  return offset, value
end

-- Market Segment Id (Copy)
eurex_t7_emdi_fast_v14_0.market_segment_id_copy = {}

-- Dissect: Market Segment Id (Copy)
eurex_t7_emdi_fast_v14_0.market_segment_id_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Market Segment Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.market_segment_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.market_segment_id, range, 0)
    absent:set_text("Market Segment Id: No Value")
  end

  return offset, value
end

-- Market Segment Id (Sent)
eurex_t7_emdi_fast_v14_0.market_segment_id_sent = {}

-- Dissect: Market Segment Id (Sent)
eurex_t7_emdi_fast_v14_0.market_segment_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.market_segment_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.market_segment_id, range, 0)
    absent:set_text("Market Segment Id: No Value")
  end

  return offset, value
end

-- Trading Session Id (Default)
eurex_t7_emdi_fast_v14_0.trading_session_id_default_0 = {}

-- Display: Trading Session Id (Default)
eurex_t7_emdi_fast_v14_0.trading_session_id_default_0.display = function(value)
  if value == nil then
    return "Trading Session Id: No Value"
  end

  if value == 0 then
    return "Trading Session Id: Day (1)"
  end
  if value == 1 then
    return "Trading Session Id: Morning (3)"
  end
  if value == 2 then
    return "Trading Session Id: Evening (5)"
  end
  if value == 3 then
    return "Trading Session Id: AfterHours (6)"
  end
  if value == 4 then
    return "Trading Session Id: Holiday (7)"
  end

  return "Trading Session Id: Unknown("..value..")"
end

-- Dissect: Trading Session Id (Default)
eurex_t7_emdi_fast_v14_0.trading_session_id_default_0.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.trading_session_id_default_0.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.trading_session_id, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.trading_session_id, range, value, display)
  end

  return offset, value
end

-- Trading Session Id (Default)
eurex_t7_emdi_fast_v14_0.trading_session_id_default_optional = {}

-- Display: Trading Session Id (Default)
eurex_t7_emdi_fast_v14_0.trading_session_id_default_optional.display = function(value)
  if value == nil then
    return "Trading Session Id: No Value"
  end

  if value == 0 then
    return "Trading Session Id: Day (1)"
  end
  if value == 1 then
    return "Trading Session Id: Morning (3)"
  end
  if value == 2 then
    return "Trading Session Id: Evening (5)"
  end
  if value == 3 then
    return "Trading Session Id: AfterHours (6)"
  end
  if value == 4 then
    return "Trading Session Id: Holiday (7)"
  end

  return "Trading Session Id: Unknown("..value..")"
end

-- Dissect: Trading Session Id (Default)
eurex_t7_emdi_fast_v14_0.trading_session_id_default_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.trading_session_id_default_optional.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.trading_session_id, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.trading_session_id, range, value, display)
  end

  return offset, value
end

-- Trading Session Sub Id (Sent)
eurex_t7_emdi_fast_v14_0.trading_session_sub_id_sent = {}

-- Display: Trading Session Sub Id (Sent)
eurex_t7_emdi_fast_v14_0.trading_session_sub_id_sent.display = function(value)
  if value == nil then
    return "Trading Session Sub Id: No Value"
  end

  if value == 0 then
    return "Trading Session Sub Id: PreTrading (1)"
  end
  if value == 1 then
    return "Trading Session Sub Id: Continuous (3)"
  end
  if value == 2 then
    return "Trading Session Sub Id: Closing (4)"
  end
  if value == 3 then
    return "Trading Session Sub Id: PostTrading (5)"
  end
  if value == 4 then
    return "Trading Session Sub Id: ScheduledIntradayAuction (6)"
  end
  if value == 5 then
    return "Trading Session Sub Id: Quiescent (7)"
  end
  if value == 6 then
    return "Trading Session Sub Id: AnyAuction (8)"
  end
  if value == 7 then
    return "Trading Session Sub Id: OutOfMainSessionTrading (10)"
  end
  if value == 8 then
    return "Trading Session Sub Id: ContinuousAuctionIssuer (103)"
  end
  if value == 9 then
    return "Trading Session Sub Id: ContinuousAuctionSpecialist (104)"
  end

  return "Trading Session Sub Id: Unknown("..value..")"
end

-- Dissect: Trading Session Sub Id (Sent)
eurex_t7_emdi_fast_v14_0.trading_session_sub_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.trading_session_sub_id_sent.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.trading_session_sub_id, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.trading_session_sub_id, range, value, display)
  end

  return offset, value
end

-- Trading Session Sub Id (Default)
eurex_t7_emdi_fast_v14_0.trading_session_sub_id_default = {}

-- Display: Trading Session Sub Id (Default)
eurex_t7_emdi_fast_v14_0.trading_session_sub_id_default.display = function(value)
  if value == nil then
    return "Trading Session Sub Id: No Value"
  end

  if value == 0 then
    return "Trading Session Sub Id: PreTrading (1)"
  end
  if value == 1 then
    return "Trading Session Sub Id: Continuous (3)"
  end
  if value == 2 then
    return "Trading Session Sub Id: Closing (4)"
  end
  if value == 3 then
    return "Trading Session Sub Id: PostTrading (5)"
  end
  if value == 4 then
    return "Trading Session Sub Id: ScheduledIntradayAuction (6)"
  end
  if value == 5 then
    return "Trading Session Sub Id: Quiescent (7)"
  end
  if value == 6 then
    return "Trading Session Sub Id: AnyAuction (8)"
  end
  if value == 7 then
    return "Trading Session Sub Id: OutOfMainSessionTrading (10)"
  end
  if value == 8 then
    return "Trading Session Sub Id: ContinuousAuctionIssuer (103)"
  end
  if value == 9 then
    return "Trading Session Sub Id: ContinuousAuctionSpecialist (104)"
  end

  return "Trading Session Sub Id: Unknown("..value..")"
end

-- Dissect: Trading Session Sub Id (Default)
eurex_t7_emdi_fast_v14_0.trading_session_sub_id_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.trading_session_sub_id_default.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.trading_session_sub_id, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.trading_session_sub_id, range, value, display)
  end

  return offset, value
end

-- Trad Ses Status
eurex_t7_emdi_fast_v14_0.trad_ses_status = {}

-- Display: Trad Ses Status
eurex_t7_emdi_fast_v14_0.trad_ses_status.display = function(value)
  if value == nil then
    return "Trad Ses Status: No Value"
  end

  if value == 0 then
    return "Trad Ses Status: Halted (1)"
  end
  if value == 1 then
    return "Trad Ses Status: Open (2)"
  end
  if value == 2 then
    return "Trad Ses Status: Closed (3)"
  end
  if value == 3 then
    return "Trad Ses Status: PreClose (5)"
  end

  return "Trad Ses Status: Unknown("..value..")"
end

-- Dissect: Trad Ses Status
eurex_t7_emdi_fast_v14_0.trad_ses_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.trad_ses_status.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.trad_ses_status, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.trad_ses_status, range, value, display)
  end

  return offset, value
end

-- Market Condition (Default)
eurex_t7_emdi_fast_v14_0.market_condition_default_optional_u_int32_field_0 = {}

-- Display: Market Condition (Default)
eurex_t7_emdi_fast_v14_0.market_condition_default_optional_u_int32_field_0.display = function(value)
  if value == nil then
    return "Market Condition: No Value"
  end

  if value == 0 then
    return "Market Condition: Normal (0)"
  end
  if value == 1 then
    return "Market Condition: Stressed (1)"
  end

  return "Market Condition: Unknown("..value..")"
end

-- Dissect: Market Condition (Default)
eurex_t7_emdi_fast_v14_0.market_condition_default_optional_u_int32_field_0.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.market_condition_default_optional_u_int32_field_0.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.market_condition, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.market_condition, range, value, display)
  end

  return offset, value
end

-- Market Condition (Default)
eurex_t7_emdi_fast_v14_0.market_condition_default_required = {}

-- Display: Market Condition (Default)
eurex_t7_emdi_fast_v14_0.market_condition_default_required.display = function(value)
  if value == nil then
    return "Market Condition: No Value"
  end

  if value == 0 then
    return "Market Condition: Normal (0)"
  end
  if value == 1 then
    return "Market Condition: Stressed (1)"
  end

  return "Market Condition: Unknown("..value..")"
end

-- Dissect: Market Condition (Default)
eurex_t7_emdi_fast_v14_0.market_condition_default_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.market_condition_default_required.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.market_condition, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.market_condition, range, value, display)
  end

  return offset, value
end

-- Market Condition (Default)
eurex_t7_emdi_fast_v14_0.market_condition_default_optional_u_int32_field = {}

-- Display: Market Condition (Default)
eurex_t7_emdi_fast_v14_0.market_condition_default_optional_u_int32_field.display = function(value)
  if value == nil then
    return "Market Condition: No Value"
  end

  if value == 0 then
    return "Market Condition: Normal (0)"
  end
  if value == 1 then
    return "Market Condition: Stressed (1)"
  end

  return "Market Condition: Unknown("..value..")"
end

-- Dissect: Market Condition (Default)
eurex_t7_emdi_fast_v14_0.market_condition_default_optional_u_int32_field.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.market_condition_default_optional_u_int32_field.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.market_condition, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.market_condition, range, value, display)
  end

  return offset, value
end

-- Fast Market Indicator (Default)
eurex_t7_emdi_fast_v14_0.fast_market_indicator_default_0 = {}

-- Display: Fast Market Indicator (Default)
eurex_t7_emdi_fast_v14_0.fast_market_indicator_default_0.display = function(value)
  if value == nil then
    return "Fast Market Indicator: No Value"
  end

  if value == 0 then
    return "Fast Market Indicator: No (0)"
  end
  if value == 1 then
    return "Fast Market Indicator: Yes (1)"
  end

  return "Fast Market Indicator: Unknown("..value..")"
end

-- Dissect: Fast Market Indicator (Default)
eurex_t7_emdi_fast_v14_0.fast_market_indicator_default_0.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.fast_market_indicator_default_0.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.fast_market_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.fast_market_indicator, range, value, display)
  end

  return offset, value
end

-- Fast Market Indicator (Default)
eurex_t7_emdi_fast_v14_0.fast_market_indicator_default_optional = {}

-- Display: Fast Market Indicator (Default)
eurex_t7_emdi_fast_v14_0.fast_market_indicator_default_optional.display = function(value)
  if value == nil then
    return "Fast Market Indicator: No Value"
  end

  if value == 0 then
    return "Fast Market Indicator: No (0)"
  end
  if value == 1 then
    return "Fast Market Indicator: Yes (1)"
  end

  return "Fast Market Indicator: Unknown("..value..")"
end

-- Dissect: Fast Market Indicator (Default)
eurex_t7_emdi_fast_v14_0.fast_market_indicator_default_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.fast_market_indicator_default_optional.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.fast_market_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.fast_market_indicator, range, value, display)
  end

  return offset, value
end

-- Transact Time (Sent)
eurex_t7_emdi_fast_v14_0.transact_time_sent = {}

-- Dissect: Transact Time (Sent)
eurex_t7_emdi_fast_v14_0.transact_time_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.transact_time, range, NSTime.new(0, 0))
    absent:set_text("Transact Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.transact_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Transact Time (Delta)
eurex_t7_emdi_fast_v14_0.transact_time_delta = {}

-- Dissect: Transact Time (Delta)
eurex_t7_emdi_fast_v14_0.transact_time_delta.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_int64(buffer, offset)
  value = (state.values[key] or Int64(0)) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.transact_time, range, NSTime.new(0, 0))
    absent:set_text("Transact Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.transact_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Transact Time (Copy)
eurex_t7_emdi_fast_v14_0.transact_time_copy = {}

-- Dissect: Transact Time (Copy)
eurex_t7_emdi_fast_v14_0.transact_time_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_int64(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Transact Time was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.transact_time, range, NSTime.new(0, 0))
    absent:set_text("Transact Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.transact_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Tes Trad Ses Status (Sent)
eurex_t7_emdi_fast_v14_0.tes_trad_ses_status_sent = {}

-- Display: Tes Trad Ses Status (Sent)
eurex_t7_emdi_fast_v14_0.tes_trad_ses_status_sent.display = function(value)
  if value == nil then
    return "Tes Trad Ses Status: No Value"
  end

  if value == 0 then
    return "Tes Trad Ses Status: Halted (1)"
  end
  if value == 1 then
    return "Tes Trad Ses Status: Open (2)"
  end
  if value == 2 then
    return "Tes Trad Ses Status: Closed (3)"
  end
  if value == 3 then
    return "Tes Trad Ses Status: PreClose (5)"
  end

  return "Tes Trad Ses Status: Unknown("..value..")"
end

-- Dissect: Tes Trad Ses Status (Sent)
eurex_t7_emdi_fast_v14_0.tes_trad_ses_status_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.tes_trad_ses_status_sent.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.tes_trad_ses_status, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.tes_trad_ses_status, range, value, display)
  end

  return offset, value
end

-- Tes Trad Ses Status (Default)
eurex_t7_emdi_fast_v14_0.tes_trad_ses_status_default = {}

-- Display: Tes Trad Ses Status (Default)
eurex_t7_emdi_fast_v14_0.tes_trad_ses_status_default.display = function(value)
  if value == nil then
    return "Tes Trad Ses Status: No Value"
  end

  if value == 0 then
    return "Tes Trad Ses Status: Halted (1)"
  end
  if value == 1 then
    return "Tes Trad Ses Status: Open (2)"
  end
  if value == 2 then
    return "Tes Trad Ses Status: Closed (3)"
  end
  if value == 3 then
    return "Tes Trad Ses Status: PreClose (5)"
  end

  return "Tes Trad Ses Status: Unknown("..value..")"
end

-- Dissect: Tes Trad Ses Status (Default)
eurex_t7_emdi_fast_v14_0.tes_trad_ses_status_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.tes_trad_ses_status_default.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.tes_trad_ses_status, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.tes_trad_ses_status, range, value, display)
  end

  return offset, value
end

-- Instrument Scope Product Complex
eurex_t7_emdi_fast_v14_0.instrument_scope_product_complex = {}

-- Display: Instrument Scope Product Complex
eurex_t7_emdi_fast_v14_0.instrument_scope_product_complex.display = function(value)
  if value == nil then
    return "Instrument Scope Product Complex: No Value"
  end

  if value == 0 then
    return "Instrument Scope Product Complex: SimpleInstrument (1)"
  end
  if value == 1 then
    return "Instrument Scope Product Complex: StandardOptionStrategy (2)"
  end
  if value == 2 then
    return "Instrument Scope Product Complex: NonStandardOptionStrategy (3)"
  end
  if value == 3 then
    return "Instrument Scope Product Complex: VolatilityStrategy (4)"
  end
  if value == 4 then
    return "Instrument Scope Product Complex: FuturesSpread (5)"
  end
  if value == 5 then
    return "Instrument Scope Product Complex: InterProductSpread (6)"
  end
  if value == 6 then
    return "Instrument Scope Product Complex: StandardFuturesStrategy (7)"
  end
  if value == 7 then
    return "Instrument Scope Product Complex: PackAndBundle (8)"
  end
  if value == 8 then
    return "Instrument Scope Product Complex: Strip (9)"
  end
  if value == 9 then
    return "Instrument Scope Product Complex: FlexibleInstrument (10)"
  end
  if value == 10 then
    return "Instrument Scope Product Complex: CommodityStrip (11)"
  end
  if value == 11 then
    return "Instrument Scope Product Complex: ScaledSimpleInstrument (12)"
  end
  if value == 12 then
    return "Instrument Scope Product Complex: NonStandardVolatilityStrategy (13)"
  end
  if value == 13 then
    return "Instrument Scope Product Complex: TotalReturnFutureStrategy (14)"
  end

  return "Instrument Scope Product Complex: Unknown("..value..")"
end

-- Dissect: Instrument Scope Product Complex
eurex_t7_emdi_fast_v14_0.instrument_scope_product_complex.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Instrument Scope Product Complex was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.instrument_scope_product_complex.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.instrument_scope_product_complex, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.instrument_scope_product_complex, range, value, display)
  end

  return offset, value
end

-- Security Mass Status
eurex_t7_emdi_fast_v14_0.security_mass_status = {}

-- Display: Security Mass Status
eurex_t7_emdi_fast_v14_0.security_mass_status.display = function(value)
  if value == nil then
    return "Security Mass Status: No Value"
  end

  if value == 0 then
    return "Security Mass Status: Active (1)"
  end
  if value == 1 then
    return "Security Mass Status: Inactive (2)"
  end
  if value == 2 then
    return "Security Mass Status: Expired (4)"
  end
  if value == 3 then
    return "Security Mass Status: KnockedOut (6)"
  end
  if value == 4 then
    return "Security Mass Status: KnockOutRevoked (7)"
  end
  if value == 5 then
    return "Security Mass Status: Suspended (9)"
  end
  if value == 6 then
    return "Security Mass Status: Published (10)"
  end
  if value == 7 then
    return "Security Mass Status: PendingDeletion (11)"
  end
  if value == 8 then
    return "Security Mass Status: KnockedOutAndSuspended (12)"
  end

  return "Security Mass Status: Unknown("..value..")"
end

-- Dissect: Security Mass Status
eurex_t7_emdi_fast_v14_0.security_mass_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.security_mass_status.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_mass_status, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_mass_status, range, value, display)
  end

  return offset, value
end

-- Security Mass Trading Status
eurex_t7_emdi_fast_v14_0.security_mass_trading_status = {}

-- Display: Security Mass Trading Status
eurex_t7_emdi_fast_v14_0.security_mass_trading_status.display = function(value)
  if value == nil then
    return "Security Mass Trading Status: No Value"
  end

  if value == 0 then
    return "Security Mass Trading Status: TradingHalt (2)"
  end
  if value == 1 then
    return "Security Mass Trading Status: Closed (200)"
  end
  if value == 2 then
    return "Security Mass Trading Status: Restricted (201)"
  end
  if value == 3 then
    return "Security Mass Trading Status: Book (202)"
  end
  if value == 4 then
    return "Security Mass Trading Status: Continuous (203)"
  end
  if value == 5 then
    return "Security Mass Trading Status: OpeningAuction (204)"
  end
  if value == 6 then
    return "Security Mass Trading Status: OpeningAuctionFreeze (205)"
  end
  if value == 7 then
    return "Security Mass Trading Status: IntradayAuction (206)"
  end
  if value == 8 then
    return "Security Mass Trading Status: IntradayAuctionFreeze (207)"
  end
  if value == 9 then
    return "Security Mass Trading Status: CircuitBreakerAuction (208)"
  end
  if value == 10 then
    return "Security Mass Trading Status: CircuitBreakerAuctionFreeze (209)"
  end
  if value == 11 then
    return "Security Mass Trading Status: ClosingAuction (210)"
  end
  if value == 12 then
    return "Security Mass Trading Status: ClosingAuctionFreeze (211)"
  end
  if value == 13 then
    return "Security Mass Trading Status: IPOAuction (212)"
  end
  if value == 14 then
    return "Security Mass Trading Status: IPOAuctionFreeze (213)"
  end
  if value == 15 then
    return "Security Mass Trading Status: PreCall (214)"
  end
  if value == 16 then
    return "Security Mass Trading Status: Call (215)"
  end
  if value == 17 then
    return "Security Mass Trading Status: Freeze (216)"
  end
  if value == 18 then
    return "Security Mass Trading Status: TradeAtClose (217)"
  end
  if value == 19 then
    return "Security Mass Trading Status: RetailPreCall (218)"
  end
  if value == 20 then
    return "Security Mass Trading Status: RetailCall (219)"
  end
  if value == 21 then
    return "Security Mass Trading Status: CircuitBreakerAuctionTriggeredByStaticLimitBreach (220)"
  end
  if value == 22 then
    return "Security Mass Trading Status: CircuitBreakerAuctionTriggeredByStaticLimitBreachFreeze (221)"
  end

  return "Security Mass Trading Status: Unknown("..value..")"
end

-- Dissect: Security Mass Trading Status
eurex_t7_emdi_fast_v14_0.security_mass_trading_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.security_mass_trading_status.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_mass_trading_status, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_mass_trading_status, range, value, display)
  end

  return offset, value
end

-- Mass Market Condition
eurex_t7_emdi_fast_v14_0.mass_market_condition = {}

-- Display: Mass Market Condition
eurex_t7_emdi_fast_v14_0.mass_market_condition.display = function(value)
  if value == nil then
    return "Mass Market Condition: No Value"
  end

  if value == 0 then
    return "Mass Market Condition: Normal (0)"
  end
  if value == 1 then
    return "Mass Market Condition: Stressed (1)"
  end

  return "Mass Market Condition: Unknown("..value..")"
end

-- Dissect: Mass Market Condition
eurex_t7_emdi_fast_v14_0.mass_market_condition.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.mass_market_condition.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.mass_market_condition, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.mass_market_condition, range, value, display)
  end

  return offset, value
end

-- Security Mass Trading Event
eurex_t7_emdi_fast_v14_0.security_mass_trading_event = {}

-- Display: Security Mass Trading Event
eurex_t7_emdi_fast_v14_0.security_mass_trading_event.display = function(value)
  if value == nil then
    return "Security Mass Trading Event: No Value"
  end

  if value == 0 then
    return "Security Mass Trading Event: None (0)"
  end
  if value == 1 then
    return "Security Mass Trading Event: PriceVolatilityAuctionIsExtended (10)"
  end
  if value == 2 then
    return "Security Mass Trading Event: PriceVolatilityAuctionIsExtendedAgain (11)"
  end

  return "Security Mass Trading Event: Unknown("..value..")"
end

-- Dissect: Security Mass Trading Event
eurex_t7_emdi_fast_v14_0.security_mass_trading_event.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.security_mass_trading_event.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_mass_trading_event, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_mass_trading_event, range, value, display)
  end

  return offset, value
end

-- Mass Sold Out Indicator
eurex_t7_emdi_fast_v14_0.mass_sold_out_indicator = {}

-- Display: Mass Sold Out Indicator
eurex_t7_emdi_fast_v14_0.mass_sold_out_indicator.display = function(value)
  if value == nil then
    return "Mass Sold Out Indicator: No Value"
  end

  if value == 0 then
    return "Mass Sold Out Indicator: SoldOut (1)"
  end

  return "Mass Sold Out Indicator: Unknown("..value..")"
end

-- Dissect: Mass Sold Out Indicator
eurex_t7_emdi_fast_v14_0.mass_sold_out_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.mass_sold_out_indicator.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.mass_sold_out_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.mass_sold_out_indicator, range, value, display)
  end

  return offset, value
end

-- Tes Security Mass Status
eurex_t7_emdi_fast_v14_0.tes_security_mass_status = {}

-- Display: Tes Security Mass Status
eurex_t7_emdi_fast_v14_0.tes_security_mass_status.display = function(value)
  if value == nil then
    return "Tes Security Mass Status: No Value"
  end

  if value == 0 then
    return "Tes Security Mass Status: Active (1)"
  end
  if value == 1 then
    return "Tes Security Mass Status: Inactive (2)"
  end
  if value == 2 then
    return "Tes Security Mass Status: Expired (4)"
  end
  if value == 3 then
    return "Tes Security Mass Status: KnockedOut (6)"
  end
  if value == 4 then
    return "Tes Security Mass Status: KnockOutRevoked (7)"
  end
  if value == 5 then
    return "Tes Security Mass Status: Suspended (9)"
  end
  if value == 6 then
    return "Tes Security Mass Status: Published (10)"
  end
  if value == 7 then
    return "Tes Security Mass Status: PendingDeletion (11)"
  end
  if value == 8 then
    return "Tes Security Mass Status: KnockedOutAndSuspended (12)"
  end

  return "Tes Security Mass Status: Unknown("..value..")"
end

-- Dissect: Tes Security Mass Status
eurex_t7_emdi_fast_v14_0.tes_security_mass_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.tes_security_mass_status.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.tes_security_mass_status, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.tes_security_mass_status, range, value, display)
  end

  return offset, value
end

-- No Related Sym (Default)
eurex_t7_emdi_fast_v14_0.no_related_sym_default = {}

-- Dissect: No Related Sym (Default)
eurex_t7_emdi_fast_v14_0.no_related_sym_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.no_related_sym, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.no_related_sym, range, 0)
    absent:set_text("No Related Sym: No Value")
  end

  return offset, value
end

-- No Related Sym (Constant)
eurex_t7_emdi_fast_v14_0.no_related_sym_constant = {}

-- Dissect: No Related Sym (Constant)
eurex_t7_emdi_fast_v14_0.no_related_sym_constant.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 1

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.no_related_sym, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.no_related_sym, range, 0)
    absent:set_text("No Related Sym: No Value")
  end

  return offset, value
end

-- Security Id (Sent)
eurex_t7_emdi_fast_v14_0.security_id_sent = {}

-- Dissect: Security Id (Sent)
eurex_t7_emdi_fast_v14_0.security_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_id, range, Int64(0))
    absent:set_text("Security Id: No Value")
  end

  return offset, value
end

-- Security Id (Copy)
eurex_t7_emdi_fast_v14_0.security_id_copy = {}

-- Dissect: Security Id (Copy)
eurex_t7_emdi_fast_v14_0.security_id_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_int64(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Security Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_id, range, Int64(0))
    absent:set_text("Security Id: No Value")
  end

  return offset, value
end

-- Security Id (Delta)
eurex_t7_emdi_fast_v14_0.security_id_delta = {}

-- Dissect: Security Id (Delta)
eurex_t7_emdi_fast_v14_0.security_id_delta.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_int64(buffer, offset)
  value = (state.values[key] or Int64(0)) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_id, range, Int64(0))
    absent:set_text("Security Id: No Value")
  end

  return offset, value
end

-- Security Id Source
eurex_t7_emdi_fast_v14_0.security_id_source = {}

-- Display: Security Id Source
eurex_t7_emdi_fast_v14_0.security_id_source.display = function(value)
  if value == nil then
    return "Security Id Source: No Value"
  end

  if value == "M" then
    return "Security Id Source: Marketplace (M)"
  end

  return "Security Id Source: "..value
end

-- Dissect: Security Id Source
eurex_t7_emdi_fast_v14_0.security_id_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "M"

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.security_id_source.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_id_source, range, "", display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_id_source, range, value, display)
  end

  return offset, value
end

-- Security Status
eurex_t7_emdi_fast_v14_0.security_status = {}

-- Display: Security Status
eurex_t7_emdi_fast_v14_0.security_status.display = function(value)
  if value == nil then
    return "Security Status: No Value"
  end

  if value == 0 then
    return "Security Status: Active (1)"
  end
  if value == 1 then
    return "Security Status: Inactive (2)"
  end
  if value == 2 then
    return "Security Status: Expired (4)"
  end
  if value == 3 then
    return "Security Status: KnockedOut (6)"
  end
  if value == 4 then
    return "Security Status: KnockOutRevoked (7)"
  end
  if value == 5 then
    return "Security Status: Suspended (9)"
  end
  if value == 6 then
    return "Security Status: Published (10)"
  end
  if value == 7 then
    return "Security Status: PendingDeletion (11)"
  end
  if value == 8 then
    return "Security Status: KnockedOutAndSuspended (12)"
  end

  return "Security Status: Unknown("..value..")"
end

-- Dissect: Security Status
eurex_t7_emdi_fast_v14_0.security_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.security_status.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_status, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_status, range, value, display)
  end

  return offset, value
end

-- Security Trading Status (Copy)
eurex_t7_emdi_fast_v14_0.security_trading_status_copy = {}

-- Display: Security Trading Status (Copy)
eurex_t7_emdi_fast_v14_0.security_trading_status_copy.display = function(value)
  if value == nil then
    return "Security Trading Status: No Value"
  end

  if value == 0 then
    return "Security Trading Status: TradingHalt (2)"
  end
  if value == 1 then
    return "Security Trading Status: Closed (200)"
  end
  if value == 2 then
    return "Security Trading Status: Restricted (201)"
  end
  if value == 3 then
    return "Security Trading Status: Book (202)"
  end
  if value == 4 then
    return "Security Trading Status: Continuous (203)"
  end
  if value == 5 then
    return "Security Trading Status: OpeningAuction (204)"
  end
  if value == 6 then
    return "Security Trading Status: OpeningAuctionFreeze (205)"
  end
  if value == 7 then
    return "Security Trading Status: IntradayAuction (206)"
  end
  if value == 8 then
    return "Security Trading Status: IntradayAuctionFreeze (207)"
  end
  if value == 9 then
    return "Security Trading Status: CircuitBreakerAuction (208)"
  end
  if value == 10 then
    return "Security Trading Status: CircuitBreakerAuctionFreeze (209)"
  end
  if value == 11 then
    return "Security Trading Status: ClosingAuction (210)"
  end
  if value == 12 then
    return "Security Trading Status: ClosingAuctionFreeze (211)"
  end
  if value == 13 then
    return "Security Trading Status: IPOAuction (212)"
  end
  if value == 14 then
    return "Security Trading Status: IPOAuctionFreeze (213)"
  end
  if value == 15 then
    return "Security Trading Status: PreCall (214)"
  end
  if value == 16 then
    return "Security Trading Status: Call (215)"
  end
  if value == 17 then
    return "Security Trading Status: Freeze (216)"
  end
  if value == 18 then
    return "Security Trading Status: TradeAtClose (217)"
  end
  if value == 19 then
    return "Security Trading Status: RetailPreCall (218)"
  end
  if value == 20 then
    return "Security Trading Status: RetailCall (219)"
  end
  if value == 21 then
    return "Security Trading Status: CircuitBreakerAuctionTriggeredByStaticLimitBreach (220)"
  end
  if value == 22 then
    return "Security Trading Status: CircuitBreakerAuctionTriggeredByStaticLimitBreachFreeze (221)"
  end

  return "Security Trading Status: Unknown("..value..")"
end

-- Dissect: Security Trading Status (Copy)
eurex_t7_emdi_fast_v14_0.security_trading_status_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.security_trading_status_copy.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_trading_status, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_trading_status, range, value, display)
  end

  return offset, value
end

-- Security Trading Status (Default)
eurex_t7_emdi_fast_v14_0.security_trading_status_default = {}

-- Display: Security Trading Status (Default)
eurex_t7_emdi_fast_v14_0.security_trading_status_default.display = function(value)
  if value == nil then
    return "Security Trading Status: No Value"
  end

  if value == 0 then
    return "Security Trading Status: TradingHalt (2)"
  end
  if value == 1 then
    return "Security Trading Status: Closed (200)"
  end
  if value == 2 then
    return "Security Trading Status: Restricted (201)"
  end
  if value == 3 then
    return "Security Trading Status: Book (202)"
  end
  if value == 4 then
    return "Security Trading Status: Continuous (203)"
  end
  if value == 5 then
    return "Security Trading Status: OpeningAuction (204)"
  end
  if value == 6 then
    return "Security Trading Status: OpeningAuctionFreeze (205)"
  end
  if value == 7 then
    return "Security Trading Status: IntradayAuction (206)"
  end
  if value == 8 then
    return "Security Trading Status: IntradayAuctionFreeze (207)"
  end
  if value == 9 then
    return "Security Trading Status: CircuitBreakerAuction (208)"
  end
  if value == 10 then
    return "Security Trading Status: CircuitBreakerAuctionFreeze (209)"
  end
  if value == 11 then
    return "Security Trading Status: ClosingAuction (210)"
  end
  if value == 12 then
    return "Security Trading Status: ClosingAuctionFreeze (211)"
  end
  if value == 13 then
    return "Security Trading Status: IPOAuction (212)"
  end
  if value == 14 then
    return "Security Trading Status: IPOAuctionFreeze (213)"
  end
  if value == 15 then
    return "Security Trading Status: PreCall (214)"
  end
  if value == 16 then
    return "Security Trading Status: Call (215)"
  end
  if value == 17 then
    return "Security Trading Status: Freeze (216)"
  end
  if value == 18 then
    return "Security Trading Status: TradeAtClose (217)"
  end
  if value == 19 then
    return "Security Trading Status: RetailPreCall (218)"
  end
  if value == 20 then
    return "Security Trading Status: RetailCall (219)"
  end
  if value == 21 then
    return "Security Trading Status: CircuitBreakerAuctionTriggeredByStaticLimitBreach (220)"
  end
  if value == 22 then
    return "Security Trading Status: CircuitBreakerAuctionTriggeredByStaticLimitBreachFreeze (221)"
  end

  return "Security Trading Status: Unknown("..value..")"
end

-- Dissect: Security Trading Status (Default)
eurex_t7_emdi_fast_v14_0.security_trading_status_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.security_trading_status_default.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_trading_status, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_trading_status, range, value, display)
  end

  return offset, value
end

-- Security Trading Event (Default)
eurex_t7_emdi_fast_v14_0.security_trading_event_default = {}

-- Display: Security Trading Event (Default)
eurex_t7_emdi_fast_v14_0.security_trading_event_default.display = function(value)
  if value == nil then
    return "Security Trading Event: No Value"
  end

  if value == 0 then
    return "Security Trading Event: None (0)"
  end
  if value == 1 then
    return "Security Trading Event: PriceVolatilityAuctionIsExtended (10)"
  end
  if value == 2 then
    return "Security Trading Event: PriceVolatilityAuctionIsExtendedAgain (11)"
  end

  return "Security Trading Event: Unknown("..value..")"
end

-- Dissect: Security Trading Event (Default)
eurex_t7_emdi_fast_v14_0.security_trading_event_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.security_trading_event_default.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_trading_event, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_trading_event, range, value, display)
  end

  return offset, value
end

-- Security Trading Event (Copy)
eurex_t7_emdi_fast_v14_0.security_trading_event_copy = {}

-- Display: Security Trading Event (Copy)
eurex_t7_emdi_fast_v14_0.security_trading_event_copy.display = function(value)
  if value == nil then
    return "Security Trading Event: No Value"
  end

  if value == 0 then
    return "Security Trading Event: None (0)"
  end
  if value == 1 then
    return "Security Trading Event: PriceVolatilityAuctionIsExtended (10)"
  end
  if value == 2 then
    return "Security Trading Event: PriceVolatilityAuctionIsExtendedAgain (11)"
  end

  return "Security Trading Event: Unknown("..value..")"
end

-- Dissect: Security Trading Event (Copy)
eurex_t7_emdi_fast_v14_0.security_trading_event_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.security_trading_event_copy.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_trading_event, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_trading_event, range, value, display)
  end

  return offset, value
end

-- Sold Out Indicator (Default)
eurex_t7_emdi_fast_v14_0.sold_out_indicator_default = {}

-- Display: Sold Out Indicator (Default)
eurex_t7_emdi_fast_v14_0.sold_out_indicator_default.display = function(value)
  if value == nil then
    return "Sold Out Indicator: No Value"
  end

  if value == 0 then
    return "Sold Out Indicator: SoldOut (1)"
  end

  return "Sold Out Indicator: Unknown("..value..")"
end

-- Dissect: Sold Out Indicator (Default)
eurex_t7_emdi_fast_v14_0.sold_out_indicator_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.sold_out_indicator_default.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.sold_out_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.sold_out_indicator, range, value, display)
  end

  return offset, value
end

-- Sold Out Indicator (Copy)
eurex_t7_emdi_fast_v14_0.sold_out_indicator_copy = {}

-- Display: Sold Out Indicator (Copy)
eurex_t7_emdi_fast_v14_0.sold_out_indicator_copy.display = function(value)
  if value == nil then
    return "Sold Out Indicator: No Value"
  end

  if value == 0 then
    return "Sold Out Indicator: SoldOut (1)"
  end

  return "Sold Out Indicator: Unknown("..value..")"
end

-- Dissect: Sold Out Indicator (Copy)
eurex_t7_emdi_fast_v14_0.sold_out_indicator_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.sold_out_indicator_copy.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.sold_out_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.sold_out_indicator, range, value, display)
  end

  return offset, value
end

-- High Px (Sent)
eurex_t7_emdi_fast_v14_0.high_px_sent = {}

-- Display: High Px (Sent)
eurex_t7_emdi_fast_v14_0.high_px_sent.display = function(value)
  if value == nil then
    return "High Px: No Value"
  end

  return "High Px: "..value
end

-- Dissect: High Px (Sent)
eurex_t7_emdi_fast_v14_0.high_px_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  exponent, offset = read_nullable_signed(buffer, offset)
  if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end

  if exponent ~= nil and mantissa ~= nil then
    value = mantissa * (10 ^ exponent)
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.high_px_sent.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.high_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.high_px, range, value, display)
  end

  return offset, value
end

-- High Px (Copy)
eurex_t7_emdi_fast_v14_0.high_px_copy = {}

-- Display: High Px (Copy)
eurex_t7_emdi_fast_v14_0.high_px_copy.display = function(value)
  if value == nil then
    return "High Px: No Value"
  end

  return "High Px: "..value
end

-- Dissect: High Px (Copy)
eurex_t7_emdi_fast_v14_0.high_px_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    value = mantissa * (10 ^ exponent)
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.high_px_copy.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.high_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.high_px, range, value, display)
  end

  return offset, value
end

-- High Px (Delta)
eurex_t7_emdi_fast_v14_0.high_px_delta = {}

-- Display: High Px (Delta)
eurex_t7_emdi_fast_v14_0.high_px_delta.display = function(value)
  if value == nil then
    return "High Px: No Value"
  end

  return "High Px: "..value
end

-- Dissect: High Px (Delta)
eurex_t7_emdi_fast_v14_0.high_px_delta.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  local exponent_delta = nil
  local mantissa_delta = nil
  exponent_delta, offset = read_nullable_signed(buffer, offset)

  if exponent_delta ~= nil then
    mantissa_delta, offset = read_stop_bit_signed(buffer, offset)
    exponent = (state.values[key[1]] or 0) + exponent_delta
    mantissa = (state.values[key[2]] or 0) + mantissa_delta
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  end

  if exponent ~= nil and mantissa ~= nil then
    value = mantissa * (10 ^ exponent)
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.high_px_delta.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.high_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.high_px, range, value, display)
  end

  return offset, value
end

-- Low Px (Sent)
eurex_t7_emdi_fast_v14_0.low_px_sent = {}

-- Display: Low Px (Sent)
eurex_t7_emdi_fast_v14_0.low_px_sent.display = function(value)
  if value == nil then
    return "Low Px: No Value"
  end

  return "Low Px: "..value
end

-- Dissect: Low Px (Sent)
eurex_t7_emdi_fast_v14_0.low_px_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  exponent, offset = read_nullable_signed(buffer, offset)
  if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end

  if exponent ~= nil and mantissa ~= nil then
    value = mantissa * (10 ^ exponent)
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.low_px_sent.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.low_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.low_px, range, value, display)
  end

  return offset, value
end

-- Low Px (Copy)
eurex_t7_emdi_fast_v14_0.low_px_copy = {}

-- Display: Low Px (Copy)
eurex_t7_emdi_fast_v14_0.low_px_copy.display = function(value)
  if value == nil then
    return "Low Px: No Value"
  end

  return "Low Px: "..value
end

-- Dissect: Low Px (Copy)
eurex_t7_emdi_fast_v14_0.low_px_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    value = mantissa * (10 ^ exponent)
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.low_px_copy.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.low_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.low_px, range, value, display)
  end

  return offset, value
end

-- Low Px (Delta)
eurex_t7_emdi_fast_v14_0.low_px_delta = {}

-- Display: Low Px (Delta)
eurex_t7_emdi_fast_v14_0.low_px_delta.display = function(value)
  if value == nil then
    return "Low Px: No Value"
  end

  return "Low Px: "..value
end

-- Dissect: Low Px (Delta)
eurex_t7_emdi_fast_v14_0.low_px_delta.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  local exponent_delta = nil
  local mantissa_delta = nil
  exponent_delta, offset = read_nullable_signed(buffer, offset)

  if exponent_delta ~= nil then
    mantissa_delta, offset = read_stop_bit_signed(buffer, offset)
    exponent = (state.values[key[1]] or 0) + exponent_delta
    mantissa = (state.values[key[2]] or 0) + mantissa_delta
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  end

  if exponent ~= nil and mantissa ~= nil then
    value = mantissa * (10 ^ exponent)
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.low_px_delta.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.low_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.low_px, range, value, display)
  end

  return offset, value
end

-- Tes Security Status (Copy)
eurex_t7_emdi_fast_v14_0.tes_security_status_copy = {}

-- Display: Tes Security Status (Copy)
eurex_t7_emdi_fast_v14_0.tes_security_status_copy.display = function(value)
  if value == nil then
    return "Tes Security Status: No Value"
  end

  if value == 0 then
    return "Tes Security Status: Active (1)"
  end
  if value == 1 then
    return "Tes Security Status: Inactive (2)"
  end
  if value == 2 then
    return "Tes Security Status: Expired (4)"
  end
  if value == 3 then
    return "Tes Security Status: KnockedOut (6)"
  end
  if value == 4 then
    return "Tes Security Status: KnockOutRevoked (7)"
  end
  if value == 5 then
    return "Tes Security Status: Suspended (9)"
  end
  if value == 6 then
    return "Tes Security Status: Published (10)"
  end
  if value == 7 then
    return "Tes Security Status: PendingDeletion (11)"
  end
  if value == 8 then
    return "Tes Security Status: KnockedOutAndSuspended (12)"
  end

  return "Tes Security Status: Unknown("..value..")"
end

-- Dissect: Tes Security Status (Copy)
eurex_t7_emdi_fast_v14_0.tes_security_status_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.tes_security_status_copy.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.tes_security_status, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.tes_security_status, range, value, display)
  end

  return offset, value
end

-- Tes Security Status (Default)
eurex_t7_emdi_fast_v14_0.tes_security_status_default = {}

-- Display: Tes Security Status (Default)
eurex_t7_emdi_fast_v14_0.tes_security_status_default.display = function(value)
  if value == nil then
    return "Tes Security Status: No Value"
  end

  if value == 0 then
    return "Tes Security Status: Active (1)"
  end
  if value == 1 then
    return "Tes Security Status: Inactive (2)"
  end
  if value == 2 then
    return "Tes Security Status: Expired (4)"
  end
  if value == 3 then
    return "Tes Security Status: KnockedOut (6)"
  end
  if value == 4 then
    return "Tes Security Status: KnockOutRevoked (7)"
  end
  if value == 5 then
    return "Tes Security Status: Suspended (9)"
  end
  if value == 6 then
    return "Tes Security Status: Published (10)"
  end
  if value == 7 then
    return "Tes Security Status: PendingDeletion (11)"
  end
  if value == 8 then
    return "Tes Security Status: KnockedOutAndSuspended (12)"
  end

  return "Tes Security Status: Unknown("..value..")"
end

-- Dissect: Tes Security Status (Default)
eurex_t7_emdi_fast_v14_0.tes_security_status_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.tes_security_status_default.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.tes_security_status, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.tes_security_status, range, value, display)
  end

  return offset, value
end

-- Tes Security Status (Sent)
eurex_t7_emdi_fast_v14_0.tes_security_status_sent = {}

-- Display: Tes Security Status (Sent)
eurex_t7_emdi_fast_v14_0.tes_security_status_sent.display = function(value)
  if value == nil then
    return "Tes Security Status: No Value"
  end

  if value == 0 then
    return "Tes Security Status: Active (1)"
  end
  if value == 1 then
    return "Tes Security Status: Inactive (2)"
  end
  if value == 2 then
    return "Tes Security Status: Expired (4)"
  end
  if value == 3 then
    return "Tes Security Status: KnockedOut (6)"
  end
  if value == 4 then
    return "Tes Security Status: KnockOutRevoked (7)"
  end
  if value == 5 then
    return "Tes Security Status: Suspended (9)"
  end
  if value == 6 then
    return "Tes Security Status: Published (10)"
  end
  if value == 7 then
    return "Tes Security Status: PendingDeletion (11)"
  end
  if value == 8 then
    return "Tes Security Status: KnockedOutAndSuspended (12)"
  end

  return "Tes Security Status: Unknown("..value..")"
end

-- Dissect: Tes Security Status (Sent)
eurex_t7_emdi_fast_v14_0.tes_security_status_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.tes_security_status_sent.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.tes_security_status, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.tes_security_status, range, value, display)
  end

  return offset, value
end

-- Last Fragment
eurex_t7_emdi_fast_v14_0.last_fragment = {}

-- Display: Last Fragment
eurex_t7_emdi_fast_v14_0.last_fragment.display = function(value)
  if value == nil then
    return "Last Fragment: No Value"
  end

  if value == 0 then
    return "Last Fragment: NotLastMessage (N)"
  end
  if value == 1 then
    return "Last Fragment: LastMessage (Y)"
  end

  return "Last Fragment: Unknown("..value..")"
end

-- Dissect: Last Fragment
eurex_t7_emdi_fast_v14_0.last_fragment.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 1
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.last_fragment.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.last_fragment, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.last_fragment, range, value, display)
  end

  return offset, value
end

-- No Md Entries (Sent)
eurex_t7_emdi_fast_v14_0.no_md_entries_sent = {}

-- Dissect: No Md Entries (Sent)
eurex_t7_emdi_fast_v14_0.no_md_entries_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.no_md_entries, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.no_md_entries, range, 0)
    absent:set_text("No Md Entries: No Value")
  end

  return offset, value
end

-- No Md Entries (Default)
eurex_t7_emdi_fast_v14_0.no_md_entries_default = {}

-- Dissect: No Md Entries (Default)
eurex_t7_emdi_fast_v14_0.no_md_entries_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 1
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.no_md_entries, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.no_md_entries, range, 0)
    absent:set_text("No Md Entries: No Value")
  end

  return offset, value
end

-- Md Origin Type
eurex_t7_emdi_fast_v14_0.md_origin_type = {}

-- Display: Md Origin Type
eurex_t7_emdi_fast_v14_0.md_origin_type.display = function(value)
  if value == nil then
    return "Md Origin Type: No Value"
  end

  if value == 0 then
    return "Md Origin Type: Book (0)"
  end
  if value == 1 then
    return "Md Origin Type: OffBook (1)"
  end

  return "Md Origin Type: Unknown("..value..")"
end

-- Dissect: Md Origin Type
eurex_t7_emdi_fast_v14_0.md_origin_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.md_origin_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_origin_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_origin_type, range, value, display)
  end

  return offset, value
end

-- Md Update Action
eurex_t7_emdi_fast_v14_0.md_update_action = {}

-- Display: Md Update Action
eurex_t7_emdi_fast_v14_0.md_update_action.display = function(value)
  if value == nil then
    return "Md Update Action: No Value"
  end

  if value == 0 then
    return "Md Update Action: New (0)"
  end
  if value == 1 then
    return "Md Update Action: Change (1)"
  end
  if value == 2 then
    return "Md Update Action: Delete (2)"
  end
  if value == 3 then
    return "Md Update Action: DeleteThru (3)"
  end
  if value == 4 then
    return "Md Update Action: DeleteFrom (4)"
  end
  if value == 5 then
    return "Md Update Action: Overlay (5)"
  end

  return "Md Update Action: Unknown("..value..")"
end

-- Dissect: Md Update Action
eurex_t7_emdi_fast_v14_0.md_update_action.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Md Update Action was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.md_update_action.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_update_action, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_update_action, range, value, display)
  end

  return offset, value
end

-- Md Entry Type
eurex_t7_emdi_fast_v14_0.md_entry_type = {}

-- Display: Md Entry Type
eurex_t7_emdi_fast_v14_0.md_entry_type.display = function(value)
  if value == nil then
    return "Md Entry Type: No Value"
  end

  if value == 0 then
    return "Md Entry Type: Bid (0)"
  end
  if value == 1 then
    return "Md Entry Type: Offer (1)"
  end
  if value == 2 then
    return "Md Entry Type: Trade (2)"
  end
  if value == 3 then
    return "Md Entry Type: EmptyBook (J)"
  end
  if value == 4 then
    return "Md Entry Type: AuctionClearingPrice (Q)"
  end
  if value == 5 then
    return "Md Entry Type: SettlementPrice (6)"
  end
  if value == 6 then
    return "Md Entry Type: OpenInterest (C)"
  end
  if value == 7 then
    return "Md Entry Type: TradeVolume (B)"
  end
  if value == 8 then
    return "Md Entry Type: MarketBid (b)"
  end
  if value == 9 then
    return "Md Entry Type: MarketOffer (c)"
  end
  if value == 10 then
    return "Md Entry Type: Imbalance (A)"
  end

  return "Md Entry Type: Unknown("..value..")"
end

-- Dissect: Md Entry Type
eurex_t7_emdi_fast_v14_0.md_entry_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Md Entry Type was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.md_entry_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_entry_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_entry_type, range, value, display)
  end

  return offset, value
end

-- Md Entry Px (Delta)
eurex_t7_emdi_fast_v14_0.md_entry_px_delta = {}

-- Display: Md Entry Px (Delta)
eurex_t7_emdi_fast_v14_0.md_entry_px_delta.display = function(value)
  if value == nil then
    return "Md Entry Px: No Value"
  end

  return "Md Entry Px: "..value
end

-- Dissect: Md Entry Px (Delta)
eurex_t7_emdi_fast_v14_0.md_entry_px_delta.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  local exponent_delta = nil
  local mantissa_delta = nil
  exponent_delta, offset = read_nullable_signed(buffer, offset)

  if exponent_delta ~= nil then
    mantissa_delta, offset = read_stop_bit_signed(buffer, offset)
    exponent = (state.values[key[1]] or 0) + exponent_delta
    mantissa = (state.values[key[2]] or 0) + mantissa_delta
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  end

  if exponent ~= nil and mantissa ~= nil then
    value = mantissa * (10 ^ exponent)
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.md_entry_px_delta.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_entry_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_entry_px, range, value, display)
  end

  return offset, value
end

-- Md Entry Px (Sent)
eurex_t7_emdi_fast_v14_0.md_entry_px_sent = {}

-- Display: Md Entry Px (Sent)
eurex_t7_emdi_fast_v14_0.md_entry_px_sent.display = function(value)
  if value == nil then
    return "Md Entry Px: No Value"
  end

  return "Md Entry Px: "..value
end

-- Dissect: Md Entry Px (Sent)
eurex_t7_emdi_fast_v14_0.md_entry_px_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  exponent, offset = read_nullable_signed(buffer, offset)
  if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end

  if exponent ~= nil and mantissa ~= nil then
    value = mantissa * (10 ^ exponent)
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.md_entry_px_sent.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_entry_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_entry_px, range, value, display)
  end

  return offset, value
end

-- Md Entry Size
eurex_t7_emdi_fast_v14_0.md_entry_size = {}

-- Display: Md Entry Size
eurex_t7_emdi_fast_v14_0.md_entry_size.display = function(value)
  if value == nil then
    return "Md Entry Size: No Value"
  end

  return "Md Entry Size: "..value
end

-- Dissect: Md Entry Size
eurex_t7_emdi_fast_v14_0.md_entry_size.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  local exponent_delta = nil
  local mantissa_delta = nil
  exponent_delta, offset = read_nullable_signed(buffer, offset)

  if exponent_delta ~= nil then
    mantissa_delta, offset = read_stop_bit_signed(buffer, offset)
    exponent = (state.values[key[1]] or 0) + exponent_delta
    mantissa = (state.values[key[2]] or 0) + mantissa_delta
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  end

  if exponent ~= nil and mantissa ~= nil then
    value = mantissa * (10 ^ exponent)
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.md_entry_size.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_entry_size, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_entry_size, range, value, display)
  end

  return offset, value
end

-- Number Of Orders
eurex_t7_emdi_fast_v14_0.number_of_orders = {}

-- Dissect: Number Of Orders
eurex_t7_emdi_fast_v14_0.number_of_orders.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_nullable_signed(buffer, offset)

  if value_delta ~= nil then
    value = (state.values[key] or 0) + value_delta
    state.values[key] = value
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.number_of_orders, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.number_of_orders, range, 0)
    absent:set_text("Number Of Orders: No Value")
  end

  return offset, value
end

-- Md Price Level (Sent)
eurex_t7_emdi_fast_v14_0.md_price_level_sent = {}

-- Dissect: Md Price Level (Sent)
eurex_t7_emdi_fast_v14_0.md_price_level_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_price_level, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_price_level, range, 0)
    absent:set_text("Md Price Level: No Value")
  end

  return offset, value
end

-- Md Price Level (Increment)
eurex_t7_emdi_fast_v14_0.md_price_level_increment = {}

-- Dissect: Md Price Level (Increment)
eurex_t7_emdi_fast_v14_0.md_price_level_increment.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = state.values[key]
    if value ~= nil then value = value + 1 end
  end

  state.values[key] = value


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_price_level, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_price_level, range, 0)
    absent:set_text("Md Price Level: No Value")
  end

  return offset, value
end

-- Md Entry Time (Copy)
eurex_t7_emdi_fast_v14_0.md_entry_time_copy = {}

-- Dissect: Md Entry Time (Copy)
eurex_t7_emdi_fast_v14_0.md_entry_time_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_int64(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_entry_time, range, NSTime.new(0, 0))
    absent:set_text("Md Entry Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_entry_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Md Entry Time (Delta)
eurex_t7_emdi_fast_v14_0.md_entry_time_delta = {}

-- Dissect: Md Entry Time (Delta)
eurex_t7_emdi_fast_v14_0.md_entry_time_delta.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_nullable_int64(buffer, offset)

  if value_delta ~= nil then
    value = (state.values[key] or Int64(0)) + value_delta
    state.values[key] = value
  end

  local range = buffer(start, offset - start)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_entry_time, range, NSTime.new(0, 0))
    absent:set_text("Md Entry Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_entry_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Potential Security Trading Event (Sent)
eurex_t7_emdi_fast_v14_0.potential_security_trading_event_sent = {}

-- Display: Potential Security Trading Event (Sent)
eurex_t7_emdi_fast_v14_0.potential_security_trading_event_sent.display = function(value)
  if value == nil then
    return "Potential Security Trading Event: No Value"
  end

  if value == 0 then
    return "Potential Security Trading Event: None (0)"
  end
  if value == 1 then
    return "Potential Security Trading Event: PriceVolatilityAuctionIsExtended (10)"
  end
  if value == 2 then
    return "Potential Security Trading Event: PriceVolatilityAuctionIsExtendedAgain (11)"
  end

  return "Potential Security Trading Event: Unknown("..value..")"
end

-- Dissect: Potential Security Trading Event (Sent)
eurex_t7_emdi_fast_v14_0.potential_security_trading_event_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.potential_security_trading_event_sent.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.potential_security_trading_event, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.potential_security_trading_event, range, value, display)
  end

  return offset, value
end

-- Potential Security Trading Event (Default)
eurex_t7_emdi_fast_v14_0.potential_security_trading_event_default = {}

-- Display: Potential Security Trading Event (Default)
eurex_t7_emdi_fast_v14_0.potential_security_trading_event_default.display = function(value)
  if value == nil then
    return "Potential Security Trading Event: No Value"
  end

  if value == 0 then
    return "Potential Security Trading Event: None (0)"
  end
  if value == 1 then
    return "Potential Security Trading Event: PriceVolatilityAuctionIsExtended (10)"
  end
  if value == 2 then
    return "Potential Security Trading Event: PriceVolatilityAuctionIsExtendedAgain (11)"
  end

  return "Potential Security Trading Event: Unknown("..value..")"
end

-- Dissect: Potential Security Trading Event (Default)
eurex_t7_emdi_fast_v14_0.potential_security_trading_event_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.potential_security_trading_event_default.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.potential_security_trading_event, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.potential_security_trading_event, range, value, display)
  end

  return offset, value
end

-- Quote Condition (Sent)
eurex_t7_emdi_fast_v14_0.quote_condition_sent = {}

-- Display: Quote Condition (Sent)
eurex_t7_emdi_fast_v14_0.quote_condition_sent.display = function(value)
  if value == nil then
    return "Quote Condition: No Value"
  end

  if value == 0 then
    return "Quote Condition: Crossed (F)"
  end
  if value == 1 then
    return "Quote Condition: OrderImbalance (Z)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition (Sent)
eurex_t7_emdi_fast_v14_0.quote_condition_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.quote_condition_sent.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.quote_condition, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.quote_condition, range, value, display)
  end

  return offset, value
end

-- Quote Condition (Copy)
eurex_t7_emdi_fast_v14_0.quote_condition_copy = {}

-- Display: Quote Condition (Copy)
eurex_t7_emdi_fast_v14_0.quote_condition_copy.display = function(value)
  if value == nil then
    return "Quote Condition: No Value"
  end

  if value == 0 then
    return "Quote Condition: Crossed (F)"
  end
  if value == 1 then
    return "Quote Condition: OrderImbalance (Z)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition (Copy)
eurex_t7_emdi_fast_v14_0.quote_condition_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.quote_condition_copy.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.quote_condition, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.quote_condition, range, value, display)
  end

  return offset, value
end

-- Trd Type (Sent)
eurex_t7_emdi_fast_v14_0.trd_type_sent = {}

-- Display: Trd Type (Sent)
eurex_t7_emdi_fast_v14_0.trd_type_sent.display = function(value)
  if value == nil then
    return "Trd Type: No Value"
  end

  if value == 0 then
    return "Trd Type: RegularTrade (0)"
  end
  if value == 1 then
    return "Trd Type: BlockTrade (1)"
  end
  if value == 2 then
    return "Trd Type: EFP (2)"
  end
  if value == 3 then
    return "Trd Type: ExchangeForSwap (12)"
  end
  if value == 4 then
    return "Trd Type: OTC (54)"
  end
  if value == 5 then
    return "Trd Type: ExchangeBasisFacility (55)"
  end
  if value == 6 then
    return "Trd Type: VolaTrade (1000)"
  end
  if value == 7 then
    return "Trd Type: EFPFinTrade (1001)"
  end
  if value == 8 then
    return "Trd Type: EFPIndexFuturesTrade (1002)"
  end
  if value == 9 then
    return "Trd Type: BlockTradeAtMarket (1004)"
  end
  if value == 10 then
    return "Trd Type: XetraEurexEnlightTriggeredTrade (1006)"
  end
  if value == 11 then
    return "Trd Type: BlockQTPIPTrade (1007)"
  end
  if value == 12 then
    return "Trd Type: DeltaTradeAtMarket (1017)"
  end
  if value == 13 then
    return "Trd Type: OpeningAuctionTrade (1100)"
  end
  if value == 14 then
    return "Trd Type: IntradayAuctionTrade (1101)"
  end
  if value == 15 then
    return "Trd Type: VolatilityAuctionTrade (1102)"
  end
  if value == 16 then
    return "Trd Type: ClosingAuctionTrade (1103)"
  end
  if value == 17 then
    return "Trd Type: CrossAuctionTrade (1104)"
  end
  if value == 18 then
    return "Trd Type: IPOAuctionTrade (1107)"
  end
  if value == 19 then
    return "Trd Type: LiquidityImprovementCross (1108)"
  end
  if value == 20 then
    return "Trd Type: RetailAuctionTrade (1109)"
  end

  return "Trd Type: Unknown("..value..")"
end

-- Dissect: Trd Type (Sent)
eurex_t7_emdi_fast_v14_0.trd_type_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.trd_type_sent.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.trd_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.trd_type, range, value, display)
  end

  return offset, value
end

-- Trd Type (Default)
eurex_t7_emdi_fast_v14_0.trd_type_default = {}

-- Display: Trd Type (Default)
eurex_t7_emdi_fast_v14_0.trd_type_default.display = function(value)
  if value == nil then
    return "Trd Type: No Value"
  end

  if value == 0 then
    return "Trd Type: RegularTrade (0)"
  end
  if value == 1 then
    return "Trd Type: BlockTrade (1)"
  end
  if value == 2 then
    return "Trd Type: EFP (2)"
  end
  if value == 3 then
    return "Trd Type: ExchangeForSwap (12)"
  end
  if value == 4 then
    return "Trd Type: OTC (54)"
  end
  if value == 5 then
    return "Trd Type: ExchangeBasisFacility (55)"
  end
  if value == 6 then
    return "Trd Type: VolaTrade (1000)"
  end
  if value == 7 then
    return "Trd Type: EFPFinTrade (1001)"
  end
  if value == 8 then
    return "Trd Type: EFPIndexFuturesTrade (1002)"
  end
  if value == 9 then
    return "Trd Type: BlockTradeAtMarket (1004)"
  end
  if value == 10 then
    return "Trd Type: XetraEurexEnlightTriggeredTrade (1006)"
  end
  if value == 11 then
    return "Trd Type: BlockQTPIPTrade (1007)"
  end
  if value == 12 then
    return "Trd Type: DeltaTradeAtMarket (1017)"
  end
  if value == 13 then
    return "Trd Type: OpeningAuctionTrade (1100)"
  end
  if value == 14 then
    return "Trd Type: IntradayAuctionTrade (1101)"
  end
  if value == 15 then
    return "Trd Type: VolatilityAuctionTrade (1102)"
  end
  if value == 16 then
    return "Trd Type: ClosingAuctionTrade (1103)"
  end
  if value == 17 then
    return "Trd Type: CrossAuctionTrade (1104)"
  end
  if value == 18 then
    return "Trd Type: IPOAuctionTrade (1107)"
  end
  if value == 19 then
    return "Trd Type: LiquidityImprovementCross (1108)"
  end
  if value == 20 then
    return "Trd Type: RetailAuctionTrade (1109)"
  end

  return "Trd Type: Unknown("..value..")"
end

-- Dissect: Trd Type (Default)
eurex_t7_emdi_fast_v14_0.trd_type_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.trd_type_default.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.trd_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.trd_type, range, value, display)
  end

  return offset, value
end

-- Algorithmic Trade Indicator
eurex_t7_emdi_fast_v14_0.algorithmic_trade_indicator = {}

-- Display: Algorithmic Trade Indicator
eurex_t7_emdi_fast_v14_0.algorithmic_trade_indicator.display = function(value)
  if value == nil then
    return "Algorithmic Trade Indicator: No Value"
  end

  if value == 0 then
    return "Algorithmic Trade Indicator: AlgorithmicTrade (1)"
  end

  return "Algorithmic Trade Indicator: Unknown("..value..")"
end

-- Dissect: Algorithmic Trade Indicator
eurex_t7_emdi_fast_v14_0.algorithmic_trade_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.algorithmic_trade_indicator.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.algorithmic_trade_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.algorithmic_trade_indicator, range, value, display)
  end

  return offset, value
end

-- Trade Condition (Default)
eurex_t7_emdi_fast_v14_0.trade_condition_default_1 = {}

-- Display: Trade Condition (Default)
eurex_t7_emdi_fast_v14_0.trade_condition_default_1.display = function(value)
  if value == nil then
    return "Trade Condition: No Value"
  end

  local names = {}

  if bit.band(value, 1) ~= 0 then names[#names + 1] = "ExchangeLast (U)" end
  if bit.band(value, 2) ~= 0 then names[#names + 1] = "OpeningPrice (R)" end
  if bit.band(value, 4) ~= 0 then names[#names + 1] = "HighPrice (AX)" end
  if bit.band(value, 8) ~= 0 then names[#names + 1] = "LowPrice (AY)" end
  if bit.band(value, 16) ~= 0 then names[#names + 1] = "OfficialClosingPrice (AJ)" end
  if bit.band(value, 32) ~= 0 then names[#names + 1] = "LastAuctionPrice (AW)" end
  if bit.band(value, 64) ~= 0 then names[#names + 1] = "OutOfSequenceETH (k)" end
  if bit.band(value, 128) ~= 0 then names[#names + 1] = "PreviousClosingPrice (BD)" end
  if bit.band(value, 256) ~= 0 then names[#names + 1] = "VolumeOnly (a)" end
  if bit.band(value, 512) ~= 0 then names[#names + 1] = "TradingOnTermsOfIssue (BC)" end
  if bit.band(value, 1024) ~= 0 then names[#names + 1] = "SpecialAuction (SA)" end
  if bit.band(value, 2048) ~= 0 then names[#names + 1] = "TradeAtClose (TC)" end
  if bit.band(value, 4096) ~= 0 then names[#names + 1] = "Retail (XR)" end
  if bit.band(value, 8192) ~= 0 then names[#names + 1] = "MidpointPrice (BB)" end

  if #names == 0 then
    return "Trade Condition: None"
  end

  return "Trade Condition: "..table.concat(names, ", ")
end

-- Dissect: Trade Condition (Default)
eurex_t7_emdi_fast_v14_0.trade_condition_default_1.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 1
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.trade_condition_default_1.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.trade_condition, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.trade_condition, range, value, display)
  end

  return offset, value
end

-- Trade Condition (Default)
eurex_t7_emdi_fast_v14_0.trade_condition_default_optional_u_int32_field = {}

-- Display: Trade Condition (Default)
eurex_t7_emdi_fast_v14_0.trade_condition_default_optional_u_int32_field.display = function(value)
  if value == nil then
    return "Trade Condition: No Value"
  end

  local names = {}

  if bit.band(value, 1) ~= 0 then names[#names + 1] = "ExchangeLast (U)" end
  if bit.band(value, 2) ~= 0 then names[#names + 1] = "OpeningPrice (R)" end
  if bit.band(value, 4) ~= 0 then names[#names + 1] = "HighPrice (AX)" end
  if bit.band(value, 8) ~= 0 then names[#names + 1] = "LowPrice (AY)" end
  if bit.band(value, 16) ~= 0 then names[#names + 1] = "OfficialClosingPrice (AJ)" end
  if bit.band(value, 32) ~= 0 then names[#names + 1] = "LastAuctionPrice (AW)" end
  if bit.band(value, 64) ~= 0 then names[#names + 1] = "OutOfSequenceETH (k)" end
  if bit.band(value, 128) ~= 0 then names[#names + 1] = "PreviousClosingPrice (BD)" end
  if bit.band(value, 256) ~= 0 then names[#names + 1] = "VolumeOnly (a)" end
  if bit.band(value, 512) ~= 0 then names[#names + 1] = "TradingOnTermsOfIssue (BC)" end
  if bit.band(value, 1024) ~= 0 then names[#names + 1] = "SpecialAuction (SA)" end
  if bit.band(value, 2048) ~= 0 then names[#names + 1] = "TradeAtClose (TC)" end
  if bit.band(value, 4096) ~= 0 then names[#names + 1] = "Retail (XR)" end
  if bit.band(value, 8192) ~= 0 then names[#names + 1] = "MidpointPrice (BB)" end

  if #names == 0 then
    return "Trade Condition: None"
  end

  return "Trade Condition: "..table.concat(names, ", ")
end

-- Dissect: Trade Condition (Default)
eurex_t7_emdi_fast_v14_0.trade_condition_default_optional_u_int32_field.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.trade_condition_default_optional_u_int32_field.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.trade_condition, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.trade_condition, range, value, display)
  end

  return offset, value
end

-- Multi Leg Reporting Type (Default)
eurex_t7_emdi_fast_v14_0.multi_leg_reporting_type_default_1 = {}

-- Display: Multi Leg Reporting Type (Default)
eurex_t7_emdi_fast_v14_0.multi_leg_reporting_type_default_1.display = function(value)
  if value == nil then
    return "Multi Leg Reporting Type: No Value"
  end

  if value == 0 then
    return "Multi Leg Reporting Type: SingleSecurity (1)"
  end
  if value == 1 then
    return "Multi Leg Reporting Type: IndividualLegOfAMultiLegSecurity (2)"
  end
  if value == 2 then
    return "Multi Leg Reporting Type: MultiLegSecurity (3)"
  end

  return "Multi Leg Reporting Type: Unknown("..value..")"
end

-- Dissect: Multi Leg Reporting Type (Default)
eurex_t7_emdi_fast_v14_0.multi_leg_reporting_type_default_1.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 1
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.multi_leg_reporting_type_default_1.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.multi_leg_reporting_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.multi_leg_reporting_type, range, value, display)
  end

  return offset, value
end

-- Multi Leg Reporting Type (Default)
eurex_t7_emdi_fast_v14_0.multi_leg_reporting_type_default_optional_u_int32_field = {}

-- Display: Multi Leg Reporting Type (Default)
eurex_t7_emdi_fast_v14_0.multi_leg_reporting_type_default_optional_u_int32_field.display = function(value)
  if value == nil then
    return "Multi Leg Reporting Type: No Value"
  end

  if value == 0 then
    return "Multi Leg Reporting Type: SingleSecurity (1)"
  end
  if value == 1 then
    return "Multi Leg Reporting Type: IndividualLegOfAMultiLegSecurity (2)"
  end
  if value == 2 then
    return "Multi Leg Reporting Type: MultiLegSecurity (3)"
  end

  return "Multi Leg Reporting Type: Unknown("..value..")"
end

-- Dissect: Multi Leg Reporting Type (Default)
eurex_t7_emdi_fast_v14_0.multi_leg_reporting_type_default_optional_u_int32_field.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.multi_leg_reporting_type_default_optional_u_int32_field.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.multi_leg_reporting_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.multi_leg_reporting_type, range, value, display)
  end

  return offset, value
end

-- Multi Leg Price Model (Default)
eurex_t7_emdi_fast_v14_0.multi_leg_price_model_default_0 = {}

-- Display: Multi Leg Price Model (Default)
eurex_t7_emdi_fast_v14_0.multi_leg_price_model_default_0.display = function(value)
  if value == nil then
    return "Multi Leg Price Model: No Value"
  end

  if value == 0 then
    return "Multi Leg Price Model: Standard (0)"
  end
  if value == 1 then
    return "Multi Leg Price Model: UserDefined (1)"
  end

  return "Multi Leg Price Model: Unknown("..value..")"
end

-- Dissect: Multi Leg Price Model (Default)
eurex_t7_emdi_fast_v14_0.multi_leg_price_model_default_0.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.multi_leg_price_model_default_0.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.multi_leg_price_model, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.multi_leg_price_model, range, value, display)
  end

  return offset, value
end

-- Multi Leg Price Model (Default)
eurex_t7_emdi_fast_v14_0.multi_leg_price_model_default_optional_u_int32_field = {}

-- Display: Multi Leg Price Model (Default)
eurex_t7_emdi_fast_v14_0.multi_leg_price_model_default_optional_u_int32_field.display = function(value)
  if value == nil then
    return "Multi Leg Price Model: No Value"
  end

  if value == 0 then
    return "Multi Leg Price Model: Standard (0)"
  end
  if value == 1 then
    return "Multi Leg Price Model: UserDefined (1)"
  end

  return "Multi Leg Price Model: Unknown("..value..")"
end

-- Dissect: Multi Leg Price Model (Default)
eurex_t7_emdi_fast_v14_0.multi_leg_price_model_default_optional_u_int32_field.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.multi_leg_price_model_default_optional_u_int32_field.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.multi_leg_price_model, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.multi_leg_price_model, range, value, display)
  end

  return offset, value
end

-- Aggressor Time
eurex_t7_emdi_fast_v14_0.aggressor_time = {}

-- Dissect: Aggressor Time
eurex_t7_emdi_fast_v14_0.aggressor_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.aggressor_time, range, NSTime.new(0, 0))
    absent:set_text("Aggressor Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.aggressor_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Request Time
eurex_t7_emdi_fast_v14_0.request_time = {}

-- Dissect: Request Time
eurex_t7_emdi_fast_v14_0.request_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.request_time, range, NSTime.new(0, 0))
    absent:set_text("Request Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.request_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Trans Bkd Time
eurex_t7_emdi_fast_v14_0.trans_bkd_time = {}

-- Dissect: Trans Bkd Time
eurex_t7_emdi_fast_v14_0.trans_bkd_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.trans_bkd_time, range, NSTime.new(0, 0))
    absent:set_text("Trans Bkd Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.trans_bkd_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Aggressor Side
eurex_t7_emdi_fast_v14_0.aggressor_side = {}

-- Display: Aggressor Side
eurex_t7_emdi_fast_v14_0.aggressor_side.display = function(value)
  if value == nil then
    return "Aggressor Side: No Value"
  end

  if value == 0 then
    return "Aggressor Side: Buy (1)"
  end
  if value == 1 then
    return "Aggressor Side: Sell (2)"
  end

  return "Aggressor Side: Unknown("..value..")"
end

-- Dissect: Aggressor Side
eurex_t7_emdi_fast_v14_0.aggressor_side.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.aggressor_side.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.aggressor_side, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.aggressor_side, range, value, display)
  end

  return offset, value
end

-- Number Of Buy Orders
eurex_t7_emdi_fast_v14_0.number_of_buy_orders = {}

-- Dissect: Number Of Buy Orders
eurex_t7_emdi_fast_v14_0.number_of_buy_orders.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.number_of_buy_orders, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.number_of_buy_orders, range, 0)
    absent:set_text("Number Of Buy Orders: No Value")
  end

  return offset, value
end

-- Number Of Sell Orders
eurex_t7_emdi_fast_v14_0.number_of_sell_orders = {}

-- Dissect: Number Of Sell Orders
eurex_t7_emdi_fast_v14_0.number_of_sell_orders.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.number_of_sell_orders, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.number_of_sell_orders, range, 0)
    absent:set_text("Number Of Sell Orders: No Value")
  end

  return offset, value
end

-- Number Of Buy Sides
eurex_t7_emdi_fast_v14_0.number_of_buy_sides = {}

-- Dissect: Number Of Buy Sides
eurex_t7_emdi_fast_v14_0.number_of_buy_sides.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.number_of_buy_sides, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.number_of_buy_sides, range, 0)
    absent:set_text("Number Of Buy Sides: No Value")
  end

  return offset, value
end

-- Number Of Sell Sides
eurex_t7_emdi_fast_v14_0.number_of_sell_sides = {}

-- Dissect: Number Of Sell Sides
eurex_t7_emdi_fast_v14_0.number_of_sell_sides.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.number_of_sell_sides, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.number_of_sell_sides, range, 0)
    absent:set_text("Number Of Sell Sides: No Value")
  end

  return offset, value
end

-- Total Num Of Trades (Sent)
eurex_t7_emdi_fast_v14_0.total_num_of_trades_sent = {}

-- Dissect: Total Num Of Trades (Sent)
eurex_t7_emdi_fast_v14_0.total_num_of_trades_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.total_num_of_trades, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.total_num_of_trades, range, 0)
    absent:set_text("Total Num Of Trades: No Value")
  end

  return offset, value
end

-- Total Num Of Trades (Default)
eurex_t7_emdi_fast_v14_0.total_num_of_trades_default = {}

-- Dissect: Total Num Of Trades (Default)
eurex_t7_emdi_fast_v14_0.total_num_of_trades_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.total_num_of_trades, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.total_num_of_trades, range, 0)
    absent:set_text("Total Num Of Trades: No Value")
  end

  return offset, value
end

-- Resting Cxl Qty
eurex_t7_emdi_fast_v14_0.resting_cxl_qty = {}

-- Display: Resting Cxl Qty
eurex_t7_emdi_fast_v14_0.resting_cxl_qty.display = function(value)
  if value == nil then
    return "Resting Cxl Qty: No Value"
  end

  return "Resting Cxl Qty: "..value
end

-- Dissect: Resting Cxl Qty
eurex_t7_emdi_fast_v14_0.resting_cxl_qty.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  exponent, offset = read_nullable_signed(buffer, offset)
  if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end

  if exponent ~= nil and mantissa ~= nil then
    value = mantissa * (10 ^ exponent)
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.resting_cxl_qty.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.resting_cxl_qty, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.resting_cxl_qty, range, value, display)
  end

  return offset, value
end

-- Md Entry Id
eurex_t7_emdi_fast_v14_0.md_entry_id = {}

-- Dissect: Md Entry Id
eurex_t7_emdi_fast_v14_0.md_entry_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_nullable_signed(buffer, offset)

  if value_delta ~= nil then
    value = (state.values[key] or 0) + value_delta
    state.values[key] = value
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_entry_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_entry_id, range, 0)
    absent:set_text("Md Entry Id: No Value")
  end

  return offset, value
end

-- Non Disclosed Trade Volume (Sent)
eurex_t7_emdi_fast_v14_0.non_disclosed_trade_volume_sent = {}

-- Display: Non Disclosed Trade Volume (Sent)
eurex_t7_emdi_fast_v14_0.non_disclosed_trade_volume_sent.display = function(value)
  if value == nil then
    return "Non Disclosed Trade Volume: No Value"
  end

  return "Non Disclosed Trade Volume: "..value
end

-- Dissect: Non Disclosed Trade Volume (Sent)
eurex_t7_emdi_fast_v14_0.non_disclosed_trade_volume_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  exponent, offset = read_nullable_signed(buffer, offset)
  if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end

  if exponent ~= nil and mantissa ~= nil then
    value = mantissa * (10 ^ exponent)
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.non_disclosed_trade_volume_sent.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.non_disclosed_trade_volume, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.non_disclosed_trade_volume, range, value, display)
  end

  return offset, value
end

-- Non Disclosed Trade Volume (Default)
eurex_t7_emdi_fast_v14_0.non_disclosed_trade_volume_default = {}

-- Display: Non Disclosed Trade Volume (Default)
eurex_t7_emdi_fast_v14_0.non_disclosed_trade_volume_default.display = function(value)
  if value == nil then
    return "Non Disclosed Trade Volume: No Value"
  end

  return "Non Disclosed Trade Volume: "..value
end

-- Dissect: Non Disclosed Trade Volume (Default)
eurex_t7_emdi_fast_v14_0.non_disclosed_trade_volume_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
  else
    exponent = nil
  end

  if exponent ~= nil and mantissa ~= nil then
    value = mantissa * (10 ^ exponent)
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.non_disclosed_trade_volume_default.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.non_disclosed_trade_volume, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.non_disclosed_trade_volume, range, value, display)
  end

  return offset, value
end

-- Security Update Action
eurex_t7_emdi_fast_v14_0.security_update_action = {}

-- Dissect: Security Update Action
eurex_t7_emdi_fast_v14_0.security_update_action.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "A"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_update_action, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_update_action, range, "")
    absent:set_text("Security Update Action: No Value")
  end

  return offset, value
end

-- Security Desc
eurex_t7_emdi_fast_v14_0.security_desc = {}

-- Dissect: Security Desc
eurex_t7_emdi_fast_v14_0.security_desc.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_desc, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_desc, range, "")
    absent:set_text("Security Desc: No Value")
  end

  return offset, value
end

-- Security Type (Constant)
eurex_t7_emdi_fast_v14_0.security_type_constant = {}

-- Display: Security Type (Constant)
eurex_t7_emdi_fast_v14_0.security_type_constant.display = function(value)
  if value == nil then
    return "Security Type: No Value"
  end

  if value == 0 then
    return "Security Type: Option (OPT)"
  end
  if value == 1 then
    return "Security Type: Future (FUT)"
  end
  if value == 2 then
    return "Security Type: MultiLegInstrument (MLEG)"
  end
  if value == 3 then
    return "Security Type: VarianceFutures (VAR)"
  end
  if value == 4 then
    return "Security Type: TotalReturnFutures (TRF)"
  end
  if value == 5 then
    return "Security Type: CommonStock (CS)"
  end
  if value == 6 then
    return "Security Type: Bond (BOND)"
  end
  if value == 7 then
    return "Security Type: TradeAtReferencePrice (TARP)"
  end
  if value == 8 then
    return "Security Type: ExchangeTradedFund (ETF)"
  end
  if value == 9 then
    return "Security Type: ExchangeTradedCommodity (ETC)"
  end
  if value == 10 then
    return "Security Type: ExchangeTradedNote (ETN)"
  end
  if value == 11 then
    return "Security Type: Warrant (WAR)"
  end
  if value == 12 then
    return "Security Type: Other (OTHER)"
  end
  if value == 13 then
    return "Security Type: SubscriptionRight (SR)"
  end
  if value == 14 then
    return "Security Type: InvestmentFunds (FUN)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type (Constant)
eurex_t7_emdi_fast_v14_0.security_type_constant.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 2

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.security_type_constant.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_type, range, value, display)
  end

  return offset, value
end

-- Security Type (Sent)
eurex_t7_emdi_fast_v14_0.security_type_sent = {}

-- Display: Security Type (Sent)
eurex_t7_emdi_fast_v14_0.security_type_sent.display = function(value)
  if value == nil then
    return "Security Type: No Value"
  end

  if value == 0 then
    return "Security Type: Option (OPT)"
  end
  if value == 1 then
    return "Security Type: Future (FUT)"
  end
  if value == 2 then
    return "Security Type: MultiLegInstrument (MLEG)"
  end
  if value == 3 then
    return "Security Type: VarianceFutures (VAR)"
  end
  if value == 4 then
    return "Security Type: TotalReturnFutures (TRF)"
  end
  if value == 5 then
    return "Security Type: CommonStock (CS)"
  end
  if value == 6 then
    return "Security Type: Bond (BOND)"
  end
  if value == 7 then
    return "Security Type: TradeAtReferencePrice (TARP)"
  end
  if value == 8 then
    return "Security Type: ExchangeTradedFund (ETF)"
  end
  if value == 9 then
    return "Security Type: ExchangeTradedCommodity (ETC)"
  end
  if value == 10 then
    return "Security Type: ExchangeTradedNote (ETN)"
  end
  if value == 11 then
    return "Security Type: Warrant (WAR)"
  end
  if value == 12 then
    return "Security Type: Other (OTHER)"
  end
  if value == 13 then
    return "Security Type: SubscriptionRight (SR)"
  end
  if value == 14 then
    return "Security Type: InvestmentFunds (FUN)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type (Sent)
eurex_t7_emdi_fast_v14_0.security_type_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.security_type_sent.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_type, range, value, display)
  end

  return offset, value
end

-- Security Sub Type
eurex_t7_emdi_fast_v14_0.security_sub_type = {}

-- Dissect: Security Sub Type
eurex_t7_emdi_fast_v14_0.security_sub_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_sub_type, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_sub_type, range, 0)
    absent:set_text("Security Sub Type: No Value")
  end

  return offset, value
end

-- Product Complex (Copy)
eurex_t7_emdi_fast_v14_0.product_complex_copy = {}

-- Display: Product Complex (Copy)
eurex_t7_emdi_fast_v14_0.product_complex_copy.display = function(value)
  if value == nil then
    return "Product Complex: No Value"
  end

  if value == 0 then
    return "Product Complex: SimpleInstrument (1)"
  end
  if value == 1 then
    return "Product Complex: StandardOptionStrategy (2)"
  end
  if value == 2 then
    return "Product Complex: NonStandardOptionStrategy (3)"
  end
  if value == 3 then
    return "Product Complex: VolatilityStrategy (4)"
  end
  if value == 4 then
    return "Product Complex: FuturesSpread (5)"
  end
  if value == 5 then
    return "Product Complex: InterProductSpread (6)"
  end
  if value == 6 then
    return "Product Complex: StandardFuturesStrategy (7)"
  end
  if value == 7 then
    return "Product Complex: PackAndBundle (8)"
  end
  if value == 8 then
    return "Product Complex: Strip (9)"
  end
  if value == 9 then
    return "Product Complex: FlexibleInstrument (10)"
  end
  if value == 10 then
    return "Product Complex: CommodityStrip (11)"
  end
  if value == 11 then
    return "Product Complex: ScaledSimpleInstrument (12)"
  end
  if value == 12 then
    return "Product Complex: NonStandardVolatilityStrategy (13)"
  end
  if value == 13 then
    return "Product Complex: TotalReturnFutureStrategy (14)"
  end

  return "Product Complex: Unknown("..value..")"
end

-- Dissect: Product Complex (Copy)
eurex_t7_emdi_fast_v14_0.product_complex_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Product Complex was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.product_complex_copy.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.product_complex, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.product_complex, range, value, display)
  end

  return offset, value
end

-- Product Complex (Sent)
eurex_t7_emdi_fast_v14_0.product_complex_sent = {}

-- Display: Product Complex (Sent)
eurex_t7_emdi_fast_v14_0.product_complex_sent.display = function(value)
  if value == nil then
    return "Product Complex: No Value"
  end

  if value == 0 then
    return "Product Complex: SimpleInstrument (1)"
  end
  if value == 1 then
    return "Product Complex: StandardOptionStrategy (2)"
  end
  if value == 2 then
    return "Product Complex: NonStandardOptionStrategy (3)"
  end
  if value == 3 then
    return "Product Complex: VolatilityStrategy (4)"
  end
  if value == 4 then
    return "Product Complex: FuturesSpread (5)"
  end
  if value == 5 then
    return "Product Complex: InterProductSpread (6)"
  end
  if value == 6 then
    return "Product Complex: StandardFuturesStrategy (7)"
  end
  if value == 7 then
    return "Product Complex: PackAndBundle (8)"
  end
  if value == 8 then
    return "Product Complex: Strip (9)"
  end
  if value == 9 then
    return "Product Complex: FlexibleInstrument (10)"
  end
  if value == 10 then
    return "Product Complex: CommodityStrip (11)"
  end
  if value == 11 then
    return "Product Complex: ScaledSimpleInstrument (12)"
  end
  if value == 12 then
    return "Product Complex: NonStandardVolatilityStrategy (13)"
  end
  if value == 13 then
    return "Product Complex: TotalReturnFutureStrategy (14)"
  end

  return "Product Complex: Unknown("..value..")"
end

-- Dissect: Product Complex (Sent)
eurex_t7_emdi_fast_v14_0.product_complex_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.product_complex_sent.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.product_complex, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.product_complex, range, value, display)
  end

  return offset, value
end

-- Leg Ratio Multiplier
eurex_t7_emdi_fast_v14_0.leg_ratio_multiplier = {}

-- Dissect: Leg Ratio Multiplier
eurex_t7_emdi_fast_v14_0.leg_ratio_multiplier.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.leg_ratio_multiplier, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.leg_ratio_multiplier, range, 0)
    absent:set_text("Leg Ratio Multiplier: No Value")
  end

  return offset, value
end

-- Quantity Scaling Factor (Sent)
eurex_t7_emdi_fast_v14_0.quantity_scaling_factor_sent_optional = {}

-- Dissect: Quantity Scaling Factor (Sent)
eurex_t7_emdi_fast_v14_0.quantity_scaling_factor_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.quantity_scaling_factor, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.quantity_scaling_factor, range, 0)
    absent:set_text("Quantity Scaling Factor: No Value")
  end

  return offset, value
end

-- Quantity Scaling Factor (Sent)
eurex_t7_emdi_fast_v14_0.quantity_scaling_factor_sent_required = {}

-- Dissect: Quantity Scaling Factor (Sent)
eurex_t7_emdi_fast_v14_0.quantity_scaling_factor_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.quantity_scaling_factor, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.quantity_scaling_factor, range, 0)
    absent:set_text("Quantity Scaling Factor: No Value")
  end

  return offset, value
end

-- No Legs
eurex_t7_emdi_fast_v14_0.no_legs = {}

-- Dissect: No Legs
eurex_t7_emdi_fast_v14_0.no_legs.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.no_legs, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.no_legs, range, 0)
    absent:set_text("No Legs: No Value")
  end

  return offset, value
end

-- Leg Symbol
eurex_t7_emdi_fast_v14_0.leg_symbol = {}

-- Dissect: Leg Symbol
eurex_t7_emdi_fast_v14_0.leg_symbol.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Leg Symbol was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.leg_symbol, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.leg_symbol, range, 0)
    absent:set_text("Leg Symbol: No Value")
  end

  return offset, value
end

-- Leg Security Id
eurex_t7_emdi_fast_v14_0.leg_security_id = {}

-- Dissect: Leg Security Id
eurex_t7_emdi_fast_v14_0.leg_security_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.leg_security_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.leg_security_id, range, Int64(0))
    absent:set_text("Leg Security Id: No Value")
  end

  return offset, value
end

-- Leg Security Id Source
eurex_t7_emdi_fast_v14_0.leg_security_id_source = {}

-- Dissect: Leg Security Id Source
eurex_t7_emdi_fast_v14_0.leg_security_id_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "M"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.leg_security_id_source, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.leg_security_id_source, range, "")
    absent:set_text("Leg Security Id Source: No Value")
  end

  return offset, value
end

-- Leg Security Type
eurex_t7_emdi_fast_v14_0.leg_security_type = {}

-- Display: Leg Security Type
eurex_t7_emdi_fast_v14_0.leg_security_type.display = function(value)
  if value == nil then
    return "Leg Security Type: No Value"
  end

  if value == 0 then
    return "Leg Security Type: PartOfMultilegInstrument (MLEG)"
  end
  if value == 1 then
    return "Leg Security Type: UnderlyingLeg (ULEG)"
  end

  return "Leg Security Type: Unknown("..value..")"
end

-- Dissect: Leg Security Type
eurex_t7_emdi_fast_v14_0.leg_security_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.leg_security_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.leg_security_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.leg_security_type, range, value, display)
  end

  return offset, value
end

-- Leg Ratio Qty
eurex_t7_emdi_fast_v14_0.leg_ratio_qty = {}

-- Dissect: Leg Ratio Qty
eurex_t7_emdi_fast_v14_0.leg_ratio_qty.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.leg_ratio_qty, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.leg_ratio_qty, range, 0)
    absent:set_text("Leg Ratio Qty: No Value")
  end

  return offset, value
end

-- Leg Side
eurex_t7_emdi_fast_v14_0.leg_side = {}

-- Display: Leg Side
eurex_t7_emdi_fast_v14_0.leg_side.display = function(value)
  if value == nil then
    return "Leg Side: No Value"
  end

  if value == 0 then
    return "Leg Side: Buy (1)"
  end
  if value == 1 then
    return "Leg Side: Sell (2)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
eurex_t7_emdi_fast_v14_0.leg_side.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Leg Side was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.leg_side.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.leg_side, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.leg_side, range, value, display)
  end

  return offset, value
end

-- Leg Price
eurex_t7_emdi_fast_v14_0.leg_price = {}

-- Display: Leg Price
eurex_t7_emdi_fast_v14_0.leg_price.display = function(value)
  if value == nil then
    return "Leg Price: No Value"
  end

  return "Leg Price: "..value
end

-- Dissect: Leg Price
eurex_t7_emdi_fast_v14_0.leg_price.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  exponent, offset = read_nullable_signed(buffer, offset)
  if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end

  if exponent ~= nil and mantissa ~= nil then
    value = mantissa * (10 ^ exponent)
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.leg_price.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.leg_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.leg_price, range, value, display)
  end

  return offset, value
end

-- Related Price
eurex_t7_emdi_fast_v14_0.related_price = {}

-- Display: Related Price
eurex_t7_emdi_fast_v14_0.related_price.display = function(value)
  if value == nil then
    return "Related Price: No Value"
  end

  return "Related Price: "..value
end

-- Dissect: Related Price
eurex_t7_emdi_fast_v14_0.related_price.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  exponent, offset = read_nullable_signed(buffer, offset)
  if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end

  if exponent ~= nil and mantissa ~= nil then
    value = mantissa * (10 ^ exponent)
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.related_price.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.related_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.related_price, range, value, display)
  end

  return offset, value
end

-- Related Price Type
eurex_t7_emdi_fast_v14_0.related_price_type = {}

-- Display: Related Price Type
eurex_t7_emdi_fast_v14_0.related_price_type.display = function(value)
  if value == nil then
    return "Related Price Type: No Value"
  end

  if value == 0 then
    return "Related Price Type: Basis (1)"
  end
  if value == 1 then
    return "Related Price Type: CustomUnderlyingPrice (2)"
  end

  return "Related Price Type: Unknown("..value..")"
end

-- Dissect: Related Price Type
eurex_t7_emdi_fast_v14_0.related_price_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.related_price_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.related_price_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.related_price_type, range, value, display)
  end

  return offset, value
end

-- Trading Style
eurex_t7_emdi_fast_v14_0.trading_style = {}

-- Display: Trading Style
eurex_t7_emdi_fast_v14_0.trading_style.display = function(value)
  if value == nil then
    return "Trading Style: No Value"
  end

  if value == 0 then
    return "Trading Style: Regular (1)"
  end
  if value == 1 then
    return "Trading Style: TRF_TAC (2)"
  end
  if value == 2 then
    return "Trading Style: TRF_TAM (3)"
  end
  if value == 3 then
    return "Trading Style: MOC (4)"
  end

  return "Trading Style: Unknown("..value..")"
end

-- Dissect: Trading Style
eurex_t7_emdi_fast_v14_0.trading_style.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.trading_style.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.trading_style, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.trading_style, range, value, display)
  end

  return offset, value
end

-- No Market Segments
eurex_t7_emdi_fast_v14_0.no_market_segments = {}

-- Dissect: No Market Segments
eurex_t7_emdi_fast_v14_0.no_market_segments.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 1

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.no_market_segments, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.no_market_segments, range, 0)
    absent:set_text("No Market Segments: No Value")
  end

  return offset, value
end

-- Implied Market Indicator
eurex_t7_emdi_fast_v14_0.implied_market_indicator = {}

-- Display: Implied Market Indicator
eurex_t7_emdi_fast_v14_0.implied_market_indicator.display = function(value)
  if value == nil then
    return "Implied Market Indicator: No Value"
  end

  if value == 0 then
    return "Implied Market Indicator: NotImplied (0)"
  end
  if value == 1 then
    return "Implied Market Indicator: BothImpliedInAndImpliedOut (3)"
  end

  return "Implied Market Indicator: Unknown("..value..")"
end

-- Dissect: Implied Market Indicator
eurex_t7_emdi_fast_v14_0.implied_market_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.implied_market_indicator.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.implied_market_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.implied_market_indicator, range, value, display)
  end

  return offset, value
end

-- Side
eurex_t7_emdi_fast_v14_0.side = {}

-- Display: Side
eurex_t7_emdi_fast_v14_0.side.display = function(value)
  if value == nil then
    return "Side: No Value"
  end

  if value == 0 then
    return "Side: Buy (1)"
  end
  if value == 1 then
    return "Side: Sell (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
eurex_t7_emdi_fast_v14_0.side.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.side.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.side, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.side, range, value, display)
  end

  return offset, value
end

-- Order Qty (Delta)
eurex_t7_emdi_fast_v14_0.order_qty_delta = {}

-- Display: Order Qty (Delta)
eurex_t7_emdi_fast_v14_0.order_qty_delta.display = function(value)
  if value == nil then
    return "Order Qty: No Value"
  end

  return "Order Qty: "..value
end

-- Dissect: Order Qty (Delta)
eurex_t7_emdi_fast_v14_0.order_qty_delta.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  local exponent_delta = nil
  local mantissa_delta = nil
  exponent_delta, offset = read_nullable_signed(buffer, offset)

  if exponent_delta ~= nil then
    mantissa_delta, offset = read_stop_bit_signed(buffer, offset)
    exponent = (state.values[key[1]] or 0) + exponent_delta
    mantissa = (state.values[key[2]] or 0) + mantissa_delta
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  end

  if exponent ~= nil and mantissa ~= nil then
    value = mantissa * (10 ^ exponent)
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.order_qty_delta.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.order_qty, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.order_qty, range, value, display)
  end

  return offset, value
end

-- Order Qty (Sent)
eurex_t7_emdi_fast_v14_0.order_qty_sent = {}

-- Display: Order Qty (Sent)
eurex_t7_emdi_fast_v14_0.order_qty_sent.display = function(value)
  if value == nil then
    return "Order Qty: No Value"
  end

  return "Order Qty: "..value
end

-- Dissect: Order Qty (Sent)
eurex_t7_emdi_fast_v14_0.order_qty_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  exponent, offset = read_nullable_signed(buffer, offset)
  if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end

  if exponent ~= nil and mantissa ~= nil then
    value = mantissa * (10 ^ exponent)
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.order_qty_sent.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.order_qty, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.order_qty, range, value, display)
  end

  return offset, value
end

-- Cross Request Type
eurex_t7_emdi_fast_v14_0.cross_request_type = {}

-- Display: Cross Request Type
eurex_t7_emdi_fast_v14_0.cross_request_type.display = function(value)
  if value == nil then
    return "Cross Request Type: No Value"
  end

  if value == 0 then
    return "Cross Request Type: CrossAnnouncement (1)"
  end
  if value == 1 then
    return "Cross Request Type: LiquidityImprovementCross (2)"
  end

  return "Cross Request Type: Unknown("..value..")"
end

-- Dissect: Cross Request Type
eurex_t7_emdi_fast_v14_0.cross_request_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.cross_request_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.cross_request_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.cross_request_type, range, value, display)
  end

  return offset, value
end

-- No Cross Request Side Grp
eurex_t7_emdi_fast_v14_0.no_cross_request_side_grp = {}

-- Dissect: No Cross Request Side Grp
eurex_t7_emdi_fast_v14_0.no_cross_request_side_grp.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value = 1
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.no_cross_request_side_grp, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.no_cross_request_side_grp, range, 0)
    absent:set_text("No Cross Request Side Grp: No Value")
  end

  return offset, value
end

-- Input Source
eurex_t7_emdi_fast_v14_0.input_source = {}

-- Display: Input Source
eurex_t7_emdi_fast_v14_0.input_source.display = function(value)
  if value == nil then
    return "Input Source: No Value"
  end

  if value == 0 then
    return "Input Source: CLIPClientBroker (1)"
  end

  return "Input Source: Unknown("..value..")"
end

-- Dissect: Input Source
eurex_t7_emdi_fast_v14_0.input_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 0

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.input_source.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.input_source, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.input_source, range, value, display)
  end

  return offset, value
end

-- Refresh Indicator
eurex_t7_emdi_fast_v14_0.refresh_indicator = {}

-- Display: Refresh Indicator
eurex_t7_emdi_fast_v14_0.refresh_indicator.display = function(value)
  if value == nil then
    return "Refresh Indicator: No Value"
  end

  if value == 0 then
    return "Refresh Indicator: MandatoryRefresh (Y)"
  end
  if value == 1 then
    return "Refresh Indicator: OptionalRefresh (N)"
  end

  return "Refresh Indicator: Unknown("..value..")"
end

-- Dissect: Refresh Indicator
eurex_t7_emdi_fast_v14_0.refresh_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.refresh_indicator.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.refresh_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.refresh_indicator, range, value, display)
  end

  return offset, value
end

-- Last Update Time
eurex_t7_emdi_fast_v14_0.last_update_time = {}

-- Dissect: Last Update Time
eurex_t7_emdi_fast_v14_0.last_update_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_int64(buffer, offset)
  value = (state.values[key] or Int64(0)) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.last_update_time, range, NSTime.new(0, 0))
    absent:set_text("Last Update Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.last_update_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Md Book Type (Copy)
eurex_t7_emdi_fast_v14_0.md_book_type_copy = {}

-- Display: Md Book Type (Copy)
eurex_t7_emdi_fast_v14_0.md_book_type_copy.display = function(value)
  if value == nil then
    return "Md Book Type: No Value"
  end

  if value == 0 then
    return "Md Book Type: TopOfBook (1)"
  end
  if value == 1 then
    return "Md Book Type: PriceDepth (2)"
  end
  if value == 2 then
    return "Md Book Type: OrderDepth (3)"
  end

  return "Md Book Type: Unknown("..value..")"
end

-- Dissect: Md Book Type (Copy)
eurex_t7_emdi_fast_v14_0.md_book_type_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.md_book_type_copy.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_book_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_book_type, range, value, display)
  end

  return offset, value
end

-- Md Book Type (Constant)
eurex_t7_emdi_fast_v14_0.md_book_type_constant = {}

-- Display: Md Book Type (Constant)
eurex_t7_emdi_fast_v14_0.md_book_type_constant.display = function(value)
  if value == nil then
    return "Md Book Type: No Value"
  end

  if value == 0 then
    return "Md Book Type: TopOfBook (1)"
  end
  if value == 1 then
    return "Md Book Type: PriceDepth (2)"
  end
  if value == 2 then
    return "Md Book Type: OrderDepth (3)"
  end

  return "Md Book Type: Unknown("..value..")"
end

-- Dissect: Md Book Type (Constant)
eurex_t7_emdi_fast_v14_0.md_book_type_constant.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 0

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.md_book_type_constant.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_book_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_book_type, range, value, display)
  end

  return offset, value
end

-- Md Sub Book Type (Copy)
eurex_t7_emdi_fast_v14_0.md_sub_book_type_copy_optional = {}

-- Display: Md Sub Book Type (Copy)
eurex_t7_emdi_fast_v14_0.md_sub_book_type_copy_optional.display = function(value)
  if value == nil then
    return "Md Sub Book Type: No Value"
  end

  if value == 0 then
    return "Md Sub Book Type: IPSImpliedVolumeWithoutQuantityRestriction (1)"
  end
  if value == 1 then
    return "Md Sub Book Type: IPSImpliedVolumeWithQuantityRestriction (2)"
  end

  return "Md Sub Book Type: Unknown("..value..")"
end

-- Dissect: Md Sub Book Type (Copy)
eurex_t7_emdi_fast_v14_0.md_sub_book_type_copy_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.md_sub_book_type_copy_optional.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_sub_book_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_sub_book_type, range, value, display)
  end

  return offset, value
end

-- Md Sub Book Type (Copy)
eurex_t7_emdi_fast_v14_0.md_sub_book_type_copy_required = {}

-- Display: Md Sub Book Type (Copy)
eurex_t7_emdi_fast_v14_0.md_sub_book_type_copy_required.display = function(value)
  if value == nil then
    return "Md Sub Book Type: No Value"
  end

  if value == 0 then
    return "Md Sub Book Type: IPSImpliedVolumeWithoutQuantityRestriction (1)"
  end
  if value == 1 then
    return "Md Sub Book Type: IPSImpliedVolumeWithQuantityRestriction (2)"
  end

  return "Md Sub Book Type: Unknown("..value..")"
end

-- Dissect: Md Sub Book Type (Copy)
eurex_t7_emdi_fast_v14_0.md_sub_book_type_copy_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Md Sub Book Type was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.md_sub_book_type_copy_required.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_sub_book_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_sub_book_type, range, value, display)
  end

  return offset, value
end

-- Maturity Date
eurex_t7_emdi_fast_v14_0.maturity_date = {}

-- Dissect: Maturity Date
eurex_t7_emdi_fast_v14_0.maturity_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.maturity_date, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.maturity_date, range, 0)
    absent:set_text("Maturity Date: No Value")
  end

  return offset, value
end

-- Contract Date
eurex_t7_emdi_fast_v14_0.contract_date = {}

-- Dissect: Contract Date
eurex_t7_emdi_fast_v14_0.contract_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.contract_date, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.contract_date, range, 0)
    absent:set_text("Contract Date: No Value")
  end

  return offset, value
end

-- Security Reference Data Supplement
eurex_t7_emdi_fast_v14_0.security_reference_data_supplement = {}

-- Dissect: Security Reference Data Supplement
eurex_t7_emdi_fast_v14_0.security_reference_data_supplement.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_reference_data_supplement, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.security_reference_data_supplement, range, 0)
    absent:set_text("Security Reference Data Supplement: No Value")
  end

  return offset, value
end

-- Strike Price
eurex_t7_emdi_fast_v14_0.strike_price = {}

-- Display: Strike Price
eurex_t7_emdi_fast_v14_0.strike_price.display = function(value)
  if value == nil then
    return "Strike Price: No Value"
  end

  return "Strike Price: "..value
end

-- Dissect: Strike Price
eurex_t7_emdi_fast_v14_0.strike_price.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  exponent, offset = read_nullable_signed(buffer, offset)
  if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end

  if exponent ~= nil and mantissa ~= nil then
    value = mantissa * (10 ^ exponent)
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.strike_price.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.strike_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.strike_price, range, value, display)
  end

  return offset, value
end

-- Put Or Call
eurex_t7_emdi_fast_v14_0.put_or_call = {}

-- Display: Put Or Call
eurex_t7_emdi_fast_v14_0.put_or_call.display = function(value)
  if value == nil then
    return "Put Or Call: No Value"
  end

  if value == 0 then
    return "Put Or Call: Put (0)"
  end
  if value == 1 then
    return "Put Or Call: Call (1)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
eurex_t7_emdi_fast_v14_0.put_or_call.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.put_or_call.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.put_or_call, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.put_or_call, range, value, display)
  end

  return offset, value
end

-- Opt Attribute
eurex_t7_emdi_fast_v14_0.opt_attribute = {}

-- Dissect: Opt Attribute
eurex_t7_emdi_fast_v14_0.opt_attribute.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.opt_attribute, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.opt_attribute, range, 0)
    absent:set_text("Opt Attribute: No Value")
  end

  return offset, value
end

-- Exercise Style
eurex_t7_emdi_fast_v14_0.exercise_style = {}

-- Display: Exercise Style
eurex_t7_emdi_fast_v14_0.exercise_style.display = function(value)
  if value == nil then
    return "Exercise Style: No Value"
  end

  if value == 0 then
    return "Exercise Style: European (0)"
  end
  if value == 1 then
    return "Exercise Style: American (1)"
  end

  return "Exercise Style: Unknown("..value..")"
end

-- Dissect: Exercise Style
eurex_t7_emdi_fast_v14_0.exercise_style.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.exercise_style.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.exercise_style, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.exercise_style, range, value, display)
  end

  return offset, value
end

-- Settl Method
eurex_t7_emdi_fast_v14_0.settl_method = {}

-- Display: Settl Method
eurex_t7_emdi_fast_v14_0.settl_method.display = function(value)
  if value == nil then
    return "Settl Method: No Value"
  end

  if value == 0 then
    return "Settl Method: Cash (C)"
  end
  if value == 1 then
    return "Settl Method: Physical (P)"
  end

  return "Settl Method: Unknown("..value..")"
end

-- Dissect: Settl Method
eurex_t7_emdi_fast_v14_0.settl_method.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = eurex_t7_emdi_fast_v14_0.settl_method.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.settl_method, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.settl_method, range, value, display)
  end

  return offset, value
end

-- Related Security Id
eurex_t7_emdi_fast_v14_0.related_security_id = {}

-- Dissect: Related Security Id
eurex_t7_emdi_fast_v14_0.related_security_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_int64(buffer, offset)
  value = (state.values[key] or Int64(0)) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.related_security_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.related_security_id, range, Int64(0))
    absent:set_text("Related Security Id: No Value")
  end

  return offset, value
end

-- Related Security Id Source
eurex_t7_emdi_fast_v14_0.related_security_id_source = {}

-- Dissect: Related Security Id Source
eurex_t7_emdi_fast_v14_0.related_security_id_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "M"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.related_security_id_source, range, value)
  else
    local absent = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.related_security_id_source, range, "")
    absent:set_text("Related Security Id Source: No Value")
  end

  return offset, value
end


-----------------------------------------------------------------------
-- Dissect Eurex T7 Emdi Fast 14.0
-----------------------------------------------------------------------

-- Scaled Simple Instrument Update Market Segment Grp
eurex_t7_emdi_fast_v14_0.scaled_simple_instrument_update_market_segment_grp = {}

-- Dissect Fields: Scaled Simple Instrument Update Market Segment Grp
eurex_t7_emdi_fast_v14_0.scaled_simple_instrument_update_market_segment_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Market Segment Id: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.market_segment_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|15:MarketSegmentID")

  return index
end

-- Dissect: Scaled Simple Instrument Update Market Segment Grp
eurex_t7_emdi_fast_v14_0.scaled_simple_instrument_update_market_segment_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.scaled_simple_instrument_update_market_segment_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_emdi_fast_v14_0.scaled_simple_instrument_update_market_segment_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Related Instrument Grp
eurex_t7_emdi_fast_v14_0.related_instrument_grp = {}

-- Dissect Fields: Related Instrument Grp
eurex_t7_emdi_fast_v14_0.related_instrument_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Related Security Id: int64, Delta
  index, value = eurex_t7_emdi_fast_v14_0.related_security_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|17:RelatedSecurityID")

  -- Related Security Id Source: string, Constant
  index, value = eurex_t7_emdi_fast_v14_0.related_security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Related Instrument Grp
eurex_t7_emdi_fast_v14_0.related_instrument_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.related_instrument_grp, buffer(offset, 0))
  local index = offset

  index = eurex_t7_emdi_fast_v14_0.related_instrument_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Scaled Simple Instrument Update Message
eurex_t7_emdi_fast_v14_0.scaled_simple_instrument_update = {}

-- Dissect Fields: Scaled Simple Instrument Update Message
eurex_t7_emdi_fast_v14_0.scaled_simple_instrument_update.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_emdi_fast_v14_0.msg_type_constant_bp.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = eurex_t7_emdi_fast_v14_0.msg_seq_num_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Sender Comp Id: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.sender_comp_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:SenderCompID")

  -- Security Update Action: string, Constant
  index, value = eurex_t7_emdi_fast_v14_0.security_update_action.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: int64, sent
  index, value = eurex_t7_emdi_fast_v14_0.security_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: string, Constant
  index, value = eurex_t7_emdi_fast_v14_0.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Desc: string, sent
  index, value = eurex_t7_emdi_fast_v14_0.security_desc.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Type: uInt32, sent
  index, value = eurex_t7_emdi_fast_v14_0.security_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Product Complex: uInt32, sent
  index, value = eurex_t7_emdi_fast_v14_0.product_complex_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Quantity Scaling Factor: uInt32, sent
  index, value = eurex_t7_emdi_fast_v14_0.quantity_scaling_factor_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Related Instrument Grp: group
  index = eurex_t7_emdi_fast_v14_0.related_instrument_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)

  -- No Market Segments: uInt32, Constant
  index, value = eurex_t7_emdi_fast_v14_0.no_market_segments.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Segment Grp: No Market Segments entries
  local count = value or 0
  for scaled_simple_instrument_update_market_segment_grp_index = 1, count do
    index = eurex_t7_emdi_fast_v14_0.scaled_simple_instrument_update_market_segment_grp.dissect(buffer, index, packet, parent, presence_map, base, state, scaled_simple_instrument_update_market_segment_grp_index)
  end

  -- Transact Time: timestamp, sent
  index, value = eurex_t7_emdi_fast_v14_0.transact_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Scaled Simple Instrument Update Message
eurex_t7_emdi_fast_v14_0.scaled_simple_instrument_update.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_emdi_fast_v14_0.scaled_simple_instrument_update.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Flexible Instrument Update Market Segment Grp
eurex_t7_emdi_fast_v14_0.flexible_instrument_update_market_segment_grp = {}

-- Dissect Fields: Flexible Instrument Update Market Segment Grp
eurex_t7_emdi_fast_v14_0.flexible_instrument_update_market_segment_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Market Segment Id: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.market_segment_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|15:MarketSegmentID")

  return index
end

-- Dissect: Flexible Instrument Update Market Segment Grp
eurex_t7_emdi_fast_v14_0.flexible_instrument_update_market_segment_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.flexible_instrument_update_market_segment_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_emdi_fast_v14_0.flexible_instrument_update_market_segment_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Flexible Instrument Update Message
eurex_t7_emdi_fast_v14_0.flexible_instrument_update = {}

-- Dissect Fields: Flexible Instrument Update Message
eurex_t7_emdi_fast_v14_0.flexible_instrument_update.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_emdi_fast_v14_0.msg_type_constant_bp.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = eurex_t7_emdi_fast_v14_0.msg_seq_num_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Sender Comp Id: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.sender_comp_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:SenderCompID")

  -- Security Update Action: string, Constant
  index, value = eurex_t7_emdi_fast_v14_0.security_update_action.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: int64, sent
  index, value = eurex_t7_emdi_fast_v14_0.security_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: string, Constant
  index, value = eurex_t7_emdi_fast_v14_0.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Desc: string, sent
  index, value = eurex_t7_emdi_fast_v14_0.security_desc.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Type: uInt32, sent
  index, value = eurex_t7_emdi_fast_v14_0.security_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Product Complex: uInt32, sent
  index, value = eurex_t7_emdi_fast_v14_0.product_complex_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Maturity Date: uInt32, sent
  index, value = eurex_t7_emdi_fast_v14_0.maturity_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Contract Date: uInt32, sent
  index, value = eurex_t7_emdi_fast_v14_0.contract_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Reference Data Supplement: uInt32, sent
  index, value = eurex_t7_emdi_fast_v14_0.security_reference_data_supplement.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Strike Price: decimal, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.strike_price.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Put Or Call: uInt32, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.put_or_call.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Opt Attribute: uInt32, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.opt_attribute.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Exercise Style: uInt32, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.exercise_style.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Method: uInt32, sent
  index, value = eurex_t7_emdi_fast_v14_0.settl_method.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Market Segments: uInt32, Constant
  index, value = eurex_t7_emdi_fast_v14_0.no_market_segments.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Segment Grp: No Market Segments entries
  local count = value or 0
  for flexible_instrument_update_market_segment_grp_index = 1, count do
    index = eurex_t7_emdi_fast_v14_0.flexible_instrument_update_market_segment_grp.dissect(buffer, index, packet, parent, presence_map, base, state, flexible_instrument_update_market_segment_grp_index)
  end

  -- Transact Time: timestamp, sent
  index, value = eurex_t7_emdi_fast_v14_0.transact_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Flexible Instrument Update Message
eurex_t7_emdi_fast_v14_0.flexible_instrument_update.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_emdi_fast_v14_0.flexible_instrument_update.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Top Of Book Implied Md Inc Grp
eurex_t7_emdi_fast_v14_0.top_of_book_implied_md_inc_grp = {}

-- Dissect Fields: Top Of Book Implied Md Inc Grp
eurex_t7_emdi_fast_v14_0.top_of_book_implied_md_inc_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.md_update_action.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|14:MDUpdateAction")

  -- Md Entry Type: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.md_entry_type.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|11:MDEntryType")

  -- Md Book Type: uInt32, Constant
  index, value = eurex_t7_emdi_fast_v14_0.md_book_type_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Sub Book Type: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.md_sub_book_type_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|13:MDSubBookType")

  -- Security Id: int64, Copy
  index, value = eurex_t7_emdi_fast_v14_0.security_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|10:SecurityID")

  -- Security Id Source: string, Constant
  index, value = eurex_t7_emdi_fast_v14_0.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Px: decimal, Delta, optional
  index, value = eurex_t7_emdi_fast_v14_0.md_entry_px_delta.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|9:MDEntryPx|E", "6:global|0:|9:MDEntryPx|M" })

  -- Md Entry Size: decimal, Delta, optional
  index, value = eurex_t7_emdi_fast_v14_0.md_entry_size.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|11:MDEntrySize|E", "6:global|0:|11:MDEntrySize|M" })

  -- Md Entry Time: timestamp, Copy, optional
  index, value = eurex_t7_emdi_fast_v14_0.md_entry_time_copy.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|11:MDEntryTime")

  -- Quote Condition: uInt32, Copy, optional
  index, value = eurex_t7_emdi_fast_v14_0.quote_condition_copy.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "6:global|0:|14:QuoteCondition")

  return index
end

-- Dissect: Top Of Book Implied Md Inc Grp
eurex_t7_emdi_fast_v14_0.top_of_book_implied_md_inc_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.top_of_book_implied_md_inc_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_emdi_fast_v14_0.top_of_book_implied_md_inc_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Top Of Book Implied Message
eurex_t7_emdi_fast_v14_0.top_of_book_implied = {}

-- Dissect Fields: Top Of Book Implied Message
eurex_t7_emdi_fast_v14_0.top_of_book_implied.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_emdi_fast_v14_0.msg_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = eurex_t7_emdi_fast_v14_0.msg_seq_num_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Sender Comp Id: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.sender_comp_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:SenderCompID")

  -- Market Segment Id: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.market_segment_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|15:MarketSegmentID")

  -- No Md Entries: uInt32, sent
  index, value = eurex_t7_emdi_fast_v14_0.no_md_entries_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Inc Grp: No Md Entries entries
  local count = value or 0
  for top_of_book_implied_md_inc_grp_index = 1, count do
    index = eurex_t7_emdi_fast_v14_0.top_of_book_implied_md_inc_grp.dissect(buffer, index, packet, parent, presence_map, base, state, top_of_book_implied_md_inc_grp_index)
  end

  return index
end

-- Dissect: Top Of Book Implied Message
eurex_t7_emdi_fast_v14_0.top_of_book_implied.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_emdi_fast_v14_0.top_of_book_implied.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Ssh Grp
eurex_t7_emdi_fast_v14_0.md_ssh_grp = {}

-- Dissect Fields: Md Ssh Grp
eurex_t7_emdi_fast_v14_0.md_ssh_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Origin Type: uInt32, Default
  index, value = eurex_t7_emdi_fast_v14_0.md_origin_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Md Entry Type: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.md_entry_type.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|11:MDEntryType")

  -- Md Book Type: uInt32, Copy, optional
  index, value = eurex_t7_emdi_fast_v14_0.md_book_type_copy.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|10:MDBookType")

  -- Md Sub Book Type: uInt32, Copy, optional
  index, value = eurex_t7_emdi_fast_v14_0.md_sub_book_type_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|13:MDSubBookType")

  -- Trd Type: uInt32, Default, optional
  index, value = eurex_t7_emdi_fast_v14_0.trd_type_default.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Trading Session Id: uInt32, Default, optional
  index, value = eurex_t7_emdi_fast_v14_0.trading_session_id_default_optional.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Trading Session Sub Id: uInt32, Default, optional
  index, value = eurex_t7_emdi_fast_v14_0.trading_session_sub_id_default.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Tes Trad Ses Status: uInt32, Default, optional
  index, value = eurex_t7_emdi_fast_v14_0.tes_trad_ses_status_default.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Security Trading Status: uInt32, Default, optional
  index, value = eurex_t7_emdi_fast_v14_0.security_trading_status_default.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Market Condition: uInt32, Default, optional
  index, value = eurex_t7_emdi_fast_v14_0.market_condition_default_optional_u_int32_field.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Fast Market Indicator: uInt32, Default, optional
  index, value = eurex_t7_emdi_fast_v14_0.fast_market_indicator_default_optional.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Security Trading Event: uInt32, Default, optional
  index, value = eurex_t7_emdi_fast_v14_0.security_trading_event_default.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Potential Security Trading Event: uInt32, Default, optional
  index, value = eurex_t7_emdi_fast_v14_0.potential_security_trading_event_default.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Sold Out Indicator: uInt32, Default, optional
  index, value = eurex_t7_emdi_fast_v14_0.sold_out_indicator_default.dissect(buffer, index, packet, parent, presence_map[base + 13], state, nil)

  -- High Px: decimal, Delta, optional
  index, value = eurex_t7_emdi_fast_v14_0.high_px_delta.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|6:HighPx|E", "6:global|0:|6:HighPx|M" })

  -- Low Px: decimal, Delta, optional
  index, value = eurex_t7_emdi_fast_v14_0.low_px_delta.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|5:LowPx|E", "6:global|0:|5:LowPx|M" })

  -- Trade Condition: uInt32, Default, optional
  index, value = eurex_t7_emdi_fast_v14_0.trade_condition_default_optional_u_int32_field.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- Multi Leg Reporting Type: uInt32, Default, optional
  index, value = eurex_t7_emdi_fast_v14_0.multi_leg_reporting_type_default_optional_u_int32_field.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  -- Multi Leg Price Model: uInt32, Default, optional
  index, value = eurex_t7_emdi_fast_v14_0.multi_leg_price_model_default_optional_u_int32_field.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  -- Quote Condition: uInt32, Copy, optional
  index, value = eurex_t7_emdi_fast_v14_0.quote_condition_copy.dissect(buffer, index, packet, parent, presence_map[base + 17], state, "6:global|0:|14:QuoteCondition")

  -- Md Entry Px: decimal, Delta, optional
  index, value = eurex_t7_emdi_fast_v14_0.md_entry_px_delta.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|9:MDEntryPx|E", "6:global|0:|9:MDEntryPx|M" })

  -- Md Entry Size: decimal, Delta, optional
  index, value = eurex_t7_emdi_fast_v14_0.md_entry_size.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|11:MDEntrySize|E", "6:global|0:|11:MDEntrySize|M" })

  -- Number Of Orders: uInt32, Delta, optional
  index, value = eurex_t7_emdi_fast_v14_0.number_of_orders.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|14:NumberOfOrders")

  -- Md Price Level: uInt32, Increment, optional
  index, value = eurex_t7_emdi_fast_v14_0.md_price_level_increment.dissect(buffer, index, packet, parent, presence_map[base + 18], state, "6:global|0:|12:MDPriceLevel")

  -- Md Entry Time: timestamp, Delta, optional
  index, value = eurex_t7_emdi_fast_v14_0.md_entry_time_delta.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:MDEntryTime")

  -- Non Disclosed Trade Volume: decimal, Default, optional
  index, value = eurex_t7_emdi_fast_v14_0.non_disclosed_trade_volume_default.dissect(buffer, index, packet, parent, { presence_map[base + 19], false }, state, nil)

  -- Total Num Of Trades: uInt32, Default, optional
  index, value = eurex_t7_emdi_fast_v14_0.total_num_of_trades_default.dissect(buffer, index, packet, parent, presence_map[base + 20], state, nil)

  return index
end

-- Dissect: Md Ssh Grp
eurex_t7_emdi_fast_v14_0.md_ssh_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.md_ssh_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_emdi_fast_v14_0.md_ssh_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Depth Snapshot Message
eurex_t7_emdi_fast_v14_0.depth_snapshot = {}

-- Dissect Fields: Depth Snapshot Message
eurex_t7_emdi_fast_v14_0.depth_snapshot.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_emdi_fast_v14_0.msg_type_constant_w.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment, optional
  index, value = eurex_t7_emdi_fast_v14_0.msg_seq_num_increment_optional.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Sender Comp Id: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.sender_comp_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:SenderCompID")

  -- Last Msg Seq Num Processed: uInt32, Increment, optional
  index, value = eurex_t7_emdi_fast_v14_0.last_msg_seq_num_processed_increment.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|22:LastMsgSeqNumProcessed")

  -- Refresh Indicator: uInt32, Copy, optional
  index, value = eurex_t7_emdi_fast_v14_0.refresh_indicator.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|16:RefreshIndicator")

  -- Market Segment Id: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.market_segment_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|15:MarketSegmentID")

  -- Security Id: int64, Delta
  index, value = eurex_t7_emdi_fast_v14_0.security_id_delta.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|10:SecurityID")

  -- Security Id Source: string, Constant
  index, value = eurex_t7_emdi_fast_v14_0.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Product Complex: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.product_complex_copy.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "6:global|0:|14:ProductComplex")

  -- Security Status: uInt32, Default
  index, value = eurex_t7_emdi_fast_v14_0.security_status.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Tes Security Status: uInt32, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.tes_security_status_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Update Time: timestamp, Delta
  index, value = eurex_t7_emdi_fast_v14_0.last_update_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|14:LastUpdateTime")

  -- No Md Entries: uInt32, Default
  index, value = eurex_t7_emdi_fast_v14_0.no_md_entries_default.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Md Ssh Grp: No Md Entries entries
  local count = value or 0
  for md_ssh_grp_index = 1, count do
    index = eurex_t7_emdi_fast_v14_0.md_ssh_grp.dissect(buffer, index, packet, parent, presence_map, base, state, md_ssh_grp_index)
  end

  return index
end

-- Dissect: Depth Snapshot Message
eurex_t7_emdi_fast_v14_0.depth_snapshot.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_emdi_fast_v14_0.depth_snapshot.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Cross Request Side Grp
eurex_t7_emdi_fast_v14_0.cross_request_side_grp = {}

-- Dissect Fields: Cross Request Side Grp
eurex_t7_emdi_fast_v14_0.cross_request_side_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Side: uInt32, Copy, optional
  index, value = eurex_t7_emdi_fast_v14_0.side.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|4:Side")

  -- Input Source: uInt32, Constant
  index, value = eurex_t7_emdi_fast_v14_0.input_source.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Cross Request Side Grp
eurex_t7_emdi_fast_v14_0.cross_request_side_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.cross_request_side_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_emdi_fast_v14_0.cross_request_side_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Cross Request Message
eurex_t7_emdi_fast_v14_0.cross_request = {}

-- Dissect Fields: Cross Request Message
eurex_t7_emdi_fast_v14_0.cross_request.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_emdi_fast_v14_0.msg_type_constant_u16.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = eurex_t7_emdi_fast_v14_0.msg_seq_num_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Sender Comp Id: uInt32, sent
  index, value = eurex_t7_emdi_fast_v14_0.sender_comp_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Segment Id: uInt32, sent
  index, value = eurex_t7_emdi_fast_v14_0.market_segment_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: int64, sent
  index, value = eurex_t7_emdi_fast_v14_0.security_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: string, Constant
  index, value = eurex_t7_emdi_fast_v14_0.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Qty: decimal, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.order_qty_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Cross Request Type: uInt32, sent
  index, value = eurex_t7_emdi_fast_v14_0.cross_request_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Cross Request Side Grp: uInt32, Constant, optional
  index, value = eurex_t7_emdi_fast_v14_0.no_cross_request_side_grp.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Cross Request Side Grp: No Cross Request Side Grp entries
  local count = value or 0
  for cross_request_side_grp_index = 1, count do
    index = eurex_t7_emdi_fast_v14_0.cross_request_side_grp.dissect(buffer, index, packet, parent, presence_map, base, state, cross_request_side_grp_index)
  end

  -- Md Entry Px: decimal, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.md_entry_px_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Transact Time: timestamp, sent
  index, value = eurex_t7_emdi_fast_v14_0.transact_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Cross Request Message
eurex_t7_emdi_fast_v14_0.cross_request.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_emdi_fast_v14_0.cross_request.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Quot Req Grp
eurex_t7_emdi_fast_v14_0.quot_req_grp = {}

-- Dissect Fields: Quot Req Grp
eurex_t7_emdi_fast_v14_0.quot_req_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security Id: int64, Copy
  index, value = eurex_t7_emdi_fast_v14_0.security_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|10:SecurityID")

  -- Security Id Source: string, Constant
  index, value = eurex_t7_emdi_fast_v14_0.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Side: uInt32, Copy, optional
  index, value = eurex_t7_emdi_fast_v14_0.side.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|4:Side")

  -- Order Qty: decimal, Delta, optional
  index, value = eurex_t7_emdi_fast_v14_0.order_qty_delta.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|8:OrderQty|E", "6:global|0:|8:OrderQty|M" })

  -- Transact Time: timestamp, Copy
  index, value = eurex_t7_emdi_fast_v14_0.transact_time_copy.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:TransactTime")

  return index
end

-- Dissect: Quot Req Grp
eurex_t7_emdi_fast_v14_0.quot_req_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.quot_req_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_emdi_fast_v14_0.quot_req_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Quote Request Message
eurex_t7_emdi_fast_v14_0.quote_request = {}

-- Dissect Fields: Quote Request Message
eurex_t7_emdi_fast_v14_0.quote_request.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_emdi_fast_v14_0.msg_type_constant_r.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = eurex_t7_emdi_fast_v14_0.msg_seq_num_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Sender Comp Id: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.sender_comp_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:SenderCompID")

  -- Market Segment Id: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.market_segment_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|15:MarketSegmentID")

  -- No Related Sym: uInt32, Constant
  index, value = eurex_t7_emdi_fast_v14_0.no_related_sym_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Quot Req Grp: No Related Sym entries
  local count = value or 0
  for quot_req_grp_index = 1, count do
    index = eurex_t7_emdi_fast_v14_0.quot_req_grp.dissect(buffer, index, packet, parent, presence_map, base, state, quot_req_grp_index)
  end

  return index
end

-- Dissect: Quote Request Message
eurex_t7_emdi_fast_v14_0.quote_request.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_emdi_fast_v14_0.quote_request.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Complex Instrument Update Market Segment Grp
eurex_t7_emdi_fast_v14_0.complex_instrument_update_market_segment_grp = {}

-- Dissect Fields: Complex Instrument Update Market Segment Grp
eurex_t7_emdi_fast_v14_0.complex_instrument_update_market_segment_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Market Segment Id: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.market_segment_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|15:MarketSegmentID")

  -- Implied Market Indicator: uInt32, sent
  index, value = eurex_t7_emdi_fast_v14_0.implied_market_indicator.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Complex Instrument Update Market Segment Grp
eurex_t7_emdi_fast_v14_0.complex_instrument_update_market_segment_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.complex_instrument_update_market_segment_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_emdi_fast_v14_0.complex_instrument_update_market_segment_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrmt Leg Grp
eurex_t7_emdi_fast_v14_0.instrmt_leg_grp = {}

-- Dissect Fields: Instrmt Leg Grp
eurex_t7_emdi_fast_v14_0.instrmt_leg_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Leg Symbol: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.leg_symbol.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:LegSymbol")

  -- Leg Security Id: int64, sent
  index, value = eurex_t7_emdi_fast_v14_0.leg_security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Security Id Source: string, Constant
  index, value = eurex_t7_emdi_fast_v14_0.leg_security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Security Type: uInt32, Default
  index, value = eurex_t7_emdi_fast_v14_0.leg_security_type.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Leg Ratio Qty: uInt32, sent
  index, value = eurex_t7_emdi_fast_v14_0.leg_ratio_qty.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Side: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.leg_side.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|7:LegSide")

  -- Leg Price: decimal, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.leg_price.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Related Price: decimal, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.related_price.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Related Price Type: uInt32, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.related_price_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Style: uInt32, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.trading_style.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Instrmt Leg Grp
eurex_t7_emdi_fast_v14_0.instrmt_leg_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.instrmt_leg_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_emdi_fast_v14_0.instrmt_leg_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Complex Instrument Update Message
eurex_t7_emdi_fast_v14_0.complex_instrument_update = {}

-- Dissect Fields: Complex Instrument Update Message
eurex_t7_emdi_fast_v14_0.complex_instrument_update.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_emdi_fast_v14_0.msg_type_constant_bp.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = eurex_t7_emdi_fast_v14_0.msg_seq_num_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Sender Comp Id: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.sender_comp_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:SenderCompID")

  -- Security Update Action: string, Constant
  index, value = eurex_t7_emdi_fast_v14_0.security_update_action.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: int64, sent
  index, value = eurex_t7_emdi_fast_v14_0.security_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: string, Constant
  index, value = eurex_t7_emdi_fast_v14_0.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Desc: string, sent
  index, value = eurex_t7_emdi_fast_v14_0.security_desc.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Type: uInt32, Constant
  index, value = eurex_t7_emdi_fast_v14_0.security_type_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Sub Type: uInt32, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.security_sub_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Product Complex: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.product_complex_copy.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|14:ProductComplex")

  -- Leg Ratio Multiplier: uInt32, Default, optional
  index, value = eurex_t7_emdi_fast_v14_0.leg_ratio_multiplier.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Quantity Scaling Factor: uInt32, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.quantity_scaling_factor_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Fragment: uInt32, Default
  index, value = eurex_t7_emdi_fast_v14_0.last_fragment.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- No Legs: uInt32, sent
  index, value = eurex_t7_emdi_fast_v14_0.no_legs.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Instrmt Leg Grp: No Legs entries
  local count = value or 0
  for instrmt_leg_grp_index = 1, count do
    index = eurex_t7_emdi_fast_v14_0.instrmt_leg_grp.dissect(buffer, index, packet, parent, presence_map, base, state, instrmt_leg_grp_index)
  end

  -- No Market Segments: uInt32, Constant
  index, value = eurex_t7_emdi_fast_v14_0.no_market_segments.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Segment Grp: No Market Segments entries
  local count = value or 0
  for complex_instrument_update_market_segment_grp_index = 1, count do
    index = eurex_t7_emdi_fast_v14_0.complex_instrument_update_market_segment_grp.dissect(buffer, index, packet, parent, presence_map, base, state, complex_instrument_update_market_segment_grp_index)
  end

  -- Transact Time: timestamp, sent
  index, value = eurex_t7_emdi_fast_v14_0.transact_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Complex Instrument Update Message
eurex_t7_emdi_fast_v14_0.complex_instrument_update.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_emdi_fast_v14_0.complex_instrument_update.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Trade Entry Grp
eurex_t7_emdi_fast_v14_0.trade_entry_grp = {}

-- Dissect Fields: Trade Entry Grp
eurex_t7_emdi_fast_v14_0.trade_entry_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trd Type: uInt32, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.trd_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Algorithmic Trade Indicator: uInt32, Default, optional
  index, value = eurex_t7_emdi_fast_v14_0.algorithmic_trade_indicator.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Condition: uInt32, Default, optional
  index, value = eurex_t7_emdi_fast_v14_0.trade_condition_default_1.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Multi Leg Reporting Type: uInt32, Default, optional
  index, value = eurex_t7_emdi_fast_v14_0.multi_leg_reporting_type_default_1.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Multi Leg Price Model: uInt32, Default, optional
  index, value = eurex_t7_emdi_fast_v14_0.multi_leg_price_model_default_0.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Aggressor Time: timestamp, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.aggressor_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Request Time: timestamp, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.request_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trans Bkd Time: timestamp, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.trans_bkd_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Aggressor Side: uInt32, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.aggressor_side.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Number Of Buy Orders: uInt32, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.number_of_buy_orders.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Number Of Sell Orders: uInt32, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.number_of_sell_orders.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Number Of Buy Sides: uInt32, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.number_of_buy_sides.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Number Of Sell Sides: uInt32, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.number_of_sell_sides.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Total Num Of Trades: uInt32, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.total_num_of_trades_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Resting Cxl Qty: decimal, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.resting_cxl_qty.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Md Entry Id: uInt32, Delta, optional
  index, value = eurex_t7_emdi_fast_v14_0.md_entry_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|9:MDEntryID")

  -- Non Disclosed Trade Volume: decimal, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.non_disclosed_trade_volume_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  return index
end

-- Dissect: Trade Entry Grp
eurex_t7_emdi_fast_v14_0.trade_entry_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.trade_entry_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_emdi_fast_v14_0.trade_entry_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Depth Incremental Md Inc Grp
eurex_t7_emdi_fast_v14_0.depth_incremental_md_inc_grp = {}

-- Dissect Fields: Depth Incremental Md Inc Grp
eurex_t7_emdi_fast_v14_0.depth_incremental_md_inc_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Origin Type: uInt32, Default
  index, value = eurex_t7_emdi_fast_v14_0.md_origin_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Md Update Action: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.md_update_action.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|14:MDUpdateAction")

  -- Md Entry Type: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.md_entry_type.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|11:MDEntryType")

  -- Security Id: int64, Copy
  index, value = eurex_t7_emdi_fast_v14_0.security_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|10:SecurityID")

  -- Security Id Source: string, Constant
  index, value = eurex_t7_emdi_fast_v14_0.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Px: decimal, Delta, optional
  index, value = eurex_t7_emdi_fast_v14_0.md_entry_px_delta.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|9:MDEntryPx|E", "6:global|0:|9:MDEntryPx|M" })

  -- Md Entry Size: decimal, Delta, optional
  index, value = eurex_t7_emdi_fast_v14_0.md_entry_size.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|11:MDEntrySize|E", "6:global|0:|11:MDEntrySize|M" })

  -- Number Of Orders: uInt32, Delta, optional
  index, value = eurex_t7_emdi_fast_v14_0.number_of_orders.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|14:NumberOfOrders")

  -- Md Price Level: uInt32, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.md_price_level_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Time: timestamp, Copy, optional
  index, value = eurex_t7_emdi_fast_v14_0.md_entry_time_copy.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|11:MDEntryTime")

  -- Potential Security Trading Event: uInt32, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.potential_security_trading_event_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Quote Condition: uInt32, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.quote_condition_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Entry Grp: group, optional
  if presence_map[base + 5] then
    index = eurex_t7_emdi_fast_v14_0.trade_entry_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  return index
end

-- Dissect: Depth Incremental Md Inc Grp
eurex_t7_emdi_fast_v14_0.depth_incremental_md_inc_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.depth_incremental_md_inc_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_emdi_fast_v14_0.depth_incremental_md_inc_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Depth Incremental Message
eurex_t7_emdi_fast_v14_0.depth_incremental = {}

-- Dissect Fields: Depth Incremental Message
eurex_t7_emdi_fast_v14_0.depth_incremental.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_emdi_fast_v14_0.msg_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = eurex_t7_emdi_fast_v14_0.msg_seq_num_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Sender Comp Id: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.sender_comp_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:SenderCompID")

  -- Market Segment Id: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.market_segment_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|15:MarketSegmentID")

  -- No Md Entries: uInt32, sent
  index, value = eurex_t7_emdi_fast_v14_0.no_md_entries_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Inc Grp: No Md Entries entries
  local count = value or 0
  for depth_incremental_md_inc_grp_index = 1, count do
    index = eurex_t7_emdi_fast_v14_0.depth_incremental_md_inc_grp.dissect(buffer, index, packet, parent, presence_map, base, state, depth_incremental_md_inc_grp_index)
  end

  return index
end

-- Dissect: Depth Incremental Message
eurex_t7_emdi_fast_v14_0.depth_incremental.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_emdi_fast_v14_0.depth_incremental.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Instrument State Change Message
eurex_t7_emdi_fast_v14_0.instrument_state_change = {}

-- Dissect Fields: Instrument State Change Message
eurex_t7_emdi_fast_v14_0.instrument_state_change.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_emdi_fast_v14_0.msg_type_constant_f.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = eurex_t7_emdi_fast_v14_0.msg_seq_num_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Sender Comp Id: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.sender_comp_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:SenderCompID")

  -- Market Segment Id: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.market_segment_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|15:MarketSegmentID")

  -- Security Id: int64, sent
  index, value = eurex_t7_emdi_fast_v14_0.security_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: string, Constant
  index, value = eurex_t7_emdi_fast_v14_0.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Status: uInt32, Default
  index, value = eurex_t7_emdi_fast_v14_0.security_status.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Security Trading Status: uInt32, Copy, optional
  index, value = eurex_t7_emdi_fast_v14_0.security_trading_status_copy.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|21:SecurityTradingStatus")

  -- Market Condition: uInt32, Default
  index, value = eurex_t7_emdi_fast_v14_0.market_condition_default_required.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Fast Market Indicator: uInt32, Default
  index, value = eurex_t7_emdi_fast_v14_0.fast_market_indicator_default_0.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Security Trading Event: uInt32, Copy, optional
  index, value = eurex_t7_emdi_fast_v14_0.security_trading_event_copy.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "6:global|0:|20:SecurityTradingEvent")

  -- Sold Out Indicator: uInt32, Copy, optional
  index, value = eurex_t7_emdi_fast_v14_0.sold_out_indicator_copy.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "6:global|0:|16:SoldOutIndicator")

  -- High Px: decimal, Copy, optional
  index, value = eurex_t7_emdi_fast_v14_0.high_px_copy.dissect(buffer, index, packet, parent, { presence_map[base + 9], false }, state, { "6:global|0:|6:HighPx|E", "6:global|0:|6:HighPx|M" })

  -- Low Px: decimal, Copy, optional
  index, value = eurex_t7_emdi_fast_v14_0.low_px_copy.dissect(buffer, index, packet, parent, { presence_map[base + 10], false }, state, { "6:global|0:|5:LowPx|E", "6:global|0:|5:LowPx|M" })

  -- Transact Time: timestamp, Delta
  index, value = eurex_t7_emdi_fast_v14_0.transact_time_delta.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|12:TransactTime")

  -- Tes Security Status: uInt32, Default, optional
  index, value = eurex_t7_emdi_fast_v14_0.tes_security_status_default.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  return index
end

-- Dissect: Instrument State Change Message
eurex_t7_emdi_fast_v14_0.instrument_state_change.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_emdi_fast_v14_0.instrument_state_change.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Sec Mass Stat Grp
eurex_t7_emdi_fast_v14_0.sec_mass_stat_grp = {}

-- Dissect Fields: Sec Mass Stat Grp
eurex_t7_emdi_fast_v14_0.sec_mass_stat_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security Id: int64, sent
  index, value = eurex_t7_emdi_fast_v14_0.security_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: string, Constant
  index, value = eurex_t7_emdi_fast_v14_0.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Status: uInt32, Default
  index, value = eurex_t7_emdi_fast_v14_0.security_status.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Security Trading Status: uInt32, Copy, optional
  index, value = eurex_t7_emdi_fast_v14_0.security_trading_status_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|21:SecurityTradingStatus")

  -- Market Condition: uInt32, Default
  index, value = eurex_t7_emdi_fast_v14_0.market_condition_default_required.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Security Trading Event: uInt32, Default, optional
  index, value = eurex_t7_emdi_fast_v14_0.security_trading_event_default.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Sold Out Indicator: uInt32, Default, optional
  index, value = eurex_t7_emdi_fast_v14_0.sold_out_indicator_default.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- High Px: decimal, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.high_px_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Low Px: decimal, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.low_px_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Tes Security Status: uInt32, Copy, optional
  index, value = eurex_t7_emdi_fast_v14_0.tes_security_status_copy.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "6:global|0:|17:TESSecurityStatus")

  return index
end

-- Dissect: Sec Mass Stat Grp
eurex_t7_emdi_fast_v14_0.sec_mass_stat_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_emdi_fast_v14_0.fields.sec_mass_stat_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_emdi_fast_v14_0.sec_mass_stat_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Mass Instrument State Change Message
eurex_t7_emdi_fast_v14_0.mass_instrument_state_change = {}

-- Dissect Fields: Mass Instrument State Change Message
eurex_t7_emdi_fast_v14_0.mass_instrument_state_change.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_emdi_fast_v14_0.msg_type_constant_co.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = eurex_t7_emdi_fast_v14_0.msg_seq_num_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Sender Comp Id: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.sender_comp_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:SenderCompID")

  -- Market Segment Id: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.market_segment_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|15:MarketSegmentID")

  -- Instrument Scope Product Complex: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.instrument_scope_product_complex.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|29:InstrumentScopeProductComplex")

  -- Security Mass Status: uInt32, Default
  index, value = eurex_t7_emdi_fast_v14_0.security_mass_status.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Security Mass Trading Status: uInt32, Copy, optional
  index, value = eurex_t7_emdi_fast_v14_0.security_mass_trading_status.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "6:global|0:|25:SecurityMassTradingStatus")

  -- Mass Market Condition: uInt32, Default
  index, value = eurex_t7_emdi_fast_v14_0.mass_market_condition.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Fast Market Indicator: uInt32, Default
  index, value = eurex_t7_emdi_fast_v14_0.fast_market_indicator_default_0.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Security Mass Trading Event: uInt32, Default, optional
  index, value = eurex_t7_emdi_fast_v14_0.security_mass_trading_event.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Mass Sold Out Indicator: uInt32, Default, optional
  index, value = eurex_t7_emdi_fast_v14_0.mass_sold_out_indicator.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Transact Time: timestamp, Delta
  index, value = eurex_t7_emdi_fast_v14_0.transact_time_delta.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|12:TransactTime")

  -- Tes Security Mass Status: uInt32, Default, optional
  index, value = eurex_t7_emdi_fast_v14_0.tes_security_mass_status.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- No Related Sym: uInt32, Default
  index, value = eurex_t7_emdi_fast_v14_0.no_related_sym_default.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Sec Mass Stat Grp: No Related Sym entries
  local count = value or 0
  for sec_mass_stat_grp_index = 1, count do
    index = eurex_t7_emdi_fast_v14_0.sec_mass_stat_grp.dissect(buffer, index, packet, parent, presence_map, base, state, sec_mass_stat_grp_index)
  end

  -- Last Fragment: uInt32, Default
  index, value = eurex_t7_emdi_fast_v14_0.last_fragment.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  return index
end

-- Dissect: Mass Instrument State Change Message
eurex_t7_emdi_fast_v14_0.mass_instrument_state_change.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_emdi_fast_v14_0.mass_instrument_state_change.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Product State Change Message
eurex_t7_emdi_fast_v14_0.product_state_change = {}

-- Dissect Fields: Product State Change Message
eurex_t7_emdi_fast_v14_0.product_state_change.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_emdi_fast_v14_0.msg_type_constant_h.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = eurex_t7_emdi_fast_v14_0.msg_seq_num_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Sender Comp Id: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.sender_comp_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:SenderCompID")

  -- Market Segment Id: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.market_segment_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|15:MarketSegmentID")

  -- Trading Session Id: uInt32, Default
  index, value = eurex_t7_emdi_fast_v14_0.trading_session_id_default_0.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Trading Session Sub Id: uInt32, sent
  index, value = eurex_t7_emdi_fast_v14_0.trading_session_sub_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trad Ses Status: uInt32, sent
  index, value = eurex_t7_emdi_fast_v14_0.trad_ses_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Condition: uInt32, Default, optional
  index, value = eurex_t7_emdi_fast_v14_0.market_condition_default_optional_u_int32_field_0.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Fast Market Indicator: uInt32, Default
  index, value = eurex_t7_emdi_fast_v14_0.fast_market_indicator_default_0.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Transact Time: timestamp, sent
  index, value = eurex_t7_emdi_fast_v14_0.transact_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Tes Trad Ses Status: uInt32, sent, optional
  index, value = eurex_t7_emdi_fast_v14_0.tes_trad_ses_status_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Product State Change Message
eurex_t7_emdi_fast_v14_0.product_state_change.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_emdi_fast_v14_0.product_state_change.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Beacon Message
eurex_t7_emdi_fast_v14_0.beacon = {}

-- Dissect Fields: Beacon Message
eurex_t7_emdi_fast_v14_0.beacon.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_emdi_fast_v14_0.msg_type_constant_0.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.sender_comp_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|12:SenderCompID")

  -- Sender Sub Id: uInt32, Copy
  index, value = eurex_t7_emdi_fast_v14_0.sender_sub_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|11:SenderSubID")

  -- Last Msg Seq Num Processed: uInt32, sent
  index, value = eurex_t7_emdi_fast_v14_0.last_msg_seq_num_processed_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Beacon Message
eurex_t7_emdi_fast_v14_0.beacon.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_emdi_fast_v14_0.beacon.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Emd Packet Header Framing
eurex_t7_emdi_fast_v14_0.emd_packet_header = {}

-- Dissect Fields: Emd Packet Header Framing
eurex_t7_emdi_fast_v14_0.emd_packet_header.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Partition Id: uInt32, sent
  index, value = eurex_t7_emdi_fast_v14_0.partition_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: uInt32, sent
  index, value = eurex_t7_emdi_fast_v14_0.sender_comp_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Packet Seq Num: byteVector, sent
  index, value = eurex_t7_emdi_fast_v14_0.packet_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: byteVector, sent
  index, value = eurex_t7_emdi_fast_v14_0.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Performance Indicator: byteVector, sent
  index, value = eurex_t7_emdi_fast_v14_0.performance_indicator.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Emd Packet Header Framing
eurex_t7_emdi_fast_v14_0.emd_packet_header.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_emdi_fast_v14_0.emd_packet_header.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Eurex T7 Emdi Fast 14.0 Message Dispatch
eurex_t7_emdi_fast_v14_0.messages = {
  [63] = eurex_t7_emdi_fast_v14_0.emd_packet_header.dissect,
  [109] = eurex_t7_emdi_fast_v14_0.beacon.dissect,
  [97] = eurex_t7_emdi_fast_v14_0.product_state_change.dissect,
  [99] = eurex_t7_emdi_fast_v14_0.mass_instrument_state_change.dissect,
  [98] = eurex_t7_emdi_fast_v14_0.instrument_state_change.dissect,
  [94] = eurex_t7_emdi_fast_v14_0.depth_incremental.dissect,
  [124] = eurex_t7_emdi_fast_v14_0.complex_instrument_update.dissect,
  [95] = eurex_t7_emdi_fast_v14_0.quote_request.dissect,
  [96] = eurex_t7_emdi_fast_v14_0.cross_request.dissect,
  [93] = eurex_t7_emdi_fast_v14_0.depth_snapshot.dissect,
  [512] = eurex_t7_emdi_fast_v14_0.top_of_book_implied.dissect,
  [100] = eurex_t7_emdi_fast_v14_0.flexible_instrument_update.dissect,
  [516] = eurex_t7_emdi_fast_v14_0.scaled_simple_instrument_update.dissect,
}

-- Eurex T7 Emdi Fast 14.0 Message Nodes
eurex_t7_emdi_fast_v14_0.message_fields = {
  [63] = omi_eurex_t7_emdi_fast_v14_0.fields.emd_packet_header,
  [109] = omi_eurex_t7_emdi_fast_v14_0.fields.beacon,
  [97] = omi_eurex_t7_emdi_fast_v14_0.fields.product_state_change,
  [99] = omi_eurex_t7_emdi_fast_v14_0.fields.mass_instrument_state_change,
  [98] = omi_eurex_t7_emdi_fast_v14_0.fields.instrument_state_change,
  [94] = omi_eurex_t7_emdi_fast_v14_0.fields.depth_incremental,
  [124] = omi_eurex_t7_emdi_fast_v14_0.fields.complex_instrument_update,
  [95] = omi_eurex_t7_emdi_fast_v14_0.fields.quote_request,
  [96] = omi_eurex_t7_emdi_fast_v14_0.fields.cross_request,
  [93] = omi_eurex_t7_emdi_fast_v14_0.fields.depth_snapshot,
  [512] = omi_eurex_t7_emdi_fast_v14_0.fields.top_of_book_implied,
  [100] = omi_eurex_t7_emdi_fast_v14_0.fields.flexible_instrument_update,
  [516] = omi_eurex_t7_emdi_fast_v14_0.fields.scaled_simple_instrument_update,
}

-- Eurex T7 Emdi Fast 14.0 Template Names
eurex_t7_emdi_fast_v14_0.template_id = {}

-- Display: Template Id
eurex_t7_emdi_fast_v14_0.template_id.display = function(value)
  if value == 63 then
    return "Template Id: EMDPacketHeader (63)"
  end
  if value == 109 then
    return "Template Id: Beacon (109)"
  end
  if value == 97 then
    return "Template Id: ProductStateChange (97)"
  end
  if value == 99 then
    return "Template Id: MassInstrumentStateChange (99)"
  end
  if value == 98 then
    return "Template Id: InstrumentStateChange (98)"
  end
  if value == 94 then
    return "Template Id: DepthIncremental (94)"
  end
  if value == 124 then
    return "Template Id: ComplexInstrumentUpdate (124)"
  end
  if value == 95 then
    return "Template Id: QuoteRequest (95)"
  end
  if value == 96 then
    return "Template Id: CrossRequest (96)"
  end
  if value == 93 then
    return "Template Id: DepthSnapshot (93)"
  end
  if value == 512 then
    return "Template Id: TopOfBookImplied (512)"
  end
  if value == 100 then
    return "Template Id: FlexibleInstrumentUpdate (100)"
  end
  if value == 516 then
    return "Template Id: ScaledSimpleInstrumentUpdate (516)"
  end
  if value == 120 then
    return "Template Id: Reset (120)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Name: Template Id
eurex_t7_emdi_fast_v14_0.template_id.name = function(value)
  if value == 63 then
    return "EMDPacketHeader"
  end
  if value == 109 then
    return "Beacon"
  end
  if value == 97 then
    return "ProductStateChange"
  end
  if value == 99 then
    return "MassInstrumentStateChange"
  end
  if value == 98 then
    return "InstrumentStateChange"
  end
  if value == 94 then
    return "DepthIncremental"
  end
  if value == 124 then
    return "ComplexInstrumentUpdate"
  end
  if value == 95 then
    return "QuoteRequest"
  end
  if value == 96 then
    return "CrossRequest"
  end
  if value == 93 then
    return "DepthSnapshot"
  end
  if value == 512 then
    return "TopOfBookImplied"
  end
  if value == 100 then
    return "FlexibleInstrumentUpdate"
  end
  if value == 516 then
    return "ScaledSimpleInstrumentUpdate"
  end
  if value == 120 then
    return "Reset"
  end

  return "Unknown"
end

-- Eurex T7 Emdi Fast 14.0 Framing
eurex_t7_emdi_fast_v14_0.header = 63
eurex_t7_emdi_fast_v14_0.reset = 120

-- Eurex T7 Emdi Fast 14.0 Packet Dissector
omi_eurex_t7_emdi_fast_v14_0.dissector = function(buffer, packet, parent)
  packet.cols.protocol = "Eurex T7 Emdi Fast 14.0"
  local root = parent:add(omi_eurex_t7_emdi_fast_v14_0, buffer(), "Eurex T7 Emdi Fast 14.0")
  local state = state_for(packet)
  local offset = 0
  local messages = 0

  while offset < buffer:len() do
    local start = offset

    local presence_map = nil
    presence_map, offset = read_presence_map(buffer, offset)
    local mapped = offset

    -- the first bit says whether the template id was sent
    local template_id = nil
    local identified = offset
    if presence_map[1] then
      template_id, offset = read_stop_bit_unsigned(buffer, offset)
      state.last_template_id = template_id
    else
      template_id = state.last_template_id
    end

    if template_id == nil then
      root:add_expert_info(PI_MALFORMED, PI_ERROR, "FAST template id was omitted before the stream sent one")
      return
    end

    local message_field = eurex_t7_emdi_fast_v14_0.message_fields[template_id]
    local message_tree = nil

    if message_field ~= nil then
      message_tree = root:add(message_field, buffer(start, 0))
    else
      message_tree = root:add(omi_eurex_t7_emdi_fast_v14_0.fields.message, buffer(start, 0))
      message_tree:set_text(eurex_t7_emdi_fast_v14_0.template_id.name(template_id))
    end

    -- the presence map and the template id are the message's own framing
    local header = message_tree:add(omi_eurex_t7_emdi_fast_v14_0.fields.message_header, buffer(start, offset - start))
    add_presence_map(header, buffer(start, mapped - start), omi_eurex_t7_emdi_fast_v14_0.fields.presence_map, omi_eurex_t7_emdi_fast_v14_0.fields.presence_stop, omi_eurex_t7_emdi_fast_v14_0.fields.presence_identified, omi_eurex_t7_emdi_fast_v14_0.fields.presence_unused, eurex_t7_emdi_fast_v14_0.presence_bits.named[template_id])
    header:add(omi_eurex_t7_emdi_fast_v14_0.fields.template_id, buffer(identified, offset - identified), template_id, eurex_t7_emdi_fast_v14_0.template_id.display(template_id))

    -- the reset template tells a receiver to forget what the stream remembered
    if template_id == eurex_t7_emdi_fast_v14_0.reset then
      state.values = {}
      state.last_template_id = nil
    else
      local message = eurex_t7_emdi_fast_v14_0.messages[template_id]

      if message == nil then
        message_tree:add_expert_info(PI_UNDECODED, PI_WARN, "This dissector reads: 63 (EMDPacketHeader), 109 (Beacon), 97 (ProductStateChange), 99 (MassInstrumentStateChange), 98 (InstrumentStateChange), 94 (DepthIncremental), 124 (ComplexInstrumentUpdate), 95 (QuoteRequest), 96 (CrossRequest), 93 (DepthSnapshot), 512 (TopOfBookImplied), 100 (FlexibleInstrumentUpdate), 516 (ScaledSimpleInstrumentUpdate)")
        message_tree:set_len(offset - start)
        return
      end

      -- every packet opens with the template the model frames them with
      if messages == 0 and template_id ~= eurex_t7_emdi_fast_v14_0.header then
        root:add_expert_info(PI_PROTOCOL, PI_WARN, "FAST packet did not open with its packet header template")
      end

      offset = message(buffer, offset, packet, message_tree, presence_map, 2, state, nil)
      messages = messages + 1
    end

    -- the message occupies whatever its framing and its fields consumed
    message_tree:set_len(offset - start)

    -- a dissection that read nothing would read the same octets for ever
    if offset <= start then
      root:add_expert_info(PI_MALFORMED, PI_ERROR, "FAST message made no forward progress")
      return
    end
  end
end

-- a reload starts every stream's remembered values again
omi_eurex_t7_emdi_fast_v14_0.init = function()
  stream_states = {}
end

-- Register Eurex T7 Emdi Fast 14.0 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_eurex_t7_emdi_fast_v14_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Eurex Exchange
--   Version: v14.0
--   Specification: T7 Market and Reference Data Interfaces Manual
--
-- Script:
--   Generator: 0.1.0.0
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
