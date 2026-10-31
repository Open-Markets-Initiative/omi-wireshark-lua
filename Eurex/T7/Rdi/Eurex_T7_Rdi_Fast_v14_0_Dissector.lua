-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Eurex T7 Rdi Fast 14.0 Protocol
local omi_eurex_t7_rdi_fast_v14_0 = Proto("Omi.Eurex.T7.Rdi.Fast.v14.0", "Eurex T7 Rdi Fast 14.0")

-- Protocol table
local eurex_t7_rdi_fast_v14_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Eurex T7 Rdi Fast 14.0 Framing
omi_eurex_t7_rdi_fast_v14_0.fields.message = ProtoField.new("Message", "eurex.t7.rdi.fast.v14.0.message", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.message_header = ProtoField.new("Message Header", "eurex.t7.rdi.fast.v14.0.messageheader", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_map = ProtoField.new("Presence Map", "eurex.t7.rdi.fast.v14.0.presencemap", ftypes.BYTES)
omi_eurex_t7_rdi_fast_v14_0.fields.template_id = ProtoField.new("Template Id", "eurex.t7.rdi.fast.v14.0.templateid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_stop = ProtoField.new("Stop Bit", "eurex.t7.rdi.fast.v14.0.presencestop", ftypes.UINT8, { [0] = "Clear", [1] = "Set" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_identified = ProtoField.new("Template Id", "eurex.t7.rdi.fast.v14.0.presencetemplateid", ftypes.UINT8, { [0] = "Repeated", [1] = "Sent" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_unused = ProtoField.new("Unused", "eurex.t7.rdi.fast.v14.0.presenceunused", ftypes.UINT8, nil, base.HEX)
eurex_t7_rdi_fast_v14_0.presence_bits = {}

-- Eurex T7 Rdi Fast 14.0 Presence Map Fields
omi_eurex_t7_rdi_fast_v14_0.fields.presence_msg_seq_num = ProtoField.new("Msg Seq Num", "eurex.t7.rdi.fast.v14.0.msgseqnumpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_market_id = ProtoField.new("Market Id", "eurex.t7.rdi.fast.v14.0.marketidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_effective_business_date = ProtoField.new("Effective Business Date", "eurex.t7.rdi.fast.v14.0.effectivebusinessdatepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_next_effective_business_date = ProtoField.new("Next Effective Business Date", "eurex.t7.rdi.fast.v14.0.nexteffectivebusinessdatepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_market_segment_status = ProtoField.new("Market Segment Status", "eurex.t7.rdi.fast.v14.0.marketsegmentstatuspresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_partition_id = ProtoField.new("Partition Id", "eurex.t7.rdi.fast.v14.0.partitionidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_capacity_group_id = ProtoField.new("Capacity Group Id", "eurex.t7.rdi.fast.v14.0.capacitygroupidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_negotiation_duration = ProtoField.new("Negotiation Duration", "eurex.t7.rdi.fast.v14.0.negotiationdurationpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_cross_match_instruction_default = ProtoField.new("Cross Match Instruction Default", "eurex.t7.rdi.fast.v14.0.crossmatchinstructiondefaultpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_derivatives_descriptor_group = ProtoField.new("Derivatives Descriptor Group", "eurex.t7.rdi.fast.v14.0.derivativesdescriptorgrouppresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_underlying_descriptor_group = ProtoField.new("Underlying Descriptor Group", "eurex.t7.rdi.fast.v14.0.underlyingdescriptorgrouppresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_no_instrument_scopes = ProtoField.new("No Instrument Scopes", "eurex.t7.rdi.fast.v14.0.noinstrumentscopespresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_base_trdg_rules_derivatives = ProtoField.new("Base Trdg Rules Derivatives", "eurex.t7.rdi.fast.v14.0.basetrdgrulesderivativespresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_base_trdg_rules_cash = ProtoField.new("Base Trdg Rules Cash", "eurex.t7.rdi.fast.v14.0.basetrdgrulescashpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_no_match_rules = ProtoField.new("No Match Rules", "eurex.t7.rdi.fast.v14.0.nomatchrulespresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_no_md_feed_types = ProtoField.new("No Md Feed Types", "eurex.t7.rdi.fast.v14.0.nomdfeedtypespresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_security_type = ProtoField.new("Security Type", "eurex.t7.rdi.fast.v14.0.securitytypepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_security_status = ProtoField.new("Security Status", "eurex.t7.rdi.fast.v14.0.securitystatuspresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_security_exchange = ProtoField.new("Security Exchange", "eurex.t7.rdi.fast.v14.0.securityexchangepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_product_complex = ProtoField.new("Product Complex", "eurex.t7.rdi.fast.v14.0.productcomplexpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_cash_descriptor_group = ProtoField.new("Cash Descriptor Group", "eurex.t7.rdi.fast.v14.0.cashdescriptorgrouppresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_instrument_price_precision = ProtoField.new("Instrument Price Precision", "eurex.t7.rdi.fast.v14.0.instrumentpriceprecisionpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_min_price_increment = ProtoField.new("Min Price Increment", "eurex.t7.rdi.fast.v14.0.minpriceincrementpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_min_price_increment_clearing = ProtoField.new("Min Price Increment Clearing", "eurex.t7.rdi.fast.v14.0.minpriceincrementclearingpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_min_price_increment_amount = ProtoField.new("Min Price Increment Amount", "eurex.t7.rdi.fast.v14.0.minpriceincrementamountpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_maturity_date = ProtoField.new("Maturity Date", "eurex.t7.rdi.fast.v14.0.maturitydatepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_maturity_month_year = ProtoField.new("Maturity Month Year", "eurex.t7.rdi.fast.v14.0.maturitymonthyearpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_security_sub_type = ProtoField.new("Security Sub Type", "eurex.t7.rdi.fast.v14.0.securitysubtypepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_related_instrument_grp = ProtoField.new("Related Instrument Grp", "eurex.t7.rdi.fast.v14.0.relatedinstrumentgrppresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_security_update_action = ProtoField.new("Security Update Action", "eurex.t7.rdi.fast.v14.0.securityupdateactionpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_prior_settl_price = ProtoField.new("Prior Settl Price", "eurex.t7.rdi.fast.v14.0.priorsettlpricepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_settl_price = ProtoField.new("Settl Price", "eurex.t7.rdi.fast.v14.0.settlpricepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_sender_sub_id = ProtoField.new("Sender Sub Id", "eurex.t7.rdi.fast.v14.0.sendersubidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_md_report_event = ProtoField.new("Md Report Event", "eurex.t7.rdi.fast.v14.0.mdreporteventpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_tot_no_market_segment_reports = ProtoField.new("Tot No Market Segment Reports", "eurex.t7.rdi.fast.v14.0.totnomarketsegmentreportspresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_tot_no_instrument_reports = ProtoField.new("Tot No Instrument Reports", "eurex.t7.rdi.fast.v14.0.totnoinstrumentreportspresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v14_0.fields.presence_sender_comp_id = ProtoField.new("Sender Comp Id", "eurex.t7.rdi.fast.v14.0.sendercompidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)

eurex_t7_rdi_fast_v14_0.presence_bits.named = {
  [122] = {
    [2] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_msg_seq_num,
    [3] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_market_id,
    [4] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_effective_business_date,
    [5] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_next_effective_business_date,
    [6] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_market_segment_status,
    [7] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_partition_id,
    [8] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_capacity_group_id,
    [9] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_negotiation_duration,
    [10] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_cross_match_instruction_default,
    [11] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_derivatives_descriptor_group,
    [12] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_underlying_descriptor_group,
    [13] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_no_instrument_scopes,
    [14] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_base_trdg_rules_derivatives,
    [15] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_base_trdg_rules_cash,
    [16] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_no_match_rules,
    [17] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_no_md_feed_types,
  },
  [123] = {
    [2] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_msg_seq_num,
    [3] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_security_type,
    [4] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_security_status,
    [5] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_security_exchange,
    [6] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_product_complex,
    [7] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_derivatives_descriptor_group,
    [8] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_cash_descriptor_group,
    [9] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_instrument_price_precision,
    [10] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_min_price_increment,
    [11] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_min_price_increment_clearing,
    [12] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_min_price_increment_amount,
    [13] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_maturity_date,
    [14] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_maturity_month_year,
    [15] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_security_sub_type,
    [16] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_related_instrument_grp,
  },
  [121] = {
    [2] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_msg_seq_num,
    [3] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_security_update_action,
    [4] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_security_type,
    [5] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_security_status,
    [6] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_security_exchange,
    [7] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_product_complex,
    [8] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_derivatives_descriptor_group,
    [9] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_cash_descriptor_group,
    [10] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_instrument_price_precision,
    [11] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_min_price_increment,
    [12] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_min_price_increment_clearing,
    [13] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_min_price_increment_amount,
    [14] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_maturity_date,
    [15] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_maturity_month_year,
    [16] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_security_sub_type,
    [17] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_related_instrument_grp,
  },
  [162] = {
    [2] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_msg_seq_num,
  },
  [514] = {
    [2] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_msg_seq_num,
    [3] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_prior_settl_price,
    [4] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_settl_price,
  },
  [515] = {
    [2] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_msg_seq_num,
  },
  [125] = {
    [2] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_sender_sub_id,
    [3] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_market_id,
    [4] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_md_report_event,
    [5] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_tot_no_market_segment_reports,
    [6] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_tot_no_instrument_reports,
  },
  [109] = {
    [2] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_sender_comp_id,
    [3] = omi_eurex_t7_rdi_fast_v14_0.fields.presence_sender_sub_id,
  },
}

-- Eurex T7 Rdi Fast 14.0 Fields
omi_eurex_t7_rdi_fast_v14_0.fields.sender_comp_id = ProtoField.new("Sender Comp Id", "eurex.t7.rdi.fast.v14.0.sendercompid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.packet_seq_num = ProtoField.new("Packet Seq Num", "eurex.t7.rdi.fast.v14.0.packetseqnum", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.sending_time = ProtoField.new("Sending Time", "eurex.t7.rdi.fast.v14.0.sendingtime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_eurex_t7_rdi_fast_v14_0.fields.msg_type = ProtoField.new("Msg Type", "eurex.t7.rdi.fast.v14.0.msgtype", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "eurex.t7.rdi.fast.v14.0.msgseqnum", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.market_id = ProtoField.new("Market Id", "eurex.t7.rdi.fast.v14.0.marketid", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.market_segment_id = ProtoField.new("Market Segment Id", "eurex.t7.rdi.fast.v14.0.marketsegmentid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.effective_business_date = ProtoField.new("Effective Business Date", "eurex.t7.rdi.fast.v14.0.effectivebusinessdate", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.next_effective_business_date = ProtoField.new("Next Effective Business Date", "eurex.t7.rdi.fast.v14.0.nexteffectivebusinessdate", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.market_segment = ProtoField.new("Market Segment", "eurex.t7.rdi.fast.v14.0.marketsegment", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.market_segment_status = ProtoField.new("Market Segment Status", "eurex.t7.rdi.fast.v14.0.marketsegmentstatus", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.partition_id = ProtoField.new("Partition Id", "eurex.t7.rdi.fast.v14.0.partitionid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.capacity_group_id = ProtoField.new("Capacity Group Id", "eurex.t7.rdi.fast.v14.0.capacitygroupid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.negotiation_duration = ProtoField.new("Negotiation Duration", "eurex.t7.rdi.fast.v14.0.negotiationduration", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.cross_match_instruction_default = ProtoField.new("Cross Match Instruction Default", "eurex.t7.rdi.fast.v14.0.crossmatchinstructiondefault", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.currency = ProtoField.new("Currency", "eurex.t7.rdi.fast.v14.0.currency", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.market_segment_desc = ProtoField.new("Market Segment Desc", "eurex.t7.rdi.fast.v14.0.marketsegmentdesc", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.market_segment_symbol = ProtoField.new("Market Segment Symbol", "eurex.t7.rdi.fast.v14.0.marketsegmentsymbol", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.parent_mkt_segm_id = ProtoField.new("Parent Mkt Segm Id", "eurex.t7.rdi.fast.v14.0.parentmktsegmid", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.max_diff_exp_months = ProtoField.new("Max Diff Exp Months", "eurex.t7.rdi.fast.v14.0.maxdiffexpmonths", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.us_approval = ProtoField.new("Us Approval", "eurex.t7.rdi.fast.v14.0.usapproval", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.market_segment_type = ProtoField.new("Market Segment Type", "eurex.t7.rdi.fast.v14.0.marketsegmenttype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.market_segment_sub_type = ProtoField.new("Market Segment Sub Type", "eurex.t7.rdi.fast.v14.0.marketsegmentsubtype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.decay_split = ProtoField.new("Decay Split", "eurex.t7.rdi.fast.v14.0.decaysplit", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.max_offset_rfq_expire_time = ProtoField.new("Max Offset Rfq Expire Time", "eurex.t7.rdi.fast.v14.0.maxoffsetrfqexpiretime", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.offset_stp_effective_time = ProtoField.new("Offset Stp Effective Time", "eurex.t7.rdi.fast.v14.0.offsetstpeffectivetime", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.tsl_market_group_id = ProtoField.new("Tsl Market Group Id", "eurex.t7.rdi.fast.v14.0.tslmarketgroupid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.tsl_market_group = ProtoField.new("Tsl Market Group", "eurex.t7.rdi.fast.v14.0.tslmarketgroup", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.independent_system_operator = ProtoField.new("Independent System Operator", "eurex.t7.rdi.fast.v14.0.independentsystemoperator", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.location_id = ProtoField.new("Location Id", "eurex.t7.rdi.fast.v14.0.locationid", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.product_type = ProtoField.new("Product Type", "eurex.t7.rdi.fast.v14.0.producttype", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.commodity_product_class = ProtoField.new("Commodity Product Class", "eurex.t7.rdi.fast.v14.0.commodityproductclass", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.commodity_unit = ProtoField.new("Commodity Unit", "eurex.t7.rdi.fast.v14.0.commodityunit", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.location_type = ProtoField.new("Location Type", "eurex.t7.rdi.fast.v14.0.locationtype", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.max_trade_vol = ProtoField.new("Max Trade Vol", "eurex.t7.rdi.fast.v14.0.maxtradevol", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.max_trade_val = ProtoField.new("Max Trade Val", "eurex.t7.rdi.fast.v14.0.maxtradeval", ftypes.UINT64)
omi_eurex_t7_rdi_fast_v14_0.fields.max_calendar_spread_vol = ProtoField.new("Max Calendar Spread Vol", "eurex.t7.rdi.fast.v14.0.maxcalendarspreadvol", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.max_tes_vol = ProtoField.new("Max Tes Vol", "eurex.t7.rdi.fast.v14.0.maxtesvol", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.no_quantity_scaling_factors = ProtoField.new("No Quantity Scaling Factors", "eurex.t7.rdi.fast.v14.0.noquantityscalingfactors", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.quantity_scaling_factor = ProtoField.new("Quantity Scaling Factor", "eurex.t7.rdi.fast.v14.0.quantityscalingfactor", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.underlying_security_exchange = ProtoField.new("Underlying Security Exchange", "eurex.t7.rdi.fast.v14.0.underlyingsecurityexchange", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "eurex.t7.rdi.fast.v14.0.underlyingsymbol", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.underlying_security_id_string = ProtoField.new("Underlying Security Id", "eurex.t7.rdi.fast.v14.0.underlyingsecurityid.string", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.underlying_security_id_int64 = ProtoField.new("Underlying Security Id", "eurex.t7.rdi.fast.v14.0.underlyingsecurityid.int64", ftypes.INT64)
omi_eurex_t7_rdi_fast_v14_0.fields.underlying_security_id_source = ProtoField.new("Underlying Security Id Source", "eurex.t7.rdi.fast.v14.0.underlyingsecurityidsource", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.underlying_prev_close_px = ProtoField.new("Underlying Prev Close Px", "eurex.t7.rdi.fast.v14.0.underlyingprevclosepx", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.no_instrument_scopes = ProtoField.new("No Instrument Scopes", "eurex.t7.rdi.fast.v14.0.noinstrumentscopes", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.instrument_scope_operator = ProtoField.new("Instrument Scope Operator", "eurex.t7.rdi.fast.v14.0.instrumentscopeoperator", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.instrument_scope_security_type = ProtoField.new("Instrument Scope Security Type", "eurex.t7.rdi.fast.v14.0.instrumentscopesecuritytype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.instrument_scope_security_sub_type = ProtoField.new("Instrument Scope Security Sub Type", "eurex.t7.rdi.fast.v14.0.instrumentscopesecuritysubtype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.no_related_market_segments = ProtoField.new("No Related Market Segments", "eurex.t7.rdi.fast.v14.0.norelatedmarketsegments", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.related_market_segment_id = ProtoField.new("Related Market Segment Id", "eurex.t7.rdi.fast.v14.0.relatedmarketsegmentid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.market_segments_relationship = ProtoField.new("Market Segments Relationship", "eurex.t7.rdi.fast.v14.0.marketsegmentsrelationship", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.allow_one_product_strip = ProtoField.new("Allow One Product Strip", "eurex.t7.rdi.fast.v14.0.allowoneproductstrip", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.no_tick_rules = ProtoField.new("No Tick Rules", "eurex.t7.rdi.fast.v14.0.notickrules", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.tick_rule_id = ProtoField.new("Tick Rule Id", "eurex.t7.rdi.fast.v14.0.tickruleid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.start_tick_price_range = ProtoField.new("Start Tick Price Range", "eurex.t7.rdi.fast.v14.0.starttickpricerange", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.end_tick_price_range = ProtoField.new("End Tick Price Range", "eurex.t7.rdi.fast.v14.0.endtickpricerange", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.tick_increment = ProtoField.new("Tick Increment", "eurex.t7.rdi.fast.v14.0.tickincrement", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.no_tick_rule_scopes = ProtoField.new("No Tick Rule Scopes", "eurex.t7.rdi.fast.v14.0.notickrulescopes", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.tick_rule_product_complex = ProtoField.new("Tick Rule Product Complex", "eurex.t7.rdi.fast.v14.0.tickruleproductcomplex", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.trd_type = ProtoField.new("Trd Type", "eurex.t7.rdi.fast.v14.0.trdtype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.no_price_range_rules = ProtoField.new("No Price Range Rules", "eurex.t7.rdi.fast.v14.0.nopricerangerules", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.price_range_rule_id = ProtoField.new("Price Range Rule Id", "eurex.t7.rdi.fast.v14.0.pricerangeruleid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.price_range_product_complex = ProtoField.new("Price Range Product Complex", "eurex.t7.rdi.fast.v14.0.pricerangeproductcomplex", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.start_price_range = ProtoField.new("Start Price Range", "eurex.t7.rdi.fast.v14.0.startpricerange", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.end_price_range = ProtoField.new("End Price Range", "eurex.t7.rdi.fast.v14.0.endpricerange", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.price_range_value = ProtoField.new("Price Range Value", "eurex.t7.rdi.fast.v14.0.pricerangevalue", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.price_range_percentage = ProtoField.new("Price Range Percentage", "eurex.t7.rdi.fast.v14.0.pricerangepercentage", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.quote_side_indicator = ProtoField.new("Quote Side Indicator", "eurex.t7.rdi.fast.v14.0.quotesideindicator", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.quote_side_model_type = ProtoField.new("Quote Side Model Type", "eurex.t7.rdi.fast.v14.0.quotesidemodeltype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.fast_market_percentage = ProtoField.new("Fast Market Percentage", "eurex.t7.rdi.fast.v14.0.fastmarketpercentage", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.check_market_order = ProtoField.new("Check Market Order", "eurex.t7.rdi.fast.v14.0.checkmarketorder", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.no_hhi_intervals = ProtoField.new("No Hhi Intervals", "eurex.t7.rdi.fast.v14.0.nohhiintervals", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.hhi_indicator = ProtoField.new("Hhi Indicator", "eurex.t7.rdi.fast.v14.0.hhiindicator", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.hhi_interval_end = ProtoField.new("Hhi Interval End", "eurex.t7.rdi.fast.v14.0.hhiintervalend", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.no_quote_size_rules = ProtoField.new("No Quote Size Rules", "eurex.t7.rdi.fast.v14.0.noquotesizerules", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.min_bid_size = ProtoField.new("Min Bid Size", "eurex.t7.rdi.fast.v14.0.minbidsize", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.min_offer_size = ProtoField.new("Min Offer Size", "eurex.t7.rdi.fast.v14.0.minoffersize", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.fast_market_indicator = ProtoField.new("Fast Market Indicator", "eurex.t7.rdi.fast.v14.0.fastmarketindicator", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.no_flex_product_eligibilities = ProtoField.new("No Flex Product Eligibilities", "eurex.t7.rdi.fast.v14.0.noflexproducteligibilities", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.flex_product_eligibility_complex = ProtoField.new("Flex Product Eligibility Complex", "eurex.t7.rdi.fast.v14.0.flexproducteligibilitycomplex", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.flex_product_eligibility_indicator = ProtoField.new("Flex Product Eligibility Indicator", "eurex.t7.rdi.fast.v14.0.flexproducteligibilityindicator", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.round_lot = ProtoField.new("Round Lot", "eurex.t7.rdi.fast.v14.0.roundlot", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.no_auction_type_rules = ProtoField.new("No Auction Type Rules", "eurex.t7.rdi.fast.v14.0.noauctiontyperules", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.auction_type = ProtoField.new("Auction Type", "eurex.t7.rdi.fast.v14.0.auctiontype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.closed_book_indicator = ProtoField.new("Closed Book Indicator", "eurex.t7.rdi.fast.v14.0.closedbookindicator", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.market_imbalance_indicator = ProtoField.new("Market Imbalance Indicator", "eurex.t7.rdi.fast.v14.0.marketimbalanceindicator", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.disable_on_book_trading = ProtoField.new("Disable On Book Trading", "eurex.t7.rdi.fast.v14.0.disableonbooktrading", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.no_match_rules = ProtoField.new("No Match Rules", "eurex.t7.rdi.fast.v14.0.nomatchrules", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.match_rule_product_complex = ProtoField.new("Match Rule Product Complex", "eurex.t7.rdi.fast.v14.0.matchruleproductcomplex", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.match_algorithm = ProtoField.new("Match Algorithm", "eurex.t7.rdi.fast.v14.0.matchalgorithm", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.match_type = ProtoField.new("Match Type", "eurex.t7.rdi.fast.v14.0.matchtype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.no_md_feed_types = ProtoField.new("No Md Feed Types", "eurex.t7.rdi.fast.v14.0.nomdfeedtypes", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.md_feed_type = ProtoField.new("Md Feed Type", "eurex.t7.rdi.fast.v14.0.mdfeedtype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.md_book_type = ProtoField.new("Md Book Type", "eurex.t7.rdi.fast.v14.0.mdbooktype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.market_depth = ProtoField.new("Market Depth", "eurex.t7.rdi.fast.v14.0.marketdepth", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.market_depth_time_interval = ProtoField.new("Market Depth Time Interval", "eurex.t7.rdi.fast.v14.0.marketdepthtimeinterval", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.md_recovery_time_interval = ProtoField.new("Md Recovery Time Interval", "eurex.t7.rdi.fast.v14.0.mdrecoverytimeinterval", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.primary_service_location_id = ProtoField.new("Primary Service Location Id", "eurex.t7.rdi.fast.v14.0.primaryservicelocationid", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.primary_service_location_sub_id = ProtoField.new("Primary Service Location Sub Id", "eurex.t7.rdi.fast.v14.0.primaryservicelocationsubid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.secondary_service_location_id = ProtoField.new("Secondary Service Location Id", "eurex.t7.rdi.fast.v14.0.secondaryservicelocationid", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.secondary_service_location_sub_id = ProtoField.new("Secondary Service Location Sub Id", "eurex.t7.rdi.fast.v14.0.secondaryservicelocationsubid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.security_id = ProtoField.new("Security Id", "eurex.t7.rdi.fast.v14.0.securityid", ftypes.INT64)
omi_eurex_t7_rdi_fast_v14_0.fields.security_id_source = ProtoField.new("Security Id Source", "eurex.t7.rdi.fast.v14.0.securityidsource", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.no_security_alt_id = ProtoField.new("No Security Alt Id", "eurex.t7.rdi.fast.v14.0.nosecurityaltid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.security_alt_id = ProtoField.new("Security Alt Id", "eurex.t7.rdi.fast.v14.0.securityaltid", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.security_alt_id_source = ProtoField.new("Security Alt Id Source", "eurex.t7.rdi.fast.v14.0.securityaltidsource", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.security_type = ProtoField.new("Security Type", "eurex.t7.rdi.fast.v14.0.securitytype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.security_status = ProtoField.new("Security Status", "eurex.t7.rdi.fast.v14.0.securitystatus", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.security_desc = ProtoField.new("Security Desc", "eurex.t7.rdi.fast.v14.0.securitydesc", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.security_exchange = ProtoField.new("Security Exchange", "eurex.t7.rdi.fast.v14.0.securityexchange", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.product_complex = ProtoField.new("Product Complex", "eurex.t7.rdi.fast.v14.0.productcomplex", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.cfi_code = ProtoField.new("Cfi Code", "eurex.t7.rdi.fast.v14.0.cficode", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.display_name = ProtoField.new("Display Name", "eurex.t7.rdi.fast.v14.0.displayname", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.contract_identification_eligibility = ProtoField.new("Contract Identification Eligibility", "eurex.t7.rdi.fast.v14.0.contractidentificationeligibility", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.is_primary = ProtoField.new("Is Primary", "eurex.t7.rdi.fast.v14.0.isprimary", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.security_reference_data_supplement = ProtoField.new("Security Reference Data Supplement", "eurex.t7.rdi.fast.v14.0.securityreferencedatasupplement", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.contract_date = ProtoField.new("Contract Date", "eurex.t7.rdi.fast.v14.0.contractdate", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.contract_date_type = ProtoField.new("Contract Date Type", "eurex.t7.rdi.fast.v14.0.contractdatetype", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.contract_month_year = ProtoField.new("Contract Month Year", "eurex.t7.rdi.fast.v14.0.contractmonthyear", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.contract_month_type = ProtoField.new("Contract Month Type", "eurex.t7.rdi.fast.v14.0.contractmonthtype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.contract_cycle_type = ProtoField.new("Contract Cycle Type", "eurex.t7.rdi.fast.v14.0.contractcycletype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.contract_cycle_sub_type = ProtoField.new("Contract Cycle Sub Type", "eurex.t7.rdi.fast.v14.0.contractcyclesubtype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.maturity_frequency_unit = ProtoField.new("Maturity Frequency Unit", "eurex.t7.rdi.fast.v14.0.maturityfrequencyunit", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.contract_frequency = ProtoField.new("Contract Frequency", "eurex.t7.rdi.fast.v14.0.contractfrequency", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.contract_display_instruction = ProtoField.new("Contract Display Instruction", "eurex.t7.rdi.fast.v14.0.contractdisplayinstruction", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.display_day = ProtoField.new("Display Day", "eurex.t7.rdi.fast.v14.0.displayday", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.display_relative_day = ProtoField.new("Display Relative Day", "eurex.t7.rdi.fast.v14.0.displayrelativeday", ftypes.INT32)
omi_eurex_t7_rdi_fast_v14_0.fields.display_week = ProtoField.new("Display Week", "eurex.t7.rdi.fast.v14.0.displayweek", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.display_day_of_week = ProtoField.new("Display Day Of Week", "eurex.t7.rdi.fast.v14.0.displaydayofweek", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.display_month = ProtoField.new("Display Month", "eurex.t7.rdi.fast.v14.0.displaymonth", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.display_quarter = ProtoField.new("Display Quarter", "eurex.t7.rdi.fast.v14.0.displayquarter", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.display_season = ProtoField.new("Display Season", "eurex.t7.rdi.fast.v14.0.displayseason", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.display_year = ProtoField.new("Display Year", "eurex.t7.rdi.fast.v14.0.displayyear", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.strike_price = ProtoField.new("Strike Price", "eurex.t7.rdi.fast.v14.0.strikeprice", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.strike_price_precision = ProtoField.new("Strike Price Precision", "eurex.t7.rdi.fast.v14.0.strikepriceprecision", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "eurex.t7.rdi.fast.v14.0.contractmultiplier", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.put_or_call = ProtoField.new("Put Or Call", "eurex.t7.rdi.fast.v14.0.putorcall", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.opt_attribute = ProtoField.new("Opt Attribute", "eurex.t7.rdi.fast.v14.0.optattribute", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.exercise_style = ProtoField.new("Exercise Style", "eurex.t7.rdi.fast.v14.0.exercisestyle", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.orig_strike_price = ProtoField.new("Orig Strike Price", "eurex.t7.rdi.fast.v14.0.origstrikeprice", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.contract_generation_number = ProtoField.new("Contract Generation Number", "eurex.t7.rdi.fast.v14.0.contractgenerationnumber", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.low_exercise_price_option_indicator = ProtoField.new("Low Exercise Price Option Indicator", "eurex.t7.rdi.fast.v14.0.lowexercisepriceoptionindicator", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.valuation_method = ProtoField.new("Valuation Method", "eurex.t7.rdi.fast.v14.0.valuationmethod", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.settl_method = ProtoField.new("Settl Method", "eurex.t7.rdi.fast.v14.0.settlmethod", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.settl_sub_method = ProtoField.new("Settl Sub Method", "eurex.t7.rdi.fast.v14.0.settlsubmethod", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.prior_settl_price = ProtoField.new("Prior Settl Price", "eurex.t7.rdi.fast.v14.0.priorsettlprice", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.price_delta = ProtoField.new("Price Delta", "eurex.t7.rdi.fast.v14.0.pricedelta", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.risk_sensitivity_factor = ProtoField.new("Risk Sensitivity Factor", "eurex.t7.rdi.fast.v14.0.risksensitivityfactor", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.symbol = ProtoField.new("Symbol", "eurex.t7.rdi.fast.v14.0.symbol", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.list_method = ProtoField.new("List Method", "eurex.t7.rdi.fast.v14.0.listmethod", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.last_fragment = ProtoField.new("Last Fragment", "eurex.t7.rdi.fast.v14.0.lastfragment", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.leg_ratio_multiplier = ProtoField.new("Leg Ratio Multiplier", "eurex.t7.rdi.fast.v14.0.legratiomultiplier", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.price_notation = ProtoField.new("Price Notation", "eurex.t7.rdi.fast.v14.0.pricenotation", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.no_legs = ProtoField.new("No Legs", "eurex.t7.rdi.fast.v14.0.nolegs", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.leg_symbol = ProtoField.new("Leg Symbol", "eurex.t7.rdi.fast.v14.0.legsymbol", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.leg_security_id = ProtoField.new("Leg Security Id", "eurex.t7.rdi.fast.v14.0.legsecurityid", ftypes.INT64)
omi_eurex_t7_rdi_fast_v14_0.fields.leg_security_id_source = ProtoField.new("Leg Security Id Source", "eurex.t7.rdi.fast.v14.0.legsecurityidsource", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.leg_security_type = ProtoField.new("Leg Security Type", "eurex.t7.rdi.fast.v14.0.legsecuritytype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.leg_side = ProtoField.new("Leg Side", "eurex.t7.rdi.fast.v14.0.legside", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "eurex.t7.rdi.fast.v14.0.legratioqty", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.leg_price = ProtoField.new("Leg Price", "eurex.t7.rdi.fast.v14.0.legprice", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.related_price = ProtoField.new("Related Price", "eurex.t7.rdi.fast.v14.0.relatedprice", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.related_price_type = ProtoField.new("Related Price Type", "eurex.t7.rdi.fast.v14.0.relatedpricetype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.trading_style = ProtoField.new("Trading Style", "eurex.t7.rdi.fast.v14.0.tradingstyle", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.underlying_market_segment_id = ProtoField.new("Underlying Market Segment Id", "eurex.t7.rdi.fast.v14.0.underlyingmarketsegmentid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.unit_of_measure = ProtoField.new("Unit Of Measure", "eurex.t7.rdi.fast.v14.0.unitofmeasure", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.asset_type = ProtoField.new("Asset Type", "eurex.t7.rdi.fast.v14.0.assettype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.asset_sub_type = ProtoField.new("Asset Sub Type", "eurex.t7.rdi.fast.v14.0.assetsubtype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.transact_time = ProtoField.new("Transact Time", "eurex.t7.rdi.fast.v14.0.transacttime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_eurex_t7_rdi_fast_v14_0.fields.ref_tick_table_id = ProtoField.new("Ref Tick Table Id", "eurex.t7.rdi.fast.v14.0.refticktableid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.settl_currency = ProtoField.new("Settl Currency", "eurex.t7.rdi.fast.v14.0.settlcurrency", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.deposit_type = ProtoField.new("Deposit Type", "eurex.t7.rdi.fast.v14.0.deposittype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.issue_date = ProtoField.new("Issue Date", "eurex.t7.rdi.fast.v14.0.issuedate", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.min_trade_vol = ProtoField.new("Min Trade Vol", "eurex.t7.rdi.fast.v14.0.mintradevol", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.quoting_start_time = ProtoField.new("Quoting Start Time", "eurex.t7.rdi.fast.v14.0.quotingstarttime", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.quoting_end_time = ProtoField.new("Quoting End Time", "eurex.t7.rdi.fast.v14.0.quotingendtime", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.instrument_auction_type = ProtoField.new("Instrument Auction Type", "eurex.t7.rdi.fast.v14.0.instrumentauctiontype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.midpoint_trading = ProtoField.new("Midpoint Trading", "eurex.t7.rdi.fast.v14.0.midpointtrading", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.midpoint_exec_venue_id = ProtoField.new("Midpoint Exec Venue Id", "eurex.t7.rdi.fast.v14.0.midpointexecvenueid", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.no_instrument_parties = ProtoField.new("No Instrument Parties", "eurex.t7.rdi.fast.v14.0.noinstrumentparties", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.instrument_party_id = ProtoField.new("Instrument Party Id", "eurex.t7.rdi.fast.v14.0.instrumentpartyid", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.instrument_party_id_source = ProtoField.new("Instrument Party Id Source", "eurex.t7.rdi.fast.v14.0.instrumentpartyidsource", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.instrument_party_role = ProtoField.new("Instrument Party Role", "eurex.t7.rdi.fast.v14.0.instrumentpartyrole", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.instrument_party_role_qualifier = ProtoField.new("Instrument Party Role Qualifier", "eurex.t7.rdi.fast.v14.0.instrumentpartyrolequalifier", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.coupon_rate = ProtoField.new("Coupon Rate", "eurex.t7.rdi.fast.v14.0.couponrate", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.previous_coupon_payment_date = ProtoField.new("Previous Coupon Payment Date", "eurex.t7.rdi.fast.v14.0.previouscouponpaymentdate", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.coupon_payment_date = ProtoField.new("Coupon Payment Date", "eurex.t7.rdi.fast.v14.0.couponpaymentdate", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.coupon_day_count = ProtoField.new("Coupon Day Count", "eurex.t7.rdi.fast.v14.0.coupondaycount", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.coupon_type = ProtoField.new("Coupon Type", "eurex.t7.rdi.fast.v14.0.coupontype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.country_of_issue = ProtoField.new("Country Of Issue", "eurex.t7.rdi.fast.v14.0.countryofissue", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.flat_indicator = ProtoField.new("Flat Indicator", "eurex.t7.rdi.fast.v14.0.flatindicator", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.warrant_type = ProtoField.new("Warrant Type", "eurex.t7.rdi.fast.v14.0.warranttype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.cover_indicator = ProtoField.new("Cover Indicator", "eurex.t7.rdi.fast.v14.0.coverindicator", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.volatility_corridor_opening_auction = ProtoField.new("Volatility Corridor Opening Auction", "eurex.t7.rdi.fast.v14.0.volatilitycorridoropeningauction", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.volatility_corridor_intraday_auction = ProtoField.new("Volatility Corridor Intraday Auction", "eurex.t7.rdi.fast.v14.0.volatilitycorridorintradayauction", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.volatility_corridor_closing_auction = ProtoField.new("Volatility Corridor Closing Auction", "eurex.t7.rdi.fast.v14.0.volatilitycorridorclosingauction", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.volatility_corridor_continuous = ProtoField.new("Volatility Corridor Continuous", "eurex.t7.rdi.fast.v14.0.volatilitycorridorcontinuous", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.volatility_corridor_retail_auction = ProtoField.new("Volatility Corridor Retail Auction", "eurex.t7.rdi.fast.v14.0.volatilitycorridorretailauction", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.fixed_abs_vola_interruption_limit = ProtoField.new("Fixed Abs Vola Interruption Limit", "eurex.t7.rdi.fast.v14.0.fixedabsvolainterruptionlimit", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.float_abs_vola_interruption_limit = ProtoField.new("Float Abs Vola Interruption Limit", "eurex.t7.rdi.fast.v14.0.floatabsvolainterruptionlimit", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.fixed_pct_vola_interruption_limit = ProtoField.new("Fixed Pct Vola Interruption Limit", "eurex.t7.rdi.fast.v14.0.fixedpctvolainterruptionlimit", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.float_pct_vola_interruption_limit = ProtoField.new("Float Pct Vola Interruption Limit", "eurex.t7.rdi.fast.v14.0.floatpctvolainterruptionlimit", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.no_security_classifications = ProtoField.new("No Security Classifications", "eurex.t7.rdi.fast.v14.0.nosecurityclassifications", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.security_classification_reason = ProtoField.new("Security Classification Reason", "eurex.t7.rdi.fast.v14.0.securityclassificationreason", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.security_classification_value = ProtoField.new("Security Classification Value", "eurex.t7.rdi.fast.v14.0.securityclassificationvalue", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.no_instr_attrib = ProtoField.new("No Instr Attrib", "eurex.t7.rdi.fast.v14.0.noinstrattrib", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.instr_attrib_type = ProtoField.new("Instr Attrib Type", "eurex.t7.rdi.fast.v14.0.instrattribtype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.instr_attrib_value = ProtoField.new("Instr Attrib Value", "eurex.t7.rdi.fast.v14.0.instrattribvalue", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.no_events = ProtoField.new("No Events", "eurex.t7.rdi.fast.v14.0.noevents", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.event_type = ProtoField.new("Event Type", "eurex.t7.rdi.fast.v14.0.eventtype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.event_date = ProtoField.new("Event Date", "eurex.t7.rdi.fast.v14.0.eventdate", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.instrument_price_precision = ProtoField.new("Instrument Price Precision", "eurex.t7.rdi.fast.v14.0.instrumentpriceprecision", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.min_price_increment = ProtoField.new("Min Price Increment", "eurex.t7.rdi.fast.v14.0.minpriceincrement", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.min_price_increment_clearing = ProtoField.new("Min Price Increment Clearing", "eurex.t7.rdi.fast.v14.0.minpriceincrementclearing", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.min_price_increment_amount = ProtoField.new("Min Price Increment Amount", "eurex.t7.rdi.fast.v14.0.minpriceincrementamount", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.maturity_date = ProtoField.new("Maturity Date", "eurex.t7.rdi.fast.v14.0.maturitydate", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.maturity_month_year = ProtoField.new("Maturity Month Year", "eurex.t7.rdi.fast.v14.0.maturitymonthyear", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.security_sub_type = ProtoField.new("Security Sub Type", "eurex.t7.rdi.fast.v14.0.securitysubtype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.related_security_id = ProtoField.new("Related Security Id", "eurex.t7.rdi.fast.v14.0.relatedsecurityid", ftypes.INT64)
omi_eurex_t7_rdi_fast_v14_0.fields.related_security_id_source = ProtoField.new("Related Security Id Source", "eurex.t7.rdi.fast.v14.0.relatedsecurityidsource", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.no_market_segments = ProtoField.new("No Market Segments", "eurex.t7.rdi.fast.v14.0.nomarketsegments", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.implied_market_indicator = ProtoField.new("Implied Market Indicator", "eurex.t7.rdi.fast.v14.0.impliedmarketindicator", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.multileg_model = ProtoField.new("Multileg Model", "eurex.t7.rdi.fast.v14.0.multilegmodel", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.price_type = ProtoField.new("Price Type", "eurex.t7.rdi.fast.v14.0.pricetype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.post_trade_anonymity = ProtoField.new("Post Trade Anonymity", "eurex.t7.rdi.fast.v14.0.posttradeanonymity", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.settl_business_days = ProtoField.new("Settl Business Days", "eurex.t7.rdi.fast.v14.0.settlbusinessdays", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.no_trading_session_rules = ProtoField.new("No Trading Session Rules", "eurex.t7.rdi.fast.v14.0.notradingsessionrules", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.trading_session_id = ProtoField.new("Trading Session Id", "eurex.t7.rdi.fast.v14.0.tradingsessionid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "eurex.t7.rdi.fast.v14.0.tradingsessionsubid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.security_update_action = ProtoField.new("Security Update Action", "eurex.t7.rdi.fast.v14.0.securityupdateaction", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.no_clearing_price_parameters = ProtoField.new("No Clearing Price Parameters", "eurex.t7.rdi.fast.v14.0.noclearingpriceparameters", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.business_day_type = ProtoField.new("Business Day Type", "eurex.t7.rdi.fast.v14.0.businessdaytype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.clearing_price_offset = ProtoField.new("Clearing Price Offset", "eurex.t7.rdi.fast.v14.0.clearingpriceoffset", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.vega_multiplier = ProtoField.new("Vega Multiplier", "eurex.t7.rdi.fast.v14.0.vegamultiplier", ftypes.UINT64)
omi_eurex_t7_rdi_fast_v14_0.fields.annual_trading_business_days = ProtoField.new("Annual Trading Business Days", "eurex.t7.rdi.fast.v14.0.annualtradingbusinessdays", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.total_trading_business_days = ProtoField.new("Total Trading Business Days", "eurex.t7.rdi.fast.v14.0.totaltradingbusinessdays", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.trading_business_days = ProtoField.new("Trading Business Days", "eurex.t7.rdi.fast.v14.0.tradingbusinessdays", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.standard_variance = ProtoField.new("Standard Variance", "eurex.t7.rdi.fast.v14.0.standardvariance", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.related_close_price = ProtoField.new("Related Close Price", "eurex.t7.rdi.fast.v14.0.relatedcloseprice", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.realized_variance = ProtoField.new("Realized Variance", "eurex.t7.rdi.fast.v14.0.realizedvariance", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.volatility = ProtoField.new("Volatility", "eurex.t7.rdi.fast.v14.0.volatility", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.clearing_settl_price = ProtoField.new("Clearing Settl Price", "eurex.t7.rdi.fast.v14.0.clearingsettlprice", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.calculation_method = ProtoField.new("Calculation Method", "eurex.t7.rdi.fast.v14.0.calculationmethod", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.settl_price = ProtoField.new("Settl Price", "eurex.t7.rdi.fast.v14.0.settlprice", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.annual_calendar_days = ProtoField.new("Annual Calendar Days", "eurex.t7.rdi.fast.v14.0.annualcalendardays", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.remaining_calendar_days = ProtoField.new("Remaining Calendar Days", "eurex.t7.rdi.fast.v14.0.remainingcalendardays", ftypes.INT32)
omi_eurex_t7_rdi_fast_v14_0.fields.overnight_interest_rate = ProtoField.new("Overnight Interest Rate", "eurex.t7.rdi.fast.v14.0.overnightinterestrate", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.overnight_interest_rate_name = ProtoField.new("Overnight Interest Rate Name", "eurex.t7.rdi.fast.v14.0.overnightinterestratename", ftypes.STRING)
omi_eurex_t7_rdi_fast_v14_0.fields.current_payment_parameter = ProtoField.new("Current Payment Parameter", "eurex.t7.rdi.fast.v14.0.currentpaymentparameter", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.accrued_payment_parameter = ProtoField.new("Accrued Payment Parameter", "eurex.t7.rdi.fast.v14.0.accruedpaymentparameter", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.related_index_value = ProtoField.new("Related Index Value", "eurex.t7.rdi.fast.v14.0.relatedindexvalue", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.current_collection_parameter = ProtoField.new("Current Collection Parameter", "eurex.t7.rdi.fast.v14.0.currentcollectionparameter", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.accrued_collection_parameter = ProtoField.new("Accrued Collection Parameter", "eurex.t7.rdi.fast.v14.0.accruedcollectionparameter", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.current_accrued_interest_amt = ProtoField.new("Current Accrued Interest Amt", "eurex.t7.rdi.fast.v14.0.currentaccruedinterestamt", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v14_0.fields.conversion_mode = ProtoField.new("Conversion Mode", "eurex.t7.rdi.fast.v14.0.conversionmode", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.conversion_mode_qualifier = ProtoField.new("Conversion Mode Qualifier", "eurex.t7.rdi.fast.v14.0.conversionmodequalifier", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.md_report_count = ProtoField.new("Md Report Count", "eurex.t7.rdi.fast.v14.0.mdreportcount", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.sender_sub_id = ProtoField.new("Sender Sub Id", "eurex.t7.rdi.fast.v14.0.sendersubid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "eurex.t7.rdi.fast.v14.0.lastmsgseqnumprocessed", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.md_report_event = ProtoField.new("Md Report Event", "eurex.t7.rdi.fast.v14.0.mdreportevent", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.tot_no_market_segment_reports = ProtoField.new("Tot No Market Segment Reports", "eurex.t7.rdi.fast.v14.0.totnomarketsegmentreports", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v14_0.fields.tot_no_instrument_reports = ProtoField.new("Tot No Instrument Reports", "eurex.t7.rdi.fast.v14.0.totnoinstrumentreports", ftypes.UINT32)

-- Eurex T7 Rdi Fast 14.0 Messages
omi_eurex_t7_rdi_fast_v14_0.fields.rd_packet_header = ProtoField.new("Rd Packet Header Framing", "eurex.t7.rdi.fast.v14.0.rdpacketheader", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.product_snapshot = ProtoField.new("Product Snapshot Message", "eurex.t7.rdi.fast.v14.0.productsnapshot", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.product_snapshot_derivatives_descriptor_group = ProtoField.new("Product Snapshot Derivatives Descriptor Group", "eurex.t7.rdi.fast.v14.0.productsnapshotderivativesdescriptorgroup", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.quantity_scaling_factors = ProtoField.new("Quantity Scaling Factors", "eurex.t7.rdi.fast.v14.0.quantityscalingfactors", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.underlying_descriptor_group = ProtoField.new("Underlying Descriptor Group", "eurex.t7.rdi.fast.v14.0.underlyingdescriptorgroup", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.instrument_scopes = ProtoField.new("Instrument Scopes", "eurex.t7.rdi.fast.v14.0.instrumentscopes", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.related_market_segments = ProtoField.new("Related Market Segments", "eurex.t7.rdi.fast.v14.0.relatedmarketsegments", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.base_trdg_rules = ProtoField.new("Base Trdg Rules", "eurex.t7.rdi.fast.v14.0.basetrdgrules", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.tick_rules = ProtoField.new("Tick Rules", "eurex.t7.rdi.fast.v14.0.tickrules", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.tick_rule_scopes = ProtoField.new("Tick Rule Scopes", "eurex.t7.rdi.fast.v14.0.tickrulescopes", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.product_snapshot_price_range_rules = ProtoField.new("Product Snapshot Price Range Rules", "eurex.t7.rdi.fast.v14.0.productsnapshotpricerangerules", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.hhi_intervals = ProtoField.new("Hhi Intervals", "eurex.t7.rdi.fast.v14.0.hhiintervals", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.base_trdg_rules_derivatives = ProtoField.new("Base Trdg Rules Derivatives", "eurex.t7.rdi.fast.v14.0.basetrdgrulesderivatives", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.product_snapshot_quote_size_rules = ProtoField.new("Product Snapshot Quote Size Rules", "eurex.t7.rdi.fast.v14.0.productsnapshotquotesizerules", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.flex_rules = ProtoField.new("Flex Rules", "eurex.t7.rdi.fast.v14.0.flexrules", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.base_trdg_rules_cash = ProtoField.new("Base Trdg Rules Cash", "eurex.t7.rdi.fast.v14.0.basetrdgrulescash", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.auction_type_rules = ProtoField.new("Auction Type Rules", "eurex.t7.rdi.fast.v14.0.auctiontyperules", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.match_rules = ProtoField.new("Match Rules", "eurex.t7.rdi.fast.v14.0.matchrules", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.feeds = ProtoField.new("Feeds", "eurex.t7.rdi.fast.v14.0.feeds", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.instrument_snapshot = ProtoField.new("Instrument Snapshot Message", "eurex.t7.rdi.fast.v14.0.instrumentsnapshot", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.security_alt = ProtoField.new("Security Alt", "eurex.t7.rdi.fast.v14.0.securityalt", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.instrument_snapshot_derivatives_descriptor_group = ProtoField.new("Instrument Snapshot Derivatives Descriptor Group", "eurex.t7.rdi.fast.v14.0.instrumentsnapshotderivativesdescriptorgroup", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.instrument_snapshot_simple_instrument_descriptor_group = ProtoField.new("Instrument Snapshot Simple Instrument Descriptor Group", "eurex.t7.rdi.fast.v14.0.instrumentsnapshotsimpleinstrumentdescriptorgroup", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.complex_instrument_descriptor_group = ProtoField.new("Complex Instrument Descriptor Group", "eurex.t7.rdi.fast.v14.0.complexinstrumentdescriptorgroup", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.instrmt_leg_grp = ProtoField.new("Instrmt Leg Grp", "eurex.t7.rdi.fast.v14.0.instrmtleggrp", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.underlying_instrument = ProtoField.new("Underlying Instrument", "eurex.t7.rdi.fast.v14.0.underlyinginstrument", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.cash_descriptor_group = ProtoField.new("Cash Descriptor Group", "eurex.t7.rdi.fast.v14.0.cashdescriptorgroup", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.instrument_parties = ProtoField.new("Instrument Parties", "eurex.t7.rdi.fast.v14.0.instrumentparties", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.bonds_and_warrants_group = ProtoField.new("Bonds And Warrants Group", "eurex.t7.rdi.fast.v14.0.bondsandwarrantsgroup", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.volatility_corridor_group = ProtoField.new("Volatility Corridor Group", "eurex.t7.rdi.fast.v14.0.volatilitycorridorgroup", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.single_volatility_parameters_group = ProtoField.new("Single Volatility Parameters Group", "eurex.t7.rdi.fast.v14.0.singlevolatilityparametersgroup", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.security_classification_grp = ProtoField.new("Security Classification Grp", "eurex.t7.rdi.fast.v14.0.securityclassificationgrp", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.instrument_attributes = ProtoField.new("Instrument Attributes", "eurex.t7.rdi.fast.v14.0.instrumentattributes", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.events = ProtoField.new("Events", "eurex.t7.rdi.fast.v14.0.events", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.related_instrument_grp = ProtoField.new("Related Instrument Grp", "eurex.t7.rdi.fast.v14.0.relatedinstrumentgrp", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.market_segment_grp = ProtoField.new("Market Segment Grp", "eurex.t7.rdi.fast.v14.0.marketsegmentgrp", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.instrument_snapshot_quote_size_rules = ProtoField.new("Instrument Snapshot Quote Size Rules", "eurex.t7.rdi.fast.v14.0.instrumentsnapshotquotesizerules", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.instrument_snapshot_price_range_rules = ProtoField.new("Instrument Snapshot Price Range Rules", "eurex.t7.rdi.fast.v14.0.instrumentsnapshotpricerangerules", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.trading_session_rules = ProtoField.new("Trading Session Rules", "eurex.t7.rdi.fast.v14.0.tradingsessionrules", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.instrument_incremental = ProtoField.new("Instrument Incremental Message", "eurex.t7.rdi.fast.v14.0.instrumentincremental", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.security_alt = ProtoField.new("Security Alt", "eurex.t7.rdi.fast.v14.0.securityalt", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.instrument_incremental_derivatives_descriptor_group = ProtoField.new("Instrument Incremental Derivatives Descriptor Group", "eurex.t7.rdi.fast.v14.0.instrumentincrementalderivativesdescriptorgroup", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.instrument_incremental_simple_instrument_descriptor_group = ProtoField.new("Instrument Incremental Simple Instrument Descriptor Group", "eurex.t7.rdi.fast.v14.0.instrumentincrementalsimpleinstrumentdescriptorgroup", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.complex_instrument_descriptor_group = ProtoField.new("Complex Instrument Descriptor Group", "eurex.t7.rdi.fast.v14.0.complexinstrumentdescriptorgroup", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.instrmt_leg_grp = ProtoField.new("Instrmt Leg Grp", "eurex.t7.rdi.fast.v14.0.instrmtleggrp", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.cash_descriptor_group = ProtoField.new("Cash Descriptor Group", "eurex.t7.rdi.fast.v14.0.cashdescriptorgroup", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.instrument_parties = ProtoField.new("Instrument Parties", "eurex.t7.rdi.fast.v14.0.instrumentparties", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.bonds_and_warrants_group = ProtoField.new("Bonds And Warrants Group", "eurex.t7.rdi.fast.v14.0.bondsandwarrantsgroup", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.volatility_corridor_group = ProtoField.new("Volatility Corridor Group", "eurex.t7.rdi.fast.v14.0.volatilitycorridorgroup", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.single_volatility_parameters_group = ProtoField.new("Single Volatility Parameters Group", "eurex.t7.rdi.fast.v14.0.singlevolatilityparametersgroup", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.security_classification_grp = ProtoField.new("Security Classification Grp", "eurex.t7.rdi.fast.v14.0.securityclassificationgrp", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.instrument_attributes = ProtoField.new("Instrument Attributes", "eurex.t7.rdi.fast.v14.0.instrumentattributes", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.events = ProtoField.new("Events", "eurex.t7.rdi.fast.v14.0.events", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.related_instrument_grp = ProtoField.new("Related Instrument Grp", "eurex.t7.rdi.fast.v14.0.relatedinstrumentgrp", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.market_segment_grp = ProtoField.new("Market Segment Grp", "eurex.t7.rdi.fast.v14.0.marketsegmentgrp", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.instrument_incremental_quote_size_rules = ProtoField.new("Instrument Incremental Quote Size Rules", "eurex.t7.rdi.fast.v14.0.instrumentincrementalquotesizerules", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.instrument_incremental_price_range_rules = ProtoField.new("Instrument Incremental Price Range Rules", "eurex.t7.rdi.fast.v14.0.instrumentincrementalpricerangerules", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.trading_session_rules = ProtoField.new("Trading Session Rules", "eurex.t7.rdi.fast.v14.0.tradingsessionrules", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.variance_futures_status = ProtoField.new("Variance Futures Status Message", "eurex.t7.rdi.fast.v14.0.variancefuturesstatus", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.variance_futures_status_clearing_price_parameters = ProtoField.new("Variance Futures Status Clearing Price Parameters", "eurex.t7.rdi.fast.v14.0.variancefuturesstatusclearingpriceparameters", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.total_return_futures_status = ProtoField.new("Total Return Futures Status Message", "eurex.t7.rdi.fast.v14.0.totalreturnfuturesstatus", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.total_return_futures_status_clearing_price_parameters = ProtoField.new("Total Return Futures Status Clearing Price Parameters", "eurex.t7.rdi.fast.v14.0.totalreturnfuturesstatusclearingpriceparameters", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.trade_at_reference_price_status = ProtoField.new("Trade At Reference Price Status Message", "eurex.t7.rdi.fast.v14.0.tradeatreferencepricestatus", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.trade_at_reference_price_status_clearing_price_parameters = ProtoField.new("Trade At Reference Price Status Clearing Price Parameters", "eurex.t7.rdi.fast.v14.0.tradeatreferencepricestatusclearingpriceparameters", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.market_data_report = ProtoField.new("Market Data Report Message", "eurex.t7.rdi.fast.v14.0.marketdatareport", ftypes.NONE)
omi_eurex_t7_rdi_fast_v14_0.fields.beacon = ProtoField.new("Beacon Message", "eurex.t7.rdi.fast.v14.0.beacon", ftypes.NONE)

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
-- Eurex T7 Rdi Fast 14.0 Fields
-----------------------------------------------------------------------

-- Sender Comp Id (Sent)
eurex_t7_rdi_fast_v14_0.sender_comp_id_sent = {}

-- Dissect: Sender Comp Id (Sent)
eurex_t7_rdi_fast_v14_0.sender_comp_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.sender_comp_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.sender_comp_id, range, 0)
    absent:set_text("Sender Comp Id: No Value")
  end

  return offset, value
end

-- Sender Comp Id (Copy)
eurex_t7_rdi_fast_v14_0.sender_comp_id_copy = {}

-- Dissect: Sender Comp Id (Copy)
eurex_t7_rdi_fast_v14_0.sender_comp_id_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.sender_comp_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.sender_comp_id, range, 0)
    absent:set_text("Sender Comp Id: No Value")
  end

  return offset, value
end

-- Packet Seq Num
eurex_t7_rdi_fast_v14_0.packet_seq_num = {}

-- Dissect: Packet Seq Num
eurex_t7_rdi_fast_v14_0.packet_seq_num.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.packet_seq_num, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.packet_seq_num, range, 0)
    absent:set_text("Packet Seq Num: No Value")
  end

  return offset, value
end

-- Sending Time
eurex_t7_rdi_fast_v14_0.sending_time = {}

-- Dissect: Sending Time
eurex_t7_rdi_fast_v14_0.sending_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.sending_time, range, NSTime.new(0, 0))
    absent:set_text("Sending Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.sending_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Msg Type (Constant)
eurex_t7_rdi_fast_v14_0.msg_type_constant_bu = {}

-- Display: Msg Type (Constant)
eurex_t7_rdi_fast_v14_0.msg_type_constant_bu.display = function(value)
  if value == nil then
    return "Msg Type: No Value"
  end

  if value == "0" then
    return "Msg Type: Heartbeat (0)"
  end
  if value == "BP" then
    return "Msg Type: Security Definition Update Report (BP)"
  end
  if value == "d" then
    return "Msg Type: Security Definition (d)"
  end
  if value == "f" then
    return "Msg Type: Security Status (f)"
  end

  return "Msg Type: "..value
end

-- Dissect: Msg Type (Constant)
eurex_t7_rdi_fast_v14_0.msg_type_constant_bu.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "BU"

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.msg_type_constant_bu.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.msg_type, range, "", display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.msg_type, range, value, display)
  end

  return offset, value
end

-- Msg Type (Constant)
eurex_t7_rdi_fast_v14_0.msg_type_constant_d = {}

-- Display: Msg Type (Constant)
eurex_t7_rdi_fast_v14_0.msg_type_constant_d.display = function(value)
  if value == nil then
    return "Msg Type: No Value"
  end

  if value == "0" then
    return "Msg Type: Heartbeat (0)"
  end
  if value == "BP" then
    return "Msg Type: Security Definition Update Report (BP)"
  end
  if value == "d" then
    return "Msg Type: Security Definition (d)"
  end
  if value == "f" then
    return "Msg Type: Security Status (f)"
  end

  return "Msg Type: "..value
end

-- Dissect: Msg Type (Constant)
eurex_t7_rdi_fast_v14_0.msg_type_constant_d.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "d"

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.msg_type_constant_d.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.msg_type, range, "", display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.msg_type, range, value, display)
  end

  return offset, value
end

-- Msg Type (Constant)
eurex_t7_rdi_fast_v14_0.msg_type_constant_bp = {}

-- Display: Msg Type (Constant)
eurex_t7_rdi_fast_v14_0.msg_type_constant_bp.display = function(value)
  if value == nil then
    return "Msg Type: No Value"
  end

  if value == "0" then
    return "Msg Type: Heartbeat (0)"
  end
  if value == "BP" then
    return "Msg Type: Security Definition Update Report (BP)"
  end
  if value == "d" then
    return "Msg Type: Security Definition (d)"
  end
  if value == "f" then
    return "Msg Type: Security Status (f)"
  end

  return "Msg Type: "..value
end

-- Dissect: Msg Type (Constant)
eurex_t7_rdi_fast_v14_0.msg_type_constant_bp.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "BP"

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.msg_type_constant_bp.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.msg_type, range, "", display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.msg_type, range, value, display)
  end

  return offset, value
end

-- Msg Type (Constant)
eurex_t7_rdi_fast_v14_0.msg_type_constant_f = {}

-- Display: Msg Type (Constant)
eurex_t7_rdi_fast_v14_0.msg_type_constant_f.display = function(value)
  if value == nil then
    return "Msg Type: No Value"
  end

  if value == "0" then
    return "Msg Type: Heartbeat (0)"
  end
  if value == "BP" then
    return "Msg Type: Security Definition Update Report (BP)"
  end
  if value == "d" then
    return "Msg Type: Security Definition (d)"
  end
  if value == "f" then
    return "Msg Type: Security Status (f)"
  end

  return "Msg Type: "..value
end

-- Dissect: Msg Type (Constant)
eurex_t7_rdi_fast_v14_0.msg_type_constant_f.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "f"

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.msg_type_constant_f.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.msg_type, range, "", display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.msg_type, range, value, display)
  end

  return offset, value
end

-- Msg Type (Constant)
eurex_t7_rdi_fast_v14_0.msg_type_constant_dr = {}

-- Display: Msg Type (Constant)
eurex_t7_rdi_fast_v14_0.msg_type_constant_dr.display = function(value)
  if value == nil then
    return "Msg Type: No Value"
  end

  if value == "0" then
    return "Msg Type: Heartbeat (0)"
  end
  if value == "BP" then
    return "Msg Type: Security Definition Update Report (BP)"
  end
  if value == "d" then
    return "Msg Type: Security Definition (d)"
  end
  if value == "f" then
    return "Msg Type: Security Status (f)"
  end

  return "Msg Type: "..value
end

-- Dissect: Msg Type (Constant)
eurex_t7_rdi_fast_v14_0.msg_type_constant_dr.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "DR"

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.msg_type_constant_dr.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.msg_type, range, "", display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.msg_type, range, value, display)
  end

  return offset, value
end

-- Msg Type (Constant)
eurex_t7_rdi_fast_v14_0.msg_type_constant_0 = {}

-- Display: Msg Type (Constant)
eurex_t7_rdi_fast_v14_0.msg_type_constant_0.display = function(value)
  if value == nil then
    return "Msg Type: No Value"
  end

  if value == "0" then
    return "Msg Type: Heartbeat (0)"
  end
  if value == "BP" then
    return "Msg Type: Security Definition Update Report (BP)"
  end
  if value == "d" then
    return "Msg Type: Security Definition (d)"
  end
  if value == "f" then
    return "Msg Type: Security Status (f)"
  end

  return "Msg Type: "..value
end

-- Dissect: Msg Type (Constant)
eurex_t7_rdi_fast_v14_0.msg_type_constant_0.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "0"

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.msg_type_constant_0.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.msg_type, range, "", display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.msg_type, range, value, display)
  end

  return offset, value
end

-- Msg Seq Num
eurex_t7_rdi_fast_v14_0.msg_seq_num = {}

-- Dissect: Msg Seq Num
eurex_t7_rdi_fast_v14_0.msg_seq_num.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.msg_seq_num, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.msg_seq_num, range, 0)
    absent:set_text("Msg Seq Num: No Value")
  end

  return offset, value
end

-- Market Id
eurex_t7_rdi_fast_v14_0.market_id = {}

-- Dissect: Market Id
eurex_t7_rdi_fast_v14_0.market_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Market Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.market_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.market_id, range, "")
    absent:set_text("Market Id: No Value")
  end

  return offset, value
end

-- Market Segment Id (Delta)
eurex_t7_rdi_fast_v14_0.market_segment_id_delta = {}

-- Dissect: Market Segment Id (Delta)
eurex_t7_rdi_fast_v14_0.market_segment_id_delta.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_signed(buffer, offset)
  value = (state.values[key] or 0) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.market_segment_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.market_segment_id, range, 0)
    absent:set_text("Market Segment Id: No Value")
  end

  return offset, value
end

-- Market Segment Id (Copy)
eurex_t7_rdi_fast_v14_0.market_segment_id_copy = {}

-- Dissect: Market Segment Id (Copy)
eurex_t7_rdi_fast_v14_0.market_segment_id_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.market_segment_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.market_segment_id, range, 0)
    absent:set_text("Market Segment Id: No Value")
  end

  return offset, value
end

-- Effective Business Date
eurex_t7_rdi_fast_v14_0.effective_business_date = {}

-- Dissect: Effective Business Date
eurex_t7_rdi_fast_v14_0.effective_business_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Effective Business Date was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.effective_business_date, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.effective_business_date, range, 0)
    absent:set_text("Effective Business Date: No Value")
  end

  return offset, value
end

-- Next Effective Business Date
eurex_t7_rdi_fast_v14_0.next_effective_business_date = {}

-- Dissect: Next Effective Business Date
eurex_t7_rdi_fast_v14_0.next_effective_business_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Next Effective Business Date was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.next_effective_business_date, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.next_effective_business_date, range, 0)
    absent:set_text("Next Effective Business Date: No Value")
  end

  return offset, value
end

-- Market Segment
eurex_t7_rdi_fast_v14_0.market_segment = {}

-- Dissect: Market Segment
eurex_t7_rdi_fast_v14_0.market_segment.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_signed(buffer, offset)
  value = (state.values[key] or 0) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.market_segment, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.market_segment, range, "")
    absent:set_text("Market Segment: No Value")
  end

  return offset, value
end

-- Market Segment Status
eurex_t7_rdi_fast_v14_0.market_segment_status = {}

-- Display: Market Segment Status
eurex_t7_rdi_fast_v14_0.market_segment_status.display = function(value)
  if value == nil then
    return "Market Segment Status: No Value"
  end

  if value == 0 then
    return "Market Segment Status: Active (1)"
  end
  if value == 1 then
    return "Market Segment Status: Inactive (2)"
  end
  if value == 2 then
    return "Market Segment Status: Published (3)"
  end

  return "Market Segment Status: Unknown("..value..")"
end

-- Dissect: Market Segment Status
eurex_t7_rdi_fast_v14_0.market_segment_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Market Segment Status was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.market_segment_status.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.market_segment_status, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.market_segment_status, range, value, display)
  end

  return offset, value
end

-- Partition Id
eurex_t7_rdi_fast_v14_0.partition_id = {}

-- Dissect: Partition Id
eurex_t7_rdi_fast_v14_0.partition_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Partition Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.partition_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.partition_id, range, 0)
    absent:set_text("Partition Id: No Value")
  end

  return offset, value
end

-- Capacity Group Id
eurex_t7_rdi_fast_v14_0.capacity_group_id = {}

-- Dissect: Capacity Group Id
eurex_t7_rdi_fast_v14_0.capacity_group_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Capacity Group Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.capacity_group_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.capacity_group_id, range, 0)
    absent:set_text("Capacity Group Id: No Value")
  end

  return offset, value
end

-- Negotiation Duration
eurex_t7_rdi_fast_v14_0.negotiation_duration = {}

-- Dissect: Negotiation Duration
eurex_t7_rdi_fast_v14_0.negotiation_duration.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.negotiation_duration, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.negotiation_duration, range, 0)
    absent:set_text("Negotiation Duration: No Value")
  end

  return offset, value
end

-- Cross Match Instruction Default
eurex_t7_rdi_fast_v14_0.cross_match_instruction_default = {}

-- Display: Cross Match Instruction Default
eurex_t7_rdi_fast_v14_0.cross_match_instruction_default.display = function(value)
  if value == nil then
    return "Cross Match Instruction Default: No Value"
  end

  if value == 0 then
    return "Cross Match Instruction Default: CancelAggressive (1)"
  end
  if value == 1 then
    return "Cross Match Instruction Default: CancelPassive (2)"
  end
  if value == 2 then
    return "Cross Match Instruction Default: CancelAggressiveAndPassive (3)"
  end

  return "Cross Match Instruction Default: Unknown("..value..")"
end

-- Dissect: Cross Match Instruction Default
eurex_t7_rdi_fast_v14_0.cross_match_instruction_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.cross_match_instruction_default.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.cross_match_instruction_default, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.cross_match_instruction_default, range, value, display)
  end

  return offset, value
end

-- Currency
eurex_t7_rdi_fast_v14_0.currency = {}

-- Dissect: Currency
eurex_t7_rdi_fast_v14_0.currency.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = "EUR"
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.currency, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.currency, range, "")
    absent:set_text("Currency: No Value")
  end

  return offset, value
end

-- Market Segment Desc
eurex_t7_rdi_fast_v14_0.market_segment_desc = {}

-- Dissect: Market Segment Desc
eurex_t7_rdi_fast_v14_0.market_segment_desc.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.market_segment_desc, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.market_segment_desc, range, "")
    absent:set_text("Market Segment Desc: No Value")
  end

  return offset, value
end

-- Market Segment Symbol
eurex_t7_rdi_fast_v14_0.market_segment_symbol = {}

-- Dissect: Market Segment Symbol
eurex_t7_rdi_fast_v14_0.market_segment_symbol.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.market_segment_symbol, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.market_segment_symbol, range, "")
    absent:set_text("Market Segment Symbol: No Value")
  end

  return offset, value
end

-- Parent Mkt Segm Id
eurex_t7_rdi_fast_v14_0.parent_mkt_segm_id = {}

-- Dissect: Parent Mkt Segm Id
eurex_t7_rdi_fast_v14_0.parent_mkt_segm_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.parent_mkt_segm_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.parent_mkt_segm_id, range, "")
    absent:set_text("Parent Mkt Segm Id: No Value")
  end

  return offset, value
end

-- Max Diff Exp Months
eurex_t7_rdi_fast_v14_0.max_diff_exp_months = {}

-- Dissect: Max Diff Exp Months
eurex_t7_rdi_fast_v14_0.max_diff_exp_months.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.max_diff_exp_months, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.max_diff_exp_months, range, 0)
    absent:set_text("Max Diff Exp Months: No Value")
  end

  return offset, value
end

-- Us Approval
eurex_t7_rdi_fast_v14_0.us_approval = {}

-- Display: Us Approval
eurex_t7_rdi_fast_v14_0.us_approval.display = function(value)
  if value == nil then
    return "Us Approval: No Value"
  end

  if value == 0 then
    return "Us Approval: NoApproval (None)"
  end
  if value == 1 then
    return "Us Approval: CFTCApproved (CFTC)"
  end
  if value == 2 then
    return "Us Approval: SECApproved (SEC)"
  end

  return "Us Approval: Unknown("..value..")"
end

-- Dissect: Us Approval
eurex_t7_rdi_fast_v14_0.us_approval.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.us_approval.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.us_approval, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.us_approval, range, value, display)
  end

  return offset, value
end

-- Market Segment Type
eurex_t7_rdi_fast_v14_0.market_segment_type = {}

-- Display: Market Segment Type
eurex_t7_rdi_fast_v14_0.market_segment_type.display = function(value)
  if value == nil then
    return "Market Segment Type: No Value"
  end

  if value == 0 then
    return "Market Segment Type: Pool (1)"
  end

  return "Market Segment Type: Unknown("..value..")"
end

-- Dissect: Market Segment Type
eurex_t7_rdi_fast_v14_0.market_segment_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.market_segment_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.market_segment_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.market_segment_type, range, value, display)
  end

  return offset, value
end

-- Market Segment Sub Type
eurex_t7_rdi_fast_v14_0.market_segment_sub_type = {}

-- Display: Market Segment Sub Type
eurex_t7_rdi_fast_v14_0.market_segment_sub_type.display = function(value)
  if value == nil then
    return "Market Segment Sub Type: No Value"
  end

  if value == 0 then
    return "Market Segment Sub Type: InterProductSpread (1)"
  end
  if value == 1 then
    return "Market Segment Sub Type: BTRFBucket (2)"
  end
  if value == 2 then
    return "Market Segment Sub Type: EBBBucket (3)"
  end
  if value == 3 then
    return "Market Segment Sub Type: CommodityGroup (4)"
  end

  return "Market Segment Sub Type: Unknown("..value..")"
end

-- Dissect: Market Segment Sub Type
eurex_t7_rdi_fast_v14_0.market_segment_sub_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.market_segment_sub_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.market_segment_sub_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.market_segment_sub_type, range, value, display)
  end

  return offset, value
end

-- Decay Split
eurex_t7_rdi_fast_v14_0.decay_split = {}

-- Display: Decay Split
eurex_t7_rdi_fast_v14_0.decay_split.display = function(value)
  if value == nil then
    return "Decay Split: No Value"
  end

  if value == 0 then
    return "Decay Split: Quarter (3)"
  end
  if value == 1 then
    return "Decay Split: Season (6)"
  end
  if value == 2 then
    return "Decay Split: Year (12)"
  end

  return "Decay Split: Unknown("..value..")"
end

-- Dissect: Decay Split
eurex_t7_rdi_fast_v14_0.decay_split.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.decay_split.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.decay_split, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.decay_split, range, value, display)
  end

  return offset, value
end

-- Max Offset Rfq Expire Time
eurex_t7_rdi_fast_v14_0.max_offset_rfq_expire_time = {}

-- Dissect: Max Offset Rfq Expire Time
eurex_t7_rdi_fast_v14_0.max_offset_rfq_expire_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.max_offset_rfq_expire_time, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.max_offset_rfq_expire_time, range, 0)
    absent:set_text("Max Offset Rfq Expire Time: No Value")
  end

  return offset, value
end

-- Offset Stp Effective Time
eurex_t7_rdi_fast_v14_0.offset_stp_effective_time = {}

-- Dissect: Offset Stp Effective Time
eurex_t7_rdi_fast_v14_0.offset_stp_effective_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.offset_stp_effective_time, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.offset_stp_effective_time, range, 0)
    absent:set_text("Offset Stp Effective Time: No Value")
  end

  return offset, value
end

-- Tsl Market Group Id
eurex_t7_rdi_fast_v14_0.tsl_market_group_id = {}

-- Dissect: Tsl Market Group Id
eurex_t7_rdi_fast_v14_0.tsl_market_group_id.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.tsl_market_group_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.tsl_market_group_id, range, 0)
    absent:set_text("Tsl Market Group Id: No Value")
  end

  return offset, value
end

-- Tsl Market Group
eurex_t7_rdi_fast_v14_0.tsl_market_group = {}

-- Dissect: Tsl Market Group
eurex_t7_rdi_fast_v14_0.tsl_market_group.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.tsl_market_group, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.tsl_market_group, range, "")
    absent:set_text("Tsl Market Group: No Value")
  end

  return offset, value
end

-- Independent System Operator
eurex_t7_rdi_fast_v14_0.independent_system_operator = {}

-- Dissect: Independent System Operator
eurex_t7_rdi_fast_v14_0.independent_system_operator.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.independent_system_operator, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.independent_system_operator, range, "")
    absent:set_text("Independent System Operator: No Value")
  end

  return offset, value
end

-- Location Id
eurex_t7_rdi_fast_v14_0.location_id = {}

-- Dissect: Location Id
eurex_t7_rdi_fast_v14_0.location_id.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.location_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.location_id, range, "")
    absent:set_text("Location Id: No Value")
  end

  return offset, value
end

-- Product Type
eurex_t7_rdi_fast_v14_0.product_type = {}

-- Dissect: Product Type
eurex_t7_rdi_fast_v14_0.product_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.product_type, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.product_type, range, "")
    absent:set_text("Product Type: No Value")
  end

  return offset, value
end

-- Commodity Product Class
eurex_t7_rdi_fast_v14_0.commodity_product_class = {}

-- Dissect: Commodity Product Class
eurex_t7_rdi_fast_v14_0.commodity_product_class.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.commodity_product_class, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.commodity_product_class, range, "")
    absent:set_text("Commodity Product Class: No Value")
  end

  return offset, value
end

-- Commodity Unit
eurex_t7_rdi_fast_v14_0.commodity_unit = {}

-- Dissect: Commodity Unit
eurex_t7_rdi_fast_v14_0.commodity_unit.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.commodity_unit, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.commodity_unit, range, 0)
    absent:set_text("Commodity Unit: No Value")
  end

  return offset, value
end

-- Location Type
eurex_t7_rdi_fast_v14_0.location_type = {}

-- Dissect: Location Type
eurex_t7_rdi_fast_v14_0.location_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.location_type, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.location_type, range, "")
    absent:set_text("Location Type: No Value")
  end

  return offset, value
end

-- Max Trade Vol (Delta)
eurex_t7_rdi_fast_v14_0.max_trade_vol_delta = {}

-- Display: Max Trade Vol (Delta)
eurex_t7_rdi_fast_v14_0.max_trade_vol_delta.display = function(value)
  if value == nil then
    return "Max Trade Vol: No Value"
  end

  return "Max Trade Vol: "..value
end

-- Dissect: Max Trade Vol (Delta)
eurex_t7_rdi_fast_v14_0.max_trade_vol_delta.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.max_trade_vol_delta.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.max_trade_vol, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.max_trade_vol, range, value, display)
  end

  return offset, value
end

-- Max Trade Vol (Copy)
eurex_t7_rdi_fast_v14_0.max_trade_vol_copy = {}

-- Display: Max Trade Vol (Copy)
eurex_t7_rdi_fast_v14_0.max_trade_vol_copy.display = function(value)
  if value == nil then
    return "Max Trade Vol: No Value"
  end

  return "Max Trade Vol: "..value
end

-- Dissect: Max Trade Vol (Copy)
eurex_t7_rdi_fast_v14_0.max_trade_vol_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.max_trade_vol_copy.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.max_trade_vol, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.max_trade_vol, range, value, display)
  end

  return offset, value
end

-- Max Trade Val (Delta)
eurex_t7_rdi_fast_v14_0.max_trade_val_delta = {}

-- Dissect: Max Trade Val (Delta)
eurex_t7_rdi_fast_v14_0.max_trade_val_delta.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_nullable_int64(buffer, offset)

  if value_delta ~= nil then
    value = (state.values[key] or Int64(0)) + value_delta
    state.values[key] = value
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.max_trade_val, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.max_trade_val, range, UInt64(0))
    absent:set_text("Max Trade Val: No Value")
  end

  return offset, value
end

-- Max Trade Val (Copy)
eurex_t7_rdi_fast_v14_0.max_trade_val_copy = {}

-- Dissect: Max Trade Val (Copy)
eurex_t7_rdi_fast_v14_0.max_trade_val_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_uint64(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.max_trade_val, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.max_trade_val, range, UInt64(0))
    absent:set_text("Max Trade Val: No Value")
  end

  return offset, value
end

-- Max Calendar Spread Vol
eurex_t7_rdi_fast_v14_0.max_calendar_spread_vol = {}

-- Display: Max Calendar Spread Vol
eurex_t7_rdi_fast_v14_0.max_calendar_spread_vol.display = function(value)
  if value == nil then
    return "Max Calendar Spread Vol: No Value"
  end

  return "Max Calendar Spread Vol: "..value
end

-- Dissect: Max Calendar Spread Vol
eurex_t7_rdi_fast_v14_0.max_calendar_spread_vol.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.max_calendar_spread_vol.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.max_calendar_spread_vol, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.max_calendar_spread_vol, range, value, display)
  end

  return offset, value
end

-- Max Tes Vol
eurex_t7_rdi_fast_v14_0.max_tes_vol = {}

-- Display: Max Tes Vol
eurex_t7_rdi_fast_v14_0.max_tes_vol.display = function(value)
  if value == nil then
    return "Max Tes Vol: No Value"
  end

  return "Max Tes Vol: "..value
end

-- Dissect: Max Tes Vol
eurex_t7_rdi_fast_v14_0.max_tes_vol.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.max_tes_vol.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.max_tes_vol, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.max_tes_vol, range, value, display)
  end

  return offset, value
end

-- No Quantity Scaling Factors
eurex_t7_rdi_fast_v14_0.no_quantity_scaling_factors = {}

-- Dissect: No Quantity Scaling Factors
eurex_t7_rdi_fast_v14_0.no_quantity_scaling_factors.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_quantity_scaling_factors, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_quantity_scaling_factors, range, 0)
    absent:set_text("No Quantity Scaling Factors: No Value")
  end

  return offset, value
end

-- Quantity Scaling Factor (Delta)
eurex_t7_rdi_fast_v14_0.quantity_scaling_factor_delta_required = {}

-- Dissect: Quantity Scaling Factor (Delta)
eurex_t7_rdi_fast_v14_0.quantity_scaling_factor_delta_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_signed(buffer, offset)
  value = (state.values[key] or 0) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.quantity_scaling_factor, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.quantity_scaling_factor, range, 0)
    absent:set_text("Quantity Scaling Factor: No Value")
  end

  return offset, value
end

-- Quantity Scaling Factor (Delta)
eurex_t7_rdi_fast_v14_0.quantity_scaling_factor_delta_optional = {}

-- Dissect: Quantity Scaling Factor (Delta)
eurex_t7_rdi_fast_v14_0.quantity_scaling_factor_delta_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.quantity_scaling_factor, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.quantity_scaling_factor, range, 0)
    absent:set_text("Quantity Scaling Factor: No Value")
  end

  return offset, value
end

-- Underlying Security Exchange
eurex_t7_rdi_fast_v14_0.underlying_security_exchange = {}

-- Dissect: Underlying Security Exchange
eurex_t7_rdi_fast_v14_0.underlying_security_exchange.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.underlying_security_exchange, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.underlying_security_exchange, range, "")
    absent:set_text("Underlying Security Exchange: No Value")
  end

  return offset, value
end

-- Underlying Symbol
eurex_t7_rdi_fast_v14_0.underlying_symbol = {}

-- Dissect: Underlying Symbol
eurex_t7_rdi_fast_v14_0.underlying_symbol.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.underlying_symbol, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.underlying_symbol, range, "")
    absent:set_text("Underlying Symbol: No Value")
  end

  return offset, value
end

-- Underlying Security Id (Delta)
eurex_t7_rdi_fast_v14_0.underlying_security_id_delta = {}

-- Dissect: Underlying Security Id (Delta)
eurex_t7_rdi_fast_v14_0.underlying_security_id_delta.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.underlying_security_id_string, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.underlying_security_id_string, range, "")
    absent:set_text("Underlying Security Id: No Value")
  end

  return offset, value
end

-- Underlying Security Id (Sent)
eurex_t7_rdi_fast_v14_0.underlying_security_id_sent = {}

-- Dissect: Underlying Security Id (Sent)
eurex_t7_rdi_fast_v14_0.underlying_security_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.underlying_security_id_int64, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.underlying_security_id_int64, range, Int64(0))
    absent:set_text("Underlying Security Id: No Value")
  end

  return offset, value
end

-- Underlying Security Id Source (Default)
eurex_t7_rdi_fast_v14_0.underlying_security_id_source_default = {}

-- Dissect: Underlying Security Id Source (Default)
eurex_t7_rdi_fast_v14_0.underlying_security_id_source_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = "4"
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.underlying_security_id_source, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.underlying_security_id_source, range, "")
    absent:set_text("Underlying Security Id Source: No Value")
  end

  return offset, value
end

-- Underlying Security Id Source (Constant)
eurex_t7_rdi_fast_v14_0.underlying_security_id_source_constant = {}

-- Dissect: Underlying Security Id Source (Constant)
eurex_t7_rdi_fast_v14_0.underlying_security_id_source_constant.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "M"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.underlying_security_id_source, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.underlying_security_id_source, range, "")
    absent:set_text("Underlying Security Id Source: No Value")
  end

  return offset, value
end

-- Underlying Prev Close Px
eurex_t7_rdi_fast_v14_0.underlying_prev_close_px = {}

-- Display: Underlying Prev Close Px
eurex_t7_rdi_fast_v14_0.underlying_prev_close_px.display = function(value)
  if value == nil then
    return "Underlying Prev Close Px: No Value"
  end

  return "Underlying Prev Close Px: "..value
end

-- Dissect: Underlying Prev Close Px
eurex_t7_rdi_fast_v14_0.underlying_prev_close_px.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.underlying_prev_close_px.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.underlying_prev_close_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.underlying_prev_close_px, range, value, display)
  end

  return offset, value
end

-- No Instrument Scopes
eurex_t7_rdi_fast_v14_0.no_instrument_scopes = {}

-- Dissect: No Instrument Scopes
eurex_t7_rdi_fast_v14_0.no_instrument_scopes.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value = 1
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_instrument_scopes, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_instrument_scopes, range, 0)
    absent:set_text("No Instrument Scopes: No Value")
  end

  return offset, value
end

-- Instrument Scope Operator
eurex_t7_rdi_fast_v14_0.instrument_scope_operator = {}

-- Display: Instrument Scope Operator
eurex_t7_rdi_fast_v14_0.instrument_scope_operator.display = function(value)
  if value == nil then
    return "Instrument Scope Operator: No Value"
  end

  if value == 0 then
    return "Instrument Scope Operator: Include (1)"
  end

  return "Instrument Scope Operator: Unknown("..value..")"
end

-- Dissect: Instrument Scope Operator
eurex_t7_rdi_fast_v14_0.instrument_scope_operator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.instrument_scope_operator.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_scope_operator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_scope_operator, range, value, display)
  end

  return offset, value
end

-- Instrument Scope Security Type
eurex_t7_rdi_fast_v14_0.instrument_scope_security_type = {}

-- Display: Instrument Scope Security Type
eurex_t7_rdi_fast_v14_0.instrument_scope_security_type.display = function(value)
  if value == nil then
    return "Instrument Scope Security Type: No Value"
  end

  if value == 0 then
    return "Instrument Scope Security Type: Option (OPT)"
  end
  if value == 1 then
    return "Instrument Scope Security Type: Future (FUT)"
  end
  if value == 2 then
    return "Instrument Scope Security Type: MultiLegInstrument (MLEG)"
  end
  if value == 3 then
    return "Instrument Scope Security Type: VarianceFutures (VAR)"
  end
  if value == 4 then
    return "Instrument Scope Security Type: TotalReturnFutures (TRF)"
  end
  if value == 5 then
    return "Instrument Scope Security Type: CommonStock (CS)"
  end
  if value == 6 then
    return "Instrument Scope Security Type: Bond (BOND)"
  end
  if value == 7 then
    return "Instrument Scope Security Type: TradeAtReferencePrice (TARP)"
  end
  if value == 8 then
    return "Instrument Scope Security Type: ExchangeTradedFund (ETF)"
  end
  if value == 9 then
    return "Instrument Scope Security Type: ExchangeTradedCommodity (ETC)"
  end
  if value == 10 then
    return "Instrument Scope Security Type: ExchangeTradedNote (ETN)"
  end
  if value == 11 then
    return "Instrument Scope Security Type: Warrant (WAR)"
  end
  if value == 12 then
    return "Instrument Scope Security Type: Other (OTHER)"
  end
  if value == 13 then
    return "Instrument Scope Security Type: SubscriptionRight (SR)"
  end
  if value == 14 then
    return "Instrument Scope Security Type: InvestmentFunds (FUN)"
  end

  return "Instrument Scope Security Type: Unknown("..value..")"
end

-- Dissect: Instrument Scope Security Type
eurex_t7_rdi_fast_v14_0.instrument_scope_security_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 2
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.instrument_scope_security_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_scope_security_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_scope_security_type, range, value, display)
  end

  return offset, value
end

-- Instrument Scope Security Sub Type
eurex_t7_rdi_fast_v14_0.instrument_scope_security_sub_type = {}

-- Dissect: Instrument Scope Security Sub Type
eurex_t7_rdi_fast_v14_0.instrument_scope_security_sub_type.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_scope_security_sub_type, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_scope_security_sub_type, range, 0)
    absent:set_text("Instrument Scope Security Sub Type: No Value")
  end

  return offset, value
end

-- No Related Market Segments
eurex_t7_rdi_fast_v14_0.no_related_market_segments = {}

-- Dissect: No Related Market Segments
eurex_t7_rdi_fast_v14_0.no_related_market_segments.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_related_market_segments, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_related_market_segments, range, 0)
    absent:set_text("No Related Market Segments: No Value")
  end

  return offset, value
end

-- Related Market Segment Id
eurex_t7_rdi_fast_v14_0.related_market_segment_id = {}

-- Dissect: Related Market Segment Id
eurex_t7_rdi_fast_v14_0.related_market_segment_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_signed(buffer, offset)
  value = (state.values[key] or 0) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.related_market_segment_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.related_market_segment_id, range, 0)
    absent:set_text("Related Market Segment Id: No Value")
  end

  return offset, value
end

-- Market Segments Relationship
eurex_t7_rdi_fast_v14_0.market_segments_relationship = {}

-- Display: Market Segments Relationship
eurex_t7_rdi_fast_v14_0.market_segments_relationship.display = function(value)
  if value == nil then
    return "Market Segments Relationship: No Value"
  end

  if value == 0 then
    return "Market Segments Relationship: CashLegForVolatilityStrategies (100)"
  end
  if value == 1 then
    return "Market Segments Relationship: TargetProductForDecayingProduct (101)"
  end
  if value == 2 then
    return "Market Segments Relationship: BTRFBucket (102)"
  end
  if value == 3 then
    return "Market Segments Relationship: EBBBucket (103)"
  end
  if value == 4 then
    return "Market Segments Relationship: CommodityGroup (104)"
  end

  return "Market Segments Relationship: Unknown("..value..")"
end

-- Dissect: Market Segments Relationship
eurex_t7_rdi_fast_v14_0.market_segments_relationship.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Market Segments Relationship was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.market_segments_relationship.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.market_segments_relationship, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.market_segments_relationship, range, value, display)
  end

  return offset, value
end

-- Allow One Product Strip
eurex_t7_rdi_fast_v14_0.allow_one_product_strip = {}

-- Display: Allow One Product Strip
eurex_t7_rdi_fast_v14_0.allow_one_product_strip.display = function(value)
  if value == nil then
    return "Allow One Product Strip: No Value"
  end

  if value == 0 then
    return "Allow One Product Strip: OneProductStripNotAllowed (0)"
  end
  if value == 1 then
    return "Allow One Product Strip: OneProductStripAllowed (1)"
  end

  return "Allow One Product Strip: Unknown("..value..")"
end

-- Dissect: Allow One Product Strip
eurex_t7_rdi_fast_v14_0.allow_one_product_strip.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.allow_one_product_strip.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.allow_one_product_strip, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.allow_one_product_strip, range, value, display)
  end

  return offset, value
end

-- No Tick Rules
eurex_t7_rdi_fast_v14_0.no_tick_rules = {}

-- Dissect: No Tick Rules
eurex_t7_rdi_fast_v14_0.no_tick_rules.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "No Tick Rules was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_tick_rules, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_tick_rules, range, 0)
    absent:set_text("No Tick Rules: No Value")
  end

  return offset, value
end

-- Tick Rule Id
eurex_t7_rdi_fast_v14_0.tick_rule_id = {}

-- Dissect: Tick Rule Id
eurex_t7_rdi_fast_v14_0.tick_rule_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Tick Rule Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.tick_rule_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.tick_rule_id, range, 0)
    absent:set_text("Tick Rule Id: No Value")
  end

  return offset, value
end

-- Start Tick Price Range
eurex_t7_rdi_fast_v14_0.start_tick_price_range = {}

-- Display: Start Tick Price Range
eurex_t7_rdi_fast_v14_0.start_tick_price_range.display = function(value)
  if value == nil then
    return "Start Tick Price Range: No Value"
  end

  return "Start Tick Price Range: "..value
end

-- Dissect: Start Tick Price Range
eurex_t7_rdi_fast_v14_0.start_tick_price_range.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  local exponent_delta = nil
  local mantissa_delta = nil
  exponent_delta, offset = read_stop_bit_signed(buffer, offset)

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

  local display = eurex_t7_rdi_fast_v14_0.start_tick_price_range.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.start_tick_price_range, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.start_tick_price_range, range, value, display)
  end

  return offset, value
end

-- End Tick Price Range
eurex_t7_rdi_fast_v14_0.end_tick_price_range = {}

-- Display: End Tick Price Range
eurex_t7_rdi_fast_v14_0.end_tick_price_range.display = function(value)
  if value == nil then
    return "End Tick Price Range: No Value"
  end

  return "End Tick Price Range: "..value
end

-- Dissect: End Tick Price Range
eurex_t7_rdi_fast_v14_0.end_tick_price_range.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  local exponent_delta = nil
  local mantissa_delta = nil
  exponent_delta, offset = read_stop_bit_signed(buffer, offset)

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

  local display = eurex_t7_rdi_fast_v14_0.end_tick_price_range.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.end_tick_price_range, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.end_tick_price_range, range, value, display)
  end

  return offset, value
end

-- Tick Increment
eurex_t7_rdi_fast_v14_0.tick_increment = {}

-- Display: Tick Increment
eurex_t7_rdi_fast_v14_0.tick_increment.display = function(value)
  if value == nil then
    return "Tick Increment: No Value"
  end

  return "Tick Increment: "..value
end

-- Dissect: Tick Increment
eurex_t7_rdi_fast_v14_0.tick_increment.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  local exponent_delta = nil
  local mantissa_delta = nil
  exponent_delta, offset = read_stop_bit_signed(buffer, offset)

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

  local display = eurex_t7_rdi_fast_v14_0.tick_increment.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.tick_increment, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.tick_increment, range, value, display)
  end

  return offset, value
end

-- No Tick Rule Scopes
eurex_t7_rdi_fast_v14_0.no_tick_rule_scopes = {}

-- Dissect: No Tick Rule Scopes
eurex_t7_rdi_fast_v14_0.no_tick_rule_scopes.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_tick_rule_scopes, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_tick_rule_scopes, range, 0)
    absent:set_text("No Tick Rule Scopes: No Value")
  end

  return offset, value
end

-- Tick Rule Product Complex
eurex_t7_rdi_fast_v14_0.tick_rule_product_complex = {}

-- Display: Tick Rule Product Complex
eurex_t7_rdi_fast_v14_0.tick_rule_product_complex.display = function(value)
  if value == nil then
    return "Tick Rule Product Complex: No Value"
  end

  if value == 0 then
    return "Tick Rule Product Complex: SimpleInstrument (1)"
  end
  if value == 1 then
    return "Tick Rule Product Complex: StandardOptionStrategy (2)"
  end
  if value == 2 then
    return "Tick Rule Product Complex: NonStandardOptionStrategy (3)"
  end
  if value == 3 then
    return "Tick Rule Product Complex: VolatilityStrategy (4)"
  end
  if value == 4 then
    return "Tick Rule Product Complex: FuturesSpread (5)"
  end
  if value == 5 then
    return "Tick Rule Product Complex: InterProductSpread (6)"
  end
  if value == 6 then
    return "Tick Rule Product Complex: StandardFuturesStrategy (7)"
  end
  if value == 7 then
    return "Tick Rule Product Complex: PackAndBundle (8)"
  end
  if value == 8 then
    return "Tick Rule Product Complex: Strip (9)"
  end
  if value == 9 then
    return "Tick Rule Product Complex: FlexibleInstrument (10)"
  end
  if value == 10 then
    return "Tick Rule Product Complex: CommodityStrip (11)"
  end
  if value == 11 then
    return "Tick Rule Product Complex: ScaledSimpleInstrument (12)"
  end
  if value == 12 then
    return "Tick Rule Product Complex: NonStandardVolatilityStrategy (13)"
  end
  if value == 13 then
    return "Tick Rule Product Complex: TotalReturnFutureStrategy (14)"
  end

  return "Tick Rule Product Complex: Unknown("..value..")"
end

-- Dissect: Tick Rule Product Complex
eurex_t7_rdi_fast_v14_0.tick_rule_product_complex.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.tick_rule_product_complex.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.tick_rule_product_complex, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.tick_rule_product_complex, range, value, display)
  end

  return offset, value
end

-- Trd Type
eurex_t7_rdi_fast_v14_0.trd_type = {}

-- Display: Trd Type
eurex_t7_rdi_fast_v14_0.trd_type.display = function(value)
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

-- Dissect: Trd Type
eurex_t7_rdi_fast_v14_0.trd_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.trd_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.trd_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.trd_type, range, value, display)
  end

  return offset, value
end

-- No Price Range Rules (Sent)
eurex_t7_rdi_fast_v14_0.no_price_range_rules_sent = {}

-- Dissect: No Price Range Rules (Sent)
eurex_t7_rdi_fast_v14_0.no_price_range_rules_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_price_range_rules, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_price_range_rules, range, 0)
    absent:set_text("No Price Range Rules: No Value")
  end

  return offset, value
end

-- No Price Range Rules (Constant)
eurex_t7_rdi_fast_v14_0.no_price_range_rules_constant = {}

-- Dissect: No Price Range Rules (Constant)
eurex_t7_rdi_fast_v14_0.no_price_range_rules_constant.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value = 1
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_price_range_rules, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_price_range_rules, range, 0)
    absent:set_text("No Price Range Rules: No Value")
  end

  return offset, value
end

-- Price Range Rule Id
eurex_t7_rdi_fast_v14_0.price_range_rule_id = {}

-- Dissect: Price Range Rule Id
eurex_t7_rdi_fast_v14_0.price_range_rule_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Price Range Rule Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.price_range_rule_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.price_range_rule_id, range, 0)
    absent:set_text("Price Range Rule Id: No Value")
  end

  return offset, value
end

-- Price Range Product Complex
eurex_t7_rdi_fast_v14_0.price_range_product_complex = {}

-- Display: Price Range Product Complex
eurex_t7_rdi_fast_v14_0.price_range_product_complex.display = function(value)
  if value == nil then
    return "Price Range Product Complex: No Value"
  end

  if value == 0 then
    return "Price Range Product Complex: SimpleInstrument (1)"
  end
  if value == 1 then
    return "Price Range Product Complex: StandardOptionStrategy (2)"
  end
  if value == 2 then
    return "Price Range Product Complex: NonStandardOptionStrategy (3)"
  end
  if value == 3 then
    return "Price Range Product Complex: VolatilityStrategy (4)"
  end
  if value == 4 then
    return "Price Range Product Complex: FuturesSpread (5)"
  end
  if value == 5 then
    return "Price Range Product Complex: InterProductSpread (6)"
  end
  if value == 6 then
    return "Price Range Product Complex: StandardFuturesStrategy (7)"
  end
  if value == 7 then
    return "Price Range Product Complex: PackAndBundle (8)"
  end
  if value == 8 then
    return "Price Range Product Complex: Strip (9)"
  end
  if value == 9 then
    return "Price Range Product Complex: FlexibleInstrument (10)"
  end
  if value == 10 then
    return "Price Range Product Complex: CommodityStrip (11)"
  end
  if value == 11 then
    return "Price Range Product Complex: ScaledSimpleInstrument (12)"
  end
  if value == 12 then
    return "Price Range Product Complex: NonStandardVolatilityStrategy (13)"
  end
  if value == 13 then
    return "Price Range Product Complex: TotalReturnFutureStrategy (14)"
  end

  return "Price Range Product Complex: Unknown("..value..")"
end

-- Dissect: Price Range Product Complex
eurex_t7_rdi_fast_v14_0.price_range_product_complex.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Price Range Product Complex was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.price_range_product_complex.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.price_range_product_complex, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.price_range_product_complex, range, value, display)
  end

  return offset, value
end

-- Start Price Range
eurex_t7_rdi_fast_v14_0.start_price_range = {}

-- Display: Start Price Range
eurex_t7_rdi_fast_v14_0.start_price_range.display = function(value)
  if value == nil then
    return "Start Price Range: No Value"
  end

  return "Start Price Range: "..value
end

-- Dissect: Start Price Range
eurex_t7_rdi_fast_v14_0.start_price_range.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_stop_bit_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
  else
    exponent = nil
  end

  if exponent ~= nil and mantissa ~= nil then
    value = mantissa * (10 ^ exponent)
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.start_price_range.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.start_price_range, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.start_price_range, range, value, display)
  end

  return offset, value
end

-- End Price Range
eurex_t7_rdi_fast_v14_0.end_price_range = {}

-- Display: End Price Range
eurex_t7_rdi_fast_v14_0.end_price_range.display = function(value)
  if value == nil then
    return "End Price Range: No Value"
  end

  return "End Price Range: "..value
end

-- Dissect: End Price Range
eurex_t7_rdi_fast_v14_0.end_price_range.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_stop_bit_signed(buffer, offset)
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

  local display = eurex_t7_rdi_fast_v14_0.end_price_range.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.end_price_range, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.end_price_range, range, value, display)
  end

  return offset, value
end

-- Price Range Value
eurex_t7_rdi_fast_v14_0.price_range_value = {}

-- Display: Price Range Value
eurex_t7_rdi_fast_v14_0.price_range_value.display = function(value)
  if value == nil then
    return "Price Range Value: No Value"
  end

  return "Price Range Value: "..value
end

-- Dissect: Price Range Value
eurex_t7_rdi_fast_v14_0.price_range_value.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.price_range_value.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.price_range_value, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.price_range_value, range, value, display)
  end

  return offset, value
end

-- Price Range Percentage
eurex_t7_rdi_fast_v14_0.price_range_percentage = {}

-- Display: Price Range Percentage
eurex_t7_rdi_fast_v14_0.price_range_percentage.display = function(value)
  if value == nil then
    return "Price Range Percentage: No Value"
  end

  return "Price Range Percentage: "..value
end

-- Dissect: Price Range Percentage
eurex_t7_rdi_fast_v14_0.price_range_percentage.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.price_range_percentage.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.price_range_percentage, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.price_range_percentage, range, value, display)
  end

  return offset, value
end

-- Quote Side Indicator
eurex_t7_rdi_fast_v14_0.quote_side_indicator = {}

-- Display: Quote Side Indicator
eurex_t7_rdi_fast_v14_0.quote_side_indicator.display = function(value)
  if value == nil then
    return "Quote Side Indicator: No Value"
  end

  if value == 0 then
    return "Quote Side Indicator: OneSidedQuoteNotAllowed (0)"
  end
  if value == 1 then
    return "Quote Side Indicator: OneSidedQuoteAllowed (1)"
  end

  return "Quote Side Indicator: Unknown("..value..")"
end

-- Dissect: Quote Side Indicator
eurex_t7_rdi_fast_v14_0.quote_side_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 1
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.quote_side_indicator.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.quote_side_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.quote_side_indicator, range, value, display)
  end

  return offset, value
end

-- Quote Side Model Type
eurex_t7_rdi_fast_v14_0.quote_side_model_type = {}

-- Display: Quote Side Model Type
eurex_t7_rdi_fast_v14_0.quote_side_model_type.display = function(value)
  if value == nil then
    return "Quote Side Model Type: No Value"
  end

  if value == 0 then
    return "Quote Side Model Type: SSQNotSupported (0)"
  end
  if value == 1 then
    return "Quote Side Model Type: SSQSupported (1)"
  end

  return "Quote Side Model Type: Unknown("..value..")"
end

-- Dissect: Quote Side Model Type
eurex_t7_rdi_fast_v14_0.quote_side_model_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.quote_side_model_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.quote_side_model_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.quote_side_model_type, range, value, display)
  end

  return offset, value
end

-- Fast Market Percentage
eurex_t7_rdi_fast_v14_0.fast_market_percentage = {}

-- Display: Fast Market Percentage
eurex_t7_rdi_fast_v14_0.fast_market_percentage.display = function(value)
  if value == nil then
    return "Fast Market Percentage: No Value"
  end

  return "Fast Market Percentage: "..value
end

-- Dissect: Fast Market Percentage
eurex_t7_rdi_fast_v14_0.fast_market_percentage.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.fast_market_percentage.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.fast_market_percentage, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.fast_market_percentage, range, value, display)
  end

  return offset, value
end

-- Check Market Order
eurex_t7_rdi_fast_v14_0.check_market_order = {}

-- Display: Check Market Order
eurex_t7_rdi_fast_v14_0.check_market_order.display = function(value)
  if value == nil then
    return "Check Market Order: No Value"
  end

  if value == 0 then
    return "Check Market Order: DoNotCheck (N)"
  end
  if value == 1 then
    return "Check Market Order: Check (Y)"
  end

  return "Check Market Order: Unknown("..value..")"
end

-- Dissect: Check Market Order
eurex_t7_rdi_fast_v14_0.check_market_order.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.check_market_order.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.check_market_order, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.check_market_order, range, value, display)
  end

  return offset, value
end

-- No Hhi Intervals
eurex_t7_rdi_fast_v14_0.no_hhi_intervals = {}

-- Dissect: No Hhi Intervals
eurex_t7_rdi_fast_v14_0.no_hhi_intervals.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_hhi_intervals, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_hhi_intervals, range, 0)
    absent:set_text("No Hhi Intervals: No Value")
  end

  return offset, value
end

-- Hhi Indicator
eurex_t7_rdi_fast_v14_0.hhi_indicator = {}

-- Dissect: Hhi Indicator
eurex_t7_rdi_fast_v14_0.hhi_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Hhi Indicator was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.hhi_indicator, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.hhi_indicator, range, 0)
    absent:set_text("Hhi Indicator: No Value")
  end

  return offset, value
end

-- Hhi Interval End
eurex_t7_rdi_fast_v14_0.hhi_interval_end = {}

-- Display: Hhi Interval End
eurex_t7_rdi_fast_v14_0.hhi_interval_end.display = function(value)
  if value == nil then
    return "Hhi Interval End: No Value"
  end

  return "Hhi Interval End: "..value
end

-- Dissect: Hhi Interval End
eurex_t7_rdi_fast_v14_0.hhi_interval_end.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  exponent, offset = read_stop_bit_signed(buffer, offset)
  if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end

  if exponent ~= nil and mantissa ~= nil then
    value = mantissa * (10 ^ exponent)
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.hhi_interval_end.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.hhi_interval_end, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.hhi_interval_end, range, value, display)
  end

  return offset, value
end

-- No Quote Size Rules (Default)
eurex_t7_rdi_fast_v14_0.no_quote_size_rules_default = {}

-- Dissect: No Quote Size Rules (Default)
eurex_t7_rdi_fast_v14_0.no_quote_size_rules_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 1
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_quote_size_rules, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_quote_size_rules, range, 0)
    absent:set_text("No Quote Size Rules: No Value")
  end

  return offset, value
end

-- No Quote Size Rules (Constant)
eurex_t7_rdi_fast_v14_0.no_quote_size_rules_constant = {}

-- Dissect: No Quote Size Rules (Constant)
eurex_t7_rdi_fast_v14_0.no_quote_size_rules_constant.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value = 1
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_quote_size_rules, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_quote_size_rules, range, 0)
    absent:set_text("No Quote Size Rules: No Value")
  end

  return offset, value
end

-- Min Bid Size
eurex_t7_rdi_fast_v14_0.min_bid_size = {}

-- Display: Min Bid Size
eurex_t7_rdi_fast_v14_0.min_bid_size.display = function(value)
  if value == nil then
    return "Min Bid Size: No Value"
  end

  return "Min Bid Size: "..value
end

-- Dissect: Min Bid Size
eurex_t7_rdi_fast_v14_0.min_bid_size.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_stop_bit_signed(buffer, offset)
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

  local display = eurex_t7_rdi_fast_v14_0.min_bid_size.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.min_bid_size, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.min_bid_size, range, value, display)
  end

  return offset, value
end

-- Min Offer Size
eurex_t7_rdi_fast_v14_0.min_offer_size = {}

-- Display: Min Offer Size
eurex_t7_rdi_fast_v14_0.min_offer_size.display = function(value)
  if value == nil then
    return "Min Offer Size: No Value"
  end

  return "Min Offer Size: "..value
end

-- Dissect: Min Offer Size
eurex_t7_rdi_fast_v14_0.min_offer_size.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_stop_bit_signed(buffer, offset)
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

  local display = eurex_t7_rdi_fast_v14_0.min_offer_size.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.min_offer_size, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.min_offer_size, range, value, display)
  end

  return offset, value
end

-- Fast Market Indicator
eurex_t7_rdi_fast_v14_0.fast_market_indicator = {}

-- Display: Fast Market Indicator
eurex_t7_rdi_fast_v14_0.fast_market_indicator.display = function(value)
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

-- Dissect: Fast Market Indicator
eurex_t7_rdi_fast_v14_0.fast_market_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Fast Market Indicator was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.fast_market_indicator.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.fast_market_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.fast_market_indicator, range, value, display)
  end

  return offset, value
end

-- No Flex Product Eligibilities
eurex_t7_rdi_fast_v14_0.no_flex_product_eligibilities = {}

-- Dissect: No Flex Product Eligibilities
eurex_t7_rdi_fast_v14_0.no_flex_product_eligibilities.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "No Flex Product Eligibilities was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_flex_product_eligibilities, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_flex_product_eligibilities, range, 0)
    absent:set_text("No Flex Product Eligibilities: No Value")
  end

  return offset, value
end

-- Flex Product Eligibility Complex
eurex_t7_rdi_fast_v14_0.flex_product_eligibility_complex = {}

-- Display: Flex Product Eligibility Complex
eurex_t7_rdi_fast_v14_0.flex_product_eligibility_complex.display = function(value)
  if value == nil then
    return "Flex Product Eligibility Complex: No Value"
  end

  if value == 0 then
    return "Flex Product Eligibility Complex: SimpleInstrument (1)"
  end
  if value == 1 then
    return "Flex Product Eligibility Complex: StandardOptionStrategy (2)"
  end
  if value == 2 then
    return "Flex Product Eligibility Complex: NonStandardOptionStrategy (3)"
  end
  if value == 3 then
    return "Flex Product Eligibility Complex: VolatilityStrategy (4)"
  end
  if value == 4 then
    return "Flex Product Eligibility Complex: FuturesSpread (5)"
  end
  if value == 5 then
    return "Flex Product Eligibility Complex: InterProductSpread (6)"
  end
  if value == 6 then
    return "Flex Product Eligibility Complex: StandardFuturesStrategy (7)"
  end
  if value == 7 then
    return "Flex Product Eligibility Complex: PackAndBundle (8)"
  end
  if value == 8 then
    return "Flex Product Eligibility Complex: Strip (9)"
  end
  if value == 9 then
    return "Flex Product Eligibility Complex: FlexibleInstrument (10)"
  end
  if value == 10 then
    return "Flex Product Eligibility Complex: CommodityStrip (11)"
  end
  if value == 11 then
    return "Flex Product Eligibility Complex: ScaledSimpleInstrument (12)"
  end
  if value == 12 then
    return "Flex Product Eligibility Complex: NonStandardVolatilityStrategy (13)"
  end
  if value == 13 then
    return "Flex Product Eligibility Complex: TotalReturnFutureStrategy (14)"
  end

  return "Flex Product Eligibility Complex: Unknown("..value..")"
end

-- Dissect: Flex Product Eligibility Complex
eurex_t7_rdi_fast_v14_0.flex_product_eligibility_complex.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Flex Product Eligibility Complex was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.flex_product_eligibility_complex.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.flex_product_eligibility_complex, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.flex_product_eligibility_complex, range, value, display)
  end

  return offset, value
end

-- Flex Product Eligibility Indicator
eurex_t7_rdi_fast_v14_0.flex_product_eligibility_indicator = {}

-- Display: Flex Product Eligibility Indicator
eurex_t7_rdi_fast_v14_0.flex_product_eligibility_indicator.display = function(value)
  if value == nil then
    return "Flex Product Eligibility Indicator: No Value"
  end

  if value == 0 then
    return "Flex Product Eligibility Indicator: No (N)"
  end
  if value == 1 then
    return "Flex Product Eligibility Indicator: Yes (Y)"
  end

  return "Flex Product Eligibility Indicator: Unknown("..value..")"
end

-- Dissect: Flex Product Eligibility Indicator
eurex_t7_rdi_fast_v14_0.flex_product_eligibility_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 1
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.flex_product_eligibility_indicator.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.flex_product_eligibility_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.flex_product_eligibility_indicator, range, value, display)
  end

  return offset, value
end

-- Round Lot
eurex_t7_rdi_fast_v14_0.round_lot = {}

-- Display: Round Lot
eurex_t7_rdi_fast_v14_0.round_lot.display = function(value)
  if value == nil then
    return "Round Lot: No Value"
  end

  return "Round Lot: "..value
end

-- Dissect: Round Lot
eurex_t7_rdi_fast_v14_0.round_lot.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.round_lot.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.round_lot, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.round_lot, range, value, display)
  end

  return offset, value
end

-- No Auction Type Rules
eurex_t7_rdi_fast_v14_0.no_auction_type_rules = {}

-- Dissect: No Auction Type Rules
eurex_t7_rdi_fast_v14_0.no_auction_type_rules.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 1

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_auction_type_rules, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_auction_type_rules, range, 0)
    absent:set_text("No Auction Type Rules: No Value")
  end

  return offset, value
end

-- Auction Type
eurex_t7_rdi_fast_v14_0.auction_type = {}

-- Display: Auction Type
eurex_t7_rdi_fast_v14_0.auction_type.display = function(value)
  if value == nil then
    return "Auction Type: No Value"
  end

  if value == 0 then
    return "Auction Type: AnyAuction (100)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
eurex_t7_rdi_fast_v14_0.auction_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 0

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.auction_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.auction_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.auction_type, range, value, display)
  end

  return offset, value
end

-- Closed Book Indicator
eurex_t7_rdi_fast_v14_0.closed_book_indicator = {}

-- Display: Closed Book Indicator
eurex_t7_rdi_fast_v14_0.closed_book_indicator.display = function(value)
  if value == nil then
    return "Closed Book Indicator: No Value"
  end

  if value == 0 then
    return "Closed Book Indicator: No (0)"
  end
  if value == 1 then
    return "Closed Book Indicator: Yes (1)"
  end

  return "Closed Book Indicator: Unknown("..value..")"
end

-- Dissect: Closed Book Indicator
eurex_t7_rdi_fast_v14_0.closed_book_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Closed Book Indicator was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.closed_book_indicator.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.closed_book_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.closed_book_indicator, range, value, display)
  end

  return offset, value
end

-- Market Imbalance Indicator
eurex_t7_rdi_fast_v14_0.market_imbalance_indicator = {}

-- Display: Market Imbalance Indicator
eurex_t7_rdi_fast_v14_0.market_imbalance_indicator.display = function(value)
  if value == nil then
    return "Market Imbalance Indicator: No Value"
  end

  if value == 0 then
    return "Market Imbalance Indicator: No (0)"
  end
  if value == 1 then
    return "Market Imbalance Indicator: Yes (1)"
  end

  return "Market Imbalance Indicator: Unknown("..value..")"
end

-- Dissect: Market Imbalance Indicator
eurex_t7_rdi_fast_v14_0.market_imbalance_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Market Imbalance Indicator was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.market_imbalance_indicator.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.market_imbalance_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.market_imbalance_indicator, range, value, display)
  end

  return offset, value
end

-- Disable On Book Trading
eurex_t7_rdi_fast_v14_0.disable_on_book_trading = {}

-- Display: Disable On Book Trading
eurex_t7_rdi_fast_v14_0.disable_on_book_trading.display = function(value)
  if value == nil then
    return "Disable On Book Trading: No Value"
  end

  if value == 0 then
    return "Disable On Book Trading: No (N)"
  end
  if value == 1 then
    return "Disable On Book Trading: Yes (Y)"
  end

  return "Disable On Book Trading: Unknown("..value..")"
end

-- Dissect: Disable On Book Trading
eurex_t7_rdi_fast_v14_0.disable_on_book_trading.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.disable_on_book_trading.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.disable_on_book_trading, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.disable_on_book_trading, range, value, display)
  end

  return offset, value
end

-- No Match Rules
eurex_t7_rdi_fast_v14_0.no_match_rules = {}

-- Dissect: No Match Rules
eurex_t7_rdi_fast_v14_0.no_match_rules.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "No Match Rules was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_match_rules, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_match_rules, range, 0)
    absent:set_text("No Match Rules: No Value")
  end

  return offset, value
end

-- Match Rule Product Complex
eurex_t7_rdi_fast_v14_0.match_rule_product_complex = {}

-- Display: Match Rule Product Complex
eurex_t7_rdi_fast_v14_0.match_rule_product_complex.display = function(value)
  if value == nil then
    return "Match Rule Product Complex: No Value"
  end

  if value == 0 then
    return "Match Rule Product Complex: SimpleInstrument (1)"
  end
  if value == 1 then
    return "Match Rule Product Complex: StandardOptionStrategy (2)"
  end
  if value == 2 then
    return "Match Rule Product Complex: NonStandardOptionStrategy (3)"
  end
  if value == 3 then
    return "Match Rule Product Complex: VolatilityStrategy (4)"
  end
  if value == 4 then
    return "Match Rule Product Complex: FuturesSpread (5)"
  end
  if value == 5 then
    return "Match Rule Product Complex: InterProductSpread (6)"
  end
  if value == 6 then
    return "Match Rule Product Complex: StandardFuturesStrategy (7)"
  end
  if value == 7 then
    return "Match Rule Product Complex: PackAndBundle (8)"
  end
  if value == 8 then
    return "Match Rule Product Complex: Strip (9)"
  end
  if value == 9 then
    return "Match Rule Product Complex: FlexibleInstrument (10)"
  end
  if value == 10 then
    return "Match Rule Product Complex: CommodityStrip (11)"
  end
  if value == 11 then
    return "Match Rule Product Complex: ScaledSimpleInstrument (12)"
  end
  if value == 12 then
    return "Match Rule Product Complex: NonStandardVolatilityStrategy (13)"
  end
  if value == 13 then
    return "Match Rule Product Complex: TotalReturnFutureStrategy (14)"
  end

  return "Match Rule Product Complex: Unknown("..value..")"
end

-- Dissect: Match Rule Product Complex
eurex_t7_rdi_fast_v14_0.match_rule_product_complex.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.match_rule_product_complex.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.match_rule_product_complex, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.match_rule_product_complex, range, value, display)
  end

  return offset, value
end

-- Match Algorithm
eurex_t7_rdi_fast_v14_0.match_algorithm = {}

-- Display: Match Algorithm
eurex_t7_rdi_fast_v14_0.match_algorithm.display = function(value)
  if value == nil then
    return "Match Algorithm: No Value"
  end

  if value == 0 then
    return "Match Algorithm: PriceTime (PT)"
  end
  if value == 1 then
    return "Match Algorithm: ProRata (PR)"
  end
  if value == 2 then
    return "Match Algorithm: TimeProRata (TPR)"
  end

  return "Match Algorithm: Unknown("..value..")"
end

-- Dissect: Match Algorithm
eurex_t7_rdi_fast_v14_0.match_algorithm.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.match_algorithm.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.match_algorithm, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.match_algorithm, range, value, display)
  end

  return offset, value
end

-- Match Type
eurex_t7_rdi_fast_v14_0.match_type = {}

-- Display: Match Type
eurex_t7_rdi_fast_v14_0.match_type.display = function(value)
  if value == nil then
    return "Match Type: No Value"
  end

  if value == 0 then
    return "Match Type: AutoMatch (4)"
  end
  if value == 1 then
    return "Match Type: CallAuction (7)"
  end

  return "Match Type: Unknown("..value..")"
end

-- Dissect: Match Type
eurex_t7_rdi_fast_v14_0.match_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.match_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.match_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.match_type, range, value, display)
  end

  return offset, value
end

-- No Md Feed Types
eurex_t7_rdi_fast_v14_0.no_md_feed_types = {}

-- Dissect: No Md Feed Types
eurex_t7_rdi_fast_v14_0.no_md_feed_types.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "No Md Feed Types was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_md_feed_types, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_md_feed_types, range, 0)
    absent:set_text("No Md Feed Types: No Value")
  end

  return offset, value
end

-- Md Feed Type
eurex_t7_rdi_fast_v14_0.md_feed_type = {}

-- Display: Md Feed Type
eurex_t7_rdi_fast_v14_0.md_feed_type.display = function(value)
  if value == nil then
    return "Md Feed Type: No Value"
  end

  if value == 0 then
    return "Md Feed Type: HighIncremental (HI)"
  end
  if value == 1 then
    return "Md Feed Type: HighSnapshot (HS)"
  end
  if value == 2 then
    return "Md Feed Type: Low (L)"
  end

  return "Md Feed Type: Unknown("..value..")"
end

-- Dissect: Md Feed Type
eurex_t7_rdi_fast_v14_0.md_feed_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.md_feed_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.md_feed_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.md_feed_type, range, value, display)
  end

  return offset, value
end

-- Md Book Type
eurex_t7_rdi_fast_v14_0.md_book_type = {}

-- Display: Md Book Type
eurex_t7_rdi_fast_v14_0.md_book_type.display = function(value)
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

-- Dissect: Md Book Type
eurex_t7_rdi_fast_v14_0.md_book_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 1
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.md_book_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.md_book_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.md_book_type, range, value, display)
  end

  return offset, value
end

-- Market Depth
eurex_t7_rdi_fast_v14_0.market_depth = {}

-- Dissect: Market Depth
eurex_t7_rdi_fast_v14_0.market_depth.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.market_depth, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.market_depth, range, 0)
    absent:set_text("Market Depth: No Value")
  end

  return offset, value
end

-- Market Depth Time Interval
eurex_t7_rdi_fast_v14_0.market_depth_time_interval = {}

-- Dissect: Market Depth Time Interval
eurex_t7_rdi_fast_v14_0.market_depth_time_interval.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.market_depth_time_interval, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.market_depth_time_interval, range, 0)
    absent:set_text("Market Depth Time Interval: No Value")
  end

  return offset, value
end

-- Md Recovery Time Interval
eurex_t7_rdi_fast_v14_0.md_recovery_time_interval = {}

-- Dissect: Md Recovery Time Interval
eurex_t7_rdi_fast_v14_0.md_recovery_time_interval.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.md_recovery_time_interval, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.md_recovery_time_interval, range, 0)
    absent:set_text("Md Recovery Time Interval: No Value")
  end

  return offset, value
end

-- Primary Service Location Id
eurex_t7_rdi_fast_v14_0.primary_service_location_id = {}

-- Dissect: Primary Service Location Id
eurex_t7_rdi_fast_v14_0.primary_service_location_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_signed(buffer, offset)
  value = (state.values[key] or 0) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.primary_service_location_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.primary_service_location_id, range, "")
    absent:set_text("Primary Service Location Id: No Value")
  end

  return offset, value
end

-- Primary Service Location Sub Id
eurex_t7_rdi_fast_v14_0.primary_service_location_sub_id = {}

-- Dissect: Primary Service Location Sub Id
eurex_t7_rdi_fast_v14_0.primary_service_location_sub_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_signed(buffer, offset)
  value = (state.values[key] or 0) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.primary_service_location_sub_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.primary_service_location_sub_id, range, 0)
    absent:set_text("Primary Service Location Sub Id: No Value")
  end

  return offset, value
end

-- Secondary Service Location Id
eurex_t7_rdi_fast_v14_0.secondary_service_location_id = {}

-- Dissect: Secondary Service Location Id
eurex_t7_rdi_fast_v14_0.secondary_service_location_id.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.secondary_service_location_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.secondary_service_location_id, range, "")
    absent:set_text("Secondary Service Location Id: No Value")
  end

  return offset, value
end

-- Secondary Service Location Sub Id
eurex_t7_rdi_fast_v14_0.secondary_service_location_sub_id = {}

-- Dissect: Secondary Service Location Sub Id
eurex_t7_rdi_fast_v14_0.secondary_service_location_sub_id.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.secondary_service_location_sub_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.secondary_service_location_sub_id, range, 0)
    absent:set_text("Secondary Service Location Sub Id: No Value")
  end

  return offset, value
end

-- Security Id
eurex_t7_rdi_fast_v14_0.security_id = {}

-- Dissect: Security Id
eurex_t7_rdi_fast_v14_0.security_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_int64(buffer, offset)
  value = (state.values[key] or Int64(0)) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_id, range, Int64(0))
    absent:set_text("Security Id: No Value")
  end

  return offset, value
end

-- Security Id Source
eurex_t7_rdi_fast_v14_0.security_id_source = {}

-- Display: Security Id Source
eurex_t7_rdi_fast_v14_0.security_id_source.display = function(value)
  if value == nil then
    return "Security Id Source: No Value"
  end

  if value == "M" then
    return "Security Id Source: Marketplace (M)"
  end

  return "Security Id Source: "..value
end

-- Dissect: Security Id Source
eurex_t7_rdi_fast_v14_0.security_id_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "M"

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.security_id_source.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_id_source, range, "", display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_id_source, range, value, display)
  end

  return offset, value
end

-- No Security Alt Id
eurex_t7_rdi_fast_v14_0.no_security_alt_id = {}

-- Dissect: No Security Alt Id
eurex_t7_rdi_fast_v14_0.no_security_alt_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_security_alt_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_security_alt_id, range, 0)
    absent:set_text("No Security Alt Id: No Value")
  end

  return offset, value
end

-- Security Alt Id
eurex_t7_rdi_fast_v14_0.security_alt_id = {}

-- Dissect: Security Alt Id
eurex_t7_rdi_fast_v14_0.security_alt_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_signed(buffer, offset)
  value = (state.values[key] or 0) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_alt_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_alt_id, range, "")
    absent:set_text("Security Alt Id: No Value")
  end

  return offset, value
end

-- Security Alt Id Source
eurex_t7_rdi_fast_v14_0.security_alt_id_source = {}

-- Dissect: Security Alt Id Source
eurex_t7_rdi_fast_v14_0.security_alt_id_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Security Alt Id Source was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_alt_id_source, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_alt_id_source, range, "")
    absent:set_text("Security Alt Id Source: No Value")
  end

  return offset, value
end

-- Security Type (Copy)
eurex_t7_rdi_fast_v14_0.security_type_copy = {}

-- Display: Security Type (Copy)
eurex_t7_rdi_fast_v14_0.security_type_copy.display = function(value)
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

-- Dissect: Security Type (Copy)
eurex_t7_rdi_fast_v14_0.security_type_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Security Type was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.security_type_copy.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_type, range, value, display)
  end

  return offset, value
end

-- Security Type (Constant)
eurex_t7_rdi_fast_v14_0.security_type_constant_3 = {}

-- Display: Security Type (Constant)
eurex_t7_rdi_fast_v14_0.security_type_constant_3.display = function(value)
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
eurex_t7_rdi_fast_v14_0.security_type_constant_3.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 3

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.security_type_constant_3.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_type, range, value, display)
  end

  return offset, value
end

-- Security Type (Constant)
eurex_t7_rdi_fast_v14_0.security_type_constant_4 = {}

-- Display: Security Type (Constant)
eurex_t7_rdi_fast_v14_0.security_type_constant_4.display = function(value)
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
eurex_t7_rdi_fast_v14_0.security_type_constant_4.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 4

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.security_type_constant_4.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_type, range, value, display)
  end

  return offset, value
end

-- Security Type (Constant)
eurex_t7_rdi_fast_v14_0.security_type_constant_7 = {}

-- Display: Security Type (Constant)
eurex_t7_rdi_fast_v14_0.security_type_constant_7.display = function(value)
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
eurex_t7_rdi_fast_v14_0.security_type_constant_7.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 7

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.security_type_constant_7.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_type, range, value, display)
  end

  return offset, value
end

-- Security Status
eurex_t7_rdi_fast_v14_0.security_status = {}

-- Display: Security Status
eurex_t7_rdi_fast_v14_0.security_status.display = function(value)
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
eurex_t7_rdi_fast_v14_0.security_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Security Status was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.security_status.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_status, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_status, range, value, display)
  end

  return offset, value
end

-- Security Desc
eurex_t7_rdi_fast_v14_0.security_desc = {}

-- Dissect: Security Desc
eurex_t7_rdi_fast_v14_0.security_desc.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_desc, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_desc, range, "")
    absent:set_text("Security Desc: No Value")
  end

  return offset, value
end

-- Security Exchange
eurex_t7_rdi_fast_v14_0.security_exchange = {}

-- Dissect: Security Exchange
eurex_t7_rdi_fast_v14_0.security_exchange.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_exchange, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_exchange, range, "")
    absent:set_text("Security Exchange: No Value")
  end

  return offset, value
end

-- Product Complex
eurex_t7_rdi_fast_v14_0.product_complex = {}

-- Display: Product Complex
eurex_t7_rdi_fast_v14_0.product_complex.display = function(value)
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

-- Dissect: Product Complex
eurex_t7_rdi_fast_v14_0.product_complex.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.product_complex.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.product_complex, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.product_complex, range, value, display)
  end

  return offset, value
end

-- Cfi Code
eurex_t7_rdi_fast_v14_0.cfi_code = {}

-- Dissect: Cfi Code
eurex_t7_rdi_fast_v14_0.cfi_code.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.cfi_code, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.cfi_code, range, "")
    absent:set_text("Cfi Code: No Value")
  end

  return offset, value
end

-- Display Name
eurex_t7_rdi_fast_v14_0.display_name = {}

-- Dissect: Display Name
eurex_t7_rdi_fast_v14_0.display_name.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.display_name, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.display_name, range, "")
    absent:set_text("Display Name: No Value")
  end

  return offset, value
end

-- Contract Identification Eligibility
eurex_t7_rdi_fast_v14_0.contract_identification_eligibility = {}

-- Display: Contract Identification Eligibility
eurex_t7_rdi_fast_v14_0.contract_identification_eligibility.display = function(value)
  if value == nil then
    return "Contract Identification Eligibility: No Value"
  end

  if value == 0 then
    return "Contract Identification Eligibility: ContractMonthYear (1)"
  end
  if value == 1 then
    return "Contract Identification Eligibility: ExpirationDate (2)"
  end
  if value == 2 then
    return "Contract Identification Eligibility: ContractDate (3)"
  end

  return "Contract Identification Eligibility: Unknown("..value..")"
end

-- Dissect: Contract Identification Eligibility
eurex_t7_rdi_fast_v14_0.contract_identification_eligibility.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.contract_identification_eligibility.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.contract_identification_eligibility, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.contract_identification_eligibility, range, value, display)
  end

  return offset, value
end

-- Is Primary
eurex_t7_rdi_fast_v14_0.is_primary = {}

-- Display: Is Primary
eurex_t7_rdi_fast_v14_0.is_primary.display = function(value)
  if value == nil then
    return "Is Primary: No Value"
  end

  if value == 0 then
    return "Is Primary: No (N)"
  end
  if value == 1 then
    return "Is Primary: Yes (Y)"
  end

  return "Is Primary: Unknown("..value..")"
end

-- Dissect: Is Primary
eurex_t7_rdi_fast_v14_0.is_primary.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.is_primary.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.is_primary, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.is_primary, range, value, display)
  end

  return offset, value
end

-- Security Reference Data Supplement
eurex_t7_rdi_fast_v14_0.security_reference_data_supplement = {}

-- Dissect: Security Reference Data Supplement
eurex_t7_rdi_fast_v14_0.security_reference_data_supplement.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_reference_data_supplement, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_reference_data_supplement, range, 0)
    absent:set_text("Security Reference Data Supplement: No Value")
  end

  return offset, value
end

-- Contract Date
eurex_t7_rdi_fast_v14_0.contract_date = {}

-- Dissect: Contract Date
eurex_t7_rdi_fast_v14_0.contract_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.contract_date, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.contract_date, range, 0)
    absent:set_text("Contract Date: No Value")
  end

  return offset, value
end

-- Contract Date Type
eurex_t7_rdi_fast_v14_0.contract_date_type = {}

-- Dissect: Contract Date Type
eurex_t7_rdi_fast_v14_0.contract_date_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.contract_date_type, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.contract_date_type, range, "")
    absent:set_text("Contract Date Type: No Value")
  end

  return offset, value
end

-- Contract Month Year
eurex_t7_rdi_fast_v14_0.contract_month_year = {}

-- Dissect: Contract Month Year
eurex_t7_rdi_fast_v14_0.contract_month_year.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.contract_month_year, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.contract_month_year, range, 0)
    absent:set_text("Contract Month Year: No Value")
  end

  return offset, value
end

-- Contract Month Type
eurex_t7_rdi_fast_v14_0.contract_month_type = {}

-- Display: Contract Month Type
eurex_t7_rdi_fast_v14_0.contract_month_type.display = function(value)
  if value == nil then
    return "Contract Month Type: No Value"
  end

  if value == 0 then
    return "Contract Month Type: MaturityMonth (1)"
  end
  if value == 1 then
    return "Contract Month Type: MaturityMonthPlusOne (2)"
  end
  if value == 2 then
    return "Contract Month Type: IMMMonth (3)"
  end
  if value == 3 then
    return "Contract Month Type: FirstDeliveryMonth (4)"
  end
  if value == 4 then
    return "Contract Month Type: FinalSettlementDateMonth (5)"
  end

  return "Contract Month Type: Unknown("..value..")"
end

-- Dissect: Contract Month Type
eurex_t7_rdi_fast_v14_0.contract_month_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.contract_month_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.contract_month_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.contract_month_type, range, value, display)
  end

  return offset, value
end

-- Contract Cycle Type
eurex_t7_rdi_fast_v14_0.contract_cycle_type = {}

-- Display: Contract Cycle Type
eurex_t7_rdi_fast_v14_0.contract_cycle_type.display = function(value)
  if value == nil then
    return "Contract Cycle Type: No Value"
  end

  if value == 0 then
    return "Contract Cycle Type: Daily (1)"
  end
  if value == 1 then
    return "Contract Cycle Type: Weekly (2)"
  end
  if value == 2 then
    return "Contract Cycle Type: Monthly (3)"
  end
  if value == 3 then
    return "Contract Cycle Type: Quarterly (4)"
  end
  if value == 4 then
    return "Contract Cycle Type: SemiAnnually (5)"
  end
  if value == 5 then
    return "Contract Cycle Type: Yearly (6)"
  end

  return "Contract Cycle Type: Unknown("..value..")"
end

-- Dissect: Contract Cycle Type
eurex_t7_rdi_fast_v14_0.contract_cycle_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.contract_cycle_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.contract_cycle_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.contract_cycle_type, range, value, display)
  end

  return offset, value
end

-- Contract Cycle Sub Type
eurex_t7_rdi_fast_v14_0.contract_cycle_sub_type = {}

-- Display: Contract Cycle Sub Type
eurex_t7_rdi_fast_v14_0.contract_cycle_sub_type.display = function(value)
  if value == nil then
    return "Contract Cycle Sub Type: No Value"
  end

  if value == 0 then
    return "Contract Cycle Sub Type: EndOfMonth (1)"
  end

  return "Contract Cycle Sub Type: Unknown("..value..")"
end

-- Dissect: Contract Cycle Sub Type
eurex_t7_rdi_fast_v14_0.contract_cycle_sub_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.contract_cycle_sub_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.contract_cycle_sub_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.contract_cycle_sub_type, range, value, display)
  end

  return offset, value
end

-- Maturity Frequency Unit
eurex_t7_rdi_fast_v14_0.maturity_frequency_unit = {}

-- Display: Maturity Frequency Unit
eurex_t7_rdi_fast_v14_0.maturity_frequency_unit.display = function(value)
  if value == nil then
    return "Maturity Frequency Unit: No Value"
  end

  if value == 0 then
    return "Maturity Frequency Unit: Day (D)"
  end
  if value == 1 then
    return "Maturity Frequency Unit: Week (Wk)"
  end
  if value == 2 then
    return "Maturity Frequency Unit: Month (Mo)"
  end
  if value == 3 then
    return "Maturity Frequency Unit: Flexible (F)"
  end
  if value == 4 then
    return "Maturity Frequency Unit: EndOfMonth (EOM)"
  end

  return "Maturity Frequency Unit: Unknown("..value..")"
end

-- Dissect: Maturity Frequency Unit
eurex_t7_rdi_fast_v14_0.maturity_frequency_unit.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.maturity_frequency_unit.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.maturity_frequency_unit, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.maturity_frequency_unit, range, value, display)
  end

  return offset, value
end

-- Contract Frequency
eurex_t7_rdi_fast_v14_0.contract_frequency = {}

-- Display: Contract Frequency
eurex_t7_rdi_fast_v14_0.contract_frequency.display = function(value)
  if value == nil then
    return "Contract Frequency: No Value"
  end

  if value == 0 then
    return "Contract Frequency: Day (D)"
  end
  if value == 1 then
    return "Contract Frequency: Week (Wk)"
  end
  if value == 2 then
    return "Contract Frequency: Month (Mo)"
  end
  if value == 3 then
    return "Contract Frequency: Flex (Flex)"
  end
  if value == 4 then
    return "Contract Frequency: EndOfMonth (EOM)"
  end

  return "Contract Frequency: Unknown("..value..")"
end

-- Dissect: Contract Frequency
eurex_t7_rdi_fast_v14_0.contract_frequency.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.contract_frequency.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.contract_frequency, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.contract_frequency, range, value, display)
  end

  return offset, value
end

-- Contract Display Instruction
eurex_t7_rdi_fast_v14_0.contract_display_instruction = {}

-- Display: Contract Display Instruction
eurex_t7_rdi_fast_v14_0.contract_display_instruction.display = function(value)
  if value == nil then
    return "Contract Display Instruction: No Value"
  end

  if value == 0 then
    return "Contract Display Instruction: None (0)"
  end
  if value == 1 then
    return "Contract Display Instruction: Date (1)"
  end
  if value == 2 then
    return "Contract Display Instruction: Month (2)"
  end
  if value == 3 then
    return "Contract Display Instruction: Permanent (3)"
  end
  if value == 4 then
    return "Contract Display Instruction: Quarter (4)"
  end
  if value == 5 then
    return "Contract Display Instruction: Season (5)"
  end
  if value == 6 then
    return "Contract Display Instruction: WeekOfYear (6)"
  end
  if value == 7 then
    return "Contract Display Instruction: Year (7)"
  end
  if value == 8 then
    return "Contract Display Instruction: WeekOfMonth (8)"
  end
  if value == 9 then
    return "Contract Display Instruction: WeekendOfYear (9)"
  end
  if value == 10 then
    return "Contract Display Instruction: RelativeDay (10)"
  end
  if value == 11 then
    return "Contract Display Instruction: EndOfMonth (11)"
  end

  return "Contract Display Instruction: Unknown("..value..")"
end

-- Dissect: Contract Display Instruction
eurex_t7_rdi_fast_v14_0.contract_display_instruction.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.contract_display_instruction.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.contract_display_instruction, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.contract_display_instruction, range, value, display)
  end

  return offset, value
end

-- Display Day
eurex_t7_rdi_fast_v14_0.display_day = {}

-- Dissect: Display Day
eurex_t7_rdi_fast_v14_0.display_day.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.display_day, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.display_day, range, 0)
    absent:set_text("Display Day: No Value")
  end

  return offset, value
end

-- Display Relative Day
eurex_t7_rdi_fast_v14_0.display_relative_day = {}

-- Dissect: Display Relative Day
eurex_t7_rdi_fast_v14_0.display_relative_day.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_signed(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.display_relative_day, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.display_relative_day, range, 0)
    absent:set_text("Display Relative Day: No Value")
  end

  return offset, value
end

-- Display Week
eurex_t7_rdi_fast_v14_0.display_week = {}

-- Dissect: Display Week
eurex_t7_rdi_fast_v14_0.display_week.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.display_week, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.display_week, range, 0)
    absent:set_text("Display Week: No Value")
  end

  return offset, value
end

-- Display Day Of Week
eurex_t7_rdi_fast_v14_0.display_day_of_week = {}

-- Display: Display Day Of Week
eurex_t7_rdi_fast_v14_0.display_day_of_week.display = function(value)
  if value == nil then
    return "Display Day Of Week: No Value"
  end

  if value == 0 then
    return "Display Day Of Week: Monday (1)"
  end
  if value == 1 then
    return "Display Day Of Week: Tuesday (2)"
  end
  if value == 2 then
    return "Display Day Of Week: Wednesday (3)"
  end
  if value == 3 then
    return "Display Day Of Week: Thursday (4)"
  end
  if value == 4 then
    return "Display Day Of Week: Friday (5)"
  end
  if value == 5 then
    return "Display Day Of Week: Saturday (6)"
  end
  if value == 6 then
    return "Display Day Of Week: Sunday (7)"
  end

  return "Display Day Of Week: Unknown("..value..")"
end

-- Dissect: Display Day Of Week
eurex_t7_rdi_fast_v14_0.display_day_of_week.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.display_day_of_week.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.display_day_of_week, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.display_day_of_week, range, value, display)
  end

  return offset, value
end

-- Display Month
eurex_t7_rdi_fast_v14_0.display_month = {}

-- Dissect: Display Month
eurex_t7_rdi_fast_v14_0.display_month.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.display_month, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.display_month, range, 0)
    absent:set_text("Display Month: No Value")
  end

  return offset, value
end

-- Display Quarter
eurex_t7_rdi_fast_v14_0.display_quarter = {}

-- Dissect: Display Quarter
eurex_t7_rdi_fast_v14_0.display_quarter.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.display_quarter, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.display_quarter, range, 0)
    absent:set_text("Display Quarter: No Value")
  end

  return offset, value
end

-- Display Season
eurex_t7_rdi_fast_v14_0.display_season = {}

-- Display: Display Season
eurex_t7_rdi_fast_v14_0.display_season.display = function(value)
  if value == nil then
    return "Display Season: No Value"
  end

  if value == 0 then
    return "Display Season: Summer (SUM)"
  end
  if value == 1 then
    return "Display Season: Winter (WIN)"
  end

  return "Display Season: Unknown("..value..")"
end

-- Dissect: Display Season
eurex_t7_rdi_fast_v14_0.display_season.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.display_season.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.display_season, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.display_season, range, value, display)
  end

  return offset, value
end

-- Display Year
eurex_t7_rdi_fast_v14_0.display_year = {}

-- Dissect: Display Year
eurex_t7_rdi_fast_v14_0.display_year.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.display_year, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.display_year, range, 0)
    absent:set_text("Display Year: No Value")
  end

  return offset, value
end

-- Strike Price
eurex_t7_rdi_fast_v14_0.strike_price = {}

-- Display: Strike Price
eurex_t7_rdi_fast_v14_0.strike_price.display = function(value)
  if value == nil then
    return "Strike Price: No Value"
  end

  return "Strike Price: "..value
end

-- Dissect: Strike Price
eurex_t7_rdi_fast_v14_0.strike_price.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.strike_price.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.strike_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.strike_price, range, value, display)
  end

  return offset, value
end

-- Strike Price Precision
eurex_t7_rdi_fast_v14_0.strike_price_precision = {}

-- Dissect: Strike Price Precision
eurex_t7_rdi_fast_v14_0.strike_price_precision.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.strike_price_precision, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.strike_price_precision, range, 0)
    absent:set_text("Strike Price Precision: No Value")
  end

  return offset, value
end

-- Contract Multiplier
eurex_t7_rdi_fast_v14_0.contract_multiplier = {}

-- Display: Contract Multiplier
eurex_t7_rdi_fast_v14_0.contract_multiplier.display = function(value)
  if value == nil then
    return "Contract Multiplier: No Value"
  end

  return "Contract Multiplier: "..value
end

-- Dissect: Contract Multiplier
eurex_t7_rdi_fast_v14_0.contract_multiplier.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.contract_multiplier.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.contract_multiplier, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.contract_multiplier, range, value, display)
  end

  return offset, value
end

-- Put Or Call
eurex_t7_rdi_fast_v14_0.put_or_call = {}

-- Display: Put Or Call
eurex_t7_rdi_fast_v14_0.put_or_call.display = function(value)
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
eurex_t7_rdi_fast_v14_0.put_or_call.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.put_or_call.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.put_or_call, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.put_or_call, range, value, display)
  end

  return offset, value
end

-- Opt Attribute
eurex_t7_rdi_fast_v14_0.opt_attribute = {}

-- Dissect: Opt Attribute
eurex_t7_rdi_fast_v14_0.opt_attribute.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.opt_attribute, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.opt_attribute, range, 0)
    absent:set_text("Opt Attribute: No Value")
  end

  return offset, value
end

-- Exercise Style
eurex_t7_rdi_fast_v14_0.exercise_style = {}

-- Display: Exercise Style
eurex_t7_rdi_fast_v14_0.exercise_style.display = function(value)
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
eurex_t7_rdi_fast_v14_0.exercise_style.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.exercise_style.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.exercise_style, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.exercise_style, range, value, display)
  end

  return offset, value
end

-- Orig Strike Price
eurex_t7_rdi_fast_v14_0.orig_strike_price = {}

-- Display: Orig Strike Price
eurex_t7_rdi_fast_v14_0.orig_strike_price.display = function(value)
  if value == nil then
    return "Orig Strike Price: No Value"
  end

  return "Orig Strike Price: "..value
end

-- Dissect: Orig Strike Price
eurex_t7_rdi_fast_v14_0.orig_strike_price.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.orig_strike_price.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.orig_strike_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.orig_strike_price, range, value, display)
  end

  return offset, value
end

-- Contract Generation Number
eurex_t7_rdi_fast_v14_0.contract_generation_number = {}

-- Dissect: Contract Generation Number
eurex_t7_rdi_fast_v14_0.contract_generation_number.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.contract_generation_number, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.contract_generation_number, range, 0)
    absent:set_text("Contract Generation Number: No Value")
  end

  return offset, value
end

-- Low Exercise Price Option Indicator
eurex_t7_rdi_fast_v14_0.low_exercise_price_option_indicator = {}

-- Display: Low Exercise Price Option Indicator
eurex_t7_rdi_fast_v14_0.low_exercise_price_option_indicator.display = function(value)
  if value == nil then
    return "Low Exercise Price Option Indicator: No Value"
  end

  if value == 0 then
    return "Low Exercise Price Option Indicator: No (N)"
  end
  if value == 1 then
    return "Low Exercise Price Option Indicator: Yes (Y)"
  end

  return "Low Exercise Price Option Indicator: Unknown("..value..")"
end

-- Dissect: Low Exercise Price Option Indicator
eurex_t7_rdi_fast_v14_0.low_exercise_price_option_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.low_exercise_price_option_indicator.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.low_exercise_price_option_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.low_exercise_price_option_indicator, range, value, display)
  end

  return offset, value
end

-- Valuation Method
eurex_t7_rdi_fast_v14_0.valuation_method = {}

-- Display: Valuation Method
eurex_t7_rdi_fast_v14_0.valuation_method.display = function(value)
  if value == nil then
    return "Valuation Method: No Value"
  end

  if value == 0 then
    return "Valuation Method: PremiumStyle (EQTY)"
  end
  if value == 1 then
    return "Valuation Method: FuturesStyleMarkToMarket (FUT)"
  end

  return "Valuation Method: Unknown("..value..")"
end

-- Dissect: Valuation Method
eurex_t7_rdi_fast_v14_0.valuation_method.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.valuation_method.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.valuation_method, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.valuation_method, range, value, display)
  end

  return offset, value
end

-- Settl Method
eurex_t7_rdi_fast_v14_0.settl_method = {}

-- Display: Settl Method
eurex_t7_rdi_fast_v14_0.settl_method.display = function(value)
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
eurex_t7_rdi_fast_v14_0.settl_method.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.settl_method.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.settl_method, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.settl_method, range, value, display)
  end

  return offset, value
end

-- Settl Sub Method
eurex_t7_rdi_fast_v14_0.settl_sub_method = {}

-- Display: Settl Sub Method
eurex_t7_rdi_fast_v14_0.settl_sub_method.display = function(value)
  if value == nil then
    return "Settl Sub Method: No Value"
  end

  if value == 0 then
    return "Settl Sub Method: Shares (1)"
  end
  if value == 1 then
    return "Settl Sub Method: Derivatives (2)"
  end
  if value == 2 then
    return "Settl Sub Method: PaymentVsPayment (3)"
  end
  if value == 3 then
    return "Settl Sub Method: Notional (4)"
  end
  if value == 4 then
    return "Settl Sub Method: Cascade (5)"
  end
  if value == 5 then
    return "Settl Sub Method: Other (99)"
  end
  if value == 6 then
    return "Settl Sub Method: Energy (100)"
  end

  return "Settl Sub Method: Unknown("..value..")"
end

-- Dissect: Settl Sub Method
eurex_t7_rdi_fast_v14_0.settl_sub_method.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.settl_sub_method.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.settl_sub_method, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.settl_sub_method, range, value, display)
  end

  return offset, value
end

-- Prior Settl Price (Copy)
eurex_t7_rdi_fast_v14_0.prior_settl_price_copy_optional = {}

-- Display: Prior Settl Price (Copy)
eurex_t7_rdi_fast_v14_0.prior_settl_price_copy_optional.display = function(value)
  if value == nil then
    return "Prior Settl Price: No Value"
  end

  return "Prior Settl Price: "..value
end

-- Dissect: Prior Settl Price (Copy)
eurex_t7_rdi_fast_v14_0.prior_settl_price_copy_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.prior_settl_price_copy_optional.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.prior_settl_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.prior_settl_price, range, value, display)
  end

  return offset, value
end

-- Prior Settl Price (Copy)
eurex_t7_rdi_fast_v14_0.prior_settl_price_copy_required = {}

-- Display: Prior Settl Price (Copy)
eurex_t7_rdi_fast_v14_0.prior_settl_price_copy_required.display = function(value)
  if value == nil then
    return "Prior Settl Price: No Value"
  end

  return "Prior Settl Price: "..value
end

-- Dissect: Prior Settl Price (Copy)
eurex_t7_rdi_fast_v14_0.prior_settl_price_copy_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_stop_bit_signed(buffer, offset)
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

  local display = eurex_t7_rdi_fast_v14_0.prior_settl_price_copy_required.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.prior_settl_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.prior_settl_price, range, value, display)
  end

  return offset, value
end

-- Price Delta
eurex_t7_rdi_fast_v14_0.price_delta = {}

-- Display: Price Delta
eurex_t7_rdi_fast_v14_0.price_delta.display = function(value)
  if value == nil then
    return "Price Delta: No Value"
  end

  return "Price Delta: "..value
end

-- Dissect: Price Delta
eurex_t7_rdi_fast_v14_0.price_delta.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.price_delta.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.price_delta, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.price_delta, range, value, display)
  end

  return offset, value
end

-- Risk Sensitivity Factor
eurex_t7_rdi_fast_v14_0.risk_sensitivity_factor = {}

-- Display: Risk Sensitivity Factor
eurex_t7_rdi_fast_v14_0.risk_sensitivity_factor.display = function(value)
  if value == nil then
    return "Risk Sensitivity Factor: No Value"
  end

  return "Risk Sensitivity Factor: "..value
end

-- Dissect: Risk Sensitivity Factor
eurex_t7_rdi_fast_v14_0.risk_sensitivity_factor.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.risk_sensitivity_factor.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.risk_sensitivity_factor, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.risk_sensitivity_factor, range, value, display)
  end

  return offset, value
end

-- Symbol
eurex_t7_rdi_fast_v14_0.symbol = {}

-- Dissect: Symbol
eurex_t7_rdi_fast_v14_0.symbol.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.symbol, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.symbol, range, "")
    absent:set_text("Symbol: No Value")
  end

  return offset, value
end

-- List Method
eurex_t7_rdi_fast_v14_0.list_method = {}

-- Display: List Method
eurex_t7_rdi_fast_v14_0.list_method.display = function(value)
  if value == nil then
    return "List Method: No Value"
  end

  if value == 0 then
    return "List Method: PreListedOnly (0)"
  end
  if value == 1 then
    return "List Method: UserRequested (1)"
  end

  return "List Method: Unknown("..value..")"
end

-- Dissect: List Method
eurex_t7_rdi_fast_v14_0.list_method.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.list_method.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.list_method, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.list_method, range, value, display)
  end

  return offset, value
end

-- Last Fragment
eurex_t7_rdi_fast_v14_0.last_fragment = {}

-- Display: Last Fragment
eurex_t7_rdi_fast_v14_0.last_fragment.display = function(value)
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
eurex_t7_rdi_fast_v14_0.last_fragment.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 1
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.last_fragment.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.last_fragment, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.last_fragment, range, value, display)
  end

  return offset, value
end

-- Leg Ratio Multiplier
eurex_t7_rdi_fast_v14_0.leg_ratio_multiplier = {}

-- Dissect: Leg Ratio Multiplier
eurex_t7_rdi_fast_v14_0.leg_ratio_multiplier.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.leg_ratio_multiplier, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.leg_ratio_multiplier, range, 0)
    absent:set_text("Leg Ratio Multiplier: No Value")
  end

  return offset, value
end

-- Price Notation
eurex_t7_rdi_fast_v14_0.price_notation = {}

-- Display: Price Notation
eurex_t7_rdi_fast_v14_0.price_notation.display = function(value)
  if value == nil then
    return "Price Notation: No Value"
  end

  if value == 0 then
    return "Price Notation: AverageNetChange (1)"
  end
  if value == 1 then
    return "Price Notation: Average (2)"
  end

  return "Price Notation: Unknown("..value..")"
end

-- Dissect: Price Notation
eurex_t7_rdi_fast_v14_0.price_notation.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.price_notation.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.price_notation, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.price_notation, range, value, display)
  end

  return offset, value
end

-- No Legs
eurex_t7_rdi_fast_v14_0.no_legs = {}

-- Dissect: No Legs
eurex_t7_rdi_fast_v14_0.no_legs.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "No Legs was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_legs, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_legs, range, 0)
    absent:set_text("No Legs: No Value")
  end

  return offset, value
end

-- Leg Symbol
eurex_t7_rdi_fast_v14_0.leg_symbol = {}

-- Dissect: Leg Symbol
eurex_t7_rdi_fast_v14_0.leg_symbol.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.leg_symbol, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.leg_symbol, range, 0)
    absent:set_text("Leg Symbol: No Value")
  end

  return offset, value
end

-- Leg Security Id
eurex_t7_rdi_fast_v14_0.leg_security_id = {}

-- Dissect: Leg Security Id
eurex_t7_rdi_fast_v14_0.leg_security_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_int64(buffer, offset)
  value = (state.values[key] or Int64(0)) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.leg_security_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.leg_security_id, range, Int64(0))
    absent:set_text("Leg Security Id: No Value")
  end

  return offset, value
end

-- Leg Security Id Source
eurex_t7_rdi_fast_v14_0.leg_security_id_source = {}

-- Dissect: Leg Security Id Source
eurex_t7_rdi_fast_v14_0.leg_security_id_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "M"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.leg_security_id_source, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.leg_security_id_source, range, "")
    absent:set_text("Leg Security Id Source: No Value")
  end

  return offset, value
end

-- Leg Security Type
eurex_t7_rdi_fast_v14_0.leg_security_type = {}

-- Display: Leg Security Type
eurex_t7_rdi_fast_v14_0.leg_security_type.display = function(value)
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
eurex_t7_rdi_fast_v14_0.leg_security_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.leg_security_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.leg_security_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.leg_security_type, range, value, display)
  end

  return offset, value
end

-- Leg Side
eurex_t7_rdi_fast_v14_0.leg_side = {}

-- Display: Leg Side
eurex_t7_rdi_fast_v14_0.leg_side.display = function(value)
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
eurex_t7_rdi_fast_v14_0.leg_side.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.leg_side.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.leg_side, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.leg_side, range, value, display)
  end

  return offset, value
end

-- Leg Ratio Qty
eurex_t7_rdi_fast_v14_0.leg_ratio_qty = {}

-- Dissect: Leg Ratio Qty
eurex_t7_rdi_fast_v14_0.leg_ratio_qty.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 1
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.leg_ratio_qty, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.leg_ratio_qty, range, 0)
    absent:set_text("Leg Ratio Qty: No Value")
  end

  return offset, value
end

-- Leg Price
eurex_t7_rdi_fast_v14_0.leg_price = {}

-- Display: Leg Price
eurex_t7_rdi_fast_v14_0.leg_price.display = function(value)
  if value == nil then
    return "Leg Price: No Value"
  end

  return "Leg Price: "..value
end

-- Dissect: Leg Price
eurex_t7_rdi_fast_v14_0.leg_price.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.leg_price.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.leg_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.leg_price, range, value, display)
  end

  return offset, value
end

-- Related Price
eurex_t7_rdi_fast_v14_0.related_price = {}

-- Display: Related Price
eurex_t7_rdi_fast_v14_0.related_price.display = function(value)
  if value == nil then
    return "Related Price: No Value"
  end

  return "Related Price: "..value
end

-- Dissect: Related Price
eurex_t7_rdi_fast_v14_0.related_price.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.related_price.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.related_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.related_price, range, value, display)
  end

  return offset, value
end

-- Related Price Type
eurex_t7_rdi_fast_v14_0.related_price_type = {}

-- Display: Related Price Type
eurex_t7_rdi_fast_v14_0.related_price_type.display = function(value)
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
eurex_t7_rdi_fast_v14_0.related_price_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.related_price_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.related_price_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.related_price_type, range, value, display)
  end

  return offset, value
end

-- Trading Style
eurex_t7_rdi_fast_v14_0.trading_style = {}

-- Display: Trading Style
eurex_t7_rdi_fast_v14_0.trading_style.display = function(value)
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
eurex_t7_rdi_fast_v14_0.trading_style.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.trading_style.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.trading_style, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.trading_style, range, value, display)
  end

  return offset, value
end

-- Underlying Market Segment Id
eurex_t7_rdi_fast_v14_0.underlying_market_segment_id = {}

-- Dissect: Underlying Market Segment Id
eurex_t7_rdi_fast_v14_0.underlying_market_segment_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Underlying Market Segment Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.underlying_market_segment_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.underlying_market_segment_id, range, 0)
    absent:set_text("Underlying Market Segment Id: No Value")
  end

  return offset, value
end

-- Unit Of Measure
eurex_t7_rdi_fast_v14_0.unit_of_measure = {}

-- Dissect: Unit Of Measure
eurex_t7_rdi_fast_v14_0.unit_of_measure.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.unit_of_measure, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.unit_of_measure, range, "")
    absent:set_text("Unit Of Measure: No Value")
  end

  return offset, value
end

-- Asset Type
eurex_t7_rdi_fast_v14_0.asset_type = {}

-- Display: Asset Type
eurex_t7_rdi_fast_v14_0.asset_type.display = function(value)
  if value == nil then
    return "Asset Type: No Value"
  end

  if value == 0 then
    return "Asset Type: EmissionAllowances (0)"
  end
  if value == 1 then
    return "Asset Type: Other (1)"
  end

  return "Asset Type: Unknown("..value..")"
end

-- Dissect: Asset Type
eurex_t7_rdi_fast_v14_0.asset_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.asset_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.asset_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.asset_type, range, value, display)
  end

  return offset, value
end

-- Asset Sub Type
eurex_t7_rdi_fast_v14_0.asset_sub_type = {}

-- Display: Asset Sub Type
eurex_t7_rdi_fast_v14_0.asset_sub_type.display = function(value)
  if value == nil then
    return "Asset Sub Type: No Value"
  end

  if value == 0 then
    return "Asset Sub Type: EUAE (0)"
  end
  if value == 1 then
    return "Asset Sub Type: CERE (1)"
  end
  if value == 2 then
    return "Asset Sub Type: ERUE (2)"
  end
  if value == 3 then
    return "Asset Sub Type: EUAA (3)"
  end
  if value == 4 then
    return "Asset Sub Type: Other (4)"
  end

  return "Asset Sub Type: Unknown("..value..")"
end

-- Dissect: Asset Sub Type
eurex_t7_rdi_fast_v14_0.asset_sub_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.asset_sub_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.asset_sub_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.asset_sub_type, range, value, display)
  end

  return offset, value
end

-- Transact Time (Delta)
eurex_t7_rdi_fast_v14_0.transact_time_delta_optional = {}

-- Dissect: Transact Time (Delta)
eurex_t7_rdi_fast_v14_0.transact_time_delta_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.transact_time, range, NSTime.new(0, 0))
    absent:set_text("Transact Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.transact_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Transact Time (Delta)
eurex_t7_rdi_fast_v14_0.transact_time_delta_required = {}

-- Dissect: Transact Time (Delta)
eurex_t7_rdi_fast_v14_0.transact_time_delta_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_int64(buffer, offset)
  value = (state.values[key] or Int64(0)) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.transact_time, range, NSTime.new(0, 0))
    absent:set_text("Transact Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.transact_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Ref Tick Table Id
eurex_t7_rdi_fast_v14_0.ref_tick_table_id = {}

-- Dissect: Ref Tick Table Id
eurex_t7_rdi_fast_v14_0.ref_tick_table_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Ref Tick Table Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.ref_tick_table_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.ref_tick_table_id, range, 0)
    absent:set_text("Ref Tick Table Id: No Value")
  end

  return offset, value
end

-- Settl Currency
eurex_t7_rdi_fast_v14_0.settl_currency = {}

-- Dissect: Settl Currency
eurex_t7_rdi_fast_v14_0.settl_currency.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = "EUR"
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.settl_currency, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.settl_currency, range, "")
    absent:set_text("Settl Currency: No Value")
  end

  return offset, value
end

-- Deposit Type
eurex_t7_rdi_fast_v14_0.deposit_type = {}

-- Display: Deposit Type
eurex_t7_rdi_fast_v14_0.deposit_type.display = function(value)
  if value == nil then
    return "Deposit Type: No Value"
  end

  if value == 0 then
    return "Deposit Type: AUSLANDSKASSENVEREIN (1)"
  end
  if value == 1 then
    return "Deposit Type: GIROSAMMELVERWAHRUNG (2)"
  end
  if value == 2 then
    return "Deposit Type: STREIFBANDVERWAHRUNG (3)"
  end
  if value == 3 then
    return "Deposit Type: WERTPAPIERRECHNUNG (4)"
  end
  if value == 4 then
    return "Deposit Type: NCSCviaT2S (5)"
  end

  return "Deposit Type: Unknown("..value..")"
end

-- Dissect: Deposit Type
eurex_t7_rdi_fast_v14_0.deposit_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.deposit_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.deposit_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.deposit_type, range, value, display)
  end

  return offset, value
end

-- Issue Date
eurex_t7_rdi_fast_v14_0.issue_date = {}

-- Dissect: Issue Date
eurex_t7_rdi_fast_v14_0.issue_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.issue_date, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.issue_date, range, 0)
    absent:set_text("Issue Date: No Value")
  end

  return offset, value
end

-- Min Trade Vol
eurex_t7_rdi_fast_v14_0.min_trade_vol = {}

-- Display: Min Trade Vol
eurex_t7_rdi_fast_v14_0.min_trade_vol.display = function(value)
  if value == nil then
    return "Min Trade Vol: No Value"
  end

  return "Min Trade Vol: "..value
end

-- Dissect: Min Trade Vol
eurex_t7_rdi_fast_v14_0.min_trade_vol.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.min_trade_vol.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.min_trade_vol, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.min_trade_vol, range, value, display)
  end

  return offset, value
end

-- Quoting Start Time
eurex_t7_rdi_fast_v14_0.quoting_start_time = {}

-- Dissect: Quoting Start Time
eurex_t7_rdi_fast_v14_0.quoting_start_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.quoting_start_time, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.quoting_start_time, range, "")
    absent:set_text("Quoting Start Time: No Value")
  end

  return offset, value
end

-- Quoting End Time
eurex_t7_rdi_fast_v14_0.quoting_end_time = {}

-- Dissect: Quoting End Time
eurex_t7_rdi_fast_v14_0.quoting_end_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.quoting_end_time, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.quoting_end_time, range, "")
    absent:set_text("Quoting End Time: No Value")
  end

  return offset, value
end

-- Instrument Auction Type
eurex_t7_rdi_fast_v14_0.instrument_auction_type = {}

-- Display: Instrument Auction Type
eurex_t7_rdi_fast_v14_0.instrument_auction_type.display = function(value)
  if value == nil then
    return "Instrument Auction Type: No Value"
  end

  if value == 0 then
    return "Instrument Auction Type: Default (0)"
  end
  if value == 1 then
    return "Instrument Auction Type: SingleAuction (1)"
  end
  if value == 2 then
    return "Instrument Auction Type: SpecialAuction (2)"
  end

  return "Instrument Auction Type: Unknown("..value..")"
end

-- Dissect: Instrument Auction Type
eurex_t7_rdi_fast_v14_0.instrument_auction_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.instrument_auction_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_auction_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_auction_type, range, value, display)
  end

  return offset, value
end

-- Midpoint Trading
eurex_t7_rdi_fast_v14_0.midpoint_trading = {}

-- Display: Midpoint Trading
eurex_t7_rdi_fast_v14_0.midpoint_trading.display = function(value)
  if value == nil then
    return "Midpoint Trading: No Value"
  end

  if value == 0 then
    return "Midpoint Trading: Disabled (0)"
  end
  if value == 1 then
    return "Midpoint Trading: Enabled (1)"
  end

  return "Midpoint Trading: Unknown("..value..")"
end

-- Dissect: Midpoint Trading
eurex_t7_rdi_fast_v14_0.midpoint_trading.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.midpoint_trading.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.midpoint_trading, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.midpoint_trading, range, value, display)
  end

  return offset, value
end

-- Midpoint Exec Venue Id
eurex_t7_rdi_fast_v14_0.midpoint_exec_venue_id = {}

-- Dissect: Midpoint Exec Venue Id
eurex_t7_rdi_fast_v14_0.midpoint_exec_venue_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.midpoint_exec_venue_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.midpoint_exec_venue_id, range, "")
    absent:set_text("Midpoint Exec Venue Id: No Value")
  end

  return offset, value
end

-- No Instrument Parties
eurex_t7_rdi_fast_v14_0.no_instrument_parties = {}

-- Dissect: No Instrument Parties
eurex_t7_rdi_fast_v14_0.no_instrument_parties.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_instrument_parties, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_instrument_parties, range, 0)
    absent:set_text("No Instrument Parties: No Value")
  end

  return offset, value
end

-- Instrument Party Id
eurex_t7_rdi_fast_v14_0.instrument_party_id = {}

-- Dissect: Instrument Party Id
eurex_t7_rdi_fast_v14_0.instrument_party_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Instrument Party Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_party_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_party_id, range, "")
    absent:set_text("Instrument Party Id: No Value")
  end

  return offset, value
end

-- Instrument Party Id Source
eurex_t7_rdi_fast_v14_0.instrument_party_id_source = {}

-- Display: Instrument Party Id Source
eurex_t7_rdi_fast_v14_0.instrument_party_id_source.display = function(value)
  if value == nil then
    return "Instrument Party Id Source: No Value"
  end

  if value == 0 then
    return "Instrument Party Id Source: Proprietary (D)"
  end

  return "Instrument Party Id Source: Unknown("..value..")"
end

-- Dissect: Instrument Party Id Source
eurex_t7_rdi_fast_v14_0.instrument_party_id_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Instrument Party Id Source was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.instrument_party_id_source.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_party_id_source, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_party_id_source, range, value, display)
  end

  return offset, value
end

-- Instrument Party Role
eurex_t7_rdi_fast_v14_0.instrument_party_role = {}

-- Display: Instrument Party Role
eurex_t7_rdi_fast_v14_0.instrument_party_role.display = function(value)
  if value == nil then
    return "Instrument Party Role: No Value"
  end

  if value == 0 then
    return "Instrument Party Role: ClearingOrganization (21)"
  end
  if value == 1 then
    return "Instrument Party Role: MarketMaker (66)"
  end

  return "Instrument Party Role: Unknown("..value..")"
end

-- Dissect: Instrument Party Role
eurex_t7_rdi_fast_v14_0.instrument_party_role.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Instrument Party Role was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.instrument_party_role.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_party_role, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_party_role, range, value, display)
  end

  return offset, value
end

-- Instrument Party Role Qualifier
eurex_t7_rdi_fast_v14_0.instrument_party_role_qualifier = {}

-- Display: Instrument Party Role Qualifier
eurex_t7_rdi_fast_v14_0.instrument_party_role_qualifier.display = function(value)
  if value == nil then
    return "Instrument Party Role Qualifier: No Value"
  end

  if value == 0 then
    return "Instrument Party Role Qualifier: DesignatedSponsor (20)"
  end
  if value == 1 then
    return "Instrument Party Role Qualifier: Specialist (21)"
  end

  return "Instrument Party Role Qualifier: Unknown("..value..")"
end

-- Dissect: Instrument Party Role Qualifier
eurex_t7_rdi_fast_v14_0.instrument_party_role_qualifier.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.instrument_party_role_qualifier.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_party_role_qualifier, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_party_role_qualifier, range, value, display)
  end

  return offset, value
end

-- Coupon Rate
eurex_t7_rdi_fast_v14_0.coupon_rate = {}

-- Display: Coupon Rate
eurex_t7_rdi_fast_v14_0.coupon_rate.display = function(value)
  if value == nil then
    return "Coupon Rate: No Value"
  end

  return "Coupon Rate: "..value
end

-- Dissect: Coupon Rate
eurex_t7_rdi_fast_v14_0.coupon_rate.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.coupon_rate.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.coupon_rate, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.coupon_rate, range, value, display)
  end

  return offset, value
end

-- Previous Coupon Payment Date
eurex_t7_rdi_fast_v14_0.previous_coupon_payment_date = {}

-- Dissect: Previous Coupon Payment Date
eurex_t7_rdi_fast_v14_0.previous_coupon_payment_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.previous_coupon_payment_date, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.previous_coupon_payment_date, range, 0)
    absent:set_text("Previous Coupon Payment Date: No Value")
  end

  return offset, value
end

-- Coupon Payment Date
eurex_t7_rdi_fast_v14_0.coupon_payment_date = {}

-- Dissect: Coupon Payment Date
eurex_t7_rdi_fast_v14_0.coupon_payment_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.coupon_payment_date, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.coupon_payment_date, range, 0)
    absent:set_text("Coupon Payment Date: No Value")
  end

  return offset, value
end

-- Coupon Day Count
eurex_t7_rdi_fast_v14_0.coupon_day_count = {}

-- Display: Coupon Day Count
eurex_t7_rdi_fast_v14_0.coupon_day_count.display = function(value)
  if value == nil then
    return "Coupon Day Count: No Value"
  end

  if value == 0 then
    return "Coupon Day Count: Basis30360 (1)"
  end
  if value == 1 then
    return "Coupon Day Count: M30360 (3)"
  end
  if value == 2 then
    return "Coupon Day Count: Act360 (6)"
  end
  if value == 3 then
    return "Coupon Day Count: Act365Fixed (7)"
  end
  if value == 4 then
    return "Coupon Day Count: ActActAFB (8)"
  end
  if value == 5 then
    return "Coupon Day Count: ActActIcma (9)"
  end
  if value == 6 then
    return "Coupon Day Count: ActActIsda (11)"
  end
  if value == 7 then
    return "Coupon Day Count: Act365L (14)"
  end

  return "Coupon Day Count: Unknown("..value..")"
end

-- Dissect: Coupon Day Count
eurex_t7_rdi_fast_v14_0.coupon_day_count.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.coupon_day_count.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.coupon_day_count, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.coupon_day_count, range, value, display)
  end

  return offset, value
end

-- Coupon Type
eurex_t7_rdi_fast_v14_0.coupon_type = {}

-- Display: Coupon Type
eurex_t7_rdi_fast_v14_0.coupon_type.display = function(value)
  if value == nil then
    return "Coupon Type: No Value"
  end

  if value == 0 then
    return "Coupon Type: Zero (1)"
  end
  if value == 1 then
    return "Coupon Type: FixedRate (2)"
  end
  if value == 2 then
    return "Coupon Type: FloatingRate (3)"
  end
  if value == 3 then
    return "Coupon Type: Structured (4)"
  end

  return "Coupon Type: Unknown("..value..")"
end

-- Dissect: Coupon Type
eurex_t7_rdi_fast_v14_0.coupon_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.coupon_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.coupon_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.coupon_type, range, value, display)
  end

  return offset, value
end

-- Country Of Issue
eurex_t7_rdi_fast_v14_0.country_of_issue = {}

-- Dissect: Country Of Issue
eurex_t7_rdi_fast_v14_0.country_of_issue.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.country_of_issue, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.country_of_issue, range, "")
    absent:set_text("Country Of Issue: No Value")
  end

  return offset, value
end

-- Flat Indicator
eurex_t7_rdi_fast_v14_0.flat_indicator = {}

-- Display: Flat Indicator
eurex_t7_rdi_fast_v14_0.flat_indicator.display = function(value)
  if value == nil then
    return "Flat Indicator: No Value"
  end

  if value == 0 then
    return "Flat Indicator: NoFlat (1)"
  end
  if value == 1 then
    return "Flat Indicator: Flat (2)"
  end
  if value == 2 then
    return "Flat Indicator: XFlat (3)"
  end

  return "Flat Indicator: Unknown("..value..")"
end

-- Dissect: Flat Indicator
eurex_t7_rdi_fast_v14_0.flat_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.flat_indicator.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.flat_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.flat_indicator, range, value, display)
  end

  return offset, value
end

-- Warrant Type
eurex_t7_rdi_fast_v14_0.warrant_type = {}

-- Display: Warrant Type
eurex_t7_rdi_fast_v14_0.warrant_type.display = function(value)
  if value == nil then
    return "Warrant Type: No Value"
  end

  if value == 0 then
    return "Warrant Type: CALL (1)"
  end
  if value == 1 then
    return "Warrant Type: PUT (2)"
  end
  if value == 2 then
    return "Warrant Type: RANGE (3)"
  end
  if value == 3 then
    return "Warrant Type: CERTIFICATE (4)"
  end
  if value == 4 then
    return "Warrant Type: OTHER (5)"
  end

  return "Warrant Type: Unknown("..value..")"
end

-- Dissect: Warrant Type
eurex_t7_rdi_fast_v14_0.warrant_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.warrant_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.warrant_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.warrant_type, range, value, display)
  end

  return offset, value
end

-- Cover Indicator
eurex_t7_rdi_fast_v14_0.cover_indicator = {}

-- Display: Cover Indicator
eurex_t7_rdi_fast_v14_0.cover_indicator.display = function(value)
  if value == nil then
    return "Cover Indicator: No Value"
  end

  if value == 0 then
    return "Cover Indicator: Intraday (1)"
  end
  if value == 1 then
    return "Cover Indicator: Longterm (2)"
  end
  if value == 2 then
    return "Cover Indicator: Activated (3)"
  end

  return "Cover Indicator: Unknown("..value..")"
end

-- Dissect: Cover Indicator
eurex_t7_rdi_fast_v14_0.cover_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.cover_indicator.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.cover_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.cover_indicator, range, value, display)
  end

  return offset, value
end

-- Volatility Corridor Opening Auction
eurex_t7_rdi_fast_v14_0.volatility_corridor_opening_auction = {}

-- Dissect: Volatility Corridor Opening Auction
eurex_t7_rdi_fast_v14_0.volatility_corridor_opening_auction.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.volatility_corridor_opening_auction, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.volatility_corridor_opening_auction, range, 0)
    absent:set_text("Volatility Corridor Opening Auction: No Value")
  end

  return offset, value
end

-- Volatility Corridor Intraday Auction
eurex_t7_rdi_fast_v14_0.volatility_corridor_intraday_auction = {}

-- Dissect: Volatility Corridor Intraday Auction
eurex_t7_rdi_fast_v14_0.volatility_corridor_intraday_auction.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.volatility_corridor_intraday_auction, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.volatility_corridor_intraday_auction, range, 0)
    absent:set_text("Volatility Corridor Intraday Auction: No Value")
  end

  return offset, value
end

-- Volatility Corridor Closing Auction
eurex_t7_rdi_fast_v14_0.volatility_corridor_closing_auction = {}

-- Dissect: Volatility Corridor Closing Auction
eurex_t7_rdi_fast_v14_0.volatility_corridor_closing_auction.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.volatility_corridor_closing_auction, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.volatility_corridor_closing_auction, range, 0)
    absent:set_text("Volatility Corridor Closing Auction: No Value")
  end

  return offset, value
end

-- Volatility Corridor Continuous
eurex_t7_rdi_fast_v14_0.volatility_corridor_continuous = {}

-- Dissect: Volatility Corridor Continuous
eurex_t7_rdi_fast_v14_0.volatility_corridor_continuous.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.volatility_corridor_continuous, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.volatility_corridor_continuous, range, 0)
    absent:set_text("Volatility Corridor Continuous: No Value")
  end

  return offset, value
end

-- Volatility Corridor Retail Auction
eurex_t7_rdi_fast_v14_0.volatility_corridor_retail_auction = {}

-- Dissect: Volatility Corridor Retail Auction
eurex_t7_rdi_fast_v14_0.volatility_corridor_retail_auction.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.volatility_corridor_retail_auction, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.volatility_corridor_retail_auction, range, 0)
    absent:set_text("Volatility Corridor Retail Auction: No Value")
  end

  return offset, value
end

-- Fixed Abs Vola Interruption Limit
eurex_t7_rdi_fast_v14_0.fixed_abs_vola_interruption_limit = {}

-- Display: Fixed Abs Vola Interruption Limit
eurex_t7_rdi_fast_v14_0.fixed_abs_vola_interruption_limit.display = function(value)
  if value == nil then
    return "Fixed Abs Vola Interruption Limit: No Value"
  end

  return "Fixed Abs Vola Interruption Limit: "..value
end

-- Dissect: Fixed Abs Vola Interruption Limit
eurex_t7_rdi_fast_v14_0.fixed_abs_vola_interruption_limit.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.fixed_abs_vola_interruption_limit.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.fixed_abs_vola_interruption_limit, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.fixed_abs_vola_interruption_limit, range, value, display)
  end

  return offset, value
end

-- Float Abs Vola Interruption Limit
eurex_t7_rdi_fast_v14_0.float_abs_vola_interruption_limit = {}

-- Display: Float Abs Vola Interruption Limit
eurex_t7_rdi_fast_v14_0.float_abs_vola_interruption_limit.display = function(value)
  if value == nil then
    return "Float Abs Vola Interruption Limit: No Value"
  end

  return "Float Abs Vola Interruption Limit: "..value
end

-- Dissect: Float Abs Vola Interruption Limit
eurex_t7_rdi_fast_v14_0.float_abs_vola_interruption_limit.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.float_abs_vola_interruption_limit.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.float_abs_vola_interruption_limit, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.float_abs_vola_interruption_limit, range, value, display)
  end

  return offset, value
end

-- Fixed Pct Vola Interruption Limit
eurex_t7_rdi_fast_v14_0.fixed_pct_vola_interruption_limit = {}

-- Display: Fixed Pct Vola Interruption Limit
eurex_t7_rdi_fast_v14_0.fixed_pct_vola_interruption_limit.display = function(value)
  if value == nil then
    return "Fixed Pct Vola Interruption Limit: No Value"
  end

  return "Fixed Pct Vola Interruption Limit: "..value
end

-- Dissect: Fixed Pct Vola Interruption Limit
eurex_t7_rdi_fast_v14_0.fixed_pct_vola_interruption_limit.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.fixed_pct_vola_interruption_limit.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.fixed_pct_vola_interruption_limit, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.fixed_pct_vola_interruption_limit, range, value, display)
  end

  return offset, value
end

-- Float Pct Vola Interruption Limit
eurex_t7_rdi_fast_v14_0.float_pct_vola_interruption_limit = {}

-- Display: Float Pct Vola Interruption Limit
eurex_t7_rdi_fast_v14_0.float_pct_vola_interruption_limit.display = function(value)
  if value == nil then
    return "Float Pct Vola Interruption Limit: No Value"
  end

  return "Float Pct Vola Interruption Limit: "..value
end

-- Dissect: Float Pct Vola Interruption Limit
eurex_t7_rdi_fast_v14_0.float_pct_vola_interruption_limit.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.float_pct_vola_interruption_limit.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.float_pct_vola_interruption_limit, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.float_pct_vola_interruption_limit, range, value, display)
  end

  return offset, value
end

-- No Security Classifications
eurex_t7_rdi_fast_v14_0.no_security_classifications = {}

-- Dissect: No Security Classifications
eurex_t7_rdi_fast_v14_0.no_security_classifications.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value = 1
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_security_classifications, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_security_classifications, range, 0)
    absent:set_text("No Security Classifications: No Value")
  end

  return offset, value
end

-- Security Classification Reason
eurex_t7_rdi_fast_v14_0.security_classification_reason = {}

-- Display: Security Classification Reason
eurex_t7_rdi_fast_v14_0.security_classification_reason.display = function(value)
  if value == nil then
    return "Security Classification Reason: No Value"
  end

  if value == 0 then
    return "Security Classification Reason: Fee (0)"
  end
  if value == 1 then
    return "Security Classification Reason: CreditControls (1)"
  end
  if value == 2 then
    return "Security Classification Reason: Margin (2)"
  end
  if value == 3 then
    return "Security Classification Reason: EntitlementOrEligibility (3)"
  end
  if value == 4 then
    return "Security Classification Reason: MarketData (4)"
  end
  if value == 5 then
    return "Security Classification Reason: AccountSelection (5)"
  end
  if value == 6 then
    return "Security Classification Reason: DeliveryProcess (6)"
  end
  if value == 7 then
    return "Security Classification Reason: Sector (7)"
  end

  return "Security Classification Reason: Unknown("..value..")"
end

-- Dissect: Security Classification Reason
eurex_t7_rdi_fast_v14_0.security_classification_reason.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 3
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.security_classification_reason.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_classification_reason, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_classification_reason, range, value, display)
  end

  return offset, value
end

-- Security Classification Value
eurex_t7_rdi_fast_v14_0.security_classification_value = {}

-- Display: Security Classification Value
eurex_t7_rdi_fast_v14_0.security_classification_value.display = function(value)
  if value == nil then
    return "Security Classification Value: No Value"
  end

  if value == 0 then
    return "Security Classification Value: EligibleForAllTradingActivities (1)"
  end
  if value == 1 then
    return "Security Classification Value: NotEligibleForOTCTradeUpload (2)"
  end
  if value == 2 then
    return "Security Classification Value: EligibleOnlyForOTCTradeUpload (3)"
  end

  return "Security Classification Value: Unknown("..value..")"
end

-- Dissect: Security Classification Value
eurex_t7_rdi_fast_v14_0.security_classification_value.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Security Classification Value was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.security_classification_value.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_classification_value, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_classification_value, range, value, display)
  end

  return offset, value
end

-- No Instr Attrib
eurex_t7_rdi_fast_v14_0.no_instr_attrib = {}

-- Dissect: No Instr Attrib
eurex_t7_rdi_fast_v14_0.no_instr_attrib.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_instr_attrib, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_instr_attrib, range, 0)
    absent:set_text("No Instr Attrib: No Value")
  end

  return offset, value
end

-- Instr Attrib Type
eurex_t7_rdi_fast_v14_0.instr_attrib_type = {}

-- Display: Instr Attrib Type
eurex_t7_rdi_fast_v14_0.instr_attrib_type.display = function(value)
  if value == nil then
    return "Instr Attrib Type: No Value"
  end

  if value == 0 then
    return "Instr Attrib Type: MinimumReserveOrderVolume (100)"
  end
  if value == 1 then
    return "Instr Attrib Type: MinimumDisplayVolume (101)"
  end
  if value == 2 then
    return "Instr Attrib Type: IssuerName (102)"
  end
  if value == 3 then
    return "Instr Attrib Type: IssuerNumber (103)"
  end
  if value == 4 then
    return "Instr Attrib Type: MarketType (104)"
  end
  if value == 5 then
    return "Instr Attrib Type: MarketTypeSupplement (105)"
  end
  if value == 6 then
    return "Instr Attrib Type: ReportingMarket (106)"
  end
  if value == 7 then
    return "Instr Attrib Type: CumExIndicator (107)"
  end
  if value == 8 then
    return "Instr Attrib Type: ProductAssignmentGroup (108)"
  end
  if value == 9 then
    return "Instr Attrib Type: ProductAssignmentGroupDescription (109)"
  end
  if value == 10 then
    return "Instr Attrib Type: DomesticIndicator (110)"
  end
  if value == 11 then
    return "Instr Attrib Type: PreTradeLISValue (111)"
  end
  if value == 12 then
    return "Instr Attrib Type: IlliquidAsDefinedByExchange (112)"
  end
  if value == 13 then
    return "Instr Attrib Type: MarketMakingObligation (113)"
  end
  if value == 14 then
    return "Instr Attrib Type: LiquidAsDefinedByRegulator (114)"
  end
  if value == 15 then
    return "Instr Attrib Type: EligibleForStressedMarketConditions (115)"
  end
  if value == 16 then
    return "Instr Attrib Type: MultiCCPEligible (117)"
  end
  if value == 17 then
    return "Instr Attrib Type: PoolFactor (118)"
  end
  if value == 18 then
    return "Instr Attrib Type: IndexationCoefficient (119)"
  end
  if value == 19 then
    return "Instr Attrib Type: TradingOnTermsOfIssue (120)"
  end
  if value == 20 then
    return "Instr Attrib Type: IssuerBusinessUnit (121)"
  end
  if value == 21 then
    return "Instr Attrib Type: AllowKnockOut (122)"
  end
  if value == 22 then
    return "Instr Attrib Type: HasPLP (123)"
  end
  if value == 23 then
    return "Instr Attrib Type: PLPDeferralTime (124)"
  end
  if value == 24 then
    return "Instr Attrib Type: WarrantStrike (125)"
  end
  if value == 25 then
    return "Instr Attrib Type: ReportingMarketTES (126)"
  end
  if value == 26 then
    return "Instr Attrib Type: LiquidityProviderUserGroup (127)"
  end
  if value == 27 then
    return "Instr Attrib Type: SpecialistUserGroup (128)"
  end
  if value == 28 then
    return "Instr Attrib Type: LiquidityClass (129)"
  end

  return "Instr Attrib Type: Unknown("..value..")"
end

-- Dissect: Instr Attrib Type
eurex_t7_rdi_fast_v14_0.instr_attrib_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Instr Attrib Type was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.instr_attrib_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instr_attrib_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instr_attrib_type, range, value, display)
  end

  return offset, value
end

-- Instr Attrib Value
eurex_t7_rdi_fast_v14_0.instr_attrib_value = {}

-- Dissect: Instr Attrib Value
eurex_t7_rdi_fast_v14_0.instr_attrib_value.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Instr Attrib Value was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instr_attrib_value, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instr_attrib_value, range, "")
    absent:set_text("Instr Attrib Value: No Value")
  end

  return offset, value
end

-- No Events
eurex_t7_rdi_fast_v14_0.no_events = {}

-- Dissect: No Events
eurex_t7_rdi_fast_v14_0.no_events.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_events, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_events, range, 0)
    absent:set_text("No Events: No Value")
  end

  return offset, value
end

-- Event Type
eurex_t7_rdi_fast_v14_0.event_type = {}

-- Display: Event Type
eurex_t7_rdi_fast_v14_0.event_type.display = function(value)
  if value == nil then
    return "Event Type: No Value"
  end

  if value == 0 then
    return "Event Type: LastEligibleTradeDate (7)"
  end
  if value == 1 then
    return "Event Type: FirstEligibleTradeDate (100)"
  end
  if value == 2 then
    return "Event Type: CapitalAdjustmentDate (101)"
  end
  if value == 3 then
    return "Event Type: DividendPaymentDate (102)"
  end
  if value == 4 then
    return "Event Type: FinalSettlementReferenceDate (115)"
  end

  return "Event Type: Unknown("..value..")"
end

-- Dissect: Event Type
eurex_t7_rdi_fast_v14_0.event_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.event_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.event_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.event_type, range, value, display)
  end

  return offset, value
end

-- Event Date
eurex_t7_rdi_fast_v14_0.event_date = {}

-- Dissect: Event Date
eurex_t7_rdi_fast_v14_0.event_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Event Date was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.event_date, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.event_date, range, 0)
    absent:set_text("Event Date: No Value")
  end

  return offset, value
end

-- Instrument Price Precision
eurex_t7_rdi_fast_v14_0.instrument_price_precision = {}

-- Dissect: Instrument Price Precision
eurex_t7_rdi_fast_v14_0.instrument_price_precision.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_price_precision, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_price_precision, range, 0)
    absent:set_text("Instrument Price Precision: No Value")
  end

  return offset, value
end

-- Min Price Increment
eurex_t7_rdi_fast_v14_0.min_price_increment = {}

-- Display: Min Price Increment
eurex_t7_rdi_fast_v14_0.min_price_increment.display = function(value)
  if value == nil then
    return "Min Price Increment: No Value"
  end

  return "Min Price Increment: "..value
end

-- Dissect: Min Price Increment
eurex_t7_rdi_fast_v14_0.min_price_increment.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.min_price_increment.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.min_price_increment, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.min_price_increment, range, value, display)
  end

  return offset, value
end

-- Min Price Increment Clearing
eurex_t7_rdi_fast_v14_0.min_price_increment_clearing = {}

-- Display: Min Price Increment Clearing
eurex_t7_rdi_fast_v14_0.min_price_increment_clearing.display = function(value)
  if value == nil then
    return "Min Price Increment Clearing: No Value"
  end

  return "Min Price Increment Clearing: "..value
end

-- Dissect: Min Price Increment Clearing
eurex_t7_rdi_fast_v14_0.min_price_increment_clearing.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.min_price_increment_clearing.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.min_price_increment_clearing, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.min_price_increment_clearing, range, value, display)
  end

  return offset, value
end

-- Min Price Increment Amount
eurex_t7_rdi_fast_v14_0.min_price_increment_amount = {}

-- Display: Min Price Increment Amount
eurex_t7_rdi_fast_v14_0.min_price_increment_amount.display = function(value)
  if value == nil then
    return "Min Price Increment Amount: No Value"
  end

  return "Min Price Increment Amount: "..value
end

-- Dissect: Min Price Increment Amount
eurex_t7_rdi_fast_v14_0.min_price_increment_amount.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.min_price_increment_amount.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.min_price_increment_amount, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.min_price_increment_amount, range, value, display)
  end

  return offset, value
end

-- Maturity Date
eurex_t7_rdi_fast_v14_0.maturity_date = {}

-- Dissect: Maturity Date
eurex_t7_rdi_fast_v14_0.maturity_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.maturity_date, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.maturity_date, range, 0)
    absent:set_text("Maturity Date: No Value")
  end

  return offset, value
end

-- Maturity Month Year
eurex_t7_rdi_fast_v14_0.maturity_month_year = {}

-- Dissect: Maturity Month Year
eurex_t7_rdi_fast_v14_0.maturity_month_year.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.maturity_month_year, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.maturity_month_year, range, 0)
    absent:set_text("Maturity Month Year: No Value")
  end

  return offset, value
end

-- Security Sub Type
eurex_t7_rdi_fast_v14_0.security_sub_type = {}

-- Dissect: Security Sub Type
eurex_t7_rdi_fast_v14_0.security_sub_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_sub_type, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_sub_type, range, 0)
    absent:set_text("Security Sub Type: No Value")
  end

  return offset, value
end

-- Related Security Id
eurex_t7_rdi_fast_v14_0.related_security_id = {}

-- Dissect: Related Security Id
eurex_t7_rdi_fast_v14_0.related_security_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_int64(buffer, offset)
  value = (state.values[key] or Int64(0)) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.related_security_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.related_security_id, range, Int64(0))
    absent:set_text("Related Security Id: No Value")
  end

  return offset, value
end

-- Related Security Id Source
eurex_t7_rdi_fast_v14_0.related_security_id_source = {}

-- Dissect: Related Security Id Source
eurex_t7_rdi_fast_v14_0.related_security_id_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "M"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.related_security_id_source, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.related_security_id_source, range, "")
    absent:set_text("Related Security Id Source: No Value")
  end

  return offset, value
end

-- No Market Segments
eurex_t7_rdi_fast_v14_0.no_market_segments = {}

-- Dissect: No Market Segments
eurex_t7_rdi_fast_v14_0.no_market_segments.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 1

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_market_segments, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_market_segments, range, 0)
    absent:set_text("No Market Segments: No Value")
  end

  return offset, value
end

-- Implied Market Indicator
eurex_t7_rdi_fast_v14_0.implied_market_indicator = {}

-- Display: Implied Market Indicator
eurex_t7_rdi_fast_v14_0.implied_market_indicator.display = function(value)
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
eurex_t7_rdi_fast_v14_0.implied_market_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.implied_market_indicator.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.implied_market_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.implied_market_indicator, range, value, display)
  end

  return offset, value
end

-- Multileg Model
eurex_t7_rdi_fast_v14_0.multileg_model = {}

-- Display: Multileg Model
eurex_t7_rdi_fast_v14_0.multileg_model.display = function(value)
  if value == nil then
    return "Multileg Model: No Value"
  end

  if value == 0 then
    return "Multileg Model: PredefinedMultilegSecurity (0)"
  end
  if value == 1 then
    return "Multileg Model: UserDefinedMultilegSecurity (1)"
  end

  return "Multileg Model: Unknown("..value..")"
end

-- Dissect: Multileg Model
eurex_t7_rdi_fast_v14_0.multileg_model.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.multileg_model.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.multileg_model, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.multileg_model, range, value, display)
  end

  return offset, value
end

-- Price Type
eurex_t7_rdi_fast_v14_0.price_type = {}

-- Display: Price Type
eurex_t7_rdi_fast_v14_0.price_type.display = function(value)
  if value == nil then
    return "Price Type: No Value"
  end

  if value == 0 then
    return "Price Type: Percent (1)"
  end
  if value == 1 then
    return "Price Type: Shares (2)"
  end
  if value == 2 then
    return "Price Type: Points (22)"
  end

  return "Price Type: Unknown("..value..")"
end

-- Dissect: Price Type
eurex_t7_rdi_fast_v14_0.price_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.price_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.price_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.price_type, range, value, display)
  end

  return offset, value
end

-- Post Trade Anonymity
eurex_t7_rdi_fast_v14_0.post_trade_anonymity = {}

-- Display: Post Trade Anonymity
eurex_t7_rdi_fast_v14_0.post_trade_anonymity.display = function(value)
  if value == nil then
    return "Post Trade Anonymity: No Value"
  end

  if value == 0 then
    return "Post Trade Anonymity: Disabled (0)"
  end
  if value == 1 then
    return "Post Trade Anonymity: Enabled (1)"
  end
  if value == 2 then
    return "Post Trade Anonymity: CentralCounterparty (2)"
  end

  return "Post Trade Anonymity: Unknown("..value..")"
end

-- Dissect: Post Trade Anonymity
eurex_t7_rdi_fast_v14_0.post_trade_anonymity.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.post_trade_anonymity.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.post_trade_anonymity, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.post_trade_anonymity, range, value, display)
  end

  return offset, value
end

-- Settl Business Days
eurex_t7_rdi_fast_v14_0.settl_business_days = {}

-- Dissect: Settl Business Days
eurex_t7_rdi_fast_v14_0.settl_business_days.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 2
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.settl_business_days, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.settl_business_days, range, 0)
    absent:set_text("Settl Business Days: No Value")
  end

  return offset, value
end

-- No Trading Session Rules
eurex_t7_rdi_fast_v14_0.no_trading_session_rules = {}

-- Dissect: No Trading Session Rules
eurex_t7_rdi_fast_v14_0.no_trading_session_rules.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value = 1
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_trading_session_rules, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_trading_session_rules, range, 0)
    absent:set_text("No Trading Session Rules: No Value")
  end

  return offset, value
end

-- Trading Session Id
eurex_t7_rdi_fast_v14_0.trading_session_id = {}

-- Display: Trading Session Id
eurex_t7_rdi_fast_v14_0.trading_session_id.display = function(value)
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

-- Dissect: Trading Session Id
eurex_t7_rdi_fast_v14_0.trading_session_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 0

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.trading_session_id.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.trading_session_id, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.trading_session_id, range, value, display)
  end

  return offset, value
end

-- Trading Session Sub Id
eurex_t7_rdi_fast_v14_0.trading_session_sub_id = {}

-- Display: Trading Session Sub Id
eurex_t7_rdi_fast_v14_0.trading_session_sub_id.display = function(value)
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

-- Dissect: Trading Session Sub Id
eurex_t7_rdi_fast_v14_0.trading_session_sub_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Trading Session Sub Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.trading_session_sub_id.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.trading_session_sub_id, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.trading_session_sub_id, range, value, display)
  end

  return offset, value
end

-- Security Update Action
eurex_t7_rdi_fast_v14_0.security_update_action = {}

-- Display: Security Update Action
eurex_t7_rdi_fast_v14_0.security_update_action.display = function(value)
  if value == nil then
    return "Security Update Action: No Value"
  end

  if value == 0 then
    return "Security Update Action: Add (A)"
  end
  if value == 1 then
    return "Security Update Action: Modify (M)"
  end

  return "Security Update Action: Unknown("..value..")"
end

-- Dissect: Security Update Action
eurex_t7_rdi_fast_v14_0.security_update_action.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Security Update Action was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.security_update_action.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_update_action, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_update_action, range, value, display)
  end

  return offset, value
end

-- No Clearing Price Parameters
eurex_t7_rdi_fast_v14_0.no_clearing_price_parameters = {}

-- Dissect: No Clearing Price Parameters
eurex_t7_rdi_fast_v14_0.no_clearing_price_parameters.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 2

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_clearing_price_parameters, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.no_clearing_price_parameters, range, 0)
    absent:set_text("No Clearing Price Parameters: No Value")
  end

  return offset, value
end

-- Business Day Type
eurex_t7_rdi_fast_v14_0.business_day_type = {}

-- Display: Business Day Type
eurex_t7_rdi_fast_v14_0.business_day_type.display = function(value)
  if value == nil then
    return "Business Day Type: No Value"
  end

  if value == 0 then
    return "Business Day Type: PrecedingDay (5)"
  end
  if value == 1 then
    return "Business Day Type: CurrentDay (1)"
  end

  return "Business Day Type: Unknown("..value..")"
end

-- Dissect: Business Day Type
eurex_t7_rdi_fast_v14_0.business_day_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.business_day_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.business_day_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.business_day_type, range, value, display)
  end

  return offset, value
end

-- Clearing Price Offset
eurex_t7_rdi_fast_v14_0.clearing_price_offset = {}

-- Display: Clearing Price Offset
eurex_t7_rdi_fast_v14_0.clearing_price_offset.display = function(value)
  if value == nil then
    return "Clearing Price Offset: No Value"
  end

  return "Clearing Price Offset: "..value
end

-- Dissect: Clearing Price Offset
eurex_t7_rdi_fast_v14_0.clearing_price_offset.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.clearing_price_offset.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.clearing_price_offset, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.clearing_price_offset, range, value, display)
  end

  return offset, value
end

-- Vega Multiplier
eurex_t7_rdi_fast_v14_0.vega_multiplier = {}

-- Dissect: Vega Multiplier
eurex_t7_rdi_fast_v14_0.vega_multiplier.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_uint64(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.vega_multiplier, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.vega_multiplier, range, UInt64(0))
    absent:set_text("Vega Multiplier: No Value")
  end

  return offset, value
end

-- Annual Trading Business Days
eurex_t7_rdi_fast_v14_0.annual_trading_business_days = {}

-- Dissect: Annual Trading Business Days
eurex_t7_rdi_fast_v14_0.annual_trading_business_days.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.annual_trading_business_days, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.annual_trading_business_days, range, 0)
    absent:set_text("Annual Trading Business Days: No Value")
  end

  return offset, value
end

-- Total Trading Business Days
eurex_t7_rdi_fast_v14_0.total_trading_business_days = {}

-- Dissect: Total Trading Business Days
eurex_t7_rdi_fast_v14_0.total_trading_business_days.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.total_trading_business_days, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.total_trading_business_days, range, 0)
    absent:set_text("Total Trading Business Days: No Value")
  end

  return offset, value
end

-- Trading Business Days
eurex_t7_rdi_fast_v14_0.trading_business_days = {}

-- Dissect: Trading Business Days
eurex_t7_rdi_fast_v14_0.trading_business_days.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.trading_business_days, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.trading_business_days, range, 0)
    absent:set_text("Trading Business Days: No Value")
  end

  return offset, value
end

-- Standard Variance
eurex_t7_rdi_fast_v14_0.standard_variance = {}

-- Display: Standard Variance
eurex_t7_rdi_fast_v14_0.standard_variance.display = function(value)
  if value == nil then
    return "Standard Variance: No Value"
  end

  return "Standard Variance: "..value
end

-- Dissect: Standard Variance
eurex_t7_rdi_fast_v14_0.standard_variance.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.standard_variance.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.standard_variance, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.standard_variance, range, value, display)
  end

  return offset, value
end

-- Related Close Price
eurex_t7_rdi_fast_v14_0.related_close_price = {}

-- Display: Related Close Price
eurex_t7_rdi_fast_v14_0.related_close_price.display = function(value)
  if value == nil then
    return "Related Close Price: No Value"
  end

  return "Related Close Price: "..value
end

-- Dissect: Related Close Price
eurex_t7_rdi_fast_v14_0.related_close_price.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.related_close_price.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.related_close_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.related_close_price, range, value, display)
  end

  return offset, value
end

-- Realized Variance
eurex_t7_rdi_fast_v14_0.realized_variance = {}

-- Display: Realized Variance
eurex_t7_rdi_fast_v14_0.realized_variance.display = function(value)
  if value == nil then
    return "Realized Variance: No Value"
  end

  return "Realized Variance: "..value
end

-- Dissect: Realized Variance
eurex_t7_rdi_fast_v14_0.realized_variance.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.realized_variance.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.realized_variance, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.realized_variance, range, value, display)
  end

  return offset, value
end

-- Volatility
eurex_t7_rdi_fast_v14_0.volatility = {}

-- Display: Volatility
eurex_t7_rdi_fast_v14_0.volatility.display = function(value)
  if value == nil then
    return "Volatility: No Value"
  end

  return "Volatility: "..value
end

-- Dissect: Volatility
eurex_t7_rdi_fast_v14_0.volatility.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.volatility.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.volatility, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.volatility, range, value, display)
  end

  return offset, value
end

-- Clearing Settl Price
eurex_t7_rdi_fast_v14_0.clearing_settl_price = {}

-- Display: Clearing Settl Price
eurex_t7_rdi_fast_v14_0.clearing_settl_price.display = function(value)
  if value == nil then
    return "Clearing Settl Price: No Value"
  end

  return "Clearing Settl Price: "..value
end

-- Dissect: Clearing Settl Price
eurex_t7_rdi_fast_v14_0.clearing_settl_price.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.clearing_settl_price.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.clearing_settl_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.clearing_settl_price, range, value, display)
  end

  return offset, value
end

-- Calculation Method
eurex_t7_rdi_fast_v14_0.calculation_method = {}

-- Display: Calculation Method
eurex_t7_rdi_fast_v14_0.calculation_method.display = function(value)
  if value == nil then
    return "Calculation Method: No Value"
  end

  if value == 0 then
    return "Calculation Method: Automatic (0)"
  end
  if value == 1 then
    return "Calculation Method: Manual (1)"
  end

  return "Calculation Method: Unknown("..value..")"
end

-- Dissect: Calculation Method
eurex_t7_rdi_fast_v14_0.calculation_method.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.calculation_method.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.calculation_method, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.calculation_method, range, value, display)
  end

  return offset, value
end

-- Settl Price
eurex_t7_rdi_fast_v14_0.settl_price = {}

-- Display: Settl Price
eurex_t7_rdi_fast_v14_0.settl_price.display = function(value)
  if value == nil then
    return "Settl Price: No Value"
  end

  return "Settl Price: "..value
end

-- Dissect: Settl Price
eurex_t7_rdi_fast_v14_0.settl_price.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.settl_price.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.settl_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.settl_price, range, value, display)
  end

  return offset, value
end

-- Annual Calendar Days
eurex_t7_rdi_fast_v14_0.annual_calendar_days = {}

-- Dissect: Annual Calendar Days
eurex_t7_rdi_fast_v14_0.annual_calendar_days.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.annual_calendar_days, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.annual_calendar_days, range, 0)
    absent:set_text("Annual Calendar Days: No Value")
  end

  return offset, value
end

-- Remaining Calendar Days
eurex_t7_rdi_fast_v14_0.remaining_calendar_days = {}

-- Dissect: Remaining Calendar Days
eurex_t7_rdi_fast_v14_0.remaining_calendar_days.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_signed(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.remaining_calendar_days, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.remaining_calendar_days, range, 0)
    absent:set_text("Remaining Calendar Days: No Value")
  end

  return offset, value
end

-- Overnight Interest Rate
eurex_t7_rdi_fast_v14_0.overnight_interest_rate = {}

-- Display: Overnight Interest Rate
eurex_t7_rdi_fast_v14_0.overnight_interest_rate.display = function(value)
  if value == nil then
    return "Overnight Interest Rate: No Value"
  end

  return "Overnight Interest Rate: "..value
end

-- Dissect: Overnight Interest Rate
eurex_t7_rdi_fast_v14_0.overnight_interest_rate.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.overnight_interest_rate.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.overnight_interest_rate, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.overnight_interest_rate, range, value, display)
  end

  return offset, value
end

-- Overnight Interest Rate Name
eurex_t7_rdi_fast_v14_0.overnight_interest_rate_name = {}

-- Dissect: Overnight Interest Rate Name
eurex_t7_rdi_fast_v14_0.overnight_interest_rate_name.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.overnight_interest_rate_name, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.overnight_interest_rate_name, range, "")
    absent:set_text("Overnight Interest Rate Name: No Value")
  end

  return offset, value
end

-- Current Payment Parameter
eurex_t7_rdi_fast_v14_0.current_payment_parameter = {}

-- Display: Current Payment Parameter
eurex_t7_rdi_fast_v14_0.current_payment_parameter.display = function(value)
  if value == nil then
    return "Current Payment Parameter: No Value"
  end

  return "Current Payment Parameter: "..value
end

-- Dissect: Current Payment Parameter
eurex_t7_rdi_fast_v14_0.current_payment_parameter.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.current_payment_parameter.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.current_payment_parameter, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.current_payment_parameter, range, value, display)
  end

  return offset, value
end

-- Accrued Payment Parameter
eurex_t7_rdi_fast_v14_0.accrued_payment_parameter = {}

-- Display: Accrued Payment Parameter
eurex_t7_rdi_fast_v14_0.accrued_payment_parameter.display = function(value)
  if value == nil then
    return "Accrued Payment Parameter: No Value"
  end

  return "Accrued Payment Parameter: "..value
end

-- Dissect: Accrued Payment Parameter
eurex_t7_rdi_fast_v14_0.accrued_payment_parameter.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.accrued_payment_parameter.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.accrued_payment_parameter, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.accrued_payment_parameter, range, value, display)
  end

  return offset, value
end

-- Related Index Value
eurex_t7_rdi_fast_v14_0.related_index_value = {}

-- Display: Related Index Value
eurex_t7_rdi_fast_v14_0.related_index_value.display = function(value)
  if value == nil then
    return "Related Index Value: No Value"
  end

  return "Related Index Value: "..value
end

-- Dissect: Related Index Value
eurex_t7_rdi_fast_v14_0.related_index_value.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.related_index_value.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.related_index_value, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.related_index_value, range, value, display)
  end

  return offset, value
end

-- Current Collection Parameter
eurex_t7_rdi_fast_v14_0.current_collection_parameter = {}

-- Display: Current Collection Parameter
eurex_t7_rdi_fast_v14_0.current_collection_parameter.display = function(value)
  if value == nil then
    return "Current Collection Parameter: No Value"
  end

  return "Current Collection Parameter: "..value
end

-- Dissect: Current Collection Parameter
eurex_t7_rdi_fast_v14_0.current_collection_parameter.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.current_collection_parameter.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.current_collection_parameter, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.current_collection_parameter, range, value, display)
  end

  return offset, value
end

-- Accrued Collection Parameter
eurex_t7_rdi_fast_v14_0.accrued_collection_parameter = {}

-- Display: Accrued Collection Parameter
eurex_t7_rdi_fast_v14_0.accrued_collection_parameter.display = function(value)
  if value == nil then
    return "Accrued Collection Parameter: No Value"
  end

  return "Accrued Collection Parameter: "..value
end

-- Dissect: Accrued Collection Parameter
eurex_t7_rdi_fast_v14_0.accrued_collection_parameter.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.accrued_collection_parameter.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.accrued_collection_parameter, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.accrued_collection_parameter, range, value, display)
  end

  return offset, value
end

-- Current Accrued Interest Amt
eurex_t7_rdi_fast_v14_0.current_accrued_interest_amt = {}

-- Display: Current Accrued Interest Amt
eurex_t7_rdi_fast_v14_0.current_accrued_interest_amt.display = function(value)
  if value == nil then
    return "Current Accrued Interest Amt: No Value"
  end

  return "Current Accrued Interest Amt: "..value
end

-- Dissect: Current Accrued Interest Amt
eurex_t7_rdi_fast_v14_0.current_accrued_interest_amt.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = eurex_t7_rdi_fast_v14_0.current_accrued_interest_amt.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.current_accrued_interest_amt, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.current_accrued_interest_amt, range, value, display)
  end

  return offset, value
end

-- Conversion Mode
eurex_t7_rdi_fast_v14_0.conversion_mode = {}

-- Display: Conversion Mode
eurex_t7_rdi_fast_v14_0.conversion_mode.display = function(value)
  if value == nil then
    return "Conversion Mode: No Value"
  end

  if value == 0 then
    return "Conversion Mode: Initial (0)"
  end
  if value == 1 then
    return "Conversion Mode: Preliminary (1)"
  end
  if value == 2 then
    return "Conversion Mode: Final (2)"
  end

  return "Conversion Mode: Unknown("..value..")"
end

-- Dissect: Conversion Mode
eurex_t7_rdi_fast_v14_0.conversion_mode.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.conversion_mode.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.conversion_mode, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.conversion_mode, range, value, display)
  end

  return offset, value
end

-- Conversion Mode Qualifier
eurex_t7_rdi_fast_v14_0.conversion_mode_qualifier = {}

-- Display: Conversion Mode Qualifier
eurex_t7_rdi_fast_v14_0.conversion_mode_qualifier.display = function(value)
  if value == nil then
    return "Conversion Mode Qualifier: No Value"
  end

  if value == 0 then
    return "Conversion Mode Qualifier: Early (1)"
  end
  if value == 1 then
    return "Conversion Mode Qualifier: Late (2)"
  end

  return "Conversion Mode Qualifier: Unknown("..value..")"
end

-- Dissect: Conversion Mode Qualifier
eurex_t7_rdi_fast_v14_0.conversion_mode_qualifier.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.conversion_mode_qualifier.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.conversion_mode_qualifier, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.conversion_mode_qualifier, range, value, display)
  end

  return offset, value
end

-- Md Report Count
eurex_t7_rdi_fast_v14_0.md_report_count = {}

-- Dissect: Md Report Count
eurex_t7_rdi_fast_v14_0.md_report_count.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.md_report_count, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.md_report_count, range, 0)
    absent:set_text("Md Report Count: No Value")
  end

  return offset, value
end

-- Sender Sub Id
eurex_t7_rdi_fast_v14_0.sender_sub_id = {}

-- Dissect: Sender Sub Id
eurex_t7_rdi_fast_v14_0.sender_sub_id.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.sender_sub_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.sender_sub_id, range, 0)
    absent:set_text("Sender Sub Id: No Value")
  end

  return offset, value
end

-- Last Msg Seq Num Processed (Delta)
eurex_t7_rdi_fast_v14_0.last_msg_seq_num_processed_delta = {}

-- Dissect: Last Msg Seq Num Processed (Delta)
eurex_t7_rdi_fast_v14_0.last_msg_seq_num_processed_delta.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.last_msg_seq_num_processed, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.last_msg_seq_num_processed, range, 0)
    absent:set_text("Last Msg Seq Num Processed: No Value")
  end

  return offset, value
end

-- Last Msg Seq Num Processed (Sent)
eurex_t7_rdi_fast_v14_0.last_msg_seq_num_processed_sent = {}

-- Dissect: Last Msg Seq Num Processed (Sent)
eurex_t7_rdi_fast_v14_0.last_msg_seq_num_processed_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.last_msg_seq_num_processed, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.last_msg_seq_num_processed, range, 0)
    absent:set_text("Last Msg Seq Num Processed: No Value")
  end

  return offset, value
end

-- Md Report Event
eurex_t7_rdi_fast_v14_0.md_report_event = {}

-- Display: Md Report Event
eurex_t7_rdi_fast_v14_0.md_report_event.display = function(value)
  if value == nil then
    return "Md Report Event: No Value"
  end

  if value == 0 then
    return "Md Report Event: StartOfReferenceData (1)"
  end
  if value == 1 then
    return "Md Report Event: EndOfReferenceData (2)"
  end
  if value == 2 then
    return "Md Report Event: StartOfOtcTrades (3)"
  end
  if value == 3 then
    return "Md Report Event: EndOfOtcTrades (4)"
  end
  if value == 4 then
    return "Md Report Event: StartOfExchTrades (5)"
  end
  if value == 5 then
    return "Md Report Event: EndOfExchTrades (6)"
  end
  if value == 6 then
    return "Md Report Event: StartOfOpenInterest (7)"
  end
  if value == 7 then
    return "Md Report Event: EndOfOpenInterest (8)"
  end
  if value == 8 then
    return "Md Report Event: StartOfSettlement (9)"
  end
  if value == 9 then
    return "Md Report Event: EndOfSettlement (10)"
  end
  if value == 10 then
    return "Md Report Event: StartOfStatisticMetaData (11)"
  end
  if value == 11 then
    return "Md Report Event: EndOfStatisticMetaData (12)"
  end

  return "Md Report Event: Unknown("..value..")"
end

-- Dissect: Md Report Event
eurex_t7_rdi_fast_v14_0.md_report_event.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Md Report Event was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v14_0.md_report_event.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.md_report_event, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.md_report_event, range, value, display)
  end

  return offset, value
end

-- Tot No Market Segment Reports
eurex_t7_rdi_fast_v14_0.tot_no_market_segment_reports = {}

-- Dissect: Tot No Market Segment Reports
eurex_t7_rdi_fast_v14_0.tot_no_market_segment_reports.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.tot_no_market_segment_reports, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.tot_no_market_segment_reports, range, 0)
    absent:set_text("Tot No Market Segment Reports: No Value")
  end

  return offset, value
end

-- Tot No Instrument Reports
eurex_t7_rdi_fast_v14_0.tot_no_instrument_reports = {}

-- Dissect: Tot No Instrument Reports
eurex_t7_rdi_fast_v14_0.tot_no_instrument_reports.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.tot_no_instrument_reports, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.tot_no_instrument_reports, range, 0)
    absent:set_text("Tot No Instrument Reports: No Value")
  end

  return offset, value
end


-----------------------------------------------------------------------
-- Dissect Eurex T7 Rdi Fast 14.0
-----------------------------------------------------------------------

-- Beacon Message
eurex_t7_rdi_fast_v14_0.beacon = {}

-- Dissect Fields: Beacon Message
eurex_t7_rdi_fast_v14_0.beacon.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_rdi_fast_v14_0.msg_type_constant_0.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.sender_comp_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|12:SenderCompID")

  -- Sender Sub Id: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.sender_sub_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|11:SenderSubID")

  -- Last Msg Seq Num Processed: uInt32, sent
  index, value = eurex_t7_rdi_fast_v14_0.last_msg_seq_num_processed_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Beacon Message
eurex_t7_rdi_fast_v14_0.beacon.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_rdi_fast_v14_0.beacon.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Market Data Report Message
eurex_t7_rdi_fast_v14_0.market_data_report = {}

-- Dissect Fields: Market Data Report Message
eurex_t7_rdi_fast_v14_0.market_data_report.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_rdi_fast_v14_0.msg_type_constant_dr.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Report Count: uInt32, sent, optional
  index, value = eurex_t7_rdi_fast_v14_0.md_report_count.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Sub Id: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.sender_sub_id.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|11:SenderSubID")

  -- Market Id: string, Copy
  index, value = eurex_t7_rdi_fast_v14_0.market_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|8:MarketID")

  -- Last Msg Seq Num Processed: uInt32, Delta, optional
  index, value = eurex_t7_rdi_fast_v14_0.last_msg_seq_num_processed_delta.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|22:LastMsgSeqNumProcessed")

  -- Md Report Event: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.md_report_event.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|13:MDReportEvent")

  -- Transact Time: timestamp, Delta
  index, value = eurex_t7_rdi_fast_v14_0.transact_time_delta_required.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|12:TransactTime")

  -- Tot No Market Segment Reports: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.tot_no_market_segment_reports.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|25:TotNoMarketSegmentReports")

  -- Tot No Instrument Reports: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.tot_no_instrument_reports.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|22:TotNoInstrumentReports")

  return index
end

-- Dissect: Market Data Report Message
eurex_t7_rdi_fast_v14_0.market_data_report.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_rdi_fast_v14_0.market_data_report.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Trade At Reference Price Status Clearing Price Parameters
eurex_t7_rdi_fast_v14_0.trade_at_reference_price_status_clearing_price_parameters = {}

-- Dissect Fields: Trade At Reference Price Status Clearing Price Parameters
eurex_t7_rdi_fast_v14_0.trade_at_reference_price_status_clearing_price_parameters.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Business Day Type: uInt32, Default
  index, value = eurex_t7_rdi_fast_v14_0.business_day_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Clearing Price Offset: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.clearing_price_offset.dissect(buffer, index, packet, parent, { presence_map[base + 1], false }, state, { "6:global|0:|19:ClearingPriceOffset|E", "6:global|0:|19:ClearingPriceOffset|M" })

  -- Related Close Price: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.related_close_price.dissect(buffer, index, packet, parent, { presence_map[base + 2], false }, state, { "6:global|0:|17:RelatedClosePrice|E", "6:global|0:|17:RelatedClosePrice|M" })

  return index
end

-- Dissect: Trade At Reference Price Status Clearing Price Parameters
eurex_t7_rdi_fast_v14_0.trade_at_reference_price_status_clearing_price_parameters.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.trade_at_reference_price_status_clearing_price_parameters, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.trade_at_reference_price_status_clearing_price_parameters.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Trade At Reference Price Status Message
eurex_t7_rdi_fast_v14_0.trade_at_reference_price_status = {}

-- Dissect Fields: Trade At Reference Price Status Message
eurex_t7_rdi_fast_v14_0.trade_at_reference_price_status.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_rdi_fast_v14_0.msg_type_constant_f.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = eurex_t7_rdi_fast_v14_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Market Segment Id: uInt32, Delta
  index, value = eurex_t7_rdi_fast_v14_0.market_segment_id_delta.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|15:MarketSegmentID")

  -- Security Id: int64, Delta
  index, value = eurex_t7_rdi_fast_v14_0.security_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|10:SecurityID")

  -- Security Id Source: string, Constant
  index, value = eurex_t7_rdi_fast_v14_0.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Type: uInt32, Constant
  index, value = eurex_t7_rdi_fast_v14_0.security_type_constant_7.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Clearing Price Parameters: uInt32, Constant
  index, value = eurex_t7_rdi_fast_v14_0.no_clearing_price_parameters.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Clearing Price Parameters: No Clearing Price Parameters entries
  local count = value or 0
  for trade_at_reference_price_status_clearing_price_parameters_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.trade_at_reference_price_status_clearing_price_parameters.dissect(buffer, index, packet, parent, presence_map, base, state, trade_at_reference_price_status_clearing_price_parameters_index)
  end

  return index
end

-- Dissect: Trade At Reference Price Status Message
eurex_t7_rdi_fast_v14_0.trade_at_reference_price_status.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_rdi_fast_v14_0.trade_at_reference_price_status.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Total Return Futures Status Clearing Price Parameters
eurex_t7_rdi_fast_v14_0.total_return_futures_status_clearing_price_parameters = {}

-- Dissect Fields: Total Return Futures Status Clearing Price Parameters
eurex_t7_rdi_fast_v14_0.total_return_futures_status_clearing_price_parameters.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Business Day Type: uInt32, Default
  index, value = eurex_t7_rdi_fast_v14_0.business_day_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Annual Calendar Days: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.annual_calendar_days.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|18:AnnualCalendarDays")

  -- Remaining Calendar Days: int32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.remaining_calendar_days.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|21:RemainingCalendarDays")

  -- Overnight Interest Rate: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.overnight_interest_rate.dissect(buffer, index, packet, parent, { presence_map[base + 3], false }, state, { "6:global|0:|21:OvernightInterestRate|E", "6:global|0:|21:OvernightInterestRate|M" })

  -- Overnight Interest Rate Name: string, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.overnight_interest_rate_name.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|25:OvernightInterestRateName")

  -- Current Payment Parameter: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.current_payment_parameter.dissect(buffer, index, packet, parent, { presence_map[base + 5], false }, state, { "6:global|0:|23:CurrentPaymentParameter|E", "6:global|0:|23:CurrentPaymentParameter|M" })

  -- Accrued Payment Parameter: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.accrued_payment_parameter.dissect(buffer, index, packet, parent, { presence_map[base + 6], false }, state, { "6:global|0:|23:AccruedPaymentParameter|E", "6:global|0:|23:AccruedPaymentParameter|M" })

  -- Related Index Value: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.related_index_value.dissect(buffer, index, packet, parent, { presence_map[base + 7], false }, state, { "6:global|0:|17:RelatedIndexValue|E", "6:global|0:|17:RelatedIndexValue|M" })

  -- Current Collection Parameter: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.current_collection_parameter.dissect(buffer, index, packet, parent, { presence_map[base + 8], false }, state, { "6:global|0:|26:CurrentCollectionParameter|E", "6:global|0:|26:CurrentCollectionParameter|M" })

  -- Accrued Collection Parameter: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.accrued_collection_parameter.dissect(buffer, index, packet, parent, { presence_map[base + 9], false }, state, { "6:global|0:|26:AccruedCollectionParameter|E", "6:global|0:|26:AccruedCollectionParameter|M" })

  -- Current Accrued Interest Amt: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.current_accrued_interest_amt.dissect(buffer, index, packet, parent, { presence_map[base + 10], false }, state, { "6:global|0:|25:CurrentAccruedInterestAmt|E", "6:global|0:|25:CurrentAccruedInterestAmt|M" })

  -- Related Close Price: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.related_close_price.dissect(buffer, index, packet, parent, { presence_map[base + 11], false }, state, { "6:global|0:|17:RelatedClosePrice|E", "6:global|0:|17:RelatedClosePrice|M" })

  -- Conversion Mode: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.conversion_mode.dissect(buffer, index, packet, parent, presence_map[base + 12], state, "6:global|0:|14:ConversionMode")

  -- Conversion Mode Qualifier: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.conversion_mode_qualifier.dissect(buffer, index, packet, parent, presence_map[base + 13], state, "6:global|0:|23:ConversionModeQualifier")

  return index
end

-- Dissect: Total Return Futures Status Clearing Price Parameters
eurex_t7_rdi_fast_v14_0.total_return_futures_status_clearing_price_parameters.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.total_return_futures_status_clearing_price_parameters, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.total_return_futures_status_clearing_price_parameters.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Total Return Futures Status Message
eurex_t7_rdi_fast_v14_0.total_return_futures_status = {}

-- Dissect Fields: Total Return Futures Status Message
eurex_t7_rdi_fast_v14_0.total_return_futures_status.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_rdi_fast_v14_0.msg_type_constant_f.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = eurex_t7_rdi_fast_v14_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Market Segment Id: uInt32, Delta
  index, value = eurex_t7_rdi_fast_v14_0.market_segment_id_delta.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|15:MarketSegmentID")

  -- Security Id: int64, Delta
  index, value = eurex_t7_rdi_fast_v14_0.security_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|10:SecurityID")

  -- Security Id Source: string, Constant
  index, value = eurex_t7_rdi_fast_v14_0.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Type: uInt32, Constant
  index, value = eurex_t7_rdi_fast_v14_0.security_type_constant_4.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Prior Settl Price: decimal, Copy
  index, value = eurex_t7_rdi_fast_v14_0.prior_settl_price_copy_required.dissect(buffer, index, packet, parent, { presence_map[base + 1], false }, state, { "6:global|0:|15:PriorSettlPrice|E", "6:global|0:|15:PriorSettlPrice|M" })

  -- Settl Price: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.settl_price.dissect(buffer, index, packet, parent, { presence_map[base + 2], false }, state, { "6:global|0:|10:SettlPrice|E", "6:global|0:|10:SettlPrice|M" })

  -- No Clearing Price Parameters: uInt32, Constant
  index, value = eurex_t7_rdi_fast_v14_0.no_clearing_price_parameters.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Clearing Price Parameters: No Clearing Price Parameters entries
  local count = value or 0
  for total_return_futures_status_clearing_price_parameters_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.total_return_futures_status_clearing_price_parameters.dissect(buffer, index, packet, parent, presence_map, base, state, total_return_futures_status_clearing_price_parameters_index)
  end

  return index
end

-- Dissect: Total Return Futures Status Message
eurex_t7_rdi_fast_v14_0.total_return_futures_status.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_rdi_fast_v14_0.total_return_futures_status.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Variance Futures Status Clearing Price Parameters
eurex_t7_rdi_fast_v14_0.variance_futures_status_clearing_price_parameters = {}

-- Dissect Fields: Variance Futures Status Clearing Price Parameters
eurex_t7_rdi_fast_v14_0.variance_futures_status_clearing_price_parameters.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Business Day Type: uInt32, Default
  index, value = eurex_t7_rdi_fast_v14_0.business_day_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Clearing Price Offset: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.clearing_price_offset.dissect(buffer, index, packet, parent, { presence_map[base + 1], false }, state, { "6:global|0:|19:ClearingPriceOffset|E", "6:global|0:|19:ClearingPriceOffset|M" })

  -- Vega Multiplier: uInt64, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.vega_multiplier.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|14:VegaMultiplier")

  -- Annual Trading Business Days: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.annual_trading_business_days.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|25:AnnualTradingBusinessDays")

  -- Total Trading Business Days: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.total_trading_business_days.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|24:TotalTradingBusinessDays")

  -- Trading Business Days: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.trading_business_days.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "6:global|0:|19:TradingBusinessDays")

  -- Standard Variance: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.standard_variance.dissect(buffer, index, packet, parent, { presence_map[base + 6], false }, state, { "6:global|0:|16:StandardVariance|E", "6:global|0:|16:StandardVariance|M" })

  -- Related Close Price: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.related_close_price.dissect(buffer, index, packet, parent, { presence_map[base + 7], false }, state, { "6:global|0:|17:RelatedClosePrice|E", "6:global|0:|17:RelatedClosePrice|M" })

  -- Realized Variance: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.realized_variance.dissect(buffer, index, packet, parent, { presence_map[base + 8], false }, state, { "6:global|0:|16:RealizedVariance|E", "6:global|0:|16:RealizedVariance|M" })

  -- Volatility: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.volatility.dissect(buffer, index, packet, parent, { presence_map[base + 9], false }, state, { "6:global|0:|10:Volatility|E", "6:global|0:|10:Volatility|M" })

  -- Clearing Settl Price: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.clearing_settl_price.dissect(buffer, index, packet, parent, { presence_map[base + 10], false }, state, { "6:global|0:|18:ClearingSettlPrice|E", "6:global|0:|18:ClearingSettlPrice|M" })

  -- Calculation Method: uInt32, Default, optional
  index, value = eurex_t7_rdi_fast_v14_0.calculation_method.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  return index
end

-- Dissect: Variance Futures Status Clearing Price Parameters
eurex_t7_rdi_fast_v14_0.variance_futures_status_clearing_price_parameters.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.variance_futures_status_clearing_price_parameters, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.variance_futures_status_clearing_price_parameters.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Variance Futures Status Message
eurex_t7_rdi_fast_v14_0.variance_futures_status = {}

-- Dissect Fields: Variance Futures Status Message
eurex_t7_rdi_fast_v14_0.variance_futures_status.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_rdi_fast_v14_0.msg_type_constant_f.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = eurex_t7_rdi_fast_v14_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Market Segment Id: uInt32, Delta
  index, value = eurex_t7_rdi_fast_v14_0.market_segment_id_delta.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|15:MarketSegmentID")

  -- Security Id: int64, Delta
  index, value = eurex_t7_rdi_fast_v14_0.security_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|10:SecurityID")

  -- Security Id Source: string, Constant
  index, value = eurex_t7_rdi_fast_v14_0.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Type: uInt32, Constant
  index, value = eurex_t7_rdi_fast_v14_0.security_type_constant_3.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Clearing Price Parameters: uInt32, Constant
  index, value = eurex_t7_rdi_fast_v14_0.no_clearing_price_parameters.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Clearing Price Parameters: No Clearing Price Parameters entries
  local count = value or 0
  for variance_futures_status_clearing_price_parameters_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.variance_futures_status_clearing_price_parameters.dissect(buffer, index, packet, parent, presence_map, base, state, variance_futures_status_clearing_price_parameters_index)
  end

  return index
end

-- Dissect: Variance Futures Status Message
eurex_t7_rdi_fast_v14_0.variance_futures_status.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_rdi_fast_v14_0.variance_futures_status.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Trading Session Rules
eurex_t7_rdi_fast_v14_0.trading_session_rules = {}

-- Dissect Fields: Trading Session Rules
eurex_t7_rdi_fast_v14_0.trading_session_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trading Session Id: uInt32, Constant
  index, value = eurex_t7_rdi_fast_v14_0.trading_session_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Sub Id: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.trading_session_sub_id.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|19:TradingSessionSubID")

  return index
end

-- Dissect: Trading Session Rules
eurex_t7_rdi_fast_v14_0.trading_session_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.trading_session_rules, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.trading_session_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Incremental Price Range Rules
eurex_t7_rdi_fast_v14_0.instrument_incremental_price_range_rules = {}

-- Dissect Fields: Instrument Incremental Price Range Rules
eurex_t7_rdi_fast_v14_0.instrument_incremental_price_range_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Price Range Rule Id: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.price_range_rule_id.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|16:PriceRangeRuleID")

  return index
end

-- Dissect: Instrument Incremental Price Range Rules
eurex_t7_rdi_fast_v14_0.instrument_incremental_price_range_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_incremental_price_range_rules, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.instrument_incremental_price_range_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Incremental Quote Size Rules
eurex_t7_rdi_fast_v14_0.instrument_incremental_quote_size_rules = {}

-- Dissect Fields: Instrument Incremental Quote Size Rules
eurex_t7_rdi_fast_v14_0.instrument_incremental_quote_size_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Min Bid Size: decimal, Copy
  index, value = eurex_t7_rdi_fast_v14_0.min_bid_size.dissect(buffer, index, packet, parent, { presence_map[base + 0], false }, state, { "6:global|0:|10:MinBidSize|E", "6:global|0:|10:MinBidSize|M" })

  -- Min Offer Size: decimal, Copy
  index, value = eurex_t7_rdi_fast_v14_0.min_offer_size.dissect(buffer, index, packet, parent, { presence_map[base + 1], false }, state, { "6:global|0:|12:MinOfferSize|E", "6:global|0:|12:MinOfferSize|M" })

  return index
end

-- Dissect: Instrument Incremental Quote Size Rules
eurex_t7_rdi_fast_v14_0.instrument_incremental_quote_size_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_incremental_quote_size_rules, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.instrument_incremental_quote_size_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Segment Grp
eurex_t7_rdi_fast_v14_0.market_segment_grp = {}

-- Dissect Fields: Market Segment Grp
eurex_t7_rdi_fast_v14_0.market_segment_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Market Segment Id: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.market_segment_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|15:MarketSegmentID")

  -- Implied Market Indicator: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.implied_market_indicator.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|22:ImpliedMarketIndicator")

  -- Multileg Model: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.multileg_model.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|13:MultilegModel")

  -- Price Type: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.price_type.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|9:PriceType")

  -- Post Trade Anonymity: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.post_trade_anonymity.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|18:PostTradeAnonymity")

  -- Settl Business Days: uInt32, Default, optional
  index, value = eurex_t7_rdi_fast_v14_0.settl_business_days.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- No Quote Size Rules: uInt32, Constant, optional
  index, value = eurex_t7_rdi_fast_v14_0.no_quote_size_rules_constant.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Quote Size Rules: No Quote Size Rules entries
  local count = value or 0
  for instrument_incremental_quote_size_rules_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.instrument_incremental_quote_size_rules.dissect(buffer, index, packet, parent, presence_map, base, state, instrument_incremental_quote_size_rules_index)
  end

  -- No Price Range Rules: uInt32, Constant, optional
  index, value = eurex_t7_rdi_fast_v14_0.no_price_range_rules_constant.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Price Range Rules: No Price Range Rules entries
  local count = value or 0
  for instrument_incremental_price_range_rules_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.instrument_incremental_price_range_rules.dissect(buffer, index, packet, parent, presence_map, base, state, instrument_incremental_price_range_rules_index)
  end

  -- No Trading Session Rules: uInt32, Constant, optional
  index, value = eurex_t7_rdi_fast_v14_0.no_trading_session_rules.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Trading Session Rules: No Trading Session Rules entries
  local count = value or 0
  for trading_session_rules_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.trading_session_rules.dissect(buffer, index, packet, parent, presence_map, base, state, trading_session_rules_index)
  end

  return index
end

-- Dissect: Market Segment Grp
eurex_t7_rdi_fast_v14_0.market_segment_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.market_segment_grp, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.market_segment_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Related Instrument Grp
eurex_t7_rdi_fast_v14_0.related_instrument_grp = {}

-- Dissect Fields: Related Instrument Grp
eurex_t7_rdi_fast_v14_0.related_instrument_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Related Security Id: int64, Delta
  index, value = eurex_t7_rdi_fast_v14_0.related_security_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|17:RelatedSecurityID")

  -- Related Security Id Source: string, Constant
  index, value = eurex_t7_rdi_fast_v14_0.related_security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Related Instrument Grp
eurex_t7_rdi_fast_v14_0.related_instrument_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.related_instrument_grp, buffer(offset, 0))
  local index = offset

  index = eurex_t7_rdi_fast_v14_0.related_instrument_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Events
eurex_t7_rdi_fast_v14_0.events = {}

-- Dissect Fields: Events
eurex_t7_rdi_fast_v14_0.events.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Event Type: uInt32, Default
  index, value = eurex_t7_rdi_fast_v14_0.event_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Event Date: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.event_date.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|9:EventDate")

  return index
end

-- Dissect: Events
eurex_t7_rdi_fast_v14_0.events.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.events, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.events.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Attributes
eurex_t7_rdi_fast_v14_0.instrument_attributes = {}

-- Dissect Fields: Instrument Attributes
eurex_t7_rdi_fast_v14_0.instrument_attributes.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Instr Attrib Type: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.instr_attrib_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|15:InstrAttribType")

  -- Instr Attrib Value: string, Copy
  index, value = eurex_t7_rdi_fast_v14_0.instr_attrib_value.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|16:InstrAttribValue")

  return index
end

-- Dissect: Instrument Attributes
eurex_t7_rdi_fast_v14_0.instrument_attributes.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_attributes, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.instrument_attributes.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Security Classification Grp
eurex_t7_rdi_fast_v14_0.security_classification_grp = {}

-- Dissect Fields: Security Classification Grp
eurex_t7_rdi_fast_v14_0.security_classification_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security Classification Reason: uInt32, Default
  index, value = eurex_t7_rdi_fast_v14_0.security_classification_reason.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Security Classification Value: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.security_classification_value.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|27:SecurityClassificationValue")

  return index
end

-- Dissect: Security Classification Grp
eurex_t7_rdi_fast_v14_0.security_classification_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_classification_grp, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.security_classification_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Single Volatility Parameters Group
eurex_t7_rdi_fast_v14_0.single_volatility_parameters_group = {}

-- Dissect Fields: Single Volatility Parameters Group
eurex_t7_rdi_fast_v14_0.single_volatility_parameters_group.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Fixed Abs Vola Interruption Limit: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.fixed_abs_vola_interruption_limit.dissect(buffer, index, packet, parent, { presence_map[base + 0], false }, state, { "6:global|0:|29:FixedAbsVolaInterruptionLimit|E", "6:global|0:|29:FixedAbsVolaInterruptionLimit|M" })

  -- Float Abs Vola Interruption Limit: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.float_abs_vola_interruption_limit.dissect(buffer, index, packet, parent, { presence_map[base + 1], false }, state, { "6:global|0:|29:FloatAbsVolaInterruptionLimit|E", "6:global|0:|29:FloatAbsVolaInterruptionLimit|M" })

  -- Fixed Pct Vola Interruption Limit: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.fixed_pct_vola_interruption_limit.dissect(buffer, index, packet, parent, { presence_map[base + 2], false }, state, { "6:global|0:|29:FixedPctVolaInterruptionLimit|E", "6:global|0:|29:FixedPctVolaInterruptionLimit|M" })

  -- Float Pct Vola Interruption Limit: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.float_pct_vola_interruption_limit.dissect(buffer, index, packet, parent, { presence_map[base + 3], false }, state, { "6:global|0:|29:FloatPctVolaInterruptionLimit|E", "6:global|0:|29:FloatPctVolaInterruptionLimit|M" })

  return index
end

-- Dissect: Single Volatility Parameters Group
eurex_t7_rdi_fast_v14_0.single_volatility_parameters_group.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.single_volatility_parameters_group, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v14_0.single_volatility_parameters_group.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Volatility Corridor Group
eurex_t7_rdi_fast_v14_0.volatility_corridor_group = {}

-- Dissect Fields: Volatility Corridor Group
eurex_t7_rdi_fast_v14_0.volatility_corridor_group.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Volatility Corridor Opening Auction: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.volatility_corridor_opening_auction.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|32:VolatilityCorridorOpeningAuction")

  -- Volatility Corridor Intraday Auction: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.volatility_corridor_intraday_auction.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|33:VolatilityCorridorIntradayAuction")

  -- Volatility Corridor Closing Auction: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.volatility_corridor_closing_auction.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|32:VolatilityCorridorClosingAuction")

  -- Volatility Corridor Continuous: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.volatility_corridor_continuous.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|28:VolatilityCorridorContinuous")

  -- Volatility Corridor Retail Auction: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.volatility_corridor_retail_auction.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|31:VolatilityCorridorRetailAuction")

  return index
end

-- Dissect: Volatility Corridor Group
eurex_t7_rdi_fast_v14_0.volatility_corridor_group.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.volatility_corridor_group, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v14_0.volatility_corridor_group.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Bonds And Warrants Group
eurex_t7_rdi_fast_v14_0.bonds_and_warrants_group = {}

-- Dissect Fields: Bonds And Warrants Group
eurex_t7_rdi_fast_v14_0.bonds_and_warrants_group.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Underlying Symbol: string, Delta, optional
  index, value = eurex_t7_rdi_fast_v14_0.underlying_symbol.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|16:UnderlyingSymbol")

  -- Coupon Rate: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.coupon_rate.dissect(buffer, index, packet, parent, { presence_map[base + 0], false }, state, { "6:global|0:|10:CouponRate|E", "6:global|0:|10:CouponRate|M" })

  -- Previous Coupon Payment Date: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.previous_coupon_payment_date.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|25:PreviousCouponPaymentDate")

  -- Coupon Payment Date: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.coupon_payment_date.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|17:CouponPaymentDate")

  -- Coupon Day Count: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.coupon_day_count.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|14:CouponDayCount")

  -- Coupon Type: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.coupon_type.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|10:CouponType")

  -- Country Of Issue: string, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.country_of_issue.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "6:global|0:|14:CountryOfIssue")

  -- Flat Indicator: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.flat_indicator.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "6:global|0:|13:FlatIndicator")

  -- Warrant Type: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.warrant_type.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "6:global|0:|11:WarrantType")

  -- Cover Indicator: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.cover_indicator.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "6:global|0:|14:CoverIndicator")

  return index
end

-- Dissect: Bonds And Warrants Group
eurex_t7_rdi_fast_v14_0.bonds_and_warrants_group.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.bonds_and_warrants_group, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v14_0.bonds_and_warrants_group.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Parties
eurex_t7_rdi_fast_v14_0.instrument_parties = {}

-- Dissect Fields: Instrument Parties
eurex_t7_rdi_fast_v14_0.instrument_parties.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Instrument Party Id: string, Copy
  index, value = eurex_t7_rdi_fast_v14_0.instrument_party_id.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|17:InstrumentPartyID")

  -- Instrument Party Id Source: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.instrument_party_id_source.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|23:InstrumentPartyIDSource")

  -- Instrument Party Role: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.instrument_party_role.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|19:InstrumentPartyRole")

  -- Instrument Party Role Qualifier: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.instrument_party_role_qualifier.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|28:InstrumentPartyRoleQualifier")

  return index
end

-- Dissect: Instrument Parties
eurex_t7_rdi_fast_v14_0.instrument_parties.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_parties, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.instrument_parties.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Cash Descriptor Group
eurex_t7_rdi_fast_v14_0.cash_descriptor_group = {}

-- Dissect Fields: Cash Descriptor Group
eurex_t7_rdi_fast_v14_0.cash_descriptor_group.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Ref Tick Table Id: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.ref_tick_table_id.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|14:RefTickTableID")

  -- Currency: string, Default
  index, value = eurex_t7_rdi_fast_v14_0.currency.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Settl Currency: string, Default
  index, value = eurex_t7_rdi_fast_v14_0.settl_currency.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Deposit Type: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.deposit_type.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|11:DepositType")

  -- Issue Date: uInt32, sent, optional
  index, value = eurex_t7_rdi_fast_v14_0.issue_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Round Lot: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.round_lot.dissect(buffer, index, packet, parent, { presence_map[base + 4], false }, state, { "6:global|0:|8:RoundLot|E", "6:global|0:|8:RoundLot|M" })

  -- Min Trade Vol: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.min_trade_vol.dissect(buffer, index, packet, parent, { presence_map[base + 5], false }, state, { "6:global|0:|11:MinTradeVol|E", "6:global|0:|11:MinTradeVol|M" })

  -- Max Trade Vol: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.max_trade_vol_copy.dissect(buffer, index, packet, parent, { presence_map[base + 6], false }, state, { "6:global|0:|11:MaxTradeVol|E", "6:global|0:|11:MaxTradeVol|M" })

  -- Max Trade Val: uInt64, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.max_trade_val_copy.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "6:global|0:|11:MaxTradeVal")

  -- Quoting Start Time: string, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.quoting_start_time.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "6:global|0:|16:QuotingStartTime")

  -- Quoting End Time: string, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.quoting_end_time.dissect(buffer, index, packet, parent, presence_map[base + 9], state, "6:global|0:|14:QuotingEndTime")

  -- Instrument Auction Type: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.instrument_auction_type.dissect(buffer, index, packet, parent, presence_map[base + 10], state, "6:global|0:|21:InstrumentAuctionType")

  -- Midpoint Trading: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.midpoint_trading.dissect(buffer, index, packet, parent, presence_map[base + 11], state, "6:global|0:|15:MidpointTrading")

  -- Midpoint Exec Venue Id: string, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.midpoint_exec_venue_id.dissect(buffer, index, packet, parent, presence_map[base + 12], state, "6:global|0:|19:MidpointExecVenueID")

  -- No Instrument Parties: uInt32, sent, optional
  index, value = eurex_t7_rdi_fast_v14_0.no_instrument_parties.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Instrument Parties: No Instrument Parties entries
  local count = value or 0
  for instrument_parties_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.instrument_parties.dissect(buffer, index, packet, parent, presence_map, base, state, instrument_parties_index)
  end

  -- Bonds And Warrants Group: group, optional
  if presence_map[base + 13] then
    index = eurex_t7_rdi_fast_v14_0.bonds_and_warrants_group.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Volatility Corridor Group: group, optional
  if presence_map[base + 14] then
    index = eurex_t7_rdi_fast_v14_0.volatility_corridor_group.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Single Volatility Parameters Group: group, optional
  if presence_map[base + 15] then
    index = eurex_t7_rdi_fast_v14_0.single_volatility_parameters_group.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- No Security Classifications: uInt32, Constant, optional
  index, value = eurex_t7_rdi_fast_v14_0.no_security_classifications.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  -- Security Classification Grp: No Security Classifications entries
  local count = value or 0
  for security_classification_grp_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.security_classification_grp.dissect(buffer, index, packet, parent, presence_map, base, state, security_classification_grp_index)
  end

  return index
end

-- Dissect: Cash Descriptor Group
eurex_t7_rdi_fast_v14_0.cash_descriptor_group.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.cash_descriptor_group, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v14_0.cash_descriptor_group.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrmt Leg Grp
eurex_t7_rdi_fast_v14_0.instrmt_leg_grp = {}

-- Dissect Fields: Instrmt Leg Grp
eurex_t7_rdi_fast_v14_0.instrmt_leg_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Leg Symbol: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.leg_symbol.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:LegSymbol")

  -- Leg Security Id: int64, Delta
  index, value = eurex_t7_rdi_fast_v14_0.leg_security_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|13:LegSecurityID")

  -- Leg Security Id Source: string, Constant
  index, value = eurex_t7_rdi_fast_v14_0.leg_security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Security Type: uInt32, Default
  index, value = eurex_t7_rdi_fast_v14_0.leg_security_type.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Leg Side: uInt32, Default
  index, value = eurex_t7_rdi_fast_v14_0.leg_side.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Leg Ratio Qty: uInt32, Default
  index, value = eurex_t7_rdi_fast_v14_0.leg_ratio_qty.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Leg Price: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.leg_price.dissect(buffer, index, packet, parent, { presence_map[base + 4], false }, state, { "6:global|0:|8:LegPrice|E", "6:global|0:|8:LegPrice|M" })

  -- Related Price: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.related_price.dissect(buffer, index, packet, parent, { presence_map[base + 5], false }, state, { "6:global|0:|12:RelatedPrice|E", "6:global|0:|12:RelatedPrice|M" })

  -- Related Price Type: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.related_price_type.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "6:global|0:|16:RelatedPriceType")

  -- Trading Style: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.trading_style.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "6:global|0:|12:TradingStyle")

  return index
end

-- Dissect: Instrmt Leg Grp
eurex_t7_rdi_fast_v14_0.instrmt_leg_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrmt_leg_grp, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.instrmt_leg_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Complex Instrument Descriptor Group
eurex_t7_rdi_fast_v14_0.complex_instrument_descriptor_group = {}

-- Dissect Fields: Complex Instrument Descriptor Group
eurex_t7_rdi_fast_v14_0.complex_instrument_descriptor_group.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Last Fragment: uInt32, Default
  index, value = eurex_t7_rdi_fast_v14_0.last_fragment.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Leg Ratio Multiplier: uInt32, Default, optional
  index, value = eurex_t7_rdi_fast_v14_0.leg_ratio_multiplier.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Price Notation: uInt32, Default, optional
  index, value = eurex_t7_rdi_fast_v14_0.price_notation.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- No Legs: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.no_legs.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|6:NoLegs")

  -- Instrmt Leg Grp: No Legs entries
  local count = value or 0
  for instrmt_leg_grp_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.instrmt_leg_grp.dissect(buffer, index, packet, parent, presence_map, base, state, instrmt_leg_grp_index)
  end

  return index
end

-- Dissect: Complex Instrument Descriptor Group
eurex_t7_rdi_fast_v14_0.complex_instrument_descriptor_group.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.complex_instrument_descriptor_group, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v14_0.complex_instrument_descriptor_group.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Incremental Simple Instrument Descriptor Group
eurex_t7_rdi_fast_v14_0.instrument_incremental_simple_instrument_descriptor_group = {}

-- Dissect Fields: Instrument Incremental Simple Instrument Descriptor Group
eurex_t7_rdi_fast_v14_0.instrument_incremental_simple_instrument_descriptor_group.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security Reference Data Supplement: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.security_reference_data_supplement.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|31:SecurityReferenceDataSupplement")

  -- Contract Date: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.contract_date.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:ContractDate")

  -- Contract Date Type: string, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.contract_date_type.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|16:ContractDateType")

  -- Maturity Frequency Unit: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.maturity_frequency_unit.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|21:MaturityFrequencyUnit")

  -- Contract Frequency: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.contract_frequency.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|17:ContractFrequency")

  -- Strike Price: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.strike_price.dissect(buffer, index, packet, parent, { presence_map[base + 5], false }, state, { "6:global|0:|11:StrikePrice|E", "6:global|0:|11:StrikePrice|M" })

  -- Strike Price Precision: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.strike_price_precision.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "6:global|0:|20:StrikePricePrecision")

  -- Contract Multiplier: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.contract_multiplier.dissect(buffer, index, packet, parent, { presence_map[base + 7], false }, state, { "6:global|0:|18:ContractMultiplier|E", "6:global|0:|18:ContractMultiplier|M" })

  -- Put Or Call: uInt32, Default, optional
  index, value = eurex_t7_rdi_fast_v14_0.put_or_call.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Opt Attribute: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.opt_attribute.dissect(buffer, index, packet, parent, presence_map[base + 9], state, "6:global|0:|12:OptAttribute")

  -- Exercise Style: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.exercise_style.dissect(buffer, index, packet, parent, presence_map[base + 10], state, "6:global|0:|13:ExerciseStyle")

  -- Orig Strike Price: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.orig_strike_price.dissect(buffer, index, packet, parent, { presence_map[base + 11], false }, state, { "6:global|0:|15:OrigStrikePrice|E", "6:global|0:|15:OrigStrikePrice|M" })

  -- Contract Generation Number: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.contract_generation_number.dissect(buffer, index, packet, parent, presence_map[base + 12], state, "6:global|0:|24:ContractGenerationNumber")

  -- Low Exercise Price Option Indicator: uInt32, Default, optional
  index, value = eurex_t7_rdi_fast_v14_0.low_exercise_price_option_indicator.dissect(buffer, index, packet, parent, presence_map[base + 13], state, nil)

  -- Valuation Method: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.valuation_method.dissect(buffer, index, packet, parent, presence_map[base + 14], state, "6:global|0:|15:ValuationMethod")

  -- Settl Method: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.settl_method.dissect(buffer, index, packet, parent, presence_map[base + 15], state, "6:global|0:|11:SettlMethod")

  -- Settl Sub Method: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.settl_sub_method.dissect(buffer, index, packet, parent, presence_map[base + 16], state, "6:global|0:|14:SettlSubMethod")

  -- Prior Settl Price: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.prior_settl_price_copy_optional.dissect(buffer, index, packet, parent, { presence_map[base + 17], false }, state, { "6:global|0:|15:PriorSettlPrice|E", "6:global|0:|15:PriorSettlPrice|M" })

  -- Symbol: string, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.symbol.dissect(buffer, index, packet, parent, presence_map[base + 18], state, "6:global|0:|6:Symbol")

  -- List Method: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.list_method.dissect(buffer, index, packet, parent, presence_map[base + 19], state, "6:global|0:|10:ListMethod")

  return index
end

-- Dissect: Instrument Incremental Simple Instrument Descriptor Group
eurex_t7_rdi_fast_v14_0.instrument_incremental_simple_instrument_descriptor_group.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_incremental_simple_instrument_descriptor_group, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v14_0.instrument_incremental_simple_instrument_descriptor_group.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Incremental Derivatives Descriptor Group
eurex_t7_rdi_fast_v14_0.instrument_incremental_derivatives_descriptor_group = {}

-- Dissect Fields: Instrument Incremental Derivatives Descriptor Group
eurex_t7_rdi_fast_v14_0.instrument_incremental_derivatives_descriptor_group.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Cfi Code: string, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.cfi_code.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|7:CFICode")

  -- Display Name: string, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.display_name.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|11:DisplayName")

  -- Contract Identification Eligibility: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.contract_identification_eligibility.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|33:ContractIdentificationEligibility")

  -- Is Primary: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.is_primary.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|9:IsPrimary")

  -- Quantity Scaling Factor: uInt32, Delta, optional
  index, value = eurex_t7_rdi_fast_v14_0.quantity_scaling_factor_delta_optional.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|21:QuantityScalingFactor")

  -- Simple Instrument Descriptor Group: group, optional
  if presence_map[base + 4] then
    index = eurex_t7_rdi_fast_v14_0.instrument_incremental_simple_instrument_descriptor_group.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Complex Instrument Descriptor Group: group, optional
  if presence_map[base + 5] then
    index = eurex_t7_rdi_fast_v14_0.complex_instrument_descriptor_group.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Unit Of Measure: string, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.unit_of_measure.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "6:global|0:|13:UnitOfMeasure")

  -- Asset Type: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.asset_type.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "6:global|0:|9:AssetType")

  -- Asset Sub Type: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.asset_sub_type.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "6:global|0:|12:AssetSubType")

  -- Transact Time: timestamp, Delta, optional
  index, value = eurex_t7_rdi_fast_v14_0.transact_time_delta_optional.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|12:TransactTime")

  return index
end

-- Dissect: Instrument Incremental Derivatives Descriptor Group
eurex_t7_rdi_fast_v14_0.instrument_incremental_derivatives_descriptor_group.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_incremental_derivatives_descriptor_group, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v14_0.instrument_incremental_derivatives_descriptor_group.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Security Alt
eurex_t7_rdi_fast_v14_0.security_alt = {}

-- Dissect Fields: Security Alt
eurex_t7_rdi_fast_v14_0.security_alt.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security Alt Id: string, Delta
  index, value = eurex_t7_rdi_fast_v14_0.security_alt_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|13:SecurityAltID")

  -- Security Alt Id Source: string, Copy
  index, value = eurex_t7_rdi_fast_v14_0.security_alt_id_source.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|19:SecurityAltIDSource")

  return index
end

-- Dissect: Security Alt
eurex_t7_rdi_fast_v14_0.security_alt.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_alt, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.security_alt.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Incremental Message
eurex_t7_rdi_fast_v14_0.instrument_incremental = {}

-- Dissect Fields: Instrument Incremental Message
eurex_t7_rdi_fast_v14_0.instrument_incremental.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_rdi_fast_v14_0.msg_type_constant_bp.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = eurex_t7_rdi_fast_v14_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Security Update Action: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.security_update_action.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|20:SecurityUpdateAction")

  -- Security Id: int64, Delta
  index, value = eurex_t7_rdi_fast_v14_0.security_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|10:SecurityID")

  -- Security Id Source: string, Constant
  index, value = eurex_t7_rdi_fast_v14_0.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Security Alt Id: uInt32, sent, optional
  index, value = eurex_t7_rdi_fast_v14_0.no_security_alt_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Alt: No Security Alt Id entries
  local count = value or 0
  for security_alt_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.security_alt.dissect(buffer, index, packet, parent, presence_map, base, state, security_alt_index)
  end

  -- Security Type: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.security_type_copy.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SecurityType")

  -- Security Status: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.security_status.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|14:SecurityStatus")

  -- Security Desc: string, Delta, optional
  index, value = eurex_t7_rdi_fast_v14_0.security_desc.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|12:SecurityDesc")

  -- Security Exchange: string, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.security_exchange.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|16:SecurityExchange")

  -- Product Complex: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.product_complex.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "6:global|0:|14:ProductComplex")

  -- Derivatives Descriptor Group: group, optional
  if presence_map[base + 6] then
    index = eurex_t7_rdi_fast_v14_0.instrument_incremental_derivatives_descriptor_group.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Cash Descriptor Group: group, optional
  if presence_map[base + 7] then
    index = eurex_t7_rdi_fast_v14_0.cash_descriptor_group.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- No Instr Attrib: uInt32, sent, optional
  index, value = eurex_t7_rdi_fast_v14_0.no_instr_attrib.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Instrument Attributes: No Instr Attrib entries
  local count = value or 0
  for instrument_attributes_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.instrument_attributes.dissect(buffer, index, packet, parent, presence_map, base, state, instrument_attributes_index)
  end

  -- No Events: uInt32, sent, optional
  index, value = eurex_t7_rdi_fast_v14_0.no_events.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Events: No Events entries
  local count = value or 0
  for events_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.events.dissect(buffer, index, packet, parent, presence_map, base, state, events_index)
  end

  -- Instrument Price Precision: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.instrument_price_precision.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "6:global|0:|24:InstrumentPricePrecision")

  -- Min Price Increment: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.min_price_increment.dissect(buffer, index, packet, parent, { presence_map[base + 9], false }, state, { "6:global|0:|17:MinPriceIncrement|E", "6:global|0:|17:MinPriceIncrement|M" })

  -- Min Price Increment Clearing: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.min_price_increment_clearing.dissect(buffer, index, packet, parent, { presence_map[base + 10], false }, state, { "6:global|0:|25:MinPriceIncrementClearing|E", "6:global|0:|25:MinPriceIncrementClearing|M" })

  -- Min Price Increment Amount: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.min_price_increment_amount.dissect(buffer, index, packet, parent, { presence_map[base + 11], false }, state, { "6:global|0:|23:MinPriceIncrementAmount|E", "6:global|0:|23:MinPriceIncrementAmount|M" })

  -- Maturity Date: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.maturity_date.dissect(buffer, index, packet, parent, presence_map[base + 12], state, "6:global|0:|12:MaturityDate")

  -- Maturity Month Year: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.maturity_month_year.dissect(buffer, index, packet, parent, presence_map[base + 13], state, "6:global|0:|17:MaturityMonthYear")

  -- Security Sub Type: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.security_sub_type.dissect(buffer, index, packet, parent, presence_map[base + 14], state, "6:global|0:|15:SecuritySubType")

  -- Related Instrument Grp: group, optional
  if presence_map[base + 15] then
    index = eurex_t7_rdi_fast_v14_0.related_instrument_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- No Market Segments: uInt32, Constant
  index, value = eurex_t7_rdi_fast_v14_0.no_market_segments.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Segment Grp: No Market Segments entries
  local count = value or 0
  for market_segment_grp_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.market_segment_grp.dissect(buffer, index, packet, parent, presence_map, base, state, market_segment_grp_index)
  end

  return index
end

-- Dissect: Instrument Incremental Message
eurex_t7_rdi_fast_v14_0.instrument_incremental.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_rdi_fast_v14_0.instrument_incremental.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Trading Session Rules
eurex_t7_rdi_fast_v14_0.trading_session_rules = {}

-- Dissect Fields: Trading Session Rules
eurex_t7_rdi_fast_v14_0.trading_session_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trading Session Id: uInt32, Constant
  index, value = eurex_t7_rdi_fast_v14_0.trading_session_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Sub Id: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.trading_session_sub_id.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|19:TradingSessionSubID")

  return index
end

-- Dissect: Trading Session Rules
eurex_t7_rdi_fast_v14_0.trading_session_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.trading_session_rules, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.trading_session_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Snapshot Price Range Rules
eurex_t7_rdi_fast_v14_0.instrument_snapshot_price_range_rules = {}

-- Dissect Fields: Instrument Snapshot Price Range Rules
eurex_t7_rdi_fast_v14_0.instrument_snapshot_price_range_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Price Range Rule Id: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.price_range_rule_id.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|16:PriceRangeRuleID")

  return index
end

-- Dissect: Instrument Snapshot Price Range Rules
eurex_t7_rdi_fast_v14_0.instrument_snapshot_price_range_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_snapshot_price_range_rules, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.instrument_snapshot_price_range_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Snapshot Quote Size Rules
eurex_t7_rdi_fast_v14_0.instrument_snapshot_quote_size_rules = {}

-- Dissect Fields: Instrument Snapshot Quote Size Rules
eurex_t7_rdi_fast_v14_0.instrument_snapshot_quote_size_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Min Bid Size: decimal, Copy
  index, value = eurex_t7_rdi_fast_v14_0.min_bid_size.dissect(buffer, index, packet, parent, { presence_map[base + 0], false }, state, { "6:global|0:|10:MinBidSize|E", "6:global|0:|10:MinBidSize|M" })

  -- Min Offer Size: decimal, Copy
  index, value = eurex_t7_rdi_fast_v14_0.min_offer_size.dissect(buffer, index, packet, parent, { presence_map[base + 1], false }, state, { "6:global|0:|12:MinOfferSize|E", "6:global|0:|12:MinOfferSize|M" })

  return index
end

-- Dissect: Instrument Snapshot Quote Size Rules
eurex_t7_rdi_fast_v14_0.instrument_snapshot_quote_size_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_snapshot_quote_size_rules, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.instrument_snapshot_quote_size_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Segment Grp
eurex_t7_rdi_fast_v14_0.market_segment_grp = {}

-- Dissect Fields: Market Segment Grp
eurex_t7_rdi_fast_v14_0.market_segment_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Market Segment Id: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.market_segment_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|15:MarketSegmentID")

  -- Implied Market Indicator: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.implied_market_indicator.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|22:ImpliedMarketIndicator")

  -- Multileg Model: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.multileg_model.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|13:MultilegModel")

  -- Price Type: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.price_type.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|9:PriceType")

  -- Post Trade Anonymity: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.post_trade_anonymity.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|18:PostTradeAnonymity")

  -- Settl Business Days: uInt32, Default, optional
  index, value = eurex_t7_rdi_fast_v14_0.settl_business_days.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- No Quote Size Rules: uInt32, Constant, optional
  index, value = eurex_t7_rdi_fast_v14_0.no_quote_size_rules_constant.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Quote Size Rules: No Quote Size Rules entries
  local count = value or 0
  for instrument_snapshot_quote_size_rules_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.instrument_snapshot_quote_size_rules.dissect(buffer, index, packet, parent, presence_map, base, state, instrument_snapshot_quote_size_rules_index)
  end

  -- No Price Range Rules: uInt32, Constant, optional
  index, value = eurex_t7_rdi_fast_v14_0.no_price_range_rules_constant.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Price Range Rules: No Price Range Rules entries
  local count = value or 0
  for instrument_snapshot_price_range_rules_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.instrument_snapshot_price_range_rules.dissect(buffer, index, packet, parent, presence_map, base, state, instrument_snapshot_price_range_rules_index)
  end

  -- No Trading Session Rules: uInt32, Constant, optional
  index, value = eurex_t7_rdi_fast_v14_0.no_trading_session_rules.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Trading Session Rules: No Trading Session Rules entries
  local count = value or 0
  for trading_session_rules_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.trading_session_rules.dissect(buffer, index, packet, parent, presence_map, base, state, trading_session_rules_index)
  end

  return index
end

-- Dissect: Market Segment Grp
eurex_t7_rdi_fast_v14_0.market_segment_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.market_segment_grp, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.market_segment_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Related Instrument Grp
eurex_t7_rdi_fast_v14_0.related_instrument_grp = {}

-- Dissect Fields: Related Instrument Grp
eurex_t7_rdi_fast_v14_0.related_instrument_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Related Security Id: int64, Delta
  index, value = eurex_t7_rdi_fast_v14_0.related_security_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|17:RelatedSecurityID")

  -- Related Security Id Source: string, Constant
  index, value = eurex_t7_rdi_fast_v14_0.related_security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Related Instrument Grp
eurex_t7_rdi_fast_v14_0.related_instrument_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.related_instrument_grp, buffer(offset, 0))
  local index = offset

  index = eurex_t7_rdi_fast_v14_0.related_instrument_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Events
eurex_t7_rdi_fast_v14_0.events = {}

-- Dissect Fields: Events
eurex_t7_rdi_fast_v14_0.events.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Event Type: uInt32, Default
  index, value = eurex_t7_rdi_fast_v14_0.event_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Event Date: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.event_date.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|9:EventDate")

  return index
end

-- Dissect: Events
eurex_t7_rdi_fast_v14_0.events.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.events, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.events.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Attributes
eurex_t7_rdi_fast_v14_0.instrument_attributes = {}

-- Dissect Fields: Instrument Attributes
eurex_t7_rdi_fast_v14_0.instrument_attributes.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Instr Attrib Type: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.instr_attrib_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|15:InstrAttribType")

  -- Instr Attrib Value: string, Copy
  index, value = eurex_t7_rdi_fast_v14_0.instr_attrib_value.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|16:InstrAttribValue")

  return index
end

-- Dissect: Instrument Attributes
eurex_t7_rdi_fast_v14_0.instrument_attributes.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_attributes, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.instrument_attributes.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Security Classification Grp
eurex_t7_rdi_fast_v14_0.security_classification_grp = {}

-- Dissect Fields: Security Classification Grp
eurex_t7_rdi_fast_v14_0.security_classification_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security Classification Reason: uInt32, Default
  index, value = eurex_t7_rdi_fast_v14_0.security_classification_reason.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Security Classification Value: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.security_classification_value.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|27:SecurityClassificationValue")

  return index
end

-- Dissect: Security Classification Grp
eurex_t7_rdi_fast_v14_0.security_classification_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_classification_grp, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.security_classification_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Single Volatility Parameters Group
eurex_t7_rdi_fast_v14_0.single_volatility_parameters_group = {}

-- Dissect Fields: Single Volatility Parameters Group
eurex_t7_rdi_fast_v14_0.single_volatility_parameters_group.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Fixed Abs Vola Interruption Limit: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.fixed_abs_vola_interruption_limit.dissect(buffer, index, packet, parent, { presence_map[base + 0], false }, state, { "6:global|0:|29:FixedAbsVolaInterruptionLimit|E", "6:global|0:|29:FixedAbsVolaInterruptionLimit|M" })

  -- Float Abs Vola Interruption Limit: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.float_abs_vola_interruption_limit.dissect(buffer, index, packet, parent, { presence_map[base + 1], false }, state, { "6:global|0:|29:FloatAbsVolaInterruptionLimit|E", "6:global|0:|29:FloatAbsVolaInterruptionLimit|M" })

  -- Fixed Pct Vola Interruption Limit: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.fixed_pct_vola_interruption_limit.dissect(buffer, index, packet, parent, { presence_map[base + 2], false }, state, { "6:global|0:|29:FixedPctVolaInterruptionLimit|E", "6:global|0:|29:FixedPctVolaInterruptionLimit|M" })

  -- Float Pct Vola Interruption Limit: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.float_pct_vola_interruption_limit.dissect(buffer, index, packet, parent, { presence_map[base + 3], false }, state, { "6:global|0:|29:FloatPctVolaInterruptionLimit|E", "6:global|0:|29:FloatPctVolaInterruptionLimit|M" })

  return index
end

-- Dissect: Single Volatility Parameters Group
eurex_t7_rdi_fast_v14_0.single_volatility_parameters_group.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.single_volatility_parameters_group, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v14_0.single_volatility_parameters_group.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Volatility Corridor Group
eurex_t7_rdi_fast_v14_0.volatility_corridor_group = {}

-- Dissect Fields: Volatility Corridor Group
eurex_t7_rdi_fast_v14_0.volatility_corridor_group.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Volatility Corridor Opening Auction: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.volatility_corridor_opening_auction.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|32:VolatilityCorridorOpeningAuction")

  -- Volatility Corridor Intraday Auction: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.volatility_corridor_intraday_auction.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|33:VolatilityCorridorIntradayAuction")

  -- Volatility Corridor Closing Auction: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.volatility_corridor_closing_auction.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|32:VolatilityCorridorClosingAuction")

  -- Volatility Corridor Continuous: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.volatility_corridor_continuous.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|28:VolatilityCorridorContinuous")

  -- Volatility Corridor Retail Auction: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.volatility_corridor_retail_auction.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|31:VolatilityCorridorRetailAuction")

  return index
end

-- Dissect: Volatility Corridor Group
eurex_t7_rdi_fast_v14_0.volatility_corridor_group.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.volatility_corridor_group, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v14_0.volatility_corridor_group.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Bonds And Warrants Group
eurex_t7_rdi_fast_v14_0.bonds_and_warrants_group = {}

-- Dissect Fields: Bonds And Warrants Group
eurex_t7_rdi_fast_v14_0.bonds_and_warrants_group.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Underlying Symbol: string, Delta, optional
  index, value = eurex_t7_rdi_fast_v14_0.underlying_symbol.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|16:UnderlyingSymbol")

  -- Coupon Rate: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.coupon_rate.dissect(buffer, index, packet, parent, { presence_map[base + 0], false }, state, { "6:global|0:|10:CouponRate|E", "6:global|0:|10:CouponRate|M" })

  -- Previous Coupon Payment Date: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.previous_coupon_payment_date.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|25:PreviousCouponPaymentDate")

  -- Coupon Payment Date: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.coupon_payment_date.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|17:CouponPaymentDate")

  -- Coupon Day Count: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.coupon_day_count.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|14:CouponDayCount")

  -- Coupon Type: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.coupon_type.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|10:CouponType")

  -- Country Of Issue: string, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.country_of_issue.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "6:global|0:|14:CountryOfIssue")

  -- Flat Indicator: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.flat_indicator.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "6:global|0:|13:FlatIndicator")

  -- Warrant Type: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.warrant_type.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "6:global|0:|11:WarrantType")

  -- Cover Indicator: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.cover_indicator.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "6:global|0:|14:CoverIndicator")

  return index
end

-- Dissect: Bonds And Warrants Group
eurex_t7_rdi_fast_v14_0.bonds_and_warrants_group.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.bonds_and_warrants_group, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v14_0.bonds_and_warrants_group.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Parties
eurex_t7_rdi_fast_v14_0.instrument_parties = {}

-- Dissect Fields: Instrument Parties
eurex_t7_rdi_fast_v14_0.instrument_parties.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Instrument Party Id: string, Copy
  index, value = eurex_t7_rdi_fast_v14_0.instrument_party_id.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|17:InstrumentPartyID")

  -- Instrument Party Id Source: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.instrument_party_id_source.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|23:InstrumentPartyIDSource")

  -- Instrument Party Role: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.instrument_party_role.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|19:InstrumentPartyRole")

  -- Instrument Party Role Qualifier: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.instrument_party_role_qualifier.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|28:InstrumentPartyRoleQualifier")

  return index
end

-- Dissect: Instrument Parties
eurex_t7_rdi_fast_v14_0.instrument_parties.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_parties, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.instrument_parties.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Cash Descriptor Group
eurex_t7_rdi_fast_v14_0.cash_descriptor_group = {}

-- Dissect Fields: Cash Descriptor Group
eurex_t7_rdi_fast_v14_0.cash_descriptor_group.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Ref Tick Table Id: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.ref_tick_table_id.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|14:RefTickTableID")

  -- Currency: string, Default
  index, value = eurex_t7_rdi_fast_v14_0.currency.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Settl Currency: string, Default
  index, value = eurex_t7_rdi_fast_v14_0.settl_currency.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Deposit Type: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.deposit_type.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|11:DepositType")

  -- Issue Date: uInt32, sent, optional
  index, value = eurex_t7_rdi_fast_v14_0.issue_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Round Lot: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.round_lot.dissect(buffer, index, packet, parent, { presence_map[base + 4], false }, state, { "6:global|0:|8:RoundLot|E", "6:global|0:|8:RoundLot|M" })

  -- Min Trade Vol: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.min_trade_vol.dissect(buffer, index, packet, parent, { presence_map[base + 5], false }, state, { "6:global|0:|11:MinTradeVol|E", "6:global|0:|11:MinTradeVol|M" })

  -- Max Trade Vol: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.max_trade_vol_copy.dissect(buffer, index, packet, parent, { presence_map[base + 6], false }, state, { "6:global|0:|11:MaxTradeVol|E", "6:global|0:|11:MaxTradeVol|M" })

  -- Max Trade Val: uInt64, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.max_trade_val_copy.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "6:global|0:|11:MaxTradeVal")

  -- Quoting Start Time: string, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.quoting_start_time.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "6:global|0:|16:QuotingStartTime")

  -- Quoting End Time: string, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.quoting_end_time.dissect(buffer, index, packet, parent, presence_map[base + 9], state, "6:global|0:|14:QuotingEndTime")

  -- Instrument Auction Type: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.instrument_auction_type.dissect(buffer, index, packet, parent, presence_map[base + 10], state, "6:global|0:|21:InstrumentAuctionType")

  -- Midpoint Trading: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.midpoint_trading.dissect(buffer, index, packet, parent, presence_map[base + 11], state, "6:global|0:|15:MidpointTrading")

  -- Midpoint Exec Venue Id: string, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.midpoint_exec_venue_id.dissect(buffer, index, packet, parent, presence_map[base + 12], state, "6:global|0:|19:MidpointExecVenueID")

  -- No Instrument Parties: uInt32, sent, optional
  index, value = eurex_t7_rdi_fast_v14_0.no_instrument_parties.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Instrument Parties: No Instrument Parties entries
  local count = value or 0
  for instrument_parties_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.instrument_parties.dissect(buffer, index, packet, parent, presence_map, base, state, instrument_parties_index)
  end

  -- Bonds And Warrants Group: group, optional
  if presence_map[base + 13] then
    index = eurex_t7_rdi_fast_v14_0.bonds_and_warrants_group.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Volatility Corridor Group: group, optional
  if presence_map[base + 14] then
    index = eurex_t7_rdi_fast_v14_0.volatility_corridor_group.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Single Volatility Parameters Group: group, optional
  if presence_map[base + 15] then
    index = eurex_t7_rdi_fast_v14_0.single_volatility_parameters_group.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- No Security Classifications: uInt32, Constant, optional
  index, value = eurex_t7_rdi_fast_v14_0.no_security_classifications.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  -- Security Classification Grp: No Security Classifications entries
  local count = value or 0
  for security_classification_grp_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.security_classification_grp.dissect(buffer, index, packet, parent, presence_map, base, state, security_classification_grp_index)
  end

  return index
end

-- Dissect: Cash Descriptor Group
eurex_t7_rdi_fast_v14_0.cash_descriptor_group.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.cash_descriptor_group, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v14_0.cash_descriptor_group.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Underlying Instrument
eurex_t7_rdi_fast_v14_0.underlying_instrument = {}

-- Dissect Fields: Underlying Instrument
eurex_t7_rdi_fast_v14_0.underlying_instrument.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Underlying Market Segment Id: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.underlying_market_segment_id.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|25:UnderlyingMarketSegmentID")

  -- Underlying Security Id: int64, sent
  index, value = eurex_t7_rdi_fast_v14_0.underlying_security_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Security Id Source: string, Constant
  index, value = eurex_t7_rdi_fast_v14_0.underlying_security_id_source_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Underlying Instrument
eurex_t7_rdi_fast_v14_0.underlying_instrument.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.underlying_instrument, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v14_0.underlying_instrument.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrmt Leg Grp
eurex_t7_rdi_fast_v14_0.instrmt_leg_grp = {}

-- Dissect Fields: Instrmt Leg Grp
eurex_t7_rdi_fast_v14_0.instrmt_leg_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Leg Symbol: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.leg_symbol.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:LegSymbol")

  -- Leg Security Id: int64, Delta
  index, value = eurex_t7_rdi_fast_v14_0.leg_security_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|13:LegSecurityID")

  -- Leg Security Id Source: string, Constant
  index, value = eurex_t7_rdi_fast_v14_0.leg_security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Security Type: uInt32, Default
  index, value = eurex_t7_rdi_fast_v14_0.leg_security_type.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Leg Side: uInt32, Default
  index, value = eurex_t7_rdi_fast_v14_0.leg_side.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Leg Ratio Qty: uInt32, Default
  index, value = eurex_t7_rdi_fast_v14_0.leg_ratio_qty.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Leg Price: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.leg_price.dissect(buffer, index, packet, parent, { presence_map[base + 4], false }, state, { "6:global|0:|8:LegPrice|E", "6:global|0:|8:LegPrice|M" })

  -- Related Price: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.related_price.dissect(buffer, index, packet, parent, { presence_map[base + 5], false }, state, { "6:global|0:|12:RelatedPrice|E", "6:global|0:|12:RelatedPrice|M" })

  -- Related Price Type: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.related_price_type.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "6:global|0:|16:RelatedPriceType")

  -- Trading Style: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.trading_style.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "6:global|0:|12:TradingStyle")

  return index
end

-- Dissect: Instrmt Leg Grp
eurex_t7_rdi_fast_v14_0.instrmt_leg_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrmt_leg_grp, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.instrmt_leg_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Complex Instrument Descriptor Group
eurex_t7_rdi_fast_v14_0.complex_instrument_descriptor_group = {}

-- Dissect Fields: Complex Instrument Descriptor Group
eurex_t7_rdi_fast_v14_0.complex_instrument_descriptor_group.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Last Fragment: uInt32, Default
  index, value = eurex_t7_rdi_fast_v14_0.last_fragment.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Leg Ratio Multiplier: uInt32, Default, optional
  index, value = eurex_t7_rdi_fast_v14_0.leg_ratio_multiplier.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Price Notation: uInt32, Default, optional
  index, value = eurex_t7_rdi_fast_v14_0.price_notation.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- No Legs: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.no_legs.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|6:NoLegs")

  -- Instrmt Leg Grp: No Legs entries
  local count = value or 0
  for instrmt_leg_grp_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.instrmt_leg_grp.dissect(buffer, index, packet, parent, presence_map, base, state, instrmt_leg_grp_index)
  end

  return index
end

-- Dissect: Complex Instrument Descriptor Group
eurex_t7_rdi_fast_v14_0.complex_instrument_descriptor_group.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.complex_instrument_descriptor_group, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v14_0.complex_instrument_descriptor_group.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Snapshot Simple Instrument Descriptor Group
eurex_t7_rdi_fast_v14_0.instrument_snapshot_simple_instrument_descriptor_group = {}

-- Dissect Fields: Instrument Snapshot Simple Instrument Descriptor Group
eurex_t7_rdi_fast_v14_0.instrument_snapshot_simple_instrument_descriptor_group.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security Reference Data Supplement: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.security_reference_data_supplement.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|31:SecurityReferenceDataSupplement")

  -- Contract Date: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.contract_date.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:ContractDate")

  -- Contract Date Type: string, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.contract_date_type.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|16:ContractDateType")

  -- Contract Month Year: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.contract_month_year.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|17:ContractMonthYear")

  -- Contract Month Type: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.contract_month_type.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|17:ContractMonthType")

  -- Contract Cycle Type: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.contract_cycle_type.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "6:global|0:|17:ContractCycleType")

  -- Contract Cycle Sub Type: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.contract_cycle_sub_type.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "6:global|0:|20:ContractCycleSubType")

  -- Maturity Frequency Unit: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.maturity_frequency_unit.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "6:global|0:|21:MaturityFrequencyUnit")

  -- Contract Frequency: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.contract_frequency.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "6:global|0:|17:ContractFrequency")

  -- Contract Display Instruction: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.contract_display_instruction.dissect(buffer, index, packet, parent, presence_map[base + 9], state, "6:global|0:|26:ContractDisplayInstruction")

  -- Display Day: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.display_day.dissect(buffer, index, packet, parent, presence_map[base + 10], state, "6:global|0:|10:DisplayDay")

  -- Display Relative Day: int32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.display_relative_day.dissect(buffer, index, packet, parent, presence_map[base + 11], state, "6:global|0:|18:DisplayRelativeDay")

  -- Display Week: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.display_week.dissect(buffer, index, packet, parent, presence_map[base + 12], state, "6:global|0:|11:DisplayWeek")

  -- Display Day Of Week: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.display_day_of_week.dissect(buffer, index, packet, parent, presence_map[base + 13], state, "6:global|0:|16:DisplayDayOfWeek")

  -- Display Month: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.display_month.dissect(buffer, index, packet, parent, presence_map[base + 14], state, "6:global|0:|12:DisplayMonth")

  -- Display Quarter: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.display_quarter.dissect(buffer, index, packet, parent, presence_map[base + 15], state, "6:global|0:|14:DisplayQuarter")

  -- Display Season: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.display_season.dissect(buffer, index, packet, parent, presence_map[base + 16], state, "6:global|0:|13:DisplaySeason")

  -- Display Year: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.display_year.dissect(buffer, index, packet, parent, presence_map[base + 17], state, "6:global|0:|11:DisplayYear")

  -- Strike Price: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.strike_price.dissect(buffer, index, packet, parent, { presence_map[base + 18], false }, state, { "6:global|0:|11:StrikePrice|E", "6:global|0:|11:StrikePrice|M" })

  -- Strike Price Precision: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.strike_price_precision.dissect(buffer, index, packet, parent, presence_map[base + 19], state, "6:global|0:|20:StrikePricePrecision")

  -- Contract Multiplier: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.contract_multiplier.dissect(buffer, index, packet, parent, { presence_map[base + 20], false }, state, { "6:global|0:|18:ContractMultiplier|E", "6:global|0:|18:ContractMultiplier|M" })

  -- Put Or Call: uInt32, Default, optional
  index, value = eurex_t7_rdi_fast_v14_0.put_or_call.dissect(buffer, index, packet, parent, presence_map[base + 21], state, nil)

  -- Opt Attribute: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.opt_attribute.dissect(buffer, index, packet, parent, presence_map[base + 22], state, "6:global|0:|12:OptAttribute")

  -- Exercise Style: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.exercise_style.dissect(buffer, index, packet, parent, presence_map[base + 23], state, "6:global|0:|13:ExerciseStyle")

  -- Orig Strike Price: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.orig_strike_price.dissect(buffer, index, packet, parent, { presence_map[base + 24], false }, state, { "6:global|0:|15:OrigStrikePrice|E", "6:global|0:|15:OrigStrikePrice|M" })

  -- Contract Generation Number: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.contract_generation_number.dissect(buffer, index, packet, parent, presence_map[base + 25], state, "6:global|0:|24:ContractGenerationNumber")

  -- Low Exercise Price Option Indicator: uInt32, Default, optional
  index, value = eurex_t7_rdi_fast_v14_0.low_exercise_price_option_indicator.dissect(buffer, index, packet, parent, presence_map[base + 26], state, nil)

  -- Valuation Method: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.valuation_method.dissect(buffer, index, packet, parent, presence_map[base + 27], state, "6:global|0:|15:ValuationMethod")

  -- Settl Method: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.settl_method.dissect(buffer, index, packet, parent, presence_map[base + 28], state, "6:global|0:|11:SettlMethod")

  -- Settl Sub Method: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.settl_sub_method.dissect(buffer, index, packet, parent, presence_map[base + 29], state, "6:global|0:|14:SettlSubMethod")

  -- Prior Settl Price: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.prior_settl_price_copy_optional.dissect(buffer, index, packet, parent, { presence_map[base + 30], false }, state, { "6:global|0:|15:PriorSettlPrice|E", "6:global|0:|15:PriorSettlPrice|M" })

  -- Price Delta: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.price_delta.dissect(buffer, index, packet, parent, { presence_map[base + 31], false }, state, { "6:global|0:|10:PriceDelta|E", "6:global|0:|10:PriceDelta|M" })

  -- Risk Sensitivity Factor: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.risk_sensitivity_factor.dissect(buffer, index, packet, parent, { presence_map[base + 32], false }, state, { "6:global|0:|21:RiskSensitivityFactor|E", "6:global|0:|21:RiskSensitivityFactor|M" })

  -- Symbol: string, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.symbol.dissect(buffer, index, packet, parent, presence_map[base + 33], state, "6:global|0:|6:Symbol")

  -- List Method: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.list_method.dissect(buffer, index, packet, parent, presence_map[base + 34], state, "6:global|0:|10:ListMethod")

  return index
end

-- Dissect: Instrument Snapshot Simple Instrument Descriptor Group
eurex_t7_rdi_fast_v14_0.instrument_snapshot_simple_instrument_descriptor_group.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_snapshot_simple_instrument_descriptor_group, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v14_0.instrument_snapshot_simple_instrument_descriptor_group.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Snapshot Derivatives Descriptor Group
eurex_t7_rdi_fast_v14_0.instrument_snapshot_derivatives_descriptor_group = {}

-- Dissect Fields: Instrument Snapshot Derivatives Descriptor Group
eurex_t7_rdi_fast_v14_0.instrument_snapshot_derivatives_descriptor_group.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Cfi Code: string, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.cfi_code.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|7:CFICode")

  -- Display Name: string, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.display_name.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|11:DisplayName")

  -- Contract Identification Eligibility: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.contract_identification_eligibility.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|33:ContractIdentificationEligibility")

  -- Is Primary: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.is_primary.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|9:IsPrimary")

  -- Quantity Scaling Factor: uInt32, Delta, optional
  index, value = eurex_t7_rdi_fast_v14_0.quantity_scaling_factor_delta_optional.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|21:QuantityScalingFactor")

  -- Simple Instrument Descriptor Group: group, optional
  if presence_map[base + 4] then
    index = eurex_t7_rdi_fast_v14_0.instrument_snapshot_simple_instrument_descriptor_group.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Complex Instrument Descriptor Group: group, optional
  if presence_map[base + 5] then
    index = eurex_t7_rdi_fast_v14_0.complex_instrument_descriptor_group.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Underlying Instrument: group, optional
  if presence_map[base + 6] then
    index = eurex_t7_rdi_fast_v14_0.underlying_instrument.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Unit Of Measure: string, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.unit_of_measure.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "6:global|0:|13:UnitOfMeasure")

  -- Asset Type: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.asset_type.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "6:global|0:|9:AssetType")

  -- Asset Sub Type: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.asset_sub_type.dissect(buffer, index, packet, parent, presence_map[base + 9], state, "6:global|0:|12:AssetSubType")

  -- Transact Time: timestamp, Delta, optional
  index, value = eurex_t7_rdi_fast_v14_0.transact_time_delta_optional.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|12:TransactTime")

  return index
end

-- Dissect: Instrument Snapshot Derivatives Descriptor Group
eurex_t7_rdi_fast_v14_0.instrument_snapshot_derivatives_descriptor_group.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_snapshot_derivatives_descriptor_group, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v14_0.instrument_snapshot_derivatives_descriptor_group.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Security Alt
eurex_t7_rdi_fast_v14_0.security_alt = {}

-- Dissect Fields: Security Alt
eurex_t7_rdi_fast_v14_0.security_alt.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security Alt Id: string, Delta
  index, value = eurex_t7_rdi_fast_v14_0.security_alt_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|13:SecurityAltID")

  -- Security Alt Id Source: string, Copy
  index, value = eurex_t7_rdi_fast_v14_0.security_alt_id_source.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|19:SecurityAltIDSource")

  return index
end

-- Dissect: Security Alt
eurex_t7_rdi_fast_v14_0.security_alt.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.security_alt, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.security_alt.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Snapshot Message
eurex_t7_rdi_fast_v14_0.instrument_snapshot = {}

-- Dissect Fields: Instrument Snapshot Message
eurex_t7_rdi_fast_v14_0.instrument_snapshot.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_rdi_fast_v14_0.msg_type_constant_d.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = eurex_t7_rdi_fast_v14_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Security Id: int64, Delta
  index, value = eurex_t7_rdi_fast_v14_0.security_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|10:SecurityID")

  -- Security Id Source: string, Constant
  index, value = eurex_t7_rdi_fast_v14_0.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Security Alt Id: uInt32, sent, optional
  index, value = eurex_t7_rdi_fast_v14_0.no_security_alt_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Alt: No Security Alt Id entries
  local count = value or 0
  for security_alt_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.security_alt.dissect(buffer, index, packet, parent, presence_map, base, state, security_alt_index)
  end

  -- Security Type: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.security_type_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:SecurityType")

  -- Security Status: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.security_status.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|14:SecurityStatus")

  -- Security Desc: string, Delta, optional
  index, value = eurex_t7_rdi_fast_v14_0.security_desc.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|12:SecurityDesc")

  -- Security Exchange: string, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.security_exchange.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|16:SecurityExchange")

  -- Product Complex: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.product_complex.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|14:ProductComplex")

  -- Derivatives Descriptor Group: group, optional
  if presence_map[base + 5] then
    index = eurex_t7_rdi_fast_v14_0.instrument_snapshot_derivatives_descriptor_group.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Cash Descriptor Group: group, optional
  if presence_map[base + 6] then
    index = eurex_t7_rdi_fast_v14_0.cash_descriptor_group.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- No Instr Attrib: uInt32, sent, optional
  index, value = eurex_t7_rdi_fast_v14_0.no_instr_attrib.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Instrument Attributes: No Instr Attrib entries
  local count = value or 0
  for instrument_attributes_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.instrument_attributes.dissect(buffer, index, packet, parent, presence_map, base, state, instrument_attributes_index)
  end

  -- No Events: uInt32, sent, optional
  index, value = eurex_t7_rdi_fast_v14_0.no_events.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Events: No Events entries
  local count = value or 0
  for events_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.events.dissect(buffer, index, packet, parent, presence_map, base, state, events_index)
  end

  -- Instrument Price Precision: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.instrument_price_precision.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "6:global|0:|24:InstrumentPricePrecision")

  -- Min Price Increment: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.min_price_increment.dissect(buffer, index, packet, parent, { presence_map[base + 8], false }, state, { "6:global|0:|17:MinPriceIncrement|E", "6:global|0:|17:MinPriceIncrement|M" })

  -- Min Price Increment Clearing: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.min_price_increment_clearing.dissect(buffer, index, packet, parent, { presence_map[base + 9], false }, state, { "6:global|0:|25:MinPriceIncrementClearing|E", "6:global|0:|25:MinPriceIncrementClearing|M" })

  -- Min Price Increment Amount: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.min_price_increment_amount.dissect(buffer, index, packet, parent, { presence_map[base + 10], false }, state, { "6:global|0:|23:MinPriceIncrementAmount|E", "6:global|0:|23:MinPriceIncrementAmount|M" })

  -- Maturity Date: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.maturity_date.dissect(buffer, index, packet, parent, presence_map[base + 11], state, "6:global|0:|12:MaturityDate")

  -- Maturity Month Year: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.maturity_month_year.dissect(buffer, index, packet, parent, presence_map[base + 12], state, "6:global|0:|17:MaturityMonthYear")

  -- Security Sub Type: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.security_sub_type.dissect(buffer, index, packet, parent, presence_map[base + 13], state, "6:global|0:|15:SecuritySubType")

  -- Related Instrument Grp: group, optional
  if presence_map[base + 14] then
    index = eurex_t7_rdi_fast_v14_0.related_instrument_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- No Market Segments: uInt32, Constant
  index, value = eurex_t7_rdi_fast_v14_0.no_market_segments.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Segment Grp: No Market Segments entries
  local count = value or 0
  for market_segment_grp_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.market_segment_grp.dissect(buffer, index, packet, parent, presence_map, base, state, market_segment_grp_index)
  end

  return index
end

-- Dissect: Instrument Snapshot Message
eurex_t7_rdi_fast_v14_0.instrument_snapshot.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_rdi_fast_v14_0.instrument_snapshot.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Feeds
eurex_t7_rdi_fast_v14_0.feeds = {}

-- Dissect Fields: Feeds
eurex_t7_rdi_fast_v14_0.feeds.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Feed Type: uInt32, Default
  index, value = eurex_t7_rdi_fast_v14_0.md_feed_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Md Book Type: uInt32, Default
  index, value = eurex_t7_rdi_fast_v14_0.md_book_type.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Market Depth: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.market_depth.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|11:MarketDepth")

  -- Market Depth Time Interval: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.market_depth_time_interval.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|23:MarketDepthTimeInterval")

  -- Md Recovery Time Interval: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.md_recovery_time_interval.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|22:MDRecoveryTimeInterval")

  -- Primary Service Location Id: string, Delta
  index, value = eurex_t7_rdi_fast_v14_0.primary_service_location_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|24:PrimaryServiceLocationID")

  -- Primary Service Location Sub Id: uInt32, Delta
  index, value = eurex_t7_rdi_fast_v14_0.primary_service_location_sub_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|27:PrimaryServiceLocationSubID")

  -- Secondary Service Location Id: string, Delta, optional
  index, value = eurex_t7_rdi_fast_v14_0.secondary_service_location_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|26:SecondaryServiceLocationID")

  -- Secondary Service Location Sub Id: uInt32, Delta, optional
  index, value = eurex_t7_rdi_fast_v14_0.secondary_service_location_sub_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|29:SecondaryServiceLocationSubID")

  return index
end

-- Dissect: Feeds
eurex_t7_rdi_fast_v14_0.feeds.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.feeds, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.feeds.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Match Rules
eurex_t7_rdi_fast_v14_0.match_rules = {}

-- Dissect Fields: Match Rules
eurex_t7_rdi_fast_v14_0.match_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Match Rule Product Complex: uInt32, Default
  index, value = eurex_t7_rdi_fast_v14_0.match_rule_product_complex.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Match Algorithm: uInt32, Default
  index, value = eurex_t7_rdi_fast_v14_0.match_algorithm.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Match Type: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.match_type.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|9:MatchType")

  return index
end

-- Dissect: Match Rules
eurex_t7_rdi_fast_v14_0.match_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.match_rules, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.match_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Auction Type Rules
eurex_t7_rdi_fast_v14_0.auction_type_rules = {}

-- Dissect Fields: Auction Type Rules
eurex_t7_rdi_fast_v14_0.auction_type_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Auction Type: uInt32, Constant
  index, value = eurex_t7_rdi_fast_v14_0.auction_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Closed Book Indicator: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.closed_book_indicator.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|19:ClosedBookIndicator")

  -- Market Imbalance Indicator: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.market_imbalance_indicator.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|24:MarketImbalanceIndicator")

  return index
end

-- Dissect: Auction Type Rules
eurex_t7_rdi_fast_v14_0.auction_type_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.auction_type_rules, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.auction_type_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Base Trdg Rules Cash
eurex_t7_rdi_fast_v14_0.base_trdg_rules_cash = {}

-- Dissect Fields: Base Trdg Rules Cash
eurex_t7_rdi_fast_v14_0.base_trdg_rules_cash.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- No Auction Type Rules: uInt32, Constant
  index, value = eurex_t7_rdi_fast_v14_0.no_auction_type_rules.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Auction Type Rules: No Auction Type Rules entries
  local count = value or 0
  for auction_type_rules_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.auction_type_rules.dissect(buffer, index, packet, parent, presence_map, base, state, auction_type_rules_index)
  end

  -- Disable On Book Trading: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.disable_on_book_trading.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|20:DisableOnBookTrading")

  return index
end

-- Dissect: Base Trdg Rules Cash
eurex_t7_rdi_fast_v14_0.base_trdg_rules_cash.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.base_trdg_rules_cash, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v14_0.base_trdg_rules_cash.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Flex Rules
eurex_t7_rdi_fast_v14_0.flex_rules = {}

-- Dissect Fields: Flex Rules
eurex_t7_rdi_fast_v14_0.flex_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Flex Product Eligibility Complex: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.flex_product_eligibility_complex.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|29:FlexProductEligibilityComplex")

  -- Flex Product Eligibility Indicator: uInt32, Default
  index, value = eurex_t7_rdi_fast_v14_0.flex_product_eligibility_indicator.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  return index
end

-- Dissect: Flex Rules
eurex_t7_rdi_fast_v14_0.flex_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.flex_rules, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.flex_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Product Snapshot Quote Size Rules
eurex_t7_rdi_fast_v14_0.product_snapshot_quote_size_rules = {}

-- Dissect Fields: Product Snapshot Quote Size Rules
eurex_t7_rdi_fast_v14_0.product_snapshot_quote_size_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Min Bid Size: decimal, Copy
  index, value = eurex_t7_rdi_fast_v14_0.min_bid_size.dissect(buffer, index, packet, parent, { presence_map[base + 0], false }, state, { "6:global|0:|10:MinBidSize|E", "6:global|0:|10:MinBidSize|M" })

  -- Min Offer Size: decimal, Copy
  index, value = eurex_t7_rdi_fast_v14_0.min_offer_size.dissect(buffer, index, packet, parent, { presence_map[base + 1], false }, state, { "6:global|0:|12:MinOfferSize|E", "6:global|0:|12:MinOfferSize|M" })

  -- Fast Market Indicator: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.fast_market_indicator.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|19:FastMarketIndicator")

  return index
end

-- Dissect: Product Snapshot Quote Size Rules
eurex_t7_rdi_fast_v14_0.product_snapshot_quote_size_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.product_snapshot_quote_size_rules, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.product_snapshot_quote_size_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Base Trdg Rules Derivatives
eurex_t7_rdi_fast_v14_0.base_trdg_rules_derivatives = {}

-- Dissect Fields: Base Trdg Rules Derivatives
eurex_t7_rdi_fast_v14_0.base_trdg_rules_derivatives.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- No Quote Size Rules: uInt32, Default
  index, value = eurex_t7_rdi_fast_v14_0.no_quote_size_rules_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Quote Size Rules: No Quote Size Rules entries
  local count = value or 0
  for product_snapshot_quote_size_rules_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.product_snapshot_quote_size_rules.dissect(buffer, index, packet, parent, presence_map, base, state, product_snapshot_quote_size_rules_index)
  end

  -- No Flex Product Eligibilities: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.no_flex_product_eligibilities.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|26:NoFlexProductEligibilities")

  -- Flex Rules: No Flex Product Eligibilities entries
  local count = value or 0
  for flex_rules_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.flex_rules.dissect(buffer, index, packet, parent, presence_map, base, state, flex_rules_index)
  end

  -- Round Lot: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.round_lot.dissect(buffer, index, packet, parent, { presence_map[base + 2], false }, state, { "6:global|0:|8:RoundLot|E", "6:global|0:|8:RoundLot|M" })

  return index
end

-- Dissect: Base Trdg Rules Derivatives
eurex_t7_rdi_fast_v14_0.base_trdg_rules_derivatives.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.base_trdg_rules_derivatives, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v14_0.base_trdg_rules_derivatives.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Hhi Intervals
eurex_t7_rdi_fast_v14_0.hhi_intervals = {}

-- Dissect Fields: Hhi Intervals
eurex_t7_rdi_fast_v14_0.hhi_intervals.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Hhi Indicator: uInt32, Increment
  index, value = eurex_t7_rdi_fast_v14_0.hhi_indicator.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|12:HHIIndicator")

  -- Hhi Interval End: decimal, sent
  index, value = eurex_t7_rdi_fast_v14_0.hhi_interval_end.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  return index
end

-- Dissect: Hhi Intervals
eurex_t7_rdi_fast_v14_0.hhi_intervals.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.hhi_intervals, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.hhi_intervals.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Product Snapshot Price Range Rules
eurex_t7_rdi_fast_v14_0.product_snapshot_price_range_rules = {}

-- Dissect Fields: Product Snapshot Price Range Rules
eurex_t7_rdi_fast_v14_0.product_snapshot_price_range_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Price Range Rule Id: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.price_range_rule_id.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|16:PriceRangeRuleID")

  -- Price Range Product Complex: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.price_range_product_complex.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|24:PriceRangeProductComplex")

  -- Start Price Range: decimal, Default
  index, value = eurex_t7_rdi_fast_v14_0.start_price_range.dissect(buffer, index, packet, parent, { presence_map[base + 2], false }, state, nil)

  -- End Price Range: decimal, Copy
  index, value = eurex_t7_rdi_fast_v14_0.end_price_range.dissect(buffer, index, packet, parent, { presence_map[base + 3], false }, state, { "6:global|0:|13:EndPriceRange|E", "6:global|0:|13:EndPriceRange|M" })

  -- Price Range Value: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.price_range_value.dissect(buffer, index, packet, parent, { presence_map[base + 4], false }, state, { "6:global|0:|15:PriceRangeValue|E", "6:global|0:|15:PriceRangeValue|M" })

  -- Price Range Percentage: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.price_range_percentage.dissect(buffer, index, packet, parent, { presence_map[base + 5], false }, state, { "6:global|0:|20:PriceRangePercentage|E", "6:global|0:|20:PriceRangePercentage|M" })

  return index
end

-- Dissect: Product Snapshot Price Range Rules
eurex_t7_rdi_fast_v14_0.product_snapshot_price_range_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.product_snapshot_price_range_rules, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.product_snapshot_price_range_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Tick Rule Scopes
eurex_t7_rdi_fast_v14_0.tick_rule_scopes = {}

-- Dissect Fields: Tick Rule Scopes
eurex_t7_rdi_fast_v14_0.tick_rule_scopes.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Tick Rule Product Complex: uInt32, sent
  index, value = eurex_t7_rdi_fast_v14_0.tick_rule_product_complex.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trd Type: uInt32, sent
  index, value = eurex_t7_rdi_fast_v14_0.trd_type.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Tick Rule Scopes
eurex_t7_rdi_fast_v14_0.tick_rule_scopes.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.tick_rule_scopes, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = eurex_t7_rdi_fast_v14_0.tick_rule_scopes.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Tick Rules
eurex_t7_rdi_fast_v14_0.tick_rules = {}

-- Dissect Fields: Tick Rules
eurex_t7_rdi_fast_v14_0.tick_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Tick Rule Id: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.tick_rule_id.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|10:TickRuleID")

  -- Start Tick Price Range: decimal, Delta
  index, value = eurex_t7_rdi_fast_v14_0.start_tick_price_range.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|19:StartTickPriceRange|E", "6:global|0:|19:StartTickPriceRange|M" })

  -- End Tick Price Range: decimal, Delta
  index, value = eurex_t7_rdi_fast_v14_0.end_tick_price_range.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|17:EndTickPriceRange|E", "6:global|0:|17:EndTickPriceRange|M" })

  -- Tick Increment: decimal, Delta
  index, value = eurex_t7_rdi_fast_v14_0.tick_increment.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|13:TickIncrement|E", "6:global|0:|13:TickIncrement|M" })

  -- No Tick Rule Scopes: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.no_tick_rule_scopes.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|16:NoTickRuleScopes")

  -- Tick Rule Scopes: No Tick Rule Scopes entries
  local count = value or 0
  for tick_rule_scopes_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.tick_rule_scopes.dissect(buffer, index, packet, parent, presence_map, base, state, tick_rule_scopes_index)
  end

  return index
end

-- Dissect: Tick Rules
eurex_t7_rdi_fast_v14_0.tick_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.tick_rules, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.tick_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Base Trdg Rules
eurex_t7_rdi_fast_v14_0.base_trdg_rules = {}

-- Dissect Fields: Base Trdg Rules
eurex_t7_rdi_fast_v14_0.base_trdg_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- No Tick Rules: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.no_tick_rules.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|11:NoTickRules")

  -- Tick Rules: No Tick Rules entries
  local count = value or 0
  for tick_rules_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.tick_rules.dissect(buffer, index, packet, parent, presence_map, base, state, tick_rules_index)
  end

  -- No Price Range Rules: uInt32, sent, optional
  index, value = eurex_t7_rdi_fast_v14_0.no_price_range_rules_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price Range Rules: No Price Range Rules entries
  local count = value or 0
  for product_snapshot_price_range_rules_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.product_snapshot_price_range_rules.dissect(buffer, index, packet, parent, presence_map, base, state, product_snapshot_price_range_rules_index)
  end

  -- Quote Side Indicator: uInt32, Default, optional
  index, value = eurex_t7_rdi_fast_v14_0.quote_side_indicator.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Quote Side Model Type: uInt32, Default, optional
  index, value = eurex_t7_rdi_fast_v14_0.quote_side_model_type.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Fast Market Percentage: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.fast_market_percentage.dissect(buffer, index, packet, parent, { presence_map[base + 3], false }, state, { "6:global|0:|20:FastMarketPercentage|E", "6:global|0:|20:FastMarketPercentage|M" })

  -- Check Market Order: uInt32, Default, optional
  index, value = eurex_t7_rdi_fast_v14_0.check_market_order.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- No Hhi Intervals: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.no_hhi_intervals.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "6:global|0:|14:NoHHIIntervals")

  -- Hhi Intervals: No Hhi Intervals entries
  local count = value or 0
  for hhi_intervals_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.hhi_intervals.dissect(buffer, index, packet, parent, presence_map, base, state, hhi_intervals_index)
  end

  return index
end

-- Dissect: Base Trdg Rules
eurex_t7_rdi_fast_v14_0.base_trdg_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.base_trdg_rules, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v14_0.base_trdg_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Related Market Segments
eurex_t7_rdi_fast_v14_0.related_market_segments = {}

-- Dissect Fields: Related Market Segments
eurex_t7_rdi_fast_v14_0.related_market_segments.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Related Market Segment Id: uInt32, Delta
  index, value = eurex_t7_rdi_fast_v14_0.related_market_segment_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|22:RelatedMarketSegmentID")

  -- Market Segments Relationship: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.market_segments_relationship.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|26:MarketSegmentsRelationship")

  -- Allow One Product Strip: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.allow_one_product_strip.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|20:AllowOneProductStrip")

  return index
end

-- Dissect: Related Market Segments
eurex_t7_rdi_fast_v14_0.related_market_segments.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.related_market_segments, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.related_market_segments.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Scopes
eurex_t7_rdi_fast_v14_0.instrument_scopes = {}

-- Dissect Fields: Instrument Scopes
eurex_t7_rdi_fast_v14_0.instrument_scopes.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Instrument Scope Operator: uInt32, Default
  index, value = eurex_t7_rdi_fast_v14_0.instrument_scope_operator.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Instrument Scope Security Type: uInt32, Default
  index, value = eurex_t7_rdi_fast_v14_0.instrument_scope_security_type.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Instrument Scope Security Sub Type: uInt32, Delta, optional
  index, value = eurex_t7_rdi_fast_v14_0.instrument_scope_security_sub_type.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|30:InstrumentScopeSecuritySubType")

  return index
end

-- Dissect: Instrument Scopes
eurex_t7_rdi_fast_v14_0.instrument_scopes.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.instrument_scopes, buffer(offset, 0))
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

  index = eurex_t7_rdi_fast_v14_0.instrument_scopes.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Underlying Descriptor Group
eurex_t7_rdi_fast_v14_0.underlying_descriptor_group = {}

-- Dissect Fields: Underlying Descriptor Group
eurex_t7_rdi_fast_v14_0.underlying_descriptor_group.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Underlying Security Exchange: string, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.underlying_security_exchange.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|26:UnderlyingSecurityExchange")

  -- Underlying Symbol: string, Delta, optional
  index, value = eurex_t7_rdi_fast_v14_0.underlying_symbol.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|16:UnderlyingSymbol")

  -- Underlying Security Id: string, Delta, optional
  index, value = eurex_t7_rdi_fast_v14_0.underlying_security_id_delta.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|20:UnderlyingSecurityID")

  -- Underlying Security Id Source: string, Default, optional
  index, value = eurex_t7_rdi_fast_v14_0.underlying_security_id_source_default.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Underlying Prev Close Px: decimal, Delta, optional
  index, value = eurex_t7_rdi_fast_v14_0.underlying_prev_close_px.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|21:UnderlyingPrevClosePx|E", "6:global|0:|21:UnderlyingPrevClosePx|M" })

  return index
end

-- Dissect: Underlying Descriptor Group
eurex_t7_rdi_fast_v14_0.underlying_descriptor_group.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.underlying_descriptor_group, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v14_0.underlying_descriptor_group.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Quantity Scaling Factors
eurex_t7_rdi_fast_v14_0.quantity_scaling_factors = {}

-- Dissect Fields: Quantity Scaling Factors
eurex_t7_rdi_fast_v14_0.quantity_scaling_factors.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Quantity Scaling Factor: uInt32, Delta
  index, value = eurex_t7_rdi_fast_v14_0.quantity_scaling_factor_delta_required.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|21:QuantityScalingFactor")

  return index
end

-- Dissect: Quantity Scaling Factors
eurex_t7_rdi_fast_v14_0.quantity_scaling_factors.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.quantity_scaling_factors, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = eurex_t7_rdi_fast_v14_0.quantity_scaling_factors.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Product Snapshot Derivatives Descriptor Group
eurex_t7_rdi_fast_v14_0.product_snapshot_derivatives_descriptor_group = {}

-- Dissect Fields: Product Snapshot Derivatives Descriptor Group
eurex_t7_rdi_fast_v14_0.product_snapshot_derivatives_descriptor_group.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Currency: string, Default
  index, value = eurex_t7_rdi_fast_v14_0.currency.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Market Segment Desc: string, Delta, optional
  index, value = eurex_t7_rdi_fast_v14_0.market_segment_desc.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|17:MarketSegmentDesc")

  -- Market Segment Symbol: string, Delta, optional
  index, value = eurex_t7_rdi_fast_v14_0.market_segment_symbol.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|19:MarketSegmentSymbol")

  -- Parent Mkt Segm Id: string, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.parent_mkt_segm_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|15:ParentMktSegmID")

  -- Max Diff Exp Months: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.max_diff_exp_months.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|16:MaxDiffExpMonths")

  -- Us Approval: uInt32, Default, optional
  index, value = eurex_t7_rdi_fast_v14_0.us_approval.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Market Segment Type: uInt32, Default, optional
  index, value = eurex_t7_rdi_fast_v14_0.market_segment_type.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Market Segment Sub Type: uInt32, Default, optional
  index, value = eurex_t7_rdi_fast_v14_0.market_segment_sub_type.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Decay Split: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.decay_split.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "6:global|0:|10:DecaySplit")

  -- Max Offset Rfq Expire Time: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.max_offset_rfq_expire_time.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "6:global|0:|22:MaxOffsetRFQExpireTime")

  -- Offset Stp Effective Time: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.offset_stp_effective_time.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "6:global|0:|22:OffsetSTPEffectiveTime")

  -- Tsl Market Group Id: uInt32, Delta, optional
  index, value = eurex_t7_rdi_fast_v14_0.tsl_market_group_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|16:TslMarketGroupID")

  -- Tsl Market Group: string, Delta, optional
  index, value = eurex_t7_rdi_fast_v14_0.tsl_market_group.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|14:TslMarketGroup")

  -- Independent System Operator: string, Delta, optional
  index, value = eurex_t7_rdi_fast_v14_0.independent_system_operator.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|25:IndependentSystemOperator")

  -- Location Id: string, Delta, optional
  index, value = eurex_t7_rdi_fast_v14_0.location_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|10:LocationID")

  -- Product Type: string, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.product_type.dissect(buffer, index, packet, parent, presence_map[base + 9], state, "6:global|0:|11:ProductType")

  -- Commodity Product Class: string, Delta, optional
  index, value = eurex_t7_rdi_fast_v14_0.commodity_product_class.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|21:CommodityProductClass")

  -- Commodity Unit: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.commodity_unit.dissect(buffer, index, packet, parent, presence_map[base + 10], state, "6:global|0:|13:CommodityUnit")

  -- Location Type: string, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.location_type.dissect(buffer, index, packet, parent, presence_map[base + 11], state, "6:global|0:|12:LocationType")

  -- Max Trade Vol: decimal, Delta, optional
  index, value = eurex_t7_rdi_fast_v14_0.max_trade_vol_delta.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|11:MaxTradeVol|E", "6:global|0:|11:MaxTradeVol|M" })

  -- Max Trade Val: uInt64, Delta, optional
  index, value = eurex_t7_rdi_fast_v14_0.max_trade_val_delta.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:MaxTradeVal")

  -- Max Calendar Spread Vol: decimal, Delta, optional
  index, value = eurex_t7_rdi_fast_v14_0.max_calendar_spread_vol.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|20:MaxCalendarSpreadVol|E", "6:global|0:|20:MaxCalendarSpreadVol|M" })

  -- Max Tes Vol: decimal, Delta, optional
  index, value = eurex_t7_rdi_fast_v14_0.max_tes_vol.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|9:MaxTESVol|E", "6:global|0:|9:MaxTESVol|M" })

  -- No Quantity Scaling Factors: uInt32, sent, optional
  index, value = eurex_t7_rdi_fast_v14_0.no_quantity_scaling_factors.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Quantity Scaling Factors: No Quantity Scaling Factors entries
  local count = value or 0
  for quantity_scaling_factors_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.quantity_scaling_factors.dissect(buffer, index, packet, parent, presence_map, base, state, quantity_scaling_factors_index)
  end

  return index
end

-- Dissect: Product Snapshot Derivatives Descriptor Group
eurex_t7_rdi_fast_v14_0.product_snapshot_derivatives_descriptor_group.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v14_0.fields.product_snapshot_derivatives_descriptor_group, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v14_0.product_snapshot_derivatives_descriptor_group.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Product Snapshot Message
eurex_t7_rdi_fast_v14_0.product_snapshot = {}

-- Dissect Fields: Product Snapshot Message
eurex_t7_rdi_fast_v14_0.product_snapshot.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_rdi_fast_v14_0.msg_type_constant_bu.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = eurex_t7_rdi_fast_v14_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Market Id: string, Copy
  index, value = eurex_t7_rdi_fast_v14_0.market_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|8:MarketID")

  -- Market Segment Id: uInt32, Delta
  index, value = eurex_t7_rdi_fast_v14_0.market_segment_id_delta.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|15:MarketSegmentID")

  -- Effective Business Date: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.effective_business_date.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|21:EffectiveBusinessDate")

  -- Next Effective Business Date: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.next_effective_business_date.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|25:NextEffectiveBusinessDate")

  -- Market Segment: string, Delta
  index, value = eurex_t7_rdi_fast_v14_0.market_segment.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|13:MarketSegment")

  -- Market Segment Status: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.market_segment_status.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|19:MarketSegmentStatus")

  -- Partition Id: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.partition_id.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "6:global|0:|11:PartitionID")

  -- Capacity Group Id: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.capacity_group_id.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "6:global|0:|15:CapacityGroupID")

  -- Negotiation Duration: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.negotiation_duration.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "6:global|0:|19:NegotiationDuration")

  -- Cross Match Instruction Default: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v14_0.cross_match_instruction_default.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "6:global|0:|28:CrossMatchInstructionDefault")

  -- Derivatives Descriptor Group: group, optional
  if presence_map[base + 9] then
    index = eurex_t7_rdi_fast_v14_0.product_snapshot_derivatives_descriptor_group.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Underlying Descriptor Group: group, optional
  if presence_map[base + 10] then
    index = eurex_t7_rdi_fast_v14_0.underlying_descriptor_group.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- No Instrument Scopes: uInt32, Constant, optional
  index, value = eurex_t7_rdi_fast_v14_0.no_instrument_scopes.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Instrument Scopes: No Instrument Scopes entries
  local count = value or 0
  for instrument_scopes_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.instrument_scopes.dissect(buffer, index, packet, parent, presence_map, base, state, instrument_scopes_index)
  end

  -- No Related Market Segments: uInt32, sent, optional
  index, value = eurex_t7_rdi_fast_v14_0.no_related_market_segments.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Related Market Segments: No Related Market Segments entries
  local count = value or 0
  for related_market_segments_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.related_market_segments.dissect(buffer, index, packet, parent, presence_map, base, state, related_market_segments_index)
  end

  -- Base Trdg Rules: group
  index = eurex_t7_rdi_fast_v14_0.base_trdg_rules.dissect(buffer, index, packet, parent, presence_map, base, state, nil)

  -- Base Trdg Rules Derivatives: group, optional
  if presence_map[base + 12] then
    index = eurex_t7_rdi_fast_v14_0.base_trdg_rules_derivatives.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Base Trdg Rules Cash: group, optional
  if presence_map[base + 13] then
    index = eurex_t7_rdi_fast_v14_0.base_trdg_rules_cash.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- No Match Rules: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.no_match_rules.dissect(buffer, index, packet, parent, presence_map[base + 14], state, "6:global|0:|12:NoMatchRules")

  -- Match Rules: No Match Rules entries
  local count = value or 0
  for match_rules_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.match_rules.dissect(buffer, index, packet, parent, presence_map, base, state, match_rules_index)
  end

  -- No Md Feed Types: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v14_0.no_md_feed_types.dissect(buffer, index, packet, parent, presence_map[base + 15], state, "6:global|0:|13:NoMDFeedTypes")

  -- Feeds: No Md Feed Types entries
  local count = value or 0
  for feeds_index = 1, count do
    index = eurex_t7_rdi_fast_v14_0.feeds.dissect(buffer, index, packet, parent, presence_map, base, state, feeds_index)
  end

  return index
end

-- Dissect: Product Snapshot Message
eurex_t7_rdi_fast_v14_0.product_snapshot.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_rdi_fast_v14_0.product_snapshot.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Rd Packet Header Framing
eurex_t7_rdi_fast_v14_0.rd_packet_header = {}

-- Dissect Fields: Rd Packet Header Framing
eurex_t7_rdi_fast_v14_0.rd_packet_header.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Sender Comp Id: uInt32, sent
  index, value = eurex_t7_rdi_fast_v14_0.sender_comp_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Packet Seq Num: byteVector, sent
  index, value = eurex_t7_rdi_fast_v14_0.packet_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: byteVector, sent
  index, value = eurex_t7_rdi_fast_v14_0.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Rd Packet Header Framing
eurex_t7_rdi_fast_v14_0.rd_packet_header.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_rdi_fast_v14_0.rd_packet_header.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Eurex T7 Rdi Fast 14.0 Message Dispatch
eurex_t7_rdi_fast_v14_0.messages = {
  [70] = eurex_t7_rdi_fast_v14_0.rd_packet_header.dissect,
  [122] = eurex_t7_rdi_fast_v14_0.product_snapshot.dissect,
  [123] = eurex_t7_rdi_fast_v14_0.instrument_snapshot.dissect,
  [121] = eurex_t7_rdi_fast_v14_0.instrument_incremental.dissect,
  [162] = eurex_t7_rdi_fast_v14_0.variance_futures_status.dissect,
  [514] = eurex_t7_rdi_fast_v14_0.total_return_futures_status.dissect,
  [515] = eurex_t7_rdi_fast_v14_0.trade_at_reference_price_status.dissect,
  [125] = eurex_t7_rdi_fast_v14_0.market_data_report.dissect,
  [109] = eurex_t7_rdi_fast_v14_0.beacon.dissect,
}

-- Eurex T7 Rdi Fast 14.0 Message Nodes
eurex_t7_rdi_fast_v14_0.message_fields = {
  [70] = omi_eurex_t7_rdi_fast_v14_0.fields.rd_packet_header,
  [122] = omi_eurex_t7_rdi_fast_v14_0.fields.product_snapshot,
  [123] = omi_eurex_t7_rdi_fast_v14_0.fields.instrument_snapshot,
  [121] = omi_eurex_t7_rdi_fast_v14_0.fields.instrument_incremental,
  [162] = omi_eurex_t7_rdi_fast_v14_0.fields.variance_futures_status,
  [514] = omi_eurex_t7_rdi_fast_v14_0.fields.total_return_futures_status,
  [515] = omi_eurex_t7_rdi_fast_v14_0.fields.trade_at_reference_price_status,
  [125] = omi_eurex_t7_rdi_fast_v14_0.fields.market_data_report,
  [109] = omi_eurex_t7_rdi_fast_v14_0.fields.beacon,
}

-- Eurex T7 Rdi Fast 14.0 Template Names
eurex_t7_rdi_fast_v14_0.template_id = {}

-- Display: Template Id
eurex_t7_rdi_fast_v14_0.template_id.display = function(value)
  if value == 70 then
    return "Template Id: RDPacketHeader (70)"
  end
  if value == 122 then
    return "Template Id: ProductSnapshot (122)"
  end
  if value == 123 then
    return "Template Id: InstrumentSnapshot (123)"
  end
  if value == 121 then
    return "Template Id: InstrumentIncremental (121)"
  end
  if value == 162 then
    return "Template Id: VarianceFuturesStatus (162)"
  end
  if value == 514 then
    return "Template Id: TotalReturnFuturesStatus (514)"
  end
  if value == 515 then
    return "Template Id: TradeAtReferencePriceStatus (515)"
  end
  if value == 125 then
    return "Template Id: MarketDataReport (125)"
  end
  if value == 109 then
    return "Template Id: Beacon (109)"
  end
  if value == 120 then
    return "Template Id: Reset (120)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Name: Template Id
eurex_t7_rdi_fast_v14_0.template_id.name = function(value)
  if value == 70 then
    return "RDPacketHeader"
  end
  if value == 122 then
    return "ProductSnapshot"
  end
  if value == 123 then
    return "InstrumentSnapshot"
  end
  if value == 121 then
    return "InstrumentIncremental"
  end
  if value == 162 then
    return "VarianceFuturesStatus"
  end
  if value == 514 then
    return "TotalReturnFuturesStatus"
  end
  if value == 515 then
    return "TradeAtReferencePriceStatus"
  end
  if value == 125 then
    return "MarketDataReport"
  end
  if value == 109 then
    return "Beacon"
  end
  if value == 120 then
    return "Reset"
  end

  return "Unknown"
end

-- Eurex T7 Rdi Fast 14.0 Framing
eurex_t7_rdi_fast_v14_0.header = 70
eurex_t7_rdi_fast_v14_0.reset = 120

-- Eurex T7 Rdi Fast 14.0 Packet Dissector
omi_eurex_t7_rdi_fast_v14_0.dissector = function(buffer, packet, parent)
  packet.cols.protocol = "Eurex T7 Rdi Fast 14.0"
  local root = parent:add(omi_eurex_t7_rdi_fast_v14_0, buffer(), "Eurex T7 Rdi Fast 14.0")
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

    local message_field = eurex_t7_rdi_fast_v14_0.message_fields[template_id]
    local message_tree = nil

    if message_field ~= nil then
      message_tree = root:add(message_field, buffer(start, 0))
    else
      message_tree = root:add(omi_eurex_t7_rdi_fast_v14_0.fields.message, buffer(start, 0))
      message_tree:set_text(eurex_t7_rdi_fast_v14_0.template_id.name(template_id))
    end

    -- the presence map and the template id are the message's own framing
    local header = message_tree:add(omi_eurex_t7_rdi_fast_v14_0.fields.message_header, buffer(start, offset - start))
    add_presence_map(header, buffer(start, mapped - start), omi_eurex_t7_rdi_fast_v14_0.fields.presence_map, omi_eurex_t7_rdi_fast_v14_0.fields.presence_stop, omi_eurex_t7_rdi_fast_v14_0.fields.presence_identified, omi_eurex_t7_rdi_fast_v14_0.fields.presence_unused, eurex_t7_rdi_fast_v14_0.presence_bits.named[template_id])
    header:add(omi_eurex_t7_rdi_fast_v14_0.fields.template_id, buffer(identified, offset - identified), template_id, eurex_t7_rdi_fast_v14_0.template_id.display(template_id))

    -- the reset template tells a receiver to forget what the stream remembered
    if template_id == eurex_t7_rdi_fast_v14_0.reset then
      state.values = {}
      state.last_template_id = nil
    else
      local message = eurex_t7_rdi_fast_v14_0.messages[template_id]

      if message == nil then
        message_tree:add_expert_info(PI_UNDECODED, PI_WARN, "This dissector reads: 70 (RDPacketHeader), 122 (ProductSnapshot), 123 (InstrumentSnapshot), 121 (InstrumentIncremental), 162 (VarianceFuturesStatus), 514 (TotalReturnFuturesStatus), 515 (TradeAtReferencePriceStatus), 125 (MarketDataReport), 109 (Beacon)")
        message_tree:set_len(offset - start)
        return
      end

      -- every packet opens with the template the model frames them with
      if messages == 0 and template_id ~= eurex_t7_rdi_fast_v14_0.header then
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
omi_eurex_t7_rdi_fast_v14_0.init = function()
  stream_states = {}
end

-- Register Eurex T7 Rdi Fast 14.0 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_eurex_t7_rdi_fast_v14_0)

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
