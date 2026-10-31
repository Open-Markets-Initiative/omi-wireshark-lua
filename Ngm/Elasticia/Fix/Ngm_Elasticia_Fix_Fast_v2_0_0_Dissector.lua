-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Ngm Elasticia Fix Fast 2.0.0 Protocol
local omi_ngm_elasticia_fix_fast_v2_0_0 = Proto("Omi.Ngm.Elasticia.Fix.Fast.v2.0.0", "Ngm Elasticia Fix Fast 2.0.0")

-- Protocol table
local ngm_elasticia_fix_fast_v2_0_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Ngm Elasticia Fix Fast 2.0.0 Framing
omi_ngm_elasticia_fix_fast_v2_0_0.fields.message = ProtoField.new("Message", "ngm.elasticia.fix.fast.v2.0.0.message", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.message_header = ProtoField.new("Message Header", "ngm.elasticia.fix.fast.v2.0.0.messageheader", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_map = ProtoField.new("Presence Map", "ngm.elasticia.fix.fast.v2.0.0.presencemap", ftypes.BYTES)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.template_id = ProtoField.new("Template Id", "ngm.elasticia.fix.fast.v2.0.0.templateid", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_stop = ProtoField.new("Stop Bit", "ngm.elasticia.fix.fast.v2.0.0.presencestop", ftypes.UINT8, { [0] = "Clear", [1] = "Set" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_identified = ProtoField.new("Template Id", "ngm.elasticia.fix.fast.v2.0.0.presencetemplateid", ftypes.UINT8, { [0] = "Repeated", [1] = "Sent" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_unused = ProtoField.new("Unused", "ngm.elasticia.fix.fast.v2.0.0.presenceunused", ftypes.UINT8, nil, base.HEX)
ngm_elasticia_fix_fast_v2_0_0.presence_bits = {}

-- Ngm Elasticia Fix Fast 2.0.0 Presence Map Fields
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num = ProtoField.new("Msg Seq Num", "ngm.elasticia.fix.fast.v2.0.0.msgseqnumpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id = ProtoField.new("Target Comp Id", "ngm.elasticia.fix.fast.v2.0.0.targetcompidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id = ProtoField.new("Sender Comp Id", "ngm.elasticia.fix.fast.v2.0.0.sendercompidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id = ProtoField.new("On Behalf Of Comp Id", "ngm.elasticia.fix.fast.v2.0.0.onbehalfofcompidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id = ProtoField.new("Deliver To Comp Id", "ngm.elasticia.fix.fast.v2.0.0.delivertocompidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_reset_seq_num_flag = ProtoField.new("Reset Seq Num Flag", "ngm.elasticia.fix.fast.v2.0.0.resetseqnumflagpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_gap_fill_flag = ProtoField.new("Gap Fill Flag", "ngm.elasticia.fix.fast.v2.0.0.gapfillflagpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_security_id_source = ProtoField.new("Security Id Source", "ngm.elasticia.fix.fast.v2.0.0.securityidsourcepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_ord_type = ProtoField.new("Ord Type", "ngm.elasticia.fix.fast.v2.0.0.ordtypepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_expire_time = ProtoField.new("Expire Time", "ngm.elasticia.fix.fast.v2.0.0.expiretimepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_exec_inst = ProtoField.new("Exec Inst", "ngm.elasticia.fix.fast.v2.0.0.execinstpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_order_restrictions = ProtoField.new("Order Restrictions", "ngm.elasticia.fix.fast.v2.0.0.orderrestrictionspresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_display_qty = ProtoField.new("Display Qty", "ngm.elasticia.fix.fast.v2.0.0.displayqtypresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_display_when = ProtoField.new("Display When", "ngm.elasticia.fix.fast.v2.0.0.displaywhenpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_display_method = ProtoField.new("Display Method", "ngm.elasticia.fix.fast.v2.0.0.displaymethodpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_refresh_qty = ProtoField.new("Refresh Qty", "ngm.elasticia.fix.fast.v2.0.0.refreshqtypresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_auction_type = ProtoField.new("Auction Type", "ngm.elasticia.fix.fast.v2.0.0.auctiontypepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_order_capacity = ProtoField.new("Order Capacity", "ngm.elasticia.fix.fast.v2.0.0.ordercapacitypresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_order_origination = ProtoField.new("Order Origination", "ngm.elasticia.fix.fast.v2.0.0.orderoriginationpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_no_order_attribute_grp = ProtoField.new("No Order Attribute Grp", "ngm.elasticia.fix.fast.v2.0.0.noorderattributegrppresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_no_party_i_ds = ProtoField.new("No Party I Ds", "ngm.elasticia.fix.fast.v2.0.0.nopartyidspresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_mass_status_req_id = ProtoField.new("Mass Status Req Id", "ngm.elasticia.fix.fast.v2.0.0.massstatusreqidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_last_rpt_requested = ProtoField.new("Last Rpt Requested", "ngm.elasticia.fix.fast.v2.0.0.lastrptrequestedpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_md_entry_id = ProtoField.new("Md Entry Id", "ngm.elasticia.fix.fast.v2.0.0.mdentryidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_working_indicator = ProtoField.new("Working Indicator", "ngm.elasticia.fix.fast.v2.0.0.workingindicatorpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_lot_type = ProtoField.new("Lot Type", "ngm.elasticia.fix.fast.v2.0.0.lottypepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_cum_qty = ProtoField.new("Cum Qty", "ngm.elasticia.fix.fast.v2.0.0.cumqtypresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_avg_px = ProtoField.new("Avg Px", "ngm.elasticia.fix.fast.v2.0.0.avgpxpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_ord_rej_reason = ProtoField.new("Ord Rej Reason", "ngm.elasticia.fix.fast.v2.0.0.ordrejreasonpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_exec_restatement_reason = ProtoField.new("Exec Restatement Reason", "ngm.elasticia.fix.fast.v2.0.0.execrestatementreasonpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_text = ProtoField.new("Text", "ngm.elasticia.fix.fast.v2.0.0.textpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_quote_req_id = ProtoField.new("Quote Req Id", "ngm.elasticia.fix.fast.v2.0.0.quotereqidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_quote_id = ProtoField.new("Quote Id", "ngm.elasticia.fix.fast.v2.0.0.quoteidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_orig_quote_msg_id = ProtoField.new("Orig Quote Msg Id", "ngm.elasticia.fix.fast.v2.0.0.origquotemsgidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_quote_status_req_id = ProtoField.new("Quote Status Req Id", "ngm.elasticia.fix.fast.v2.0.0.quotestatusreqidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_quote_reject_reason = ProtoField.new("Quote Reject Reason", "ngm.elasticia.fix.fast.v2.0.0.quoterejectreasonpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_quote_msg_id = ProtoField.new("Quote Msg Id", "ngm.elasticia.fix.fast.v2.0.0.quotemsgidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_order_qty = ProtoField.new("Order Qty", "ngm.elasticia.fix.fast.v2.0.0.orderqtypresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_side = ProtoField.new("Side", "ngm.elasticia.fix.fast.v2.0.0.sidepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_trade_request_id = ProtoField.new("Trade Request Id", "ngm.elasticia.fix.fast.v2.0.0.traderequestidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_secondary_trd_type = ProtoField.new("Secondary Trd Type", "ngm.elasticia.fix.fast.v2.0.0.secondarytrdtypepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_no_trd_reg_publications = ProtoField.new("No Trd Reg Publications", "ngm.elasticia.fix.fast.v2.0.0.notrdregpublicationspresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_md_req_id = ProtoField.new("Md Req Id", "ngm.elasticia.fix.fast.v2.0.0.mdreqidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_currency = ProtoField.new("Currency", "ngm.elasticia.fix.fast.v2.0.0.currencypresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_instr_registry = ProtoField.new("Instr Registry", "ngm.elasticia.fix.fast.v2.0.0.instrregistrypresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_business_center = ProtoField.new("Business Center", "ngm.elasticia.fix.fast.v2.0.0.businesscenterpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_zone_id = ProtoField.new("Zone Id", "ngm.elasticia.fix.fast.v2.0.0.zoneidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_security_status_req_id = ProtoField.new("Security Status Req Id", "ngm.elasticia.fix.fast.v2.0.0.securitystatusreqidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_halt_reason = ProtoField.new("Halt Reason", "ngm.elasticia.fix.fast.v2.0.0.haltreasonpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_corporate_action = ProtoField.new("Corporate Action", "ngm.elasticia.fix.fast.v2.0.0.corporateactionpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_financial_status = ProtoField.new("Financial Status", "ngm.elasticia.fix.fast.v2.0.0.financialstatuspresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_encoded_mkt_segm_desc = ProtoField.new("Encoded Mkt Segm Desc", "ngm.elasticia.fix.fast.v2.0.0.encodedmktsegmdescpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_parent_mkt_segm_id = ProtoField.new("Parent Mkt Segm Id", "ngm.elasticia.fix.fast.v2.0.0.parentmktsegmidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_min_trade_vol = ProtoField.new("Min Trade Vol", "ngm.elasticia.fix.fast.v2.0.0.mintradevolpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_round_lot = ProtoField.new("Round Lot", "ngm.elasticia.fix.fast.v2.0.0.roundlotpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_price_type = ProtoField.new("Price Type", "ngm.elasticia.fix.fast.v2.0.0.pricetypepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_max_order_expire_duration = ProtoField.new("Max Order Expire Duration", "ngm.elasticia.fix.fast.v2.0.0.maxorderexpiredurationpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_max_trade_trans_bkd_time_diff = ProtoField.new("Max Trade Trans Bkd Time Diff", "ngm.elasticia.fix.fast.v2.0.0.maxtradetransbkdtimediffpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_no_tick_rules = ProtoField.new("No Tick Rules", "ngm.elasticia.fix.fast.v2.0.0.notickrulespresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_no_match_rules = ProtoField.new("No Match Rules", "ngm.elasticia.fix.fast.v2.0.0.nomatchrulespresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_no_market_order_rules = ProtoField.new("No Market Order Rules", "ngm.elasticia.fix.fast.v2.0.0.nomarketorderrulespresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_order_protection_auction_time_min = ProtoField.new("Order Protection Auction Time Min", "ngm.elasticia.fix.fast.v2.0.0.orderprotectionauctiontimeminpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_order_protection_auction_time_max = ProtoField.new("Order Protection Auction Time Max", "ngm.elasticia.fix.fast.v2.0.0.orderprotectionauctiontimemaxpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_missing_reference_price_auction_time_min = ProtoField.new("Missing Reference Price Auction Time Min", "ngm.elasticia.fix.fast.v2.0.0.missingreferencepriceauctiontimeminpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_missing_reference_price_auction_time_max = ProtoField.new("Missing Reference Price Auction Time Max", "ngm.elasticia.fix.fast.v2.0.0.missingreferencepriceauctiontimemaxpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_allow_reserve_order = ProtoField.new("Allow Reserve Order", "ngm.elasticia.fix.fast.v2.0.0.allowreserveorderpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_min_reserve_order_value = ProtoField.new("Min Reserve Order Value", "ngm.elasticia.fix.fast.v2.0.0.minreserveordervaluepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_min_reserve_order_value_currency = ProtoField.new("Min Reserve Order Value Currency", "ngm.elasticia.fix.fast.v2.0.0.minreserveordervaluecurrencypresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_no_market_data_rules = ProtoField.new("No Market Data Rules", "ngm.elasticia.fix.fast.v2.0.0.nomarketdatarulespresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_no_party_rules = ProtoField.new("No Party Rules", "ngm.elasticia.fix.fast.v2.0.0.nopartyrulespresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_no_trade_report_rules = ProtoField.new("No Trade Report Rules", "ngm.elasticia.fix.fast.v2.0.0.notradereportrulespresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_trad_ses_req_id = ProtoField.new("Trad Ses Req Id", "ngm.elasticia.fix.fast.v2.0.0.tradsesreqidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_corp_action_req_id = ProtoField.new("Corp Action Req Id", "ngm.elasticia.fix.fast.v2.0.0.corpactionreqidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)

ngm_elasticia_fix_fast_v2_0_0.presence_bits.named = {
  [1006] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
  },
  [1000] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
    [7] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_reset_seq_num_flag,
  },
  [1001] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
  },
  [1002] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
  },
  [1003] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
  },
  [1004] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
    [7] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_gap_fill_flag,
  },
  [1005] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
  },
  [1] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
    [7] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_security_id_source,
    [8] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_ord_type,
    [9] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_expire_time,
    [10] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_exec_inst,
    [11] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_order_restrictions,
    [12] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_display_qty,
    [13] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_display_when,
    [14] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_display_method,
    [15] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_refresh_qty,
    [16] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_auction_type,
    [17] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_order_capacity,
    [18] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_order_origination,
    [19] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_no_order_attribute_grp,
    [20] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_no_party_i_ds,
  },
  [2] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
    [7] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_security_id_source,
    [8] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_ord_type,
    [9] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_expire_time,
    [10] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_exec_inst,
    [11] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_order_restrictions,
    [12] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_display_qty,
    [13] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_display_when,
    [14] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_display_method,
    [15] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_refresh_qty,
    [16] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_auction_type,
  },
  [3] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
    [7] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_security_id_source,
  },
  [4] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
    [7] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_security_id_source,
    [8] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_mass_status_req_id,
    [9] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_last_rpt_requested,
    [10] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_ord_type,
    [11] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_expire_time,
    [12] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_exec_inst,
    [13] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_order_restrictions,
    [14] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_display_qty,
    [15] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_display_when,
    [16] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_display_method,
    [17] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_refresh_qty,
    [18] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_auction_type,
    [19] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_md_entry_id,
    [20] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_working_indicator,
    [21] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_lot_type,
    [22] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_cum_qty,
    [23] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_avg_px,
    [24] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_ord_rej_reason,
    [25] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_exec_restatement_reason,
    [26] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_order_origination,
    [27] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_no_order_attribute_grp,
    [28] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_no_party_i_ds,
    [29] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_text,
  },
  [1007] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
  },
  [1008] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
  },
  [5] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
    [7] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_security_id_source,
    [8] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_quote_req_id,
    [9] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_quote_id,
    [10] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_orig_quote_msg_id,
    [11] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_order_restrictions,
    [12] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_no_party_i_ds,
  },
  [6] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
    [7] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_security_id_source,
    [8] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_quote_req_id,
    [9] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_quote_id,
    [10] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_orig_quote_msg_id,
  },
  [7] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
    [7] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_security_id_source,
    [8] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_quote_status_req_id,
    [9] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_last_rpt_requested,
    [10] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_orig_quote_msg_id,
    [11] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_order_restrictions,
    [12] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_no_party_i_ds,
    [13] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_working_indicator,
    [14] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_quote_reject_reason,
    [15] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_exec_restatement_reason,
    [16] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_text,
  },
  [8] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
    [7] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_security_id_source,
    [8] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_quote_id,
    [9] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_quote_msg_id,
    [10] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_order_qty,
    [11] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_side,
  },
  [1009] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
  },
  [9] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
    [7] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_security_id_source,
    [8] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_trade_request_id,
    [9] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_last_rpt_requested,
    [10] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_secondary_trd_type,
    [11] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_no_trd_reg_publications,
  },
  [10] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
    [7] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_security_id_source,
    [8] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_last_rpt_requested,
    [9] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_secondary_trd_type,
    [10] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_no_trd_reg_publications,
  },
  [1010] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
  },
  [1011] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
  },
  [2052] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
    [7] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_security_id_source,
  },
  [2053] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
    [7] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_security_id_source,
  },
  [11] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
  },
  [1012] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
  },
  [1013] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
    [7] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_security_id_source,
    [8] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_md_req_id,
    [9] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_last_rpt_requested,
  },
  [1014] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
  },
  [1015] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
  },
  [1016] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
  },
  [12] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
    [7] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_security_id_source,
    [8] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_currency,
    [9] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_instr_registry,
    [10] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_business_center,
    [11] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_zone_id,
  },
  [1017] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
  },
  [13] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
    [7] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_security_id_source,
    [8] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_security_status_req_id,
    [9] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_last_rpt_requested,
    [10] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_halt_reason,
    [11] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_corporate_action,
    [12] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_financial_status,
  },
  [1018] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
  },
  [1019] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
    [7] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_last_rpt_requested,
    [8] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_encoded_mkt_segm_desc,
    [9] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_parent_mkt_segm_id,
    [10] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_currency,
    [11] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_instr_registry,
    [12] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_business_center,
    [13] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_zone_id,
    [14] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_min_trade_vol,
    [15] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_round_lot,
    [16] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_price_type,
    [17] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_max_order_expire_duration,
    [18] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_max_trade_trans_bkd_time_diff,
    [19] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_no_tick_rules,
    [20] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_no_match_rules,
    [21] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_no_market_order_rules,
    [22] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_order_protection_auction_time_min,
    [23] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_order_protection_auction_time_max,
    [24] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_missing_reference_price_auction_time_min,
    [25] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_missing_reference_price_auction_time_max,
    [26] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_allow_reserve_order,
    [27] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_min_reserve_order_value,
    [28] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_min_reserve_order_value_currency,
    [29] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_no_market_data_rules,
    [30] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_no_party_rules,
    [31] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_no_trade_report_rules,
  },
  [19] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
    [7] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_encoded_mkt_segm_desc,
    [8] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_parent_mkt_segm_id,
    [9] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_currency,
    [10] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_instr_registry,
    [11] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_business_center,
    [12] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_zone_id,
    [13] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_min_trade_vol,
    [14] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_round_lot,
    [15] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_price_type,
    [16] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_max_order_expire_duration,
    [17] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_max_trade_trans_bkd_time_diff,
    [18] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_no_tick_rules,
    [19] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_no_match_rules,
    [20] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_no_market_order_rules,
    [21] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_order_protection_auction_time_min,
    [22] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_order_protection_auction_time_max,
    [23] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_missing_reference_price_auction_time_min,
    [24] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_missing_reference_price_auction_time_max,
    [25] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_allow_reserve_order,
    [26] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_min_reserve_order_value,
    [27] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_min_reserve_order_value_currency,
    [28] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_no_market_data_rules,
    [29] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_no_party_rules,
    [30] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_no_trade_report_rules,
  },
  [1020] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
  },
  [15] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
    [7] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_trad_ses_req_id,
    [8] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_last_rpt_requested,
  },
  [1021] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
    [7] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_security_id_source,
    [8] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_corp_action_req_id,
    [9] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_last_rpt_requested,
  },
  [1022] = {
    [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_msg_seq_num,
    [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_target_comp_id,
    [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_sender_comp_id,
    [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_on_behalf_of_comp_id,
    [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_deliver_to_comp_id,
  },
}

-- Ngm Elasticia Fix Fast 2.0.0 Fields
omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type = ProtoField.new("Msg Type", "ngm.elasticia.fix.fast.v2.0.0.msgtype", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.begin_string = ProtoField.new("Begin String", "ngm.elasticia.fix.fast.v2.0.0.beginstring", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "ngm.elasticia.fix.fast.v2.0.0.msgseqnum", ftypes.UINT64)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.target_comp_id = ProtoField.new("Target Comp Id", "ngm.elasticia.fix.fast.v2.0.0.targetcompid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.sender_comp_id = ProtoField.new("Sender Comp Id", "ngm.elasticia.fix.fast.v2.0.0.sendercompid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.on_behalf_of_comp_id = ProtoField.new("On Behalf Of Comp Id", "ngm.elasticia.fix.fast.v2.0.0.onbehalfofcompid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.deliver_to_comp_id = ProtoField.new("Deliver To Comp Id", "ngm.elasticia.fix.fast.v2.0.0.delivertocompid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.sending_time = ProtoField.new("Sending Time", "ngm.elasticia.fix.fast.v2.0.0.sendingtime", ftypes.UINT64)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.ref_msg_type = ProtoField.new("Ref Msg Type", "ngm.elasticia.fix.fast.v2.0.0.refmsgtype", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.business_reject_reason = ProtoField.new("Business Reject Reason", "ngm.elasticia.fix.fast.v2.0.0.businessrejectreason", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.text = ProtoField.new("Text", "ngm.elasticia.fix.fast.v2.0.0.text", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.business_reject_ref_id = ProtoField.new("Business Reject Ref Id", "ngm.elasticia.fix.fast.v2.0.0.businessrejectrefid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.heart_bt_int = ProtoField.new("Heart Bt Int", "ngm.elasticia.fix.fast.v2.0.0.heartbtint", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.reset_seq_num_flag = ProtoField.new("Reset Seq Num Flag", "ngm.elasticia.fix.fast.v2.0.0.resetseqnumflag", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.next_expected_msg_seq_num = ProtoField.new("Next Expected Msg Seq Num", "ngm.elasticia.fix.fast.v2.0.0.nextexpectedmsgseqnum", ftypes.UINT64)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.username = ProtoField.new("Username", "ngm.elasticia.fix.fast.v2.0.0.username", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.password = ProtoField.new("Password", "ngm.elasticia.fix.fast.v2.0.0.password", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.encrypt_method = ProtoField.new("Encrypt Method", "ngm.elasticia.fix.fast.v2.0.0.encryptmethod", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.default_appl_ver_id = ProtoField.new("Default Appl Ver Id", "ngm.elasticia.fix.fast.v2.0.0.defaultapplverid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.session_status = ProtoField.new("Session Status", "ngm.elasticia.fix.fast.v2.0.0.sessionstatus", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.test_req_id = ProtoField.new("Test Req Id", "ngm.elasticia.fix.fast.v2.0.0.testreqid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.gap_fill_flag = ProtoField.new("Gap Fill Flag", "ngm.elasticia.fix.fast.v2.0.0.gapfillflag", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.new_seq_no = ProtoField.new("New Seq No", "ngm.elasticia.fix.fast.v2.0.0.newseqno", ftypes.UINT64)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.ref_seq_num = ProtoField.new("Ref Seq Num", "ngm.elasticia.fix.fast.v2.0.0.refseqnum", ftypes.UINT64)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.ref_tag_id = ProtoField.new("Ref Tag Id", "ngm.elasticia.fix.fast.v2.0.0.reftagid", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.session_reject_reason = ProtoField.new("Session Reject Reason", "ngm.elasticia.fix.fast.v2.0.0.sessionrejectreason", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_id = ProtoField.new("Security Id", "ngm.elasticia.fix.fast.v2.0.0.securityid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_id_source = ProtoField.new("Security Id Source", "ngm.elasticia.fix.fast.v2.0.0.securityidsource", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "ngm.elasticia.fix.fast.v2.0.0.clordid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.side = ProtoField.new("Side", "ngm.elasticia.fix.fast.v2.0.0.side", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.ord_type = ProtoField.new("Ord Type", "ngm.elasticia.fix.fast.v2.0.0.ordtype", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.price = ProtoField.new("Price", "ngm.elasticia.fix.fast.v2.0.0.price", ftypes.DOUBLE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_qty = ProtoField.new("Order Qty", "ngm.elasticia.fix.fast.v2.0.0.orderqty", ftypes.DOUBLE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.account = ProtoField.new("Account", "ngm.elasticia.fix.fast.v2.0.0.account", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.time_in_force = ProtoField.new("Time In Force", "ngm.elasticia.fix.fast.v2.0.0.timeinforce", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.transact_time = ProtoField.new("Transact Time", "ngm.elasticia.fix.fast.v2.0.0.transacttime", ftypes.UINT64)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.expire_time = ProtoField.new("Expire Time", "ngm.elasticia.fix.fast.v2.0.0.expiretime", ftypes.UINT64)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.exec_inst = ProtoField.new("Exec Inst", "ngm.elasticia.fix.fast.v2.0.0.execinst", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_restrictions = ProtoField.new("Order Restrictions", "ngm.elasticia.fix.fast.v2.0.0.orderrestrictions", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.display_qty = ProtoField.new("Display Qty", "ngm.elasticia.fix.fast.v2.0.0.displayqty", ftypes.DOUBLE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.display_when = ProtoField.new("Display When", "ngm.elasticia.fix.fast.v2.0.0.displaywhen", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.display_method = ProtoField.new("Display Method", "ngm.elasticia.fix.fast.v2.0.0.displaymethod", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.refresh_qty = ProtoField.new("Refresh Qty", "ngm.elasticia.fix.fast.v2.0.0.refreshqty", ftypes.DOUBLE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.auction_type = ProtoField.new("Auction Type", "ngm.elasticia.fix.fast.v2.0.0.auctiontype", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_capacity = ProtoField.new("Order Capacity", "ngm.elasticia.fix.fast.v2.0.0.ordercapacity", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_origination = ProtoField.new("Order Origination", "ngm.elasticia.fix.fast.v2.0.0.orderorigination", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_order_attribute_grp = ProtoField.new("No Order Attribute Grp", "ngm.elasticia.fix.fast.v2.0.0.noorderattributegrp", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_attribute_type = ProtoField.new("Order Attribute Type", "ngm.elasticia.fix.fast.v2.0.0.orderattributetype", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_attribute_value = ProtoField.new("Order Attribute Value", "ngm.elasticia.fix.fast.v2.0.0.orderattributevalue", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_party_i_ds = ProtoField.new("No Party I Ds", "ngm.elasticia.fix.fast.v2.0.0.nopartyids", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_role = ProtoField.new("Party Role", "ngm.elasticia.fix.fast.v2.0.0.partyrole", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_role_qualifier = ProtoField.new("Party Role Qualifier", "ngm.elasticia.fix.fast.v2.0.0.partyrolequalifier", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_id_source = ProtoField.new("Party Id Source", "ngm.elasticia.fix.fast.v2.0.0.partyidsource", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_id = ProtoField.new("Party Id", "ngm.elasticia.fix.fast.v2.0.0.partyid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_party_sub_i_ds = ProtoField.new("No Party Sub I Ds", "ngm.elasticia.fix.fast.v2.0.0.nopartysubids", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_sub_id_type = ProtoField.new("Party Sub Id Type", "ngm.elasticia.fix.fast.v2.0.0.partysubidtype", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_sub_id = ProtoField.new("Party Sub Id", "ngm.elasticia.fix.fast.v2.0.0.partysubid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_id = ProtoField.new("Order Id", "ngm.elasticia.fix.fast.v2.0.0.orderid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "ngm.elasticia.fix.fast.v2.0.0.origclordid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.mass_status_req_id = ProtoField.new("Mass Status Req Id", "ngm.elasticia.fix.fast.v2.0.0.massstatusreqid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.last_rpt_requested = ProtoField.new("Last Rpt Requested", "ngm.elasticia.fix.fast.v2.0.0.lastrptrequested", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.ord_status = ProtoField.new("Ord Status", "ngm.elasticia.fix.fast.v2.0.0.ordstatus", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.exec_id = ProtoField.new("Exec Id", "ngm.elasticia.fix.fast.v2.0.0.execid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.exec_type = ProtoField.new("Exec Type", "ngm.elasticia.fix.fast.v2.0.0.exectype", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_entry_id = ProtoField.new("Md Entry Id", "ngm.elasticia.fix.fast.v2.0.0.mdentryid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.working_indicator = ProtoField.new("Working Indicator", "ngm.elasticia.fix.fast.v2.0.0.workingindicator", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.lot_type = ProtoField.new("Lot Type", "ngm.elasticia.fix.fast.v2.0.0.lottype", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.leaves_qty = ProtoField.new("Leaves Qty", "ngm.elasticia.fix.fast.v2.0.0.leavesqty", ftypes.DOUBLE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.cum_qty = ProtoField.new("Cum Qty", "ngm.elasticia.fix.fast.v2.0.0.cumqty", ftypes.DOUBLE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.avg_px = ProtoField.new("Avg Px", "ngm.elasticia.fix.fast.v2.0.0.avgpx", ftypes.DOUBLE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.ord_rej_reason = ProtoField.new("Ord Rej Reason", "ngm.elasticia.fix.fast.v2.0.0.ordrejreason", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.exec_restatement_reason = ProtoField.new("Exec Restatement Reason", "ngm.elasticia.fix.fast.v2.0.0.execrestatementreason", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_priority = ProtoField.new("Order Priority", "ngm.elasticia.fix.fast.v2.0.0.orderpriority", ftypes.UINT64)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.cxl_rej_response_to = ProtoField.new("Cxl Rej Response To", "ngm.elasticia.fix.fast.v2.0.0.cxlrejresponseto", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.cxl_rej_reason = ProtoField.new("Cxl Rej Reason", "ngm.elasticia.fix.fast.v2.0.0.cxlrejreason", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.mass_status_req_type = ProtoField.new("Mass Status Req Type", "ngm.elasticia.fix.fast.v2.0.0.massstatusreqtype", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_req_id = ProtoField.new("Quote Req Id", "ngm.elasticia.fix.fast.v2.0.0.quotereqid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_id = ProtoField.new("Quote Id", "ngm.elasticia.fix.fast.v2.0.0.quoteid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_msg_id = ProtoField.new("Quote Msg Id", "ngm.elasticia.fix.fast.v2.0.0.quotemsgid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.orig_quote_msg_id = ProtoField.new("Orig Quote Msg Id", "ngm.elasticia.fix.fast.v2.0.0.origquotemsgid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.bid_px = ProtoField.new("Bid Px", "ngm.elasticia.fix.fast.v2.0.0.bidpx", ftypes.DOUBLE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.offer_px = ProtoField.new("Offer Px", "ngm.elasticia.fix.fast.v2.0.0.offerpx", ftypes.DOUBLE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.bid_size = ProtoField.new("Bid Size", "ngm.elasticia.fix.fast.v2.0.0.bidsize", ftypes.DOUBLE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.total_bid_size = ProtoField.new("Total Bid Size", "ngm.elasticia.fix.fast.v2.0.0.totalbidsize", ftypes.DOUBLE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.offer_size = ProtoField.new("Offer Size", "ngm.elasticia.fix.fast.v2.0.0.offersize", ftypes.DOUBLE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.total_offer_size = ProtoField.new("Total Offer Size", "ngm.elasticia.fix.fast.v2.0.0.totaloffersize", ftypes.DOUBLE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_type = ProtoField.new("Quote Type", "ngm.elasticia.fix.fast.v2.0.0.quotetype", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_cancel_type = ProtoField.new("Quote Cancel Type", "ngm.elasticia.fix.fast.v2.0.0.quotecanceltype", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_status_req_id = ProtoField.new("Quote Status Req Id", "ngm.elasticia.fix.fast.v2.0.0.quotestatusreqid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_status = ProtoField.new("Quote Status", "ngm.elasticia.fix.fast.v2.0.0.quotestatus", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.bid_md_entry_id = ProtoField.new("Bid Md Entry Id", "ngm.elasticia.fix.fast.v2.0.0.bidmdentryid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.offer_md_entry_id = ProtoField.new("Offer Md Entry Id", "ngm.elasticia.fix.fast.v2.0.0.offermdentryid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.bid_priority = ProtoField.new("Bid Priority", "ngm.elasticia.fix.fast.v2.0.0.bidpriority", ftypes.UINT64)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.offer_priority = ProtoField.new("Offer Priority", "ngm.elasticia.fix.fast.v2.0.0.offerpriority", ftypes.UINT64)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_reject_reason = ProtoField.new("Quote Reject Reason", "ngm.elasticia.fix.fast.v2.0.0.quoterejectreason", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.subscription_request_type = ProtoField.new("Subscription Request Type", "ngm.elasticia.fix.fast.v2.0.0.subscriptionrequesttype", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_security_alt_id = ProtoField.new("No Security Alt Id", "ngm.elasticia.fix.fast.v2.0.0.nosecurityaltid", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_alt_id = ProtoField.new("Security Alt Id", "ngm.elasticia.fix.fast.v2.0.0.securityaltid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_alt_id_source = ProtoField.new("Security Alt Id Source", "ngm.elasticia.fix.fast.v2.0.0.securityaltidsource", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_request_id = ProtoField.new("Trade Request Id", "ngm.elasticia.fix.fast.v2.0.0.traderequestid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_report_id = ProtoField.new("Trade Report Id", "ngm.elasticia.fix.fast.v2.0.0.tradereportid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_report_ref_id = ProtoField.new("Trade Report Ref Id", "ngm.elasticia.fix.fast.v2.0.0.tradereportrefid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_id = ProtoField.new("Trade Id", "ngm.elasticia.fix.fast.v2.0.0.tradeid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_report_trans_type = ProtoField.new("Trade Report Trans Type", "ngm.elasticia.fix.fast.v2.0.0.tradereporttranstype", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_report_type = ProtoField.new("Trade Report Type", "ngm.elasticia.fix.fast.v2.0.0.tradereporttype", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trd_type = ProtoField.new("Trd Type", "ngm.elasticia.fix.fast.v2.0.0.trdtype", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.secondary_trd_type = ProtoField.new("Secondary Trd Type", "ngm.elasticia.fix.fast.v2.0.0.secondarytrdtype", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trd_price_condition = ProtoField.new("Trd Price Condition", "ngm.elasticia.fix.fast.v2.0.0.trdpricecondition", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_category = ProtoField.new("Order Category", "ngm.elasticia.fix.fast.v2.0.0.ordercategory", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_trd_reg_publications = ProtoField.new("No Trd Reg Publications", "ngm.elasticia.fix.fast.v2.0.0.notrdregpublications", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trd_reg_publication_type = ProtoField.new("Trd Reg Publication Type", "ngm.elasticia.fix.fast.v2.0.0.trdregpublicationtype", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trd_reg_publ_reason = ProtoField.new("Trd Reg Publ Reason", "ngm.elasticia.fix.fast.v2.0.0.trdregpublreason", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_handling_instr = ProtoField.new("Trade Handling Instr", "ngm.elasticia.fix.fast.v2.0.0.tradehandlinginstr", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trans_bkd_time = ProtoField.new("Trans Bkd Time", "ngm.elasticia.fix.fast.v2.0.0.transbkdtime", ftypes.UINT64)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.match_status = ProtoField.new("Match Status", "ngm.elasticia.fix.fast.v2.0.0.matchstatus", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.match_type = ProtoField.new("Match Type", "ngm.elasticia.fix.fast.v2.0.0.matchtype", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_condition = ProtoField.new("Trade Condition", "ngm.elasticia.fix.fast.v2.0.0.tradecondition", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.last_qty = ProtoField.new("Last Qty", "ngm.elasticia.fix.fast.v2.0.0.lastqty", ftypes.DOUBLE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.last_px = ProtoField.new("Last Px", "ngm.elasticia.fix.fast.v2.0.0.lastpx", ftypes.DOUBLE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.currency = ProtoField.new("Currency", "ngm.elasticia.fix.fast.v2.0.0.currency", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.last_mkt = ProtoField.new("Last Mkt", "ngm.elasticia.fix.fast.v2.0.0.lastmkt", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_sides = ProtoField.new("No Sides", "ngm.elasticia.fix.fast.v2.0.0.nosides", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.secondary_cl_ord_id = ProtoField.new("Secondary Cl Ord Id", "ngm.elasticia.fix.fast.v2.0.0.secondaryclordid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.aggressor_indicator = ProtoField.new("Aggressor Indicator", "ngm.elasticia.fix.fast.v2.0.0.aggressorindicator", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.accrued_interest_amt = ProtoField.new("Accrued Interest Amt", "ngm.elasticia.fix.fast.v2.0.0.accruedinterestamt", ftypes.DOUBLE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_report_reject_reason = ProtoField.new("Trade Report Reject Reason", "ngm.elasticia.fix.fast.v2.0.0.tradereportrejectreason", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_request_type = ProtoField.new("Trade Request Type", "ngm.elasticia.fix.fast.v2.0.0.traderequesttype", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_dates = ProtoField.new("No Dates", "ngm.elasticia.fix.fast.v2.0.0.nodates", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_request_result = ProtoField.new("Trade Request Result", "ngm.elasticia.fix.fast.v2.0.0.traderequestresult", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_request_status = ProtoField.new("Trade Request Status", "ngm.elasticia.fix.fast.v2.0.0.traderequeststatus", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_status_update_request_id = ProtoField.new("Security Status Update Request Id", "ngm.elasticia.fix.fast.v2.0.0.securitystatusupdaterequestid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_updates = ProtoField.new("No Updates", "ngm.elasticia.fix.fast.v2.0.0.noupdates", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.financial_status_update_type = ProtoField.new("Financial Status Update Type", "ngm.elasticia.fix.fast.v2.0.0.financialstatusupdatetype", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.financial_status_update_value = ProtoField.new("Financial Status Update Value", "ngm.elasticia.fix.fast.v2.0.0.financialstatusupdatevalue", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.financial_status_result = ProtoField.new("Financial Status Result", "ngm.elasticia.fix.fast.v2.0.0.financialstatusresult", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_md_entries = ProtoField.new("No Md Entries", "ngm.elasticia.fix.fast.v2.0.0.nomdentries", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_update_action = ProtoField.new("Md Update Action", "ngm.elasticia.fix.fast.v2.0.0.mdupdateaction", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_entry_type = ProtoField.new("Md Entry Type", "ngm.elasticia.fix.fast.v2.0.0.mdentrytype", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_stat_scope = ProtoField.new("Md Stat Scope", "ngm.elasticia.fix.fast.v2.0.0.mdstatscope", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_entry_px = ProtoField.new("Md Entry Px", "ngm.elasticia.fix.fast.v2.0.0.mdentrypx", ftypes.DOUBLE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_entry_size = ProtoField.new("Md Entry Size", "ngm.elasticia.fix.fast.v2.0.0.mdentrysize", ftypes.DOUBLE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_entry_position_no = ProtoField.new("Md Entry Position No", "ngm.elasticia.fix.fast.v2.0.0.mdentrypositionno", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_entry_buyer = ProtoField.new("Md Entry Buyer", "ngm.elasticia.fix.fast.v2.0.0.mdentrybuyer", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_entry_seller = ProtoField.new("Md Entry Seller", "ngm.elasticia.fix.fast.v2.0.0.mdentryseller", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.algorithmic_trd_indicator = ProtoField.new("Algorithmic Trd Indicator", "ngm.elasticia.fix.fast.v2.0.0.algorithmictrdindicator", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.aggressor_side = ProtoField.new("Aggressor Side", "ngm.elasticia.fix.fast.v2.0.0.aggressorside", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_maker_quote = ProtoField.new("Market Maker Quote", "ngm.elasticia.fix.fast.v2.0.0.marketmakerquote", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_stats_indicators = ProtoField.new("No Stats Indicators", "ngm.elasticia.fix.fast.v2.0.0.nostatsindicators", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.stats_type = ProtoField.new("Stats Type", "ngm.elasticia.fix.fast.v2.0.0.statstype", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_req_id = ProtoField.new("Md Req Id", "ngm.elasticia.fix.fast.v2.0.0.mdreqid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_depth = ProtoField.new("Market Depth", "ngm.elasticia.fix.fast.v2.0.0.marketdepth", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_md_entry_types = ProtoField.new("No Md Entry Types", "ngm.elasticia.fix.fast.v2.0.0.nomdentrytypes", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_req_rej_reason = ProtoField.new("Md Req Rej Reason", "ngm.elasticia.fix.fast.v2.0.0.mdreqrejreason", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_req_id = ProtoField.new("Security Req Id", "ngm.elasticia.fix.fast.v2.0.0.securityreqid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_request_result = ProtoField.new("Security Request Result", "ngm.elasticia.fix.fast.v2.0.0.securityrequestresult", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.last_fragment = ProtoField.new("Last Fragment", "ngm.elasticia.fix.fast.v2.0.0.lastfragment", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_related_sym = ProtoField.new("No Related Sym", "ngm.elasticia.fix.fast.v2.0.0.norelatedsym", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.instr_registry = ProtoField.new("Instr Registry", "ngm.elasticia.fix.fast.v2.0.0.instrregistry", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.business_center = ProtoField.new("Business Center", "ngm.elasticia.fix.fast.v2.0.0.businesscenter", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.zone_id = ProtoField.new("Zone Id", "ngm.elasticia.fix.fast.v2.0.0.zoneid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_market_segments = ProtoField.new("No Market Segments", "ngm.elasticia.fix.fast.v2.0.0.nomarketsegments", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_id = ProtoField.new("Market Id", "ngm.elasticia.fix.fast.v2.0.0.marketid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_segment_id = ProtoField.new("Market Segment Id", "ngm.elasticia.fix.fast.v2.0.0.marketsegmentid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.min_trade_vol = ProtoField.new("Min Trade Vol", "ngm.elasticia.fix.fast.v2.0.0.mintradevol", ftypes.DOUBLE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.round_lot = ProtoField.new("Round Lot", "ngm.elasticia.fix.fast.v2.0.0.roundlot", ftypes.DOUBLE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.price_type = ProtoField.new("Price Type", "ngm.elasticia.fix.fast.v2.0.0.pricetype", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.max_order_expire_duration = ProtoField.new("Max Order Expire Duration", "ngm.elasticia.fix.fast.v2.0.0.maxorderexpireduration", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.max_trade_trans_bkd_time_diff = ProtoField.new("Max Trade Trans Bkd Time Diff", "ngm.elasticia.fix.fast.v2.0.0.maxtradetransbkdtimediff", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_tick_rules = ProtoField.new("No Tick Rules", "ngm.elasticia.fix.fast.v2.0.0.notickrules", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.start_tick_price_range = ProtoField.new("Start Tick Price Range", "ngm.elasticia.fix.fast.v2.0.0.starttickpricerange", ftypes.DOUBLE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.end_tick_price_range = ProtoField.new("End Tick Price Range", "ngm.elasticia.fix.fast.v2.0.0.endtickpricerange", ftypes.DOUBLE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.tick_increment = ProtoField.new("Tick Increment", "ngm.elasticia.fix.fast.v2.0.0.tickincrement", ftypes.DOUBLE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_match_rules = ProtoField.new("No Match Rules", "ngm.elasticia.fix.fast.v2.0.0.nomatchrules", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.match_algorithm = ProtoField.new("Match Algorithm", "ngm.elasticia.fix.fast.v2.0.0.matchalgorithm", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_market_order_rules = ProtoField.new("No Market Order Rules", "ngm.elasticia.fix.fast.v2.0.0.nomarketorderrules", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_order_rule = ProtoField.new("Market Order Rule", "ngm.elasticia.fix.fast.v2.0.0.marketorderrule", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_protection_auction_time_min = ProtoField.new("Order Protection Auction Time Min", "ngm.elasticia.fix.fast.v2.0.0.orderprotectionauctiontimemin", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_protection_auction_time_max = ProtoField.new("Order Protection Auction Time Max", "ngm.elasticia.fix.fast.v2.0.0.orderprotectionauctiontimemax", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.missing_reference_price_auction_time_min = ProtoField.new("Missing Reference Price Auction Time Min", "ngm.elasticia.fix.fast.v2.0.0.missingreferencepriceauctiontimemin", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.missing_reference_price_auction_time_max = ProtoField.new("Missing Reference Price Auction Time Max", "ngm.elasticia.fix.fast.v2.0.0.missingreferencepriceauctiontimemax", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.allow_reserve_order = ProtoField.new("Allow Reserve Order", "ngm.elasticia.fix.fast.v2.0.0.allowreserveorder", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.min_reserve_order_value = ProtoField.new("Min Reserve Order Value", "ngm.elasticia.fix.fast.v2.0.0.minreserveordervalue", ftypes.DOUBLE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.min_reserve_order_value_currency = ProtoField.new("Min Reserve Order Value Currency", "ngm.elasticia.fix.fast.v2.0.0.minreserveordervaluecurrency", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_market_data_rules = ProtoField.new("No Market Data Rules", "ngm.elasticia.fix.fast.v2.0.0.nomarketdatarules", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_data_rule = ProtoField.new("Market Data Rule", "ngm.elasticia.fix.fast.v2.0.0.marketdatarule", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_party_rules = ProtoField.new("No Party Rules", "ngm.elasticia.fix.fast.v2.0.0.nopartyrules", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_rule = ProtoField.new("Party Rule", "ngm.elasticia.fix.fast.v2.0.0.partyrule", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_trade_report_rules = ProtoField.new("No Trade Report Rules", "ngm.elasticia.fix.fast.v2.0.0.notradereportrules", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_report_rule = ProtoField.new("Trade Report Rule", "ngm.elasticia.fix.fast.v2.0.0.tradereportrule", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_xml = ProtoField.new("Security Xml", "ngm.elasticia.fix.fast.v2.0.0.securityxml", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.liquidity_status = ProtoField.new("Liquidity Status", "ngm.elasticia.fix.fast.v2.0.0.liquiditystatus", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_update_action = ProtoField.new("Security Update Action", "ngm.elasticia.fix.fast.v2.0.0.securityupdateaction", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_move_indicator = ProtoField.new("Security Move Indicator", "ngm.elasticia.fix.fast.v2.0.0.securitymoveindicator", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_status_req_id = ProtoField.new("Security Status Req Id", "ngm.elasticia.fix.fast.v2.0.0.securitystatusreqid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_trading_status = ProtoField.new("Security Trading Status", "ngm.elasticia.fix.fast.v2.0.0.securitytradingstatus", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.halt_reason = ProtoField.new("Halt Reason", "ngm.elasticia.fix.fast.v2.0.0.haltreason", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.corporate_action = ProtoField.new("Corporate Action", "ngm.elasticia.fix.fast.v2.0.0.corporateaction", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.financial_status = ProtoField.new("Financial Status", "ngm.elasticia.fix.fast.v2.0.0.financialstatus", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_req_id = ProtoField.new("Market Req Id", "ngm.elasticia.fix.fast.v2.0.0.marketreqid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_segment_desc = ProtoField.new("Market Segment Desc", "ngm.elasticia.fix.fast.v2.0.0.marketsegmentdesc", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.encoded_mkt_segm_desc = ProtoField.new("Encoded Mkt Segm Desc", "ngm.elasticia.fix.fast.v2.0.0.encodedmktsegmdesc", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.parent_mkt_segm_id = ProtoField.new("Parent Mkt Segm Id", "ngm.elasticia.fix.fast.v2.0.0.parentmktsegmid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_report_id = ProtoField.new("Market Report Id", "ngm.elasticia.fix.fast.v2.0.0.marketreportid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_update_action = ProtoField.new("Market Update Action", "ngm.elasticia.fix.fast.v2.0.0.marketupdateaction", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trad_ses_req_id = ProtoField.new("Trad Ses Req Id", "ngm.elasticia.fix.fast.v2.0.0.tradsesreqid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trad_ses_status = ProtoField.new("Trad Ses Status", "ngm.elasticia.fix.fast.v2.0.0.tradsesstatus", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.corp_action_req_id = ProtoField.new("Corp Action Req Id", "ngm.elasticia.fix.fast.v2.0.0.corpactionreqid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.corp_action_result = ProtoField.new("Corp Action Result", "ngm.elasticia.fix.fast.v2.0.0.corpactionresult", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.corp_update_action = ProtoField.new("Corp Update Action", "ngm.elasticia.fix.fast.v2.0.0.corpupdateaction", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.corp_action_type = ProtoField.new("Corp Action Type", "ngm.elasticia.fix.fast.v2.0.0.corpactiontype", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.corp_action_id = ProtoField.new("Corp Action Id", "ngm.elasticia.fix.fast.v2.0.0.corpactionid", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.corp_action_descr = ProtoField.new("Corp Action Descr", "ngm.elasticia.fix.fast.v2.0.0.corpactiondescr", ftypes.STRING)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.corp_action_status = ProtoField.new("Corp Action Status", "ngm.elasticia.fix.fast.v2.0.0.corpactionstatus", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.ex_time = ProtoField.new("Ex Time", "ngm.elasticia.fix.fast.v2.0.0.extime", ftypes.UINT64)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.adjustment_factor_numerator = ProtoField.new("Adjustment Factor Numerator", "ngm.elasticia.fix.fast.v2.0.0.adjustmentfactornumerator", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.adjustment_factor_denominator = ProtoField.new("Adjustment Factor Denominator", "ngm.elasticia.fix.fast.v2.0.0.adjustmentfactordenominator", ftypes.UINT32)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.dividend = ProtoField.new("Dividend", "ngm.elasticia.fix.fast.v2.0.0.dividend", ftypes.DOUBLE)

-- Ngm Elasticia Fix Fast 2.0.0 Messages
omi_ngm_elasticia_fix_fast_v2_0_0.fields.business_message_reject = ProtoField.new("Business Message Reject Message", "ngm.elasticia.fix.fast.v2.0.0.businessmessagereject", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.logon = ProtoField.new("Logon Message", "ngm.elasticia.fix.fast.v2.0.0.logon", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.logout = ProtoField.new("Logout Message", "ngm.elasticia.fix.fast.v2.0.0.logout", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.test_request = ProtoField.new("Test Request Message", "ngm.elasticia.fix.fast.v2.0.0.testrequest", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.heartbeat = ProtoField.new("Heartbeat Message", "ngm.elasticia.fix.fast.v2.0.0.heartbeat", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.sequence_reset = ProtoField.new("Sequence Reset Message", "ngm.elasticia.fix.fast.v2.0.0.sequencereset", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.reject = ProtoField.new("Reject Message", "ngm.elasticia.fix.fast.v2.0.0.reject", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.new_order_single = ProtoField.new("New Order Single Message", "ngm.elasticia.fix.fast.v2.0.0.newordersingle", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_attributes = ProtoField.new("Order Attributes", "ngm.elasticia.fix.fast.v2.0.0.orderattributes", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_i_ds = ProtoField.new("Party I Ds", "ngm.elasticia.fix.fast.v2.0.0.partyids", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_sub_i_ds = ProtoField.new("Party Sub I Ds", "ngm.elasticia.fix.fast.v2.0.0.partysubids", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_cancel_replace_request = ProtoField.new("Order Cancel Replace Request Message", "ngm.elasticia.fix.fast.v2.0.0.ordercancelreplacerequest", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_cancel_request = ProtoField.new("Order Cancel Request Message", "ngm.elasticia.fix.fast.v2.0.0.ordercancelrequest", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.execution_report = ProtoField.new("Execution Report Message", "ngm.elasticia.fix.fast.v2.0.0.executionreport", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_attributes = ProtoField.new("Order Attributes", "ngm.elasticia.fix.fast.v2.0.0.orderattributes", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_i_ds = ProtoField.new("Party I Ds", "ngm.elasticia.fix.fast.v2.0.0.partyids", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_sub_i_ds = ProtoField.new("Party Sub I Ds", "ngm.elasticia.fix.fast.v2.0.0.partysubids", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_cancel_reject = ProtoField.new("Order Cancel Reject Message", "ngm.elasticia.fix.fast.v2.0.0.ordercancelreject", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_mass_status_request = ProtoField.new("Order Mass Status Request Message", "ngm.elasticia.fix.fast.v2.0.0.ordermassstatusrequest", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote = ProtoField.new("Quote Message", "ngm.elasticia.fix.fast.v2.0.0.quote", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_i_ds = ProtoField.new("Party I Ds", "ngm.elasticia.fix.fast.v2.0.0.partyids", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_sub_i_ds = ProtoField.new("Party Sub I Ds", "ngm.elasticia.fix.fast.v2.0.0.partysubids", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_cancel = ProtoField.new("Quote Cancel Message", "ngm.elasticia.fix.fast.v2.0.0.quotecancel", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_status_report = ProtoField.new("Quote Status Report Message", "ngm.elasticia.fix.fast.v2.0.0.quotestatusreport", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_i_ds = ProtoField.new("Party I Ds", "ngm.elasticia.fix.fast.v2.0.0.partyids", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_sub_i_ds = ProtoField.new("Party Sub I Ds", "ngm.elasticia.fix.fast.v2.0.0.partysubids", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_request = ProtoField.new("Quote Request Message", "ngm.elasticia.fix.fast.v2.0.0.quoterequest", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_status_request = ProtoField.new("Quote Status Request Message", "ngm.elasticia.fix.fast.v2.0.0.quotestatusrequest", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_capture_report = ProtoField.new("Trade Capture Report Message", "ngm.elasticia.fix.fast.v2.0.0.tradecapturereport", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_alt_i_ds = ProtoField.new("Security Alt I Ds", "ngm.elasticia.fix.fast.v2.0.0.securityaltids", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trd_reg_publications = ProtoField.new("Trd Reg Publications", "ngm.elasticia.fix.fast.v2.0.0.trdregpublications", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.sides = ProtoField.new("Sides", "ngm.elasticia.fix.fast.v2.0.0.sides", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_i_ds = ProtoField.new("Party I Ds", "ngm.elasticia.fix.fast.v2.0.0.partyids", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_sub_i_ds = ProtoField.new("Party Sub I Ds", "ngm.elasticia.fix.fast.v2.0.0.partysubids", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_attributes = ProtoField.new("Order Attributes", "ngm.elasticia.fix.fast.v2.0.0.orderattributes", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_capture_report_ack = ProtoField.new("Trade Capture Report Ack Message", "ngm.elasticia.fix.fast.v2.0.0.tradecapturereportack", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trd_reg_publications = ProtoField.new("Trd Reg Publications", "ngm.elasticia.fix.fast.v2.0.0.trdregpublications", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.sides = ProtoField.new("Sides", "ngm.elasticia.fix.fast.v2.0.0.sides", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_i_ds = ProtoField.new("Party I Ds", "ngm.elasticia.fix.fast.v2.0.0.partyids", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_sub_i_ds = ProtoField.new("Party Sub I Ds", "ngm.elasticia.fix.fast.v2.0.0.partysubids", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_attributes = ProtoField.new("Order Attributes", "ngm.elasticia.fix.fast.v2.0.0.orderattributes", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_capture_report_request = ProtoField.new("Trade Capture Report Request Message", "ngm.elasticia.fix.fast.v2.0.0.tradecapturereportrequest", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.dates = ProtoField.new("Dates", "ngm.elasticia.fix.fast.v2.0.0.dates", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_capture_report_request_ack = ProtoField.new("Trade Capture Report Request Ack Message", "ngm.elasticia.fix.fast.v2.0.0.tradecapturereportrequestack", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.user_security_status_update_request = ProtoField.new("User Security Status Update Request Message", "ngm.elasticia.fix.fast.v2.0.0.usersecuritystatusupdaterequest", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.financial_status_updates = ProtoField.new("Financial Status Updates", "ngm.elasticia.fix.fast.v2.0.0.financialstatusupdates", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.user_security_status_update_response = ProtoField.new("User Security Status Update Response Message", "ngm.elasticia.fix.fast.v2.0.0.usersecuritystatusupdateresponse", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_data_incremental_refresh = ProtoField.new("Market Data Incremental Refresh Message", "ngm.elasticia.fix.fast.v2.0.0.marketdataincrementalrefresh", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_data_incremental_refresh_md_entries = ProtoField.new("Market Data Incremental Refresh Md Entries", "ngm.elasticia.fix.fast.v2.0.0.marketdataincrementalrefreshmdentries", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trd_reg_publications = ProtoField.new("Trd Reg Publications", "ngm.elasticia.fix.fast.v2.0.0.trdregpublications", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.stats_indicators = ProtoField.new("Stats Indicators", "ngm.elasticia.fix.fast.v2.0.0.statsindicators", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_data_request = ProtoField.new("Market Data Request Message", "ngm.elasticia.fix.fast.v2.0.0.marketdatarequest", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_entry_types = ProtoField.new("Md Entry Types", "ngm.elasticia.fix.fast.v2.0.0.mdentrytypes", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.dates = ProtoField.new("Dates", "ngm.elasticia.fix.fast.v2.0.0.dates", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_data_snapshot_full_refresh = ProtoField.new("Market Data Snapshot Full Refresh Message", "ngm.elasticia.fix.fast.v2.0.0.marketdatasnapshotfullrefresh", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_data_snapshot_full_refresh_md_entries = ProtoField.new("Market Data Snapshot Full Refresh Md Entries", "ngm.elasticia.fix.fast.v2.0.0.marketdatasnapshotfullrefreshmdentries", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trd_reg_publications = ProtoField.new("Trd Reg Publications", "ngm.elasticia.fix.fast.v2.0.0.trdregpublications", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_data_request_reject = ProtoField.new("Market Data Request Reject Message", "ngm.elasticia.fix.fast.v2.0.0.marketdatarequestreject", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_list_request = ProtoField.new("Security List Request Message", "ngm.elasticia.fix.fast.v2.0.0.securitylistrequest", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_list = ProtoField.new("Security List Message", "ngm.elasticia.fix.fast.v2.0.0.securitylist", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.related_sym = ProtoField.new("Related Sym", "ngm.elasticia.fix.fast.v2.0.0.relatedsym", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_alt_i_ds = ProtoField.new("Security Alt I Ds", "ngm.elasticia.fix.fast.v2.0.0.securityaltids", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_segments = ProtoField.new("Market Segments", "ngm.elasticia.fix.fast.v2.0.0.marketsegments", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.tick_rules = ProtoField.new("Tick Rules", "ngm.elasticia.fix.fast.v2.0.0.tickrules", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.match_rules = ProtoField.new("Match Rules", "ngm.elasticia.fix.fast.v2.0.0.matchrules", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_order_rules = ProtoField.new("Market Order Rules", "ngm.elasticia.fix.fast.v2.0.0.marketorderrules", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_data_rules = ProtoField.new("Market Data Rules", "ngm.elasticia.fix.fast.v2.0.0.marketdatarules", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_rules = ProtoField.new("Party Rules", "ngm.elasticia.fix.fast.v2.0.0.partyrules", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_report_rules = ProtoField.new("Trade Report Rules", "ngm.elasticia.fix.fast.v2.0.0.tradereportrules", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_definition_update_report = ProtoField.new("Security Definition Update Report Message", "ngm.elasticia.fix.fast.v2.0.0.securitydefinitionupdatereport", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_alt_i_ds = ProtoField.new("Security Alt I Ds", "ngm.elasticia.fix.fast.v2.0.0.securityaltids", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_segments = ProtoField.new("Market Segments", "ngm.elasticia.fix.fast.v2.0.0.marketsegments", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.tick_rules = ProtoField.new("Tick Rules", "ngm.elasticia.fix.fast.v2.0.0.tickrules", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.match_rules = ProtoField.new("Match Rules", "ngm.elasticia.fix.fast.v2.0.0.matchrules", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_order_rules = ProtoField.new("Market Order Rules", "ngm.elasticia.fix.fast.v2.0.0.marketorderrules", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_data_rules = ProtoField.new("Market Data Rules", "ngm.elasticia.fix.fast.v2.0.0.marketdatarules", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_rules = ProtoField.new("Party Rules", "ngm.elasticia.fix.fast.v2.0.0.partyrules", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_report_rules = ProtoField.new("Trade Report Rules", "ngm.elasticia.fix.fast.v2.0.0.tradereportrules", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_mass_status_request = ProtoField.new("Security Mass Status Request Message", "ngm.elasticia.fix.fast.v2.0.0.securitymassstatusrequest", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_status = ProtoField.new("Security Status Message", "ngm.elasticia.fix.fast.v2.0.0.securitystatus", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_definition_request = ProtoField.new("Market Definition Request Message", "ngm.elasticia.fix.fast.v2.0.0.marketdefinitionrequest", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_definition = ProtoField.new("Market Definition Message", "ngm.elasticia.fix.fast.v2.0.0.marketdefinition", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.tick_rules = ProtoField.new("Tick Rules", "ngm.elasticia.fix.fast.v2.0.0.tickrules", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.match_rules = ProtoField.new("Match Rules", "ngm.elasticia.fix.fast.v2.0.0.matchrules", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_order_rules = ProtoField.new("Market Order Rules", "ngm.elasticia.fix.fast.v2.0.0.marketorderrules", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_data_rules = ProtoField.new("Market Data Rules", "ngm.elasticia.fix.fast.v2.0.0.marketdatarules", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_rules = ProtoField.new("Party Rules", "ngm.elasticia.fix.fast.v2.0.0.partyrules", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_report_rules = ProtoField.new("Trade Report Rules", "ngm.elasticia.fix.fast.v2.0.0.tradereportrules", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_definition_update_report = ProtoField.new("Market Definition Update Report Message", "ngm.elasticia.fix.fast.v2.0.0.marketdefinitionupdatereport", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.tick_rules = ProtoField.new("Tick Rules", "ngm.elasticia.fix.fast.v2.0.0.tickrules", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.match_rules = ProtoField.new("Match Rules", "ngm.elasticia.fix.fast.v2.0.0.matchrules", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_order_rules = ProtoField.new("Market Order Rules", "ngm.elasticia.fix.fast.v2.0.0.marketorderrules", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_data_rules = ProtoField.new("Market Data Rules", "ngm.elasticia.fix.fast.v2.0.0.marketdatarules", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_rules = ProtoField.new("Party Rules", "ngm.elasticia.fix.fast.v2.0.0.partyrules", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_report_rules = ProtoField.new("Trade Report Rules", "ngm.elasticia.fix.fast.v2.0.0.tradereportrules", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trading_session_status_request = ProtoField.new("Trading Session Status Request Message", "ngm.elasticia.fix.fast.v2.0.0.tradingsessionstatusrequest", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.trading_session_status = ProtoField.new("Trading Session Status Message", "ngm.elasticia.fix.fast.v2.0.0.tradingsessionstatus", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.corporate_action_report = ProtoField.new("Corporate Action Report Message", "ngm.elasticia.fix.fast.v2.0.0.corporateactionreport", ftypes.NONE)
omi_ngm_elasticia_fix_fast_v2_0_0.fields.corporate_action_request = ProtoField.new("Corporate Action Request Message", "ngm.elasticia.fix.fast.v2.0.0.corporateactionrequest", ftypes.NONE)

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
-- Ngm Elasticia Fix Fast 2.0.0 Fields
-----------------------------------------------------------------------

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_j = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_j.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "j"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_a_1 = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_a_1.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "A"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_5 = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_5.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "5"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_1 = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_1.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "1"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_0 = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_0.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "0"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_4 = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_4.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "4"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_3 = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_3.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "3"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_d = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_d.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "D"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_g_1 = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_g_1.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "G"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_f_1 = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_f_1.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "F"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_8 = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_8.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "8"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_9 = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_9.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "9"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_af = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_af.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "AF"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_s = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_s.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "S"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_z = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_z.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "Z"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_ai = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_ai.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "AI"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_r = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_r.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "R"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_a_2 = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_a_2.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "a"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_ae = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_ae.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "AE"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_ar = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_ar.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "AR"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_ad = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_ad.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "AD"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_aq = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_aq.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "AQ"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_fu = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_fu.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "FU"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_fr = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_fr.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "FR"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_x_1 = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_x_1.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "X"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_v = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_v.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "V"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_w = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_w.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "W"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_y_1 = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_y_1.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "Y"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_x_2 = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_x_2.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "x"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_y_2 = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_y_2.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "y"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_bp = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_bp.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "BP"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_cn = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_cn.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "CN"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_f_2 = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_f_2.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "f"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_bt = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_bt.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "BT"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_bu = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_bu.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "BU"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_bv = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_bv.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "BV"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_g_2 = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_g_2.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "g"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_h = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_h.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "h"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_u1 = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_u1.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "U1"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_u2 = {}

-- Dissect: Msg Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_u2.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "U2"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Begin String
ngm_elasticia_fix_fast_v2_0_0.begin_string = {}

-- Dissect: Begin String
ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "FIXT.1.1"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.begin_string, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.begin_string, range, "")
    absent:set_text("Begin String: No Value")
  end

  return offset, value
end

-- Msg Seq Num
ngm_elasticia_fix_fast_v2_0_0.msg_seq_num = {}

-- Dissect: Msg Seq Num
ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_uint64(buffer, offset)
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
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_seq_num, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.msg_seq_num, range, UInt64(0))
    absent:set_text("Msg Seq Num: No Value")
  end

  return offset, value
end

-- Target Comp Id
ngm_elasticia_fix_fast_v2_0_0.target_comp_id = {}

-- Dissect: Target Comp Id
ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Target Comp Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.target_comp_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.target_comp_id, range, "")
    absent:set_text("Target Comp Id: No Value")
  end

  return offset, value
end

-- Sender Comp Id
ngm_elasticia_fix_fast_v2_0_0.sender_comp_id = {}

-- Dissect: Sender Comp Id
ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
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
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.sender_comp_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.sender_comp_id, range, "")
    absent:set_text("Sender Comp Id: No Value")
  end

  return offset, value
end

-- On Behalf Of Comp Id
ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id = {}

-- Dissect: On Behalf Of Comp Id
ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.on_behalf_of_comp_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.on_behalf_of_comp_id, range, "")
    absent:set_text("On Behalf Of Comp Id: No Value")
  end

  return offset, value
end

-- Deliver To Comp Id
ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id = {}

-- Dissect: Deliver To Comp Id
ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.deliver_to_comp_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.deliver_to_comp_id, range, "")
    absent:set_text("Deliver To Comp Id: No Value")
  end

  return offset, value
end

-- Sending Time
ngm_elasticia_fix_fast_v2_0_0.sending_time = {}

-- Dissect: Sending Time
ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_int64(buffer, offset)
  value = (state.values[key] or Int64(0)) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.sending_time, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.sending_time, range, UInt64(0))
    absent:set_text("Sending Time: No Value")
  end

  return offset, value
end

-- Ref Msg Type (Sent)
ngm_elasticia_fix_fast_v2_0_0.ref_msg_type_sent_required = {}

-- Dissect: Ref Msg Type (Sent)
ngm_elasticia_fix_fast_v2_0_0.ref_msg_type_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.ref_msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.ref_msg_type, range, "")
    absent:set_text("Ref Msg Type: No Value")
  end

  return offset, value
end

-- Ref Msg Type (Sent)
ngm_elasticia_fix_fast_v2_0_0.ref_msg_type_sent_optional = {}

-- Dissect: Ref Msg Type (Sent)
ngm_elasticia_fix_fast_v2_0_0.ref_msg_type_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.ref_msg_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.ref_msg_type, range, "")
    absent:set_text("Ref Msg Type: No Value")
  end

  return offset, value
end

-- Business Reject Reason
ngm_elasticia_fix_fast_v2_0_0.business_reject_reason = {}

-- Dissect: Business Reject Reason
ngm_elasticia_fix_fast_v2_0_0.business_reject_reason.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.business_reject_reason, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.business_reject_reason, range, 0)
    absent:set_text("Business Reject Reason: No Value")
  end

  return offset, value
end

-- Text (Sent)
ngm_elasticia_fix_fast_v2_0_0.text_sent = {}

-- Dissect: Text (Sent)
ngm_elasticia_fix_fast_v2_0_0.text_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.text, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.text, range, "")
    absent:set_text("Text: No Value")
  end

  return offset, value
end

-- Text (Default)
ngm_elasticia_fix_fast_v2_0_0.text_default = {}

-- Dissect: Text (Default)
ngm_elasticia_fix_fast_v2_0_0.text_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.text, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.text, range, "")
    absent:set_text("Text: No Value")
  end

  return offset, value
end

-- Business Reject Ref Id
ngm_elasticia_fix_fast_v2_0_0.business_reject_ref_id = {}

-- Dissect: Business Reject Ref Id
ngm_elasticia_fix_fast_v2_0_0.business_reject_ref_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.business_reject_ref_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.business_reject_ref_id, range, "")
    absent:set_text("Business Reject Ref Id: No Value")
  end

  return offset, value
end

-- Heart Bt Int
ngm_elasticia_fix_fast_v2_0_0.heart_bt_int = {}

-- Dissect: Heart Bt Int
ngm_elasticia_fix_fast_v2_0_0.heart_bt_int.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.heart_bt_int, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.heart_bt_int, range, 0)
    absent:set_text("Heart Bt Int: No Value")
  end

  return offset, value
end

-- Reset Seq Num Flag
ngm_elasticia_fix_fast_v2_0_0.reset_seq_num_flag = {}

-- Dissect: Reset Seq Num Flag
ngm_elasticia_fix_fast_v2_0_0.reset_seq_num_flag.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value = 89
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.reset_seq_num_flag, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.reset_seq_num_flag, range, 0)
    absent:set_text("Reset Seq Num Flag: No Value")
  end

  return offset, value
end

-- Next Expected Msg Seq Num
ngm_elasticia_fix_fast_v2_0_0.next_expected_msg_seq_num = {}

-- Dissect: Next Expected Msg Seq Num
ngm_elasticia_fix_fast_v2_0_0.next_expected_msg_seq_num.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.next_expected_msg_seq_num, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.next_expected_msg_seq_num, range, UInt64(0))
    absent:set_text("Next Expected Msg Seq Num: No Value")
  end

  return offset, value
end

-- Username
ngm_elasticia_fix_fast_v2_0_0.username = {}

-- Dissect: Username
ngm_elasticia_fix_fast_v2_0_0.username.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.username, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.username, range, "")
    absent:set_text("Username: No Value")
  end

  return offset, value
end

-- Password
ngm_elasticia_fix_fast_v2_0_0.password = {}

-- Dissect: Password
ngm_elasticia_fix_fast_v2_0_0.password.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.password, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.password, range, "")
    absent:set_text("Password: No Value")
  end

  return offset, value
end

-- Encrypt Method
ngm_elasticia_fix_fast_v2_0_0.encrypt_method = {}

-- Dissect: Encrypt Method
ngm_elasticia_fix_fast_v2_0_0.encrypt_method.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 0

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.encrypt_method, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.encrypt_method, range, 0)
    absent:set_text("Encrypt Method: No Value")
  end

  return offset, value
end

-- Default Appl Ver Id
ngm_elasticia_fix_fast_v2_0_0.default_appl_ver_id = {}

-- Dissect: Default Appl Ver Id
ngm_elasticia_fix_fast_v2_0_0.default_appl_ver_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "FIXLatest"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.default_appl_ver_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.default_appl_ver_id, range, "")
    absent:set_text("Default Appl Ver Id: No Value")
  end

  return offset, value
end

-- Session Status
ngm_elasticia_fix_fast_v2_0_0.session_status = {}

-- Dissect: Session Status
ngm_elasticia_fix_fast_v2_0_0.session_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.session_status, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.session_status, range, 0)
    absent:set_text("Session Status: No Value")
  end

  return offset, value
end

-- Test Req Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.test_req_id_sent_required = {}

-- Dissect: Test Req Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.test_req_id_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.test_req_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.test_req_id, range, "")
    absent:set_text("Test Req Id: No Value")
  end

  return offset, value
end

-- Test Req Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.test_req_id_sent_optional = {}

-- Dissect: Test Req Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.test_req_id_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.test_req_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.test_req_id, range, "")
    absent:set_text("Test Req Id: No Value")
  end

  return offset, value
end

-- Gap Fill Flag
ngm_elasticia_fix_fast_v2_0_0.gap_fill_flag = {}

-- Dissect: Gap Fill Flag
ngm_elasticia_fix_fast_v2_0_0.gap_fill_flag.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value = 89
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.gap_fill_flag, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.gap_fill_flag, range, 0)
    absent:set_text("Gap Fill Flag: No Value")
  end

  return offset, value
end

-- New Seq No
ngm_elasticia_fix_fast_v2_0_0.new_seq_no = {}

-- Dissect: New Seq No
ngm_elasticia_fix_fast_v2_0_0.new_seq_no.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.new_seq_no, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.new_seq_no, range, UInt64(0))
    absent:set_text("New Seq No: No Value")
  end

  return offset, value
end

-- Ref Seq Num
ngm_elasticia_fix_fast_v2_0_0.ref_seq_num = {}

-- Dissect: Ref Seq Num
ngm_elasticia_fix_fast_v2_0_0.ref_seq_num.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.ref_seq_num, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.ref_seq_num, range, UInt64(0))
    absent:set_text("Ref Seq Num: No Value")
  end

  return offset, value
end

-- Ref Tag Id
ngm_elasticia_fix_fast_v2_0_0.ref_tag_id = {}

-- Dissect: Ref Tag Id
ngm_elasticia_fix_fast_v2_0_0.ref_tag_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.ref_tag_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.ref_tag_id, range, 0)
    absent:set_text("Ref Tag Id: No Value")
  end

  return offset, value
end

-- Session Reject Reason
ngm_elasticia_fix_fast_v2_0_0.session_reject_reason = {}

-- Dissect: Session Reject Reason
ngm_elasticia_fix_fast_v2_0_0.session_reject_reason.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.session_reject_reason, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.session_reject_reason, range, 0)
    absent:set_text("Session Reject Reason: No Value")
  end

  return offset, value
end

-- Security Id
ngm_elasticia_fix_fast_v2_0_0.security_id = {}

-- Dissect: Security Id
ngm_elasticia_fix_fast_v2_0_0.security_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_id, range, "")
    absent:set_text("Security Id: No Value")
  end

  return offset, value
end

-- Security Id Source
ngm_elasticia_fix_fast_v2_0_0.security_id_source = {}

-- Dissect: Security Id Source
ngm_elasticia_fix_fast_v2_0_0.security_id_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value = 77
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_id_source, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_id_source, range, 0)
    absent:set_text("Security Id Source: No Value")
  end

  return offset, value
end

-- Cl Ord Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.cl_ord_id_sent_required = {}

-- Dissect: Cl Ord Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.cl_ord_id_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.cl_ord_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.cl_ord_id, range, "")
    absent:set_text("Cl Ord Id: No Value")
  end

  return offset, value
end

-- Cl Ord Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.cl_ord_id_sent_optional = {}

-- Dissect: Cl Ord Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.cl_ord_id_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.cl_ord_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.cl_ord_id, range, "")
    absent:set_text("Cl Ord Id: No Value")
  end

  return offset, value
end

-- Side (Sent)
ngm_elasticia_fix_fast_v2_0_0.side_sent = {}

-- Dissect: Side (Sent)
ngm_elasticia_fix_fast_v2_0_0.side_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.side, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.side, range, 0)
    absent:set_text("Side: No Value")
  end

  return offset, value
end

-- Side (Default)
ngm_elasticia_fix_fast_v2_0_0.side_default = {}

-- Dissect: Side (Default)
ngm_elasticia_fix_fast_v2_0_0.side_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.side, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.side, range, 0)
    absent:set_text("Side: No Value")
  end

  return offset, value
end

-- Ord Type
ngm_elasticia_fix_fast_v2_0_0.ord_type = {}

-- Dissect: Ord Type
ngm_elasticia_fix_fast_v2_0_0.ord_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 50
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.ord_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.ord_type, range, 0)
    absent:set_text("Ord Type: No Value")
  end

  return offset, value
end

-- Price
ngm_elasticia_fix_fast_v2_0_0.price = {}

-- Display: Price
ngm_elasticia_fix_fast_v2_0_0.price.display = function(value)
  if value == nil then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Dissect: Price
ngm_elasticia_fix_fast_v2_0_0.price.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = ngm_elasticia_fix_fast_v2_0_0.price.display(value)

  if value == nil then
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.price, range, value, display)
  end

  return offset, value
end

-- Order Qty (Sent)
ngm_elasticia_fix_fast_v2_0_0.order_qty_sent = {}

-- Display: Order Qty (Sent)
ngm_elasticia_fix_fast_v2_0_0.order_qty_sent.display = function(value)
  if value == nil then
    return "Order Qty: No Value"
  end

  return "Order Qty: "..value
end

-- Dissect: Order Qty (Sent)
ngm_elasticia_fix_fast_v2_0_0.order_qty_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = ngm_elasticia_fix_fast_v2_0_0.order_qty_sent.display(value)

  if value == nil then
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_qty, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_qty, range, value, display)
  end

  return offset, value
end

-- Order Qty (Default)
ngm_elasticia_fix_fast_v2_0_0.order_qty_default = {}

-- Display: Order Qty (Default)
ngm_elasticia_fix_fast_v2_0_0.order_qty_default.display = function(value)
  if value == nil then
    return "Order Qty: No Value"
  end

  return "Order Qty: "..value
end

-- Dissect: Order Qty (Default)
ngm_elasticia_fix_fast_v2_0_0.order_qty_default.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = ngm_elasticia_fix_fast_v2_0_0.order_qty_default.display(value)

  if value == nil then
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_qty, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_qty, range, value, display)
  end

  return offset, value
end

-- Account
ngm_elasticia_fix_fast_v2_0_0.account = {}

-- Dissect: Account
ngm_elasticia_fix_fast_v2_0_0.account.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.account, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.account, range, "")
    absent:set_text("Account: No Value")
  end

  return offset, value
end

-- Time In Force
ngm_elasticia_fix_fast_v2_0_0.time_in_force = {}

-- Dissect: Time In Force
ngm_elasticia_fix_fast_v2_0_0.time_in_force.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.time_in_force, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.time_in_force, range, 0)
    absent:set_text("Time In Force: No Value")
  end

  return offset, value
end

-- Transact Time (Sent)
ngm_elasticia_fix_fast_v2_0_0.transact_time_sent_optional = {}

-- Dissect: Transact Time (Sent)
ngm_elasticia_fix_fast_v2_0_0.transact_time_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.transact_time, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.transact_time, range, UInt64(0))
    absent:set_text("Transact Time: No Value")
  end

  return offset, value
end

-- Transact Time (Sent)
ngm_elasticia_fix_fast_v2_0_0.transact_time_sent_required = {}

-- Dissect: Transact Time (Sent)
ngm_elasticia_fix_fast_v2_0_0.transact_time_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.transact_time, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.transact_time, range, UInt64(0))
    absent:set_text("Transact Time: No Value")
  end

  return offset, value
end

-- Expire Time
ngm_elasticia_fix_fast_v2_0_0.expire_time = {}

-- Dissect: Expire Time
ngm_elasticia_fix_fast_v2_0_0.expire_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_uint64(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.expire_time, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.expire_time, range, UInt64(0))
    absent:set_text("Expire Time: No Value")
  end

  return offset, value
end

-- Exec Inst
ngm_elasticia_fix_fast_v2_0_0.exec_inst = {}

-- Dissect: Exec Inst
ngm_elasticia_fix_fast_v2_0_0.exec_inst.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.exec_inst, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.exec_inst, range, "")
    absent:set_text("Exec Inst: No Value")
  end

  return offset, value
end

-- Order Restrictions
ngm_elasticia_fix_fast_v2_0_0.order_restrictions = {}

-- Dissect: Order Restrictions
ngm_elasticia_fix_fast_v2_0_0.order_restrictions.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_restrictions, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_restrictions, range, "")
    absent:set_text("Order Restrictions: No Value")
  end

  return offset, value
end

-- Display Qty
ngm_elasticia_fix_fast_v2_0_0.display_qty = {}

-- Display: Display Qty
ngm_elasticia_fix_fast_v2_0_0.display_qty.display = function(value)
  if value == nil then
    return "Display Qty: No Value"
  end

  return "Display Qty: "..value
end

-- Dissect: Display Qty
ngm_elasticia_fix_fast_v2_0_0.display_qty.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = ngm_elasticia_fix_fast_v2_0_0.display_qty.display(value)

  if value == nil then
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.display_qty, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.display_qty, range, value, display)
  end

  return offset, value
end

-- Display When
ngm_elasticia_fix_fast_v2_0_0.display_when = {}

-- Dissect: Display When
ngm_elasticia_fix_fast_v2_0_0.display_when.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.display_when, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.display_when, range, 0)
    absent:set_text("Display When: No Value")
  end

  return offset, value
end

-- Display Method
ngm_elasticia_fix_fast_v2_0_0.display_method = {}

-- Dissect: Display Method
ngm_elasticia_fix_fast_v2_0_0.display_method.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.display_method, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.display_method, range, 0)
    absent:set_text("Display Method: No Value")
  end

  return offset, value
end

-- Refresh Qty
ngm_elasticia_fix_fast_v2_0_0.refresh_qty = {}

-- Display: Refresh Qty
ngm_elasticia_fix_fast_v2_0_0.refresh_qty.display = function(value)
  if value == nil then
    return "Refresh Qty: No Value"
  end

  return "Refresh Qty: "..value
end

-- Dissect: Refresh Qty
ngm_elasticia_fix_fast_v2_0_0.refresh_qty.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = ngm_elasticia_fix_fast_v2_0_0.refresh_qty.display(value)

  if value == nil then
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.refresh_qty, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.refresh_qty, range, value, display)
  end

  return offset, value
end

-- Auction Type
ngm_elasticia_fix_fast_v2_0_0.auction_type = {}

-- Dissect: Auction Type
ngm_elasticia_fix_fast_v2_0_0.auction_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.auction_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.auction_type, range, 0)
    absent:set_text("Auction Type: No Value")
  end

  return offset, value
end

-- Order Capacity (Default)
ngm_elasticia_fix_fast_v2_0_0.order_capacity_default = {}

-- Dissect: Order Capacity (Default)
ngm_elasticia_fix_fast_v2_0_0.order_capacity_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_capacity, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_capacity, range, 0)
    absent:set_text("Order Capacity: No Value")
  end

  return offset, value
end

-- Order Capacity (Sent)
ngm_elasticia_fix_fast_v2_0_0.order_capacity_sent = {}

-- Dissect: Order Capacity (Sent)
ngm_elasticia_fix_fast_v2_0_0.order_capacity_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_capacity, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_capacity, range, 0)
    absent:set_text("Order Capacity: No Value")
  end

  return offset, value
end

-- Order Origination
ngm_elasticia_fix_fast_v2_0_0.order_origination = {}

-- Dissect: Order Origination
ngm_elasticia_fix_fast_v2_0_0.order_origination.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value = 5
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_origination, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_origination, range, 0)
    absent:set_text("Order Origination: No Value")
  end

  return offset, value
end

-- No Order Attribute Grp
ngm_elasticia_fix_fast_v2_0_0.no_order_attribute_grp = {}

-- Dissect: No Order Attribute Grp
ngm_elasticia_fix_fast_v2_0_0.no_order_attribute_grp.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_order_attribute_grp, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_order_attribute_grp, range, 0)
    absent:set_text("No Order Attribute Grp: No Value")
  end

  return offset, value
end

-- Order Attribute Type
ngm_elasticia_fix_fast_v2_0_0.order_attribute_type = {}

-- Dissect: Order Attribute Type
ngm_elasticia_fix_fast_v2_0_0.order_attribute_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_attribute_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_attribute_type, range, 0)
    absent:set_text("Order Attribute Type: No Value")
  end

  return offset, value
end

-- Order Attribute Value
ngm_elasticia_fix_fast_v2_0_0.order_attribute_value = {}

-- Dissect: Order Attribute Value
ngm_elasticia_fix_fast_v2_0_0.order_attribute_value.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_attribute_value, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_attribute_value, range, "")
    absent:set_text("Order Attribute Value: No Value")
  end

  return offset, value
end

-- No Party I Ds
ngm_elasticia_fix_fast_v2_0_0.no_party_i_ds = {}

-- Dissect: No Party I Ds
ngm_elasticia_fix_fast_v2_0_0.no_party_i_ds.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_party_i_ds, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_party_i_ds, range, 0)
    absent:set_text("No Party I Ds: No Value")
  end

  return offset, value
end

-- Party Role
ngm_elasticia_fix_fast_v2_0_0.party_role = {}

-- Dissect: Party Role
ngm_elasticia_fix_fast_v2_0_0.party_role.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_role, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_role, range, 0)
    absent:set_text("Party Role: No Value")
  end

  return offset, value
end

-- Party Role Qualifier
ngm_elasticia_fix_fast_v2_0_0.party_role_qualifier = {}

-- Dissect: Party Role Qualifier
ngm_elasticia_fix_fast_v2_0_0.party_role_qualifier.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_role_qualifier, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_role_qualifier, range, 0)
    absent:set_text("Party Role Qualifier: No Value")
  end

  return offset, value
end

-- Party Id Source
ngm_elasticia_fix_fast_v2_0_0.party_id_source = {}

-- Dissect: Party Id Source
ngm_elasticia_fix_fast_v2_0_0.party_id_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_id_source, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_id_source, range, 0)
    absent:set_text("Party Id Source: No Value")
  end

  return offset, value
end

-- Party Id
ngm_elasticia_fix_fast_v2_0_0.party_id = {}

-- Dissect: Party Id
ngm_elasticia_fix_fast_v2_0_0.party_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_id, range, "")
    absent:set_text("Party Id: No Value")
  end

  return offset, value
end

-- No Party Sub I Ds
ngm_elasticia_fix_fast_v2_0_0.no_party_sub_i_ds = {}

-- Dissect: No Party Sub I Ds
ngm_elasticia_fix_fast_v2_0_0.no_party_sub_i_ds.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_party_sub_i_ds, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_party_sub_i_ds, range, 0)
    absent:set_text("No Party Sub I Ds: No Value")
  end

  return offset, value
end

-- Party Sub Id Type
ngm_elasticia_fix_fast_v2_0_0.party_sub_id_type = {}

-- Dissect: Party Sub Id Type
ngm_elasticia_fix_fast_v2_0_0.party_sub_id_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_sub_id_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_sub_id_type, range, 0)
    absent:set_text("Party Sub Id Type: No Value")
  end

  return offset, value
end

-- Party Sub Id
ngm_elasticia_fix_fast_v2_0_0.party_sub_id = {}

-- Dissect: Party Sub Id
ngm_elasticia_fix_fast_v2_0_0.party_sub_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_sub_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_sub_id, range, "")
    absent:set_text("Party Sub Id: No Value")
  end

  return offset, value
end

-- Order Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.order_id_sent_optional = {}

-- Dissect: Order Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.order_id_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_id, range, "")
    absent:set_text("Order Id: No Value")
  end

  return offset, value
end

-- Order Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.order_id_sent_required = {}

-- Dissect: Order Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.order_id_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_id, range, "")
    absent:set_text("Order Id: No Value")
  end

  return offset, value
end

-- Orig Cl Ord Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.orig_cl_ord_id_sent_optional = {}

-- Dissect: Orig Cl Ord Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.orig_cl_ord_id_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.orig_cl_ord_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.orig_cl_ord_id, range, "")
    absent:set_text("Orig Cl Ord Id: No Value")
  end

  return offset, value
end

-- Orig Cl Ord Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.orig_cl_ord_id_sent_required = {}

-- Dissect: Orig Cl Ord Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.orig_cl_ord_id_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.orig_cl_ord_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.orig_cl_ord_id, range, "")
    absent:set_text("Orig Cl Ord Id: No Value")
  end

  return offset, value
end

-- Mass Status Req Id (Default)
ngm_elasticia_fix_fast_v2_0_0.mass_status_req_id_default = {}

-- Dissect: Mass Status Req Id (Default)
ngm_elasticia_fix_fast_v2_0_0.mass_status_req_id_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.mass_status_req_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.mass_status_req_id, range, "")
    absent:set_text("Mass Status Req Id: No Value")
  end

  return offset, value
end

-- Mass Status Req Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.mass_status_req_id_sent = {}

-- Dissect: Mass Status Req Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.mass_status_req_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.mass_status_req_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.mass_status_req_id, range, "")
    absent:set_text("Mass Status Req Id: No Value")
  end

  return offset, value
end

-- Last Rpt Requested
ngm_elasticia_fix_fast_v2_0_0.last_rpt_requested = {}

-- Dissect: Last Rpt Requested
ngm_elasticia_fix_fast_v2_0_0.last_rpt_requested.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value = 89
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.last_rpt_requested, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.last_rpt_requested, range, 0)
    absent:set_text("Last Rpt Requested: No Value")
  end

  return offset, value
end

-- Ord Status
ngm_elasticia_fix_fast_v2_0_0.ord_status = {}

-- Dissect: Ord Status
ngm_elasticia_fix_fast_v2_0_0.ord_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.ord_status, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.ord_status, range, 0)
    absent:set_text("Ord Status: No Value")
  end

  return offset, value
end

-- Exec Id
ngm_elasticia_fix_fast_v2_0_0.exec_id = {}

-- Dissect: Exec Id
ngm_elasticia_fix_fast_v2_0_0.exec_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.exec_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.exec_id, range, "")
    absent:set_text("Exec Id: No Value")
  end

  return offset, value
end

-- Exec Type
ngm_elasticia_fix_fast_v2_0_0.exec_type = {}

-- Dissect: Exec Type
ngm_elasticia_fix_fast_v2_0_0.exec_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.exec_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.exec_type, range, 0)
    absent:set_text("Exec Type: No Value")
  end

  return offset, value
end

-- Md Entry Id (Default)
ngm_elasticia_fix_fast_v2_0_0.md_entry_id_default = {}

-- Dissect: Md Entry Id (Default)
ngm_elasticia_fix_fast_v2_0_0.md_entry_id_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_entry_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_entry_id, range, "")
    absent:set_text("Md Entry Id: No Value")
  end

  return offset, value
end

-- Md Entry Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.md_entry_id_sent = {}

-- Dissect: Md Entry Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.md_entry_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_entry_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_entry_id, range, "")
    absent:set_text("Md Entry Id: No Value")
  end

  return offset, value
end

-- Working Indicator
ngm_elasticia_fix_fast_v2_0_0.working_indicator = {}

-- Dissect: Working Indicator
ngm_elasticia_fix_fast_v2_0_0.working_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 78
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.working_indicator, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.working_indicator, range, 0)
    absent:set_text("Working Indicator: No Value")
  end

  return offset, value
end

-- Lot Type (Default)
ngm_elasticia_fix_fast_v2_0_0.lot_type_default = {}

-- Dissect: Lot Type (Default)
ngm_elasticia_fix_fast_v2_0_0.lot_type_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 50
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.lot_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.lot_type, range, 0)
    absent:set_text("Lot Type: No Value")
  end

  return offset, value
end

-- Lot Type (Sent)
ngm_elasticia_fix_fast_v2_0_0.lot_type_sent = {}

-- Dissect: Lot Type (Sent)
ngm_elasticia_fix_fast_v2_0_0.lot_type_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.lot_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.lot_type, range, 0)
    absent:set_text("Lot Type: No Value")
  end

  return offset, value
end

-- Leaves Qty
ngm_elasticia_fix_fast_v2_0_0.leaves_qty = {}

-- Display: Leaves Qty
ngm_elasticia_fix_fast_v2_0_0.leaves_qty.display = function(value)
  if value == nil then
    return "Leaves Qty: No Value"
  end

  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
ngm_elasticia_fix_fast_v2_0_0.leaves_qty.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = ngm_elasticia_fix_fast_v2_0_0.leaves_qty.display(value)

  if value == nil then
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.leaves_qty, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.leaves_qty, range, value, display)
  end

  return offset, value
end

-- Cum Qty
ngm_elasticia_fix_fast_v2_0_0.cum_qty = {}

-- Display: Cum Qty
ngm_elasticia_fix_fast_v2_0_0.cum_qty.display = function(value)
  if value == nil then
    return "Cum Qty: No Value"
  end

  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
ngm_elasticia_fix_fast_v2_0_0.cum_qty.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = ngm_elasticia_fix_fast_v2_0_0.cum_qty.display(value)

  if value == nil then
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.cum_qty, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.cum_qty, range, value, display)
  end

  return offset, value
end

-- Avg Px
ngm_elasticia_fix_fast_v2_0_0.avg_px = {}

-- Display: Avg Px
ngm_elasticia_fix_fast_v2_0_0.avg_px.display = function(value)
  if value == nil then
    return "Avg Px: No Value"
  end

  return "Avg Px: "..value
end

-- Dissect: Avg Px
ngm_elasticia_fix_fast_v2_0_0.avg_px.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = ngm_elasticia_fix_fast_v2_0_0.avg_px.display(value)

  if value == nil then
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.avg_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.avg_px, range, value, display)
  end

  return offset, value
end

-- Ord Rej Reason
ngm_elasticia_fix_fast_v2_0_0.ord_rej_reason = {}

-- Dissect: Ord Rej Reason
ngm_elasticia_fix_fast_v2_0_0.ord_rej_reason.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.ord_rej_reason, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.ord_rej_reason, range, 0)
    absent:set_text("Ord Rej Reason: No Value")
  end

  return offset, value
end

-- Exec Restatement Reason
ngm_elasticia_fix_fast_v2_0_0.exec_restatement_reason = {}

-- Dissect: Exec Restatement Reason
ngm_elasticia_fix_fast_v2_0_0.exec_restatement_reason.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.exec_restatement_reason, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.exec_restatement_reason, range, 0)
    absent:set_text("Exec Restatement Reason: No Value")
  end

  return offset, value
end

-- Order Priority
ngm_elasticia_fix_fast_v2_0_0.order_priority = {}

-- Dissect: Order Priority
ngm_elasticia_fix_fast_v2_0_0.order_priority.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_priority, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_priority, range, UInt64(0))
    absent:set_text("Order Priority: No Value")
  end

  return offset, value
end

-- Cxl Rej Response To
ngm_elasticia_fix_fast_v2_0_0.cxl_rej_response_to = {}

-- Dissect: Cxl Rej Response To
ngm_elasticia_fix_fast_v2_0_0.cxl_rej_response_to.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.cxl_rej_response_to, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.cxl_rej_response_to, range, 0)
    absent:set_text("Cxl Rej Response To: No Value")
  end

  return offset, value
end

-- Cxl Rej Reason
ngm_elasticia_fix_fast_v2_0_0.cxl_rej_reason = {}

-- Dissect: Cxl Rej Reason
ngm_elasticia_fix_fast_v2_0_0.cxl_rej_reason.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.cxl_rej_reason, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.cxl_rej_reason, range, 0)
    absent:set_text("Cxl Rej Reason: No Value")
  end

  return offset, value
end

-- Mass Status Req Type
ngm_elasticia_fix_fast_v2_0_0.mass_status_req_type = {}

-- Dissect: Mass Status Req Type
ngm_elasticia_fix_fast_v2_0_0.mass_status_req_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 7

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.mass_status_req_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.mass_status_req_type, range, 0)
    absent:set_text("Mass Status Req Type: No Value")
  end

  return offset, value
end

-- Quote Req Id (Default)
ngm_elasticia_fix_fast_v2_0_0.quote_req_id_default = {}

-- Dissect: Quote Req Id (Default)
ngm_elasticia_fix_fast_v2_0_0.quote_req_id_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_req_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_req_id, range, "")
    absent:set_text("Quote Req Id: No Value")
  end

  return offset, value
end

-- Quote Req Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.quote_req_id_sent = {}

-- Dissect: Quote Req Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.quote_req_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_req_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_req_id, range, "")
    absent:set_text("Quote Req Id: No Value")
  end

  return offset, value
end

-- Quote Id (Default)
ngm_elasticia_fix_fast_v2_0_0.quote_id_default = {}

-- Dissect: Quote Id (Default)
ngm_elasticia_fix_fast_v2_0_0.quote_id_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_id, range, "")
    absent:set_text("Quote Id: No Value")
  end

  return offset, value
end

-- Quote Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.quote_id_sent = {}

-- Dissect: Quote Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.quote_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_id, range, "")
    absent:set_text("Quote Id: No Value")
  end

  return offset, value
end

-- Quote Msg Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.quote_msg_id_sent_required = {}

-- Dissect: Quote Msg Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.quote_msg_id_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_msg_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_msg_id, range, "")
    absent:set_text("Quote Msg Id: No Value")
  end

  return offset, value
end

-- Quote Msg Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.quote_msg_id_sent_optional = {}

-- Dissect: Quote Msg Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.quote_msg_id_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_msg_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_msg_id, range, "")
    absent:set_text("Quote Msg Id: No Value")
  end

  return offset, value
end

-- Quote Msg Id (Default)
ngm_elasticia_fix_fast_v2_0_0.quote_msg_id_default = {}

-- Dissect: Quote Msg Id (Default)
ngm_elasticia_fix_fast_v2_0_0.quote_msg_id_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_msg_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_msg_id, range, "")
    absent:set_text("Quote Msg Id: No Value")
  end

  return offset, value
end

-- Orig Quote Msg Id
ngm_elasticia_fix_fast_v2_0_0.orig_quote_msg_id = {}

-- Dissect: Orig Quote Msg Id
ngm_elasticia_fix_fast_v2_0_0.orig_quote_msg_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.orig_quote_msg_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.orig_quote_msg_id, range, "")
    absent:set_text("Orig Quote Msg Id: No Value")
  end

  return offset, value
end

-- Bid Px
ngm_elasticia_fix_fast_v2_0_0.bid_px = {}

-- Display: Bid Px
ngm_elasticia_fix_fast_v2_0_0.bid_px.display = function(value)
  if value == nil then
    return "Bid Px: No Value"
  end

  return "Bid Px: "..value
end

-- Dissect: Bid Px
ngm_elasticia_fix_fast_v2_0_0.bid_px.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = ngm_elasticia_fix_fast_v2_0_0.bid_px.display(value)

  if value == nil then
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.bid_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.bid_px, range, value, display)
  end

  return offset, value
end

-- Offer Px
ngm_elasticia_fix_fast_v2_0_0.offer_px = {}

-- Display: Offer Px
ngm_elasticia_fix_fast_v2_0_0.offer_px.display = function(value)
  if value == nil then
    return "Offer Px: No Value"
  end

  return "Offer Px: "..value
end

-- Dissect: Offer Px
ngm_elasticia_fix_fast_v2_0_0.offer_px.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = ngm_elasticia_fix_fast_v2_0_0.offer_px.display(value)

  if value == nil then
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.offer_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.offer_px, range, value, display)
  end

  return offset, value
end

-- Bid Size
ngm_elasticia_fix_fast_v2_0_0.bid_size = {}

-- Display: Bid Size
ngm_elasticia_fix_fast_v2_0_0.bid_size.display = function(value)
  if value == nil then
    return "Bid Size: No Value"
  end

  return "Bid Size: "..value
end

-- Dissect: Bid Size
ngm_elasticia_fix_fast_v2_0_0.bid_size.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = ngm_elasticia_fix_fast_v2_0_0.bid_size.display(value)

  if value == nil then
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.bid_size, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.bid_size, range, value, display)
  end

  return offset, value
end

-- Total Bid Size
ngm_elasticia_fix_fast_v2_0_0.total_bid_size = {}

-- Display: Total Bid Size
ngm_elasticia_fix_fast_v2_0_0.total_bid_size.display = function(value)
  if value == nil then
    return "Total Bid Size: No Value"
  end

  return "Total Bid Size: "..value
end

-- Dissect: Total Bid Size
ngm_elasticia_fix_fast_v2_0_0.total_bid_size.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = ngm_elasticia_fix_fast_v2_0_0.total_bid_size.display(value)

  if value == nil then
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.total_bid_size, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.total_bid_size, range, value, display)
  end

  return offset, value
end

-- Offer Size
ngm_elasticia_fix_fast_v2_0_0.offer_size = {}

-- Display: Offer Size
ngm_elasticia_fix_fast_v2_0_0.offer_size.display = function(value)
  if value == nil then
    return "Offer Size: No Value"
  end

  return "Offer Size: "..value
end

-- Dissect: Offer Size
ngm_elasticia_fix_fast_v2_0_0.offer_size.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = ngm_elasticia_fix_fast_v2_0_0.offer_size.display(value)

  if value == nil then
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.offer_size, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.offer_size, range, value, display)
  end

  return offset, value
end

-- Total Offer Size
ngm_elasticia_fix_fast_v2_0_0.total_offer_size = {}

-- Display: Total Offer Size
ngm_elasticia_fix_fast_v2_0_0.total_offer_size.display = function(value)
  if value == nil then
    return "Total Offer Size: No Value"
  end

  return "Total Offer Size: "..value
end

-- Dissect: Total Offer Size
ngm_elasticia_fix_fast_v2_0_0.total_offer_size.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = ngm_elasticia_fix_fast_v2_0_0.total_offer_size.display(value)

  if value == nil then
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.total_offer_size, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.total_offer_size, range, value, display)
  end

  return offset, value
end

-- Quote Type
ngm_elasticia_fix_fast_v2_0_0.quote_type = {}

-- Dissect: Quote Type
ngm_elasticia_fix_fast_v2_0_0.quote_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_type, range, 0)
    absent:set_text("Quote Type: No Value")
  end

  return offset, value
end

-- Quote Cancel Type
ngm_elasticia_fix_fast_v2_0_0.quote_cancel_type = {}

-- Dissect: Quote Cancel Type
ngm_elasticia_fix_fast_v2_0_0.quote_cancel_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_cancel_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_cancel_type, range, 0)
    absent:set_text("Quote Cancel Type: No Value")
  end

  return offset, value
end

-- Quote Status Req Id (Default)
ngm_elasticia_fix_fast_v2_0_0.quote_status_req_id_default = {}

-- Dissect: Quote Status Req Id (Default)
ngm_elasticia_fix_fast_v2_0_0.quote_status_req_id_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_status_req_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_status_req_id, range, "")
    absent:set_text("Quote Status Req Id: No Value")
  end

  return offset, value
end

-- Quote Status Req Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.quote_status_req_id_sent = {}

-- Dissect: Quote Status Req Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.quote_status_req_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_status_req_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_status_req_id, range, "")
    absent:set_text("Quote Status Req Id: No Value")
  end

  return offset, value
end

-- Quote Status
ngm_elasticia_fix_fast_v2_0_0.quote_status = {}

-- Dissect: Quote Status
ngm_elasticia_fix_fast_v2_0_0.quote_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_status, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_status, range, 0)
    absent:set_text("Quote Status: No Value")
  end

  return offset, value
end

-- Bid Md Entry Id
ngm_elasticia_fix_fast_v2_0_0.bid_md_entry_id = {}

-- Dissect: Bid Md Entry Id
ngm_elasticia_fix_fast_v2_0_0.bid_md_entry_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.bid_md_entry_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.bid_md_entry_id, range, "")
    absent:set_text("Bid Md Entry Id: No Value")
  end

  return offset, value
end

-- Offer Md Entry Id
ngm_elasticia_fix_fast_v2_0_0.offer_md_entry_id = {}

-- Dissect: Offer Md Entry Id
ngm_elasticia_fix_fast_v2_0_0.offer_md_entry_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.offer_md_entry_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.offer_md_entry_id, range, "")
    absent:set_text("Offer Md Entry Id: No Value")
  end

  return offset, value
end

-- Bid Priority
ngm_elasticia_fix_fast_v2_0_0.bid_priority = {}

-- Dissect: Bid Priority
ngm_elasticia_fix_fast_v2_0_0.bid_priority.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.bid_priority, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.bid_priority, range, UInt64(0))
    absent:set_text("Bid Priority: No Value")
  end

  return offset, value
end

-- Offer Priority
ngm_elasticia_fix_fast_v2_0_0.offer_priority = {}

-- Dissect: Offer Priority
ngm_elasticia_fix_fast_v2_0_0.offer_priority.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.offer_priority, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.offer_priority, range, UInt64(0))
    absent:set_text("Offer Priority: No Value")
  end

  return offset, value
end

-- Quote Reject Reason
ngm_elasticia_fix_fast_v2_0_0.quote_reject_reason = {}

-- Dissect: Quote Reject Reason
ngm_elasticia_fix_fast_v2_0_0.quote_reject_reason.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_reject_reason, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_reject_reason, range, 0)
    absent:set_text("Quote Reject Reason: No Value")
  end

  return offset, value
end

-- Subscription Request Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.subscription_request_type_constant = {}

-- Dissect: Subscription Request Type (Constant)
ngm_elasticia_fix_fast_v2_0_0.subscription_request_type_constant.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 48

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.subscription_request_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.subscription_request_type, range, 0)
    absent:set_text("Subscription Request Type: No Value")
  end

  return offset, value
end

-- Subscription Request Type (Sent)
ngm_elasticia_fix_fast_v2_0_0.subscription_request_type_sent = {}

-- Dissect: Subscription Request Type (Sent)
ngm_elasticia_fix_fast_v2_0_0.subscription_request_type_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.subscription_request_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.subscription_request_type, range, 0)
    absent:set_text("Subscription Request Type: No Value")
  end

  return offset, value
end

-- No Security Alt Id
ngm_elasticia_fix_fast_v2_0_0.no_security_alt_id = {}

-- Dissect: No Security Alt Id
ngm_elasticia_fix_fast_v2_0_0.no_security_alt_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_security_alt_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_security_alt_id, range, 0)
    absent:set_text("No Security Alt Id: No Value")
  end

  return offset, value
end

-- Security Alt Id
ngm_elasticia_fix_fast_v2_0_0.security_alt_id = {}

-- Dissect: Security Alt Id
ngm_elasticia_fix_fast_v2_0_0.security_alt_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_alt_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_alt_id, range, "")
    absent:set_text("Security Alt Id: No Value")
  end

  return offset, value
end

-- Security Alt Id Source
ngm_elasticia_fix_fast_v2_0_0.security_alt_id_source = {}

-- Dissect: Security Alt Id Source
ngm_elasticia_fix_fast_v2_0_0.security_alt_id_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_alt_id_source, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_alt_id_source, range, 0)
    absent:set_text("Security Alt Id Source: No Value")
  end

  return offset, value
end

-- Trade Request Id (Default)
ngm_elasticia_fix_fast_v2_0_0.trade_request_id_default = {}

-- Dissect: Trade Request Id (Default)
ngm_elasticia_fix_fast_v2_0_0.trade_request_id_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_request_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_request_id, range, "")
    absent:set_text("Trade Request Id: No Value")
  end

  return offset, value
end

-- Trade Request Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.trade_request_id_sent_optional = {}

-- Dissect: Trade Request Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.trade_request_id_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_request_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_request_id, range, "")
    absent:set_text("Trade Request Id: No Value")
  end

  return offset, value
end

-- Trade Request Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.trade_request_id_sent_required = {}

-- Dissect: Trade Request Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.trade_request_id_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_request_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_request_id, range, "")
    absent:set_text("Trade Request Id: No Value")
  end

  return offset, value
end

-- Trade Report Id
ngm_elasticia_fix_fast_v2_0_0.trade_report_id = {}

-- Dissect: Trade Report Id
ngm_elasticia_fix_fast_v2_0_0.trade_report_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_report_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_report_id, range, "")
    absent:set_text("Trade Report Id: No Value")
  end

  return offset, value
end

-- Trade Report Ref Id
ngm_elasticia_fix_fast_v2_0_0.trade_report_ref_id = {}

-- Dissect: Trade Report Ref Id
ngm_elasticia_fix_fast_v2_0_0.trade_report_ref_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_report_ref_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_report_ref_id, range, "")
    absent:set_text("Trade Report Ref Id: No Value")
  end

  return offset, value
end

-- Trade Id
ngm_elasticia_fix_fast_v2_0_0.trade_id = {}

-- Dissect: Trade Id
ngm_elasticia_fix_fast_v2_0_0.trade_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_id, range, "")
    absent:set_text("Trade Id: No Value")
  end

  return offset, value
end

-- Trade Report Trans Type
ngm_elasticia_fix_fast_v2_0_0.trade_report_trans_type = {}

-- Dissect: Trade Report Trans Type
ngm_elasticia_fix_fast_v2_0_0.trade_report_trans_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_report_trans_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_report_trans_type, range, 0)
    absent:set_text("Trade Report Trans Type: No Value")
  end

  return offset, value
end

-- Trade Report Type
ngm_elasticia_fix_fast_v2_0_0.trade_report_type = {}

-- Dissect: Trade Report Type
ngm_elasticia_fix_fast_v2_0_0.trade_report_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_report_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_report_type, range, 0)
    absent:set_text("Trade Report Type: No Value")
  end

  return offset, value
end

-- Trd Type (Sent)
ngm_elasticia_fix_fast_v2_0_0.trd_type_sent = {}

-- Dissect: Trd Type (Sent)
ngm_elasticia_fix_fast_v2_0_0.trd_type_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trd_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trd_type, range, 0)
    absent:set_text("Trd Type: No Value")
  end

  return offset, value
end

-- Trd Type (Default)
ngm_elasticia_fix_fast_v2_0_0.trd_type_default = {}

-- Dissect: Trd Type (Default)
ngm_elasticia_fix_fast_v2_0_0.trd_type_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trd_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trd_type, range, 0)
    absent:set_text("Trd Type: No Value")
  end

  return offset, value
end

-- Secondary Trd Type
ngm_elasticia_fix_fast_v2_0_0.secondary_trd_type = {}

-- Dissect: Secondary Trd Type
ngm_elasticia_fix_fast_v2_0_0.secondary_trd_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.secondary_trd_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.secondary_trd_type, range, 0)
    absent:set_text("Secondary Trd Type: No Value")
  end

  return offset, value
end

-- Trd Price Condition
ngm_elasticia_fix_fast_v2_0_0.trd_price_condition = {}

-- Dissect: Trd Price Condition
ngm_elasticia_fix_fast_v2_0_0.trd_price_condition.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trd_price_condition, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trd_price_condition, range, 0)
    absent:set_text("Trd Price Condition: No Value")
  end

  return offset, value
end

-- Order Category
ngm_elasticia_fix_fast_v2_0_0.order_category = {}

-- Dissect: Order Category
ngm_elasticia_fix_fast_v2_0_0.order_category.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_category, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_category, range, 0)
    absent:set_text("Order Category: No Value")
  end

  return offset, value
end

-- No Trd Reg Publications
ngm_elasticia_fix_fast_v2_0_0.no_trd_reg_publications = {}

-- Dissect: No Trd Reg Publications
ngm_elasticia_fix_fast_v2_0_0.no_trd_reg_publications.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_trd_reg_publications, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_trd_reg_publications, range, 0)
    absent:set_text("No Trd Reg Publications: No Value")
  end

  return offset, value
end

-- Trd Reg Publication Type
ngm_elasticia_fix_fast_v2_0_0.trd_reg_publication_type = {}

-- Dissect: Trd Reg Publication Type
ngm_elasticia_fix_fast_v2_0_0.trd_reg_publication_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trd_reg_publication_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trd_reg_publication_type, range, 0)
    absent:set_text("Trd Reg Publication Type: No Value")
  end

  return offset, value
end

-- Trd Reg Publ Reason
ngm_elasticia_fix_fast_v2_0_0.trd_reg_publ_reason = {}

-- Dissect: Trd Reg Publ Reason
ngm_elasticia_fix_fast_v2_0_0.trd_reg_publ_reason.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trd_reg_publ_reason, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trd_reg_publ_reason, range, 0)
    absent:set_text("Trd Reg Publ Reason: No Value")
  end

  return offset, value
end

-- Trade Handling Instr
ngm_elasticia_fix_fast_v2_0_0.trade_handling_instr = {}

-- Dissect: Trade Handling Instr
ngm_elasticia_fix_fast_v2_0_0.trade_handling_instr.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_handling_instr, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_handling_instr, range, 0)
    absent:set_text("Trade Handling Instr: No Value")
  end

  return offset, value
end

-- Trans Bkd Time (Sent)
ngm_elasticia_fix_fast_v2_0_0.trans_bkd_time_sent = {}

-- Dissect: Trans Bkd Time (Sent)
ngm_elasticia_fix_fast_v2_0_0.trans_bkd_time_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trans_bkd_time, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trans_bkd_time, range, UInt64(0))
    absent:set_text("Trans Bkd Time: No Value")
  end

  return offset, value
end

-- Trans Bkd Time (Default)
ngm_elasticia_fix_fast_v2_0_0.trans_bkd_time_default = {}

-- Dissect: Trans Bkd Time (Default)
ngm_elasticia_fix_fast_v2_0_0.trans_bkd_time_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_uint64(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trans_bkd_time, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trans_bkd_time, range, UInt64(0))
    absent:set_text("Trans Bkd Time: No Value")
  end

  return offset, value
end

-- Match Status
ngm_elasticia_fix_fast_v2_0_0.match_status = {}

-- Dissect: Match Status
ngm_elasticia_fix_fast_v2_0_0.match_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.match_status, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.match_status, range, 0)
    absent:set_text("Match Status: No Value")
  end

  return offset, value
end

-- Match Type (Sent)
ngm_elasticia_fix_fast_v2_0_0.match_type_sent = {}

-- Dissect: Match Type (Sent)
ngm_elasticia_fix_fast_v2_0_0.match_type_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.match_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.match_type, range, 0)
    absent:set_text("Match Type: No Value")
  end

  return offset, value
end

-- Match Type (Default)
ngm_elasticia_fix_fast_v2_0_0.match_type_default = {}

-- Dissect: Match Type (Default)
ngm_elasticia_fix_fast_v2_0_0.match_type_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.match_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.match_type, range, 0)
    absent:set_text("Match Type: No Value")
  end

  return offset, value
end

-- Trade Condition (Sent)
ngm_elasticia_fix_fast_v2_0_0.trade_condition_sent = {}

-- Dissect: Trade Condition (Sent)
ngm_elasticia_fix_fast_v2_0_0.trade_condition_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_condition, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_condition, range, "")
    absent:set_text("Trade Condition: No Value")
  end

  return offset, value
end

-- Trade Condition (Default)
ngm_elasticia_fix_fast_v2_0_0.trade_condition_default = {}

-- Dissect: Trade Condition (Default)
ngm_elasticia_fix_fast_v2_0_0.trade_condition_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_condition, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_condition, range, "")
    absent:set_text("Trade Condition: No Value")
  end

  return offset, value
end

-- Last Qty
ngm_elasticia_fix_fast_v2_0_0.last_qty = {}

-- Display: Last Qty
ngm_elasticia_fix_fast_v2_0_0.last_qty.display = function(value)
  if value == nil then
    return "Last Qty: No Value"
  end

  return "Last Qty: "..value
end

-- Dissect: Last Qty
ngm_elasticia_fix_fast_v2_0_0.last_qty.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = ngm_elasticia_fix_fast_v2_0_0.last_qty.display(value)

  if value == nil then
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.last_qty, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.last_qty, range, value, display)
  end

  return offset, value
end

-- Last Px
ngm_elasticia_fix_fast_v2_0_0.last_px = {}

-- Display: Last Px
ngm_elasticia_fix_fast_v2_0_0.last_px.display = function(value)
  if value == nil then
    return "Last Px: No Value"
  end

  return "Last Px: "..value
end

-- Dissect: Last Px
ngm_elasticia_fix_fast_v2_0_0.last_px.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = ngm_elasticia_fix_fast_v2_0_0.last_px.display(value)

  if value == nil then
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.last_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.last_px, range, value, display)
  end

  return offset, value
end

-- Currency (Sent)
ngm_elasticia_fix_fast_v2_0_0.currency_sent = {}

-- Dissect: Currency (Sent)
ngm_elasticia_fix_fast_v2_0_0.currency_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.currency, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.currency, range, "")
    absent:set_text("Currency: No Value")
  end

  return offset, value
end

-- Currency (Default)
ngm_elasticia_fix_fast_v2_0_0.currency_default = {}

-- Dissect: Currency (Default)
ngm_elasticia_fix_fast_v2_0_0.currency_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.currency, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.currency, range, "")
    absent:set_text("Currency: No Value")
  end

  return offset, value
end

-- Last Mkt
ngm_elasticia_fix_fast_v2_0_0.last_mkt = {}

-- Dissect: Last Mkt
ngm_elasticia_fix_fast_v2_0_0.last_mkt.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.last_mkt, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.last_mkt, range, "")
    absent:set_text("Last Mkt: No Value")
  end

  return offset, value
end

-- No Sides
ngm_elasticia_fix_fast_v2_0_0.no_sides = {}

-- Dissect: No Sides
ngm_elasticia_fix_fast_v2_0_0.no_sides.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_sides, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_sides, range, 0)
    absent:set_text("No Sides: No Value")
  end

  return offset, value
end

-- Secondary Cl Ord Id
ngm_elasticia_fix_fast_v2_0_0.secondary_cl_ord_id = {}

-- Dissect: Secondary Cl Ord Id
ngm_elasticia_fix_fast_v2_0_0.secondary_cl_ord_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.secondary_cl_ord_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.secondary_cl_ord_id, range, "")
    absent:set_text("Secondary Cl Ord Id: No Value")
  end

  return offset, value
end

-- Aggressor Indicator
ngm_elasticia_fix_fast_v2_0_0.aggressor_indicator = {}

-- Dissect: Aggressor Indicator
ngm_elasticia_fix_fast_v2_0_0.aggressor_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value = 89
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.aggressor_indicator, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.aggressor_indicator, range, 0)
    absent:set_text("Aggressor Indicator: No Value")
  end

  return offset, value
end

-- Accrued Interest Amt
ngm_elasticia_fix_fast_v2_0_0.accrued_interest_amt = {}

-- Display: Accrued Interest Amt
ngm_elasticia_fix_fast_v2_0_0.accrued_interest_amt.display = function(value)
  if value == nil then
    return "Accrued Interest Amt: No Value"
  end

  return "Accrued Interest Amt: "..value
end

-- Dissect: Accrued Interest Amt
ngm_elasticia_fix_fast_v2_0_0.accrued_interest_amt.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = ngm_elasticia_fix_fast_v2_0_0.accrued_interest_amt.display(value)

  if value == nil then
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.accrued_interest_amt, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.accrued_interest_amt, range, value, display)
  end

  return offset, value
end

-- Trade Report Reject Reason
ngm_elasticia_fix_fast_v2_0_0.trade_report_reject_reason = {}

-- Dissect: Trade Report Reject Reason
ngm_elasticia_fix_fast_v2_0_0.trade_report_reject_reason.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_report_reject_reason, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_report_reject_reason, range, 0)
    absent:set_text("Trade Report Reject Reason: No Value")
  end

  return offset, value
end

-- Trade Request Type
ngm_elasticia_fix_fast_v2_0_0.trade_request_type = {}

-- Dissect: Trade Request Type
ngm_elasticia_fix_fast_v2_0_0.trade_request_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_request_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_request_type, range, 0)
    absent:set_text("Trade Request Type: No Value")
  end

  return offset, value
end

-- No Dates
ngm_elasticia_fix_fast_v2_0_0.no_dates = {}

-- Dissect: No Dates
ngm_elasticia_fix_fast_v2_0_0.no_dates.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_dates, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_dates, range, 0)
    absent:set_text("No Dates: No Value")
  end

  return offset, value
end

-- Trade Request Result
ngm_elasticia_fix_fast_v2_0_0.trade_request_result = {}

-- Dissect: Trade Request Result
ngm_elasticia_fix_fast_v2_0_0.trade_request_result.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_request_result, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_request_result, range, 0)
    absent:set_text("Trade Request Result: No Value")
  end

  return offset, value
end

-- Trade Request Status
ngm_elasticia_fix_fast_v2_0_0.trade_request_status = {}

-- Dissect: Trade Request Status
ngm_elasticia_fix_fast_v2_0_0.trade_request_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_request_status, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_request_status, range, 0)
    absent:set_text("Trade Request Status: No Value")
  end

  return offset, value
end

-- Security Status Update Request Id
ngm_elasticia_fix_fast_v2_0_0.security_status_update_request_id = {}

-- Dissect: Security Status Update Request Id
ngm_elasticia_fix_fast_v2_0_0.security_status_update_request_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_status_update_request_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_status_update_request_id, range, "")
    absent:set_text("Security Status Update Request Id: No Value")
  end

  return offset, value
end

-- No Updates
ngm_elasticia_fix_fast_v2_0_0.no_updates = {}

-- Dissect: No Updates
ngm_elasticia_fix_fast_v2_0_0.no_updates.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_updates, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_updates, range, 0)
    absent:set_text("No Updates: No Value")
  end

  return offset, value
end

-- Financial Status Update Type
ngm_elasticia_fix_fast_v2_0_0.financial_status_update_type = {}

-- Dissect: Financial Status Update Type
ngm_elasticia_fix_fast_v2_0_0.financial_status_update_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.financial_status_update_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.financial_status_update_type, range, 0)
    absent:set_text("Financial Status Update Type: No Value")
  end

  return offset, value
end

-- Financial Status Update Value
ngm_elasticia_fix_fast_v2_0_0.financial_status_update_value = {}

-- Dissect: Financial Status Update Value
ngm_elasticia_fix_fast_v2_0_0.financial_status_update_value.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.financial_status_update_value, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.financial_status_update_value, range, 0)
    absent:set_text("Financial Status Update Value: No Value")
  end

  return offset, value
end

-- Financial Status Result
ngm_elasticia_fix_fast_v2_0_0.financial_status_result = {}

-- Dissect: Financial Status Result
ngm_elasticia_fix_fast_v2_0_0.financial_status_result.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.financial_status_result, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.financial_status_result, range, 0)
    absent:set_text("Financial Status Result: No Value")
  end

  return offset, value
end

-- No Md Entries
ngm_elasticia_fix_fast_v2_0_0.no_md_entries = {}

-- Dissect: No Md Entries
ngm_elasticia_fix_fast_v2_0_0.no_md_entries.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_md_entries, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_md_entries, range, 0)
    absent:set_text("No Md Entries: No Value")
  end

  return offset, value
end

-- Md Update Action
ngm_elasticia_fix_fast_v2_0_0.md_update_action = {}

-- Dissect: Md Update Action
ngm_elasticia_fix_fast_v2_0_0.md_update_action.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_update_action, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_update_action, range, 0)
    absent:set_text("Md Update Action: No Value")
  end

  return offset, value
end

-- Md Entry Type
ngm_elasticia_fix_fast_v2_0_0.md_entry_type = {}

-- Dissect: Md Entry Type
ngm_elasticia_fix_fast_v2_0_0.md_entry_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_entry_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_entry_type, range, 0)
    absent:set_text("Md Entry Type: No Value")
  end

  return offset, value
end

-- Md Stat Scope
ngm_elasticia_fix_fast_v2_0_0.md_stat_scope = {}

-- Dissect: Md Stat Scope
ngm_elasticia_fix_fast_v2_0_0.md_stat_scope.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 1
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_stat_scope, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_stat_scope, range, 0)
    absent:set_text("Md Stat Scope: No Value")
  end

  return offset, value
end

-- Md Entry Px
ngm_elasticia_fix_fast_v2_0_0.md_entry_px = {}

-- Display: Md Entry Px
ngm_elasticia_fix_fast_v2_0_0.md_entry_px.display = function(value)
  if value == nil then
    return "Md Entry Px: No Value"
  end

  return "Md Entry Px: "..value
end

-- Dissect: Md Entry Px
ngm_elasticia_fix_fast_v2_0_0.md_entry_px.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = ngm_elasticia_fix_fast_v2_0_0.md_entry_px.display(value)

  if value == nil then
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_entry_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_entry_px, range, value, display)
  end

  return offset, value
end

-- Md Entry Size
ngm_elasticia_fix_fast_v2_0_0.md_entry_size = {}

-- Display: Md Entry Size
ngm_elasticia_fix_fast_v2_0_0.md_entry_size.display = function(value)
  if value == nil then
    return "Md Entry Size: No Value"
  end

  return "Md Entry Size: "..value
end

-- Dissect: Md Entry Size
ngm_elasticia_fix_fast_v2_0_0.md_entry_size.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = ngm_elasticia_fix_fast_v2_0_0.md_entry_size.display(value)

  if value == nil then
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_entry_size, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_entry_size, range, value, display)
  end

  return offset, value
end

-- Md Entry Position No
ngm_elasticia_fix_fast_v2_0_0.md_entry_position_no = {}

-- Dissect: Md Entry Position No
ngm_elasticia_fix_fast_v2_0_0.md_entry_position_no.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_entry_position_no, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_entry_position_no, range, 0)
    absent:set_text("Md Entry Position No: No Value")
  end

  return offset, value
end

-- Md Entry Buyer
ngm_elasticia_fix_fast_v2_0_0.md_entry_buyer = {}

-- Dissect: Md Entry Buyer
ngm_elasticia_fix_fast_v2_0_0.md_entry_buyer.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_entry_buyer, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_entry_buyer, range, "")
    absent:set_text("Md Entry Buyer: No Value")
  end

  return offset, value
end

-- Md Entry Seller
ngm_elasticia_fix_fast_v2_0_0.md_entry_seller = {}

-- Dissect: Md Entry Seller
ngm_elasticia_fix_fast_v2_0_0.md_entry_seller.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_entry_seller, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_entry_seller, range, "")
    absent:set_text("Md Entry Seller: No Value")
  end

  return offset, value
end

-- Algorithmic Trd Indicator
ngm_elasticia_fix_fast_v2_0_0.algorithmic_trd_indicator = {}

-- Dissect: Algorithmic Trd Indicator
ngm_elasticia_fix_fast_v2_0_0.algorithmic_trd_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.algorithmic_trd_indicator, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.algorithmic_trd_indicator, range, 0)
    absent:set_text("Algorithmic Trd Indicator: No Value")
  end

  return offset, value
end

-- Aggressor Side
ngm_elasticia_fix_fast_v2_0_0.aggressor_side = {}

-- Dissect: Aggressor Side
ngm_elasticia_fix_fast_v2_0_0.aggressor_side.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.aggressor_side, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.aggressor_side, range, 0)
    absent:set_text("Aggressor Side: No Value")
  end

  return offset, value
end

-- Market Maker Quote
ngm_elasticia_fix_fast_v2_0_0.market_maker_quote = {}

-- Dissect: Market Maker Quote
ngm_elasticia_fix_fast_v2_0_0.market_maker_quote.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value = 89
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_maker_quote, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_maker_quote, range, 0)
    absent:set_text("Market Maker Quote: No Value")
  end

  return offset, value
end

-- No Stats Indicators
ngm_elasticia_fix_fast_v2_0_0.no_stats_indicators = {}

-- Dissect: No Stats Indicators
ngm_elasticia_fix_fast_v2_0_0.no_stats_indicators.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_stats_indicators, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_stats_indicators, range, 0)
    absent:set_text("No Stats Indicators: No Value")
  end

  return offset, value
end

-- Stats Type
ngm_elasticia_fix_fast_v2_0_0.stats_type = {}

-- Dissect: Stats Type
ngm_elasticia_fix_fast_v2_0_0.stats_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.stats_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.stats_type, range, 0)
    absent:set_text("Stats Type: No Value")
  end

  return offset, value
end

-- Md Req Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.md_req_id_sent = {}

-- Dissect: Md Req Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.md_req_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_req_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_req_id, range, "")
    absent:set_text("Md Req Id: No Value")
  end

  return offset, value
end

-- Md Req Id (Default)
ngm_elasticia_fix_fast_v2_0_0.md_req_id_default = {}

-- Dissect: Md Req Id (Default)
ngm_elasticia_fix_fast_v2_0_0.md_req_id_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_req_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_req_id, range, "")
    absent:set_text("Md Req Id: No Value")
  end

  return offset, value
end

-- Market Depth
ngm_elasticia_fix_fast_v2_0_0.market_depth = {}

-- Dissect: Market Depth
ngm_elasticia_fix_fast_v2_0_0.market_depth.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 0

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_depth, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_depth, range, 0)
    absent:set_text("Market Depth: No Value")
  end

  return offset, value
end

-- No Md Entry Types
ngm_elasticia_fix_fast_v2_0_0.no_md_entry_types = {}

-- Dissect: No Md Entry Types
ngm_elasticia_fix_fast_v2_0_0.no_md_entry_types.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_md_entry_types, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_md_entry_types, range, 0)
    absent:set_text("No Md Entry Types: No Value")
  end

  return offset, value
end

-- Md Req Rej Reason
ngm_elasticia_fix_fast_v2_0_0.md_req_rej_reason = {}

-- Dissect: Md Req Rej Reason
ngm_elasticia_fix_fast_v2_0_0.md_req_rej_reason.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_req_rej_reason, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_req_rej_reason, range, 0)
    absent:set_text("Md Req Rej Reason: No Value")
  end

  return offset, value
end

-- Security Req Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.security_req_id_sent_required = {}

-- Dissect: Security Req Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.security_req_id_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_req_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_req_id, range, "")
    absent:set_text("Security Req Id: No Value")
  end

  return offset, value
end

-- Security Req Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.security_req_id_sent_optional = {}

-- Dissect: Security Req Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.security_req_id_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_req_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_req_id, range, "")
    absent:set_text("Security Req Id: No Value")
  end

  return offset, value
end

-- Security Request Result
ngm_elasticia_fix_fast_v2_0_0.security_request_result = {}

-- Dissect: Security Request Result
ngm_elasticia_fix_fast_v2_0_0.security_request_result.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_request_result, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_request_result, range, 0)
    absent:set_text("Security Request Result: No Value")
  end

  return offset, value
end

-- Last Fragment
ngm_elasticia_fix_fast_v2_0_0.last_fragment = {}

-- Dissect: Last Fragment
ngm_elasticia_fix_fast_v2_0_0.last_fragment.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.last_fragment, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.last_fragment, range, 0)
    absent:set_text("Last Fragment: No Value")
  end

  return offset, value
end

-- No Related Sym
ngm_elasticia_fix_fast_v2_0_0.no_related_sym = {}

-- Dissect: No Related Sym
ngm_elasticia_fix_fast_v2_0_0.no_related_sym.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_related_sym, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_related_sym, range, 0)
    absent:set_text("No Related Sym: No Value")
  end

  return offset, value
end

-- Instr Registry
ngm_elasticia_fix_fast_v2_0_0.instr_registry = {}

-- Dissect: Instr Registry
ngm_elasticia_fix_fast_v2_0_0.instr_registry.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.instr_registry, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.instr_registry, range, "")
    absent:set_text("Instr Registry: No Value")
  end

  return offset, value
end

-- Business Center
ngm_elasticia_fix_fast_v2_0_0.business_center = {}

-- Dissect: Business Center
ngm_elasticia_fix_fast_v2_0_0.business_center.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.business_center, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.business_center, range, "")
    absent:set_text("Business Center: No Value")
  end

  return offset, value
end

-- Zone Id
ngm_elasticia_fix_fast_v2_0_0.zone_id = {}

-- Dissect: Zone Id
ngm_elasticia_fix_fast_v2_0_0.zone_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.zone_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.zone_id, range, "")
    absent:set_text("Zone Id: No Value")
  end

  return offset, value
end

-- No Market Segments
ngm_elasticia_fix_fast_v2_0_0.no_market_segments = {}

-- Dissect: No Market Segments
ngm_elasticia_fix_fast_v2_0_0.no_market_segments.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_market_segments, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_market_segments, range, 0)
    absent:set_text("No Market Segments: No Value")
  end

  return offset, value
end

-- Market Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.market_id_sent_optional = {}

-- Dissect: Market Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.market_id_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_id, range, "")
    absent:set_text("Market Id: No Value")
  end

  return offset, value
end

-- Market Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.market_id_sent_required = {}

-- Dissect: Market Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.market_id_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_id, range, "")
    absent:set_text("Market Id: No Value")
  end

  return offset, value
end

-- Market Segment Id
ngm_elasticia_fix_fast_v2_0_0.market_segment_id = {}

-- Dissect: Market Segment Id
ngm_elasticia_fix_fast_v2_0_0.market_segment_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_segment_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_segment_id, range, "")
    absent:set_text("Market Segment Id: No Value")
  end

  return offset, value
end

-- Min Trade Vol
ngm_elasticia_fix_fast_v2_0_0.min_trade_vol = {}

-- Display: Min Trade Vol
ngm_elasticia_fix_fast_v2_0_0.min_trade_vol.display = function(value)
  if value == nil then
    return "Min Trade Vol: No Value"
  end

  return "Min Trade Vol: "..value
end

-- Dissect: Min Trade Vol
ngm_elasticia_fix_fast_v2_0_0.min_trade_vol.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = ngm_elasticia_fix_fast_v2_0_0.min_trade_vol.display(value)

  if value == nil then
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.min_trade_vol, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.min_trade_vol, range, value, display)
  end

  return offset, value
end

-- Round Lot
ngm_elasticia_fix_fast_v2_0_0.round_lot = {}

-- Display: Round Lot
ngm_elasticia_fix_fast_v2_0_0.round_lot.display = function(value)
  if value == nil then
    return "Round Lot: No Value"
  end

  return "Round Lot: "..value
end

-- Dissect: Round Lot
ngm_elasticia_fix_fast_v2_0_0.round_lot.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = ngm_elasticia_fix_fast_v2_0_0.round_lot.display(value)

  if value == nil then
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.round_lot, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.round_lot, range, value, display)
  end

  return offset, value
end

-- Price Type
ngm_elasticia_fix_fast_v2_0_0.price_type = {}

-- Dissect: Price Type
ngm_elasticia_fix_fast_v2_0_0.price_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.price_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.price_type, range, 0)
    absent:set_text("Price Type: No Value")
  end

  return offset, value
end

-- Max Order Expire Duration
ngm_elasticia_fix_fast_v2_0_0.max_order_expire_duration = {}

-- Dissect: Max Order Expire Duration
ngm_elasticia_fix_fast_v2_0_0.max_order_expire_duration.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.max_order_expire_duration, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.max_order_expire_duration, range, 0)
    absent:set_text("Max Order Expire Duration: No Value")
  end

  return offset, value
end

-- Max Trade Trans Bkd Time Diff
ngm_elasticia_fix_fast_v2_0_0.max_trade_trans_bkd_time_diff = {}

-- Dissect: Max Trade Trans Bkd Time Diff
ngm_elasticia_fix_fast_v2_0_0.max_trade_trans_bkd_time_diff.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.max_trade_trans_bkd_time_diff, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.max_trade_trans_bkd_time_diff, range, 0)
    absent:set_text("Max Trade Trans Bkd Time Diff: No Value")
  end

  return offset, value
end

-- No Tick Rules
ngm_elasticia_fix_fast_v2_0_0.no_tick_rules = {}

-- Dissect: No Tick Rules
ngm_elasticia_fix_fast_v2_0_0.no_tick_rules.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_tick_rules, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_tick_rules, range, 0)
    absent:set_text("No Tick Rules: No Value")
  end

  return offset, value
end

-- Start Tick Price Range
ngm_elasticia_fix_fast_v2_0_0.start_tick_price_range = {}

-- Display: Start Tick Price Range
ngm_elasticia_fix_fast_v2_0_0.start_tick_price_range.display = function(value)
  if value == nil then
    return "Start Tick Price Range: No Value"
  end

  return "Start Tick Price Range: "..value
end

-- Dissect: Start Tick Price Range
ngm_elasticia_fix_fast_v2_0_0.start_tick_price_range.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = ngm_elasticia_fix_fast_v2_0_0.start_tick_price_range.display(value)

  if value == nil then
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.start_tick_price_range, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.start_tick_price_range, range, value, display)
  end

  return offset, value
end

-- End Tick Price Range
ngm_elasticia_fix_fast_v2_0_0.end_tick_price_range = {}

-- Display: End Tick Price Range
ngm_elasticia_fix_fast_v2_0_0.end_tick_price_range.display = function(value)
  if value == nil then
    return "End Tick Price Range: No Value"
  end

  return "End Tick Price Range: "..value
end

-- Dissect: End Tick Price Range
ngm_elasticia_fix_fast_v2_0_0.end_tick_price_range.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = ngm_elasticia_fix_fast_v2_0_0.end_tick_price_range.display(value)

  if value == nil then
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.end_tick_price_range, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.end_tick_price_range, range, value, display)
  end

  return offset, value
end

-- Tick Increment
ngm_elasticia_fix_fast_v2_0_0.tick_increment = {}

-- Display: Tick Increment
ngm_elasticia_fix_fast_v2_0_0.tick_increment.display = function(value)
  if value == nil then
    return "Tick Increment: No Value"
  end

  return "Tick Increment: "..value
end

-- Dissect: Tick Increment
ngm_elasticia_fix_fast_v2_0_0.tick_increment.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = ngm_elasticia_fix_fast_v2_0_0.tick_increment.display(value)

  if value == nil then
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.tick_increment, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.tick_increment, range, value, display)
  end

  return offset, value
end

-- No Match Rules
ngm_elasticia_fix_fast_v2_0_0.no_match_rules = {}

-- Dissect: No Match Rules
ngm_elasticia_fix_fast_v2_0_0.no_match_rules.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_match_rules, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_match_rules, range, 0)
    absent:set_text("No Match Rules: No Value")
  end

  return offset, value
end

-- Match Algorithm
ngm_elasticia_fix_fast_v2_0_0.match_algorithm = {}

-- Dissect: Match Algorithm
ngm_elasticia_fix_fast_v2_0_0.match_algorithm.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.match_algorithm, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.match_algorithm, range, "")
    absent:set_text("Match Algorithm: No Value")
  end

  return offset, value
end

-- No Market Order Rules
ngm_elasticia_fix_fast_v2_0_0.no_market_order_rules = {}

-- Dissect: No Market Order Rules
ngm_elasticia_fix_fast_v2_0_0.no_market_order_rules.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_market_order_rules, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_market_order_rules, range, 0)
    absent:set_text("No Market Order Rules: No Value")
  end

  return offset, value
end

-- Market Order Rule
ngm_elasticia_fix_fast_v2_0_0.market_order_rule = {}

-- Dissect: Market Order Rule
ngm_elasticia_fix_fast_v2_0_0.market_order_rule.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_order_rule, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_order_rule, range, 0)
    absent:set_text("Market Order Rule: No Value")
  end

  return offset, value
end

-- Order Protection Auction Time Min
ngm_elasticia_fix_fast_v2_0_0.order_protection_auction_time_min = {}

-- Dissect: Order Protection Auction Time Min
ngm_elasticia_fix_fast_v2_0_0.order_protection_auction_time_min.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_protection_auction_time_min, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_protection_auction_time_min, range, 0)
    absent:set_text("Order Protection Auction Time Min: No Value")
  end

  return offset, value
end

-- Order Protection Auction Time Max
ngm_elasticia_fix_fast_v2_0_0.order_protection_auction_time_max = {}

-- Dissect: Order Protection Auction Time Max
ngm_elasticia_fix_fast_v2_0_0.order_protection_auction_time_max.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_protection_auction_time_max, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_protection_auction_time_max, range, 0)
    absent:set_text("Order Protection Auction Time Max: No Value")
  end

  return offset, value
end

-- Missing Reference Price Auction Time Min
ngm_elasticia_fix_fast_v2_0_0.missing_reference_price_auction_time_min = {}

-- Dissect: Missing Reference Price Auction Time Min
ngm_elasticia_fix_fast_v2_0_0.missing_reference_price_auction_time_min.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.missing_reference_price_auction_time_min, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.missing_reference_price_auction_time_min, range, 0)
    absent:set_text("Missing Reference Price Auction Time Min: No Value")
  end

  return offset, value
end

-- Missing Reference Price Auction Time Max
ngm_elasticia_fix_fast_v2_0_0.missing_reference_price_auction_time_max = {}

-- Dissect: Missing Reference Price Auction Time Max
ngm_elasticia_fix_fast_v2_0_0.missing_reference_price_auction_time_max.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.missing_reference_price_auction_time_max, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.missing_reference_price_auction_time_max, range, 0)
    absent:set_text("Missing Reference Price Auction Time Max: No Value")
  end

  return offset, value
end

-- Allow Reserve Order
ngm_elasticia_fix_fast_v2_0_0.allow_reserve_order = {}

-- Dissect: Allow Reserve Order
ngm_elasticia_fix_fast_v2_0_0.allow_reserve_order.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.allow_reserve_order, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.allow_reserve_order, range, 0)
    absent:set_text("Allow Reserve Order: No Value")
  end

  return offset, value
end

-- Min Reserve Order Value
ngm_elasticia_fix_fast_v2_0_0.min_reserve_order_value = {}

-- Display: Min Reserve Order Value
ngm_elasticia_fix_fast_v2_0_0.min_reserve_order_value.display = function(value)
  if value == nil then
    return "Min Reserve Order Value: No Value"
  end

  return "Min Reserve Order Value: "..value
end

-- Dissect: Min Reserve Order Value
ngm_elasticia_fix_fast_v2_0_0.min_reserve_order_value.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = ngm_elasticia_fix_fast_v2_0_0.min_reserve_order_value.display(value)

  if value == nil then
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.min_reserve_order_value, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.min_reserve_order_value, range, value, display)
  end

  return offset, value
end

-- Min Reserve Order Value Currency
ngm_elasticia_fix_fast_v2_0_0.min_reserve_order_value_currency = {}

-- Dissect: Min Reserve Order Value Currency
ngm_elasticia_fix_fast_v2_0_0.min_reserve_order_value_currency.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.min_reserve_order_value_currency, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.min_reserve_order_value_currency, range, "")
    absent:set_text("Min Reserve Order Value Currency: No Value")
  end

  return offset, value
end

-- No Market Data Rules
ngm_elasticia_fix_fast_v2_0_0.no_market_data_rules = {}

-- Dissect: No Market Data Rules
ngm_elasticia_fix_fast_v2_0_0.no_market_data_rules.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_market_data_rules, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_market_data_rules, range, 0)
    absent:set_text("No Market Data Rules: No Value")
  end

  return offset, value
end

-- Market Data Rule
ngm_elasticia_fix_fast_v2_0_0.market_data_rule = {}

-- Dissect: Market Data Rule
ngm_elasticia_fix_fast_v2_0_0.market_data_rule.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_data_rule, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_data_rule, range, 0)
    absent:set_text("Market Data Rule: No Value")
  end

  return offset, value
end

-- No Party Rules
ngm_elasticia_fix_fast_v2_0_0.no_party_rules = {}

-- Dissect: No Party Rules
ngm_elasticia_fix_fast_v2_0_0.no_party_rules.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_party_rules, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_party_rules, range, 0)
    absent:set_text("No Party Rules: No Value")
  end

  return offset, value
end

-- Party Rule
ngm_elasticia_fix_fast_v2_0_0.party_rule = {}

-- Dissect: Party Rule
ngm_elasticia_fix_fast_v2_0_0.party_rule.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_rule, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_rule, range, 0)
    absent:set_text("Party Rule: No Value")
  end

  return offset, value
end

-- No Trade Report Rules
ngm_elasticia_fix_fast_v2_0_0.no_trade_report_rules = {}

-- Dissect: No Trade Report Rules
ngm_elasticia_fix_fast_v2_0_0.no_trade_report_rules.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_trade_report_rules, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.no_trade_report_rules, range, 0)
    absent:set_text("No Trade Report Rules: No Value")
  end

  return offset, value
end

-- Trade Report Rule
ngm_elasticia_fix_fast_v2_0_0.trade_report_rule = {}

-- Dissect: Trade Report Rule
ngm_elasticia_fix_fast_v2_0_0.trade_report_rule.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_report_rule, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_report_rule, range, 0)
    absent:set_text("Trade Report Rule: No Value")
  end

  return offset, value
end

-- Security Xml
ngm_elasticia_fix_fast_v2_0_0.security_xml = {}

-- Dissect: Security Xml
ngm_elasticia_fix_fast_v2_0_0.security_xml.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_xml, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_xml, range, "")
    absent:set_text("Security Xml: No Value")
  end

  return offset, value
end

-- Liquidity Status
ngm_elasticia_fix_fast_v2_0_0.liquidity_status = {}

-- Dissect: Liquidity Status
ngm_elasticia_fix_fast_v2_0_0.liquidity_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.liquidity_status, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.liquidity_status, range, 0)
    absent:set_text("Liquidity Status: No Value")
  end

  return offset, value
end

-- Security Update Action
ngm_elasticia_fix_fast_v2_0_0.security_update_action = {}

-- Dissect: Security Update Action
ngm_elasticia_fix_fast_v2_0_0.security_update_action.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_update_action, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_update_action, range, 0)
    absent:set_text("Security Update Action: No Value")
  end

  return offset, value
end

-- Security Move Indicator
ngm_elasticia_fix_fast_v2_0_0.security_move_indicator = {}

-- Dissect: Security Move Indicator
ngm_elasticia_fix_fast_v2_0_0.security_move_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_move_indicator, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_move_indicator, range, 0)
    absent:set_text("Security Move Indicator: No Value")
  end

  return offset, value
end

-- Security Status Req Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.security_status_req_id_sent = {}

-- Dissect: Security Status Req Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.security_status_req_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_status_req_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_status_req_id, range, "")
    absent:set_text("Security Status Req Id: No Value")
  end

  return offset, value
end

-- Security Status Req Id (Default)
ngm_elasticia_fix_fast_v2_0_0.security_status_req_id_default = {}

-- Dissect: Security Status Req Id (Default)
ngm_elasticia_fix_fast_v2_0_0.security_status_req_id_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_status_req_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_status_req_id, range, "")
    absent:set_text("Security Status Req Id: No Value")
  end

  return offset, value
end

-- Security Trading Status
ngm_elasticia_fix_fast_v2_0_0.security_trading_status = {}

-- Dissect: Security Trading Status
ngm_elasticia_fix_fast_v2_0_0.security_trading_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_trading_status, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_trading_status, range, 0)
    absent:set_text("Security Trading Status: No Value")
  end

  return offset, value
end

-- Halt Reason
ngm_elasticia_fix_fast_v2_0_0.halt_reason = {}

-- Dissect: Halt Reason
ngm_elasticia_fix_fast_v2_0_0.halt_reason.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.halt_reason, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.halt_reason, range, 0)
    absent:set_text("Halt Reason: No Value")
  end

  return offset, value
end

-- Corporate Action
ngm_elasticia_fix_fast_v2_0_0.corporate_action = {}

-- Dissect: Corporate Action
ngm_elasticia_fix_fast_v2_0_0.corporate_action.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.corporate_action, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.corporate_action, range, "")
    absent:set_text("Corporate Action: No Value")
  end

  return offset, value
end

-- Financial Status
ngm_elasticia_fix_fast_v2_0_0.financial_status = {}

-- Dissect: Financial Status
ngm_elasticia_fix_fast_v2_0_0.financial_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.financial_status, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.financial_status, range, "")
    absent:set_text("Financial Status: No Value")
  end

  return offset, value
end

-- Market Req Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.market_req_id_sent_required = {}

-- Dissect: Market Req Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.market_req_id_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_req_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_req_id, range, "")
    absent:set_text("Market Req Id: No Value")
  end

  return offset, value
end

-- Market Req Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.market_req_id_sent_optional = {}

-- Dissect: Market Req Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.market_req_id_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_req_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_req_id, range, "")
    absent:set_text("Market Req Id: No Value")
  end

  return offset, value
end

-- Market Segment Desc
ngm_elasticia_fix_fast_v2_0_0.market_segment_desc = {}

-- Dissect: Market Segment Desc
ngm_elasticia_fix_fast_v2_0_0.market_segment_desc.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_segment_desc, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_segment_desc, range, "")
    absent:set_text("Market Segment Desc: No Value")
  end

  return offset, value
end

-- Encoded Mkt Segm Desc
ngm_elasticia_fix_fast_v2_0_0.encoded_mkt_segm_desc = {}

-- Dissect: Encoded Mkt Segm Desc
ngm_elasticia_fix_fast_v2_0_0.encoded_mkt_segm_desc.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.encoded_mkt_segm_desc, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.encoded_mkt_segm_desc, range, "")
    absent:set_text("Encoded Mkt Segm Desc: No Value")
  end

  return offset, value
end

-- Parent Mkt Segm Id
ngm_elasticia_fix_fast_v2_0_0.parent_mkt_segm_id = {}

-- Dissect: Parent Mkt Segm Id
ngm_elasticia_fix_fast_v2_0_0.parent_mkt_segm_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.parent_mkt_segm_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.parent_mkt_segm_id, range, "")
    absent:set_text("Parent Mkt Segm Id: No Value")
  end

  return offset, value
end

-- Market Report Id
ngm_elasticia_fix_fast_v2_0_0.market_report_id = {}

-- Dissect: Market Report Id
ngm_elasticia_fix_fast_v2_0_0.market_report_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_report_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_report_id, range, "")
    absent:set_text("Market Report Id: No Value")
  end

  return offset, value
end

-- Market Update Action
ngm_elasticia_fix_fast_v2_0_0.market_update_action = {}

-- Dissect: Market Update Action
ngm_elasticia_fix_fast_v2_0_0.market_update_action.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_update_action, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_update_action, range, 0)
    absent:set_text("Market Update Action: No Value")
  end

  return offset, value
end

-- Trad Ses Req Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.trad_ses_req_id_sent = {}

-- Dissect: Trad Ses Req Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.trad_ses_req_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trad_ses_req_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trad_ses_req_id, range, "")
    absent:set_text("Trad Ses Req Id: No Value")
  end

  return offset, value
end

-- Trad Ses Req Id (Default)
ngm_elasticia_fix_fast_v2_0_0.trad_ses_req_id_default = {}

-- Dissect: Trad Ses Req Id (Default)
ngm_elasticia_fix_fast_v2_0_0.trad_ses_req_id_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trad_ses_req_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trad_ses_req_id, range, "")
    absent:set_text("Trad Ses Req Id: No Value")
  end

  return offset, value
end

-- Trad Ses Status
ngm_elasticia_fix_fast_v2_0_0.trad_ses_status = {}

-- Dissect: Trad Ses Status
ngm_elasticia_fix_fast_v2_0_0.trad_ses_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trad_ses_status, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trad_ses_status, range, 0)
    absent:set_text("Trad Ses Status: No Value")
  end

  return offset, value
end

-- Corp Action Req Id (Default)
ngm_elasticia_fix_fast_v2_0_0.corp_action_req_id_default = {}

-- Dissect: Corp Action Req Id (Default)
ngm_elasticia_fix_fast_v2_0_0.corp_action_req_id_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.corp_action_req_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.corp_action_req_id, range, "")
    absent:set_text("Corp Action Req Id: No Value")
  end

  return offset, value
end

-- Corp Action Req Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.corp_action_req_id_sent = {}

-- Dissect: Corp Action Req Id (Sent)
ngm_elasticia_fix_fast_v2_0_0.corp_action_req_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.corp_action_req_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.corp_action_req_id, range, "")
    absent:set_text("Corp Action Req Id: No Value")
  end

  return offset, value
end

-- Corp Action Result
ngm_elasticia_fix_fast_v2_0_0.corp_action_result = {}

-- Dissect: Corp Action Result
ngm_elasticia_fix_fast_v2_0_0.corp_action_result.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.corp_action_result, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.corp_action_result, range, 0)
    absent:set_text("Corp Action Result: No Value")
  end

  return offset, value
end

-- Corp Update Action
ngm_elasticia_fix_fast_v2_0_0.corp_update_action = {}

-- Dissect: Corp Update Action
ngm_elasticia_fix_fast_v2_0_0.corp_update_action.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.corp_update_action, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.corp_update_action, range, 0)
    absent:set_text("Corp Update Action: No Value")
  end

  return offset, value
end

-- Corp Action Type
ngm_elasticia_fix_fast_v2_0_0.corp_action_type = {}

-- Dissect: Corp Action Type
ngm_elasticia_fix_fast_v2_0_0.corp_action_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.corp_action_type, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.corp_action_type, range, 0)
    absent:set_text("Corp Action Type: No Value")
  end

  return offset, value
end

-- Corp Action Id
ngm_elasticia_fix_fast_v2_0_0.corp_action_id = {}

-- Dissect: Corp Action Id
ngm_elasticia_fix_fast_v2_0_0.corp_action_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.corp_action_id, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.corp_action_id, range, "")
    absent:set_text("Corp Action Id: No Value")
  end

  return offset, value
end

-- Corp Action Descr
ngm_elasticia_fix_fast_v2_0_0.corp_action_descr = {}

-- Dissect: Corp Action Descr
ngm_elasticia_fix_fast_v2_0_0.corp_action_descr.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.corp_action_descr, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.corp_action_descr, range, "")
    absent:set_text("Corp Action Descr: No Value")
  end

  return offset, value
end

-- Corp Action Status
ngm_elasticia_fix_fast_v2_0_0.corp_action_status = {}

-- Dissect: Corp Action Status
ngm_elasticia_fix_fast_v2_0_0.corp_action_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.corp_action_status, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.corp_action_status, range, 0)
    absent:set_text("Corp Action Status: No Value")
  end

  return offset, value
end

-- Ex Time
ngm_elasticia_fix_fast_v2_0_0.ex_time = {}

-- Dissect: Ex Time
ngm_elasticia_fix_fast_v2_0_0.ex_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.ex_time, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.ex_time, range, UInt64(0))
    absent:set_text("Ex Time: No Value")
  end

  return offset, value
end

-- Adjustment Factor Numerator
ngm_elasticia_fix_fast_v2_0_0.adjustment_factor_numerator = {}

-- Dissect: Adjustment Factor Numerator
ngm_elasticia_fix_fast_v2_0_0.adjustment_factor_numerator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.adjustment_factor_numerator, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.adjustment_factor_numerator, range, 0)
    absent:set_text("Adjustment Factor Numerator: No Value")
  end

  return offset, value
end

-- Adjustment Factor Denominator
ngm_elasticia_fix_fast_v2_0_0.adjustment_factor_denominator = {}

-- Dissect: Adjustment Factor Denominator
ngm_elasticia_fix_fast_v2_0_0.adjustment_factor_denominator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.adjustment_factor_denominator, range, value)
  else
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.adjustment_factor_denominator, range, 0)
    absent:set_text("Adjustment Factor Denominator: No Value")
  end

  return offset, value
end

-- Dividend
ngm_elasticia_fix_fast_v2_0_0.dividend = {}

-- Display: Dividend
ngm_elasticia_fix_fast_v2_0_0.dividend.display = function(value)
  if value == nil then
    return "Dividend: No Value"
  end

  return "Dividend: "..value
end

-- Dissect: Dividend
ngm_elasticia_fix_fast_v2_0_0.dividend.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = ngm_elasticia_fix_fast_v2_0_0.dividend.display(value)

  if value == nil then
    local absent = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.dividend, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.dividend, range, value, display)
  end

  return offset, value
end


-----------------------------------------------------------------------
-- Dissect Ngm Elasticia Fix Fast 2.0.0
-----------------------------------------------------------------------

-- Corporate Action Request Message
ngm_elasticia_fix_fast_v2_0_0.corporate_action_request = {}

-- Dissect Fields: Corporate Action Request Message
ngm_elasticia_fix_fast_v2_0_0.corporate_action_request.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_u2.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Corp Action Req Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.corp_action_req_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Corporate Action Request Message
ngm_elasticia_fix_fast_v2_0_0.corporate_action_request.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.corporate_action_request.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Corporate Action Report Message
ngm_elasticia_fix_fast_v2_0_0.corporate_action_report = {}

-- Dissect Fields: Corporate Action Report Message
ngm_elasticia_fix_fast_v2_0_0.corporate_action_report.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_u1.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Security Ref: read in this scope

  -- Security Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id_source.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Corp Action Req Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.corp_action_req_id_default.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Last Rpt Requested: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.last_rpt_requested.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Corp Action Result: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.corp_action_result.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Corp Update Action: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.corp_update_action.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Corp Action: read in this scope

  -- Corp Action Type: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.corp_action_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Corp Action Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.corp_action_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Corp Action Descr: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.corp_action_descr.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Corp Action Status: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.corp_action_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Ex Time: uInt64, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.ex_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Transact Time: uInt64, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.transact_time_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Adjustment Factor Numerator: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.adjustment_factor_numerator.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Adjustment Factor Denominator: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.adjustment_factor_denominator.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Dividend: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.dividend.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  return index
end

-- Dissect: Corporate Action Report Message
ngm_elasticia_fix_fast_v2_0_0.corporate_action_report.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.corporate_action_report.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Trading Session Status Message
ngm_elasticia_fix_fast_v2_0_0.trading_session_status = {}

-- Dissect Fields: Trading Session Status Message
ngm_elasticia_fix_fast_v2_0_0.trading_session_status.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_h.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Trading Session: read in this scope

  -- Trad Ses Req Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trad_ses_req_id_default.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Last Rpt Requested: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.last_rpt_requested.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Market Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.market_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Segment Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.market_segment_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trad Ses Status: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.trad_ses_status.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Trading Session Status Message
ngm_elasticia_fix_fast_v2_0_0.trading_session_status.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.trading_session_status.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Trading Session Status Request Message
ngm_elasticia_fix_fast_v2_0_0.trading_session_status_request = {}

-- Dissect Fields: Trading Session Status Request Message
ngm_elasticia_fix_fast_v2_0_0.trading_session_status_request.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_g_2.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Trad Ses Req Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.trad_ses_req_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Subscription Request Type: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.subscription_request_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Trading Session Status Request Message
ngm_elasticia_fix_fast_v2_0_0.trading_session_status_request.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.trading_session_status_request.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Trade Report Rules
ngm_elasticia_fix_fast_v2_0_0.trade_report_rules = {}

-- Dissect Fields: Trade Report Rules
ngm_elasticia_fix_fast_v2_0_0.trade_report_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trade Report Rule: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trade_report_rule.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Trade Report Rules
ngm_elasticia_fix_fast_v2_0_0.trade_report_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_report_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.trade_report_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Party Rules
ngm_elasticia_fix_fast_v2_0_0.party_rules = {}

-- Dissect Fields: Party Rules
ngm_elasticia_fix_fast_v2_0_0.party_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Party Rule: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_rule.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Party Rules
ngm_elasticia_fix_fast_v2_0_0.party_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.party_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Rules
ngm_elasticia_fix_fast_v2_0_0.market_data_rules = {}

-- Dissect Fields: Market Data Rules
ngm_elasticia_fix_fast_v2_0_0.market_data_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Market Data Rule: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.market_data_rule.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Market Data Rules
ngm_elasticia_fix_fast_v2_0_0.market_data_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_data_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.market_data_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Order Rules
ngm_elasticia_fix_fast_v2_0_0.market_order_rules = {}

-- Dissect Fields: Market Order Rules
ngm_elasticia_fix_fast_v2_0_0.market_order_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Market Order Rule: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.market_order_rule.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Market Order Rules
ngm_elasticia_fix_fast_v2_0_0.market_order_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_order_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.market_order_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Match Rules
ngm_elasticia_fix_fast_v2_0_0.match_rules = {}

-- Dissect Fields: Match Rules
ngm_elasticia_fix_fast_v2_0_0.match_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Match Algorithm: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.match_algorithm.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Match Type: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.match_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Match Rules
ngm_elasticia_fix_fast_v2_0_0.match_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.match_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.match_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Tick Rules
ngm_elasticia_fix_fast_v2_0_0.tick_rules = {}

-- Dissect Fields: Tick Rules
ngm_elasticia_fix_fast_v2_0_0.tick_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Start Tick Price Range: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.start_tick_price_range.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- End Tick Price Range: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.end_tick_price_range.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Tick Increment: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.tick_increment.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  return index
end

-- Dissect: Tick Rules
ngm_elasticia_fix_fast_v2_0_0.tick_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.tick_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.tick_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Definition Update Report Message
ngm_elasticia_fix_fast_v2_0_0.market_definition_update_report = {}

-- Dissect Fields: Market Definition Update Report Message
ngm_elasticia_fix_fast_v2_0_0.market_definition_update_report.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_bv.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Market Report Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.market_report_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Update Action: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.market_update_action.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market: read in this scope

  -- Market Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.market_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Segment Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.market_segment_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Segment Desc: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.market_segment_desc.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Encoded Mkt Segm Desc: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.encoded_mkt_segm_desc.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Parent Mkt Segm Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.parent_mkt_segm_id.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Security Defaults: read in this scope

  -- Currency: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.currency_default.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Instr Registry: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.instr_registry.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Business Center: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.business_center.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Zone Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.zone_id.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Trading Rules: read in this scope

  -- Min Trade Vol: decimal, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.min_trade_vol.dissect(buffer, index, packet, parent, { presence_map[base + 11], false }, state, nil)

  -- Round Lot: decimal, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.round_lot.dissect(buffer, index, packet, parent, { presence_map[base + 12], false }, state, nil)

  -- Price Type: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.price_type.dissect(buffer, index, packet, parent, presence_map[base + 13], state, nil)

  -- Max Order Expire Duration: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.max_order_expire_duration.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- Max Trade Trans Bkd Time Diff: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.max_trade_trans_bkd_time_diff.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  -- No Tick Rules: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_tick_rules.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  -- Tick Rules: No Tick Rules entries
  local count = value or 0
  for tick_rules_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.tick_rules.dissect(buffer, index, packet, parent, presence_map, base, state, tick_rules_index)
  end

  -- No Match Rules: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_match_rules.dissect(buffer, index, packet, parent, presence_map[base + 17], state, nil)

  -- Match Rules: No Match Rules entries
  local count = value or 0
  for match_rules_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.match_rules.dissect(buffer, index, packet, parent, presence_map, base, state, match_rules_index)
  end

  -- No Market Order Rules: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_market_order_rules.dissect(buffer, index, packet, parent, presence_map[base + 18], state, nil)

  -- Market Order Rules: No Market Order Rules entries
  local count = value or 0
  for market_order_rules_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.market_order_rules.dissect(buffer, index, packet, parent, presence_map, base, state, market_order_rules_index)
  end

  -- Order Protection Auction Time Min: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_protection_auction_time_min.dissect(buffer, index, packet, parent, presence_map[base + 19], state, nil)

  -- Order Protection Auction Time Max: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_protection_auction_time_max.dissect(buffer, index, packet, parent, presence_map[base + 20], state, nil)

  -- Missing Reference Price Auction Time Min: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.missing_reference_price_auction_time_min.dissect(buffer, index, packet, parent, presence_map[base + 21], state, nil)

  -- Missing Reference Price Auction Time Max: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.missing_reference_price_auction_time_max.dissect(buffer, index, packet, parent, presence_map[base + 22], state, nil)

  -- Allow Reserve Order: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.allow_reserve_order.dissect(buffer, index, packet, parent, presence_map[base + 23], state, nil)

  -- Min Reserve Order Value: decimal, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.min_reserve_order_value.dissect(buffer, index, packet, parent, { presence_map[base + 24], false }, state, nil)

  -- Min Reserve Order Value Currency: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.min_reserve_order_value_currency.dissect(buffer, index, packet, parent, presence_map[base + 25], state, nil)

  -- No Market Data Rules: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_market_data_rules.dissect(buffer, index, packet, parent, presence_map[base + 26], state, nil)

  -- Market Data Rules: No Market Data Rules entries
  local count = value or 0
  for market_data_rules_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.market_data_rules.dissect(buffer, index, packet, parent, presence_map, base, state, market_data_rules_index)
  end

  -- No Party Rules: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_party_rules.dissect(buffer, index, packet, parent, presence_map[base + 27], state, nil)

  -- Party Rules: No Party Rules entries
  local count = value or 0
  for party_rules_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.party_rules.dissect(buffer, index, packet, parent, presence_map, base, state, party_rules_index)
  end

  -- No Trade Report Rules: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_trade_report_rules.dissect(buffer, index, packet, parent, presence_map[base + 28], state, nil)

  -- Trade Report Rules: No Trade Report Rules entries
  local count = value or 0
  for trade_report_rules_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.trade_report_rules.dissect(buffer, index, packet, parent, presence_map, base, state, trade_report_rules_index)
  end

  return index
end

-- Dissect: Market Definition Update Report Message
ngm_elasticia_fix_fast_v2_0_0.market_definition_update_report.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.market_definition_update_report.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Trade Report Rules
ngm_elasticia_fix_fast_v2_0_0.trade_report_rules = {}

-- Dissect Fields: Trade Report Rules
ngm_elasticia_fix_fast_v2_0_0.trade_report_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trade Report Rule: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trade_report_rule.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Trade Report Rules
ngm_elasticia_fix_fast_v2_0_0.trade_report_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_report_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.trade_report_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Party Rules
ngm_elasticia_fix_fast_v2_0_0.party_rules = {}

-- Dissect Fields: Party Rules
ngm_elasticia_fix_fast_v2_0_0.party_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Party Rule: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_rule.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Party Rules
ngm_elasticia_fix_fast_v2_0_0.party_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.party_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Rules
ngm_elasticia_fix_fast_v2_0_0.market_data_rules = {}

-- Dissect Fields: Market Data Rules
ngm_elasticia_fix_fast_v2_0_0.market_data_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Market Data Rule: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.market_data_rule.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Market Data Rules
ngm_elasticia_fix_fast_v2_0_0.market_data_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_data_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.market_data_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Order Rules
ngm_elasticia_fix_fast_v2_0_0.market_order_rules = {}

-- Dissect Fields: Market Order Rules
ngm_elasticia_fix_fast_v2_0_0.market_order_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Market Order Rule: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.market_order_rule.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Market Order Rules
ngm_elasticia_fix_fast_v2_0_0.market_order_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_order_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.market_order_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Match Rules
ngm_elasticia_fix_fast_v2_0_0.match_rules = {}

-- Dissect Fields: Match Rules
ngm_elasticia_fix_fast_v2_0_0.match_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Match Algorithm: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.match_algorithm.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Match Type: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.match_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Match Rules
ngm_elasticia_fix_fast_v2_0_0.match_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.match_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.match_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Tick Rules
ngm_elasticia_fix_fast_v2_0_0.tick_rules = {}

-- Dissect Fields: Tick Rules
ngm_elasticia_fix_fast_v2_0_0.tick_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Start Tick Price Range: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.start_tick_price_range.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- End Tick Price Range: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.end_tick_price_range.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Tick Increment: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.tick_increment.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  return index
end

-- Dissect: Tick Rules
ngm_elasticia_fix_fast_v2_0_0.tick_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.tick_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.tick_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Definition Message
ngm_elasticia_fix_fast_v2_0_0.market_definition = {}

-- Dissect Fields: Market Definition Message
ngm_elasticia_fix_fast_v2_0_0.market_definition.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_bu.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Market Req Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.market_req_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Rpt Requested: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.last_rpt_requested.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Market: read in this scope

  -- Market Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.market_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Segment Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.market_segment_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Segment Desc: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.market_segment_desc.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Encoded Mkt Segm Desc: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.encoded_mkt_segm_desc.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Parent Mkt Segm Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.parent_mkt_segm_id.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Security Defaults: read in this scope

  -- Currency: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.currency_default.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Instr Registry: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.instr_registry.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Business Center: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.business_center.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Zone Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.zone_id.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Trading Rules: read in this scope

  -- Min Trade Vol: decimal, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.min_trade_vol.dissect(buffer, index, packet, parent, { presence_map[base + 12], false }, state, nil)

  -- Round Lot: decimal, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.round_lot.dissect(buffer, index, packet, parent, { presence_map[base + 13], false }, state, nil)

  -- Price Type: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.price_type.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- Max Order Expire Duration: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.max_order_expire_duration.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  -- Max Trade Trans Bkd Time Diff: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.max_trade_trans_bkd_time_diff.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  -- No Tick Rules: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_tick_rules.dissect(buffer, index, packet, parent, presence_map[base + 17], state, nil)

  -- Tick Rules: No Tick Rules entries
  local count = value or 0
  for tick_rules_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.tick_rules.dissect(buffer, index, packet, parent, presence_map, base, state, tick_rules_index)
  end

  -- No Match Rules: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_match_rules.dissect(buffer, index, packet, parent, presence_map[base + 18], state, nil)

  -- Match Rules: No Match Rules entries
  local count = value or 0
  for match_rules_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.match_rules.dissect(buffer, index, packet, parent, presence_map, base, state, match_rules_index)
  end

  -- No Market Order Rules: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_market_order_rules.dissect(buffer, index, packet, parent, presence_map[base + 19], state, nil)

  -- Market Order Rules: No Market Order Rules entries
  local count = value or 0
  for market_order_rules_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.market_order_rules.dissect(buffer, index, packet, parent, presence_map, base, state, market_order_rules_index)
  end

  -- Order Protection Auction Time Min: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_protection_auction_time_min.dissect(buffer, index, packet, parent, presence_map[base + 20], state, nil)

  -- Order Protection Auction Time Max: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_protection_auction_time_max.dissect(buffer, index, packet, parent, presence_map[base + 21], state, nil)

  -- Missing Reference Price Auction Time Min: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.missing_reference_price_auction_time_min.dissect(buffer, index, packet, parent, presence_map[base + 22], state, nil)

  -- Missing Reference Price Auction Time Max: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.missing_reference_price_auction_time_max.dissect(buffer, index, packet, parent, presence_map[base + 23], state, nil)

  -- Allow Reserve Order: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.allow_reserve_order.dissect(buffer, index, packet, parent, presence_map[base + 24], state, nil)

  -- Min Reserve Order Value: decimal, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.min_reserve_order_value.dissect(buffer, index, packet, parent, { presence_map[base + 25], false }, state, nil)

  -- Min Reserve Order Value Currency: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.min_reserve_order_value_currency.dissect(buffer, index, packet, parent, presence_map[base + 26], state, nil)

  -- No Market Data Rules: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_market_data_rules.dissect(buffer, index, packet, parent, presence_map[base + 27], state, nil)

  -- Market Data Rules: No Market Data Rules entries
  local count = value or 0
  for market_data_rules_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.market_data_rules.dissect(buffer, index, packet, parent, presence_map, base, state, market_data_rules_index)
  end

  -- No Party Rules: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_party_rules.dissect(buffer, index, packet, parent, presence_map[base + 28], state, nil)

  -- Party Rules: No Party Rules entries
  local count = value or 0
  for party_rules_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.party_rules.dissect(buffer, index, packet, parent, presence_map, base, state, party_rules_index)
  end

  -- No Trade Report Rules: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_trade_report_rules.dissect(buffer, index, packet, parent, presence_map[base + 29], state, nil)

  -- Trade Report Rules: No Trade Report Rules entries
  local count = value or 0
  for trade_report_rules_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.trade_report_rules.dissect(buffer, index, packet, parent, presence_map, base, state, trade_report_rules_index)
  end

  return index
end

-- Dissect: Market Definition Message
ngm_elasticia_fix_fast_v2_0_0.market_definition.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.market_definition.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Market Definition Request Message
ngm_elasticia_fix_fast_v2_0_0.market_definition_request = {}

-- Dissect Fields: Market Definition Request Message
ngm_elasticia_fix_fast_v2_0_0.market_definition_request.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_bt.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Market Req Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.market_req_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Subscription Request Type: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.subscription_request_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Market Definition Request Message
ngm_elasticia_fix_fast_v2_0_0.market_definition_request.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.market_definition_request.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Security Status Message
ngm_elasticia_fix_fast_v2_0_0.security_status = {}

-- Dissect Fields: Security Status Message
ngm_elasticia_fix_fast_v2_0_0.security_status.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_f_2.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Security Ref: read in this scope

  -- Security Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id_source.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Security Status Req Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_status_req_id_default.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Last Rpt Requested: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.last_rpt_requested.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Security Stat: read in this scope

  -- Security Trading Status: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_trading_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Halt Reason: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.halt_reason.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Corporate Action: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.corporate_action.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Financial Status: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.financial_status.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  return index
end

-- Dissect: Security Status Message
ngm_elasticia_fix_fast_v2_0_0.security_status.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.security_status.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Security Mass Status Request Message
ngm_elasticia_fix_fast_v2_0_0.security_mass_status_request = {}

-- Dissect Fields: Security Mass Status Request Message
ngm_elasticia_fix_fast_v2_0_0.security_mass_status_request.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_cn.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Security Status Req Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_status_req_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Security Mass Status Request Message
ngm_elasticia_fix_fast_v2_0_0.security_mass_status_request.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.security_mass_status_request.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Trade Report Rules
ngm_elasticia_fix_fast_v2_0_0.trade_report_rules = {}

-- Dissect Fields: Trade Report Rules
ngm_elasticia_fix_fast_v2_0_0.trade_report_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trade Report Rule: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trade_report_rule.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Trade Report Rules
ngm_elasticia_fix_fast_v2_0_0.trade_report_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_report_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.trade_report_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Party Rules
ngm_elasticia_fix_fast_v2_0_0.party_rules = {}

-- Dissect Fields: Party Rules
ngm_elasticia_fix_fast_v2_0_0.party_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Party Rule: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_rule.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Party Rules
ngm_elasticia_fix_fast_v2_0_0.party_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.party_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Rules
ngm_elasticia_fix_fast_v2_0_0.market_data_rules = {}

-- Dissect Fields: Market Data Rules
ngm_elasticia_fix_fast_v2_0_0.market_data_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Market Data Rule: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.market_data_rule.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Market Data Rules
ngm_elasticia_fix_fast_v2_0_0.market_data_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_data_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.market_data_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Order Rules
ngm_elasticia_fix_fast_v2_0_0.market_order_rules = {}

-- Dissect Fields: Market Order Rules
ngm_elasticia_fix_fast_v2_0_0.market_order_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Market Order Rule: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.market_order_rule.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Market Order Rules
ngm_elasticia_fix_fast_v2_0_0.market_order_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_order_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.market_order_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Match Rules
ngm_elasticia_fix_fast_v2_0_0.match_rules = {}

-- Dissect Fields: Match Rules
ngm_elasticia_fix_fast_v2_0_0.match_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Match Algorithm: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.match_algorithm.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Match Type: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.match_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Match Rules
ngm_elasticia_fix_fast_v2_0_0.match_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.match_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.match_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Tick Rules
ngm_elasticia_fix_fast_v2_0_0.tick_rules = {}

-- Dissect Fields: Tick Rules
ngm_elasticia_fix_fast_v2_0_0.tick_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Start Tick Price Range: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.start_tick_price_range.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- End Tick Price Range: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.end_tick_price_range.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Tick Increment: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.tick_increment.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  return index
end

-- Dissect: Tick Rules
ngm_elasticia_fix_fast_v2_0_0.tick_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.tick_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.tick_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Segments
ngm_elasticia_fix_fast_v2_0_0.market_segments = {}

-- Dissect Fields: Market Segments
ngm_elasticia_fix_fast_v2_0_0.market_segments.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Market Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.market_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Segment Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.market_segment_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Rules: read in this scope

  -- Min Trade Vol: decimal, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.min_trade_vol.dissect(buffer, index, packet, parent, { presence_map[base + 0], false }, state, nil)

  -- Round Lot: decimal, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.round_lot.dissect(buffer, index, packet, parent, { presence_map[base + 1], false }, state, nil)

  -- Price Type: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.price_type.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Max Order Expire Duration: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.max_order_expire_duration.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Max Trade Trans Bkd Time Diff: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.max_trade_trans_bkd_time_diff.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- No Tick Rules: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_tick_rules.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Tick Rules: No Tick Rules entries
  local count = value or 0
  for tick_rules_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.tick_rules.dissect(buffer, index, packet, parent, presence_map, base, state, tick_rules_index)
  end

  -- No Match Rules: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_match_rules.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Match Rules: No Match Rules entries
  local count = value or 0
  for match_rules_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.match_rules.dissect(buffer, index, packet, parent, presence_map, base, state, match_rules_index)
  end

  -- No Market Order Rules: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_market_order_rules.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Market Order Rules: No Market Order Rules entries
  local count = value or 0
  for market_order_rules_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.market_order_rules.dissect(buffer, index, packet, parent, presence_map, base, state, market_order_rules_index)
  end

  -- Order Protection Auction Time Min: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_protection_auction_time_min.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Order Protection Auction Time Max: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_protection_auction_time_max.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Missing Reference Price Auction Time Min: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.missing_reference_price_auction_time_min.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Missing Reference Price Auction Time Max: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.missing_reference_price_auction_time_max.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Allow Reserve Order: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.allow_reserve_order.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Min Reserve Order Value: decimal, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.min_reserve_order_value.dissect(buffer, index, packet, parent, { presence_map[base + 13], false }, state, nil)

  -- Min Reserve Order Value Currency: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.min_reserve_order_value_currency.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- No Market Data Rules: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_market_data_rules.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  -- Market Data Rules: No Market Data Rules entries
  local count = value or 0
  for market_data_rules_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.market_data_rules.dissect(buffer, index, packet, parent, presence_map, base, state, market_data_rules_index)
  end

  -- No Party Rules: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_party_rules.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  -- Party Rules: No Party Rules entries
  local count = value or 0
  for party_rules_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.party_rules.dissect(buffer, index, packet, parent, presence_map, base, state, party_rules_index)
  end

  -- No Trade Report Rules: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_trade_report_rules.dissect(buffer, index, packet, parent, presence_map[base + 17], state, nil)

  -- Trade Report Rules: No Trade Report Rules entries
  local count = value or 0
  for trade_report_rules_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.trade_report_rules.dissect(buffer, index, packet, parent, presence_map, base, state, trade_report_rules_index)
  end

  return index
end

-- Dissect: Market Segments
ngm_elasticia_fix_fast_v2_0_0.market_segments.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_segments, buffer(offset, 0))
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

  index = ngm_elasticia_fix_fast_v2_0_0.market_segments.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Security Alt I Ds
ngm_elasticia_fix_fast_v2_0_0.security_alt_i_ds = {}

-- Dissect Fields: Security Alt I Ds
ngm_elasticia_fix_fast_v2_0_0.security_alt_i_ds.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security Alt Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_alt_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Alt Id Source: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_alt_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Security Alt I Ds
ngm_elasticia_fix_fast_v2_0_0.security_alt_i_ds.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_alt_i_ds, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.security_alt_i_ds.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Security Definition Update Report Message
ngm_elasticia_fix_fast_v2_0_0.security_definition_update_report = {}

-- Dissect Fields: Security Definition Update Report Message
ngm_elasticia_fix_fast_v2_0_0.security_definition_update_report.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_bp.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Security Update Action: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_update_action.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Move Indicator: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_move_indicator.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security: read in this scope

  -- Security Ref: read in this scope

  -- Security Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id_source.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Security Alt Id Sequence: read in this scope

  -- No Security Alt Id: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_security_alt_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Alt I Ds: No Security Alt Id entries
  local count = value or 0
  for security_alt_i_ds_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.security_alt_i_ds.dissect(buffer, index, packet, parent, presence_map, base, state, security_alt_i_ds_index)
  end

  -- Security Defaults: read in this scope

  -- Currency: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.currency_default.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Instr Registry: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.instr_registry.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Business Center: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.business_center.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Zone Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.zone_id.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- No Market Segments: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_market_segments.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Segments: No Market Segments entries
  local count = value or 0
  for market_segments_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.market_segments.dissect(buffer, index, packet, parent, presence_map, base, state, market_segments_index)
  end

  -- Security Xml: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_xml.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Liquidity Status: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.liquidity_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Text: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.text_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Security Definition Update Report Message
ngm_elasticia_fix_fast_v2_0_0.security_definition_update_report.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.security_definition_update_report.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Trade Report Rules
ngm_elasticia_fix_fast_v2_0_0.trade_report_rules = {}

-- Dissect Fields: Trade Report Rules
ngm_elasticia_fix_fast_v2_0_0.trade_report_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trade Report Rule: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trade_report_rule.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Trade Report Rules
ngm_elasticia_fix_fast_v2_0_0.trade_report_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_report_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.trade_report_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Party Rules
ngm_elasticia_fix_fast_v2_0_0.party_rules = {}

-- Dissect Fields: Party Rules
ngm_elasticia_fix_fast_v2_0_0.party_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Party Rule: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_rule.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Party Rules
ngm_elasticia_fix_fast_v2_0_0.party_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.party_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Rules
ngm_elasticia_fix_fast_v2_0_0.market_data_rules = {}

-- Dissect Fields: Market Data Rules
ngm_elasticia_fix_fast_v2_0_0.market_data_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Market Data Rule: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.market_data_rule.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Market Data Rules
ngm_elasticia_fix_fast_v2_0_0.market_data_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_data_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.market_data_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Order Rules
ngm_elasticia_fix_fast_v2_0_0.market_order_rules = {}

-- Dissect Fields: Market Order Rules
ngm_elasticia_fix_fast_v2_0_0.market_order_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Market Order Rule: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.market_order_rule.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Market Order Rules
ngm_elasticia_fix_fast_v2_0_0.market_order_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_order_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.market_order_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Match Rules
ngm_elasticia_fix_fast_v2_0_0.match_rules = {}

-- Dissect Fields: Match Rules
ngm_elasticia_fix_fast_v2_0_0.match_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Match Algorithm: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.match_algorithm.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Match Type: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.match_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Match Rules
ngm_elasticia_fix_fast_v2_0_0.match_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.match_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.match_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Tick Rules
ngm_elasticia_fix_fast_v2_0_0.tick_rules = {}

-- Dissect Fields: Tick Rules
ngm_elasticia_fix_fast_v2_0_0.tick_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Start Tick Price Range: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.start_tick_price_range.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- End Tick Price Range: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.end_tick_price_range.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Tick Increment: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.tick_increment.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  return index
end

-- Dissect: Tick Rules
ngm_elasticia_fix_fast_v2_0_0.tick_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.tick_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.tick_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Segments
ngm_elasticia_fix_fast_v2_0_0.market_segments = {}

-- Dissect Fields: Market Segments
ngm_elasticia_fix_fast_v2_0_0.market_segments.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Market Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.market_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Segment Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.market_segment_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Rules: read in this scope

  -- Min Trade Vol: decimal, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.min_trade_vol.dissect(buffer, index, packet, parent, { presence_map[base + 0], false }, state, nil)

  -- Round Lot: decimal, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.round_lot.dissect(buffer, index, packet, parent, { presence_map[base + 1], false }, state, nil)

  -- Price Type: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.price_type.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Max Order Expire Duration: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.max_order_expire_duration.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Max Trade Trans Bkd Time Diff: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.max_trade_trans_bkd_time_diff.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- No Tick Rules: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_tick_rules.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Tick Rules: No Tick Rules entries
  local count = value or 0
  for tick_rules_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.tick_rules.dissect(buffer, index, packet, parent, presence_map, base, state, tick_rules_index)
  end

  -- No Match Rules: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_match_rules.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Match Rules: No Match Rules entries
  local count = value or 0
  for match_rules_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.match_rules.dissect(buffer, index, packet, parent, presence_map, base, state, match_rules_index)
  end

  -- No Market Order Rules: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_market_order_rules.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Market Order Rules: No Market Order Rules entries
  local count = value or 0
  for market_order_rules_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.market_order_rules.dissect(buffer, index, packet, parent, presence_map, base, state, market_order_rules_index)
  end

  -- Order Protection Auction Time Min: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_protection_auction_time_min.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Order Protection Auction Time Max: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_protection_auction_time_max.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Missing Reference Price Auction Time Min: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.missing_reference_price_auction_time_min.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Missing Reference Price Auction Time Max: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.missing_reference_price_auction_time_max.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Allow Reserve Order: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.allow_reserve_order.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Min Reserve Order Value: decimal, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.min_reserve_order_value.dissect(buffer, index, packet, parent, { presence_map[base + 13], false }, state, nil)

  -- Min Reserve Order Value Currency: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.min_reserve_order_value_currency.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- No Market Data Rules: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_market_data_rules.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  -- Market Data Rules: No Market Data Rules entries
  local count = value or 0
  for market_data_rules_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.market_data_rules.dissect(buffer, index, packet, parent, presence_map, base, state, market_data_rules_index)
  end

  -- No Party Rules: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_party_rules.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  -- Party Rules: No Party Rules entries
  local count = value or 0
  for party_rules_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.party_rules.dissect(buffer, index, packet, parent, presence_map, base, state, party_rules_index)
  end

  -- No Trade Report Rules: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_trade_report_rules.dissect(buffer, index, packet, parent, presence_map[base + 17], state, nil)

  -- Trade Report Rules: No Trade Report Rules entries
  local count = value or 0
  for trade_report_rules_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.trade_report_rules.dissect(buffer, index, packet, parent, presence_map, base, state, trade_report_rules_index)
  end

  return index
end

-- Dissect: Market Segments
ngm_elasticia_fix_fast_v2_0_0.market_segments.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_segments, buffer(offset, 0))
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

  index = ngm_elasticia_fix_fast_v2_0_0.market_segments.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Security Alt I Ds
ngm_elasticia_fix_fast_v2_0_0.security_alt_i_ds = {}

-- Dissect Fields: Security Alt I Ds
ngm_elasticia_fix_fast_v2_0_0.security_alt_i_ds.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security Alt Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_alt_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Alt Id Source: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_alt_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Security Alt I Ds
ngm_elasticia_fix_fast_v2_0_0.security_alt_i_ds.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_alt_i_ds, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.security_alt_i_ds.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Related Sym
ngm_elasticia_fix_fast_v2_0_0.related_sym = {}

-- Dissect Fields: Related Sym
ngm_elasticia_fix_fast_v2_0_0.related_sym.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security: read in this scope

  -- Security Ref: read in this scope

  -- Security Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id_source.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Security Alt Id Sequence: read in this scope

  -- No Security Alt Id: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_security_alt_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Alt I Ds: No Security Alt Id entries
  local count = value or 0
  for security_alt_i_ds_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.security_alt_i_ds.dissect(buffer, index, packet, parent, presence_map, base, state, security_alt_i_ds_index)
  end

  -- Security Defaults: read in this scope

  -- Currency: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.currency_default.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Instr Registry: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.instr_registry.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Business Center: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.business_center.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Zone Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.zone_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- No Market Segments: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_market_segments.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Segments: No Market Segments entries
  local count = value or 0
  for market_segments_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.market_segments.dissect(buffer, index, packet, parent, presence_map, base, state, market_segments_index)
  end

  -- Security Xml: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_xml.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Liquidity Status: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.liquidity_status.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Related Sym
ngm_elasticia_fix_fast_v2_0_0.related_sym.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.related_sym, buffer(offset, 0))
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

  index = ngm_elasticia_fix_fast_v2_0_0.related_sym.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Security List Message
ngm_elasticia_fix_fast_v2_0_0.security_list = {}

-- Dissect Fields: Security List Message
ngm_elasticia_fix_fast_v2_0_0.security_list.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_y_2.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Security Req Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_req_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Request Result: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_request_result.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Fragment: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.last_fragment.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Related Sym: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_related_sym.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Related Sym: No Related Sym entries
  local count = value or 0
  for related_sym_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.related_sym.dissect(buffer, index, packet, parent, presence_map, base, state, related_sym_index)
  end

  return index
end

-- Dissect: Security List Message
ngm_elasticia_fix_fast_v2_0_0.security_list.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.security_list.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Security List Request Message
ngm_elasticia_fix_fast_v2_0_0.security_list_request = {}

-- Dissect Fields: Security List Request Message
ngm_elasticia_fix_fast_v2_0_0.security_list_request.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_x_2.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Security Req Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_req_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Security List Request Message
ngm_elasticia_fix_fast_v2_0_0.security_list_request.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.security_list_request.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Market Data Request Reject Message
ngm_elasticia_fix_fast_v2_0_0.market_data_request_reject = {}

-- Dissect Fields: Market Data Request Reject Message
ngm_elasticia_fix_fast_v2_0_0.market_data_request_reject.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_y_1.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Md Req Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.md_req_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Req Rej Reason: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.md_req_rej_reason.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Text: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.text_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Market Data Request Reject Message
ngm_elasticia_fix_fast_v2_0_0.market_data_request_reject.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.market_data_request_reject.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Trd Reg Publications
ngm_elasticia_fix_fast_v2_0_0.trd_reg_publications = {}

-- Dissect Fields: Trd Reg Publications
ngm_elasticia_fix_fast_v2_0_0.trd_reg_publications.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trd Reg Publication Type: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trd_reg_publication_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trd Reg Publ Reason: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trd_reg_publ_reason.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Trd Reg Publications
ngm_elasticia_fix_fast_v2_0_0.trd_reg_publications.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trd_reg_publications, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.trd_reg_publications.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Snapshot Full Refresh Md Entries
ngm_elasticia_fix_fast_v2_0_0.market_data_snapshot_full_refresh_md_entries = {}

-- Dissect Fields: Market Data Snapshot Full Refresh Md Entries
ngm_elasticia_fix_fast_v2_0_0.market_data_snapshot_full_refresh_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Entry: read in this scope

  -- Md Entry Type: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.md_entry_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Stat Scope: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.md_stat_scope.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Md Entry Px: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.md_entry_px.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Md Entry Size: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.md_entry_size.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Md Entry Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.md_entry_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Position No: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.md_entry_position_no.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Buyer: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.md_entry_buyer.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Md Entry Seller: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.md_entry_seller.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Lot Type: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.lot_type_default.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Match Type: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.match_type_default.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Trd Type: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trd_type_default.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Trade Condition: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trade_condition_default.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Trd Price Condition: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trd_price_condition.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Algorithmic Trd Indicator: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.algorithmic_trd_indicator.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Order Category: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_category.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Trd Reg Publications: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_trd_reg_publications.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Trd Reg Publications: No Trd Reg Publications entries
  local count = value or 0
  for trd_reg_publications_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.trd_reg_publications.dissect(buffer, index, packet, parent, presence_map, base, state, trd_reg_publications_index)
  end

  -- Transact Time: uInt64, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.transact_time_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trans Bkd Time: uInt64, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trans_bkd_time_default.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Aggressor Side: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.aggressor_side.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Market Maker Quote: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.market_maker_quote.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  return index
end

-- Dissect: Market Data Snapshot Full Refresh Md Entries
ngm_elasticia_fix_fast_v2_0_0.market_data_snapshot_full_refresh_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_data_snapshot_full_refresh_md_entries, buffer(offset, 0))
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

  index = ngm_elasticia_fix_fast_v2_0_0.market_data_snapshot_full_refresh_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Snapshot Full Refresh Message
ngm_elasticia_fix_fast_v2_0_0.market_data_snapshot_full_refresh = {}

-- Dissect Fields: Market Data Snapshot Full Refresh Message
ngm_elasticia_fix_fast_v2_0_0.market_data_snapshot_full_refresh.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_w.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Security Ref: read in this scope

  -- Security Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id_source.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Md Req Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.md_req_id_default.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Last Rpt Requested: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.last_rpt_requested.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- No Md Entries: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for market_data_snapshot_full_refresh_md_entries_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.market_data_snapshot_full_refresh_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, market_data_snapshot_full_refresh_md_entries_index)
  end

  return index
end

-- Dissect: Market Data Snapshot Full Refresh Message
ngm_elasticia_fix_fast_v2_0_0.market_data_snapshot_full_refresh.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.market_data_snapshot_full_refresh.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Dates
ngm_elasticia_fix_fast_v2_0_0.dates = {}

-- Dissect Fields: Dates
ngm_elasticia_fix_fast_v2_0_0.dates.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Transact Time: uInt64, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.transact_time_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Dates
ngm_elasticia_fix_fast_v2_0_0.dates.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.dates, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.dates.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Entry Types
ngm_elasticia_fix_fast_v2_0_0.md_entry_types = {}

-- Dissect Fields: Md Entry Types
ngm_elasticia_fix_fast_v2_0_0.md_entry_types.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Entry Type: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.md_entry_type.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md Entry Types
ngm_elasticia_fix_fast_v2_0_0.md_entry_types.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.md_entry_types, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.md_entry_types.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Request Message
ngm_elasticia_fix_fast_v2_0_0.market_data_request = {}

-- Dissect Fields: Market Data Request Message
ngm_elasticia_fix_fast_v2_0_0.market_data_request.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_v.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Md Req Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.md_req_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Subscription Request Type: uInt32, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.subscription_request_type_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Depth: uInt32, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.market_depth.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entry Types: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_md_entry_types.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Types: No Md Entry Types entries
  local count = value or 0
  for md_entry_types_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.md_entry_types.dissect(buffer, index, packet, parent, presence_map, base, state, md_entry_types_index)
  end

  -- No Dates: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_dates.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Dates: No Dates entries
  local count = value or 0
  for dates_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.dates.dissect(buffer, index, packet, parent, presence_map, base, state, dates_index)
  end

  return index
end

-- Dissect: Market Data Request Message
ngm_elasticia_fix_fast_v2_0_0.market_data_request.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.market_data_request.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Stats Indicators
ngm_elasticia_fix_fast_v2_0_0.stats_indicators = {}

-- Dissect Fields: Stats Indicators
ngm_elasticia_fix_fast_v2_0_0.stats_indicators.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Stats Type: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.stats_type.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Stats Indicators
ngm_elasticia_fix_fast_v2_0_0.stats_indicators.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.stats_indicators, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.stats_indicators.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Trd Reg Publications
ngm_elasticia_fix_fast_v2_0_0.trd_reg_publications = {}

-- Dissect Fields: Trd Reg Publications
ngm_elasticia_fix_fast_v2_0_0.trd_reg_publications.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trd Reg Publication Type: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trd_reg_publication_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trd Reg Publ Reason: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trd_reg_publ_reason.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Trd Reg Publications
ngm_elasticia_fix_fast_v2_0_0.trd_reg_publications.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trd_reg_publications, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.trd_reg_publications.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Incremental Refresh Md Entries
ngm_elasticia_fix_fast_v2_0_0.market_data_incremental_refresh_md_entries = {}

-- Dissect Fields: Market Data Incremental Refresh Md Entries
ngm_elasticia_fix_fast_v2_0_0.market_data_incremental_refresh_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.md_update_action.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Ref: read in this scope

  -- Security Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id_source.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Md Entry: read in this scope

  -- Md Entry Type: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.md_entry_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Stat Scope: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.md_stat_scope.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Md Entry Px: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.md_entry_px.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Md Entry Size: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.md_entry_size.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Md Entry Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.md_entry_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Position No: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.md_entry_position_no.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Buyer: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.md_entry_buyer.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Md Entry Seller: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.md_entry_seller.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Lot Type: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.lot_type_default.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Match Type: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.match_type_default.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Trd Type: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trd_type_default.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Trade Condition: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trade_condition_default.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Trd Price Condition: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trd_price_condition.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Algorithmic Trd Indicator: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.algorithmic_trd_indicator.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Order Category: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_category.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Trd Reg Publications: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_trd_reg_publications.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Trd Reg Publications: No Trd Reg Publications entries
  local count = value or 0
  for trd_reg_publications_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.trd_reg_publications.dissect(buffer, index, packet, parent, presence_map, base, state, trd_reg_publications_index)
  end

  -- Transact Time: uInt64, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.transact_time_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trans Bkd Time: uInt64, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trans_bkd_time_default.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Aggressor Side: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.aggressor_side.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Market Maker Quote: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.market_maker_quote.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- No Stats Indicators: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_stats_indicators.dissect(buffer, index, packet, parent, presence_map[base + 13], state, nil)

  -- Stats Indicators: No Stats Indicators entries
  local count = value or 0
  for stats_indicators_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.stats_indicators.dissect(buffer, index, packet, parent, presence_map, base, state, stats_indicators_index)
  end

  return index
end

-- Dissect: Market Data Incremental Refresh Md Entries
ngm_elasticia_fix_fast_v2_0_0.market_data_incremental_refresh_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_data_incremental_refresh_md_entries, buffer(offset, 0))
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

  index = ngm_elasticia_fix_fast_v2_0_0.market_data_incremental_refresh_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Incremental Refresh Message
ngm_elasticia_fix_fast_v2_0_0.market_data_incremental_refresh = {}

-- Dissect Fields: Market Data Incremental Refresh Message
ngm_elasticia_fix_fast_v2_0_0.market_data_incremental_refresh.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_x_1.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- No Md Entries: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for market_data_incremental_refresh_md_entries_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.market_data_incremental_refresh_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, market_data_incremental_refresh_md_entries_index)
  end

  return index
end

-- Dissect: Market Data Incremental Refresh Message
ngm_elasticia_fix_fast_v2_0_0.market_data_incremental_refresh.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.market_data_incremental_refresh.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- User Security Status Update Response Message
ngm_elasticia_fix_fast_v2_0_0.user_security_status_update_response = {}

-- Dissect Fields: User Security Status Update Response Message
ngm_elasticia_fix_fast_v2_0_0.user_security_status_update_response.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_fr.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Security Ref: read in this scope

  -- Security Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id_source.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Security Status Update Request Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_status_update_request_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Financial Status Result: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.financial_status_result.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Text: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.text_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: User Security Status Update Response Message
ngm_elasticia_fix_fast_v2_0_0.user_security_status_update_response.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.user_security_status_update_response.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Financial Status Updates
ngm_elasticia_fix_fast_v2_0_0.financial_status_updates = {}

-- Dissect Fields: Financial Status Updates
ngm_elasticia_fix_fast_v2_0_0.financial_status_updates.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Financial Status Update Type: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.financial_status_update_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Financial Status Update Value: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.financial_status_update_value.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Financial Status Updates
ngm_elasticia_fix_fast_v2_0_0.financial_status_updates.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.financial_status_updates, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.financial_status_updates.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- User Security Status Update Request Message
ngm_elasticia_fix_fast_v2_0_0.user_security_status_update_request = {}

-- Dissect Fields: User Security Status Update Request Message
ngm_elasticia_fix_fast_v2_0_0.user_security_status_update_request.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_fu.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Security Ref: read in this scope

  -- Security Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id_source.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Security Status Update Request Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_status_update_request_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Updates: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_updates.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Financial Status Updates: No Updates entries
  local count = value or 0
  for financial_status_updates_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.financial_status_updates.dissect(buffer, index, packet, parent, presence_map, base, state, financial_status_updates_index)
  end

  return index
end

-- Dissect: User Security Status Update Request Message
ngm_elasticia_fix_fast_v2_0_0.user_security_status_update_request.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.user_security_status_update_request.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Trade Capture Report Request Ack Message
ngm_elasticia_fix_fast_v2_0_0.trade_capture_report_request_ack = {}

-- Dissect Fields: Trade Capture Report Request Ack Message
ngm_elasticia_fix_fast_v2_0_0.trade_capture_report_request_ack.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_aq.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Trade Request Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.trade_request_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Request Type: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.trade_request_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Request Result: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.trade_request_result.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Request Status: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.trade_request_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Text: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.text_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Trade Capture Report Request Ack Message
ngm_elasticia_fix_fast_v2_0_0.trade_capture_report_request_ack.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.trade_capture_report_request_ack.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Dates
ngm_elasticia_fix_fast_v2_0_0.dates = {}

-- Dissect Fields: Dates
ngm_elasticia_fix_fast_v2_0_0.dates.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Transact Time: uInt64, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.transact_time_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Dates
ngm_elasticia_fix_fast_v2_0_0.dates.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.dates, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.dates.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Trade Capture Report Request Message
ngm_elasticia_fix_fast_v2_0_0.trade_capture_report_request = {}

-- Dissect Fields: Trade Capture Report Request Message
ngm_elasticia_fix_fast_v2_0_0.trade_capture_report_request.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_ad.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Trade Request Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.trade_request_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Request Type: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.trade_request_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Dates: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_dates.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Dates: No Dates entries
  local count = value or 0
  for dates_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.dates.dissect(buffer, index, packet, parent, presence_map, base, state, dates_index)
  end

  return index
end

-- Dissect: Trade Capture Report Request Message
ngm_elasticia_fix_fast_v2_0_0.trade_capture_report_request.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.trade_capture_report_request.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Order Attributes
ngm_elasticia_fix_fast_v2_0_0.order_attributes = {}

-- Dissect Fields: Order Attributes
ngm_elasticia_fix_fast_v2_0_0.order_attributes.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Order Attribute Type: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_attribute_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Attribute Value: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_attribute_value.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Order Attributes
ngm_elasticia_fix_fast_v2_0_0.order_attributes.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_attributes, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.order_attributes.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Party Sub I Ds
ngm_elasticia_fix_fast_v2_0_0.party_sub_i_ds = {}

-- Dissect Fields: Party Sub I Ds
ngm_elasticia_fix_fast_v2_0_0.party_sub_i_ds.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Party Sub Id Type: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_sub_id_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Party Sub Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_sub_id.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Party Sub I Ds
ngm_elasticia_fix_fast_v2_0_0.party_sub_i_ds.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_sub_i_ds, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.party_sub_i_ds.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Party I Ds
ngm_elasticia_fix_fast_v2_0_0.party_i_ds = {}

-- Dissect Fields: Party I Ds
ngm_elasticia_fix_fast_v2_0_0.party_i_ds.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Party Role: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_role.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Party Role Qualifier: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_role_qualifier.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Party Id Source: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Party Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Party Sub I Ds: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_party_sub_i_ds.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Party Sub I Ds: No Party Sub I Ds entries
  local count = value or 0
  for party_sub_i_ds_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.party_sub_i_ds.dissect(buffer, index, packet, parent, presence_map, base, state, party_sub_i_ds_index)
  end

  return index
end

-- Dissect: Party I Ds
ngm_elasticia_fix_fast_v2_0_0.party_i_ds.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_i_ds, buffer(offset, 0))
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

  index = ngm_elasticia_fix_fast_v2_0_0.party_i_ds.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Sides
ngm_elasticia_fix_fast_v2_0_0.sides = {}

-- Dissect Fields: Sides
ngm_elasticia_fix_fast_v2_0_0.sides.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Side: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.side_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Cl Ord Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.cl_ord_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Priority: uInt64, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_priority.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Secondary Cl Ord Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.secondary_cl_ord_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Account: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.account.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Lot Type: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.lot_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Aggressor Indicator: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.aggressor_indicator.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Order Capacity: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_capacity_default.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Order Restrictions: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_restrictions.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Accrued Interest Amt: decimal, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.accrued_interest_amt.dissect(buffer, index, packet, parent, { presence_map[base + 3], false }, state, nil)

  -- Order Origination: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_origination.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Parties: read in this scope

  -- No Party I Ds: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_party_i_ds.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Party I Ds: No Party I Ds entries
  local count = value or 0
  for party_i_ds_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.party_i_ds.dissect(buffer, index, packet, parent, presence_map, base, state, party_i_ds_index)
  end

  -- Order Attribute Grp: read in this scope

  -- No Order Attribute Grp: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_order_attribute_grp.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Order Attributes: No Order Attribute Grp entries
  local count = value or 0
  for order_attributes_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.order_attributes.dissect(buffer, index, packet, parent, presence_map, base, state, order_attributes_index)
  end

  return index
end

-- Dissect: Sides
ngm_elasticia_fix_fast_v2_0_0.sides.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.sides, buffer(offset, 0))
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

  index = ngm_elasticia_fix_fast_v2_0_0.sides.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Trd Reg Publications
ngm_elasticia_fix_fast_v2_0_0.trd_reg_publications = {}

-- Dissect Fields: Trd Reg Publications
ngm_elasticia_fix_fast_v2_0_0.trd_reg_publications.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trd Reg Publication Type: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trd_reg_publication_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trd Reg Publ Reason: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trd_reg_publ_reason.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Trd Reg Publications
ngm_elasticia_fix_fast_v2_0_0.trd_reg_publications.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trd_reg_publications, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.trd_reg_publications.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Trade Capture Report Ack Message
ngm_elasticia_fix_fast_v2_0_0.trade_capture_report_ack = {}

-- Dissect Fields: Trade Capture Report Ack Message
ngm_elasticia_fix_fast_v2_0_0.trade_capture_report_ack.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_ar.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Security Ref: read in this scope

  -- Security Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id_source.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Trade Report Reject Reason: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trade_report_reject_reason.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Report Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trade_report_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Report Ref Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trade_report_ref_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Request Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trade_request_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Rpt Requested: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.last_rpt_requested.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Trade: read in this scope

  -- Trade Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trade_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Report Trans Type: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trade_report_trans_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Report Type: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trade_report_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trd Type: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trd_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Secondary Trd Type: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.secondary_trd_type.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Trd Price Condition: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trd_price_condition.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Category: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_category.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Trd Reg Publications: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_trd_reg_publications.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Trd Reg Publications: No Trd Reg Publications entries
  local count = value or 0
  for trd_reg_publications_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.trd_reg_publications.dissect(buffer, index, packet, parent, presence_map, base, state, trd_reg_publications_index)
  end

  -- Trade Handling Instr: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trade_handling_instr.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Transact Time: uInt64, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.transact_time_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trans Bkd Time: uInt64, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trans_bkd_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Match Status: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.match_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Match Type: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.match_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Condition: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trade_condition_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Qty: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.last_qty.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Last Px: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.last_px.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Currency: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.currency_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Mkt: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.last_mkt.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Sides: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_sides.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sides: No Sides entries
  local count = value or 0
  for sides_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.sides.dissect(buffer, index, packet, parent, presence_map, base, state, sides_index)
  end

  -- Text: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.text_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Trade Capture Report Ack Message
ngm_elasticia_fix_fast_v2_0_0.trade_capture_report_ack.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.trade_capture_report_ack.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Order Attributes
ngm_elasticia_fix_fast_v2_0_0.order_attributes = {}

-- Dissect Fields: Order Attributes
ngm_elasticia_fix_fast_v2_0_0.order_attributes.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Order Attribute Type: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_attribute_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Attribute Value: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_attribute_value.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Order Attributes
ngm_elasticia_fix_fast_v2_0_0.order_attributes.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_attributes, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.order_attributes.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Party Sub I Ds
ngm_elasticia_fix_fast_v2_0_0.party_sub_i_ds = {}

-- Dissect Fields: Party Sub I Ds
ngm_elasticia_fix_fast_v2_0_0.party_sub_i_ds.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Party Sub Id Type: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_sub_id_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Party Sub Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_sub_id.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Party Sub I Ds
ngm_elasticia_fix_fast_v2_0_0.party_sub_i_ds.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_sub_i_ds, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.party_sub_i_ds.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Party I Ds
ngm_elasticia_fix_fast_v2_0_0.party_i_ds = {}

-- Dissect Fields: Party I Ds
ngm_elasticia_fix_fast_v2_0_0.party_i_ds.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Party Role: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_role.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Party Role Qualifier: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_role_qualifier.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Party Id Source: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Party Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Party Sub I Ds: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_party_sub_i_ds.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Party Sub I Ds: No Party Sub I Ds entries
  local count = value or 0
  for party_sub_i_ds_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.party_sub_i_ds.dissect(buffer, index, packet, parent, presence_map, base, state, party_sub_i_ds_index)
  end

  return index
end

-- Dissect: Party I Ds
ngm_elasticia_fix_fast_v2_0_0.party_i_ds.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_i_ds, buffer(offset, 0))
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

  index = ngm_elasticia_fix_fast_v2_0_0.party_i_ds.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Sides
ngm_elasticia_fix_fast_v2_0_0.sides = {}

-- Dissect Fields: Sides
ngm_elasticia_fix_fast_v2_0_0.sides.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Side: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.side_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Cl Ord Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.cl_ord_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Priority: uInt64, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_priority.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Secondary Cl Ord Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.secondary_cl_ord_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Account: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.account.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Lot Type: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.lot_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Aggressor Indicator: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.aggressor_indicator.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Order Capacity: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_capacity_default.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Order Restrictions: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_restrictions.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Accrued Interest Amt: decimal, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.accrued_interest_amt.dissect(buffer, index, packet, parent, { presence_map[base + 3], false }, state, nil)

  -- Order Origination: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_origination.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Parties: read in this scope

  -- No Party I Ds: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_party_i_ds.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Party I Ds: No Party I Ds entries
  local count = value or 0
  for party_i_ds_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.party_i_ds.dissect(buffer, index, packet, parent, presence_map, base, state, party_i_ds_index)
  end

  -- Order Attribute Grp: read in this scope

  -- No Order Attribute Grp: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_order_attribute_grp.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Order Attributes: No Order Attribute Grp entries
  local count = value or 0
  for order_attributes_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.order_attributes.dissect(buffer, index, packet, parent, presence_map, base, state, order_attributes_index)
  end

  return index
end

-- Dissect: Sides
ngm_elasticia_fix_fast_v2_0_0.sides.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.sides, buffer(offset, 0))
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

  index = ngm_elasticia_fix_fast_v2_0_0.sides.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Trd Reg Publications
ngm_elasticia_fix_fast_v2_0_0.trd_reg_publications = {}

-- Dissect Fields: Trd Reg Publications
ngm_elasticia_fix_fast_v2_0_0.trd_reg_publications.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trd Reg Publication Type: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trd_reg_publication_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trd Reg Publ Reason: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trd_reg_publ_reason.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Trd Reg Publications
ngm_elasticia_fix_fast_v2_0_0.trd_reg_publications.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.trd_reg_publications, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.trd_reg_publications.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Security Alt I Ds
ngm_elasticia_fix_fast_v2_0_0.security_alt_i_ds = {}

-- Dissect Fields: Security Alt I Ds
ngm_elasticia_fix_fast_v2_0_0.security_alt_i_ds.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security Alt Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_alt_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Alt Id Source: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_alt_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Security Alt I Ds
ngm_elasticia_fix_fast_v2_0_0.security_alt_i_ds.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_alt_i_ds, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.security_alt_i_ds.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Trade Capture Report Message
ngm_elasticia_fix_fast_v2_0_0.trade_capture_report = {}

-- Dissect Fields: Trade Capture Report Message
ngm_elasticia_fix_fast_v2_0_0.trade_capture_report.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_ae.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Security Ref: read in this scope

  -- Security Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id_source.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Security Alt Id Sequence: read in this scope

  -- No Security Alt Id: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_security_alt_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Alt I Ds: No Security Alt Id entries
  local count = value or 0
  for security_alt_i_ds_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.security_alt_i_ds.dissect(buffer, index, packet, parent, presence_map, base, state, security_alt_i_ds_index)
  end

  -- Trade Request Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trade_request_id_default.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Last Rpt Requested: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.last_rpt_requested.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Trade Report Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trade_report_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Report Ref Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trade_report_ref_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade: read in this scope

  -- Trade Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trade_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Report Trans Type: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trade_report_trans_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Report Type: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trade_report_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trd Type: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trd_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Secondary Trd Type: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.secondary_trd_type.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Trd Price Condition: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trd_price_condition.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Category: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_category.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Trd Reg Publications: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_trd_reg_publications.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Trd Reg Publications: No Trd Reg Publications entries
  local count = value or 0
  for trd_reg_publications_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.trd_reg_publications.dissect(buffer, index, packet, parent, presence_map, base, state, trd_reg_publications_index)
  end

  -- Trade Handling Instr: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trade_handling_instr.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Transact Time: uInt64, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.transact_time_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trans Bkd Time: uInt64, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trans_bkd_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Match Status: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.match_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Match Type: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.match_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Condition: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.trade_condition_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Qty: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.last_qty.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Last Px: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.last_px.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Currency: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.currency_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Mkt: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.last_mkt.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Sides: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_sides.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sides: No Sides entries
  local count = value or 0
  for sides_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.sides.dissect(buffer, index, packet, parent, presence_map, base, state, sides_index)
  end

  return index
end

-- Dissect: Trade Capture Report Message
ngm_elasticia_fix_fast_v2_0_0.trade_capture_report.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.trade_capture_report.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Quote Status Request Message
ngm_elasticia_fix_fast_v2_0_0.quote_status_request = {}

-- Dissect Fields: Quote Status Request Message
ngm_elasticia_fix_fast_v2_0_0.quote_status_request.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_a_2.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Quote Status Req Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.quote_status_req_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Subscription Request Type: uInt32, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.subscription_request_type_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Quote Status Request Message
ngm_elasticia_fix_fast_v2_0_0.quote_status_request.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.quote_status_request.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Quote Request Message
ngm_elasticia_fix_fast_v2_0_0.quote_request = {}

-- Dissect Fields: Quote Request Message
ngm_elasticia_fix_fast_v2_0_0.quote_request.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_r.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Security Ref: read in this scope

  -- Security Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id_source.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Quote Req Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.quote_req_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Quote Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.quote_id_default.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Quote Msg Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.quote_msg_id_default.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Order Qty: decimal, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_qty_default.dissect(buffer, index, packet, parent, { presence_map[base + 8], false }, state, nil)

  -- Side: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.side_default.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  return index
end

-- Dissect: Quote Request Message
ngm_elasticia_fix_fast_v2_0_0.quote_request.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.quote_request.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Party Sub I Ds
ngm_elasticia_fix_fast_v2_0_0.party_sub_i_ds = {}

-- Dissect Fields: Party Sub I Ds
ngm_elasticia_fix_fast_v2_0_0.party_sub_i_ds.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Party Sub Id Type: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_sub_id_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Party Sub Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_sub_id.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Party Sub I Ds
ngm_elasticia_fix_fast_v2_0_0.party_sub_i_ds.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_sub_i_ds, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.party_sub_i_ds.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Party I Ds
ngm_elasticia_fix_fast_v2_0_0.party_i_ds = {}

-- Dissect Fields: Party I Ds
ngm_elasticia_fix_fast_v2_0_0.party_i_ds.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Party Role: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_role.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Party Role Qualifier: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_role_qualifier.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Party Id Source: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Party Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Party Sub I Ds: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_party_sub_i_ds.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Party Sub I Ds: No Party Sub I Ds entries
  local count = value or 0
  for party_sub_i_ds_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.party_sub_i_ds.dissect(buffer, index, packet, parent, presence_map, base, state, party_sub_i_ds_index)
  end

  return index
end

-- Dissect: Party I Ds
ngm_elasticia_fix_fast_v2_0_0.party_i_ds.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_i_ds, buffer(offset, 0))
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

  index = ngm_elasticia_fix_fast_v2_0_0.party_i_ds.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Quote Status Report Message
ngm_elasticia_fix_fast_v2_0_0.quote_status_report = {}

-- Dissect Fields: Quote Status Report Message
ngm_elasticia_fix_fast_v2_0_0.quote_status_report.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_ai.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Security Ref: read in this scope

  -- Security Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id_source.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Quote Status Req Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.quote_status_req_id_default.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Last Rpt Requested: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.last_rpt_requested.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Quote Status: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.quote_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Quote Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.quote_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Quote Msg Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.quote_msg_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Orig Quote Msg Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.orig_quote_msg_id.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Bid Md Entry Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.bid_md_entry_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Offer Md Entry Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.offer_md_entry_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Bid Priority: uInt64, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.bid_priority.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Offer Priority: uInt64, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.offer_priority.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Quote Grp: read in this scope

  -- Bid Px: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.bid_px.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Offer Px: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.offer_px.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Bid Size: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.bid_size.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Total Bid Size: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.total_bid_size.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Offer Size: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.offer_size.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Total Offer Size: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.total_offer_size.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Transact Time: uInt64, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.transact_time_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Account: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.account.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Quote Type: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.quote_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Restrictions: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_restrictions.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Parties: read in this scope

  -- No Party I Ds: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_party_i_ds.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Party I Ds: No Party I Ds entries
  local count = value or 0
  for party_i_ds_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.party_i_ds.dissect(buffer, index, packet, parent, presence_map, base, state, party_i_ds_index)
  end

  -- Working Indicator: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.working_indicator.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Quote Reject Reason: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.quote_reject_reason.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Exec Restatement Reason: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.exec_restatement_reason.dissect(buffer, index, packet, parent, presence_map[base + 13], state, nil)

  -- Text: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.text_default.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  return index
end

-- Dissect: Quote Status Report Message
ngm_elasticia_fix_fast_v2_0_0.quote_status_report.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.quote_status_report.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Quote Cancel Message
ngm_elasticia_fix_fast_v2_0_0.quote_cancel = {}

-- Dissect Fields: Quote Cancel Message
ngm_elasticia_fix_fast_v2_0_0.quote_cancel.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_z.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Security Ref: read in this scope

  -- Security Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id_source.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Quote Cancel Type: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.quote_cancel_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Quote Req Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.quote_req_id_default.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Quote Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.quote_id_default.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Quote Msg Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.quote_msg_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Orig Quote Msg Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.orig_quote_msg_id.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Transact Time: uInt64, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.transact_time_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Quote Cancel Message
ngm_elasticia_fix_fast_v2_0_0.quote_cancel.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.quote_cancel.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Party Sub I Ds
ngm_elasticia_fix_fast_v2_0_0.party_sub_i_ds = {}

-- Dissect Fields: Party Sub I Ds
ngm_elasticia_fix_fast_v2_0_0.party_sub_i_ds.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Party Sub Id Type: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_sub_id_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Party Sub Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_sub_id.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Party Sub I Ds
ngm_elasticia_fix_fast_v2_0_0.party_sub_i_ds.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_sub_i_ds, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.party_sub_i_ds.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Party I Ds
ngm_elasticia_fix_fast_v2_0_0.party_i_ds = {}

-- Dissect Fields: Party I Ds
ngm_elasticia_fix_fast_v2_0_0.party_i_ds.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Party Role: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_role.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Party Role Qualifier: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_role_qualifier.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Party Id Source: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Party Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Party Sub I Ds: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_party_sub_i_ds.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Party Sub I Ds: No Party Sub I Ds entries
  local count = value or 0
  for party_sub_i_ds_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.party_sub_i_ds.dissect(buffer, index, packet, parent, presence_map, base, state, party_sub_i_ds_index)
  end

  return index
end

-- Dissect: Party I Ds
ngm_elasticia_fix_fast_v2_0_0.party_i_ds.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_i_ds, buffer(offset, 0))
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

  index = ngm_elasticia_fix_fast_v2_0_0.party_i_ds.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Quote Message
ngm_elasticia_fix_fast_v2_0_0.quote = {}

-- Dissect Fields: Quote Message
ngm_elasticia_fix_fast_v2_0_0.quote.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_s.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Security Ref: read in this scope

  -- Security Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id_source.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Quote Req Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.quote_req_id_default.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Quote Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.quote_id_default.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Quote Msg Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.quote_msg_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Orig Quote Msg Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.orig_quote_msg_id.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Quote Grp: read in this scope

  -- Bid Px: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.bid_px.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Offer Px: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.offer_px.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Bid Size: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.bid_size.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Total Bid Size: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.total_bid_size.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Offer Size: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.offer_size.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Total Offer Size: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.total_offer_size.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Transact Time: uInt64, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.transact_time_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Account: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.account.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Quote Type: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.quote_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Restrictions: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_restrictions.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Parties: read in this scope

  -- No Party I Ds: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_party_i_ds.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Party I Ds: No Party I Ds entries
  local count = value or 0
  for party_i_ds_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.party_i_ds.dissect(buffer, index, packet, parent, presence_map, base, state, party_i_ds_index)
  end

  return index
end

-- Dissect: Quote Message
ngm_elasticia_fix_fast_v2_0_0.quote.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.quote.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Order Mass Status Request Message
ngm_elasticia_fix_fast_v2_0_0.order_mass_status_request = {}

-- Dissect Fields: Order Mass Status Request Message
ngm_elasticia_fix_fast_v2_0_0.order_mass_status_request.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_af.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Mass Status Req Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.mass_status_req_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Mass Status Req Type: uInt32, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.mass_status_req_type.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Order Mass Status Request Message
ngm_elasticia_fix_fast_v2_0_0.order_mass_status_request.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.order_mass_status_request.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Order Cancel Reject Message
ngm_elasticia_fix_fast_v2_0_0.order_cancel_reject = {}

-- Dissect Fields: Order Cancel Reject Message
ngm_elasticia_fix_fast_v2_0_0.order_cancel_reject.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Ord Status: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.ord_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Orig Cl Ord Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.orig_cl_ord_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Cl Ord Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.cl_ord_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Cxl Rej Response To: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.cxl_rej_response_to.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Cxl Rej Reason: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.cxl_rej_reason.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Text: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.text_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Order Cancel Reject Message
ngm_elasticia_fix_fast_v2_0_0.order_cancel_reject.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.order_cancel_reject.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Party Sub I Ds
ngm_elasticia_fix_fast_v2_0_0.party_sub_i_ds = {}

-- Dissect Fields: Party Sub I Ds
ngm_elasticia_fix_fast_v2_0_0.party_sub_i_ds.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Party Sub Id Type: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_sub_id_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Party Sub Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_sub_id.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Party Sub I Ds
ngm_elasticia_fix_fast_v2_0_0.party_sub_i_ds.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_sub_i_ds, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.party_sub_i_ds.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Party I Ds
ngm_elasticia_fix_fast_v2_0_0.party_i_ds = {}

-- Dissect Fields: Party I Ds
ngm_elasticia_fix_fast_v2_0_0.party_i_ds.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Party Role: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_role.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Party Role Qualifier: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_role_qualifier.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Party Id Source: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Party Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Party Sub I Ds: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_party_sub_i_ds.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Party Sub I Ds: No Party Sub I Ds entries
  local count = value or 0
  for party_sub_i_ds_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.party_sub_i_ds.dissect(buffer, index, packet, parent, presence_map, base, state, party_sub_i_ds_index)
  end

  return index
end

-- Dissect: Party I Ds
ngm_elasticia_fix_fast_v2_0_0.party_i_ds.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_i_ds, buffer(offset, 0))
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

  index = ngm_elasticia_fix_fast_v2_0_0.party_i_ds.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Order Attributes
ngm_elasticia_fix_fast_v2_0_0.order_attributes = {}

-- Dissect Fields: Order Attributes
ngm_elasticia_fix_fast_v2_0_0.order_attributes.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Order Attribute Type: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_attribute_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Attribute Value: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_attribute_value.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Order Attributes
ngm_elasticia_fix_fast_v2_0_0.order_attributes.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_attributes, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.order_attributes.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Execution Report Message
ngm_elasticia_fix_fast_v2_0_0.execution_report = {}

-- Dissect Fields: Execution Report Message
ngm_elasticia_fix_fast_v2_0_0.execution_report.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_8.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Security Ref: read in this scope

  -- Security Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id_source.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Mass Status Req Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.mass_status_req_id_default.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Last Rpt Requested: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.last_rpt_requested.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Ord Status: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.ord_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Exec Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.exec_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Exec Type: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.exec_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Cl Ord Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.cl_ord_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Orig Cl Ord Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.orig_cl_ord_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order: read in this scope

  -- Side: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.side_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Ord Type: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.ord_type.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Price: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.price.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Order Qty: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_qty_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Account: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.account.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Time In Force: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.time_in_force.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Transact Time: uInt64, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.transact_time_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Expire Time: uInt64, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.expire_time.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Exec Inst: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.exec_inst.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Order Restrictions: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_restrictions.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Display Qty: decimal, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.display_qty.dissect(buffer, index, packet, parent, { presence_map[base + 12], false }, state, nil)

  -- Display When: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.display_when.dissect(buffer, index, packet, parent, presence_map[base + 13], state, nil)

  -- Display Method: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.display_method.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- Refresh Qty: decimal, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.refresh_qty.dissect(buffer, index, packet, parent, { presence_map[base + 15], false }, state, nil)

  -- Auction Type: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.auction_type.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  -- Md Entry Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.md_entry_id_default.dissect(buffer, index, packet, parent, presence_map[base + 17], state, nil)

  -- Working Indicator: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.working_indicator.dissect(buffer, index, packet, parent, presence_map[base + 18], state, nil)

  -- Lot Type: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.lot_type_default.dissect(buffer, index, packet, parent, presence_map[base + 19], state, nil)

  -- Leaves Qty: decimal, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.leaves_qty.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Cum Qty: decimal, Default
  index, value = ngm_elasticia_fix_fast_v2_0_0.cum_qty.dissect(buffer, index, packet, parent, { presence_map[base + 20], false }, state, nil)

  -- Avg Px: decimal, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.avg_px.dissect(buffer, index, packet, parent, { presence_map[base + 21], false }, state, nil)

  -- Ord Rej Reason: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.ord_rej_reason.dissect(buffer, index, packet, parent, presence_map[base + 22], state, nil)

  -- Exec Restatement Reason: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.exec_restatement_reason.dissect(buffer, index, packet, parent, presence_map[base + 23], state, nil)

  -- Order Priority: uInt64, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_priority.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Capacity: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_capacity_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Origination: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_origination.dissect(buffer, index, packet, parent, presence_map[base + 24], state, nil)

  -- Order Attribute Grp: read in this scope

  -- No Order Attribute Grp: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_order_attribute_grp.dissect(buffer, index, packet, parent, presence_map[base + 25], state, nil)

  -- Order Attributes: No Order Attribute Grp entries
  local count = value or 0
  for order_attributes_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.order_attributes.dissect(buffer, index, packet, parent, presence_map, base, state, order_attributes_index)
  end

  -- Parties: read in this scope

  -- No Party I Ds: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_party_i_ds.dissect(buffer, index, packet, parent, presence_map[base + 26], state, nil)

  -- Party I Ds: No Party I Ds entries
  local count = value or 0
  for party_i_ds_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.party_i_ds.dissect(buffer, index, packet, parent, presence_map, base, state, party_i_ds_index)
  end

  -- Text: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.text_default.dissect(buffer, index, packet, parent, presence_map[base + 27], state, nil)

  return index
end

-- Dissect: Execution Report Message
ngm_elasticia_fix_fast_v2_0_0.execution_report.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.execution_report.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Order Cancel Request Message
ngm_elasticia_fix_fast_v2_0_0.order_cancel_request = {}

-- Dissect Fields: Order Cancel Request Message
ngm_elasticia_fix_fast_v2_0_0.order_cancel_request.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_f_1.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Security Ref: read in this scope

  -- Security Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id_source.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Order Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Orig Cl Ord Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.orig_cl_ord_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Cl Ord Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.cl_ord_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Transact Time: uInt64, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.transact_time_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Order Cancel Request Message
ngm_elasticia_fix_fast_v2_0_0.order_cancel_request.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.order_cancel_request.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Order Cancel Replace Request Message
ngm_elasticia_fix_fast_v2_0_0.order_cancel_replace_request = {}

-- Dissect Fields: Order Cancel Replace Request Message
ngm_elasticia_fix_fast_v2_0_0.order_cancel_replace_request.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_g_1.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Security Ref: read in this scope

  -- Security Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id_source.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Order Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Orig Cl Ord Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.orig_cl_ord_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Cl Ord Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.cl_ord_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order: read in this scope

  -- Side: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.side_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Ord Type: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.ord_type.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Price: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.price.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Order Qty: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_qty_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Account: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.account.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Time In Force: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.time_in_force.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Transact Time: uInt64, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.transact_time_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Expire Time: uInt64, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.expire_time.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Exec Inst: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.exec_inst.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Order Restrictions: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_restrictions.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Display Qty: decimal, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.display_qty.dissect(buffer, index, packet, parent, { presence_map[base + 10], false }, state, nil)

  -- Display When: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.display_when.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Display Method: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.display_method.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Refresh Qty: decimal, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.refresh_qty.dissect(buffer, index, packet, parent, { presence_map[base + 13], false }, state, nil)

  -- Auction Type: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.auction_type.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  return index
end

-- Dissect: Order Cancel Replace Request Message
ngm_elasticia_fix_fast_v2_0_0.order_cancel_replace_request.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.order_cancel_replace_request.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Party Sub I Ds
ngm_elasticia_fix_fast_v2_0_0.party_sub_i_ds = {}

-- Dissect Fields: Party Sub I Ds
ngm_elasticia_fix_fast_v2_0_0.party_sub_i_ds.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Party Sub Id Type: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_sub_id_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Party Sub Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_sub_id.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Party Sub I Ds
ngm_elasticia_fix_fast_v2_0_0.party_sub_i_ds.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_sub_i_ds, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.party_sub_i_ds.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Party I Ds
ngm_elasticia_fix_fast_v2_0_0.party_i_ds = {}

-- Dissect Fields: Party I Ds
ngm_elasticia_fix_fast_v2_0_0.party_i_ds.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Party Role: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_role.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Party Role Qualifier: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_role_qualifier.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Party Id Source: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Party Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.party_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Party Sub I Ds: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_party_sub_i_ds.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Party Sub I Ds: No Party Sub I Ds entries
  local count = value or 0
  for party_sub_i_ds_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.party_sub_i_ds.dissect(buffer, index, packet, parent, presence_map, base, state, party_sub_i_ds_index)
  end

  return index
end

-- Dissect: Party I Ds
ngm_elasticia_fix_fast_v2_0_0.party_i_ds.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.party_i_ds, buffer(offset, 0))
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

  index = ngm_elasticia_fix_fast_v2_0_0.party_i_ds.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Order Attributes
ngm_elasticia_fix_fast_v2_0_0.order_attributes = {}

-- Dissect Fields: Order Attributes
ngm_elasticia_fix_fast_v2_0_0.order_attributes.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Order Attribute Type: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_attribute_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Attribute Value: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_attribute_value.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Order Attributes
ngm_elasticia_fix_fast_v2_0_0.order_attributes.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_attributes, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = ngm_elasticia_fix_fast_v2_0_0.order_attributes.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- New Order Single Message
ngm_elasticia_fix_fast_v2_0_0.new_order_single = {}

-- Dissect Fields: New Order Single Message
ngm_elasticia_fix_fast_v2_0_0.new_order_single.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_d.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Security Ref: read in this scope

  -- Security Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.security_id_source.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Cl Ord Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.cl_ord_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order: read in this scope

  -- Side: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.side_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Ord Type: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.ord_type.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Price: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.price.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Order Qty: decimal, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_qty_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Account: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.account.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Time In Force: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.time_in_force.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Transact Time: uInt64, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.transact_time_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Expire Time: uInt64, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.expire_time.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Exec Inst: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.exec_inst.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Order Restrictions: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_restrictions.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Display Qty: decimal, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.display_qty.dissect(buffer, index, packet, parent, { presence_map[base + 10], false }, state, nil)

  -- Display When: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.display_when.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Display Method: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.display_method.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Refresh Qty: decimal, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.refresh_qty.dissect(buffer, index, packet, parent, { presence_map[base + 13], false }, state, nil)

  -- Auction Type: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.auction_type.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- Order Capacity: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_capacity_default.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  -- Order Origination: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.order_origination.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  -- Order Attribute Grp: read in this scope

  -- No Order Attribute Grp: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_order_attribute_grp.dissect(buffer, index, packet, parent, presence_map[base + 17], state, nil)

  -- Order Attributes: No Order Attribute Grp entries
  local count = value or 0
  for order_attributes_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.order_attributes.dissect(buffer, index, packet, parent, presence_map, base, state, order_attributes_index)
  end

  -- Parties: read in this scope

  -- No Party I Ds: uInt32, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.no_party_i_ds.dissect(buffer, index, packet, parent, presence_map[base + 18], state, nil)

  -- Party I Ds: No Party I Ds entries
  local count = value or 0
  for party_i_ds_index = 1, count do
    index = ngm_elasticia_fix_fast_v2_0_0.party_i_ds.dissect(buffer, index, packet, parent, presence_map, base, state, party_i_ds_index)
  end

  return index
end

-- Dissect: New Order Single Message
ngm_elasticia_fix_fast_v2_0_0.new_order_single.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.new_order_single.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Reject Message
ngm_elasticia_fix_fast_v2_0_0.reject = {}

-- Dissect Fields: Reject Message
ngm_elasticia_fix_fast_v2_0_0.reject.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_3.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Ref Seq Num: uInt64, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.ref_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Ref Msg Type: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.ref_msg_type_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Ref Tag Id: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.ref_tag_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Session Reject Reason: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.session_reject_reason.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Text: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.text_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Reject Message
ngm_elasticia_fix_fast_v2_0_0.reject.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.reject.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Sequence Reset Message
ngm_elasticia_fix_fast_v2_0_0.sequence_reset = {}

-- Dissect Fields: Sequence Reset Message
ngm_elasticia_fix_fast_v2_0_0.sequence_reset.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_4.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Gap Fill Flag: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.gap_fill_flag.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- New Seq No: uInt64, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.new_seq_no.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Sequence Reset Message
ngm_elasticia_fix_fast_v2_0_0.sequence_reset.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.sequence_reset.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Heartbeat Message
ngm_elasticia_fix_fast_v2_0_0.heartbeat = {}

-- Dissect Fields: Heartbeat Message
ngm_elasticia_fix_fast_v2_0_0.heartbeat.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_0.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Test Req Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.test_req_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Heartbeat Message
ngm_elasticia_fix_fast_v2_0_0.heartbeat.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.heartbeat.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Test Request Message
ngm_elasticia_fix_fast_v2_0_0.test_request = {}

-- Dissect Fields: Test Request Message
ngm_elasticia_fix_fast_v2_0_0.test_request.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_1.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Test Req Id: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.test_req_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Test Request Message
ngm_elasticia_fix_fast_v2_0_0.test_request.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.test_request.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Logout Message
ngm_elasticia_fix_fast_v2_0_0.logout = {}

-- Dissect Fields: Logout Message
ngm_elasticia_fix_fast_v2_0_0.logout.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_5.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Text: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.text_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Session Status: uInt32, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.session_status.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Logout Message
ngm_elasticia_fix_fast_v2_0_0.logout.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.logout.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Logon Message
ngm_elasticia_fix_fast_v2_0_0.logon = {}

-- Dissect Fields: Logon Message
ngm_elasticia_fix_fast_v2_0_0.logon.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_a_1.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Heart Bt Int: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.heart_bt_int.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Reset Seq Num Flag: uInt32, Constant, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.reset_seq_num_flag.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Next Expected Msg Seq Num: uInt64, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.next_expected_msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Username: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.username.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Password: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.password.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Encrypt Method: uInt32, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.encrypt_method.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Default Appl Ver Id: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.default_appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Logon Message
ngm_elasticia_fix_fast_v2_0_0.logon.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.logon.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Business Message Reject Message
ngm_elasticia_fix_fast_v2_0_0.business_message_reject = {}

-- Dissect Fields: Business Message Reject Message
ngm_elasticia_fix_fast_v2_0_0.business_message_reject.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_type_constant_j.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Standard Header: read in this scope

  -- Begin String: string, Constant
  index, value = ngm_elasticia_fix_fast_v2_0_0.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt64, Increment
  index, value = ngm_elasticia_fix_fast_v2_0_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Target Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.target_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:TargetCompID")

  -- Sender Comp Id: string, Copy
  index, value = ngm_elasticia_fix_fast_v2_0_0.sender_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:SenderCompID")

  -- On Behalf Of Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Deliver To Comp Id: string, Default, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.deliver_to_comp_id.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Sending Time: uInt64, Delta
  index, value = ngm_elasticia_fix_fast_v2_0_0.sending_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:SendingTime")

  -- Ref Msg Type: string, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.ref_msg_type_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Business Reject Reason: uInt32, sent
  index, value = ngm_elasticia_fix_fast_v2_0_0.business_reject_reason.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Text: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.text_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Business Reject Ref Id: string, sent, optional
  index, value = ngm_elasticia_fix_fast_v2_0_0.business_reject_ref_id.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Business Message Reject Message
ngm_elasticia_fix_fast_v2_0_0.business_message_reject.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = ngm_elasticia_fix_fast_v2_0_0.business_message_reject.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Ngm Elasticia Fix Fast 2.0.0 Message Dispatch
ngm_elasticia_fix_fast_v2_0_0.messages = {
  [1006] = ngm_elasticia_fix_fast_v2_0_0.business_message_reject.dissect,
  [1000] = ngm_elasticia_fix_fast_v2_0_0.logon.dissect,
  [1001] = ngm_elasticia_fix_fast_v2_0_0.logout.dissect,
  [1002] = ngm_elasticia_fix_fast_v2_0_0.test_request.dissect,
  [1003] = ngm_elasticia_fix_fast_v2_0_0.heartbeat.dissect,
  [1004] = ngm_elasticia_fix_fast_v2_0_0.sequence_reset.dissect,
  [1005] = ngm_elasticia_fix_fast_v2_0_0.reject.dissect,
  [1] = ngm_elasticia_fix_fast_v2_0_0.new_order_single.dissect,
  [2] = ngm_elasticia_fix_fast_v2_0_0.order_cancel_replace_request.dissect,
  [3] = ngm_elasticia_fix_fast_v2_0_0.order_cancel_request.dissect,
  [4] = ngm_elasticia_fix_fast_v2_0_0.execution_report.dissect,
  [1007] = ngm_elasticia_fix_fast_v2_0_0.order_cancel_reject.dissect,
  [1008] = ngm_elasticia_fix_fast_v2_0_0.order_mass_status_request.dissect,
  [5] = ngm_elasticia_fix_fast_v2_0_0.quote.dissect,
  [6] = ngm_elasticia_fix_fast_v2_0_0.quote_cancel.dissect,
  [7] = ngm_elasticia_fix_fast_v2_0_0.quote_status_report.dissect,
  [8] = ngm_elasticia_fix_fast_v2_0_0.quote_request.dissect,
  [1009] = ngm_elasticia_fix_fast_v2_0_0.quote_status_request.dissect,
  [9] = ngm_elasticia_fix_fast_v2_0_0.trade_capture_report.dissect,
  [10] = ngm_elasticia_fix_fast_v2_0_0.trade_capture_report_ack.dissect,
  [1010] = ngm_elasticia_fix_fast_v2_0_0.trade_capture_report_request.dissect,
  [1011] = ngm_elasticia_fix_fast_v2_0_0.trade_capture_report_request_ack.dissect,
  [2052] = ngm_elasticia_fix_fast_v2_0_0.user_security_status_update_request.dissect,
  [2053] = ngm_elasticia_fix_fast_v2_0_0.user_security_status_update_response.dissect,
  [11] = ngm_elasticia_fix_fast_v2_0_0.market_data_incremental_refresh.dissect,
  [1012] = ngm_elasticia_fix_fast_v2_0_0.market_data_request.dissect,
  [1013] = ngm_elasticia_fix_fast_v2_0_0.market_data_snapshot_full_refresh.dissect,
  [1014] = ngm_elasticia_fix_fast_v2_0_0.market_data_request_reject.dissect,
  [1015] = ngm_elasticia_fix_fast_v2_0_0.security_list_request.dissect,
  [1016] = ngm_elasticia_fix_fast_v2_0_0.security_list.dissect,
  [12] = ngm_elasticia_fix_fast_v2_0_0.security_definition_update_report.dissect,
  [1017] = ngm_elasticia_fix_fast_v2_0_0.security_mass_status_request.dissect,
  [13] = ngm_elasticia_fix_fast_v2_0_0.security_status.dissect,
  [1018] = ngm_elasticia_fix_fast_v2_0_0.market_definition_request.dissect,
  [1019] = ngm_elasticia_fix_fast_v2_0_0.market_definition.dissect,
  [19] = ngm_elasticia_fix_fast_v2_0_0.market_definition_update_report.dissect,
  [1020] = ngm_elasticia_fix_fast_v2_0_0.trading_session_status_request.dissect,
  [15] = ngm_elasticia_fix_fast_v2_0_0.trading_session_status.dissect,
  [1021] = ngm_elasticia_fix_fast_v2_0_0.corporate_action_report.dissect,
  [1022] = ngm_elasticia_fix_fast_v2_0_0.corporate_action_request.dissect,
}

-- Ngm Elasticia Fix Fast 2.0.0 Message Nodes
ngm_elasticia_fix_fast_v2_0_0.message_fields = {
  [1006] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.business_message_reject,
  [1000] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.logon,
  [1001] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.logout,
  [1002] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.test_request,
  [1003] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.heartbeat,
  [1004] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.sequence_reset,
  [1005] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.reject,
  [1] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.new_order_single,
  [2] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_cancel_replace_request,
  [3] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_cancel_request,
  [4] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.execution_report,
  [1007] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_cancel_reject,
  [1008] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.order_mass_status_request,
  [5] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote,
  [6] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_cancel,
  [7] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_status_report,
  [8] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_request,
  [1009] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.quote_status_request,
  [9] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_capture_report,
  [10] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_capture_report_ack,
  [1010] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_capture_report_request,
  [1011] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.trade_capture_report_request_ack,
  [2052] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.user_security_status_update_request,
  [2053] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.user_security_status_update_response,
  [11] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_data_incremental_refresh,
  [1012] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_data_request,
  [1013] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_data_snapshot_full_refresh,
  [1014] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_data_request_reject,
  [1015] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_list_request,
  [1016] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_list,
  [12] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_definition_update_report,
  [1017] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_mass_status_request,
  [13] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.security_status,
  [1018] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_definition_request,
  [1019] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_definition,
  [19] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.market_definition_update_report,
  [1020] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.trading_session_status_request,
  [15] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.trading_session_status,
  [1021] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.corporate_action_report,
  [1022] = omi_ngm_elasticia_fix_fast_v2_0_0.fields.corporate_action_request,
}

-- Ngm Elasticia Fix Fast 2.0.0 Template Names
ngm_elasticia_fix_fast_v2_0_0.template_id = {}

-- Display: Template Id
ngm_elasticia_fix_fast_v2_0_0.template_id.display = function(value)
  if value == 1006 then
    return "Template Id: BusinessMessageReject (1006)"
  end
  if value == 1000 then
    return "Template Id: Logon (1000)"
  end
  if value == 1001 then
    return "Template Id: Logout (1001)"
  end
  if value == 1002 then
    return "Template Id: TestRequest (1002)"
  end
  if value == 1003 then
    return "Template Id: Heartbeat (1003)"
  end
  if value == 1004 then
    return "Template Id: SequenceReset (1004)"
  end
  if value == 1005 then
    return "Template Id: Reject (1005)"
  end
  if value == 1 then
    return "Template Id: NewOrderSingle (1)"
  end
  if value == 2 then
    return "Template Id: OrderCancelReplaceRequest (2)"
  end
  if value == 3 then
    return "Template Id: OrderCancelRequest (3)"
  end
  if value == 4 then
    return "Template Id: ExecutionReport (4)"
  end
  if value == 1007 then
    return "Template Id: OrderCancelReject (1007)"
  end
  if value == 1008 then
    return "Template Id: OrderMassStatusRequest (1008)"
  end
  if value == 5 then
    return "Template Id: Quote (5)"
  end
  if value == 6 then
    return "Template Id: QuoteCancel (6)"
  end
  if value == 7 then
    return "Template Id: QuoteStatusReport (7)"
  end
  if value == 8 then
    return "Template Id: QuoteRequest (8)"
  end
  if value == 1009 then
    return "Template Id: QuoteStatusRequest (1009)"
  end
  if value == 9 then
    return "Template Id: TradeCaptureReport (9)"
  end
  if value == 10 then
    return "Template Id: TradeCaptureReportAck (10)"
  end
  if value == 1010 then
    return "Template Id: TradeCaptureReportRequest (1010)"
  end
  if value == 1011 then
    return "Template Id: TradeCaptureReportRequestAck (1011)"
  end
  if value == 2052 then
    return "Template Id: UserSecurityStatusUpdateRequest (2052)"
  end
  if value == 2053 then
    return "Template Id: UserSecurityStatusUpdateResponse (2053)"
  end
  if value == 11 then
    return "Template Id: MarketDataIncrementalRefresh (11)"
  end
  if value == 1012 then
    return "Template Id: MarketDataRequest (1012)"
  end
  if value == 1013 then
    return "Template Id: MarketDataSnapshotFullRefresh (1013)"
  end
  if value == 1014 then
    return "Template Id: MarketDataRequestReject (1014)"
  end
  if value == 1015 then
    return "Template Id: SecurityListRequest (1015)"
  end
  if value == 1016 then
    return "Template Id: SecurityList (1016)"
  end
  if value == 12 then
    return "Template Id: SecurityDefinitionUpdateReport (12)"
  end
  if value == 1017 then
    return "Template Id: SecurityMassStatusRequest (1017)"
  end
  if value == 13 then
    return "Template Id: SecurityStatus (13)"
  end
  if value == 1018 then
    return "Template Id: MarketDefinitionRequest (1018)"
  end
  if value == 1019 then
    return "Template Id: MarketDefinition (1019)"
  end
  if value == 19 then
    return "Template Id: MarketDefinitionUpdateReport (19)"
  end
  if value == 1020 then
    return "Template Id: TradingSessionStatusRequest (1020)"
  end
  if value == 15 then
    return "Template Id: TradingSessionStatus (15)"
  end
  if value == 1021 then
    return "Template Id: CorporateActionReport (1021)"
  end
  if value == 1022 then
    return "Template Id: CorporateActionRequest (1022)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Name: Template Id
ngm_elasticia_fix_fast_v2_0_0.template_id.name = function(value)
  if value == 1006 then
    return "BusinessMessageReject"
  end
  if value == 1000 then
    return "Logon"
  end
  if value == 1001 then
    return "Logout"
  end
  if value == 1002 then
    return "TestRequest"
  end
  if value == 1003 then
    return "Heartbeat"
  end
  if value == 1004 then
    return "SequenceReset"
  end
  if value == 1005 then
    return "Reject"
  end
  if value == 1 then
    return "NewOrderSingle"
  end
  if value == 2 then
    return "OrderCancelReplaceRequest"
  end
  if value == 3 then
    return "OrderCancelRequest"
  end
  if value == 4 then
    return "ExecutionReport"
  end
  if value == 1007 then
    return "OrderCancelReject"
  end
  if value == 1008 then
    return "OrderMassStatusRequest"
  end
  if value == 5 then
    return "Quote"
  end
  if value == 6 then
    return "QuoteCancel"
  end
  if value == 7 then
    return "QuoteStatusReport"
  end
  if value == 8 then
    return "QuoteRequest"
  end
  if value == 1009 then
    return "QuoteStatusRequest"
  end
  if value == 9 then
    return "TradeCaptureReport"
  end
  if value == 10 then
    return "TradeCaptureReportAck"
  end
  if value == 1010 then
    return "TradeCaptureReportRequest"
  end
  if value == 1011 then
    return "TradeCaptureReportRequestAck"
  end
  if value == 2052 then
    return "UserSecurityStatusUpdateRequest"
  end
  if value == 2053 then
    return "UserSecurityStatusUpdateResponse"
  end
  if value == 11 then
    return "MarketDataIncrementalRefresh"
  end
  if value == 1012 then
    return "MarketDataRequest"
  end
  if value == 1013 then
    return "MarketDataSnapshotFullRefresh"
  end
  if value == 1014 then
    return "MarketDataRequestReject"
  end
  if value == 1015 then
    return "SecurityListRequest"
  end
  if value == 1016 then
    return "SecurityList"
  end
  if value == 12 then
    return "SecurityDefinitionUpdateReport"
  end
  if value == 1017 then
    return "SecurityMassStatusRequest"
  end
  if value == 13 then
    return "SecurityStatus"
  end
  if value == 1018 then
    return "MarketDefinitionRequest"
  end
  if value == 1019 then
    return "MarketDefinition"
  end
  if value == 19 then
    return "MarketDefinitionUpdateReport"
  end
  if value == 1020 then
    return "TradingSessionStatusRequest"
  end
  if value == 15 then
    return "TradingSessionStatus"
  end
  if value == 1021 then
    return "CorporateActionReport"
  end
  if value == 1022 then
    return "CorporateActionRequest"
  end

  return "Unknown"
end

-- Ngm Elasticia Fix Fast 2.0.0 Packet Dissector
omi_ngm_elasticia_fix_fast_v2_0_0.dissector = function(buffer, packet, parent)
  packet.cols.protocol = "Ngm Elasticia Fix Fast 2.0.0"
  local root = parent:add(omi_ngm_elasticia_fix_fast_v2_0_0, buffer(), "Ngm Elasticia Fix Fast 2.0.0")
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

    local message_field = ngm_elasticia_fix_fast_v2_0_0.message_fields[template_id]
    local message_tree = nil

    if message_field ~= nil then
      message_tree = root:add(message_field, buffer(start, 0))
    else
      message_tree = root:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.message, buffer(start, 0))
      message_tree:set_text(ngm_elasticia_fix_fast_v2_0_0.template_id.name(template_id))
    end

    -- the presence map and the template id are the message's own framing
    local header = message_tree:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.message_header, buffer(start, offset - start))
    add_presence_map(header, buffer(start, mapped - start), omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_map, omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_stop, omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_identified, omi_ngm_elasticia_fix_fast_v2_0_0.fields.presence_unused, ngm_elasticia_fix_fast_v2_0_0.presence_bits.named[template_id])
    header:add(omi_ngm_elasticia_fix_fast_v2_0_0.fields.template_id, buffer(identified, offset - identified), template_id, ngm_elasticia_fix_fast_v2_0_0.template_id.display(template_id))

    local message = ngm_elasticia_fix_fast_v2_0_0.messages[template_id]

    if message == nil then
      message_tree:add_expert_info(PI_UNDECODED, PI_WARN, "This dissector reads: 1006 (BusinessMessageReject), 1000 (Logon), 1001 (Logout), 1002 (TestRequest), 1003 (Heartbeat), 1004 (SequenceReset), 1005 (Reject), 1 (NewOrderSingle), 2 (OrderCancelReplaceRequest), 3 (OrderCancelRequest), 4 (ExecutionReport), 1007 (OrderCancelReject), 1008 (OrderMassStatusRequest), 5 (Quote), 6 (QuoteCancel), 7 (QuoteStatusReport), 8 (QuoteRequest), 1009 (QuoteStatusRequest), 9 (TradeCaptureReport), 10 (TradeCaptureReportAck), 1010 (TradeCaptureReportRequest), 1011 (TradeCaptureReportRequestAck), 2052 (UserSecurityStatusUpdateRequest), 2053 (UserSecurityStatusUpdateResponse), 11 (MarketDataIncrementalRefresh), 1012 (MarketDataRequest), 1013 (MarketDataSnapshotFullRefresh), 1014 (MarketDataRequestReject), 1015 (SecurityListRequest), 1016 (SecurityList), 12 (SecurityDefinitionUpdateReport), 1017 (SecurityMassStatusRequest), 13 (SecurityStatus), 1018 (MarketDefinitionRequest), 1019 (MarketDefinition), 19 (MarketDefinitionUpdateReport), 1020 (TradingSessionStatusRequest), 15 (TradingSessionStatus), 1021 (CorporateActionReport), 1022 (CorporateActionRequest)")
      message_tree:set_len(offset - start)
      return
    end

    offset = message(buffer, offset, packet, message_tree, presence_map, 2, state, nil)
    messages = messages + 1

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
omi_ngm_elasticia_fix_fast_v2_0_0.init = function()
  stream_states = {}
end

-- Register Ngm Elasticia Fix Fast 2.0.0 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_ngm_elasticia_fix_fast_v2_0_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Nordic Growth Market
--   Version: v2.0.0
--   Specification: fix-protocol-2.0.8.pdf
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
