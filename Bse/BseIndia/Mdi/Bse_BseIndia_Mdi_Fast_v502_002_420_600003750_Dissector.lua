-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Bse BseIndia Mdi Fast 502.002.420.600003750 Protocol
local omi_bse_bseindia_mdi_fast_v502_002_420_600003750 = Proto("Omi.Bse.BseIndia.Mdi.Fast.v502.002.420.600003750", "Bse BseIndia Mdi Fast 502.002.420.600003750")

-- Protocol table
local bse_bseindia_mdi_fast_v502_002_420_600003750 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Bse BseIndia Mdi Fast 502.002.420.600003750 Framing
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.message = ProtoField.new("Message", "bse.bseindia.mdi.fast.v502.002.420.600003750.message", ftypes.NONE)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.message_header = ProtoField.new("Message Header", "bse.bseindia.mdi.fast.v502.002.420.600003750.messageheader", ftypes.NONE)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_map = ProtoField.new("Presence Map", "bse.bseindia.mdi.fast.v502.002.420.600003750.presencemap", ftypes.BYTES)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.template_id = ProtoField.new("Template Id", "bse.bseindia.mdi.fast.v502.002.420.600003750.templateid", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_stop = ProtoField.new("Stop Bit", "bse.bseindia.mdi.fast.v502.002.420.600003750.presencestop", ftypes.UINT8, { [0] = "Clear", [1] = "Set" }, base.DEC)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_identified = ProtoField.new("Template Id", "bse.bseindia.mdi.fast.v502.002.420.600003750.presencetemplateid", ftypes.UINT8, { [0] = "Repeated", [1] = "Sent" }, base.DEC)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_unused = ProtoField.new("Unused", "bse.bseindia.mdi.fast.v502.002.420.600003750.presenceunused", ftypes.UINT8, nil, base.HEX)
bse_bseindia_mdi_fast_v502_002_420_600003750.presence_bits = {}

-- Bse BseIndia Mdi Fast 502.002.420.600003750 Presence Map Fields
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_msg_seq_num = ProtoField.new("Msg Seq Num", "bse.bseindia.mdi.fast.v502.002.420.600003750.msgseqnumpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_sender_comp_id = ProtoField.new("Sender Comp Id", "bse.bseindia.mdi.fast.v502.002.420.600003750.sendercompidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_market_segment_id = ProtoField.new("Market Segment Id", "bse.bseindia.mdi.fast.v502.002.420.600003750.marketsegmentidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_trading_session_id = ProtoField.new("Trading Session Id", "bse.bseindia.mdi.fast.v502.002.420.600003750.tradingsessionidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_fast_market_indicator = ProtoField.new("Fast Market Indicator", "bse.bseindia.mdi.fast.v502.002.420.600003750.fastmarketindicatorpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_instrument_scope_product_complex = ProtoField.new("Instrument Scope Product Complex", "bse.bseindia.mdi.fast.v502.002.420.600003750.instrumentscopeproductcomplexpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_security_mass_trading_status = ProtoField.new("Security Mass Trading Status", "bse.bseindia.mdi.fast.v502.002.420.600003750.securitymasstradingstatuspresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_no_related_sym = ProtoField.new("No Related Sym", "bse.bseindia.mdi.fast.v502.002.420.600003750.norelatedsympresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_security_status = ProtoField.new("Security Status", "bse.bseindia.mdi.fast.v502.002.420.600003750.securitystatuspresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_security_trading_status = ProtoField.new("Security Trading Status", "bse.bseindia.mdi.fast.v502.002.420.600003750.securitytradingstatuspresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_product_complex = ProtoField.new("Product Complex", "bse.bseindia.mdi.fast.v502.002.420.600003750.productcomplexpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "bse.bseindia.mdi.fast.v502.002.420.600003750.lastmsgseqnumprocessedpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_refresh_indicator = ProtoField.new("Refresh Indicator", "bse.bseindia.mdi.fast.v502.002.420.600003750.refreshindicatorpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_bid_size = ProtoField.new("Bid Size", "bse.bseindia.mdi.fast.v502.002.420.600003750.bidsizepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_offer_size = ProtoField.new("Offer Size", "bse.bseindia.mdi.fast.v502.002.420.600003750.offersizepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_no_md_entries = ProtoField.new("No Md Entries", "bse.bseindia.mdi.fast.v502.002.420.600003750.nomdentriespresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)

bse_bseindia_mdi_fast_v502_002_420_600003750.presence_bits.named = {
  [108] = {
    [2] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_msg_seq_num,
    [3] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_sender_comp_id,
    [4] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_market_segment_id,
    [5] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_trading_session_id,
    [6] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_fast_market_indicator,
  },
  [104] = {
    [2] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_msg_seq_num,
    [3] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_sender_comp_id,
    [4] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_market_segment_id,
    [5] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_instrument_scope_product_complex,
    [6] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_security_mass_trading_status,
    [7] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_fast_market_indicator,
    [8] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_no_related_sym,
  },
  [103] = {
    [2] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_msg_seq_num,
    [3] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_sender_comp_id,
    [4] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_market_segment_id,
    [5] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_security_status,
    [6] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_security_trading_status,
    [7] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_fast_market_indicator,
  },
  [102] = {
    [2] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_msg_seq_num,
    [3] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_sender_comp_id,
    [4] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_market_segment_id,
  },
  [105] = {
    [2] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_msg_seq_num,
    [3] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_sender_comp_id,
    [4] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_product_complex,
  },
  [106] = {
    [2] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_msg_seq_num,
    [3] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_sender_comp_id,
    [4] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_market_segment_id,
  },
  [107] = {
    [2] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_msg_seq_num,
  },
  [101] = {
    [2] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_msg_seq_num,
    [3] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_sender_comp_id,
    [4] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_last_msg_seq_num_processed,
    [5] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_refresh_indicator,
    [6] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_market_segment_id,
    [7] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_product_complex,
    [8] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_security_status,
    [9] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_bid_size,
    [10] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_offer_size,
    [11] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_no_md_entries,
  },
}

-- Bse BseIndia Mdi Fast 502.002.420.600003750 Fields
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.sender_comp_id = ProtoField.new("Sender Comp Id", "bse.bseindia.mdi.fast.v502.002.420.600003750.sendercompid", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.packet_seq_num = ProtoField.new("Packet Seq Num", "bse.bseindia.mdi.fast.v502.002.420.600003750.packetseqnum", ftypes.BYTES)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.sending_time = ProtoField.new("Sending Time", "bse.bseindia.mdi.fast.v502.002.420.600003750.sendingtime", ftypes.BYTES)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.msg_type = ProtoField.new("Msg Type", "bse.bseindia.mdi.fast.v502.002.420.600003750.msgtype", ftypes.STRING)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "bse.bseindia.mdi.fast.v502.002.420.600003750.msgseqnum", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.market_segment_id = ProtoField.new("Market Segment Id", "bse.bseindia.mdi.fast.v502.002.420.600003750.marketsegmentid", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.trading_session_id = ProtoField.new("Trading Session Id", "bse.bseindia.mdi.fast.v502.002.420.600003750.tradingsessionid", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "bse.bseindia.mdi.fast.v502.002.420.600003750.tradingsessionsubid", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.trad_ses_status = ProtoField.new("Trad Ses Status", "bse.bseindia.mdi.fast.v502.002.420.600003750.tradsesstatus", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.fast_market_indicator = ProtoField.new("Fast Market Indicator", "bse.bseindia.mdi.fast.v502.002.420.600003750.fastmarketindicator", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.transact_time = ProtoField.new("Transact Time", "bse.bseindia.mdi.fast.v502.002.420.600003750.transacttime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.instrument_scope_product_complex = ProtoField.new("Instrument Scope Product Complex", "bse.bseindia.mdi.fast.v502.002.420.600003750.instrumentscopeproductcomplex", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_mass_trading_status = ProtoField.new("Security Mass Trading Status", "bse.bseindia.mdi.fast.v502.002.420.600003750.securitymasstradingstatus", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.instrument_state_transition = ProtoField.new("Instrument State Transition", "bse.bseindia.mdi.fast.v502.002.420.600003750.instrumentstatetransition", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.no_related_sym = ProtoField.new("No Related Sym", "bse.bseindia.mdi.fast.v502.002.420.600003750.norelatedsym", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_id = ProtoField.new("Security Id", "bse.bseindia.mdi.fast.v502.002.420.600003750.securityid", ftypes.INT64)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_id_source = ProtoField.new("Security Id Source", "bse.bseindia.mdi.fast.v502.002.420.600003750.securityidsource", ftypes.STRING)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_status = ProtoField.new("Security Status", "bse.bseindia.mdi.fast.v502.002.420.600003750.securitystatus", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_trading_status = ProtoField.new("Security Trading Status", "bse.bseindia.mdi.fast.v502.002.420.600003750.securitytradingstatus", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.no_md_entries = ProtoField.new("No Md Entries", "bse.bseindia.mdi.fast.v502.002.420.600003750.nomdentries", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_update_action = ProtoField.new("Md Update Action", "bse.bseindia.mdi.fast.v502.002.420.600003750.mdupdateaction", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_entry_type = ProtoField.new("Md Entry Type", "bse.bseindia.mdi.fast.v502.002.420.600003750.mdentrytype", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_entry_px = ProtoField.new("Md Entry Px", "bse.bseindia.mdi.fast.v502.002.420.600003750.mdentrypx", ftypes.DOUBLE)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.yield = ProtoField.new("Yield", "bse.bseindia.mdi.fast.v502.002.420.600003750.yield", ftypes.DOUBLE)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.put_yield = ProtoField.new("Put Yield", "bse.bseindia.mdi.fast.v502.002.420.600003750.putyield", ftypes.DOUBLE)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.call_yield = ProtoField.new("Call Yield", "bse.bseindia.mdi.fast.v502.002.420.600003750.callyield", ftypes.DOUBLE)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_entry_size = ProtoField.new("Md Entry Size", "bse.bseindia.mdi.fast.v502.002.420.600003750.mdentrysize", ftypes.UINT64)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.number_of_orders = ProtoField.new("Number Of Orders", "bse.bseindia.mdi.fast.v502.002.420.600003750.numberoforders", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_price_level = ProtoField.new("Md Price Level", "bse.bseindia.mdi.fast.v502.002.420.600003750.mdpricelevel", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.bid_size = ProtoField.new("Bid Size", "bse.bseindia.mdi.fast.v502.002.420.600003750.bidsize", ftypes.UINT64)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.offer_size = ProtoField.new("Offer Size", "bse.bseindia.mdi.fast.v502.002.420.600003750.offersize", ftypes.UINT64)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.imbalance_qty = ProtoField.new("Imbalance Qty", "bse.bseindia.mdi.fast.v502.002.420.600003750.imbalanceqty", ftypes.INT64)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.imbalance_qty_side = ProtoField.new("Imbalance Qty Side", "bse.bseindia.mdi.fast.v502.002.420.600003750.imbalanceqtyside", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.imbalance_mkt_qty = ProtoField.new("Imbalance Mkt Qty", "bse.bseindia.mdi.fast.v502.002.420.600003750.imbalancemktqty", ftypes.INT64)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.imbalance_mkt_qty_side = ProtoField.new("Imbalance Mkt Qty Side", "bse.bseindia.mdi.fast.v502.002.420.600003750.imbalancemktqtyside", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_entry_time = ProtoField.new("Md Entry Time", "bse.bseindia.mdi.fast.v502.002.420.600003750.mdentrytime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.trd_type = ProtoField.new("Trd Type", "bse.bseindia.mdi.fast.v502.002.420.600003750.trdtype", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.trade_volume = ProtoField.new("Trade Volume", "bse.bseindia.mdi.fast.v502.002.420.600003750.tradevolume", ftypes.UINT64)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.trade_condition = ProtoField.new("Trade Condition", "bse.bseindia.mdi.fast.v502.002.420.600003750.tradecondition", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_gap_indicator = ProtoField.new("Md Gap Indicator", "bse.bseindia.mdi.fast.v502.002.420.600003750.mdgapindicator", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.aggressor_timestamp = ProtoField.new("Aggressor Timestamp", "bse.bseindia.mdi.fast.v502.002.420.600003750.aggressortimestamp", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.aggressor_side = ProtoField.new("Aggressor Side", "bse.bseindia.mdi.fast.v502.002.420.600003750.aggressorside", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.number_of_buy_orders = ProtoField.new("Number Of Buy Orders", "bse.bseindia.mdi.fast.v502.002.420.600003750.numberofbuyorders", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.number_of_sell_orders = ProtoField.new("Number Of Sell Orders", "bse.bseindia.mdi.fast.v502.002.420.600003750.numberofsellorders", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_entry_id = ProtoField.new("Md Entry Id", "bse.bseindia.mdi.fast.v502.002.420.600003750.mdentryid", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_update_action = ProtoField.new("Security Update Action", "bse.bseindia.mdi.fast.v502.002.420.600003750.securityupdateaction", ftypes.STRING)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_desc = ProtoField.new("Security Desc", "bse.bseindia.mdi.fast.v502.002.420.600003750.securitydesc", ftypes.STRING)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_type = ProtoField.new("Security Type", "bse.bseindia.mdi.fast.v502.002.420.600003750.securitytype", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_sub_type = ProtoField.new("Security Sub Type", "bse.bseindia.mdi.fast.v502.002.420.600003750.securitysubtype", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.product_complex = ProtoField.new("Product Complex", "bse.bseindia.mdi.fast.v502.002.420.600003750.productcomplex", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.no_legs = ProtoField.new("No Legs", "bse.bseindia.mdi.fast.v502.002.420.600003750.nolegs", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.leg_security_id = ProtoField.new("Leg Security Id", "bse.bseindia.mdi.fast.v502.002.420.600003750.legsecurityid", ftypes.INT64)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.leg_security_id_source = ProtoField.new("Leg Security Id Source", "bse.bseindia.mdi.fast.v502.002.420.600003750.legsecurityidsource", ftypes.STRING)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "bse.bseindia.mdi.fast.v502.002.420.600003750.legratioqty", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.leg_side = ProtoField.new("Leg Side", "bse.bseindia.mdi.fast.v502.002.420.600003750.legside", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.leg_price = ProtoField.new("Leg Price", "bse.bseindia.mdi.fast.v502.002.420.600003750.legprice", ftypes.DOUBLE)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.no_market_segments = ProtoField.new("No Market Segments", "bse.bseindia.mdi.fast.v502.002.420.600003750.nomarketsegments", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.implied_market_indicator = ProtoField.new("Implied Market Indicator", "bse.bseindia.mdi.fast.v502.002.420.600003750.impliedmarketindicator", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.side = ProtoField.new("Side", "bse.bseindia.mdi.fast.v502.002.420.600003750.side", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.order_qty = ProtoField.new("Order Qty", "bse.bseindia.mdi.fast.v502.002.420.600003750.orderqty", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "bse.bseindia.mdi.fast.v502.002.420.600003750.lastmsgseqnumprocessed", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.refresh_indicator = ProtoField.new("Refresh Indicator", "bse.bseindia.mdi.fast.v502.002.420.600003750.refreshindicator", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.last_update_time = ProtoField.new("Last Update Time", "bse.bseindia.mdi.fast.v502.002.420.600003750.lastupdatetime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.gross_trade_amt = ProtoField.new("Gross Trade Amt", "bse.bseindia.mdi.fast.v502.002.420.600003750.grosstradeamt", ftypes.DOUBLE)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.no_trades = ProtoField.new("No Trades", "bse.bseindia.mdi.fast.v502.002.420.600003750.notrades", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.no_of_entries = ProtoField.new("No Of Entries", "bse.bseindia.mdi.fast.v502.002.420.600003750.noofentries", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.divisor = ProtoField.new("Divisor", "bse.bseindia.mdi.fast.v502.002.420.600003750.divisor", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.index_code = ProtoField.new("Index Code", "bse.bseindia.mdi.fast.v502.002.420.600003750.indexcode", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.index_high = ProtoField.new("Index High", "bse.bseindia.mdi.fast.v502.002.420.600003750.indexhigh", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.index_low = ProtoField.new("Index Low", "bse.bseindia.mdi.fast.v502.002.420.600003750.indexlow", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.index_open = ProtoField.new("Index Open", "bse.bseindia.mdi.fast.v502.002.420.600003750.indexopen", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.prev_index_close = ProtoField.new("Prev Index Close", "bse.bseindia.mdi.fast.v502.002.420.600003750.previndexclose", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.index_close = ProtoField.new("Index Close", "bse.bseindia.mdi.fast.v502.002.420.600003750.indexclose", ftypes.UINT32)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.index_value = ProtoField.new("Index Value", "bse.bseindia.mdi.fast.v502.002.420.600003750.indexvalue", ftypes.UINT32)

-- Bse BseIndia Mdi Fast 502.002.420.600003750 Messages
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_packet_header = ProtoField.new("Md Packet Header Message", "bse.bseindia.mdi.fast.v502.002.420.600003750.mdpacketheader", ftypes.NONE)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.product_state_change = ProtoField.new("Product State Change Message", "bse.bseindia.mdi.fast.v502.002.420.600003750.productstatechange", ftypes.NONE)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.mass_instrument_state_change = ProtoField.new("Mass Instrument State Change Message", "bse.bseindia.mdi.fast.v502.002.420.600003750.massinstrumentstatechange", ftypes.NONE)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.sec_mass_stat_grp = ProtoField.new("Sec Mass Stat Grp", "bse.bseindia.mdi.fast.v502.002.420.600003750.secmassstatgrp", ftypes.NONE)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.instrument_state_change = ProtoField.new("Instrument State Change Message", "bse.bseindia.mdi.fast.v502.002.420.600003750.instrumentstatechange", ftypes.NONE)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.depth_incremental = ProtoField.new("Depth Incremental Message", "bse.bseindia.mdi.fast.v502.002.420.600003750.depthincremental", ftypes.NONE)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_inc_grp = ProtoField.new("Md Inc Grp", "bse.bseindia.mdi.fast.v502.002.420.600003750.mdincgrp", ftypes.NONE)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.trade_entry_grp = ProtoField.new("Trade Entry Grp", "bse.bseindia.mdi.fast.v502.002.420.600003750.tradeentrygrp", ftypes.NONE)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.complex_instrument_update = ProtoField.new("Complex Instrument Update Message", "bse.bseindia.mdi.fast.v502.002.420.600003750.complexinstrumentupdate", ftypes.NONE)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.instrmt_leg_grp = ProtoField.new("Instrmt Leg Grp", "bse.bseindia.mdi.fast.v502.002.420.600003750.instrmtleggrp", ftypes.NONE)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.market_segment_grp = ProtoField.new("Market Segment Grp", "bse.bseindia.mdi.fast.v502.002.420.600003750.marketsegmentgrp", ftypes.NONE)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.quote_request = ProtoField.new("Quote Request Message", "bse.bseindia.mdi.fast.v502.002.420.600003750.quoterequest", ftypes.NONE)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.quot_req_grp = ProtoField.new("Quot Req Grp", "bse.bseindia.mdi.fast.v502.002.420.600003750.quotreqgrp", ftypes.NONE)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.cross_request = ProtoField.new("Cross Request Message", "bse.bseindia.mdi.fast.v502.002.420.600003750.crossrequest", ftypes.NONE)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.depth_snapshot = ProtoField.new("Depth Snapshot Message", "bse.bseindia.mdi.fast.v502.002.420.600003750.depthsnapshot", ftypes.NONE)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_ssh_grp = ProtoField.new("Md Ssh Grp", "bse.bseindia.mdi.fast.v502.002.420.600003750.mdsshgrp", ftypes.NONE)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.index_change = ProtoField.new("Index Change Message", "bse.bseindia.mdi.fast.v502.002.420.600003750.indexchange", ftypes.NONE)
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.index_chg_grp = ProtoField.new("Index Chg Grp", "bse.bseindia.mdi.fast.v502.002.420.600003750.indexchggrp", ftypes.NONE)

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
-- Bse BseIndia Mdi Fast 502.002.420.600003750 Fields
-----------------------------------------------------------------------

-- Sender Comp Id (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.sender_comp_id_sent = {}

-- Dissect: Sender Comp Id (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.sender_comp_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.sender_comp_id, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.sender_comp_id, range, 0)
    absent:set_text("Sender Comp Id: No Value")
  end

  return offset, value
end

-- Sender Comp Id (Copy)
bse_bseindia_mdi_fast_v502_002_420_600003750.sender_comp_id_copy = {}

-- Dissect: Sender Comp Id (Copy)
bse_bseindia_mdi_fast_v502_002_420_600003750.sender_comp_id_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.sender_comp_id, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.sender_comp_id, range, 0)
    absent:set_text("Sender Comp Id: No Value")
  end

  return offset, value
end

-- Packet Seq Num
bse_bseindia_mdi_fast_v502_002_420_600003750.packet_seq_num = {}

-- Dissect: Packet Seq Num
bse_bseindia_mdi_fast_v502_002_420_600003750.packet_seq_num.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.packet_seq_num, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.packet_seq_num, buffer(start, 0))
    absent:set_text("Packet Seq Num: No Value")
  end

  return offset, value
end

-- Sending Time
bse_bseindia_mdi_fast_v502_002_420_600003750.sending_time = {}

-- Dissect: Sending Time
bse_bseindia_mdi_fast_v502_002_420_600003750.sending_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.sending_time, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.sending_time, buffer(start, 0))
    absent:set_text("Sending Time: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
bse_bseindia_mdi_fast_v502_002_420_600003750.msg_type_constant_h = {}

-- Dissect: Msg Type (Constant)
bse_bseindia_mdi_fast_v502_002_420_600003750.msg_type_constant_h.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "h"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
bse_bseindia_mdi_fast_v502_002_420_600003750.msg_type_constant_co = {}

-- Dissect: Msg Type (Constant)
bse_bseindia_mdi_fast_v502_002_420_600003750.msg_type_constant_co.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "CO"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
bse_bseindia_mdi_fast_v502_002_420_600003750.msg_type_constant_f = {}

-- Dissect: Msg Type (Constant)
bse_bseindia_mdi_fast_v502_002_420_600003750.msg_type_constant_f.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "f"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
bse_bseindia_mdi_fast_v502_002_420_600003750.msg_type_constant_x = {}

-- Dissect: Msg Type (Constant)
bse_bseindia_mdi_fast_v502_002_420_600003750.msg_type_constant_x.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "X"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
bse_bseindia_mdi_fast_v502_002_420_600003750.msg_type_constant_bp = {}

-- Dissect: Msg Type (Constant)
bse_bseindia_mdi_fast_v502_002_420_600003750.msg_type_constant_bp.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "BP"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
bse_bseindia_mdi_fast_v502_002_420_600003750.msg_type_constant_r = {}

-- Dissect: Msg Type (Constant)
bse_bseindia_mdi_fast_v502_002_420_600003750.msg_type_constant_r.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "R"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
bse_bseindia_mdi_fast_v502_002_420_600003750.msg_type_constant_u16 = {}

-- Dissect: Msg Type (Constant)
bse_bseindia_mdi_fast_v502_002_420_600003750.msg_type_constant_u16.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "U16"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
bse_bseindia_mdi_fast_v502_002_420_600003750.msg_type_constant_w = {}

-- Dissect: Msg Type (Constant)
bse_bseindia_mdi_fast_v502_002_420_600003750.msg_type_constant_w.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "W"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
bse_bseindia_mdi_fast_v502_002_420_600003750.msg_type_constant_i = {}

-- Dissect: Msg Type (Constant)
bse_bseindia_mdi_fast_v502_002_420_600003750.msg_type_constant_i.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "I"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Seq Num (Increment)
bse_bseindia_mdi_fast_v502_002_420_600003750.msg_seq_num_increment_required = {}

-- Dissect: Msg Seq Num (Increment)
bse_bseindia_mdi_fast_v502_002_420_600003750.msg_seq_num_increment_required.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.msg_seq_num, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.msg_seq_num, range, 0)
    absent:set_text("Msg Seq Num: No Value")
  end

  return offset, value
end

-- Msg Seq Num (Increment)
bse_bseindia_mdi_fast_v502_002_420_600003750.msg_seq_num_increment_optional = {}

-- Dissect: Msg Seq Num (Increment)
bse_bseindia_mdi_fast_v502_002_420_600003750.msg_seq_num_increment_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.msg_seq_num, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.msg_seq_num, range, 0)
    absent:set_text("Msg Seq Num: No Value")
  end

  return offset, value
end

-- Market Segment Id (Copy)
bse_bseindia_mdi_fast_v502_002_420_600003750.market_segment_id_copy = {}

-- Dissect: Market Segment Id (Copy)
bse_bseindia_mdi_fast_v502_002_420_600003750.market_segment_id_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.market_segment_id, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.market_segment_id, range, 0)
    absent:set_text("Market Segment Id: No Value")
  end

  return offset, value
end

-- Market Segment Id (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.market_segment_id_sent = {}

-- Dissect: Market Segment Id (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.market_segment_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.market_segment_id, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.market_segment_id, range, 0)
    absent:set_text("Market Segment Id: No Value")
  end

  return offset, value
end

-- Trading Session Id (Default)
bse_bseindia_mdi_fast_v502_002_420_600003750.trading_session_id_default_required = {}

-- Display: Trading Session Id (Default)
bse_bseindia_mdi_fast_v502_002_420_600003750.trading_session_id_default_required.display = function(value)
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
    return "Trading Session Id: Holiday (7)"
  end

  return "Trading Session Id: Unknown("..value..")"
end

-- Dissect: Trading Session Id (Default)
bse_bseindia_mdi_fast_v502_002_420_600003750.trading_session_id_default_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.trading_session_id_default_required.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.trading_session_id, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.trading_session_id, range, value, display)
  end

  return offset, value
end

-- Trading Session Id (Default)
bse_bseindia_mdi_fast_v502_002_420_600003750.trading_session_id_default_optional = {}

-- Display: Trading Session Id (Default)
bse_bseindia_mdi_fast_v502_002_420_600003750.trading_session_id_default_optional.display = function(value)
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
    return "Trading Session Id: Holiday (7)"
  end

  return "Trading Session Id: Unknown("..value..")"
end

-- Dissect: Trading Session Id (Default)
bse_bseindia_mdi_fast_v502_002_420_600003750.trading_session_id_default_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.trading_session_id_default_optional.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.trading_session_id, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.trading_session_id, range, value, display)
  end

  return offset, value
end

-- Trading Session Sub Id (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.trading_session_sub_id_sent_required = {}

-- Display: Trading Session Sub Id (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.trading_session_sub_id_sent_required.display = function(value)
  if value == nil then
    return "Trading Session Sub Id: No Value"
  end

  if value == 0 then
    return "Trading Session Sub Id: PreTrading (1)"
  end
  if value == 1 then
    return "Trading Session Sub Id: Trading (3)"
  end
  if value == 2 then
    return "Trading Session Sub Id: Closing (4)"
  end
  if value == 3 then
    return "Trading Session Sub Id: PostTrading (5)"
  end
  if value == 4 then
    return "Trading Session Sub Id: PostClosing (6)"
  end
  if value == 5 then
    return "Trading Session Sub Id: Quiescent (9)"
  end

  return "Trading Session Sub Id: Unknown("..value..")"
end

-- Dissect: Trading Session Sub Id (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.trading_session_sub_id_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.trading_session_sub_id_sent_required.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.trading_session_sub_id, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.trading_session_sub_id, range, value, display)
  end

  return offset, value
end

-- Trading Session Sub Id (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.trading_session_sub_id_sent_optional = {}

-- Display: Trading Session Sub Id (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.trading_session_sub_id_sent_optional.display = function(value)
  if value == nil then
    return "Trading Session Sub Id: No Value"
  end

  if value == 0 then
    return "Trading Session Sub Id: PreTrading (1)"
  end
  if value == 1 then
    return "Trading Session Sub Id: Trading (3)"
  end
  if value == 2 then
    return "Trading Session Sub Id: Closing (4)"
  end
  if value == 3 then
    return "Trading Session Sub Id: PostTrading (5)"
  end
  if value == 4 then
    return "Trading Session Sub Id: PostClosing (6)"
  end
  if value == 5 then
    return "Trading Session Sub Id: Quiescent (9)"
  end

  return "Trading Session Sub Id: Unknown("..value..")"
end

-- Dissect: Trading Session Sub Id (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.trading_session_sub_id_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.trading_session_sub_id_sent_optional.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.trading_session_sub_id, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.trading_session_sub_id, range, value, display)
  end

  return offset, value
end

-- Trad Ses Status
bse_bseindia_mdi_fast_v502_002_420_600003750.trad_ses_status = {}

-- Display: Trad Ses Status
bse_bseindia_mdi_fast_v502_002_420_600003750.trad_ses_status.display = function(value)
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

  return "Trad Ses Status: Unknown("..value..")"
end

-- Dissect: Trad Ses Status
bse_bseindia_mdi_fast_v502_002_420_600003750.trad_ses_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.trad_ses_status.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.trad_ses_status, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.trad_ses_status, range, value, display)
  end

  return offset, value
end

-- Fast Market Indicator (Default)
bse_bseindia_mdi_fast_v502_002_420_600003750.fast_market_indicator_default_required = {}

-- Display: Fast Market Indicator (Default)
bse_bseindia_mdi_fast_v502_002_420_600003750.fast_market_indicator_default_required.display = function(value)
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
bse_bseindia_mdi_fast_v502_002_420_600003750.fast_market_indicator_default_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.fast_market_indicator_default_required.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.fast_market_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.fast_market_indicator, range, value, display)
  end

  return offset, value
end

-- Fast Market Indicator (Default)
bse_bseindia_mdi_fast_v502_002_420_600003750.fast_market_indicator_default_optional = {}

-- Display: Fast Market Indicator (Default)
bse_bseindia_mdi_fast_v502_002_420_600003750.fast_market_indicator_default_optional.display = function(value)
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
bse_bseindia_mdi_fast_v502_002_420_600003750.fast_market_indicator_default_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.fast_market_indicator_default_optional.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.fast_market_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.fast_market_indicator, range, value, display)
  end

  return offset, value
end

-- Transact Time (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.transact_time_sent = {}

-- Dissect: Transact Time (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.transact_time_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.transact_time, range, NSTime.new(0, 0))
    absent:set_text("Transact Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.transact_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Transact Time (Delta)
bse_bseindia_mdi_fast_v502_002_420_600003750.transact_time_delta = {}

-- Dissect: Transact Time (Delta)
bse_bseindia_mdi_fast_v502_002_420_600003750.transact_time_delta.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_int64(buffer, offset)
  value = (state.values[key] or Int64(0)) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.transact_time, range, NSTime.new(0, 0))
    absent:set_text("Transact Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.transact_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Transact Time (Copy)
bse_bseindia_mdi_fast_v502_002_420_600003750.transact_time_copy = {}

-- Dissect: Transact Time (Copy)
bse_bseindia_mdi_fast_v502_002_420_600003750.transact_time_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.transact_time, range, NSTime.new(0, 0))
    absent:set_text("Transact Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.transact_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Instrument Scope Product Complex
bse_bseindia_mdi_fast_v502_002_420_600003750.instrument_scope_product_complex = {}

-- Display: Instrument Scope Product Complex
bse_bseindia_mdi_fast_v502_002_420_600003750.instrument_scope_product_complex.display = function(value)
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

  return "Instrument Scope Product Complex: Unknown("..value..")"
end

-- Dissect: Instrument Scope Product Complex
bse_bseindia_mdi_fast_v502_002_420_600003750.instrument_scope_product_complex.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.instrument_scope_product_complex.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.instrument_scope_product_complex, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.instrument_scope_product_complex, range, value, display)
  end

  return offset, value
end

-- Security Mass Trading Status
bse_bseindia_mdi_fast_v502_002_420_600003750.security_mass_trading_status = {}

-- Display: Security Mass Trading Status
bse_bseindia_mdi_fast_v502_002_420_600003750.security_mass_trading_status.display = function(value)
  if value == nil then
    return "Security Mass Trading Status: No Value"
  end

  if value == 0 then
    return "Security Mass Trading Status: Closed (200)"
  end
  if value == 1 then
    return "Security Mass Trading Status: Restricted (201)"
  end
  if value == 2 then
    return "Security Mass Trading Status: Book (202)"
  end
  if value == 3 then
    return "Security Mass Trading Status: Continuous (203)"
  end
  if value == 4 then
    return "Security Mass Trading Status: OpeningAuction (204)"
  end
  if value == 5 then
    return "Security Mass Trading Status: OpeningAuctionFreeze (205)"
  end
  if value == 6 then
    return "Security Mass Trading Status: IntradayAuction (206)"
  end
  if value == 7 then
    return "Security Mass Trading Status: IntradayAuctionFreeze (207)"
  end
  if value == 8 then
    return "Security Mass Trading Status: CircuitBreakerAuction (208)"
  end
  if value == 9 then
    return "Security Mass Trading Status: CircuitBreakerAuctionFreeze (209)"
  end
  if value == 10 then
    return "Security Mass Trading Status: ClosingAuction (210)"
  end
  if value == 11 then
    return "Security Mass Trading Status: ClosingAuctionFreeze (211)"
  end

  return "Security Mass Trading Status: Unknown("..value..")"
end

-- Dissect: Security Mass Trading Status
bse_bseindia_mdi_fast_v502_002_420_600003750.security_mass_trading_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Security Mass Trading Status was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.security_mass_trading_status.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_mass_trading_status, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_mass_trading_status, range, value, display)
  end

  return offset, value
end

-- Instrument State Transition
bse_bseindia_mdi_fast_v502_002_420_600003750.instrument_state_transition = {}

-- Display: Instrument State Transition
bse_bseindia_mdi_fast_v502_002_420_600003750.instrument_state_transition.display = function(value)
  if value == nil then
    return "Instrument State Transition: No Value"
  end

  if value == 0 then
    return "Instrument State Transition: DefaultValue (NO_TRANSITION)"
  end
  if value == 1 then
    return "Instrument State Transition: StartAuction (START_AUCTION)"
  end
  if value == 2 then
    return "Instrument State Transition: CancelAuction (CANCEL_AUCTION)"
  end
  if value == 3 then
    return "Instrument State Transition: ConditionalCommitAuction (CONDITIONAL_COMMIT_AUCTION)"
  end
  if value == 4 then
    return "Instrument State Transition: CommitAuction (COMMIT_AUCTION)"
  end
  if value == 5 then
    return "Instrument State Transition: FreezeAuction (FREEZE_AUCTION)"
  end
  if value == 6 then
    return "Instrument State Transition: UnfreezeAuction (UNFREEZE_AUCTION)"
  end
  if value == 7 then
    return "Instrument State Transition: Suspend (SUSPEND)"
  end
  if value == 8 then
    return "Instrument State Transition: Unsuspend (UNSUSPEND)"
  end
  if value == 9 then
    return "Instrument State Transition: Continuous (CONTINUOUS)"
  end
  if value == 10 then
    return "Instrument State Transition: EndAuction (END_AUCTION)"
  end
  if value == 11 then
    return "Instrument State Transition: BlockDealAndContinuous (BLOCKDEAL_CONTINUOUS)"
  end
  if value == 12 then
    return "Instrument State Transition: BlockDealStart (BLOCKDEAL_START)"
  end
  if value == 13 then
    return "Instrument State Transition: BlockDealEnd (BLOCKDEAL_END)"
  end
  if value == 14 then
    return "Instrument State Transition: RefPriceComputationStart (REFPRICE_COMPUTATION_START)"
  end
  if value == 15 then
    return "Instrument State Transition: RefPriceComputationEnd (REFPRICE_COMPUTATION_END)"
  end
  if value == 16 then
    return "Instrument State Transition: Continuous (CONTINUOUS_END)"
  end
  if value == 17 then
    return "Instrument State Transition: InitiateClosingRefprice (INITIATE_CLOSING_REFPRICE)"
  end
  if value == 18 then
    return "Instrument State Transition: OnlyLimitOrderAllowed (ONLY_LIMIT_ORDER_ALLOWED)"
  end

  return "Instrument State Transition: Unknown("..value..")"
end

-- Dissect: Instrument State Transition
bse_bseindia_mdi_fast_v502_002_420_600003750.instrument_state_transition.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.instrument_state_transition.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.instrument_state_transition, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.instrument_state_transition, range, value, display)
  end

  return offset, value
end

-- No Related Sym (Default)
bse_bseindia_mdi_fast_v502_002_420_600003750.no_related_sym_default = {}

-- Dissect: No Related Sym (Default)
bse_bseindia_mdi_fast_v502_002_420_600003750.no_related_sym_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.no_related_sym, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.no_related_sym, range, 0)
    absent:set_text("No Related Sym: No Value")
  end

  return offset, value
end

-- No Related Sym (Constant)
bse_bseindia_mdi_fast_v502_002_420_600003750.no_related_sym_constant = {}

-- Dissect: No Related Sym (Constant)
bse_bseindia_mdi_fast_v502_002_420_600003750.no_related_sym_constant.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 1

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.no_related_sym, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.no_related_sym, range, 0)
    absent:set_text("No Related Sym: No Value")
  end

  return offset, value
end

-- Security Id (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.security_id_sent = {}

-- Dissect: Security Id (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.security_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_id, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_id, range, Int64(0))
    absent:set_text("Security Id: No Value")
  end

  return offset, value
end

-- Security Id (Copy)
bse_bseindia_mdi_fast_v502_002_420_600003750.security_id_copy = {}

-- Dissect: Security Id (Copy)
bse_bseindia_mdi_fast_v502_002_420_600003750.security_id_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_id, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_id, range, Int64(0))
    absent:set_text("Security Id: No Value")
  end

  return offset, value
end

-- Security Id (Delta)
bse_bseindia_mdi_fast_v502_002_420_600003750.security_id_delta = {}

-- Dissect: Security Id (Delta)
bse_bseindia_mdi_fast_v502_002_420_600003750.security_id_delta.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_int64(buffer, offset)
  value = (state.values[key] or Int64(0)) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_id, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_id, range, Int64(0))
    absent:set_text("Security Id: No Value")
  end

  return offset, value
end

-- Security Id Source
bse_bseindia_mdi_fast_v502_002_420_600003750.security_id_source = {}

-- Dissect: Security Id Source
bse_bseindia_mdi_fast_v502_002_420_600003750.security_id_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "M"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_id_source, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_id_source, range, "")
    absent:set_text("Security Id Source: No Value")
  end

  return offset, value
end

-- Security Status
bse_bseindia_mdi_fast_v502_002_420_600003750.security_status = {}

-- Display: Security Status
bse_bseindia_mdi_fast_v502_002_420_600003750.security_status.display = function(value)
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
    return "Security Status: Suspended (9)"
  end
  if value == 4 then
    return "Security Status: Published (10)"
  end

  return "Security Status: Unknown("..value..")"
end

-- Dissect: Security Status
bse_bseindia_mdi_fast_v502_002_420_600003750.security_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.security_status.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_status, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_status, range, value, display)
  end

  return offset, value
end

-- Security Trading Status (Copy)
bse_bseindia_mdi_fast_v502_002_420_600003750.security_trading_status_copy = {}

-- Display: Security Trading Status (Copy)
bse_bseindia_mdi_fast_v502_002_420_600003750.security_trading_status_copy.display = function(value)
  if value == nil then
    return "Security Trading Status: No Value"
  end

  if value == 0 then
    return "Security Trading Status: Closed (200)"
  end
  if value == 1 then
    return "Security Trading Status: Restricted (201)"
  end
  if value == 2 then
    return "Security Trading Status: Book (202)"
  end
  if value == 3 then
    return "Security Trading Status: Continuous (203)"
  end
  if value == 4 then
    return "Security Trading Status: OpeningAuction (204)"
  end
  if value == 5 then
    return "Security Trading Status: OpeningAuctionFreeze (205)"
  end
  if value == 6 then
    return "Security Trading Status: IntradayAuction (206)"
  end
  if value == 7 then
    return "Security Trading Status: IntradayAuctionFreeze (207)"
  end
  if value == 8 then
    return "Security Trading Status: CircuitBreakerAuction (208)"
  end
  if value == 9 then
    return "Security Trading Status: CircuitBreakerAuctionFreeze (209)"
  end
  if value == 10 then
    return "Security Trading Status: ClosingAuction (210)"
  end
  if value == 11 then
    return "Security Trading Status: ClosingAuctionFreeze (211)"
  end

  return "Security Trading Status: Unknown("..value..")"
end

-- Dissect: Security Trading Status (Copy)
bse_bseindia_mdi_fast_v502_002_420_600003750.security_trading_status_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Security Trading Status was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.security_trading_status_copy.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_trading_status, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_trading_status, range, value, display)
  end

  return offset, value
end

-- Security Trading Status (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.security_trading_status_sent = {}

-- Display: Security Trading Status (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.security_trading_status_sent.display = function(value)
  if value == nil then
    return "Security Trading Status: No Value"
  end

  if value == 0 then
    return "Security Trading Status: Closed (200)"
  end
  if value == 1 then
    return "Security Trading Status: Restricted (201)"
  end
  if value == 2 then
    return "Security Trading Status: Book (202)"
  end
  if value == 3 then
    return "Security Trading Status: Continuous (203)"
  end
  if value == 4 then
    return "Security Trading Status: OpeningAuction (204)"
  end
  if value == 5 then
    return "Security Trading Status: OpeningAuctionFreeze (205)"
  end
  if value == 6 then
    return "Security Trading Status: IntradayAuction (206)"
  end
  if value == 7 then
    return "Security Trading Status: IntradayAuctionFreeze (207)"
  end
  if value == 8 then
    return "Security Trading Status: CircuitBreakerAuction (208)"
  end
  if value == 9 then
    return "Security Trading Status: CircuitBreakerAuctionFreeze (209)"
  end
  if value == 10 then
    return "Security Trading Status: ClosingAuction (210)"
  end
  if value == 11 then
    return "Security Trading Status: ClosingAuctionFreeze (211)"
  end

  return "Security Trading Status: Unknown("..value..")"
end

-- Dissect: Security Trading Status (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.security_trading_status_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.security_trading_status_sent.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_trading_status, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_trading_status, range, value, display)
  end

  return offset, value
end

-- No Md Entries (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.no_md_entries_sent = {}

-- Dissect: No Md Entries (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.no_md_entries_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.no_md_entries, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.no_md_entries, range, 0)
    absent:set_text("No Md Entries: No Value")
  end

  return offset, value
end

-- No Md Entries (Default)
bse_bseindia_mdi_fast_v502_002_420_600003750.no_md_entries_default = {}

-- Dissect: No Md Entries (Default)
bse_bseindia_mdi_fast_v502_002_420_600003750.no_md_entries_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 1
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.no_md_entries, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.no_md_entries, range, 0)
    absent:set_text("No Md Entries: No Value")
  end

  return offset, value
end

-- Md Update Action
bse_bseindia_mdi_fast_v502_002_420_600003750.md_update_action = {}

-- Display: Md Update Action
bse_bseindia_mdi_fast_v502_002_420_600003750.md_update_action.display = function(value)
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
bse_bseindia_mdi_fast_v502_002_420_600003750.md_update_action.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.md_update_action.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_update_action, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_update_action, range, value, display)
  end

  return offset, value
end

-- Md Entry Type
bse_bseindia_mdi_fast_v502_002_420_600003750.md_entry_type = {}

-- Display: Md Entry Type
bse_bseindia_mdi_fast_v502_002_420_600003750.md_entry_type.display = function(value)
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
    return "Md Entry Type: UpperCircuitLimit (7)"
  end
  if value == 4 then
    return "Md Entry Type: LowerCircuitLimit (8)"
  end
  if value == 5 then
    return "Md Entry Type: EmptyBook (J)"
  end
  if value == 6 then
    return "Md Entry Type: AuctionClearingPrice (Q)"
  end
  if value == 7 then
    return "Md Entry Type: SettlementPrice (6)"
  end
  if value == 8 then
    return "Md Entry Type: OpenInterest (C)"
  end
  if value == 9 then
    return "Md Entry Type: BlockdealReferencePrice (W)"
  end
  if value == 10 then
    return "Md Entry Type: upperPriceRange (10)"
  end
  if value == 11 then
    return "Md Entry Type: lowerPriceRange (11)"
  end
  if value == 12 then
    return "Md Entry Type: AuctionBid (13)"
  end
  if value == 13 then
    return "Md Entry Type: AuctionOffer (14)"
  end
  if value == 14 then
    return "Md Entry Type: ClosingReferencePrice (15)"
  end

  return "Md Entry Type: Unknown("..value..")"
end

-- Dissect: Md Entry Type
bse_bseindia_mdi_fast_v502_002_420_600003750.md_entry_type.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.md_entry_type.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_entry_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_entry_type, range, value, display)
  end

  return offset, value
end

-- Md Entry Px
bse_bseindia_mdi_fast_v502_002_420_600003750.md_entry_px = {}

-- Display: Md Entry Px
bse_bseindia_mdi_fast_v502_002_420_600003750.md_entry_px.display = function(value)
  if value == nil then
    return "Md Entry Px: No Value"
  end

  return "Md Entry Px: "..value
end

-- Dissect: Md Entry Px
bse_bseindia_mdi_fast_v502_002_420_600003750.md_entry_px.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.md_entry_px.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_entry_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_entry_px, range, value, display)
  end

  return offset, value
end

-- Yield
bse_bseindia_mdi_fast_v502_002_420_600003750.yield = {}

-- Display: Yield
bse_bseindia_mdi_fast_v502_002_420_600003750.yield.display = function(value)
  if value == nil then
    return "Yield: No Value"
  end

  return "Yield: "..value
end

-- Dissect: Yield
bse_bseindia_mdi_fast_v502_002_420_600003750.yield.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.yield.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.yield, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.yield, range, value, display)
  end

  return offset, value
end

-- Put Yield
bse_bseindia_mdi_fast_v502_002_420_600003750.put_yield = {}

-- Display: Put Yield
bse_bseindia_mdi_fast_v502_002_420_600003750.put_yield.display = function(value)
  if value == nil then
    return "Put Yield: No Value"
  end

  return "Put Yield: "..value
end

-- Dissect: Put Yield
bse_bseindia_mdi_fast_v502_002_420_600003750.put_yield.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.put_yield.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.put_yield, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.put_yield, range, value, display)
  end

  return offset, value
end

-- Call Yield
bse_bseindia_mdi_fast_v502_002_420_600003750.call_yield = {}

-- Display: Call Yield
bse_bseindia_mdi_fast_v502_002_420_600003750.call_yield.display = function(value)
  if value == nil then
    return "Call Yield: No Value"
  end

  return "Call Yield: "..value
end

-- Dissect: Call Yield
bse_bseindia_mdi_fast_v502_002_420_600003750.call_yield.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.call_yield.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.call_yield, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.call_yield, range, value, display)
  end

  return offset, value
end

-- Md Entry Size
bse_bseindia_mdi_fast_v502_002_420_600003750.md_entry_size = {}

-- Dissect: Md Entry Size
bse_bseindia_mdi_fast_v502_002_420_600003750.md_entry_size.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_entry_size, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_entry_size, range, UInt64(0))
    absent:set_text("Md Entry Size: No Value")
  end

  return offset, value
end

-- Number Of Orders
bse_bseindia_mdi_fast_v502_002_420_600003750.number_of_orders = {}

-- Dissect: Number Of Orders
bse_bseindia_mdi_fast_v502_002_420_600003750.number_of_orders.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.number_of_orders, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.number_of_orders, range, 0)
    absent:set_text("Number Of Orders: No Value")
  end

  return offset, value
end

-- Md Price Level (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.md_price_level_sent = {}

-- Dissect: Md Price Level (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.md_price_level_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_price_level, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_price_level, range, 0)
    absent:set_text("Md Price Level: No Value")
  end

  return offset, value
end

-- Md Price Level (Increment)
bse_bseindia_mdi_fast_v502_002_420_600003750.md_price_level_increment = {}

-- Dissect: Md Price Level (Increment)
bse_bseindia_mdi_fast_v502_002_420_600003750.md_price_level_increment.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_price_level, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_price_level, range, 0)
    absent:set_text("Md Price Level: No Value")
  end

  return offset, value
end

-- Bid Size (Copy)
bse_bseindia_mdi_fast_v502_002_420_600003750.bid_size_copy_optional = {}

-- Dissect: Bid Size (Copy)
bse_bseindia_mdi_fast_v502_002_420_600003750.bid_size_copy_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.bid_size, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.bid_size, range, UInt64(0))
    absent:set_text("Bid Size: No Value")
  end

  return offset, value
end

-- Bid Size (Copy)
bse_bseindia_mdi_fast_v502_002_420_600003750.bid_size_copy_required = {}

-- Dissect: Bid Size (Copy)
bse_bseindia_mdi_fast_v502_002_420_600003750.bid_size_copy_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_uint64(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Bid Size was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.bid_size, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.bid_size, range, UInt64(0))
    absent:set_text("Bid Size: No Value")
  end

  return offset, value
end

-- Offer Size (Copy)
bse_bseindia_mdi_fast_v502_002_420_600003750.offer_size_copy_optional = {}

-- Dissect: Offer Size (Copy)
bse_bseindia_mdi_fast_v502_002_420_600003750.offer_size_copy_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.offer_size, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.offer_size, range, UInt64(0))
    absent:set_text("Offer Size: No Value")
  end

  return offset, value
end

-- Offer Size (Copy)
bse_bseindia_mdi_fast_v502_002_420_600003750.offer_size_copy_required = {}

-- Dissect: Offer Size (Copy)
bse_bseindia_mdi_fast_v502_002_420_600003750.offer_size_copy_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_uint64(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Offer Size was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.offer_size, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.offer_size, range, UInt64(0))
    absent:set_text("Offer Size: No Value")
  end

  return offset, value
end

-- Imbalance Qty (Copy)
bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_qty_copy = {}

-- Dissect: Imbalance Qty (Copy)
bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_qty_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_int64(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.imbalance_qty, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.imbalance_qty, range, Int64(0))
    absent:set_text("Imbalance Qty: No Value")
  end

  return offset, value
end

-- Imbalance Qty (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_qty_sent = {}

-- Dissect: Imbalance Qty (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_qty_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.imbalance_qty, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.imbalance_qty, range, Int64(0))
    absent:set_text("Imbalance Qty: No Value")
  end

  return offset, value
end

-- Imbalance Qty Side (Copy)
bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_qty_side_copy = {}

-- Display: Imbalance Qty Side (Copy)
bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_qty_side_copy.display = function(value)
  if value == nil then
    return "Imbalance Qty Side: No Value"
  end

  if value == 0 then
    return "Imbalance Qty Side: Buy (1)"
  end
  if value == 1 then
    return "Imbalance Qty Side: Sell (2)"
  end

  return "Imbalance Qty Side: Unknown("..value..")"
end

-- Dissect: Imbalance Qty Side (Copy)
bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_qty_side_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_qty_side_copy.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.imbalance_qty_side, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.imbalance_qty_side, range, value, display)
  end

  return offset, value
end

-- Imbalance Qty Side (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_qty_side_sent = {}

-- Display: Imbalance Qty Side (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_qty_side_sent.display = function(value)
  if value == nil then
    return "Imbalance Qty Side: No Value"
  end

  if value == 0 then
    return "Imbalance Qty Side: Buy (1)"
  end
  if value == 1 then
    return "Imbalance Qty Side: Sell (2)"
  end

  return "Imbalance Qty Side: Unknown("..value..")"
end

-- Dissect: Imbalance Qty Side (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_qty_side_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_qty_side_sent.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.imbalance_qty_side, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.imbalance_qty_side, range, value, display)
  end

  return offset, value
end

-- Imbalance Mkt Qty (Copy)
bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_mkt_qty_copy = {}

-- Dissect: Imbalance Mkt Qty (Copy)
bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_mkt_qty_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_int64(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.imbalance_mkt_qty, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.imbalance_mkt_qty, range, Int64(0))
    absent:set_text("Imbalance Mkt Qty: No Value")
  end

  return offset, value
end

-- Imbalance Mkt Qty (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_mkt_qty_sent = {}

-- Dissect: Imbalance Mkt Qty (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_mkt_qty_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.imbalance_mkt_qty, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.imbalance_mkt_qty, range, Int64(0))
    absent:set_text("Imbalance Mkt Qty: No Value")
  end

  return offset, value
end

-- Imbalance Mkt Qty Side (Copy)
bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_mkt_qty_side_copy = {}

-- Display: Imbalance Mkt Qty Side (Copy)
bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_mkt_qty_side_copy.display = function(value)
  if value == nil then
    return "Imbalance Mkt Qty Side: No Value"
  end

  if value == 0 then
    return "Imbalance Mkt Qty Side: Buy (1)"
  end
  if value == 1 then
    return "Imbalance Mkt Qty Side: Sell (2)"
  end

  return "Imbalance Mkt Qty Side: Unknown("..value..")"
end

-- Dissect: Imbalance Mkt Qty Side (Copy)
bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_mkt_qty_side_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_mkt_qty_side_copy.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.imbalance_mkt_qty_side, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.imbalance_mkt_qty_side, range, value, display)
  end

  return offset, value
end

-- Imbalance Mkt Qty Side (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_mkt_qty_side_sent = {}

-- Display: Imbalance Mkt Qty Side (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_mkt_qty_side_sent.display = function(value)
  if value == nil then
    return "Imbalance Mkt Qty Side: No Value"
  end

  if value == 0 then
    return "Imbalance Mkt Qty Side: Buy (1)"
  end
  if value == 1 then
    return "Imbalance Mkt Qty Side: Sell (2)"
  end

  return "Imbalance Mkt Qty Side: Unknown("..value..")"
end

-- Dissect: Imbalance Mkt Qty Side (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_mkt_qty_side_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_mkt_qty_side_sent.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.imbalance_mkt_qty_side, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.imbalance_mkt_qty_side, range, value, display)
  end

  return offset, value
end

-- Md Entry Time
bse_bseindia_mdi_fast_v502_002_420_600003750.md_entry_time = {}

-- Dissect: Md Entry Time
bse_bseindia_mdi_fast_v502_002_420_600003750.md_entry_time.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_entry_time, range, NSTime.new(0, 0))
    absent:set_text("Md Entry Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_entry_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Trd Type
bse_bseindia_mdi_fast_v502_002_420_600003750.trd_type = {}

-- Display: Trd Type
bse_bseindia_mdi_fast_v502_002_420_600003750.trd_type.display = function(value)
  if value == nil then
    return "Trd Type: No Value"
  end

  if value == 0 then
    return "Trd Type: BlockTrade (1)"
  end
  if value == 1 then
    return "Trd Type: EFP (2)"
  end
  if value == 2 then
    return "Trd Type: ExchangeForSwap (12)"
  end
  if value == 3 then
    return "Trd Type: ExchangeBasisFacility (55)"
  end
  if value == 4 then
    return "Trd Type: VolaTrade (1000)"
  end
  if value == 5 then
    return "Trd Type: EFPFinTrade (1001)"
  end
  if value == 6 then
    return "Trd Type: EFPIndexFuturesTrade (1002)"
  end
  if value == 7 then
    return "Trd Type: OpeningAuctionTrade (1100)"
  end
  if value == 8 then
    return "Trd Type: IntradayAuctionTrade (1101)"
  end
  if value == 9 then
    return "Trd Type: VolatilityAuctionTrade (1102)"
  end
  if value == 10 then
    return "Trd Type: ClosingAuctionTrade (1103)"
  end
  if value == 11 then
    return "Trd Type: CrossAuctionTrade (1104)"
  end

  return "Trd Type: Unknown("..value..")"
end

-- Dissect: Trd Type
bse_bseindia_mdi_fast_v502_002_420_600003750.trd_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.trd_type.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.trd_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.trd_type, range, value, display)
  end

  return offset, value
end

-- Trade Volume
bse_bseindia_mdi_fast_v502_002_420_600003750.trade_volume = {}

-- Dissect: Trade Volume
bse_bseindia_mdi_fast_v502_002_420_600003750.trade_volume.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.trade_volume, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.trade_volume, range, UInt64(0))
    absent:set_text("Trade Volume: No Value")
  end

  return offset, value
end

-- Trade Condition (Default)
bse_bseindia_mdi_fast_v502_002_420_600003750.trade_condition_default = {}

-- Display: Trade Condition (Default)
bse_bseindia_mdi_fast_v502_002_420_600003750.trade_condition_default.display = function(value)
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
  if bit.band(value, 128) ~= 0 then names[#names + 1] = "PreviousClosingPrice (AN)" end
  if bit.band(value, 256) ~= 0 then names[#names + 1] = "VolumeOnly (a)" end

  if #names == 0 then
    return "Trade Condition: None"
  end

  return "Trade Condition: "..table.concat(names, ", ")
end

-- Dissect: Trade Condition (Default)
bse_bseindia_mdi_fast_v502_002_420_600003750.trade_condition_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 1
  end

  local range = buffer(start, offset - start)

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.trade_condition_default.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.trade_condition, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.trade_condition, range, value, display)
  end

  return offset, value
end

-- Trade Condition (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.trade_condition_sent = {}

-- Display: Trade Condition (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.trade_condition_sent.display = function(value)
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
  if bit.band(value, 128) ~= 0 then names[#names + 1] = "PreviousClosingPrice (AN)" end
  if bit.band(value, 256) ~= 0 then names[#names + 1] = "VolumeOnly (a)" end

  if #names == 0 then
    return "Trade Condition: None"
  end

  return "Trade Condition: "..table.concat(names, ", ")
end

-- Dissect: Trade Condition (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.trade_condition_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.trade_condition_sent.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.trade_condition, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.trade_condition, range, value, display)
  end

  return offset, value
end

-- Md Gap Indicator
bse_bseindia_mdi_fast_v502_002_420_600003750.md_gap_indicator = {}

-- Dissect: Md Gap Indicator
bse_bseindia_mdi_fast_v502_002_420_600003750.md_gap_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value = 1
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_gap_indicator, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_gap_indicator, range, 0)
    absent:set_text("Md Gap Indicator: No Value")
  end

  return offset, value
end

-- Aggressor Timestamp
bse_bseindia_mdi_fast_v502_002_420_600003750.aggressor_timestamp = {}

-- Dissect: Aggressor Timestamp
bse_bseindia_mdi_fast_v502_002_420_600003750.aggressor_timestamp.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.aggressor_timestamp, range, NSTime.new(0, 0))
    absent:set_text("Aggressor Timestamp: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.aggressor_timestamp, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Aggressor Side
bse_bseindia_mdi_fast_v502_002_420_600003750.aggressor_side = {}

-- Display: Aggressor Side
bse_bseindia_mdi_fast_v502_002_420_600003750.aggressor_side.display = function(value)
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
bse_bseindia_mdi_fast_v502_002_420_600003750.aggressor_side.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.aggressor_side.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.aggressor_side, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.aggressor_side, range, value, display)
  end

  return offset, value
end

-- Number Of Buy Orders
bse_bseindia_mdi_fast_v502_002_420_600003750.number_of_buy_orders = {}

-- Dissect: Number Of Buy Orders
bse_bseindia_mdi_fast_v502_002_420_600003750.number_of_buy_orders.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.number_of_buy_orders, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.number_of_buy_orders, range, 0)
    absent:set_text("Number Of Buy Orders: No Value")
  end

  return offset, value
end

-- Number Of Sell Orders
bse_bseindia_mdi_fast_v502_002_420_600003750.number_of_sell_orders = {}

-- Dissect: Number Of Sell Orders
bse_bseindia_mdi_fast_v502_002_420_600003750.number_of_sell_orders.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.number_of_sell_orders, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.number_of_sell_orders, range, 0)
    absent:set_text("Number Of Sell Orders: No Value")
  end

  return offset, value
end

-- Md Entry Id
bse_bseindia_mdi_fast_v502_002_420_600003750.md_entry_id = {}

-- Dissect: Md Entry Id
bse_bseindia_mdi_fast_v502_002_420_600003750.md_entry_id.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_entry_id, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_entry_id, range, 0)
    absent:set_text("Md Entry Id: No Value")
  end

  return offset, value
end

-- Security Update Action
bse_bseindia_mdi_fast_v502_002_420_600003750.security_update_action = {}

-- Dissect: Security Update Action
bse_bseindia_mdi_fast_v502_002_420_600003750.security_update_action.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "A"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_update_action, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_update_action, range, "")
    absent:set_text("Security Update Action: No Value")
  end

  return offset, value
end

-- Security Desc
bse_bseindia_mdi_fast_v502_002_420_600003750.security_desc = {}

-- Dissect: Security Desc
bse_bseindia_mdi_fast_v502_002_420_600003750.security_desc.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_desc, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_desc, range, "")
    absent:set_text("Security Desc: No Value")
  end

  return offset, value
end

-- Security Type
bse_bseindia_mdi_fast_v502_002_420_600003750.security_type = {}

-- Display: Security Type
bse_bseindia_mdi_fast_v502_002_420_600003750.security_type.display = function(value)
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
    return "Security Type: SimpleInstrument (SIMP)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
bse_bseindia_mdi_fast_v502_002_420_600003750.security_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 2

  local range = buffer(start, offset - start)

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.security_type.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_type, range, value, display)
  end

  return offset, value
end

-- Security Sub Type
bse_bseindia_mdi_fast_v502_002_420_600003750.security_sub_type = {}

-- Dissect: Security Sub Type
bse_bseindia_mdi_fast_v502_002_420_600003750.security_sub_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_sub_type, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.security_sub_type, range, 0)
    absent:set_text("Security Sub Type: No Value")
  end

  return offset, value
end

-- Product Complex
bse_bseindia_mdi_fast_v502_002_420_600003750.product_complex = {}

-- Display: Product Complex
bse_bseindia_mdi_fast_v502_002_420_600003750.product_complex.display = function(value)
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

  return "Product Complex: Unknown("..value..")"
end

-- Dissect: Product Complex
bse_bseindia_mdi_fast_v502_002_420_600003750.product_complex.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.product_complex.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.product_complex, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.product_complex, range, value, display)
  end

  return offset, value
end

-- No Legs
bse_bseindia_mdi_fast_v502_002_420_600003750.no_legs = {}

-- Dissect: No Legs
bse_bseindia_mdi_fast_v502_002_420_600003750.no_legs.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.no_legs, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.no_legs, range, 0)
    absent:set_text("No Legs: No Value")
  end

  return offset, value
end

-- Leg Security Id
bse_bseindia_mdi_fast_v502_002_420_600003750.leg_security_id = {}

-- Dissect: Leg Security Id
bse_bseindia_mdi_fast_v502_002_420_600003750.leg_security_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.leg_security_id, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.leg_security_id, range, Int64(0))
    absent:set_text("Leg Security Id: No Value")
  end

  return offset, value
end

-- Leg Security Id Source
bse_bseindia_mdi_fast_v502_002_420_600003750.leg_security_id_source = {}

-- Dissect: Leg Security Id Source
bse_bseindia_mdi_fast_v502_002_420_600003750.leg_security_id_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "M"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.leg_security_id_source, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.leg_security_id_source, range, "")
    absent:set_text("Leg Security Id Source: No Value")
  end

  return offset, value
end

-- Leg Ratio Qty
bse_bseindia_mdi_fast_v502_002_420_600003750.leg_ratio_qty = {}

-- Dissect: Leg Ratio Qty
bse_bseindia_mdi_fast_v502_002_420_600003750.leg_ratio_qty.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.leg_ratio_qty, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.leg_ratio_qty, range, 0)
    absent:set_text("Leg Ratio Qty: No Value")
  end

  return offset, value
end

-- Leg Side
bse_bseindia_mdi_fast_v502_002_420_600003750.leg_side = {}

-- Display: Leg Side
bse_bseindia_mdi_fast_v502_002_420_600003750.leg_side.display = function(value)
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
bse_bseindia_mdi_fast_v502_002_420_600003750.leg_side.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.leg_side.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.leg_side, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.leg_side, range, value, display)
  end

  return offset, value
end

-- Leg Price
bse_bseindia_mdi_fast_v502_002_420_600003750.leg_price = {}

-- Display: Leg Price
bse_bseindia_mdi_fast_v502_002_420_600003750.leg_price.display = function(value)
  if value == nil then
    return "Leg Price: No Value"
  end

  return "Leg Price: "..value
end

-- Dissect: Leg Price
bse_bseindia_mdi_fast_v502_002_420_600003750.leg_price.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.leg_price.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.leg_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.leg_price, range, value, display)
  end

  return offset, value
end

-- No Market Segments
bse_bseindia_mdi_fast_v502_002_420_600003750.no_market_segments = {}

-- Dissect: No Market Segments
bse_bseindia_mdi_fast_v502_002_420_600003750.no_market_segments.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 1

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.no_market_segments, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.no_market_segments, range, 0)
    absent:set_text("No Market Segments: No Value")
  end

  return offset, value
end

-- Implied Market Indicator
bse_bseindia_mdi_fast_v502_002_420_600003750.implied_market_indicator = {}

-- Display: Implied Market Indicator
bse_bseindia_mdi_fast_v502_002_420_600003750.implied_market_indicator.display = function(value)
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
bse_bseindia_mdi_fast_v502_002_420_600003750.implied_market_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.implied_market_indicator.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.implied_market_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.implied_market_indicator, range, value, display)
  end

  return offset, value
end

-- Side
bse_bseindia_mdi_fast_v502_002_420_600003750.side = {}

-- Display: Side
bse_bseindia_mdi_fast_v502_002_420_600003750.side.display = function(value)
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
bse_bseindia_mdi_fast_v502_002_420_600003750.side.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.side.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.side, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.side, range, value, display)
  end

  return offset, value
end

-- Order Qty (Delta)
bse_bseindia_mdi_fast_v502_002_420_600003750.order_qty_delta = {}

-- Dissect: Order Qty (Delta)
bse_bseindia_mdi_fast_v502_002_420_600003750.order_qty_delta.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.order_qty, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.order_qty, range, 0)
    absent:set_text("Order Qty: No Value")
  end

  return offset, value
end

-- Order Qty (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.order_qty_sent = {}

-- Dissect: Order Qty (Sent)
bse_bseindia_mdi_fast_v502_002_420_600003750.order_qty_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.order_qty, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.order_qty, range, 0)
    absent:set_text("Order Qty: No Value")
  end

  return offset, value
end

-- Last Msg Seq Num Processed
bse_bseindia_mdi_fast_v502_002_420_600003750.last_msg_seq_num_processed = {}

-- Dissect: Last Msg Seq Num Processed
bse_bseindia_mdi_fast_v502_002_420_600003750.last_msg_seq_num_processed.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.last_msg_seq_num_processed, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.last_msg_seq_num_processed, range, 0)
    absent:set_text("Last Msg Seq Num Processed: No Value")
  end

  return offset, value
end

-- Refresh Indicator
bse_bseindia_mdi_fast_v502_002_420_600003750.refresh_indicator = {}

-- Display: Refresh Indicator
bse_bseindia_mdi_fast_v502_002_420_600003750.refresh_indicator.display = function(value)
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
bse_bseindia_mdi_fast_v502_002_420_600003750.refresh_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.refresh_indicator.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.refresh_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.refresh_indicator, range, value, display)
  end

  return offset, value
end

-- Last Update Time
bse_bseindia_mdi_fast_v502_002_420_600003750.last_update_time = {}

-- Dissect: Last Update Time
bse_bseindia_mdi_fast_v502_002_420_600003750.last_update_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_int64(buffer, offset)
  value = (state.values[key] or Int64(0)) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.last_update_time, range, NSTime.new(0, 0))
    absent:set_text("Last Update Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.last_update_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Gross Trade Amt
bse_bseindia_mdi_fast_v502_002_420_600003750.gross_trade_amt = {}

-- Display: Gross Trade Amt
bse_bseindia_mdi_fast_v502_002_420_600003750.gross_trade_amt.display = function(value)
  if value == nil then
    return "Gross Trade Amt: No Value"
  end

  return "Gross Trade Amt: "..value
end

-- Dissect: Gross Trade Amt
bse_bseindia_mdi_fast_v502_002_420_600003750.gross_trade_amt.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = bse_bseindia_mdi_fast_v502_002_420_600003750.gross_trade_amt.display(value)

  if value == nil then
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.gross_trade_amt, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.gross_trade_amt, range, value, display)
  end

  return offset, value
end

-- No Trades
bse_bseindia_mdi_fast_v502_002_420_600003750.no_trades = {}

-- Dissect: No Trades
bse_bseindia_mdi_fast_v502_002_420_600003750.no_trades.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.no_trades, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.no_trades, range, 0)
    absent:set_text("No Trades: No Value")
  end

  return offset, value
end

-- No Of Entries
bse_bseindia_mdi_fast_v502_002_420_600003750.no_of_entries = {}

-- Dissect: No Of Entries
bse_bseindia_mdi_fast_v502_002_420_600003750.no_of_entries.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.no_of_entries, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.no_of_entries, range, 0)
    absent:set_text("No Of Entries: No Value")
  end

  return offset, value
end

-- Divisor
bse_bseindia_mdi_fast_v502_002_420_600003750.divisor = {}

-- Dissect: Divisor
bse_bseindia_mdi_fast_v502_002_420_600003750.divisor.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 100
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.divisor, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.divisor, range, 0)
    absent:set_text("Divisor: No Value")
  end

  return offset, value
end

-- Index Code
bse_bseindia_mdi_fast_v502_002_420_600003750.index_code = {}

-- Dissect: Index Code
bse_bseindia_mdi_fast_v502_002_420_600003750.index_code.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.index_code, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.index_code, range, 0)
    absent:set_text("Index Code: No Value")
  end

  return offset, value
end

-- Index High
bse_bseindia_mdi_fast_v502_002_420_600003750.index_high = {}

-- Dissect: Index High
bse_bseindia_mdi_fast_v502_002_420_600003750.index_high.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.index_high, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.index_high, range, 0)
    absent:set_text("Index High: No Value")
  end

  return offset, value
end

-- Index Low
bse_bseindia_mdi_fast_v502_002_420_600003750.index_low = {}

-- Dissect: Index Low
bse_bseindia_mdi_fast_v502_002_420_600003750.index_low.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.index_low, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.index_low, range, 0)
    absent:set_text("Index Low: No Value")
  end

  return offset, value
end

-- Index Open
bse_bseindia_mdi_fast_v502_002_420_600003750.index_open = {}

-- Dissect: Index Open
bse_bseindia_mdi_fast_v502_002_420_600003750.index_open.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.index_open, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.index_open, range, 0)
    absent:set_text("Index Open: No Value")
  end

  return offset, value
end

-- Prev Index Close
bse_bseindia_mdi_fast_v502_002_420_600003750.prev_index_close = {}

-- Dissect: Prev Index Close
bse_bseindia_mdi_fast_v502_002_420_600003750.prev_index_close.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.prev_index_close, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.prev_index_close, range, 0)
    absent:set_text("Prev Index Close: No Value")
  end

  return offset, value
end

-- Index Close
bse_bseindia_mdi_fast_v502_002_420_600003750.index_close = {}

-- Dissect: Index Close
bse_bseindia_mdi_fast_v502_002_420_600003750.index_close.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.index_close, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.index_close, range, 0)
    absent:set_text("Index Close: No Value")
  end

  return offset, value
end

-- Index Value
bse_bseindia_mdi_fast_v502_002_420_600003750.index_value = {}

-- Dissect: Index Value
bse_bseindia_mdi_fast_v502_002_420_600003750.index_value.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.index_value, range, value)
  else
    local absent = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.index_value, range, 0)
    absent:set_text("Index Value: No Value")
  end

  return offset, value
end


-----------------------------------------------------------------------
-- Dissect Bse BseIndia Mdi Fast 502.002.420.600003750
-----------------------------------------------------------------------

-- Index Chg Grp
bse_bseindia_mdi_fast_v502_002_420_600003750.index_chg_grp = {}

-- Dissect Fields: Index Chg Grp
bse_bseindia_mdi_fast_v502_002_420_600003750.index_chg_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Divisor: uInt32, Default, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.divisor.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Index Code: uInt32, sent
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.index_code.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Index High: uInt32, sent
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.index_high.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Index Low: uInt32, sent
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.index_low.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Index Open: uInt32, sent
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.index_open.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Prev Index Close: uInt32, sent
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.prev_index_close.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Index Close: uInt32, sent
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.index_close.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Index Value: uInt32, sent
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.index_value.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Index Chg Grp
bse_bseindia_mdi_fast_v502_002_420_600003750.index_chg_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.index_chg_grp, buffer(offset, 0))
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

  index = bse_bseindia_mdi_fast_v502_002_420_600003750.index_chg_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Index Change Message
bse_bseindia_mdi_fast_v502_002_420_600003750.index_change = {}

-- Dissect Fields: Index Change Message
bse_bseindia_mdi_fast_v502_002_420_600003750.index_change.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.msg_type_constant_i.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Of Entries: uInt32, sent
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.no_of_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Index Chg Grp: No Of Entries entries
  local count = value or 0
  for index_chg_grp_index = 1, count do
    index = bse_bseindia_mdi_fast_v502_002_420_600003750.index_chg_grp.dissect(buffer, index, packet, parent, presence_map, base, state, index_chg_grp_index)
  end

  return index
end

-- Dissect: Index Change Message
bse_bseindia_mdi_fast_v502_002_420_600003750.index_change.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = bse_bseindia_mdi_fast_v502_002_420_600003750.index_change.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Ssh Grp
bse_bseindia_mdi_fast_v502_002_420_600003750.md_ssh_grp = {}

-- Dissect Fields: Md Ssh Grp
bse_bseindia_mdi_fast_v502_002_420_600003750.md_ssh_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Entry Type: uInt32, Copy
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.md_entry_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|11:MDEntryType")

  -- Trd Type: uInt32, sent, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.trd_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Id: uInt32, Default, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.trading_session_id_default_optional.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Trading Session Sub Id: uInt32, sent, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.trading_session_sub_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Fast Market Indicator: uInt32, Default, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.fast_market_indicator_default_optional.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Security Trading Status: uInt32, sent, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.security_trading_status_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Condition: uInt32, sent, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.trade_condition_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Px: decimal, Delta, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.md_entry_px.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|9:MDEntryPx|E", "6:global|0:|9:MDEntryPx|M" })

  -- Yield: decimal, Delta, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.yield.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|5:Yield|E", "6:global|0:|5:Yield|M" })

  -- Put Yield: decimal, Delta, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.put_yield.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|8:PutYield|E", "6:global|0:|8:PutYield|M" })

  -- Call Yield: decimal, Delta, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.call_yield.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|9:CallYield|E", "6:global|0:|9:CallYield|M" })

  -- Md Entry Size: uInt64, Delta, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.md_entry_size.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:MDEntrySize")

  -- Number Of Orders: uInt32, Delta, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.number_of_orders.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|14:NumberOfOrders")

  -- Md Price Level: uInt32, Increment, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.md_price_level_increment.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|12:MDPriceLevel")

  -- Md Entry Time: timestamp, Copy, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.md_entry_time.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|11:MDEntryTime")

  -- Trade Volume: uInt64, sent, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.trade_volume.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Gross Trade Amt: decimal, sent, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.gross_trade_amt.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- No Trades: uInt32, sent, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.no_trades.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Imbalance Qty: int64, sent, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_qty_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Imbalance Qty Side: uInt32, sent, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_qty_side_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Imbalance Mkt Qty: int64, sent, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_mkt_qty_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Imbalance Mkt Qty Side: uInt32, sent, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_mkt_qty_side_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md Ssh Grp
bse_bseindia_mdi_fast_v502_002_420_600003750.md_ssh_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_ssh_grp, buffer(offset, 0))
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

  index = bse_bseindia_mdi_fast_v502_002_420_600003750.md_ssh_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Depth Snapshot Message
bse_bseindia_mdi_fast_v502_002_420_600003750.depth_snapshot = {}

-- Dissect Fields: Depth Snapshot Message
bse_bseindia_mdi_fast_v502_002_420_600003750.depth_snapshot.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.msg_type_constant_w.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.msg_seq_num_increment_optional.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Sender Comp Id: uInt32, Copy
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.sender_comp_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:SenderCompID")

  -- Last Msg Seq Num Processed: uInt32, Increment, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.last_msg_seq_num_processed.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|22:LastMsgSeqNumProcessed")

  -- Refresh Indicator: uInt32, Copy, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.refresh_indicator.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|16:RefreshIndicator")

  -- Market Segment Id: uInt32, Copy
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.market_segment_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|15:MarketSegmentID")

  -- Security Id: int64, Delta
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.security_id_delta.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|10:SecurityID")

  -- Security Id Source: string, Constant
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Product Complex: uInt32, Copy
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.product_complex.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "6:global|0:|14:ProductComplex")

  -- Security Status: uInt32, Default
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.security_status.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Bid Size: uInt64, Copy
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.bid_size_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "6:global|0:|7:BidSize")

  -- Offer Size: uInt64, Copy
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.offer_size_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "6:global|0:|9:OfferSize")

  -- Last Update Time: timestamp, Delta
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.last_update_time.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|14:LastUpdateTime")

  -- No Md Entries: uInt32, Default
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.no_md_entries_default.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Md Ssh Grp: No Md Entries entries
  local count = value or 0
  for md_ssh_grp_index = 1, count do
    index = bse_bseindia_mdi_fast_v502_002_420_600003750.md_ssh_grp.dissect(buffer, index, packet, parent, presence_map, base, state, md_ssh_grp_index)
  end

  return index
end

-- Dissect: Depth Snapshot Message
bse_bseindia_mdi_fast_v502_002_420_600003750.depth_snapshot.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = bse_bseindia_mdi_fast_v502_002_420_600003750.depth_snapshot.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Cross Request Message
bse_bseindia_mdi_fast_v502_002_420_600003750.cross_request = {}

-- Dissect Fields: Cross Request Message
bse_bseindia_mdi_fast_v502_002_420_600003750.cross_request.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.msg_type_constant_u16.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.msg_seq_num_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Sender Comp Id: uInt32, sent
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.sender_comp_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Segment Id: uInt32, sent
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.market_segment_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: int64, sent
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.security_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: string, Constant
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Qty: uInt32, sent
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.order_qty_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Transact Time: timestamp, sent
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.transact_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Cross Request Message
bse_bseindia_mdi_fast_v502_002_420_600003750.cross_request.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = bse_bseindia_mdi_fast_v502_002_420_600003750.cross_request.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Quot Req Grp
bse_bseindia_mdi_fast_v502_002_420_600003750.quot_req_grp = {}

-- Dissect Fields: Quot Req Grp
bse_bseindia_mdi_fast_v502_002_420_600003750.quot_req_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security Id: int64, Copy
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.security_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|10:SecurityID")

  -- Security Id Source: string, Constant
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Side: uInt32, Copy, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.side.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|4:Side")

  -- Order Qty: uInt32, Delta, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.order_qty_delta.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|8:OrderQty")

  -- Transact Time: timestamp, Copy
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.transact_time_copy.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|12:TransactTime")

  return index
end

-- Dissect: Quot Req Grp
bse_bseindia_mdi_fast_v502_002_420_600003750.quot_req_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.quot_req_grp, buffer(offset, 0))
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

  index = bse_bseindia_mdi_fast_v502_002_420_600003750.quot_req_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Quote Request Message
bse_bseindia_mdi_fast_v502_002_420_600003750.quote_request = {}

-- Dissect Fields: Quote Request Message
bse_bseindia_mdi_fast_v502_002_420_600003750.quote_request.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.msg_type_constant_r.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.msg_seq_num_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Sender Comp Id: uInt32, Copy
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.sender_comp_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:SenderCompID")

  -- Market Segment Id: uInt32, Copy
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.market_segment_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|15:MarketSegmentID")

  -- No Related Sym: uInt32, Constant
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.no_related_sym_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Quot Req Grp: No Related Sym entries
  local count = value or 0
  for quot_req_grp_index = 1, count do
    index = bse_bseindia_mdi_fast_v502_002_420_600003750.quot_req_grp.dissect(buffer, index, packet, parent, presence_map, base, state, quot_req_grp_index)
  end

  return index
end

-- Dissect: Quote Request Message
bse_bseindia_mdi_fast_v502_002_420_600003750.quote_request.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = bse_bseindia_mdi_fast_v502_002_420_600003750.quote_request.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Market Segment Grp
bse_bseindia_mdi_fast_v502_002_420_600003750.market_segment_grp = {}

-- Dissect Fields: Market Segment Grp
bse_bseindia_mdi_fast_v502_002_420_600003750.market_segment_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Market Segment Id: uInt32, Copy
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.market_segment_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|15:MarketSegmentID")

  -- Implied Market Indicator: uInt32, sent
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.implied_market_indicator.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Market Segment Grp
bse_bseindia_mdi_fast_v502_002_420_600003750.market_segment_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.market_segment_grp, buffer(offset, 0))
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

  index = bse_bseindia_mdi_fast_v502_002_420_600003750.market_segment_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrmt Leg Grp
bse_bseindia_mdi_fast_v502_002_420_600003750.instrmt_leg_grp = {}

-- Dissect Fields: Instrmt Leg Grp
bse_bseindia_mdi_fast_v502_002_420_600003750.instrmt_leg_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Leg Security Id: int64, sent
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.leg_security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Security Id Source: string, Constant
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.leg_security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Ratio Qty: uInt32, sent
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.leg_ratio_qty.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Side: uInt32, Copy
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.leg_side.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|7:LegSide")

  -- Leg Price: decimal, sent, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.leg_price.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  return index
end

-- Dissect: Instrmt Leg Grp
bse_bseindia_mdi_fast_v502_002_420_600003750.instrmt_leg_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.instrmt_leg_grp, buffer(offset, 0))
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

  index = bse_bseindia_mdi_fast_v502_002_420_600003750.instrmt_leg_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Complex Instrument Update Message
bse_bseindia_mdi_fast_v502_002_420_600003750.complex_instrument_update = {}

-- Dissect Fields: Complex Instrument Update Message
bse_bseindia_mdi_fast_v502_002_420_600003750.complex_instrument_update.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.msg_type_constant_bp.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.msg_seq_num_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Sender Comp Id: uInt32, Copy
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.sender_comp_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:SenderCompID")

  -- Security Update Action: string, Constant
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.security_update_action.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: int64, sent
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.security_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: string, Constant
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Desc: string, sent
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.security_desc.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Type: uInt32, Constant
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.security_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Sub Type: uInt32, sent, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.security_sub_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Product Complex: uInt32, Copy
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.product_complex.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|14:ProductComplex")

  -- No Legs: uInt32, sent
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.no_legs.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Instrmt Leg Grp: No Legs entries
  local count = value or 0
  for instrmt_leg_grp_index = 1, count do
    index = bse_bseindia_mdi_fast_v502_002_420_600003750.instrmt_leg_grp.dissect(buffer, index, packet, parent, presence_map, base, state, instrmt_leg_grp_index)
  end

  -- No Market Segments: uInt32, Constant
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.no_market_segments.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Segment Grp: No Market Segments entries
  local count = value or 0
  for market_segment_grp_index = 1, count do
    index = bse_bseindia_mdi_fast_v502_002_420_600003750.market_segment_grp.dissect(buffer, index, packet, parent, presence_map, base, state, market_segment_grp_index)
  end

  -- Transact Time: timestamp, sent
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.transact_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Complex Instrument Update Message
bse_bseindia_mdi_fast_v502_002_420_600003750.complex_instrument_update.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = bse_bseindia_mdi_fast_v502_002_420_600003750.complex_instrument_update.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Trade Entry Grp
bse_bseindia_mdi_fast_v502_002_420_600003750.trade_entry_grp = {}

-- Dissect Fields: Trade Entry Grp
bse_bseindia_mdi_fast_v502_002_420_600003750.trade_entry_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trd Type: uInt32, sent, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.trd_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Volume: uInt64, sent, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.trade_volume.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Condition: uInt32, Default, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.trade_condition_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Md Gap Indicator: uInt32, Constant, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.md_gap_indicator.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Aggressor Timestamp: timestamp, sent, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.aggressor_timestamp.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Aggressor Side: uInt32, sent, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.aggressor_side.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Number Of Buy Orders: uInt32, sent, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.number_of_buy_orders.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Number Of Sell Orders: uInt32, sent, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.number_of_sell_orders.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Id: uInt32, Delta, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.md_entry_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|9:MDEntryID")

  return index
end

-- Dissect: Trade Entry Grp
bse_bseindia_mdi_fast_v502_002_420_600003750.trade_entry_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.trade_entry_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = bse_bseindia_mdi_fast_v502_002_420_600003750.trade_entry_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Grp
bse_bseindia_mdi_fast_v502_002_420_600003750.md_inc_grp = {}

-- Dissect Fields: Md Inc Grp
bse_bseindia_mdi_fast_v502_002_420_600003750.md_inc_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Copy
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.md_update_action.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|14:MDUpdateAction")

  -- Md Entry Type: uInt32, Copy
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.md_entry_type.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|11:MDEntryType")

  -- Security Id: int64, Copy
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.security_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|10:SecurityID")

  -- Security Id Source: string, Constant
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Px: decimal, Delta, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.md_entry_px.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|9:MDEntryPx|E", "6:global|0:|9:MDEntryPx|M" })

  -- Yield: decimal, Delta, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.yield.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|5:Yield|E", "6:global|0:|5:Yield|M" })

  -- Put Yield: decimal, Delta, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.put_yield.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|8:PutYield|E", "6:global|0:|8:PutYield|M" })

  -- Call Yield: decimal, Delta, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.call_yield.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|9:CallYield|E", "6:global|0:|9:CallYield|M" })

  -- Md Entry Size: uInt64, Delta, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.md_entry_size.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|11:MDEntrySize")

  -- Number Of Orders: uInt32, Delta, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.number_of_orders.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|14:NumberOfOrders")

  -- Md Price Level: uInt32, sent, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.md_price_level_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Bid Size: uInt64, Copy, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.bid_size_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|7:BidSize")

  -- Offer Size: uInt64, Copy, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.offer_size_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|9:OfferSize")

  -- Imbalance Qty: int64, Copy, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_qty_copy.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "6:global|0:|12:ImbalanceQty")

  -- Imbalance Qty Side: uInt32, Copy, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_qty_side_copy.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "6:global|0:|16:ImbalanceQtySide")

  -- Imbalance Mkt Qty: int64, Copy, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_mkt_qty_copy.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "6:global|0:|15:ImbalanceMktQty")

  -- Imbalance Mkt Qty Side: uInt32, Copy, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.imbalance_mkt_qty_side_copy.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "6:global|0:|19:ImbalanceMktQtySide")

  -- Md Entry Time: timestamp, Copy, optional
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.md_entry_time.dissect(buffer, index, packet, parent, presence_map[base + 9], state, "6:global|0:|11:MDEntryTime")

  -- Trade Entry Grp: group, optional
  if presence_map[base + 10] then
    index = bse_bseindia_mdi_fast_v502_002_420_600003750.trade_entry_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  return index
end

-- Dissect: Md Inc Grp
bse_bseindia_mdi_fast_v502_002_420_600003750.md_inc_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_inc_grp, buffer(offset, 0))
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

  index = bse_bseindia_mdi_fast_v502_002_420_600003750.md_inc_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Depth Incremental Message
bse_bseindia_mdi_fast_v502_002_420_600003750.depth_incremental = {}

-- Dissect Fields: Depth Incremental Message
bse_bseindia_mdi_fast_v502_002_420_600003750.depth_incremental.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.msg_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.msg_seq_num_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Sender Comp Id: uInt32, Copy
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.sender_comp_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:SenderCompID")

  -- Market Segment Id: uInt32, Copy
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.market_segment_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|15:MarketSegmentID")

  -- No Md Entries: uInt32, sent
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.no_md_entries_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Inc Grp: No Md Entries entries
  local count = value or 0
  for md_inc_grp_index = 1, count do
    index = bse_bseindia_mdi_fast_v502_002_420_600003750.md_inc_grp.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_grp_index)
  end

  return index
end

-- Dissect: Depth Incremental Message
bse_bseindia_mdi_fast_v502_002_420_600003750.depth_incremental.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = bse_bseindia_mdi_fast_v502_002_420_600003750.depth_incremental.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Instrument State Change Message
bse_bseindia_mdi_fast_v502_002_420_600003750.instrument_state_change = {}

-- Dissect Fields: Instrument State Change Message
bse_bseindia_mdi_fast_v502_002_420_600003750.instrument_state_change.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.msg_type_constant_f.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.msg_seq_num_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Sender Comp Id: uInt32, Copy
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.sender_comp_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:SenderCompID")

  -- Market Segment Id: uInt32, Copy
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.market_segment_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|15:MarketSegmentID")

  -- Security Id: int64, sent
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.security_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: string, Constant
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Status: uInt32, Default
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.security_status.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Security Trading Status: uInt32, Copy
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.security_trading_status_copy.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|21:SecurityTradingStatus")

  -- Fast Market Indicator: uInt32, Default
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.fast_market_indicator_default_required.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Transact Time: timestamp, Delta
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.transact_time_delta.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|12:TransactTime")

  return index
end

-- Dissect: Instrument State Change Message
bse_bseindia_mdi_fast_v502_002_420_600003750.instrument_state_change.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = bse_bseindia_mdi_fast_v502_002_420_600003750.instrument_state_change.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Sec Mass Stat Grp
bse_bseindia_mdi_fast_v502_002_420_600003750.sec_mass_stat_grp = {}

-- Dissect Fields: Sec Mass Stat Grp
bse_bseindia_mdi_fast_v502_002_420_600003750.sec_mass_stat_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security Id: int64, sent
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.security_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: string, Constant
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Status: uInt32, Default
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.security_status.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Security Trading Status: uInt32, Copy
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.security_trading_status_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|21:SecurityTradingStatus")

  return index
end

-- Dissect: Sec Mass Stat Grp
bse_bseindia_mdi_fast_v502_002_420_600003750.sec_mass_stat_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.sec_mass_stat_grp, buffer(offset, 0))
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

  index = bse_bseindia_mdi_fast_v502_002_420_600003750.sec_mass_stat_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Mass Instrument State Change Message
bse_bseindia_mdi_fast_v502_002_420_600003750.mass_instrument_state_change = {}

-- Dissect Fields: Mass Instrument State Change Message
bse_bseindia_mdi_fast_v502_002_420_600003750.mass_instrument_state_change.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.msg_type_constant_co.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.msg_seq_num_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Sender Comp Id: uInt32, Copy
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.sender_comp_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:SenderCompID")

  -- Market Segment Id: uInt32, Copy
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.market_segment_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|15:MarketSegmentID")

  -- Instrument Scope Product Complex: uInt32, Copy
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.instrument_scope_product_complex.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|29:InstrumentScopeProductComplex")

  -- Security Mass Trading Status: uInt32, Copy
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.security_mass_trading_status.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|25:SecurityMassTradingStatus")

  -- Instrument State Transition: uInt32, sent
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.instrument_state_transition.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Fast Market Indicator: uInt32, Default
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.fast_market_indicator_default_required.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Transact Time: timestamp, Delta
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.transact_time_delta.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|12:TransactTime")

  -- No Related Sym: uInt32, Default
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.no_related_sym_default.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Sec Mass Stat Grp: No Related Sym entries
  local count = value or 0
  for sec_mass_stat_grp_index = 1, count do
    index = bse_bseindia_mdi_fast_v502_002_420_600003750.sec_mass_stat_grp.dissect(buffer, index, packet, parent, presence_map, base, state, sec_mass_stat_grp_index)
  end

  return index
end

-- Dissect: Mass Instrument State Change Message
bse_bseindia_mdi_fast_v502_002_420_600003750.mass_instrument_state_change.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = bse_bseindia_mdi_fast_v502_002_420_600003750.mass_instrument_state_change.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Product State Change Message
bse_bseindia_mdi_fast_v502_002_420_600003750.product_state_change = {}

-- Dissect Fields: Product State Change Message
bse_bseindia_mdi_fast_v502_002_420_600003750.product_state_change.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.msg_type_constant_h.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.msg_seq_num_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Sender Comp Id: uInt32, Copy
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.sender_comp_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:SenderCompID")

  -- Market Segment Id: uInt32, Copy
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.market_segment_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|15:MarketSegmentID")

  -- Trading Session Id: uInt32, Default
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.trading_session_id_default_required.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Trading Session Sub Id: uInt32, sent
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.trading_session_sub_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trad Ses Status: uInt32, sent
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.trad_ses_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Fast Market Indicator: uInt32, Default
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.fast_market_indicator_default_required.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Transact Time: timestamp, sent
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.transact_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Product State Change Message
bse_bseindia_mdi_fast_v502_002_420_600003750.product_state_change.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = bse_bseindia_mdi_fast_v502_002_420_600003750.product_state_change.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Packet Header Message
bse_bseindia_mdi_fast_v502_002_420_600003750.md_packet_header = {}

-- Dissect Fields: Md Packet Header Message
bse_bseindia_mdi_fast_v502_002_420_600003750.md_packet_header.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Sender Comp Id: uInt32, sent
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.sender_comp_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Packet Seq Num: byteVector, sent
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.packet_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: byteVector, sent
  index, value = bse_bseindia_mdi_fast_v502_002_420_600003750.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md Packet Header Message
bse_bseindia_mdi_fast_v502_002_420_600003750.md_packet_header.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = bse_bseindia_mdi_fast_v502_002_420_600003750.md_packet_header.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Bse BseIndia Mdi Fast 502.002.420.600003750 Message Dispatch
bse_bseindia_mdi_fast_v502_002_420_600003750.messages = {
  [122] = bse_bseindia_mdi_fast_v502_002_420_600003750.md_packet_header.dissect,
  [108] = bse_bseindia_mdi_fast_v502_002_420_600003750.product_state_change.dissect,
  [104] = bse_bseindia_mdi_fast_v502_002_420_600003750.mass_instrument_state_change.dissect,
  [103] = bse_bseindia_mdi_fast_v502_002_420_600003750.instrument_state_change.dissect,
  [102] = bse_bseindia_mdi_fast_v502_002_420_600003750.depth_incremental.dissect,
  [105] = bse_bseindia_mdi_fast_v502_002_420_600003750.complex_instrument_update.dissect,
  [106] = bse_bseindia_mdi_fast_v502_002_420_600003750.quote_request.dissect,
  [107] = bse_bseindia_mdi_fast_v502_002_420_600003750.cross_request.dissect,
  [101] = bse_bseindia_mdi_fast_v502_002_420_600003750.depth_snapshot.dissect,
  [51] = bse_bseindia_mdi_fast_v502_002_420_600003750.index_change.dissect,
}

-- Bse BseIndia Mdi Fast 502.002.420.600003750 Message Nodes
bse_bseindia_mdi_fast_v502_002_420_600003750.message_fields = {
  [122] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.md_packet_header,
  [108] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.product_state_change,
  [104] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.mass_instrument_state_change,
  [103] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.instrument_state_change,
  [102] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.depth_incremental,
  [105] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.complex_instrument_update,
  [106] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.quote_request,
  [107] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.cross_request,
  [101] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.depth_snapshot,
  [51] = omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.index_change,
}

-- Bse BseIndia Mdi Fast 502.002.420.600003750 Template Names
bse_bseindia_mdi_fast_v502_002_420_600003750.template_id = {}

-- Display: Template Id
bse_bseindia_mdi_fast_v502_002_420_600003750.template_id.display = function(value)
  if value == 122 then
    return "Template Id: MDPacketHeader (122)"
  end
  if value == 108 then
    return "Template Id: ProductStateChange (108)"
  end
  if value == 104 then
    return "Template Id: MassInstrumentStateChange (104)"
  end
  if value == 103 then
    return "Template Id: InstrumentStateChange (103)"
  end
  if value == 102 then
    return "Template Id: DepthIncremental (102)"
  end
  if value == 105 then
    return "Template Id: ComplexInstrumentUpdate (105)"
  end
  if value == 106 then
    return "Template Id: QuoteRequest (106)"
  end
  if value == 107 then
    return "Template Id: CrossRequest (107)"
  end
  if value == 101 then
    return "Template Id: DepthSnapshot (101)"
  end
  if value == 51 then
    return "Template Id: IndexChange (51)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Name: Template Id
bse_bseindia_mdi_fast_v502_002_420_600003750.template_id.name = function(value)
  if value == 122 then
    return "MDPacketHeader"
  end
  if value == 108 then
    return "ProductStateChange"
  end
  if value == 104 then
    return "MassInstrumentStateChange"
  end
  if value == 103 then
    return "InstrumentStateChange"
  end
  if value == 102 then
    return "DepthIncremental"
  end
  if value == 105 then
    return "ComplexInstrumentUpdate"
  end
  if value == 106 then
    return "QuoteRequest"
  end
  if value == 107 then
    return "CrossRequest"
  end
  if value == 101 then
    return "DepthSnapshot"
  end
  if value == 51 then
    return "IndexChange"
  end

  return "Unknown"
end

-- Bse BseIndia Mdi Fast 502.002.420.600003750 Packet Dissector
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.dissector = function(buffer, packet, parent)
  packet.cols.protocol = "Bse BseIndia Mdi Fast 502.002.420.600003750"
  local root = parent:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750, buffer(), "Bse BseIndia Mdi Fast 502.002.420.600003750")
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

    local message_field = bse_bseindia_mdi_fast_v502_002_420_600003750.message_fields[template_id]
    local message_tree = nil

    if message_field ~= nil then
      message_tree = root:add(message_field, buffer(start, 0))
    else
      message_tree = root:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.message, buffer(start, 0))
      message_tree:set_text(bse_bseindia_mdi_fast_v502_002_420_600003750.template_id.name(template_id))
    end

    -- the presence map and the template id are the message's own framing
    local header = message_tree:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.message_header, buffer(start, offset - start))
    add_presence_map(header, buffer(start, mapped - start), omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_map, omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_stop, omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_identified, omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.presence_unused, bse_bseindia_mdi_fast_v502_002_420_600003750.presence_bits.named[template_id])
    header:add(omi_bse_bseindia_mdi_fast_v502_002_420_600003750.fields.template_id, buffer(identified, offset - identified), template_id, bse_bseindia_mdi_fast_v502_002_420_600003750.template_id.display(template_id))

    local message = bse_bseindia_mdi_fast_v502_002_420_600003750.messages[template_id]

    if message == nil then
      message_tree:add_expert_info(PI_UNDECODED, PI_WARN, "This dissector reads: 122 (MDPacketHeader), 108 (ProductStateChange), 104 (MassInstrumentStateChange), 103 (InstrumentStateChange), 102 (DepthIncremental), 105 (ComplexInstrumentUpdate), 106 (QuoteRequest), 107 (CrossRequest), 101 (DepthSnapshot), 51 (IndexChange)")
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
omi_bse_bseindia_mdi_fast_v502_002_420_600003750.init = function()
  stream_states = {}
end

-- Register Bse BseIndia Mdi Fast 502.002.420.600003750 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_bse_bseindia_mdi_fast_v502_002_420_600003750)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: BSE Limited
--   Version: v502.002.420.600003750
--   Specification: BSE_market data_manual_v 1.4.5.pdf
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
