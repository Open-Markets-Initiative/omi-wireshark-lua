-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Moex Spectra FastGate Fast 9.9.0 Protocol
local omi_moex_spectra_fastgate_fast_v9_9_0 = Proto("Omi.Moex.Spectra.FastGate.Fast.v9.9.0", "Moex Spectra FastGate Fast 9.9.0")

-- Protocol table
local moex_spectra_fastgate_fast_v9_9_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Moex Spectra FastGate Fast 9.9.0 Framing
omi_moex_spectra_fastgate_fast_v9_9_0.fields.message = ProtoField.new("Message", "moex.spectra.fastgate.fast.v9.9.0.message", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.message_header = ProtoField.new("Message Header", "moex.spectra.fastgate.fast.v9.9.0.messageheader", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.presence_map = ProtoField.new("Presence Map", "moex.spectra.fastgate.fast.v9.9.0.presencemap", ftypes.BYTES)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.template_id = ProtoField.new("Template Id", "moex.spectra.fastgate.fast.v9.9.0.templateid", ftypes.UINT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.presence_stop = ProtoField.new("Stop Bit", "moex.spectra.fastgate.fast.v9.9.0.presencestop", ftypes.UINT8, { [0] = "Clear", [1] = "Set" }, base.DEC)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.presence_identified = ProtoField.new("Template Id", "moex.spectra.fastgate.fast.v9.9.0.presencetemplateid", ftypes.UINT8, { [0] = "Repeated", [1] = "Sent" }, base.DEC)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.presence_unused = ProtoField.new("Unused", "moex.spectra.fastgate.fast.v9.9.0.presenceunused", ftypes.UINT8, nil, base.HEX)
moex_spectra_fastgate_fast_v9_9_0.presence_bits = {}

-- Moex Spectra FastGate Fast 9.9.0 Presence Map Fields

moex_spectra_fastgate_fast_v9_9_0.presence_bits.named = {
}

-- Moex Spectra FastGate Fast 9.9.0 Fields
omi_moex_spectra_fastgate_fast_v9_9_0.fields.appl_ver_id = ProtoField.new("Appl Ver Id", "moex.spectra.fastgate.fast.v9.9.0.applverid", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.message_type = ProtoField.new("Message Type", "moex.spectra.fastgate.fast.v9.9.0.messagetype", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.sender_comp_id = ProtoField.new("Sender Comp Id", "moex.spectra.fastgate.fast.v9.9.0.sendercompid", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "moex.spectra.fastgate.fast.v9.9.0.msgseqnum", ftypes.UINT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.sending_time = ProtoField.new("Sending Time", "moex.spectra.fastgate.fast.v9.9.0.sendingtime", ftypes.UINT64)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.last_fragment = ProtoField.new("Last Fragment", "moex.spectra.fastgate.fast.v9.9.0.lastfragment", ftypes.UINT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.no_md_entries = ProtoField.new("No Md Entries", "moex.spectra.fastgate.fast.v9.9.0.nomdentries", ftypes.UINT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_update_action = ProtoField.new("Md Update Action", "moex.spectra.fastgate.fast.v9.9.0.mdupdateaction", ftypes.UINT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_type = ProtoField.new("Md Entry Type", "moex.spectra.fastgate.fast.v9.9.0.mdentrytype", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_id = ProtoField.new("Security Id", "moex.spectra.fastgate.fast.v9.9.0.securityid", ftypes.UINT64)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_id_source = ProtoField.new("Security Id Source", "moex.spectra.fastgate.fast.v9.9.0.securityidsource", ftypes.UINT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.symbol = ProtoField.new("Symbol", "moex.spectra.fastgate.fast.v9.9.0.symbol", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_group = ProtoField.new("Security Group", "moex.spectra.fastgate.fast.v9.9.0.securitygroup", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.exchange_trading_session_id = ProtoField.new("Exchange Trading Session Id", "moex.spectra.fastgate.fast.v9.9.0.exchangetradingsessionid", ftypes.UINT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.rpt_seq = ProtoField.new("Rpt Seq", "moex.spectra.fastgate.fast.v9.9.0.rptseq", ftypes.UINT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.market_depth = ProtoField.new("Market Depth", "moex.spectra.fastgate.fast.v9.9.0.marketdepth", ftypes.UINT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_price_level = ProtoField.new("Md Price Level", "moex.spectra.fastgate.fast.v9.9.0.mdpricelevel", ftypes.UINT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_id = ProtoField.new("Md Entry Id", "moex.spectra.fastgate.fast.v9.9.0.mdentryid", ftypes.INT64)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_px_double = ProtoField.new("Md Entry Px", "moex.spectra.fastgate.fast.v9.9.0.mdentrypx.double", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_px_string = ProtoField.new("Md Entry Px", "moex.spectra.fastgate.fast.v9.9.0.mdentrypx.string", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_size = ProtoField.new("Md Entry Size", "moex.spectra.fastgate.fast.v9.9.0.mdentrysize", ftypes.INT64)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_date = ProtoField.new("Md Entry Date", "moex.spectra.fastgate.fast.v9.9.0.mdentrydate", ftypes.UINT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_time = ProtoField.new("Md Entry Time", "moex.spectra.fastgate.fast.v9.9.0.mdentrytime", ftypes.UINT64)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.number_of_orders = ProtoField.new("Number Of Orders", "moex.spectra.fastgate.fast.v9.9.0.numberoforders", ftypes.INT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_trade_type = ProtoField.new("Md Entry Trade Type", "moex.spectra.fastgate.fast.v9.9.0.mdentrytradetype", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.trd_type = ProtoField.new("Trd Type", "moex.spectra.fastgate.fast.v9.9.0.trdtype", ftypes.INT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.last_px = ProtoField.new("Last Px", "moex.spectra.fastgate.fast.v9.9.0.lastpx", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_flags_int32 = ProtoField.new("Md Flags", "moex.spectra.fastgate.fast.v9.9.0.mdflags.int32", ftypes.INT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_flags_int64 = ProtoField.new("Md Flags", "moex.spectra.fastgate.fast.v9.9.0.mdflags.int64", ftypes.INT64)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.currency = ProtoField.new("Currency", "moex.spectra.fastgate.fast.v9.9.0.currency", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.revision = ProtoField.new("Revision", "moex.spectra.fastgate.fast.v9.9.0.revision", ftypes.UINT64)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.order_side = ProtoField.new("Order Side", "moex.spectra.fastgate.fast.v9.9.0.orderside", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_synthetic_size = ProtoField.new("Md Entry Synthetic Size", "moex.spectra.fastgate.fast.v9.9.0.mdentrysyntheticsize", ftypes.INT64)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.open_interest = ProtoField.new("Open Interest", "moex.spectra.fastgate.fast.v9.9.0.openinterest", ftypes.INT64)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.index_cross_rate = ProtoField.new("Index Cross Rate", "moex.spectra.fastgate.fast.v9.9.0.indexcrossrate", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "moex.spectra.fastgate.fast.v9.9.0.tradingsessionsubid", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.tot_num_reports = ProtoField.new("Tot Num Reports", "moex.spectra.fastgate.fast.v9.9.0.totnumreports", ftypes.UINT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "moex.spectra.fastgate.fast.v9.9.0.lastmsgseqnumprocessed", ftypes.UINT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_desc = ProtoField.new("Security Desc", "moex.spectra.fastgate.fast.v9.9.0.securitydesc", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_alt_id = ProtoField.new("Security Alt Id", "moex.spectra.fastgate.fast.v9.9.0.securityaltid", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_alt_id_source = ProtoField.new("Security Alt Id Source", "moex.spectra.fastgate.fast.v9.9.0.securityaltidsource", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_type = ProtoField.new("Security Type", "moex.spectra.fastgate.fast.v9.9.0.securitytype", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.cfi_code = ProtoField.new("Cfi Code", "moex.spectra.fastgate.fast.v9.9.0.cficode", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.strike_price = ProtoField.new("Strike Price", "moex.spectra.fastgate.fast.v9.9.0.strikeprice", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "moex.spectra.fastgate.fast.v9.9.0.contractmultiplier", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_trading_status = ProtoField.new("Security Trading Status", "moex.spectra.fastgate.fast.v9.9.0.securitytradingstatus", ftypes.UINT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.market_id = ProtoField.new("Market Id", "moex.spectra.fastgate.fast.v9.9.0.marketid", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.market_segment_id = ProtoField.new("Market Segment Id", "moex.spectra.fastgate.fast.v9.9.0.marketsegmentid", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.trading_session_id = ProtoField.new("Trading Session Id", "moex.spectra.fastgate.fast.v9.9.0.tradingsessionid", ftypes.UINT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.volatility = ProtoField.new("Volatility", "moex.spectra.fastgate.fast.v9.9.0.volatility", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.no_md_feed_types = ProtoField.new("No Md Feed Types", "moex.spectra.fastgate.fast.v9.9.0.nomdfeedtypes", ftypes.UINT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_feed_type = ProtoField.new("Md Feed Type", "moex.spectra.fastgate.fast.v9.9.0.mdfeedtype", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_book_type = ProtoField.new("Md Book Type", "moex.spectra.fastgate.fast.v9.9.0.mdbooktype", ftypes.UINT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.no_underlyings = ProtoField.new("No Underlyings", "moex.spectra.fastgate.fast.v9.9.0.nounderlyings", ftypes.UINT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "moex.spectra.fastgate.fast.v9.9.0.underlyingsymbol", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.underlying_board = ProtoField.new("Underlying Board", "moex.spectra.fastgate.fast.v9.9.0.underlyingboard", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.underlying_security_id = ProtoField.new("Underlying Security Id", "moex.spectra.fastgate.fast.v9.9.0.underlyingsecurityid", ftypes.UINT64)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.underlying_future_id = ProtoField.new("Underlying Future Id", "moex.spectra.fastgate.fast.v9.9.0.underlyingfutureid", ftypes.UINT64)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.high_limit_px = ProtoField.new("High Limit Px", "moex.spectra.fastgate.fast.v9.9.0.highlimitpx", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.low_limit_px = ProtoField.new("Low Limit Px", "moex.spectra.fastgate.fast.v9.9.0.lowlimitpx", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.min_price_increment = ProtoField.new("Min Price Increment", "moex.spectra.fastgate.fast.v9.9.0.minpriceincrement", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.min_price_increment_amount = ProtoField.new("Min Price Increment Amount", "moex.spectra.fastgate.fast.v9.9.0.minpriceincrementamount", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.initial_margin_on_buy = ProtoField.new("Initial Margin On Buy", "moex.spectra.fastgate.fast.v9.9.0.initialmarginonbuy", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.initial_margin_on_sell = ProtoField.new("Initial Margin On Sell", "moex.spectra.fastgate.fast.v9.9.0.initialmarginonsell", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.initial_margin_syntetic = ProtoField.new("Initial Margin Syntetic", "moex.spectra.fastgate.fast.v9.9.0.initialmarginsyntetic", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.quotation_list = ProtoField.new("Quotation List", "moex.spectra.fastgate.fast.v9.9.0.quotationlist", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.theor_price = ProtoField.new("Theor Price", "moex.spectra.fastgate.fast.v9.9.0.theorprice", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.theor_price_limit = ProtoField.new("Theor Price Limit", "moex.spectra.fastgate.fast.v9.9.0.theorpricelimit", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.no_legs = ProtoField.new("No Legs", "moex.spectra.fastgate.fast.v9.9.0.nolegs", ftypes.UINT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.leg_symbol = ProtoField.new("Leg Symbol", "moex.spectra.fastgate.fast.v9.9.0.legsymbol", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.leg_security_id = ProtoField.new("Leg Security Id", "moex.spectra.fastgate.fast.v9.9.0.legsecurityid", ftypes.UINT64)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "moex.spectra.fastgate.fast.v9.9.0.legratioqty", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.no_instr_attrib = ProtoField.new("No Instr Attrib", "moex.spectra.fastgate.fast.v9.9.0.noinstrattrib", ftypes.UINT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.instr_attrib_type = ProtoField.new("Instr Attrib Type", "moex.spectra.fastgate.fast.v9.9.0.instrattribtype", ftypes.INT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.instr_attrib_value = ProtoField.new("Instr Attrib Value", "moex.spectra.fastgate.fast.v9.9.0.instrattribvalue", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.underlying_qty = ProtoField.new("Underlying Qty", "moex.spectra.fastgate.fast.v9.9.0.underlyingqty", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.underlying_currency = ProtoField.new("Underlying Currency", "moex.spectra.fastgate.fast.v9.9.0.underlyingcurrency", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.no_events = ProtoField.new("No Events", "moex.spectra.fastgate.fast.v9.9.0.noevents", ftypes.UINT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.event_type = ProtoField.new("Event Type", "moex.spectra.fastgate.fast.v9.9.0.eventtype", ftypes.INT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.event_date = ProtoField.new("Event Date", "moex.spectra.fastgate.fast.v9.9.0.eventdate", ftypes.UINT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.event_time = ProtoField.new("Event Time", "moex.spectra.fastgate.fast.v9.9.0.eventtime", ftypes.UINT64)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.flags = ProtoField.new("Flags", "moex.spectra.fastgate.fast.v9.9.0.flags", ftypes.INT64)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.min_price_increment_amount_curr = ProtoField.new("Min Price Increment Amount Curr", "moex.spectra.fastgate.fast.v9.9.0.minpriceincrementamountcurr", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.settl_price_open = ProtoField.new("Settl Price Open", "moex.spectra.fastgate.fast.v9.9.0.settlpriceopen", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.valuation_method = ProtoField.new("Valuation Method", "moex.spectra.fastgate.fast.v9.9.0.valuationmethod", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.risk_free_rate = ProtoField.new("Risk Free Rate", "moex.spectra.fastgate.fast.v9.9.0.riskfreerate", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.fixed_spot_discount = ProtoField.new("Fixed Spot Discount", "moex.spectra.fastgate.fast.v9.9.0.fixedspotdiscount", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.projected_spot_discount = ProtoField.new("Projected Spot Discount", "moex.spectra.fastgate.fast.v9.9.0.projectedspotdiscount", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.settl_currency = ProtoField.new("Settl Currency", "moex.spectra.fastgate.fast.v9.9.0.settlcurrency", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.negative_prices = ProtoField.new("Negative Prices", "moex.spectra.fastgate.fast.v9.9.0.negativeprices", ftypes.INT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.derivative_contract_multiplier = ProtoField.new("Derivative Contract Multiplier", "moex.spectra.fastgate.fast.v9.9.0.derivativecontractmultiplier", ftypes.INT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.interest_rate_risk_up = ProtoField.new("Interest Rate Risk Up", "moex.spectra.fastgate.fast.v9.9.0.interestrateriskup", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.interest_rate_risk_down = ProtoField.new("Interest Rate Risk Down", "moex.spectra.fastgate.fast.v9.9.0.interestrateriskdown", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.risk_free_rate2 = ProtoField.new("Risk Free Rate2", "moex.spectra.fastgate.fast.v9.9.0.riskfreerate2", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.interest_rate2_risk_up = ProtoField.new("Interest Rate2 Risk Up", "moex.spectra.fastgate.fast.v9.9.0.interestrate2riskup", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.interest_rate2_risk_down = ProtoField.new("Interest Rate2 Risk Down", "moex.spectra.fastgate.fast.v9.9.0.interestrate2riskdown", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.settl_price = ProtoField.new("Settl Price", "moex.spectra.fastgate.fast.v9.9.0.settlprice", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.trade_mode_id = ProtoField.new("Trade Mode Id", "moex.spectra.fastgate.fast.v9.9.0.trademodeid", ftypes.INT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.group_mask = ProtoField.new("Group Mask", "moex.spectra.fastgate.fast.v9.9.0.groupmask", ftypes.INT64)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.section_id = ProtoField.new("Section Id", "moex.spectra.fastgate.fast.v9.9.0.sectionid", ftypes.INT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.base_contract_id = ProtoField.new("Base Contract Id", "moex.spectra.fastgate.fast.v9.9.0.basecontractid", ftypes.INT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.trade_period_access = ProtoField.new("Trade Period Access", "moex.spectra.fastgate.fast.v9.9.0.tradeperiodaccess", ftypes.INT64)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.high_limit_px_weekend = ProtoField.new("High Limit Px Weekend", "moex.spectra.fastgate.fast.v9.9.0.highlimitpxweekend", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.low_limit_px_weekend = ProtoField.new("Low Limit Px Weekend", "moex.spectra.fastgate.fast.v9.9.0.lowlimitpxweekend", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.clearing_settl_price = ProtoField.new("Clearing Settl Price", "moex.spectra.fastgate.fast.v9.9.0.clearingsettlprice", ftypes.DOUBLE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.no_related_sym = ProtoField.new("No Related Sym", "moex.spectra.fastgate.fast.v9.9.0.norelatedsym", ftypes.UINT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_group_id = ProtoField.new("Security Group Id", "moex.spectra.fastgate.fast.v9.9.0.securitygroupid", ftypes.INT64)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.halt_type = ProtoField.new("Halt Type", "moex.spectra.fastgate.fast.v9.9.0.halttype", ftypes.INT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.trade_mode_mask = ProtoField.new("Trade Mode Mask", "moex.spectra.fastgate.fast.v9.9.0.trademodemask", ftypes.INT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.transact_time = ProtoField.new("Transact Time", "moex.spectra.fastgate.fast.v9.9.0.transacttime", ftypes.UINT64)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.new_seq_no = ProtoField.new("New Seq No", "moex.spectra.fastgate.fast.v9.9.0.newseqno", ftypes.UINT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.trad_ses_open_time = ProtoField.new("Trad Ses Open Time", "moex.spectra.fastgate.fast.v9.9.0.tradsesopentime", ftypes.UINT64)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.trad_ses_close_time = ProtoField.new("Trad Ses Close Time", "moex.spectra.fastgate.fast.v9.9.0.tradsesclosetime", ftypes.UINT64)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.trad_ses_status = ProtoField.new("Trad Ses Status", "moex.spectra.fastgate.fast.v9.9.0.tradsesstatus", ftypes.UINT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.trad_ses_event = ProtoField.new("Trad Ses Event", "moex.spectra.fastgate.fast.v9.9.0.tradsesevent", ftypes.INT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.trade_period_id = ProtoField.new("Trade Period Id", "moex.spectra.fastgate.fast.v9.9.0.tradeperiodid", ftypes.INT64)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.settl_sess_begin = ProtoField.new("Settl Sess Begin", "moex.spectra.fastgate.fast.v9.9.0.settlsessbegin", ftypes.UINT64)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.clr_sess_begin = ProtoField.new("Clr Sess Begin", "moex.spectra.fastgate.fast.v9.9.0.clrsessbegin", ftypes.UINT64)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.trad_ses_close_time_from = ProtoField.new("Trad Ses Close Time From", "moex.spectra.fastgate.fast.v9.9.0.tradsesclosetimefrom", ftypes.UINT64)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.trad_ses_close_time_till = ProtoField.new("Trad Ses Close Time Till", "moex.spectra.fastgate.fast.v9.9.0.tradsesclosetimetill", ftypes.UINT64)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.auction_id = ProtoField.new("Auction Id", "moex.spectra.fastgate.fast.v9.9.0.auctionid", ftypes.INT64)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.event_id_open = ProtoField.new("Event Id Open", "moex.spectra.fastgate.fast.v9.9.0.eventidopen", ftypes.INT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.event_id_close = ProtoField.new("Event Id Close", "moex.spectra.fastgate.fast.v9.9.0.eventidclose", ftypes.INT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.news_id = ProtoField.new("News Id", "moex.spectra.fastgate.fast.v9.9.0.newsid", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.orig_time = ProtoField.new("Orig Time", "moex.spectra.fastgate.fast.v9.9.0.origtime", ftypes.UINT64)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.language_code = ProtoField.new("Language Code", "moex.spectra.fastgate.fast.v9.9.0.languagecode", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.urgency = ProtoField.new("Urgency", "moex.spectra.fastgate.fast.v9.9.0.urgency", ftypes.UINT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.headline = ProtoField.new("Headline", "moex.spectra.fastgate.fast.v9.9.0.headline", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.no_lines_of_text = ProtoField.new("No Lines Of Text", "moex.spectra.fastgate.fast.v9.9.0.nolinesoftext", ftypes.UINT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.text = ProtoField.new("Text", "moex.spectra.fastgate.fast.v9.9.0.text", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.last_qty = ProtoField.new("Last Qty", "moex.spectra.fastgate.fast.v9.9.0.lastqty", ftypes.INT64)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.trade_id = ProtoField.new("Trade Id", "moex.spectra.fastgate.fast.v9.9.0.tradeid", ftypes.INT64)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_flags2 = ProtoField.new("Md Flags2", "moex.spectra.fastgate.fast.v9.9.0.mdflags2", ftypes.INT64)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.route_first = ProtoField.new("Route First", "moex.spectra.fastgate.fast.v9.9.0.routefirst", ftypes.UINT32)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.trade_volume = ProtoField.new("Trade Volume", "moex.spectra.fastgate.fast.v9.9.0.tradevolume", ftypes.STRING)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.in_list = ProtoField.new("In List", "moex.spectra.fastgate.fast.v9.9.0.inlist", ftypes.STRING)

-- Moex Spectra FastGate Fast 9.9.0 Messages
omi_moex_spectra_fastgate_fast_v9_9_0.fields.default_incremental_refresh_message = ProtoField.new("Default Incremental Refresh Message Message", "moex.spectra.fastgate.fast.v9.9.0.defaultincrementalrefreshmessage", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.default_incremental_refresh_message_md_entries = ProtoField.new("Default Incremental Refresh Message Md Entries", "moex.spectra.fastgate.fast.v9.9.0.defaultincrementalrefreshmessagemdentries", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.default_snapshot_message = ProtoField.new("Default Snapshot Message Message", "moex.spectra.fastgate.fast.v9.9.0.defaultsnapshotmessage", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.default_snapshot_message_md_entries = ProtoField.new("Default Snapshot Message Md Entries", "moex.spectra.fastgate.fast.v9.9.0.defaultsnapshotmessagemdentries", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_definition = ProtoField.new("Security Definition Message", "moex.spectra.fastgate.fast.v9.9.0.securitydefinition", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_feed_types = ProtoField.new("Md Feed Types", "moex.spectra.fastgate.fast.v9.9.0.mdfeedtypes", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_definition_underlyings = ProtoField.new("Security Definition Underlyings", "moex.spectra.fastgate.fast.v9.9.0.securitydefinitionunderlyings", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.instrument_legs = ProtoField.new("Instrument Legs", "moex.spectra.fastgate.fast.v9.9.0.instrumentlegs", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.instrument_attributes = ProtoField.new("Instrument Attributes", "moex.spectra.fastgate.fast.v9.9.0.instrumentattributes", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.evnt_grp = ProtoField.new("Evnt Grp", "moex.spectra.fastgate.fast.v9.9.0.evntgrp", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_definition_update_report = ProtoField.new("Security Definition Update Report Message", "moex.spectra.fastgate.fast.v9.9.0.securitydefinitionupdatereport", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_status = ProtoField.new("Security Status Message", "moex.spectra.fastgate.fast.v9.9.0.securitystatus", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_mass_status = ProtoField.new("Security Mass Status Message", "moex.spectra.fastgate.fast.v9.9.0.securitymassstatus", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.sec_mass_stat_grp = ProtoField.new("Sec Mass Stat Grp", "moex.spectra.fastgate.fast.v9.9.0.secmassstatgrp", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_group_status = ProtoField.new("Security Group Status Message", "moex.spectra.fastgate.fast.v9.9.0.securitygroupstatus", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.heartbeat = ProtoField.new("Heartbeat Message", "moex.spectra.fastgate.fast.v9.9.0.heartbeat", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.sequence_reset = ProtoField.new("Sequence Reset Message", "moex.spectra.fastgate.fast.v9.9.0.sequencereset", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.trading_session_status = ProtoField.new("Trading Session Status Message", "moex.spectra.fastgate.fast.v9.9.0.tradingsessionstatus", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.discrete_auction = ProtoField.new("Discrete Auction Message", "moex.spectra.fastgate.fast.v9.9.0.discreteauction", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.discrete_auction_underlyings = ProtoField.new("Discrete Auction Underlyings", "moex.spectra.fastgate.fast.v9.9.0.discreteauctionunderlyings", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.news = ProtoField.new("News Message", "moex.spectra.fastgate.fast.v9.9.0.news", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.news_text = ProtoField.new("News Text", "moex.spectra.fastgate.fast.v9.9.0.newstext", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.orders_log_message = ProtoField.new("Orders Log Message Message", "moex.spectra.fastgate.fast.v9.9.0.orderslogmessage", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.orders_log_message_md_entries = ProtoField.new("Orders Log Message Md Entries", "moex.spectra.fastgate.fast.v9.9.0.orderslogmessagemdentries", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.book_message = ProtoField.new("Book Message Message", "moex.spectra.fastgate.fast.v9.9.0.bookmessage", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.book_message_md_entries = ProtoField.new("Book Message Md Entries", "moex.spectra.fastgate.fast.v9.9.0.bookmessagemdentries", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.otc_monitor_incremental_refresh_message = ProtoField.new("Otc Monitor Incremental Refresh Message Message", "moex.spectra.fastgate.fast.v9.9.0.otcmonitorincrementalrefreshmessage", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.otc_monitor_incremental_refresh_message_md_entries = ProtoField.new("Otc Monitor Incremental Refresh Message Md Entries", "moex.spectra.fastgate.fast.v9.9.0.otcmonitorincrementalrefreshmessagemdentries", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.otc_monitor_snapshot_message = ProtoField.new("Otc Monitor Snapshot Message Message", "moex.spectra.fastgate.fast.v9.9.0.otcmonitorsnapshotmessage", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.otc_monitor_snapshot_message_md_entries = ProtoField.new("Otc Monitor Snapshot Message Md Entries", "moex.spectra.fastgate.fast.v9.9.0.otcmonitorsnapshotmessagemdentries", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.otc_monitor_security_definition = ProtoField.new("Otc Monitor Security Definition Message", "moex.spectra.fastgate.fast.v9.9.0.otcmonitorsecuritydefinition", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_feed_types = ProtoField.new("Md Feed Types", "moex.spectra.fastgate.fast.v9.9.0.mdfeedtypes", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.instrument_attributes = ProtoField.new("Instrument Attributes", "moex.spectra.fastgate.fast.v9.9.0.instrumentattributes", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.logon = ProtoField.new("Logon Message", "moex.spectra.fastgate.fast.v9.9.0.logon", ftypes.NONE)
omi_moex_spectra_fastgate_fast_v9_9_0.fields.logout = ProtoField.new("Logout Message", "moex.spectra.fastgate.fast.v9.9.0.logout", ftypes.NONE)

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
-- Moex Spectra FastGate Fast 9.9.0 Fields
-----------------------------------------------------------------------

-- Appl Ver Id
moex_spectra_fastgate_fast_v9_9_0.appl_ver_id = {}

-- Dissect: Appl Ver Id
moex_spectra_fastgate_fast_v9_9_0.appl_ver_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "9"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.appl_ver_id, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.appl_ver_id, range, "")
    absent:set_text("Appl Ver Id: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
moex_spectra_fastgate_fast_v9_9_0.message_type_constant_x = {}

-- Dissect: Message Type (Constant)
moex_spectra_fastgate_fast_v9_9_0.message_type_constant_x.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "X"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.message_type, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
moex_spectra_fastgate_fast_v9_9_0.message_type_constant_w = {}

-- Dissect: Message Type (Constant)
moex_spectra_fastgate_fast_v9_9_0.message_type_constant_w.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "W"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.message_type, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
moex_spectra_fastgate_fast_v9_9_0.message_type_constant_d = {}

-- Dissect: Message Type (Constant)
moex_spectra_fastgate_fast_v9_9_0.message_type_constant_d.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "d"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.message_type, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
moex_spectra_fastgate_fast_v9_9_0.message_type_constant_bp = {}

-- Dissect: Message Type (Constant)
moex_spectra_fastgate_fast_v9_9_0.message_type_constant_bp.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "BP"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.message_type, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
moex_spectra_fastgate_fast_v9_9_0.message_type_constant_f = {}

-- Dissect: Message Type (Constant)
moex_spectra_fastgate_fast_v9_9_0.message_type_constant_f.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "f"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.message_type, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
moex_spectra_fastgate_fast_v9_9_0.message_type_constant_co = {}

-- Dissect: Message Type (Constant)
moex_spectra_fastgate_fast_v9_9_0.message_type_constant_co.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "CO"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.message_type, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
moex_spectra_fastgate_fast_v9_9_0.message_type_constant_0 = {}

-- Dissect: Message Type (Constant)
moex_spectra_fastgate_fast_v9_9_0.message_type_constant_0.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "0"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.message_type, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
moex_spectra_fastgate_fast_v9_9_0.message_type_constant_4 = {}

-- Dissect: Message Type (Constant)
moex_spectra_fastgate_fast_v9_9_0.message_type_constant_4.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "4"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.message_type, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
moex_spectra_fastgate_fast_v9_9_0.message_type_constant_h = {}

-- Dissect: Message Type (Constant)
moex_spectra_fastgate_fast_v9_9_0.message_type_constant_h.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "h"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.message_type, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
moex_spectra_fastgate_fast_v9_9_0.message_type_constant_u1 = {}

-- Dissect: Message Type (Constant)
moex_spectra_fastgate_fast_v9_9_0.message_type_constant_u1.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "U1"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.message_type, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
moex_spectra_fastgate_fast_v9_9_0.message_type_constant_b = {}

-- Dissect: Message Type (Constant)
moex_spectra_fastgate_fast_v9_9_0.message_type_constant_b.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "B"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.message_type, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
moex_spectra_fastgate_fast_v9_9_0.message_type_constant_a = {}

-- Dissect: Message Type (Constant)
moex_spectra_fastgate_fast_v9_9_0.message_type_constant_a.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "A"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.message_type, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
moex_spectra_fastgate_fast_v9_9_0.message_type_constant_5 = {}

-- Dissect: Message Type (Constant)
moex_spectra_fastgate_fast_v9_9_0.message_type_constant_5.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "5"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.message_type, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Sender Comp Id
moex_spectra_fastgate_fast_v9_9_0.sender_comp_id = {}

-- Dissect: Sender Comp Id
moex_spectra_fastgate_fast_v9_9_0.sender_comp_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "MOEX"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.sender_comp_id, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.sender_comp_id, range, "")
    absent:set_text("Sender Comp Id: No Value")
  end

  return offset, value
end

-- Msg Seq Num
moex_spectra_fastgate_fast_v9_9_0.msg_seq_num = {}

-- Dissect: Msg Seq Num
moex_spectra_fastgate_fast_v9_9_0.msg_seq_num.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.msg_seq_num, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.msg_seq_num, range, 0)
    absent:set_text("Msg Seq Num: No Value")
  end

  return offset, value
end

-- Sending Time
moex_spectra_fastgate_fast_v9_9_0.sending_time = {}

-- Dissect: Sending Time
moex_spectra_fastgate_fast_v9_9_0.sending_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.sending_time, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.sending_time, range, UInt64(0))
    absent:set_text("Sending Time: No Value")
  end

  return offset, value
end

-- Last Fragment (Sent)
moex_spectra_fastgate_fast_v9_9_0.last_fragment_sent_optional = {}

-- Dissect: Last Fragment (Sent)
moex_spectra_fastgate_fast_v9_9_0.last_fragment_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.last_fragment, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.last_fragment, range, 0)
    absent:set_text("Last Fragment: No Value")
  end

  return offset, value
end

-- Last Fragment (Sent)
moex_spectra_fastgate_fast_v9_9_0.last_fragment_sent_required = {}

-- Dissect: Last Fragment (Sent)
moex_spectra_fastgate_fast_v9_9_0.last_fragment_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.last_fragment, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.last_fragment, range, 0)
    absent:set_text("Last Fragment: No Value")
  end

  return offset, value
end

-- No Md Entries
moex_spectra_fastgate_fast_v9_9_0.no_md_entries = {}

-- Dissect: No Md Entries
moex_spectra_fastgate_fast_v9_9_0.no_md_entries.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.no_md_entries, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.no_md_entries, range, 0)
    absent:set_text("No Md Entries: No Value")
  end

  return offset, value
end

-- Md Update Action
moex_spectra_fastgate_fast_v9_9_0.md_update_action = {}

-- Dissect: Md Update Action
moex_spectra_fastgate_fast_v9_9_0.md_update_action.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_update_action, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_update_action, range, 0)
    absent:set_text("Md Update Action: No Value")
  end

  return offset, value
end

-- Md Entry Type
moex_spectra_fastgate_fast_v9_9_0.md_entry_type = {}

-- Dissect: Md Entry Type
moex_spectra_fastgate_fast_v9_9_0.md_entry_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_type, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_type, range, "")
    absent:set_text("Md Entry Type: No Value")
  end

  return offset, value
end

-- Security Id (Sent)
moex_spectra_fastgate_fast_v9_9_0.security_id_sent_optional = {}

-- Dissect: Security Id (Sent)
moex_spectra_fastgate_fast_v9_9_0.security_id_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_id, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_id, range, UInt64(0))
    absent:set_text("Security Id: No Value")
  end

  return offset, value
end

-- Security Id (Sent)
moex_spectra_fastgate_fast_v9_9_0.security_id_sent_required = {}

-- Dissect: Security Id (Sent)
moex_spectra_fastgate_fast_v9_9_0.security_id_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_id, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_id, range, UInt64(0))
    absent:set_text("Security Id: No Value")
  end

  return offset, value
end

-- Security Id Source
moex_spectra_fastgate_fast_v9_9_0.security_id_source = {}

-- Dissect: Security Id Source
moex_spectra_fastgate_fast_v9_9_0.security_id_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 8

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_id_source, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_id_source, range, 0)
    absent:set_text("Security Id Source: No Value")
  end

  return offset, value
end

-- Symbol (Sent)
moex_spectra_fastgate_fast_v9_9_0.symbol_sent_optional = {}

-- Dissect: Symbol (Sent)
moex_spectra_fastgate_fast_v9_9_0.symbol_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.symbol, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.symbol, range, "")
    absent:set_text("Symbol: No Value")
  end

  return offset, value
end

-- Symbol (Sent)
moex_spectra_fastgate_fast_v9_9_0.symbol_sent_required = {}

-- Dissect: Symbol (Sent)
moex_spectra_fastgate_fast_v9_9_0.symbol_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.symbol, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.symbol, range, "")
    absent:set_text("Symbol: No Value")
  end

  return offset, value
end

-- Security Group (Sent)
moex_spectra_fastgate_fast_v9_9_0.security_group_sent_optional = {}

-- Dissect: Security Group (Sent)
moex_spectra_fastgate_fast_v9_9_0.security_group_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_group, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_group, range, "")
    absent:set_text("Security Group: No Value")
  end

  return offset, value
end

-- Security Group (Sent)
moex_spectra_fastgate_fast_v9_9_0.security_group_sent_required = {}

-- Dissect: Security Group (Sent)
moex_spectra_fastgate_fast_v9_9_0.security_group_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_group, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_group, range, "")
    absent:set_text("Security Group: No Value")
  end

  return offset, value
end

-- Exchange Trading Session Id (Sent)
moex_spectra_fastgate_fast_v9_9_0.exchange_trading_session_id_sent_optional = {}

-- Dissect: Exchange Trading Session Id (Sent)
moex_spectra_fastgate_fast_v9_9_0.exchange_trading_session_id_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.exchange_trading_session_id, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.exchange_trading_session_id, range, 0)
    absent:set_text("Exchange Trading Session Id: No Value")
  end

  return offset, value
end

-- Exchange Trading Session Id (Sent)
moex_spectra_fastgate_fast_v9_9_0.exchange_trading_session_id_sent_required = {}

-- Dissect: Exchange Trading Session Id (Sent)
moex_spectra_fastgate_fast_v9_9_0.exchange_trading_session_id_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.exchange_trading_session_id, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.exchange_trading_session_id, range, 0)
    absent:set_text("Exchange Trading Session Id: No Value")
  end

  return offset, value
end

-- Rpt Seq (Sent)
moex_spectra_fastgate_fast_v9_9_0.rpt_seq_sent_required = {}

-- Dissect: Rpt Seq (Sent)
moex_spectra_fastgate_fast_v9_9_0.rpt_seq_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.rpt_seq, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.rpt_seq, range, 0)
    absent:set_text("Rpt Seq: No Value")
  end

  return offset, value
end

-- Rpt Seq (Sent)
moex_spectra_fastgate_fast_v9_9_0.rpt_seq_sent_optional = {}

-- Dissect: Rpt Seq (Sent)
moex_spectra_fastgate_fast_v9_9_0.rpt_seq_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.rpt_seq, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.rpt_seq, range, 0)
    absent:set_text("Rpt Seq: No Value")
  end

  return offset, value
end

-- Market Depth
moex_spectra_fastgate_fast_v9_9_0.market_depth = {}

-- Dissect: Market Depth
moex_spectra_fastgate_fast_v9_9_0.market_depth.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.market_depth, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.market_depth, range, 0)
    absent:set_text("Market Depth: No Value")
  end

  return offset, value
end

-- Md Price Level
moex_spectra_fastgate_fast_v9_9_0.md_price_level = {}

-- Dissect: Md Price Level
moex_spectra_fastgate_fast_v9_9_0.md_price_level.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_price_level, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_price_level, range, 0)
    absent:set_text("Md Price Level: No Value")
  end

  return offset, value
end

-- Md Entry Id (Sent)
moex_spectra_fastgate_fast_v9_9_0.md_entry_id_sent_optional = {}

-- Dissect: Md Entry Id (Sent)
moex_spectra_fastgate_fast_v9_9_0.md_entry_id_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_id, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_id, range, Int64(0))
    absent:set_text("Md Entry Id: No Value")
  end

  return offset, value
end

-- Md Entry Id (Sent)
moex_spectra_fastgate_fast_v9_9_0.md_entry_id_sent_required = {}

-- Dissect: Md Entry Id (Sent)
moex_spectra_fastgate_fast_v9_9_0.md_entry_id_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_id, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_id, range, Int64(0))
    absent:set_text("Md Entry Id: No Value")
  end

  return offset, value
end

-- Md Entry Px (Sent)
moex_spectra_fastgate_fast_v9_9_0.md_entry_px_sent_optional = {}

-- Display: Md Entry Px (Sent)
moex_spectra_fastgate_fast_v9_9_0.md_entry_px_sent_optional.display = function(value)
  if value == nil then
    return "Md Entry Px: No Value"
  end

  return "Md Entry Px: "..value
end

-- Dissect: Md Entry Px (Sent)
moex_spectra_fastgate_fast_v9_9_0.md_entry_px_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.md_entry_px_sent_optional.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_px_double, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_px_double, range, value, display)
  end

  return offset, value
end

-- Md Entry Px (Sent)
moex_spectra_fastgate_fast_v9_9_0.md_entry_px_sent_required = {}

-- Dissect: Md Entry Px (Sent)
moex_spectra_fastgate_fast_v9_9_0.md_entry_px_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_px_string, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_px_string, range, "")
    absent:set_text("Md Entry Px: No Value")
  end

  return offset, value
end

-- Md Entry Size (Sent)
moex_spectra_fastgate_fast_v9_9_0.md_entry_size_sent_optional = {}

-- Dissect: Md Entry Size (Sent)
moex_spectra_fastgate_fast_v9_9_0.md_entry_size_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_size, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_size, range, Int64(0))
    absent:set_text("Md Entry Size: No Value")
  end

  return offset, value
end

-- Md Entry Size (Sent)
moex_spectra_fastgate_fast_v9_9_0.md_entry_size_sent_required = {}

-- Dissect: Md Entry Size (Sent)
moex_spectra_fastgate_fast_v9_9_0.md_entry_size_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_size, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_size, range, Int64(0))
    absent:set_text("Md Entry Size: No Value")
  end

  return offset, value
end

-- Md Entry Date
moex_spectra_fastgate_fast_v9_9_0.md_entry_date = {}

-- Dissect: Md Entry Date
moex_spectra_fastgate_fast_v9_9_0.md_entry_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_date, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_date, range, 0)
    absent:set_text("Md Entry Date: No Value")
  end

  return offset, value
end

-- Md Entry Time
moex_spectra_fastgate_fast_v9_9_0.md_entry_time = {}

-- Dissect: Md Entry Time
moex_spectra_fastgate_fast_v9_9_0.md_entry_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_time, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_time, range, UInt64(0))
    absent:set_text("Md Entry Time: No Value")
  end

  return offset, value
end

-- Number Of Orders
moex_spectra_fastgate_fast_v9_9_0.number_of_orders = {}

-- Dissect: Number Of Orders
moex_spectra_fastgate_fast_v9_9_0.number_of_orders.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.number_of_orders, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.number_of_orders, range, 0)
    absent:set_text("Number Of Orders: No Value")
  end

  return offset, value
end

-- Md Entry Trade Type
moex_spectra_fastgate_fast_v9_9_0.md_entry_trade_type = {}

-- Dissect: Md Entry Trade Type
moex_spectra_fastgate_fast_v9_9_0.md_entry_trade_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_trade_type, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_trade_type, range, "")
    absent:set_text("Md Entry Trade Type: No Value")
  end

  return offset, value
end

-- Trd Type
moex_spectra_fastgate_fast_v9_9_0.trd_type = {}

-- Dissect: Trd Type
moex_spectra_fastgate_fast_v9_9_0.trd_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trd_type, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trd_type, range, 0)
    absent:set_text("Trd Type: No Value")
  end

  return offset, value
end

-- Last Px
moex_spectra_fastgate_fast_v9_9_0.last_px = {}

-- Display: Last Px
moex_spectra_fastgate_fast_v9_9_0.last_px.display = function(value)
  if value == nil then
    return "Last Px: No Value"
  end

  return "Last Px: "..value
end

-- Dissect: Last Px
moex_spectra_fastgate_fast_v9_9_0.last_px.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.last_px.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.last_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.last_px, range, value, display)
  end

  return offset, value
end

-- Md Flags (Sent)
moex_spectra_fastgate_fast_v9_9_0.md_flags_sent_optional_int32 = {}

-- Dissect: Md Flags (Sent)
moex_spectra_fastgate_fast_v9_9_0.md_flags_sent_optional_int32.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_flags_int32, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_flags_int32, range, 0)
    absent:set_text("Md Flags: No Value")
  end

  return offset, value
end

-- Md Flags (Sent)
moex_spectra_fastgate_fast_v9_9_0.md_flags_sent_optional_int64 = {}

-- Dissect: Md Flags (Sent)
moex_spectra_fastgate_fast_v9_9_0.md_flags_sent_optional_int64.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_flags_int64, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_flags_int64, range, Int64(0))
    absent:set_text("Md Flags: No Value")
  end

  return offset, value
end

-- Currency (Sent)
moex_spectra_fastgate_fast_v9_9_0.currency_sent_optional = {}

-- Dissect: Currency (Sent)
moex_spectra_fastgate_fast_v9_9_0.currency_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.currency, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.currency, range, "")
    absent:set_text("Currency: No Value")
  end

  return offset, value
end

-- Currency (Sent)
moex_spectra_fastgate_fast_v9_9_0.currency_sent_required = {}

-- Dissect: Currency (Sent)
moex_spectra_fastgate_fast_v9_9_0.currency_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.currency, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.currency, range, "")
    absent:set_text("Currency: No Value")
  end

  return offset, value
end

-- Revision
moex_spectra_fastgate_fast_v9_9_0.revision = {}

-- Dissect: Revision
moex_spectra_fastgate_fast_v9_9_0.revision.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.revision, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.revision, range, UInt64(0))
    absent:set_text("Revision: No Value")
  end

  return offset, value
end

-- Order Side (Sent)
moex_spectra_fastgate_fast_v9_9_0.order_side_sent_optional = {}

-- Dissect: Order Side (Sent)
moex_spectra_fastgate_fast_v9_9_0.order_side_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.order_side, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.order_side, range, "")
    absent:set_text("Order Side: No Value")
  end

  return offset, value
end

-- Order Side (Sent)
moex_spectra_fastgate_fast_v9_9_0.order_side_sent_required = {}

-- Dissect: Order Side (Sent)
moex_spectra_fastgate_fast_v9_9_0.order_side_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.order_side, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.order_side, range, "")
    absent:set_text("Order Side: No Value")
  end

  return offset, value
end

-- Md Entry Synthetic Size
moex_spectra_fastgate_fast_v9_9_0.md_entry_synthetic_size = {}

-- Dissect: Md Entry Synthetic Size
moex_spectra_fastgate_fast_v9_9_0.md_entry_synthetic_size.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_synthetic_size, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_entry_synthetic_size, range, Int64(0))
    absent:set_text("Md Entry Synthetic Size: No Value")
  end

  return offset, value
end

-- Open Interest
moex_spectra_fastgate_fast_v9_9_0.open_interest = {}

-- Dissect: Open Interest
moex_spectra_fastgate_fast_v9_9_0.open_interest.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.open_interest, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.open_interest, range, Int64(0))
    absent:set_text("Open Interest: No Value")
  end

  return offset, value
end

-- Index Cross Rate
moex_spectra_fastgate_fast_v9_9_0.index_cross_rate = {}

-- Display: Index Cross Rate
moex_spectra_fastgate_fast_v9_9_0.index_cross_rate.display = function(value)
  if value == nil then
    return "Index Cross Rate: No Value"
  end

  return "Index Cross Rate: "..value
end

-- Dissect: Index Cross Rate
moex_spectra_fastgate_fast_v9_9_0.index_cross_rate.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.index_cross_rate.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.index_cross_rate, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.index_cross_rate, range, value, display)
  end

  return offset, value
end

-- Trading Session Sub Id
moex_spectra_fastgate_fast_v9_9_0.trading_session_sub_id = {}

-- Dissect: Trading Session Sub Id
moex_spectra_fastgate_fast_v9_9_0.trading_session_sub_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trading_session_sub_id, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trading_session_sub_id, range, "")
    absent:set_text("Trading Session Sub Id: No Value")
  end

  return offset, value
end

-- Tot Num Reports
moex_spectra_fastgate_fast_v9_9_0.tot_num_reports = {}

-- Dissect: Tot Num Reports
moex_spectra_fastgate_fast_v9_9_0.tot_num_reports.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.tot_num_reports, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.tot_num_reports, range, 0)
    absent:set_text("Tot Num Reports: No Value")
  end

  return offset, value
end

-- Last Msg Seq Num Processed
moex_spectra_fastgate_fast_v9_9_0.last_msg_seq_num_processed = {}

-- Dissect: Last Msg Seq Num Processed
moex_spectra_fastgate_fast_v9_9_0.last_msg_seq_num_processed.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.last_msg_seq_num_processed, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.last_msg_seq_num_processed, range, 0)
    absent:set_text("Last Msg Seq Num Processed: No Value")
  end

  return offset, value
end

-- Security Desc
moex_spectra_fastgate_fast_v9_9_0.security_desc = {}

-- Dissect: Security Desc
moex_spectra_fastgate_fast_v9_9_0.security_desc.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_desc, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_desc, range, "")
    absent:set_text("Security Desc: No Value")
  end

  return offset, value
end

-- Security Alt Id (Sent)
moex_spectra_fastgate_fast_v9_9_0.security_alt_id_sent_optional = {}

-- Dissect: Security Alt Id (Sent)
moex_spectra_fastgate_fast_v9_9_0.security_alt_id_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_alt_id, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_alt_id, range, "")
    absent:set_text("Security Alt Id: No Value")
  end

  return offset, value
end

-- Security Alt Id (Sent)
moex_spectra_fastgate_fast_v9_9_0.security_alt_id_sent_required = {}

-- Dissect: Security Alt Id (Sent)
moex_spectra_fastgate_fast_v9_9_0.security_alt_id_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_alt_id, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_alt_id, range, "")
    absent:set_text("Security Alt Id: No Value")
  end

  return offset, value
end

-- Security Alt Id Source (Sent)
moex_spectra_fastgate_fast_v9_9_0.security_alt_id_source_sent_optional = {}

-- Dissect: Security Alt Id Source (Sent)
moex_spectra_fastgate_fast_v9_9_0.security_alt_id_source_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_alt_id_source, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_alt_id_source, range, "")
    absent:set_text("Security Alt Id Source: No Value")
  end

  return offset, value
end

-- Security Alt Id Source (Sent)
moex_spectra_fastgate_fast_v9_9_0.security_alt_id_source_sent_required = {}

-- Dissect: Security Alt Id Source (Sent)
moex_spectra_fastgate_fast_v9_9_0.security_alt_id_source_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_alt_id_source, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_alt_id_source, range, "")
    absent:set_text("Security Alt Id Source: No Value")
  end

  return offset, value
end

-- Security Type
moex_spectra_fastgate_fast_v9_9_0.security_type = {}

-- Dissect: Security Type
moex_spectra_fastgate_fast_v9_9_0.security_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_type, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_type, range, "")
    absent:set_text("Security Type: No Value")
  end

  return offset, value
end

-- Cfi Code (Sent)
moex_spectra_fastgate_fast_v9_9_0.cfi_code_sent_optional = {}

-- Dissect: Cfi Code (Sent)
moex_spectra_fastgate_fast_v9_9_0.cfi_code_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.cfi_code, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.cfi_code, range, "")
    absent:set_text("Cfi Code: No Value")
  end

  return offset, value
end

-- Cfi Code (Sent)
moex_spectra_fastgate_fast_v9_9_0.cfi_code_sent_required = {}

-- Dissect: Cfi Code (Sent)
moex_spectra_fastgate_fast_v9_9_0.cfi_code_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.cfi_code, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.cfi_code, range, "")
    absent:set_text("Cfi Code: No Value")
  end

  return offset, value
end

-- Strike Price
moex_spectra_fastgate_fast_v9_9_0.strike_price = {}

-- Display: Strike Price
moex_spectra_fastgate_fast_v9_9_0.strike_price.display = function(value)
  if value == nil then
    return "Strike Price: No Value"
  end

  return "Strike Price: "..value
end

-- Dissect: Strike Price
moex_spectra_fastgate_fast_v9_9_0.strike_price.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.strike_price.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.strike_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.strike_price, range, value, display)
  end

  return offset, value
end

-- Contract Multiplier
moex_spectra_fastgate_fast_v9_9_0.contract_multiplier = {}

-- Display: Contract Multiplier
moex_spectra_fastgate_fast_v9_9_0.contract_multiplier.display = function(value)
  if value == nil then
    return "Contract Multiplier: No Value"
  end

  return "Contract Multiplier: "..value
end

-- Dissect: Contract Multiplier
moex_spectra_fastgate_fast_v9_9_0.contract_multiplier.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.contract_multiplier.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.contract_multiplier, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.contract_multiplier, range, value, display)
  end

  return offset, value
end

-- Security Trading Status (Sent)
moex_spectra_fastgate_fast_v9_9_0.security_trading_status_sent_optional = {}

-- Dissect: Security Trading Status (Sent)
moex_spectra_fastgate_fast_v9_9_0.security_trading_status_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_trading_status, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_trading_status, range, 0)
    absent:set_text("Security Trading Status: No Value")
  end

  return offset, value
end

-- Security Trading Status (Sent)
moex_spectra_fastgate_fast_v9_9_0.security_trading_status_sent_required = {}

-- Dissect: Security Trading Status (Sent)
moex_spectra_fastgate_fast_v9_9_0.security_trading_status_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_trading_status, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_trading_status, range, 0)
    absent:set_text("Security Trading Status: No Value")
  end

  return offset, value
end

-- Market Id
moex_spectra_fastgate_fast_v9_9_0.market_id = {}

-- Dissect: Market Id
moex_spectra_fastgate_fast_v9_9_0.market_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "MOEX"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.market_id, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.market_id, range, "")
    absent:set_text("Market Id: No Value")
  end

  return offset, value
end

-- Market Segment Id (Sent)
moex_spectra_fastgate_fast_v9_9_0.market_segment_id_sent_required = {}

-- Dissect: Market Segment Id (Sent)
moex_spectra_fastgate_fast_v9_9_0.market_segment_id_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.market_segment_id, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.market_segment_id, range, "")
    absent:set_text("Market Segment Id: No Value")
  end

  return offset, value
end

-- Market Segment Id (Sent)
moex_spectra_fastgate_fast_v9_9_0.market_segment_id_sent_optional = {}

-- Dissect: Market Segment Id (Sent)
moex_spectra_fastgate_fast_v9_9_0.market_segment_id_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.market_segment_id, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.market_segment_id, range, "")
    absent:set_text("Market Segment Id: No Value")
  end

  return offset, value
end

-- Trading Session Id (Sent)
moex_spectra_fastgate_fast_v9_9_0.trading_session_id_sent_optional = {}

-- Dissect: Trading Session Id (Sent)
moex_spectra_fastgate_fast_v9_9_0.trading_session_id_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trading_session_id, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trading_session_id, range, 0)
    absent:set_text("Trading Session Id: No Value")
  end

  return offset, value
end

-- Trading Session Id (Sent)
moex_spectra_fastgate_fast_v9_9_0.trading_session_id_sent_required = {}

-- Dissect: Trading Session Id (Sent)
moex_spectra_fastgate_fast_v9_9_0.trading_session_id_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trading_session_id, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trading_session_id, range, 0)
    absent:set_text("Trading Session Id: No Value")
  end

  return offset, value
end

-- Volatility
moex_spectra_fastgate_fast_v9_9_0.volatility = {}

-- Display: Volatility
moex_spectra_fastgate_fast_v9_9_0.volatility.display = function(value)
  if value == nil then
    return "Volatility: No Value"
  end

  return "Volatility: "..value
end

-- Dissect: Volatility
moex_spectra_fastgate_fast_v9_9_0.volatility.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.volatility.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.volatility, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.volatility, range, value, display)
  end

  return offset, value
end

-- No Md Feed Types
moex_spectra_fastgate_fast_v9_9_0.no_md_feed_types = {}

-- Dissect: No Md Feed Types
moex_spectra_fastgate_fast_v9_9_0.no_md_feed_types.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.no_md_feed_types, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.no_md_feed_types, range, 0)
    absent:set_text("No Md Feed Types: No Value")
  end

  return offset, value
end

-- Md Feed Type
moex_spectra_fastgate_fast_v9_9_0.md_feed_type = {}

-- Dissect: Md Feed Type
moex_spectra_fastgate_fast_v9_9_0.md_feed_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_feed_type, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_feed_type, range, "")
    absent:set_text("Md Feed Type: No Value")
  end

  return offset, value
end

-- Md Book Type
moex_spectra_fastgate_fast_v9_9_0.md_book_type = {}

-- Dissect: Md Book Type
moex_spectra_fastgate_fast_v9_9_0.md_book_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_book_type, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_book_type, range, 0)
    absent:set_text("Md Book Type: No Value")
  end

  return offset, value
end

-- No Underlyings
moex_spectra_fastgate_fast_v9_9_0.no_underlyings = {}

-- Dissect: No Underlyings
moex_spectra_fastgate_fast_v9_9_0.no_underlyings.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.no_underlyings, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.no_underlyings, range, 0)
    absent:set_text("No Underlyings: No Value")
  end

  return offset, value
end

-- Underlying Symbol
moex_spectra_fastgate_fast_v9_9_0.underlying_symbol = {}

-- Dissect: Underlying Symbol
moex_spectra_fastgate_fast_v9_9_0.underlying_symbol.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.underlying_symbol, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.underlying_symbol, range, "")
    absent:set_text("Underlying Symbol: No Value")
  end

  return offset, value
end

-- Underlying Board
moex_spectra_fastgate_fast_v9_9_0.underlying_board = {}

-- Dissect: Underlying Board
moex_spectra_fastgate_fast_v9_9_0.underlying_board.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.underlying_board, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.underlying_board, range, "")
    absent:set_text("Underlying Board: No Value")
  end

  return offset, value
end

-- Underlying Security Id
moex_spectra_fastgate_fast_v9_9_0.underlying_security_id = {}

-- Dissect: Underlying Security Id
moex_spectra_fastgate_fast_v9_9_0.underlying_security_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.underlying_security_id, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.underlying_security_id, range, UInt64(0))
    absent:set_text("Underlying Security Id: No Value")
  end

  return offset, value
end

-- Underlying Future Id
moex_spectra_fastgate_fast_v9_9_0.underlying_future_id = {}

-- Dissect: Underlying Future Id
moex_spectra_fastgate_fast_v9_9_0.underlying_future_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.underlying_future_id, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.underlying_future_id, range, UInt64(0))
    absent:set_text("Underlying Future Id: No Value")
  end

  return offset, value
end

-- High Limit Px
moex_spectra_fastgate_fast_v9_9_0.high_limit_px = {}

-- Display: High Limit Px
moex_spectra_fastgate_fast_v9_9_0.high_limit_px.display = function(value)
  if value == nil then
    return "High Limit Px: No Value"
  end

  return "High Limit Px: "..value
end

-- Dissect: High Limit Px
moex_spectra_fastgate_fast_v9_9_0.high_limit_px.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.high_limit_px.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.high_limit_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.high_limit_px, range, value, display)
  end

  return offset, value
end

-- Low Limit Px
moex_spectra_fastgate_fast_v9_9_0.low_limit_px = {}

-- Display: Low Limit Px
moex_spectra_fastgate_fast_v9_9_0.low_limit_px.display = function(value)
  if value == nil then
    return "Low Limit Px: No Value"
  end

  return "Low Limit Px: "..value
end

-- Dissect: Low Limit Px
moex_spectra_fastgate_fast_v9_9_0.low_limit_px.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.low_limit_px.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.low_limit_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.low_limit_px, range, value, display)
  end

  return offset, value
end

-- Min Price Increment
moex_spectra_fastgate_fast_v9_9_0.min_price_increment = {}

-- Display: Min Price Increment
moex_spectra_fastgate_fast_v9_9_0.min_price_increment.display = function(value)
  if value == nil then
    return "Min Price Increment: No Value"
  end

  return "Min Price Increment: "..value
end

-- Dissect: Min Price Increment
moex_spectra_fastgate_fast_v9_9_0.min_price_increment.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.min_price_increment.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.min_price_increment, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.min_price_increment, range, value, display)
  end

  return offset, value
end

-- Min Price Increment Amount
moex_spectra_fastgate_fast_v9_9_0.min_price_increment_amount = {}

-- Display: Min Price Increment Amount
moex_spectra_fastgate_fast_v9_9_0.min_price_increment_amount.display = function(value)
  if value == nil then
    return "Min Price Increment Amount: No Value"
  end

  return "Min Price Increment Amount: "..value
end

-- Dissect: Min Price Increment Amount
moex_spectra_fastgate_fast_v9_9_0.min_price_increment_amount.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.min_price_increment_amount.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.min_price_increment_amount, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.min_price_increment_amount, range, value, display)
  end

  return offset, value
end

-- Initial Margin On Buy
moex_spectra_fastgate_fast_v9_9_0.initial_margin_on_buy = {}

-- Display: Initial Margin On Buy
moex_spectra_fastgate_fast_v9_9_0.initial_margin_on_buy.display = function(value)
  if value == nil then
    return "Initial Margin On Buy: No Value"
  end

  return "Initial Margin On Buy: "..value
end

-- Dissect: Initial Margin On Buy
moex_spectra_fastgate_fast_v9_9_0.initial_margin_on_buy.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.initial_margin_on_buy.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.initial_margin_on_buy, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.initial_margin_on_buy, range, value, display)
  end

  return offset, value
end

-- Initial Margin On Sell
moex_spectra_fastgate_fast_v9_9_0.initial_margin_on_sell = {}

-- Display: Initial Margin On Sell
moex_spectra_fastgate_fast_v9_9_0.initial_margin_on_sell.display = function(value)
  if value == nil then
    return "Initial Margin On Sell: No Value"
  end

  return "Initial Margin On Sell: "..value
end

-- Dissect: Initial Margin On Sell
moex_spectra_fastgate_fast_v9_9_0.initial_margin_on_sell.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.initial_margin_on_sell.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.initial_margin_on_sell, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.initial_margin_on_sell, range, value, display)
  end

  return offset, value
end

-- Initial Margin Syntetic
moex_spectra_fastgate_fast_v9_9_0.initial_margin_syntetic = {}

-- Display: Initial Margin Syntetic
moex_spectra_fastgate_fast_v9_9_0.initial_margin_syntetic.display = function(value)
  if value == nil then
    return "Initial Margin Syntetic: No Value"
  end

  return "Initial Margin Syntetic: "..value
end

-- Dissect: Initial Margin Syntetic
moex_spectra_fastgate_fast_v9_9_0.initial_margin_syntetic.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.initial_margin_syntetic.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.initial_margin_syntetic, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.initial_margin_syntetic, range, value, display)
  end

  return offset, value
end

-- Quotation List
moex_spectra_fastgate_fast_v9_9_0.quotation_list = {}

-- Dissect: Quotation List
moex_spectra_fastgate_fast_v9_9_0.quotation_list.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.quotation_list, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.quotation_list, range, "")
    absent:set_text("Quotation List: No Value")
  end

  return offset, value
end

-- Theor Price
moex_spectra_fastgate_fast_v9_9_0.theor_price = {}

-- Display: Theor Price
moex_spectra_fastgate_fast_v9_9_0.theor_price.display = function(value)
  if value == nil then
    return "Theor Price: No Value"
  end

  return "Theor Price: "..value
end

-- Dissect: Theor Price
moex_spectra_fastgate_fast_v9_9_0.theor_price.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.theor_price.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.theor_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.theor_price, range, value, display)
  end

  return offset, value
end

-- Theor Price Limit
moex_spectra_fastgate_fast_v9_9_0.theor_price_limit = {}

-- Display: Theor Price Limit
moex_spectra_fastgate_fast_v9_9_0.theor_price_limit.display = function(value)
  if value == nil then
    return "Theor Price Limit: No Value"
  end

  return "Theor Price Limit: "..value
end

-- Dissect: Theor Price Limit
moex_spectra_fastgate_fast_v9_9_0.theor_price_limit.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.theor_price_limit.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.theor_price_limit, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.theor_price_limit, range, value, display)
  end

  return offset, value
end

-- No Legs
moex_spectra_fastgate_fast_v9_9_0.no_legs = {}

-- Dissect: No Legs
moex_spectra_fastgate_fast_v9_9_0.no_legs.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.no_legs, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.no_legs, range, 0)
    absent:set_text("No Legs: No Value")
  end

  return offset, value
end

-- Leg Symbol
moex_spectra_fastgate_fast_v9_9_0.leg_symbol = {}

-- Dissect: Leg Symbol
moex_spectra_fastgate_fast_v9_9_0.leg_symbol.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.leg_symbol, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.leg_symbol, range, "")
    absent:set_text("Leg Symbol: No Value")
  end

  return offset, value
end

-- Leg Security Id
moex_spectra_fastgate_fast_v9_9_0.leg_security_id = {}

-- Dissect: Leg Security Id
moex_spectra_fastgate_fast_v9_9_0.leg_security_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.leg_security_id, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.leg_security_id, range, UInt64(0))
    absent:set_text("Leg Security Id: No Value")
  end

  return offset, value
end

-- Leg Ratio Qty
moex_spectra_fastgate_fast_v9_9_0.leg_ratio_qty = {}

-- Display: Leg Ratio Qty
moex_spectra_fastgate_fast_v9_9_0.leg_ratio_qty.display = function(value)
  if value == nil then
    return "Leg Ratio Qty: No Value"
  end

  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
moex_spectra_fastgate_fast_v9_9_0.leg_ratio_qty.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.leg_ratio_qty.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.leg_ratio_qty, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.leg_ratio_qty, range, value, display)
  end

  return offset, value
end

-- No Instr Attrib (Sent)
moex_spectra_fastgate_fast_v9_9_0.no_instr_attrib_sent_optional = {}

-- Dissect: No Instr Attrib (Sent)
moex_spectra_fastgate_fast_v9_9_0.no_instr_attrib_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.no_instr_attrib, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.no_instr_attrib, range, 0)
    absent:set_text("No Instr Attrib: No Value")
  end

  return offset, value
end

-- No Instr Attrib (Sent)
moex_spectra_fastgate_fast_v9_9_0.no_instr_attrib_sent_required = {}

-- Dissect: No Instr Attrib (Sent)
moex_spectra_fastgate_fast_v9_9_0.no_instr_attrib_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.no_instr_attrib, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.no_instr_attrib, range, 0)
    absent:set_text("No Instr Attrib: No Value")
  end

  return offset, value
end

-- Instr Attrib Type
moex_spectra_fastgate_fast_v9_9_0.instr_attrib_type = {}

-- Dissect: Instr Attrib Type
moex_spectra_fastgate_fast_v9_9_0.instr_attrib_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.instr_attrib_type, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.instr_attrib_type, range, 0)
    absent:set_text("Instr Attrib Type: No Value")
  end

  return offset, value
end

-- Instr Attrib Value
moex_spectra_fastgate_fast_v9_9_0.instr_attrib_value = {}

-- Dissect: Instr Attrib Value
moex_spectra_fastgate_fast_v9_9_0.instr_attrib_value.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.instr_attrib_value, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.instr_attrib_value, range, "")
    absent:set_text("Instr Attrib Value: No Value")
  end

  return offset, value
end

-- Underlying Qty
moex_spectra_fastgate_fast_v9_9_0.underlying_qty = {}

-- Display: Underlying Qty
moex_spectra_fastgate_fast_v9_9_0.underlying_qty.display = function(value)
  if value == nil then
    return "Underlying Qty: No Value"
  end

  return "Underlying Qty: "..value
end

-- Dissect: Underlying Qty
moex_spectra_fastgate_fast_v9_9_0.underlying_qty.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.underlying_qty.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.underlying_qty, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.underlying_qty, range, value, display)
  end

  return offset, value
end

-- Underlying Currency
moex_spectra_fastgate_fast_v9_9_0.underlying_currency = {}

-- Dissect: Underlying Currency
moex_spectra_fastgate_fast_v9_9_0.underlying_currency.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.underlying_currency, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.underlying_currency, range, "")
    absent:set_text("Underlying Currency: No Value")
  end

  return offset, value
end

-- No Events
moex_spectra_fastgate_fast_v9_9_0.no_events = {}

-- Dissect: No Events
moex_spectra_fastgate_fast_v9_9_0.no_events.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.no_events, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.no_events, range, 0)
    absent:set_text("No Events: No Value")
  end

  return offset, value
end

-- Event Type
moex_spectra_fastgate_fast_v9_9_0.event_type = {}

-- Dissect: Event Type
moex_spectra_fastgate_fast_v9_9_0.event_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.event_type, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.event_type, range, 0)
    absent:set_text("Event Type: No Value")
  end

  return offset, value
end

-- Event Date
moex_spectra_fastgate_fast_v9_9_0.event_date = {}

-- Dissect: Event Date
moex_spectra_fastgate_fast_v9_9_0.event_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.event_date, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.event_date, range, 0)
    absent:set_text("Event Date: No Value")
  end

  return offset, value
end

-- Event Time
moex_spectra_fastgate_fast_v9_9_0.event_time = {}

-- Dissect: Event Time
moex_spectra_fastgate_fast_v9_9_0.event_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.event_time, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.event_time, range, UInt64(0))
    absent:set_text("Event Time: No Value")
  end

  return offset, value
end

-- Flags
moex_spectra_fastgate_fast_v9_9_0.flags = {}

-- Dissect: Flags
moex_spectra_fastgate_fast_v9_9_0.flags.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.flags, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.flags, range, Int64(0))
    absent:set_text("Flags: No Value")
  end

  return offset, value
end

-- Min Price Increment Amount Curr
moex_spectra_fastgate_fast_v9_9_0.min_price_increment_amount_curr = {}

-- Display: Min Price Increment Amount Curr
moex_spectra_fastgate_fast_v9_9_0.min_price_increment_amount_curr.display = function(value)
  if value == nil then
    return "Min Price Increment Amount Curr: No Value"
  end

  return "Min Price Increment Amount Curr: "..value
end

-- Dissect: Min Price Increment Amount Curr
moex_spectra_fastgate_fast_v9_9_0.min_price_increment_amount_curr.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.min_price_increment_amount_curr.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.min_price_increment_amount_curr, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.min_price_increment_amount_curr, range, value, display)
  end

  return offset, value
end

-- Settl Price Open
moex_spectra_fastgate_fast_v9_9_0.settl_price_open = {}

-- Display: Settl Price Open
moex_spectra_fastgate_fast_v9_9_0.settl_price_open.display = function(value)
  if value == nil then
    return "Settl Price Open: No Value"
  end

  return "Settl Price Open: "..value
end

-- Dissect: Settl Price Open
moex_spectra_fastgate_fast_v9_9_0.settl_price_open.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.settl_price_open.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.settl_price_open, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.settl_price_open, range, value, display)
  end

  return offset, value
end

-- Valuation Method
moex_spectra_fastgate_fast_v9_9_0.valuation_method = {}

-- Dissect: Valuation Method
moex_spectra_fastgate_fast_v9_9_0.valuation_method.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.valuation_method, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.valuation_method, range, "")
    absent:set_text("Valuation Method: No Value")
  end

  return offset, value
end

-- Risk Free Rate
moex_spectra_fastgate_fast_v9_9_0.risk_free_rate = {}

-- Display: Risk Free Rate
moex_spectra_fastgate_fast_v9_9_0.risk_free_rate.display = function(value)
  if value == nil then
    return "Risk Free Rate: No Value"
  end

  return "Risk Free Rate: "..value
end

-- Dissect: Risk Free Rate
moex_spectra_fastgate_fast_v9_9_0.risk_free_rate.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.risk_free_rate.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.risk_free_rate, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.risk_free_rate, range, value, display)
  end

  return offset, value
end

-- Fixed Spot Discount
moex_spectra_fastgate_fast_v9_9_0.fixed_spot_discount = {}

-- Display: Fixed Spot Discount
moex_spectra_fastgate_fast_v9_9_0.fixed_spot_discount.display = function(value)
  if value == nil then
    return "Fixed Spot Discount: No Value"
  end

  return "Fixed Spot Discount: "..value
end

-- Dissect: Fixed Spot Discount
moex_spectra_fastgate_fast_v9_9_0.fixed_spot_discount.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.fixed_spot_discount.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.fixed_spot_discount, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.fixed_spot_discount, range, value, display)
  end

  return offset, value
end

-- Projected Spot Discount
moex_spectra_fastgate_fast_v9_9_0.projected_spot_discount = {}

-- Display: Projected Spot Discount
moex_spectra_fastgate_fast_v9_9_0.projected_spot_discount.display = function(value)
  if value == nil then
    return "Projected Spot Discount: No Value"
  end

  return "Projected Spot Discount: "..value
end

-- Dissect: Projected Spot Discount
moex_spectra_fastgate_fast_v9_9_0.projected_spot_discount.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.projected_spot_discount.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.projected_spot_discount, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.projected_spot_discount, range, value, display)
  end

  return offset, value
end

-- Settl Currency (Sent)
moex_spectra_fastgate_fast_v9_9_0.settl_currency_sent_optional = {}

-- Dissect: Settl Currency (Sent)
moex_spectra_fastgate_fast_v9_9_0.settl_currency_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.settl_currency, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.settl_currency, range, "")
    absent:set_text("Settl Currency: No Value")
  end

  return offset, value
end

-- Settl Currency (Sent)
moex_spectra_fastgate_fast_v9_9_0.settl_currency_sent_required = {}

-- Dissect: Settl Currency (Sent)
moex_spectra_fastgate_fast_v9_9_0.settl_currency_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.settl_currency, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.settl_currency, range, "")
    absent:set_text("Settl Currency: No Value")
  end

  return offset, value
end

-- Negative Prices
moex_spectra_fastgate_fast_v9_9_0.negative_prices = {}

-- Dissect: Negative Prices
moex_spectra_fastgate_fast_v9_9_0.negative_prices.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.negative_prices, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.negative_prices, range, 0)
    absent:set_text("Negative Prices: No Value")
  end

  return offset, value
end

-- Derivative Contract Multiplier
moex_spectra_fastgate_fast_v9_9_0.derivative_contract_multiplier = {}

-- Dissect: Derivative Contract Multiplier
moex_spectra_fastgate_fast_v9_9_0.derivative_contract_multiplier.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.derivative_contract_multiplier, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.derivative_contract_multiplier, range, 0)
    absent:set_text("Derivative Contract Multiplier: No Value")
  end

  return offset, value
end

-- Interest Rate Risk Up
moex_spectra_fastgate_fast_v9_9_0.interest_rate_risk_up = {}

-- Display: Interest Rate Risk Up
moex_spectra_fastgate_fast_v9_9_0.interest_rate_risk_up.display = function(value)
  if value == nil then
    return "Interest Rate Risk Up: No Value"
  end

  return "Interest Rate Risk Up: "..value
end

-- Dissect: Interest Rate Risk Up
moex_spectra_fastgate_fast_v9_9_0.interest_rate_risk_up.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.interest_rate_risk_up.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.interest_rate_risk_up, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.interest_rate_risk_up, range, value, display)
  end

  return offset, value
end

-- Interest Rate Risk Down
moex_spectra_fastgate_fast_v9_9_0.interest_rate_risk_down = {}

-- Display: Interest Rate Risk Down
moex_spectra_fastgate_fast_v9_9_0.interest_rate_risk_down.display = function(value)
  if value == nil then
    return "Interest Rate Risk Down: No Value"
  end

  return "Interest Rate Risk Down: "..value
end

-- Dissect: Interest Rate Risk Down
moex_spectra_fastgate_fast_v9_9_0.interest_rate_risk_down.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.interest_rate_risk_down.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.interest_rate_risk_down, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.interest_rate_risk_down, range, value, display)
  end

  return offset, value
end

-- Risk Free Rate2
moex_spectra_fastgate_fast_v9_9_0.risk_free_rate2 = {}

-- Display: Risk Free Rate2
moex_spectra_fastgate_fast_v9_9_0.risk_free_rate2.display = function(value)
  if value == nil then
    return "Risk Free Rate2: No Value"
  end

  return "Risk Free Rate2: "..value
end

-- Dissect: Risk Free Rate2
moex_spectra_fastgate_fast_v9_9_0.risk_free_rate2.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.risk_free_rate2.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.risk_free_rate2, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.risk_free_rate2, range, value, display)
  end

  return offset, value
end

-- Interest Rate2 Risk Up
moex_spectra_fastgate_fast_v9_9_0.interest_rate2_risk_up = {}

-- Display: Interest Rate2 Risk Up
moex_spectra_fastgate_fast_v9_9_0.interest_rate2_risk_up.display = function(value)
  if value == nil then
    return "Interest Rate2 Risk Up: No Value"
  end

  return "Interest Rate2 Risk Up: "..value
end

-- Dissect: Interest Rate2 Risk Up
moex_spectra_fastgate_fast_v9_9_0.interest_rate2_risk_up.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.interest_rate2_risk_up.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.interest_rate2_risk_up, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.interest_rate2_risk_up, range, value, display)
  end

  return offset, value
end

-- Interest Rate2 Risk Down
moex_spectra_fastgate_fast_v9_9_0.interest_rate2_risk_down = {}

-- Display: Interest Rate2 Risk Down
moex_spectra_fastgate_fast_v9_9_0.interest_rate2_risk_down.display = function(value)
  if value == nil then
    return "Interest Rate2 Risk Down: No Value"
  end

  return "Interest Rate2 Risk Down: "..value
end

-- Dissect: Interest Rate2 Risk Down
moex_spectra_fastgate_fast_v9_9_0.interest_rate2_risk_down.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.interest_rate2_risk_down.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.interest_rate2_risk_down, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.interest_rate2_risk_down, range, value, display)
  end

  return offset, value
end

-- Settl Price
moex_spectra_fastgate_fast_v9_9_0.settl_price = {}

-- Display: Settl Price
moex_spectra_fastgate_fast_v9_9_0.settl_price.display = function(value)
  if value == nil then
    return "Settl Price: No Value"
  end

  return "Settl Price: "..value
end

-- Dissect: Settl Price
moex_spectra_fastgate_fast_v9_9_0.settl_price.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.settl_price.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.settl_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.settl_price, range, value, display)
  end

  return offset, value
end

-- Trade Mode Id
moex_spectra_fastgate_fast_v9_9_0.trade_mode_id = {}

-- Dissect: Trade Mode Id
moex_spectra_fastgate_fast_v9_9_0.trade_mode_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trade_mode_id, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trade_mode_id, range, 0)
    absent:set_text("Trade Mode Id: No Value")
  end

  return offset, value
end

-- Group Mask
moex_spectra_fastgate_fast_v9_9_0.group_mask = {}

-- Dissect: Group Mask
moex_spectra_fastgate_fast_v9_9_0.group_mask.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.group_mask, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.group_mask, range, Int64(0))
    absent:set_text("Group Mask: No Value")
  end

  return offset, value
end

-- Section Id
moex_spectra_fastgate_fast_v9_9_0.section_id = {}

-- Dissect: Section Id
moex_spectra_fastgate_fast_v9_9_0.section_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.section_id, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.section_id, range, 0)
    absent:set_text("Section Id: No Value")
  end

  return offset, value
end

-- Base Contract Id
moex_spectra_fastgate_fast_v9_9_0.base_contract_id = {}

-- Dissect: Base Contract Id
moex_spectra_fastgate_fast_v9_9_0.base_contract_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.base_contract_id, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.base_contract_id, range, 0)
    absent:set_text("Base Contract Id: No Value")
  end

  return offset, value
end

-- Trade Period Access
moex_spectra_fastgate_fast_v9_9_0.trade_period_access = {}

-- Dissect: Trade Period Access
moex_spectra_fastgate_fast_v9_9_0.trade_period_access.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trade_period_access, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trade_period_access, range, Int64(0))
    absent:set_text("Trade Period Access: No Value")
  end

  return offset, value
end

-- High Limit Px Weekend
moex_spectra_fastgate_fast_v9_9_0.high_limit_px_weekend = {}

-- Display: High Limit Px Weekend
moex_spectra_fastgate_fast_v9_9_0.high_limit_px_weekend.display = function(value)
  if value == nil then
    return "High Limit Px Weekend: No Value"
  end

  return "High Limit Px Weekend: "..value
end

-- Dissect: High Limit Px Weekend
moex_spectra_fastgate_fast_v9_9_0.high_limit_px_weekend.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.high_limit_px_weekend.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.high_limit_px_weekend, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.high_limit_px_weekend, range, value, display)
  end

  return offset, value
end

-- Low Limit Px Weekend
moex_spectra_fastgate_fast_v9_9_0.low_limit_px_weekend = {}

-- Display: Low Limit Px Weekend
moex_spectra_fastgate_fast_v9_9_0.low_limit_px_weekend.display = function(value)
  if value == nil then
    return "Low Limit Px Weekend: No Value"
  end

  return "Low Limit Px Weekend: "..value
end

-- Dissect: Low Limit Px Weekend
moex_spectra_fastgate_fast_v9_9_0.low_limit_px_weekend.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.low_limit_px_weekend.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.low_limit_px_weekend, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.low_limit_px_weekend, range, value, display)
  end

  return offset, value
end

-- Clearing Settl Price
moex_spectra_fastgate_fast_v9_9_0.clearing_settl_price = {}

-- Display: Clearing Settl Price
moex_spectra_fastgate_fast_v9_9_0.clearing_settl_price.display = function(value)
  if value == nil then
    return "Clearing Settl Price: No Value"
  end

  return "Clearing Settl Price: "..value
end

-- Dissect: Clearing Settl Price
moex_spectra_fastgate_fast_v9_9_0.clearing_settl_price.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_spectra_fastgate_fast_v9_9_0.clearing_settl_price.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.clearing_settl_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.clearing_settl_price, range, value, display)
  end

  return offset, value
end

-- No Related Sym
moex_spectra_fastgate_fast_v9_9_0.no_related_sym = {}

-- Dissect: No Related Sym
moex_spectra_fastgate_fast_v9_9_0.no_related_sym.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.no_related_sym, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.no_related_sym, range, 0)
    absent:set_text("No Related Sym: No Value")
  end

  return offset, value
end

-- Security Group Id
moex_spectra_fastgate_fast_v9_9_0.security_group_id = {}

-- Dissect: Security Group Id
moex_spectra_fastgate_fast_v9_9_0.security_group_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_group_id, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_group_id, range, Int64(0))
    absent:set_text("Security Group Id: No Value")
  end

  return offset, value
end

-- Halt Type
moex_spectra_fastgate_fast_v9_9_0.halt_type = {}

-- Dissect: Halt Type
moex_spectra_fastgate_fast_v9_9_0.halt_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.halt_type, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.halt_type, range, 0)
    absent:set_text("Halt Type: No Value")
  end

  return offset, value
end

-- Trade Mode Mask
moex_spectra_fastgate_fast_v9_9_0.trade_mode_mask = {}

-- Dissect: Trade Mode Mask
moex_spectra_fastgate_fast_v9_9_0.trade_mode_mask.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trade_mode_mask, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trade_mode_mask, range, 0)
    absent:set_text("Trade Mode Mask: No Value")
  end

  return offset, value
end

-- Transact Time
moex_spectra_fastgate_fast_v9_9_0.transact_time = {}

-- Dissect: Transact Time
moex_spectra_fastgate_fast_v9_9_0.transact_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.transact_time, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.transact_time, range, UInt64(0))
    absent:set_text("Transact Time: No Value")
  end

  return offset, value
end

-- New Seq No
moex_spectra_fastgate_fast_v9_9_0.new_seq_no = {}

-- Dissect: New Seq No
moex_spectra_fastgate_fast_v9_9_0.new_seq_no.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.new_seq_no, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.new_seq_no, range, 0)
    absent:set_text("New Seq No: No Value")
  end

  return offset, value
end

-- Trad Ses Open Time
moex_spectra_fastgate_fast_v9_9_0.trad_ses_open_time = {}

-- Dissect: Trad Ses Open Time
moex_spectra_fastgate_fast_v9_9_0.trad_ses_open_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trad_ses_open_time, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trad_ses_open_time, range, UInt64(0))
    absent:set_text("Trad Ses Open Time: No Value")
  end

  return offset, value
end

-- Trad Ses Close Time
moex_spectra_fastgate_fast_v9_9_0.trad_ses_close_time = {}

-- Dissect: Trad Ses Close Time
moex_spectra_fastgate_fast_v9_9_0.trad_ses_close_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trad_ses_close_time, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trad_ses_close_time, range, UInt64(0))
    absent:set_text("Trad Ses Close Time: No Value")
  end

  return offset, value
end

-- Trad Ses Status
moex_spectra_fastgate_fast_v9_9_0.trad_ses_status = {}

-- Dissect: Trad Ses Status
moex_spectra_fastgate_fast_v9_9_0.trad_ses_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trad_ses_status, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trad_ses_status, range, 0)
    absent:set_text("Trad Ses Status: No Value")
  end

  return offset, value
end

-- Trad Ses Event
moex_spectra_fastgate_fast_v9_9_0.trad_ses_event = {}

-- Dissect: Trad Ses Event
moex_spectra_fastgate_fast_v9_9_0.trad_ses_event.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trad_ses_event, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trad_ses_event, range, 0)
    absent:set_text("Trad Ses Event: No Value")
  end

  return offset, value
end

-- Trade Period Id
moex_spectra_fastgate_fast_v9_9_0.trade_period_id = {}

-- Dissect: Trade Period Id
moex_spectra_fastgate_fast_v9_9_0.trade_period_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trade_period_id, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trade_period_id, range, Int64(0))
    absent:set_text("Trade Period Id: No Value")
  end

  return offset, value
end

-- Settl Sess Begin
moex_spectra_fastgate_fast_v9_9_0.settl_sess_begin = {}

-- Dissect: Settl Sess Begin
moex_spectra_fastgate_fast_v9_9_0.settl_sess_begin.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.settl_sess_begin, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.settl_sess_begin, range, UInt64(0))
    absent:set_text("Settl Sess Begin: No Value")
  end

  return offset, value
end

-- Clr Sess Begin
moex_spectra_fastgate_fast_v9_9_0.clr_sess_begin = {}

-- Dissect: Clr Sess Begin
moex_spectra_fastgate_fast_v9_9_0.clr_sess_begin.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.clr_sess_begin, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.clr_sess_begin, range, UInt64(0))
    absent:set_text("Clr Sess Begin: No Value")
  end

  return offset, value
end

-- Trad Ses Close Time From
moex_spectra_fastgate_fast_v9_9_0.trad_ses_close_time_from = {}

-- Dissect: Trad Ses Close Time From
moex_spectra_fastgate_fast_v9_9_0.trad_ses_close_time_from.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trad_ses_close_time_from, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trad_ses_close_time_from, range, UInt64(0))
    absent:set_text("Trad Ses Close Time From: No Value")
  end

  return offset, value
end

-- Trad Ses Close Time Till
moex_spectra_fastgate_fast_v9_9_0.trad_ses_close_time_till = {}

-- Dissect: Trad Ses Close Time Till
moex_spectra_fastgate_fast_v9_9_0.trad_ses_close_time_till.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trad_ses_close_time_till, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trad_ses_close_time_till, range, UInt64(0))
    absent:set_text("Trad Ses Close Time Till: No Value")
  end

  return offset, value
end

-- Auction Id
moex_spectra_fastgate_fast_v9_9_0.auction_id = {}

-- Dissect: Auction Id
moex_spectra_fastgate_fast_v9_9_0.auction_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.auction_id, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.auction_id, range, Int64(0))
    absent:set_text("Auction Id: No Value")
  end

  return offset, value
end

-- Event Id Open
moex_spectra_fastgate_fast_v9_9_0.event_id_open = {}

-- Dissect: Event Id Open
moex_spectra_fastgate_fast_v9_9_0.event_id_open.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.event_id_open, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.event_id_open, range, 0)
    absent:set_text("Event Id Open: No Value")
  end

  return offset, value
end

-- Event Id Close
moex_spectra_fastgate_fast_v9_9_0.event_id_close = {}

-- Dissect: Event Id Close
moex_spectra_fastgate_fast_v9_9_0.event_id_close.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.event_id_close, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.event_id_close, range, 0)
    absent:set_text("Event Id Close: No Value")
  end

  return offset, value
end

-- News Id
moex_spectra_fastgate_fast_v9_9_0.news_id = {}

-- Dissect: News Id
moex_spectra_fastgate_fast_v9_9_0.news_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.news_id, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.news_id, range, "")
    absent:set_text("News Id: No Value")
  end

  return offset, value
end

-- Orig Time
moex_spectra_fastgate_fast_v9_9_0.orig_time = {}

-- Dissect: Orig Time
moex_spectra_fastgate_fast_v9_9_0.orig_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.orig_time, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.orig_time, range, UInt64(0))
    absent:set_text("Orig Time: No Value")
  end

  return offset, value
end

-- Language Code
moex_spectra_fastgate_fast_v9_9_0.language_code = {}

-- Dissect: Language Code
moex_spectra_fastgate_fast_v9_9_0.language_code.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.language_code, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.language_code, range, "")
    absent:set_text("Language Code: No Value")
  end

  return offset, value
end

-- Urgency
moex_spectra_fastgate_fast_v9_9_0.urgency = {}

-- Dissect: Urgency
moex_spectra_fastgate_fast_v9_9_0.urgency.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.urgency, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.urgency, range, 0)
    absent:set_text("Urgency: No Value")
  end

  return offset, value
end

-- Headline
moex_spectra_fastgate_fast_v9_9_0.headline = {}

-- Dissect: Headline
moex_spectra_fastgate_fast_v9_9_0.headline.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.headline, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.headline, range, "")
    absent:set_text("Headline: No Value")
  end

  return offset, value
end

-- No Lines Of Text
moex_spectra_fastgate_fast_v9_9_0.no_lines_of_text = {}

-- Dissect: No Lines Of Text
moex_spectra_fastgate_fast_v9_9_0.no_lines_of_text.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.no_lines_of_text, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.no_lines_of_text, range, 0)
    absent:set_text("No Lines Of Text: No Value")
  end

  return offset, value
end

-- Text (Sent)
moex_spectra_fastgate_fast_v9_9_0.text_sent_required = {}

-- Dissect: Text (Sent)
moex_spectra_fastgate_fast_v9_9_0.text_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.text, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.text, range, "")
    absent:set_text("Text: No Value")
  end

  return offset, value
end

-- Text (Sent)
moex_spectra_fastgate_fast_v9_9_0.text_sent_optional = {}

-- Dissect: Text (Sent)
moex_spectra_fastgate_fast_v9_9_0.text_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.text, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.text, range, "")
    absent:set_text("Text: No Value")
  end

  return offset, value
end

-- Last Qty
moex_spectra_fastgate_fast_v9_9_0.last_qty = {}

-- Dissect: Last Qty
moex_spectra_fastgate_fast_v9_9_0.last_qty.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.last_qty, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.last_qty, range, Int64(0))
    absent:set_text("Last Qty: No Value")
  end

  return offset, value
end

-- Trade Id
moex_spectra_fastgate_fast_v9_9_0.trade_id = {}

-- Dissect: Trade Id
moex_spectra_fastgate_fast_v9_9_0.trade_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trade_id, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trade_id, range, Int64(0))
    absent:set_text("Trade Id: No Value")
  end

  return offset, value
end

-- Md Flags2
moex_spectra_fastgate_fast_v9_9_0.md_flags2 = {}

-- Dissect: Md Flags2
moex_spectra_fastgate_fast_v9_9_0.md_flags2.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_flags2, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_flags2, range, Int64(0))
    absent:set_text("Md Flags2: No Value")
  end

  return offset, value
end

-- Route First
moex_spectra_fastgate_fast_v9_9_0.route_first = {}

-- Dissect: Route First
moex_spectra_fastgate_fast_v9_9_0.route_first.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.route_first, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.route_first, range, 0)
    absent:set_text("Route First: No Value")
  end

  return offset, value
end

-- Trade Volume
moex_spectra_fastgate_fast_v9_9_0.trade_volume = {}

-- Dissect: Trade Volume
moex_spectra_fastgate_fast_v9_9_0.trade_volume.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trade_volume, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.trade_volume, range, "")
    absent:set_text("Trade Volume: No Value")
  end

  return offset, value
end

-- In List
moex_spectra_fastgate_fast_v9_9_0.in_list = {}

-- Dissect: In List
moex_spectra_fastgate_fast_v9_9_0.in_list.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.in_list, range, value)
  else
    local absent = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.in_list, range, "")
    absent:set_text("In List: No Value")
  end

  return offset, value
end


-----------------------------------------------------------------------
-- Dissect Moex Spectra FastGate Fast 9.9.0
-----------------------------------------------------------------------

-- Logout Message
moex_spectra_fastgate_fast_v9_9_0.logout = {}

-- Dissect Fields: Logout Message
moex_spectra_fastgate_fast_v9_9_0.logout.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.message_type_constant_5.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Text: string, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.text_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Logout Message
moex_spectra_fastgate_fast_v9_9_0.logout.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_spectra_fastgate_fast_v9_9_0.logout.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Logon Message
moex_spectra_fastgate_fast_v9_9_0.logon = {}

-- Dissect Fields: Logon Message
moex_spectra_fastgate_fast_v9_9_0.logon.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.message_type_constant_a.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Logon Message
moex_spectra_fastgate_fast_v9_9_0.logon.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_spectra_fastgate_fast_v9_9_0.logon.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Instrument Attributes
moex_spectra_fastgate_fast_v9_9_0.instrument_attributes = {}

-- Dissect Fields: Instrument Attributes
moex_spectra_fastgate_fast_v9_9_0.instrument_attributes.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Instr Attrib Type: int32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.instr_attrib_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Instr Attrib Value: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.instr_attrib_value.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Instrument Attributes
moex_spectra_fastgate_fast_v9_9_0.instrument_attributes.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.instrument_attributes, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = moex_spectra_fastgate_fast_v9_9_0.instrument_attributes.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Feed Types
moex_spectra_fastgate_fast_v9_9_0.md_feed_types = {}

-- Dissect Fields: Md Feed Types
moex_spectra_fastgate_fast_v9_9_0.md_feed_types.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Feed Type: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_feed_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Depth: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.market_depth.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Book Type: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_book_type.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md Feed Types
moex_spectra_fastgate_fast_v9_9_0.md_feed_types.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_feed_types, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = moex_spectra_fastgate_fast_v9_9_0.md_feed_types.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Otc Monitor Security Definition Message
moex_spectra_fastgate_fast_v9_9_0.otc_monitor_security_definition = {}

-- Dissect Fields: Otc Monitor Security Definition Message
moex_spectra_fastgate_fast_v9_9_0.otc_monitor_security_definition.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.message_type_constant_d.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Tot Num Reports: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.tot_num_reports.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.symbol_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Desc: string, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_desc.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Alt Id: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_alt_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Alt Id Source: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_alt_id_source_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Cfi Code: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.cfi_code_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.market_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Segment Id: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.market_segment_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Feed Types: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.no_md_feed_types.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Feed Types: No Md Feed Types entries
  local count = value or 0
  for md_feed_types_index = 1, count do
    index = moex_spectra_fastgate_fast_v9_9_0.md_feed_types.dissect(buffer, index, packet, parent, presence_map, base, state, md_feed_types_index)
  end

  -- No Instr Attrib: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.no_instr_attrib_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Instrument Attributes: No Instr Attrib entries
  local count = value or 0
  for instrument_attributes_index = 1, count do
    index = moex_spectra_fastgate_fast_v9_9_0.instrument_attributes.dissect(buffer, index, packet, parent, presence_map, base, state, instrument_attributes_index)
  end

  -- Underlying Qty: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.underlying_qty.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Underlying Currency: string, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.underlying_currency.dissect(buffer, index, packet, parent, nil, state, nil)

  -- In List: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.in_list.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Otc Monitor Security Definition Message
moex_spectra_fastgate_fast_v9_9_0.otc_monitor_security_definition.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_spectra_fastgate_fast_v9_9_0.otc_monitor_security_definition.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Otc Monitor Snapshot Message Md Entries
moex_spectra_fastgate_fast_v9_9_0.otc_monitor_snapshot_message_md_entries = {}

-- Dissect Fields: Otc Monitor Snapshot Message Md Entries
moex_spectra_fastgate_fast_v9_9_0.otc_monitor_snapshot_message_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_update_action.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Type: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Id: int64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Px: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_px_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Date: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Time: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Size: int64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_size_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Currency: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.currency_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Side: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.order_side_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Currency: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.settl_currency_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Cfi Code: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.cfi_code_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Volume: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.trade_volume.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Otc Monitor Snapshot Message Md Entries
moex_spectra_fastgate_fast_v9_9_0.otc_monitor_snapshot_message_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.otc_monitor_snapshot_message_md_entries, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = moex_spectra_fastgate_fast_v9_9_0.otc_monitor_snapshot_message_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Otc Monitor Snapshot Message Message
moex_spectra_fastgate_fast_v9_9_0.otc_monitor_snapshot_message = {}

-- Dissect Fields: Otc Monitor Snapshot Message Message
moex_spectra_fastgate_fast_v9_9_0.otc_monitor_snapshot_message.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.message_type_constant_w.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Fragment: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.last_fragment_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Rpt Seq: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.rpt_seq_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Tot Num Reports: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.tot_num_reports.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.last_msg_seq_num_processed.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.symbol_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Group: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_group_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for otc_monitor_snapshot_message_md_entries_index = 1, count do
    index = moex_spectra_fastgate_fast_v9_9_0.otc_monitor_snapshot_message_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, otc_monitor_snapshot_message_md_entries_index)
  end

  return index
end

-- Dissect: Otc Monitor Snapshot Message Message
moex_spectra_fastgate_fast_v9_9_0.otc_monitor_snapshot_message.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_spectra_fastgate_fast_v9_9_0.otc_monitor_snapshot_message.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Otc Monitor Incremental Refresh Message Md Entries
moex_spectra_fastgate_fast_v9_9_0.otc_monitor_incremental_refresh_message_md_entries = {}

-- Dissect Fields: Otc Monitor Incremental Refresh Message Md Entries
moex_spectra_fastgate_fast_v9_9_0.otc_monitor_incremental_refresh_message_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_update_action.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Type: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.symbol_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Group: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_group_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Rpt Seq: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.rpt_seq_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Id: int64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Px: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_px_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Size: int64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_size_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Date: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Time: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Currency: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.currency_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Revision: uInt64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.revision.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Side: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.order_side_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Currency: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.settl_currency_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Cfi Code: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.cfi_code_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Volume: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.trade_volume.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Otc Monitor Incremental Refresh Message Md Entries
moex_spectra_fastgate_fast_v9_9_0.otc_monitor_incremental_refresh_message_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.otc_monitor_incremental_refresh_message_md_entries, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = moex_spectra_fastgate_fast_v9_9_0.otc_monitor_incremental_refresh_message_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Otc Monitor Incremental Refresh Message Message
moex_spectra_fastgate_fast_v9_9_0.otc_monitor_incremental_refresh_message = {}

-- Dissect Fields: Otc Monitor Incremental Refresh Message Message
moex_spectra_fastgate_fast_v9_9_0.otc_monitor_incremental_refresh_message.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Fragment: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.last_fragment_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for otc_monitor_incremental_refresh_message_md_entries_index = 1, count do
    index = moex_spectra_fastgate_fast_v9_9_0.otc_monitor_incremental_refresh_message_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, otc_monitor_incremental_refresh_message_md_entries_index)
  end

  return index
end

-- Dissect: Otc Monitor Incremental Refresh Message Message
moex_spectra_fastgate_fast_v9_9_0.otc_monitor_incremental_refresh_message.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_spectra_fastgate_fast_v9_9_0.otc_monitor_incremental_refresh_message.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Book Message Md Entries
moex_spectra_fastgate_fast_v9_9_0.book_message_md_entries = {}

-- Dissect Fields: Book Message Md Entries
moex_spectra_fastgate_fast_v9_9_0.book_message_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Entry Type: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Id: int64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Date: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Time: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Px: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_px_sent_optional.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Md Entry Size: int64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_size_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Id: int64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.trade_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Flags: int64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_flags_sent_optional_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Flags2: int64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_flags2.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Book Message Md Entries
moex_spectra_fastgate_fast_v9_9_0.book_message_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.book_message_md_entries, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = moex_spectra_fastgate_fast_v9_9_0.book_message_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Book Message Message
moex_spectra_fastgate_fast_v9_9_0.book_message = {}

-- Dissect Fields: Book Message Message
moex_spectra_fastgate_fast_v9_9_0.book_message.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.message_type_constant_w.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.last_msg_seq_num_processed.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Rpt Seq: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.rpt_seq_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Fragment: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.last_fragment_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Route First: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.route_first.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Exchange Trading Session Id: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.exchange_trading_session_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for book_message_md_entries_index = 1, count do
    index = moex_spectra_fastgate_fast_v9_9_0.book_message_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, book_message_md_entries_index)
  end

  return index
end

-- Dissect: Book Message Message
moex_spectra_fastgate_fast_v9_9_0.book_message.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_spectra_fastgate_fast_v9_9_0.book_message.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Orders Log Message Md Entries
moex_spectra_fastgate_fast_v9_9_0.orders_log_message_md_entries = {}

-- Dissect Fields: Orders Log Message Md Entries
moex_spectra_fastgate_fast_v9_9_0.orders_log_message_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_update_action.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Type: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Id: int64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Rpt Seq: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.rpt_seq_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Date: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Time: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Px: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_px_sent_optional.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Md Entry Size: int64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_size_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Px: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.last_px.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Last Qty: int64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.last_qty.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Id: int64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.trade_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Exchange Trading Session Id: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.exchange_trading_session_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Flags: int64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_flags_sent_optional_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Flags2: int64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_flags2.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Revision: uInt64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.revision.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Orders Log Message Md Entries
moex_spectra_fastgate_fast_v9_9_0.orders_log_message_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.orders_log_message_md_entries, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = moex_spectra_fastgate_fast_v9_9_0.orders_log_message_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Orders Log Message Message
moex_spectra_fastgate_fast_v9_9_0.orders_log_message = {}

-- Dissect Fields: Orders Log Message Message
moex_spectra_fastgate_fast_v9_9_0.orders_log_message.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Fragment: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.last_fragment_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for orders_log_message_md_entries_index = 1, count do
    index = moex_spectra_fastgate_fast_v9_9_0.orders_log_message_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, orders_log_message_md_entries_index)
  end

  return index
end

-- Dissect: Orders Log Message Message
moex_spectra_fastgate_fast_v9_9_0.orders_log_message.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_spectra_fastgate_fast_v9_9_0.orders_log_message.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- News Text
moex_spectra_fastgate_fast_v9_9_0.news_text = {}

-- Dissect Fields: News Text
moex_spectra_fastgate_fast_v9_9_0.news_text.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Text: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.text_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: News Text
moex_spectra_fastgate_fast_v9_9_0.news_text.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.news_text, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = moex_spectra_fastgate_fast_v9_9_0.news_text.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- News Message
moex_spectra_fastgate_fast_v9_9_0.news = {}

-- Dissect Fields: News Message
moex_spectra_fastgate_fast_v9_9_0.news.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.message_type_constant_b.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Fragment: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.last_fragment_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- News Id: string, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.news_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Orig Time: uInt64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.orig_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Language Code: string, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.language_code.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Urgency: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.urgency.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Headline: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.headline.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.market_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Segment Id: string, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.market_segment_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Lines Of Text: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.no_lines_of_text.dissect(buffer, index, packet, parent, nil, state, nil)

  -- News Text: No Lines Of Text entries
  local count = value or 0
  for news_text_index = 1, count do
    index = moex_spectra_fastgate_fast_v9_9_0.news_text.dissect(buffer, index, packet, parent, presence_map, base, state, news_text_index)
  end

  return index
end

-- Dissect: News Message
moex_spectra_fastgate_fast_v9_9_0.news.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_spectra_fastgate_fast_v9_9_0.news.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Discrete Auction Underlyings
moex_spectra_fastgate_fast_v9_9_0.discrete_auction_underlyings = {}

-- Dissect Fields: Discrete Auction Underlyings
moex_spectra_fastgate_fast_v9_9_0.discrete_auction_underlyings.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Underlying Symbol: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.underlying_symbol.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Discrete Auction Underlyings
moex_spectra_fastgate_fast_v9_9_0.discrete_auction_underlyings.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.discrete_auction_underlyings, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = moex_spectra_fastgate_fast_v9_9_0.discrete_auction_underlyings.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Discrete Auction Message
moex_spectra_fastgate_fast_v9_9_0.discrete_auction = {}

-- Dissect Fields: Discrete Auction Message
moex_spectra_fastgate_fast_v9_9_0.discrete_auction.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.message_type_constant_u1.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trad Ses Open Time: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.trad_ses_open_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trad Ses Close Time From: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.trad_ses_close_time_from.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trad Ses Close Time Till: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.trad_ses_close_time_till.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Auction Id: int64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.auction_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Exchange Trading Session Id: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.exchange_trading_session_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Event Id Open: int32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.event_id_open.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Event Id Close: int32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.event_id_close.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Underlyings: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.no_underlyings.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlyings: No Underlyings entries
  local count = value or 0
  for discrete_auction_underlyings_index = 1, count do
    index = moex_spectra_fastgate_fast_v9_9_0.discrete_auction_underlyings.dissect(buffer, index, packet, parent, presence_map, base, state, discrete_auction_underlyings_index)
  end

  -- Trade Period Id: int64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.trade_period_id.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Discrete Auction Message
moex_spectra_fastgate_fast_v9_9_0.discrete_auction.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_spectra_fastgate_fast_v9_9_0.discrete_auction.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Trading Session Status Message
moex_spectra_fastgate_fast_v9_9_0.trading_session_status = {}

-- Dissect Fields: Trading Session Status Message
moex_spectra_fastgate_fast_v9_9_0.trading_session_status.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.message_type_constant_h.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trad Ses Open Time: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.trad_ses_open_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trad Ses Close Time: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.trad_ses_close_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Id: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.trading_session_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Exchange Trading Session Id: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.exchange_trading_session_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trad Ses Status: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.trad_ses_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.market_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Segment Id: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.market_segment_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trad Ses Event: int32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.trad_ses_event.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Period Id: int64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.trade_period_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Sess Begin: uInt64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.settl_sess_begin.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Clr Sess Begin: uInt64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.clr_sess_begin.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Trading Session Status Message
moex_spectra_fastgate_fast_v9_9_0.trading_session_status.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_spectra_fastgate_fast_v9_9_0.trading_session_status.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Sequence Reset Message
moex_spectra_fastgate_fast_v9_9_0.sequence_reset = {}

-- Dissect Fields: Sequence Reset Message
moex_spectra_fastgate_fast_v9_9_0.sequence_reset.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.message_type_constant_4.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- New Seq No: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.new_seq_no.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Sequence Reset Message
moex_spectra_fastgate_fast_v9_9_0.sequence_reset.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_spectra_fastgate_fast_v9_9_0.sequence_reset.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Heartbeat Message
moex_spectra_fastgate_fast_v9_9_0.heartbeat = {}

-- Dissect Fields: Heartbeat Message
moex_spectra_fastgate_fast_v9_9_0.heartbeat.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.message_type_constant_0.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Heartbeat Message
moex_spectra_fastgate_fast_v9_9_0.heartbeat.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_spectra_fastgate_fast_v9_9_0.heartbeat.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Security Group Status Message
moex_spectra_fastgate_fast_v9_9_0.security_group_status = {}

-- Dissect Fields: Security Group Status Message
moex_spectra_fastgate_fast_v9_9_0.security_group_status.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.message_type_constant_f.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Group Id: int64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_group_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Halt Type: int32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.halt_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Mode Mask: int32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.trade_mode_mask.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Group Mask: int64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.group_mask.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Section Id: int32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.section_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Base Contract Id: int32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.base_contract_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Status: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_trading_status_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Transact Time: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.transact_time.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Security Group Status Message
moex_spectra_fastgate_fast_v9_9_0.security_group_status.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_spectra_fastgate_fast_v9_9_0.security_group_status.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Sec Mass Stat Grp
moex_spectra_fastgate_fast_v9_9_0.sec_mass_stat_grp = {}

-- Dissect Fields: Sec Mass Stat Grp
moex_spectra_fastgate_fast_v9_9_0.sec_mass_stat_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security Id: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Status: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_trading_status_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Sec Mass Stat Grp
moex_spectra_fastgate_fast_v9_9_0.sec_mass_stat_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.sec_mass_stat_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = moex_spectra_fastgate_fast_v9_9_0.sec_mass_stat_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Security Mass Status Message
moex_spectra_fastgate_fast_v9_9_0.security_mass_status = {}

-- Dissect Fields: Security Mass Status Message
moex_spectra_fastgate_fast_v9_9_0.security_mass_status.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.message_type_constant_co.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Fragment: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.last_fragment_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Related Sym: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.no_related_sym.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sec Mass Stat Grp: No Related Sym entries
  local count = value or 0
  for sec_mass_stat_grp_index = 1, count do
    index = moex_spectra_fastgate_fast_v9_9_0.sec_mass_stat_grp.dissect(buffer, index, packet, parent, presence_map, base, state, sec_mass_stat_grp_index)
  end

  return index
end

-- Dissect: Security Mass Status Message
moex_spectra_fastgate_fast_v9_9_0.security_mass_status.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_spectra_fastgate_fast_v9_9_0.security_mass_status.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Security Status Message
moex_spectra_fastgate_fast_v9_9_0.security_status = {}

-- Dissect Fields: Security Status Message
moex_spectra_fastgate_fast_v9_9_0.security_status.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.message_type_constant_f.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.symbol_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Status: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_trading_status_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- High Limit Px: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.high_limit_px.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Low Limit Px: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.low_limit_px.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Initial Margin On Buy: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.initial_margin_on_buy.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Initial Margin On Sell: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.initial_margin_on_sell.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Initial Margin Syntetic: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.initial_margin_syntetic.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- High Limit Px Weekend: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.high_limit_px_weekend.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Low Limit Px Weekend: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.low_limit_px_weekend.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  return index
end

-- Dissect: Security Status Message
moex_spectra_fastgate_fast_v9_9_0.security_status.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_spectra_fastgate_fast_v9_9_0.security_status.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Security Definition Update Report Message
moex_spectra_fastgate_fast_v9_9_0.security_definition_update_report = {}

-- Dissect Fields: Security Definition Update Report Message
moex_spectra_fastgate_fast_v9_9_0.security_definition_update_report.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.message_type_constant_bp.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Volatility: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.volatility.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Theor Price: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.theor_price.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Theor Price Limit: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.theor_price_limit.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  return index
end

-- Dissect: Security Definition Update Report Message
moex_spectra_fastgate_fast_v9_9_0.security_definition_update_report.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_spectra_fastgate_fast_v9_9_0.security_definition_update_report.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Evnt Grp
moex_spectra_fastgate_fast_v9_9_0.evnt_grp = {}

-- Dissect Fields: Evnt Grp
moex_spectra_fastgate_fast_v9_9_0.evnt_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Event Type: int32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.event_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Event Date: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.event_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Event Time: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.event_time.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Evnt Grp
moex_spectra_fastgate_fast_v9_9_0.evnt_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.evnt_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = moex_spectra_fastgate_fast_v9_9_0.evnt_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Attributes
moex_spectra_fastgate_fast_v9_9_0.instrument_attributes = {}

-- Dissect Fields: Instrument Attributes
moex_spectra_fastgate_fast_v9_9_0.instrument_attributes.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Instr Attrib Type: int32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.instr_attrib_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Instr Attrib Value: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.instr_attrib_value.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Instrument Attributes
moex_spectra_fastgate_fast_v9_9_0.instrument_attributes.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.instrument_attributes, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = moex_spectra_fastgate_fast_v9_9_0.instrument_attributes.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Legs
moex_spectra_fastgate_fast_v9_9_0.instrument_legs = {}

-- Dissect Fields: Instrument Legs
moex_spectra_fastgate_fast_v9_9_0.instrument_legs.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Leg Symbol: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.leg_symbol.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Security Id: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.leg_security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Ratio Qty: decimal, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.leg_ratio_qty.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  return index
end

-- Dissect: Instrument Legs
moex_spectra_fastgate_fast_v9_9_0.instrument_legs.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.instrument_legs, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = moex_spectra_fastgate_fast_v9_9_0.instrument_legs.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Security Definition Underlyings
moex_spectra_fastgate_fast_v9_9_0.security_definition_underlyings = {}

-- Dissect Fields: Security Definition Underlyings
moex_spectra_fastgate_fast_v9_9_0.security_definition_underlyings.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Underlying Symbol: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.underlying_symbol.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Board: string, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.underlying_board.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Security Id: uInt64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.underlying_security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Future Id: uInt64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.underlying_future_id.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Security Definition Underlyings
moex_spectra_fastgate_fast_v9_9_0.security_definition_underlyings.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_definition_underlyings, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = moex_spectra_fastgate_fast_v9_9_0.security_definition_underlyings.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Feed Types
moex_spectra_fastgate_fast_v9_9_0.md_feed_types = {}

-- Dissect Fields: Md Feed Types
moex_spectra_fastgate_fast_v9_9_0.md_feed_types.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Feed Type: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_feed_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Depth: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.market_depth.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Book Type: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_book_type.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md Feed Types
moex_spectra_fastgate_fast_v9_9_0.md_feed_types.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.md_feed_types, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = moex_spectra_fastgate_fast_v9_9_0.md_feed_types.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Security Definition Message
moex_spectra_fastgate_fast_v9_9_0.security_definition = {}

-- Dissect Fields: Security Definition Message
moex_spectra_fastgate_fast_v9_9_0.security_definition.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.message_type_constant_d.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Tot Num Reports: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.tot_num_reports.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.symbol_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Desc: string, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_desc.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Alt Id: string, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_alt_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Alt Id Source: string, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_alt_id_source_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Type: string, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Cfi Code: string, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.cfi_code_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Strike Price: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.strike_price.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Contract Multiplier: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.contract_multiplier.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Security Trading Status: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_trading_status_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Currency: string, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.currency_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.market_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Segment Id: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.market_segment_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Id: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.trading_session_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Exchange Trading Session Id: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.exchange_trading_session_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Volatility: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.volatility.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- No Md Feed Types: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.no_md_feed_types.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Feed Types: No Md Feed Types entries
  local count = value or 0
  for md_feed_types_index = 1, count do
    index = moex_spectra_fastgate_fast_v9_9_0.md_feed_types.dissect(buffer, index, packet, parent, presence_map, base, state, md_feed_types_index)
  end

  -- No Underlyings: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.no_underlyings.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlyings: No Underlyings entries
  local count = value or 0
  for security_definition_underlyings_index = 1, count do
    index = moex_spectra_fastgate_fast_v9_9_0.security_definition_underlyings.dissect(buffer, index, packet, parent, presence_map, base, state, security_definition_underlyings_index)
  end

  -- High Limit Px: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.high_limit_px.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Low Limit Px: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.low_limit_px.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Min Price Increment: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.min_price_increment.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Min Price Increment Amount: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.min_price_increment_amount.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Initial Margin On Buy: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.initial_margin_on_buy.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Initial Margin On Sell: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.initial_margin_on_sell.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Initial Margin Syntetic: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.initial_margin_syntetic.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Quotation List: string, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.quotation_list.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Theor Price: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.theor_price.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Theor Price Limit: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.theor_price_limit.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- No Legs: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.no_legs.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Instrument Legs: No Legs entries
  local count = value or 0
  for instrument_legs_index = 1, count do
    index = moex_spectra_fastgate_fast_v9_9_0.instrument_legs.dissect(buffer, index, packet, parent, presence_map, base, state, instrument_legs_index)
  end

  -- No Instr Attrib: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.no_instr_attrib_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Instrument Attributes: No Instr Attrib entries
  local count = value or 0
  for instrument_attributes_index = 1, count do
    index = moex_spectra_fastgate_fast_v9_9_0.instrument_attributes.dissect(buffer, index, packet, parent, presence_map, base, state, instrument_attributes_index)
  end

  -- Underlying Qty: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.underlying_qty.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Underlying Currency: string, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.underlying_currency.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Events: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.no_events.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Evnt Grp: No Events entries
  local count = value or 0
  for evnt_grp_index = 1, count do
    index = moex_spectra_fastgate_fast_v9_9_0.evnt_grp.dissect(buffer, index, packet, parent, presence_map, base, state, evnt_grp_index)
  end

  -- Flags: int64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.flags.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Min Price Increment Amount Curr: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.min_price_increment_amount_curr.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Settl Price Open: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.settl_price_open.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Valuation Method: string, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.valuation_method.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Risk Free Rate: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.risk_free_rate.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Fixed Spot Discount: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.fixed_spot_discount.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Projected Spot Discount: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.projected_spot_discount.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Settl Currency: string, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.settl_currency_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Negative Prices: int32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.negative_prices.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Derivative Contract Multiplier: int32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.derivative_contract_multiplier.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Interest Rate Risk Up: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.interest_rate_risk_up.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Interest Rate Risk Down: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.interest_rate_risk_down.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Risk Free Rate2: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.risk_free_rate2.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Interest Rate2 Risk Up: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.interest_rate2_risk_up.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Interest Rate2 Risk Down: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.interest_rate2_risk_down.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Settl Price: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.settl_price.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Trade Mode Id: int32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.trade_mode_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Group Mask: int64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.group_mask.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Section Id: int32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.section_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Base Contract Id: int32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.base_contract_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Period Access: int64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.trade_period_access.dissect(buffer, index, packet, parent, nil, state, nil)

  -- High Limit Px Weekend: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.high_limit_px_weekend.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Low Limit Px Weekend: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.low_limit_px_weekend.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Clearing Settl Price: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.clearing_settl_price.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  return index
end

-- Dissect: Security Definition Message
moex_spectra_fastgate_fast_v9_9_0.security_definition.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_spectra_fastgate_fast_v9_9_0.security_definition.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Default Snapshot Message Md Entries
moex_spectra_fastgate_fast_v9_9_0.default_snapshot_message_md_entries = {}

-- Dissect Fields: Default Snapshot Message Md Entries
moex_spectra_fastgate_fast_v9_9_0.default_snapshot_message_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Entry Type: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Exchange Trading Session Id: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.exchange_trading_session_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Id: int64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Depth: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.market_depth.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Px: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_px_sent_optional.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Md Entry Date: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Time: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Size: int64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_size_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Price Level: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_price_level.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Number Of Orders: int32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.number_of_orders.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Trade Type: string, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_trade_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trd Type: int32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.trd_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Flags: int32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_flags_sent_optional_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Currency: string, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.currency_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Side: string, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.order_side_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Synthetic Size: int64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_synthetic_size.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Index Cross Rate: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.index_cross_rate.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Trading Session Sub Id: string, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.trading_session_sub_id.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Default Snapshot Message Md Entries
moex_spectra_fastgate_fast_v9_9_0.default_snapshot_message_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.default_snapshot_message_md_entries, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = moex_spectra_fastgate_fast_v9_9_0.default_snapshot_message_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Default Snapshot Message Message
moex_spectra_fastgate_fast_v9_9_0.default_snapshot_message = {}

-- Dissect Fields: Default Snapshot Message Message
moex_spectra_fastgate_fast_v9_9_0.default_snapshot_message.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.message_type_constant_w.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Fragment: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.last_fragment_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Rpt Seq: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.rpt_seq_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Tot Num Reports: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.tot_num_reports.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.last_msg_seq_num_processed.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.symbol_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Group: string, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_group_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for default_snapshot_message_md_entries_index = 1, count do
    index = moex_spectra_fastgate_fast_v9_9_0.default_snapshot_message_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, default_snapshot_message_md_entries_index)
  end

  return index
end

-- Dissect: Default Snapshot Message Message
moex_spectra_fastgate_fast_v9_9_0.default_snapshot_message.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_spectra_fastgate_fast_v9_9_0.default_snapshot_message.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Default Incremental Refresh Message Md Entries
moex_spectra_fastgate_fast_v9_9_0.default_incremental_refresh_message_md_entries = {}

-- Dissect Fields: Default Incremental Refresh Message Md Entries
moex_spectra_fastgate_fast_v9_9_0.default_incremental_refresh_message_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_update_action.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Type: string, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.symbol_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Group: string, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.security_group_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Exchange Trading Session Id: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.exchange_trading_session_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Rpt Seq: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.rpt_seq_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Depth: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.market_depth.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Price Level: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_price_level.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Id: int64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Px: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_px_sent_optional.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Md Entry Size: int64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_size_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Date: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Time: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Number Of Orders: int32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.number_of_orders.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Trade Type: string, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_trade_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trd Type: int32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.trd_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Px: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.last_px.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Md Flags: int32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_flags_sent_optional_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Currency: string, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.currency_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Revision: uInt64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.revision.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Side: string, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.order_side_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Synthetic Size: int64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.md_entry_synthetic_size.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Open Interest: int64, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.open_interest.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Index Cross Rate: decimal, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.index_cross_rate.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Trading Session Sub Id: string, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.trading_session_sub_id.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Default Incremental Refresh Message Md Entries
moex_spectra_fastgate_fast_v9_9_0.default_incremental_refresh_message_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.default_incremental_refresh_message_md_entries, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = moex_spectra_fastgate_fast_v9_9_0.default_incremental_refresh_message_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Default Incremental Refresh Message Message
moex_spectra_fastgate_fast_v9_9_0.default_incremental_refresh_message = {}

-- Dissect Fields: Default Incremental Refresh Message Message
moex_spectra_fastgate_fast_v9_9_0.default_incremental_refresh_message.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_spectra_fastgate_fast_v9_9_0.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Fragment: uInt32, sent, optional
  index, value = moex_spectra_fastgate_fast_v9_9_0.last_fragment_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = moex_spectra_fastgate_fast_v9_9_0.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for default_incremental_refresh_message_md_entries_index = 1, count do
    index = moex_spectra_fastgate_fast_v9_9_0.default_incremental_refresh_message_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, default_incremental_refresh_message_md_entries_index)
  end

  return index
end

-- Dissect: Default Incremental Refresh Message Message
moex_spectra_fastgate_fast_v9_9_0.default_incremental_refresh_message.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_spectra_fastgate_fast_v9_9_0.default_incremental_refresh_message.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Moex Spectra FastGate Fast 9.9.0 Message Dispatch
moex_spectra_fastgate_fast_v9_9_0.messages = {
  [31] = moex_spectra_fastgate_fast_v9_9_0.default_incremental_refresh_message.dissect,
  [32] = moex_spectra_fastgate_fast_v9_9_0.default_snapshot_message.dissect,
  [47] = moex_spectra_fastgate_fast_v9_9_0.security_definition.dissect,
  [4] = moex_spectra_fastgate_fast_v9_9_0.security_definition_update_report.dissect,
  [48] = moex_spectra_fastgate_fast_v9_9_0.security_status.dissect,
  [37] = moex_spectra_fastgate_fast_v9_9_0.security_mass_status.dissect,
  [45] = moex_spectra_fastgate_fast_v9_9_0.security_group_status.dissect,
  [6] = moex_spectra_fastgate_fast_v9_9_0.heartbeat.dissect,
  [7] = moex_spectra_fastgate_fast_v9_9_0.sequence_reset.dissect,
  [46] = moex_spectra_fastgate_fast_v9_9_0.trading_session_status.dissect,
  [42] = moex_spectra_fastgate_fast_v9_9_0.discrete_auction.dissect,
  [9] = moex_spectra_fastgate_fast_v9_9_0.news.dissect,
  [29] = moex_spectra_fastgate_fast_v9_9_0.orders_log_message.dissect,
  [30] = moex_spectra_fastgate_fast_v9_9_0.book_message.dissect,
  [33] = moex_spectra_fastgate_fast_v9_9_0.otc_monitor_incremental_refresh_message.dissect,
  [34] = moex_spectra_fastgate_fast_v9_9_0.otc_monitor_snapshot_message.dissect,
  [35] = moex_spectra_fastgate_fast_v9_9_0.otc_monitor_security_definition.dissect,
  [1000] = moex_spectra_fastgate_fast_v9_9_0.logon.dissect,
  [1001] = moex_spectra_fastgate_fast_v9_9_0.logout.dissect,
}

-- Moex Spectra FastGate Fast 9.9.0 Message Nodes
moex_spectra_fastgate_fast_v9_9_0.message_fields = {
  [31] = omi_moex_spectra_fastgate_fast_v9_9_0.fields.default_incremental_refresh_message,
  [32] = omi_moex_spectra_fastgate_fast_v9_9_0.fields.default_snapshot_message,
  [47] = omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_definition,
  [4] = omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_definition_update_report,
  [48] = omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_status,
  [37] = omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_mass_status,
  [45] = omi_moex_spectra_fastgate_fast_v9_9_0.fields.security_group_status,
  [6] = omi_moex_spectra_fastgate_fast_v9_9_0.fields.heartbeat,
  [7] = omi_moex_spectra_fastgate_fast_v9_9_0.fields.sequence_reset,
  [46] = omi_moex_spectra_fastgate_fast_v9_9_0.fields.trading_session_status,
  [42] = omi_moex_spectra_fastgate_fast_v9_9_0.fields.discrete_auction,
  [9] = omi_moex_spectra_fastgate_fast_v9_9_0.fields.news,
  [29] = omi_moex_spectra_fastgate_fast_v9_9_0.fields.orders_log_message,
  [30] = omi_moex_spectra_fastgate_fast_v9_9_0.fields.book_message,
  [33] = omi_moex_spectra_fastgate_fast_v9_9_0.fields.otc_monitor_incremental_refresh_message,
  [34] = omi_moex_spectra_fastgate_fast_v9_9_0.fields.otc_monitor_snapshot_message,
  [35] = omi_moex_spectra_fastgate_fast_v9_9_0.fields.otc_monitor_security_definition,
  [1000] = omi_moex_spectra_fastgate_fast_v9_9_0.fields.logon,
  [1001] = omi_moex_spectra_fastgate_fast_v9_9_0.fields.logout,
}

-- Moex Spectra FastGate Fast 9.9.0 Template Names
moex_spectra_fastgate_fast_v9_9_0.template_id = {}

-- Display: Template Id
moex_spectra_fastgate_fast_v9_9_0.template_id.display = function(value)
  if value == 31 then
    return "Template Id: DefaultIncrementalRefreshMessage (31)"
  end
  if value == 32 then
    return "Template Id: DefaultSnapshotMessage (32)"
  end
  if value == 47 then
    return "Template Id: SecurityDefinition (47)"
  end
  if value == 4 then
    return "Template Id: SecurityDefinitionUpdateReport (4)"
  end
  if value == 48 then
    return "Template Id: SecurityStatus (48)"
  end
  if value == 37 then
    return "Template Id: SecurityMassStatus (37)"
  end
  if value == 45 then
    return "Template Id: SecurityGroupStatus (45)"
  end
  if value == 6 then
    return "Template Id: Heartbeat (6)"
  end
  if value == 7 then
    return "Template Id: SequenceReset (7)"
  end
  if value == 46 then
    return "Template Id: TradingSessionStatus (46)"
  end
  if value == 42 then
    return "Template Id: DiscreteAuction (42)"
  end
  if value == 9 then
    return "Template Id: News (9)"
  end
  if value == 29 then
    return "Template Id: OrdersLogMessage (29)"
  end
  if value == 30 then
    return "Template Id: BookMessage (30)"
  end
  if value == 33 then
    return "Template Id: OtcMonitorIncrementalRefreshMessage (33)"
  end
  if value == 34 then
    return "Template Id: OtcMonitorSnapshotMessage (34)"
  end
  if value == 35 then
    return "Template Id: OtcMonitorSecurityDefinition (35)"
  end
  if value == 1000 then
    return "Template Id: Logon (1000)"
  end
  if value == 1001 then
    return "Template Id: Logout (1001)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Name: Template Id
moex_spectra_fastgate_fast_v9_9_0.template_id.name = function(value)
  if value == 31 then
    return "DefaultIncrementalRefreshMessage"
  end
  if value == 32 then
    return "DefaultSnapshotMessage"
  end
  if value == 47 then
    return "SecurityDefinition"
  end
  if value == 4 then
    return "SecurityDefinitionUpdateReport"
  end
  if value == 48 then
    return "SecurityStatus"
  end
  if value == 37 then
    return "SecurityMassStatus"
  end
  if value == 45 then
    return "SecurityGroupStatus"
  end
  if value == 6 then
    return "Heartbeat"
  end
  if value == 7 then
    return "SequenceReset"
  end
  if value == 46 then
    return "TradingSessionStatus"
  end
  if value == 42 then
    return "DiscreteAuction"
  end
  if value == 9 then
    return "News"
  end
  if value == 29 then
    return "OrdersLogMessage"
  end
  if value == 30 then
    return "BookMessage"
  end
  if value == 33 then
    return "OtcMonitorIncrementalRefreshMessage"
  end
  if value == 34 then
    return "OtcMonitorSnapshotMessage"
  end
  if value == 35 then
    return "OtcMonitorSecurityDefinition"
  end
  if value == 1000 then
    return "Logon"
  end
  if value == 1001 then
    return "Logout"
  end

  return "Unknown"
end

-- Moex Spectra FastGate Fast 9.9.0 Packet Dissector
omi_moex_spectra_fastgate_fast_v9_9_0.dissector = function(buffer, packet, parent)
  packet.cols.protocol = "Moex Spectra FastGate Fast 9.9.0"
  local root = parent:add(omi_moex_spectra_fastgate_fast_v9_9_0, buffer(), "Moex Spectra FastGate Fast 9.9.0")
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

    local message_field = moex_spectra_fastgate_fast_v9_9_0.message_fields[template_id]
    local message_tree = nil

    if message_field ~= nil then
      message_tree = root:add(message_field, buffer(start, 0))
    else
      message_tree = root:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.message, buffer(start, 0))
      message_tree:set_text(moex_spectra_fastgate_fast_v9_9_0.template_id.name(template_id))
    end

    -- the presence map and the template id are the message's own framing
    local header = message_tree:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.message_header, buffer(start, offset - start))
    add_presence_map(header, buffer(start, mapped - start), omi_moex_spectra_fastgate_fast_v9_9_0.fields.presence_map, omi_moex_spectra_fastgate_fast_v9_9_0.fields.presence_stop, omi_moex_spectra_fastgate_fast_v9_9_0.fields.presence_identified, omi_moex_spectra_fastgate_fast_v9_9_0.fields.presence_unused, moex_spectra_fastgate_fast_v9_9_0.presence_bits.named[template_id])
    header:add(omi_moex_spectra_fastgate_fast_v9_9_0.fields.template_id, buffer(identified, offset - identified), template_id, moex_spectra_fastgate_fast_v9_9_0.template_id.display(template_id))

    local message = moex_spectra_fastgate_fast_v9_9_0.messages[template_id]

    if message == nil then
      message_tree:add_expert_info(PI_UNDECODED, PI_WARN, "This dissector reads: 31 (DefaultIncrementalRefreshMessage), 32 (DefaultSnapshotMessage), 47 (SecurityDefinition), 4 (SecurityDefinitionUpdateReport), 48 (SecurityStatus), 37 (SecurityMassStatus), 45 (SecurityGroupStatus), 6 (Heartbeat), 7 (SequenceReset), 46 (TradingSessionStatus), 42 (DiscreteAuction), 9 (News), 29 (OrdersLogMessage), 30 (BookMessage), 33 (OtcMonitorIncrementalRefreshMessage), 34 (OtcMonitorSnapshotMessage), 35 (OtcMonitorSecurityDefinition), 1000 (Logon), 1001 (Logout)")
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
omi_moex_spectra_fastgate_fast_v9_9_0.init = function()
  stream_states = {}
end

-- Register Moex Spectra FastGate Fast 9.9.0 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_moex_spectra_fastgate_fast_v9_9_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Moscow Exchange
--   Version: v9.9.0
--   Specification: spectra_fastgate_en.pdf
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
