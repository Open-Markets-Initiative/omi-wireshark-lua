-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Moex Asts MarketDataMulticast Fast 2025.10 Protocol
local omi_moex_asts_marketdatamulticast_fast_v2025_10 = Proto("Omi.Moex.Asts.MarketDataMulticast.Fast.v2025.10", "Moex Asts MarketDataMulticast Fast 2025.10")

-- Protocol table
local moex_asts_marketdatamulticast_fast_v2025_10 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Moex Asts MarketDataMulticast Fast 2025.10 Framing
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.message = ProtoField.new("Message", "moex.asts.marketdatamulticast.fast.v2025.10.message", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.message_header = ProtoField.new("Message Header", "moex.asts.marketdatamulticast.fast.v2025.10.messageheader", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.presence_map = ProtoField.new("Presence Map", "moex.asts.marketdatamulticast.fast.v2025.10.presencemap", ftypes.BYTES)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.template_id = ProtoField.new("Template Id", "moex.asts.marketdatamulticast.fast.v2025.10.templateid", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.presence_stop = ProtoField.new("Stop Bit", "moex.asts.marketdatamulticast.fast.v2025.10.presencestop", ftypes.UINT8, { [0] = "Clear", [1] = "Set" }, base.DEC)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.presence_identified = ProtoField.new("Template Id", "moex.asts.marketdatamulticast.fast.v2025.10.presencetemplateid", ftypes.UINT8, { [0] = "Repeated", [1] = "Sent" }, base.DEC)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.presence_unused = ProtoField.new("Unused", "moex.asts.marketdatamulticast.fast.v2025.10.presenceunused", ftypes.UINT8, nil, base.HEX)
moex_asts_marketdatamulticast_fast_v2025_10.presence_bits = {}

-- Moex Asts MarketDataMulticast Fast 2025.10 Presence Map Fields
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.presence_msg_seq_num = ProtoField.new("Msg Seq Num", "moex.asts.marketdatamulticast.fast.v2025.10.msgseqnumpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.presence_message_encoding = ProtoField.new("Message Encoding", "moex.asts.marketdatamulticast.fast.v2025.10.messageencodingpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)

moex_asts_marketdatamulticast_fast_v2025_10.presence_bits.named = {
  [2915] = {
    [2] = omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.presence_msg_seq_num,
    [3] = omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.presence_message_encoding,
  },
}

-- Moex Asts MarketDataMulticast Fast 2025.10 Fields
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.message_type = ProtoField.new("Message Type", "moex.asts.marketdatamulticast.fast.v2025.10.messagetype", ftypes.STRING)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.begin_string = ProtoField.new("Begin String", "moex.asts.marketdatamulticast.fast.v2025.10.beginstring", ftypes.STRING)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.sender_comp_id = ProtoField.new("Sender Comp Id", "moex.asts.marketdatamulticast.fast.v2025.10.sendercompid", ftypes.STRING)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.target_comp_id = ProtoField.new("Target Comp Id", "moex.asts.marketdatamulticast.fast.v2025.10.targetcompid", ftypes.STRING)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "moex.asts.marketdatamulticast.fast.v2025.10.msgseqnum", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.sending_time = ProtoField.new("Sending Time", "moex.asts.marketdatamulticast.fast.v2025.10.sendingtime", ftypes.UINT64)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.heart_bt_int = ProtoField.new("Heart Bt Int", "moex.asts.marketdatamulticast.fast.v2025.10.heartbtint", ftypes.INT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.username = ProtoField.new("Username", "moex.asts.marketdatamulticast.fast.v2025.10.username", ftypes.STRING)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.password = ProtoField.new("Password", "moex.asts.marketdatamulticast.fast.v2025.10.password", ftypes.STRING)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.default_appl_ver_id = ProtoField.new("Default Appl Ver Id", "moex.asts.marketdatamulticast.fast.v2025.10.defaultapplverid", ftypes.STRING)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.text = ProtoField.new("Text", "moex.asts.marketdatamulticast.fast.v2025.10.text", ftypes.STRING)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.appl_ver_id = ProtoField.new("Appl Ver Id", "moex.asts.marketdatamulticast.fast.v2025.10.applverid", ftypes.STRING)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trading_session_id = ProtoField.new("Trading Session Id", "moex.asts.marketdatamulticast.fast.v2025.10.tradingsessionid", ftypes.STRING)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.symbol = ProtoField.new("Symbol", "moex.asts.marketdatamulticast.fast.v2025.10.symbol", ftypes.STRING)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "moex.asts.marketdatamulticast.fast.v2025.10.lastmsgseqnumprocessed", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.rpt_seq = ProtoField.new("Rpt Seq", "moex.asts.marketdatamulticast.fast.v2025.10.rptseq", ftypes.INT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.last_fragment = ProtoField.new("Last Fragment", "moex.asts.marketdatamulticast.fast.v2025.10.lastfragment", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.route_first = ProtoField.new("Route First", "moex.asts.marketdatamulticast.fast.v2025.10.routefirst", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trad_ses_status = ProtoField.new("Trad Ses Status", "moex.asts.marketdatamulticast.fast.v2025.10.tradsesstatus", ftypes.INT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_security_trading_status = ProtoField.new("Md Security Trading Status", "moex.asts.marketdatamulticast.fast.v2025.10.mdsecuritytradingstatus", ftypes.INT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.auction_indicator = ProtoField.new("Auction Indicator", "moex.asts.marketdatamulticast.fast.v2025.10.auctionindicator", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.net_chg_prev_day = ProtoField.new("Net Chg Prev Day", "moex.asts.marketdatamulticast.fast.v2025.10.netchgprevday", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.price_improvement = ProtoField.new("Price Improvement", "moex.asts.marketdatamulticast.fast.v2025.10.priceimprovement", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.no_md_entries = ProtoField.new("No Md Entries", "moex.asts.marketdatamulticast.fast.v2025.10.nomdentries", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_entry_type = ProtoField.new("Md Entry Type", "moex.asts.marketdatamulticast.fast.v2025.10.mdentrytype", ftypes.STRING)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_entry_id = ProtoField.new("Md Entry Id", "moex.asts.marketdatamulticast.fast.v2025.10.mdentryid", ftypes.STRING)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_entry_date = ProtoField.new("Md Entry Date", "moex.asts.marketdatamulticast.fast.v2025.10.mdentrydate", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_entry_time = ProtoField.new("Md Entry Time", "moex.asts.marketdatamulticast.fast.v2025.10.mdentrytime", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.orig_time = ProtoField.new("Orig Time", "moex.asts.marketdatamulticast.fast.v2025.10.origtime", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_entry_px = ProtoField.new("Md Entry Px", "moex.asts.marketdatamulticast.fast.v2025.10.mdentrypx", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_entry_size = ProtoField.new("Md Entry Size", "moex.asts.marketdatamulticast.fast.v2025.10.mdentrysize", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.quote_condition = ProtoField.new("Quote Condition", "moex.asts.marketdatamulticast.fast.v2025.10.quotecondition", ftypes.STRING)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trade_condition = ProtoField.new("Trade Condition", "moex.asts.marketdatamulticast.fast.v2025.10.tradecondition", ftypes.STRING)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.open_close_settl_flag = ProtoField.new("Open Close Settl Flag", "moex.asts.marketdatamulticast.fast.v2025.10.openclosesettlflag", ftypes.STRING)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.ord_type = ProtoField.new("Ord Type", "moex.asts.marketdatamulticast.fast.v2025.10.ordtype", ftypes.STRING)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.effective_time = ProtoField.new("Effective Time", "moex.asts.marketdatamulticast.fast.v2025.10.effectivetime", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.start_time = ProtoField.new("Start Time", "moex.asts.marketdatamulticast.fast.v2025.10.starttime", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.accrued_interest_amt = ProtoField.new("Accrued Interest Amt", "moex.asts.marketdatamulticast.fast.v2025.10.accruedinterestamt", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.chg_from_wa_price = ProtoField.new("Chg From Wa Price", "moex.asts.marketdatamulticast.fast.v2025.10.chgfromwaprice", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.chg_open_interest = ProtoField.new("Chg Open Interest", "moex.asts.marketdatamulticast.fast.v2025.10.chgopeninterest", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.bid_market_size = ProtoField.new("Bid Market Size", "moex.asts.marketdatamulticast.fast.v2025.10.bidmarketsize", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.ask_market_size = ProtoField.new("Ask Market Size", "moex.asts.marketdatamulticast.fast.v2025.10.askmarketsize", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.total_num_of_trades = ProtoField.new("Total Num Of Trades", "moex.asts.marketdatamulticast.fast.v2025.10.totalnumoftrades", ftypes.INT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trade_value = ProtoField.new("Trade Value", "moex.asts.marketdatamulticast.fast.v2025.10.tradevalue", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.yield = ProtoField.new("Yield", "moex.asts.marketdatamulticast.fast.v2025.10.yield", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.total_volume = ProtoField.new("Total Volume", "moex.asts.marketdatamulticast.fast.v2025.10.totalvolume", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.offer_nb_or = ProtoField.new("Offer Nb Or", "moex.asts.marketdatamulticast.fast.v2025.10.offernbor", ftypes.INT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.bid_nb_or = ProtoField.new("Bid Nb Or", "moex.asts.marketdatamulticast.fast.v2025.10.bidnbor", ftypes.INT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.chg_from_settlmnt = ProtoField.new("Chg From Settlmnt", "moex.asts.marketdatamulticast.fast.v2025.10.chgfromsettlmnt", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.settl_date = ProtoField.new("Settl Date", "moex.asts.marketdatamulticast.fast.v2025.10.settldate", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.settl_date2 = ProtoField.new("Settl Date2", "moex.asts.marketdatamulticast.fast.v2025.10.settldate2", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.settle_type = ProtoField.new("Settle Type", "moex.asts.marketdatamulticast.fast.v2025.10.settletype", ftypes.STRING)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.sum_qty_of_best = ProtoField.new("Sum Qty Of Best", "moex.asts.marketdatamulticast.fast.v2025.10.sumqtyofbest", ftypes.INT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.order_side = ProtoField.new("Order Side", "moex.asts.marketdatamulticast.fast.v2025.10.orderside", ftypes.STRING)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.order_status = ProtoField.new("Order Status", "moex.asts.marketdatamulticast.fast.v2025.10.orderstatus", ftypes.STRING)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.min_curr_px = ProtoField.new("Min Curr Px", "moex.asts.marketdatamulticast.fast.v2025.10.mincurrpx", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.index_cross_rate = ProtoField.new("Index Cross Rate", "moex.asts.marketdatamulticast.fast.v2025.10.indexcrossrate", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.min_curr_px_chg_time = ProtoField.new("Min Curr Px Chg Time", "moex.asts.marketdatamulticast.fast.v2025.10.mincurrpxchgtime", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trading_session = ProtoField.new("Trading Session", "moex.asts.marketdatamulticast.fast.v2025.10.tradingsession", ftypes.STRING)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.security_statistics = ProtoField.new("Security Statistics", "moex.asts.marketdatamulticast.fast.v2025.10.securitystatistics", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.volume_indicator = ProtoField.new("Volume Indicator", "moex.asts.marketdatamulticast.fast.v2025.10.volumeindicator", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.price = ProtoField.new("Price", "moex.asts.marketdatamulticast.fast.v2025.10.price", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.price_type = ProtoField.new("Price Type", "moex.asts.marketdatamulticast.fast.v2025.10.pricetype", ftypes.INT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.nominal_value = ProtoField.new("Nominal Value", "moex.asts.marketdatamulticast.fast.v2025.10.nominalvalue", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.repo_to_px = ProtoField.new("Repo To Px", "moex.asts.marketdatamulticast.fast.v2025.10.repotopx", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.buy_back_px = ProtoField.new("Buy Back Px", "moex.asts.marketdatamulticast.fast.v2025.10.buybackpx", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.buy_back_date = ProtoField.new("Buy Back Date", "moex.asts.marketdatamulticast.fast.v2025.10.buybackdate", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.cx_flag = ProtoField.new("Cx Flag", "moex.asts.marketdatamulticast.fast.v2025.10.cxflag", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "moex.asts.marketdatamulticast.fast.v2025.10.tradingsessionsubid", ftypes.STRING)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.pml_upper_limit = ProtoField.new("Pml Upper Limit", "moex.asts.marketdatamulticast.fast.v2025.10.pmlupperlimit", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.pml_lower_limit = ProtoField.new("Pml Lower Limit", "moex.asts.marketdatamulticast.fast.v2025.10.pmllowerlimit", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_update_action = ProtoField.new("Md Update Action", "moex.asts.marketdatamulticast.fast.v2025.10.mdupdateaction", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.repo_term = ProtoField.new("Repo Term", "moex.asts.marketdatamulticast.fast.v2025.10.repoterm", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.liquidity_type = ProtoField.new("Liquidity Type", "moex.asts.marketdatamulticast.fast.v2025.10.liquiditytype", ftypes.STRING)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trade_session_date = ProtoField.new("Trade Session Date", "moex.asts.marketdatamulticast.fast.v2025.10.tradesessiondate", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.ref_order_id = ProtoField.new("Ref Order Id", "moex.asts.marketdatamulticast.fast.v2025.10.reforderid", ftypes.STRING)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.last_update_time = ProtoField.new("Last Update Time", "moex.asts.marketdatamulticast.fast.v2025.10.lastupdatetime", ftypes.UINT64)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.message_encoding = ProtoField.new("Message Encoding", "moex.asts.marketdatamulticast.fast.v2025.10.messageencoding", ftypes.STRING)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.tot_num_reports = ProtoField.new("Tot Num Reports", "moex.asts.marketdatamulticast.fast.v2025.10.totnumreports", ftypes.INT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.security_id = ProtoField.new("Security Id", "moex.asts.marketdatamulticast.fast.v2025.10.securityid", ftypes.BYTES)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.security_id_source = ProtoField.new("Security Id Source", "moex.asts.marketdatamulticast.fast.v2025.10.securityidsource", ftypes.BYTES)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.product = ProtoField.new("Product", "moex.asts.marketdatamulticast.fast.v2025.10.product", ftypes.INT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.evening_session = ProtoField.new("Evening Session", "moex.asts.marketdatamulticast.fast.v2025.10.eveningsession", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.morning_session = ProtoField.new("Morning Session", "moex.asts.marketdatamulticast.fast.v2025.10.morningsession", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.weekend_session = ProtoField.new("Weekend Session", "moex.asts.marketdatamulticast.fast.v2025.10.weekendsession", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.qualified_investor = ProtoField.new("Qualified Investor", "moex.asts.marketdatamulticast.fast.v2025.10.qualifiedinvestor", ftypes.STRING)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.complex_product = ProtoField.new("Complex Product", "moex.asts.marketdatamulticast.fast.v2025.10.complexproduct", ftypes.INT64)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.asset = ProtoField.new("Asset", "moex.asts.marketdatamulticast.fast.v2025.10.asset", ftypes.BYTES)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.subordbond = ProtoField.new("Subordbond", "moex.asts.marketdatamulticast.fast.v2025.10.subordbond", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.gc_pool_id = ProtoField.new("Gc Pool Id", "moex.asts.marketdatamulticast.fast.v2025.10.gcpoolid", ftypes.BYTES)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.high_risk = ProtoField.new("High Risk", "moex.asts.marketdatamulticast.fast.v2025.10.highrisk", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.coupon_start_date = ProtoField.new("Coupon Start Date", "moex.asts.marketdatamulticast.fast.v2025.10.couponstartdate", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.cfi_code = ProtoField.new("Cfi Code", "moex.asts.marketdatamulticast.fast.v2025.10.cficode", ftypes.BYTES)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.security_type = ProtoField.new("Security Type", "moex.asts.marketdatamulticast.fast.v2025.10.securitytype", ftypes.BYTES)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.maturity_date = ProtoField.new("Maturity Date", "moex.asts.marketdatamulticast.fast.v2025.10.maturitydate", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.orig_issue_amt = ProtoField.new("Orig Issue Amt", "moex.asts.marketdatamulticast.fast.v2025.10.origissueamt", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.coupon_payment_date = ProtoField.new("Coupon Payment Date", "moex.asts.marketdatamulticast.fast.v2025.10.couponpaymentdate", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.coupon_rate = ProtoField.new("Coupon Rate", "moex.asts.marketdatamulticast.fast.v2025.10.couponrate", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.settl_fixing_date = ProtoField.new("Settl Fixing Date", "moex.asts.marketdatamulticast.fast.v2025.10.settlfixingdate", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.dividend_net_px = ProtoField.new("Dividend Net Px", "moex.asts.marketdatamulticast.fast.v2025.10.dividendnetpx", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.security_desc = ProtoField.new("Security Desc", "moex.asts.marketdatamulticast.fast.v2025.10.securitydesc", ftypes.BYTES)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.encoded_security_desc = ProtoField.new("Encoded Security Desc", "moex.asts.marketdatamulticast.fast.v2025.10.encodedsecuritydesc", ftypes.BYTES)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.quote_text = ProtoField.new("Quote Text", "moex.asts.marketdatamulticast.fast.v2025.10.quotetext", ftypes.BYTES)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.no_instr_attrib = ProtoField.new("No Instr Attrib", "moex.asts.marketdatamulticast.fast.v2025.10.noinstrattrib", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.instr_attrib_type = ProtoField.new("Instr Attrib Type", "moex.asts.marketdatamulticast.fast.v2025.10.instrattribtype", ftypes.INT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.instr_attrib_value = ProtoField.new("Instr Attrib Value", "moex.asts.marketdatamulticast.fast.v2025.10.instrattribvalue", ftypes.BYTES)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.currency = ProtoField.new("Currency", "moex.asts.marketdatamulticast.fast.v2025.10.currency", ftypes.STRING)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.no_market_segments = ProtoField.new("No Market Segments", "moex.asts.marketdatamulticast.fast.v2025.10.nomarketsegments", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.round_lot = ProtoField.new("Round Lot", "moex.asts.marketdatamulticast.fast.v2025.10.roundlot", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.lot_divider = ProtoField.new("Lot Divider", "moex.asts.marketdatamulticast.fast.v2025.10.lotdivider", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.no_trading_session_rules = ProtoField.new("No Trading Session Rules", "moex.asts.marketdatamulticast.fast.v2025.10.notradingsessionrules", ftypes.UINT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.security_trading_status = ProtoField.new("Security Trading Status", "moex.asts.marketdatamulticast.fast.v2025.10.securitytradingstatus", ftypes.INT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.order_note = ProtoField.new("Order Note", "moex.asts.marketdatamulticast.fast.v2025.10.ordernote", ftypes.INT32)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.settl_currency = ProtoField.new("Settl Currency", "moex.asts.marketdatamulticast.fast.v2025.10.settlcurrency", ftypes.STRING)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.state_security_id = ProtoField.new("State Security Id", "moex.asts.marketdatamulticast.fast.v2025.10.statesecurityid", ftypes.BYTES)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.encoded_short_security_desc = ProtoField.new("Encoded Short Security Desc", "moex.asts.marketdatamulticast.fast.v2025.10.encodedshortsecuritydesc", ftypes.BYTES)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.market_code = ProtoField.new("Market Code", "moex.asts.marketdatamulticast.fast.v2025.10.marketcode", ftypes.BYTES)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.min_price_increment = ProtoField.new("Min Price Increment", "moex.asts.marketdatamulticast.fast.v2025.10.minpriceincrement", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.mkt_share_limit = ProtoField.new("Mkt Share Limit", "moex.asts.marketdatamulticast.fast.v2025.10.mktsharelimit", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.mkt_share_threshold = ProtoField.new("Mkt Share Threshold", "moex.asts.marketdatamulticast.fast.v2025.10.mktsharethreshold", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.max_orders_volume = ProtoField.new("Max Orders Volume", "moex.asts.marketdatamulticast.fast.v2025.10.maxordersvolume", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.price_mvm_limit = ProtoField.new("Price Mvm Limit", "moex.asts.marketdatamulticast.fast.v2025.10.pricemvmlimit", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.face_value = ProtoField.new("Face Value", "moex.asts.marketdatamulticast.fast.v2025.10.facevalue", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.base_swap_px = ProtoField.new("Base Swap Px", "moex.asts.marketdatamulticast.fast.v2025.10.baseswappx", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.no_shares_issued = ProtoField.new("No Shares Issued", "moex.asts.marketdatamulticast.fast.v2025.10.nosharesissued", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.high_limit = ProtoField.new("High Limit", "moex.asts.marketdatamulticast.fast.v2025.10.highlimit", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.low_limit = ProtoField.new("Low Limit", "moex.asts.marketdatamulticast.fast.v2025.10.lowlimit", ftypes.DOUBLE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.num_of_days_to_maturity = ProtoField.new("Num Of Days To Maturity", "moex.asts.marketdatamulticast.fast.v2025.10.numofdaystomaturity", ftypes.INT32)

-- Moex Asts MarketDataMulticast Fast 2025.10 Messages
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.a = ProtoField.new("A Message", "moex.asts.marketdatamulticast.fast.v2025.10.a", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields._5 = ProtoField.new("5 Message", "moex.asts.marketdatamulticast.fast.v2025.10.5", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.w_generic = ProtoField.new("W- Generic Message", "moex.asts.marketdatamulticast.fast.v2025.10.wgeneric", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.w_generic_group_md_entries = ProtoField.new("W- Generic Group Md Entries", "moex.asts.marketdatamulticast.fast.v2025.10.wgenericgroupmdentries", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.x_generic = ProtoField.new("X- Generic Message", "moex.asts.marketdatamulticast.fast.v2025.10.xgeneric", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.x_generic_group_md_entries = ProtoField.new("X- Generic Group Md Entries", "moex.asts.marketdatamulticast.fast.v2025.10.xgenericgroupmdentries", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.wolsfond = ProtoField.new("W-ols-fond Message", "moex.asts.marketdatamulticast.fast.v2025.10.wolsfond", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.wolsfond_group_md_entries = ProtoField.new("W-ols-fond Group Md Entries", "moex.asts.marketdatamulticast.fast.v2025.10.wolsfondgroupmdentries", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.wolscurr = ProtoField.new("W-ols-curr Message", "moex.asts.marketdatamulticast.fast.v2025.10.wolscurr", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.wolscurr_group_md_entries = ProtoField.new("W-ols-curr Group Md Entries", "moex.asts.marketdatamulticast.fast.v2025.10.wolscurrgroupmdentries", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.wtlsfond = ProtoField.new("W-tls-fond Message", "moex.asts.marketdatamulticast.fast.v2025.10.wtlsfond", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.wtlsfond_group_md_entries = ProtoField.new("W-tls-fond Group Md Entries", "moex.asts.marketdatamulticast.fast.v2025.10.wtlsfondgroupmdentries", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.wtlscurr = ProtoField.new("W-tls-curr Message", "moex.asts.marketdatamulticast.fast.v2025.10.wtlscurr", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.wtlscurr_group_md_entries = ProtoField.new("W-tls-curr Group Md Entries", "moex.asts.marketdatamulticast.fast.v2025.10.wtlscurrgroupmdentries", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.xmsrfond = ProtoField.new("X-msr-fond Message", "moex.asts.marketdatamulticast.fast.v2025.10.xmsrfond", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.xmsrfond_group_md_entries = ProtoField.new("X-msr-fond Group Md Entries", "moex.asts.marketdatamulticast.fast.v2025.10.xmsrfondgroupmdentries", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.xmsrcurr = ProtoField.new("X-msr-curr Message", "moex.asts.marketdatamulticast.fast.v2025.10.xmsrcurr", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.xmsrcurr_group_md_entries = ProtoField.new("X-msr-curr Group Md Entries", "moex.asts.marketdatamulticast.fast.v2025.10.xmsrcurrgroupmdentries", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.xolrfond = ProtoField.new("X-olr-fond Message", "moex.asts.marketdatamulticast.fast.v2025.10.xolrfond", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.xolrfond_group_md_entries = ProtoField.new("X-olr-fond Group Md Entries", "moex.asts.marketdatamulticast.fast.v2025.10.xolrfondgroupmdentries", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.xolrcurr = ProtoField.new("X-olr-curr Message", "moex.asts.marketdatamulticast.fast.v2025.10.xolrcurr", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.xolrcurr_group_md_entries = ProtoField.new("X-olr-curr Group Md Entries", "moex.asts.marketdatamulticast.fast.v2025.10.xolrcurrgroupmdentries", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.xtlrfond = ProtoField.new("X-tlr-fond Message", "moex.asts.marketdatamulticast.fast.v2025.10.xtlrfond", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.xtlrfond_group_md_entries = ProtoField.new("X-tlr-fond Group Md Entries", "moex.asts.marketdatamulticast.fast.v2025.10.xtlrfondgroupmdentries", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.xtlrcurr = ProtoField.new("X-tlr-curr Message", "moex.asts.marketdatamulticast.fast.v2025.10.xtlrcurr", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.xtlrcurr_group_md_entries = ProtoField.new("X-tlr-curr Group Md Entries", "moex.asts.marketdatamulticast.fast.v2025.10.xtlrcurrgroupmdentries", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.d = ProtoField.new("D Message", "moex.asts.marketdatamulticast.fast.v2025.10.d", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.group_instr_attrib = ProtoField.new("Group Instr Attrib", "moex.asts.marketdatamulticast.fast.v2025.10.groupinstrattrib", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.market_segment_grp = ProtoField.new("Market Segment Grp", "moex.asts.marketdatamulticast.fast.v2025.10.marketsegmentgrp", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trading_session_rules_grp = ProtoField.new("Trading Session Rules Grp", "moex.asts.marketdatamulticast.fast.v2025.10.tradingsessionrulesgrp", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.f = ProtoField.new("F Message", "moex.asts.marketdatamulticast.fast.v2025.10.f", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.h = ProtoField.new("H Message", "moex.asts.marketdatamulticast.fast.v2025.10.h", ftypes.NONE)
omi_moex_asts_marketdatamulticast_fast_v2025_10.fields._0 = ProtoField.new("0 Message", "moex.asts.marketdatamulticast.fast.v2025.10.0", ftypes.NONE)

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
-- Moex Asts MarketDataMulticast Fast 2025.10 Fields
-----------------------------------------------------------------------

-- Message Type (Constant)
moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_a = {}

-- Dissect: Message Type (Constant)
moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_a.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "A"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.message_type, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_5 = {}

-- Dissect: Message Type (Constant)
moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_5.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "5"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.message_type, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_w = {}

-- Dissect: Message Type (Constant)
moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_w.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "W"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.message_type, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_x = {}

-- Dissect: Message Type (Constant)
moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_x.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "X"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.message_type, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_d = {}

-- Dissect: Message Type (Constant)
moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_d.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "d"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.message_type, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_f = {}

-- Dissect: Message Type (Constant)
moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_f.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "f"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.message_type, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_h = {}

-- Dissect: Message Type (Constant)
moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_h.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "h"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.message_type, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_0 = {}

-- Dissect: Message Type (Constant)
moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_0.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "0"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.message_type, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Begin String
moex_asts_marketdatamulticast_fast_v2025_10.begin_string = {}

-- Dissect: Begin String
moex_asts_marketdatamulticast_fast_v2025_10.begin_string.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "FIXT.1.1"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.begin_string, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.begin_string, range, "")
    absent:set_text("Begin String: No Value")
  end

  return offset, value
end

-- Sender Comp Id
moex_asts_marketdatamulticast_fast_v2025_10.sender_comp_id = {}

-- Dissect: Sender Comp Id
moex_asts_marketdatamulticast_fast_v2025_10.sender_comp_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "MOEX"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.sender_comp_id, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.sender_comp_id, range, "")
    absent:set_text("Sender Comp Id: No Value")
  end

  return offset, value
end

-- Target Comp Id
moex_asts_marketdatamulticast_fast_v2025_10.target_comp_id = {}

-- Dissect: Target Comp Id
moex_asts_marketdatamulticast_fast_v2025_10.target_comp_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.target_comp_id, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.target_comp_id, range, "")
    absent:set_text("Target Comp Id: No Value")
  end

  return offset, value
end

-- Msg Seq Num (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.msg_seq_num_sent = {}

-- Dissect: Msg Seq Num (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.msg_seq_num_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.msg_seq_num, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.msg_seq_num, range, 0)
    absent:set_text("Msg Seq Num: No Value")
  end

  return offset, value
end

-- Msg Seq Num (Increment)
moex_asts_marketdatamulticast_fast_v2025_10.msg_seq_num_increment = {}

-- Dissect: Msg Seq Num (Increment)
moex_asts_marketdatamulticast_fast_v2025_10.msg_seq_num_increment.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.msg_seq_num, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.msg_seq_num, range, 0)
    absent:set_text("Msg Seq Num: No Value")
  end

  return offset, value
end

-- Sending Time
moex_asts_marketdatamulticast_fast_v2025_10.sending_time = {}

-- Dissect: Sending Time
moex_asts_marketdatamulticast_fast_v2025_10.sending_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.sending_time, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.sending_time, range, UInt64(0))
    absent:set_text("Sending Time: No Value")
  end

  return offset, value
end

-- Heart Bt Int
moex_asts_marketdatamulticast_fast_v2025_10.heart_bt_int = {}

-- Dissect: Heart Bt Int
moex_asts_marketdatamulticast_fast_v2025_10.heart_bt_int.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.heart_bt_int, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.heart_bt_int, range, 0)
    absent:set_text("Heart Bt Int: No Value")
  end

  return offset, value
end

-- Username
moex_asts_marketdatamulticast_fast_v2025_10.username = {}

-- Dissect: Username
moex_asts_marketdatamulticast_fast_v2025_10.username.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.username, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.username, range, "")
    absent:set_text("Username: No Value")
  end

  return offset, value
end

-- Password
moex_asts_marketdatamulticast_fast_v2025_10.password = {}

-- Dissect: Password
moex_asts_marketdatamulticast_fast_v2025_10.password.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.password, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.password, range, "")
    absent:set_text("Password: No Value")
  end

  return offset, value
end

-- Default Appl Ver Id
moex_asts_marketdatamulticast_fast_v2025_10.default_appl_ver_id = {}

-- Dissect: Default Appl Ver Id
moex_asts_marketdatamulticast_fast_v2025_10.default_appl_ver_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.default_appl_ver_id, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.default_appl_ver_id, range, "")
    absent:set_text("Default Appl Ver Id: No Value")
  end

  return offset, value
end

-- Text
moex_asts_marketdatamulticast_fast_v2025_10.text = {}

-- Dissect: Text
moex_asts_marketdatamulticast_fast_v2025_10.text.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.text, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.text, range, "")
    absent:set_text("Text: No Value")
  end

  return offset, value
end

-- Appl Ver Id
moex_asts_marketdatamulticast_fast_v2025_10.appl_ver_id = {}

-- Dissect: Appl Ver Id
moex_asts_marketdatamulticast_fast_v2025_10.appl_ver_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "9"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.appl_ver_id, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.appl_ver_id, range, "")
    absent:set_text("Appl Ver Id: No Value")
  end

  return offset, value
end

-- Trading Session Id (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.trading_session_id_sent_optional = {}

-- Dissect: Trading Session Id (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.trading_session_id_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trading_session_id, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trading_session_id, range, "")
    absent:set_text("Trading Session Id: No Value")
  end

  return offset, value
end

-- Trading Session Id (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.trading_session_id_copy = {}

-- Dissect: Trading Session Id (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.trading_session_id_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trading_session_id, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trading_session_id, range, "")
    absent:set_text("Trading Session Id: No Value")
  end

  return offset, value
end

-- Trading Session Id (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.trading_session_id_sent_required = {}

-- Dissect: Trading Session Id (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.trading_session_id_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trading_session_id, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trading_session_id, range, "")
    absent:set_text("Trading Session Id: No Value")
  end

  return offset, value
end

-- Symbol (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.symbol_sent_required = {}

-- Dissect: Symbol (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.symbol_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.symbol, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.symbol, range, "")
    absent:set_text("Symbol: No Value")
  end

  return offset, value
end

-- Symbol (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.symbol_sent_optional = {}

-- Dissect: Symbol (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.symbol_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.symbol, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.symbol, range, "")
    absent:set_text("Symbol: No Value")
  end

  return offset, value
end

-- Symbol (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.symbol_copy = {}

-- Dissect: Symbol (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.symbol_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.symbol, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.symbol, range, "")
    absent:set_text("Symbol: No Value")
  end

  return offset, value
end

-- Last Msg Seq Num Processed
moex_asts_marketdatamulticast_fast_v2025_10.last_msg_seq_num_processed = {}

-- Dissect: Last Msg Seq Num Processed
moex_asts_marketdatamulticast_fast_v2025_10.last_msg_seq_num_processed.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.last_msg_seq_num_processed, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.last_msg_seq_num_processed, range, 0)
    absent:set_text("Last Msg Seq Num Processed: No Value")
  end

  return offset, value
end

-- Rpt Seq (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.rpt_seq_sent_required = {}

-- Dissect: Rpt Seq (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.rpt_seq_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.rpt_seq, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.rpt_seq, range, 0)
    absent:set_text("Rpt Seq: No Value")
  end

  return offset, value
end

-- Rpt Seq (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.rpt_seq_sent_optional = {}

-- Dissect: Rpt Seq (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.rpt_seq_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.rpt_seq, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.rpt_seq, range, 0)
    absent:set_text("Rpt Seq: No Value")
  end

  return offset, value
end

-- Last Fragment
moex_asts_marketdatamulticast_fast_v2025_10.last_fragment = {}

-- Dissect: Last Fragment
moex_asts_marketdatamulticast_fast_v2025_10.last_fragment.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.last_fragment, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.last_fragment, range, 0)
    absent:set_text("Last Fragment: No Value")
  end

  return offset, value
end

-- Route First
moex_asts_marketdatamulticast_fast_v2025_10.route_first = {}

-- Dissect: Route First
moex_asts_marketdatamulticast_fast_v2025_10.route_first.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.route_first, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.route_first, range, 0)
    absent:set_text("Route First: No Value")
  end

  return offset, value
end

-- Trad Ses Status (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.trad_ses_status_sent_optional = {}

-- Dissect: Trad Ses Status (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.trad_ses_status_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trad_ses_status, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trad_ses_status, range, 0)
    absent:set_text("Trad Ses Status: No Value")
  end

  return offset, value
end

-- Trad Ses Status (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.trad_ses_status_sent_required = {}

-- Dissect: Trad Ses Status (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.trad_ses_status_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trad_ses_status, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trad_ses_status, range, 0)
    absent:set_text("Trad Ses Status: No Value")
  end

  return offset, value
end

-- Md Security Trading Status
moex_asts_marketdatamulticast_fast_v2025_10.md_security_trading_status = {}

-- Dissect: Md Security Trading Status
moex_asts_marketdatamulticast_fast_v2025_10.md_security_trading_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_security_trading_status, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_security_trading_status, range, 0)
    absent:set_text("Md Security Trading Status: No Value")
  end

  return offset, value
end

-- Auction Indicator
moex_asts_marketdatamulticast_fast_v2025_10.auction_indicator = {}

-- Dissect: Auction Indicator
moex_asts_marketdatamulticast_fast_v2025_10.auction_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.auction_indicator, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.auction_indicator, range, 0)
    absent:set_text("Auction Indicator: No Value")
  end

  return offset, value
end

-- Net Chg Prev Day
moex_asts_marketdatamulticast_fast_v2025_10.net_chg_prev_day = {}

-- Display: Net Chg Prev Day
moex_asts_marketdatamulticast_fast_v2025_10.net_chg_prev_day.display = function(value)
  if value == nil then
    return "Net Chg Prev Day: No Value"
  end

  return "Net Chg Prev Day: "..value
end

-- Dissect: Net Chg Prev Day
moex_asts_marketdatamulticast_fast_v2025_10.net_chg_prev_day.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.net_chg_prev_day.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.net_chg_prev_day, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.net_chg_prev_day, range, value, display)
  end

  return offset, value
end

-- Price Improvement
moex_asts_marketdatamulticast_fast_v2025_10.price_improvement = {}

-- Display: Price Improvement
moex_asts_marketdatamulticast_fast_v2025_10.price_improvement.display = function(value)
  if value == nil then
    return "Price Improvement: No Value"
  end

  return "Price Improvement: "..value
end

-- Dissect: Price Improvement
moex_asts_marketdatamulticast_fast_v2025_10.price_improvement.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.price_improvement.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.price_improvement, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.price_improvement, range, value, display)
  end

  return offset, value
end

-- No Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.no_md_entries = {}

-- Dissect: No Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.no_md_entries.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.no_md_entries, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.no_md_entries, range, 0)
    absent:set_text("No Md Entries: No Value")
  end

  return offset, value
end

-- Md Entry Type (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.md_entry_type_sent_optional = {}

-- Dissect: Md Entry Type (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.md_entry_type_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_entry_type, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_entry_type, range, "")
    absent:set_text("Md Entry Type: No Value")
  end

  return offset, value
end

-- Md Entry Type (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.md_entry_type_copy = {}

-- Dissect: Md Entry Type (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.md_entry_type_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_entry_type, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_entry_type, range, "")
    absent:set_text("Md Entry Type: No Value")
  end

  return offset, value
end

-- Md Entry Type (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.md_entry_type_sent_required = {}

-- Dissect: Md Entry Type (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.md_entry_type_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_entry_type, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_entry_type, range, "")
    absent:set_text("Md Entry Type: No Value")
  end

  return offset, value
end

-- Md Entry Id
moex_asts_marketdatamulticast_fast_v2025_10.md_entry_id = {}

-- Dissect: Md Entry Id
moex_asts_marketdatamulticast_fast_v2025_10.md_entry_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_entry_id, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_entry_id, range, "")
    absent:set_text("Md Entry Id: No Value")
  end

  return offset, value
end

-- Md Entry Date (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.md_entry_date_sent = {}

-- Dissect: Md Entry Date (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.md_entry_date_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_entry_date, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_entry_date, range, 0)
    absent:set_text("Md Entry Date: No Value")
  end

  return offset, value
end

-- Md Entry Date (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.md_entry_date_copy = {}

-- Dissect: Md Entry Date (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.md_entry_date_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_entry_date, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_entry_date, range, 0)
    absent:set_text("Md Entry Date: No Value")
  end

  return offset, value
end

-- Md Entry Time (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.md_entry_time_sent = {}

-- Dissect: Md Entry Time (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.md_entry_time_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_entry_time, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_entry_time, range, 0)
    absent:set_text("Md Entry Time: No Value")
  end

  return offset, value
end

-- Md Entry Time (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.md_entry_time_copy = {}

-- Dissect: Md Entry Time (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.md_entry_time_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_entry_time, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_entry_time, range, 0)
    absent:set_text("Md Entry Time: No Value")
  end

  return offset, value
end

-- Orig Time (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.orig_time_sent = {}

-- Dissect: Orig Time (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.orig_time_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.orig_time, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.orig_time, range, 0)
    absent:set_text("Orig Time: No Value")
  end

  return offset, value
end

-- Orig Time (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.orig_time_copy = {}

-- Dissect: Orig Time (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.orig_time_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.orig_time, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.orig_time, range, 0)
    absent:set_text("Orig Time: No Value")
  end

  return offset, value
end

-- Md Entry Px (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.md_entry_px_sent = {}

-- Display: Md Entry Px (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.md_entry_px_sent.display = function(value)
  if value == nil then
    return "Md Entry Px: No Value"
  end

  return "Md Entry Px: "..value
end

-- Dissect: Md Entry Px (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.md_entry_px_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_px_sent.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_entry_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_entry_px, range, value, display)
  end

  return offset, value
end

-- Md Entry Px (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.md_entry_px_copy = {}

-- Display: Md Entry Px (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.md_entry_px_copy.display = function(value)
  if value == nil then
    return "Md Entry Px: No Value"
  end

  return "Md Entry Px: "..value
end

-- Dissect: Md Entry Px (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.md_entry_px_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_px_copy.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_entry_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_entry_px, range, value, display)
  end

  return offset, value
end

-- Md Entry Size (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.md_entry_size_sent = {}

-- Display: Md Entry Size (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.md_entry_size_sent.display = function(value)
  if value == nil then
    return "Md Entry Size: No Value"
  end

  return "Md Entry Size: "..value
end

-- Dissect: Md Entry Size (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.md_entry_size_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_size_sent.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_entry_size, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_entry_size, range, value, display)
  end

  return offset, value
end

-- Md Entry Size (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.md_entry_size_copy = {}

-- Display: Md Entry Size (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.md_entry_size_copy.display = function(value)
  if value == nil then
    return "Md Entry Size: No Value"
  end

  return "Md Entry Size: "..value
end

-- Dissect: Md Entry Size (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.md_entry_size_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_size_copy.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_entry_size, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_entry_size, range, value, display)
  end

  return offset, value
end

-- Quote Condition
moex_asts_marketdatamulticast_fast_v2025_10.quote_condition = {}

-- Dissect: Quote Condition
moex_asts_marketdatamulticast_fast_v2025_10.quote_condition.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.quote_condition, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.quote_condition, range, "")
    absent:set_text("Quote Condition: No Value")
  end

  return offset, value
end

-- Trade Condition
moex_asts_marketdatamulticast_fast_v2025_10.trade_condition = {}

-- Dissect: Trade Condition
moex_asts_marketdatamulticast_fast_v2025_10.trade_condition.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trade_condition, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trade_condition, range, "")
    absent:set_text("Trade Condition: No Value")
  end

  return offset, value
end

-- Open Close Settl Flag
moex_asts_marketdatamulticast_fast_v2025_10.open_close_settl_flag = {}

-- Dissect: Open Close Settl Flag
moex_asts_marketdatamulticast_fast_v2025_10.open_close_settl_flag.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.open_close_settl_flag, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.open_close_settl_flag, range, "")
    absent:set_text("Open Close Settl Flag: No Value")
  end

  return offset, value
end

-- Ord Type (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.ord_type_sent = {}

-- Dissect: Ord Type (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.ord_type_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.ord_type, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.ord_type, range, "")
    absent:set_text("Ord Type: No Value")
  end

  return offset, value
end

-- Ord Type (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.ord_type_copy = {}

-- Dissect: Ord Type (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.ord_type_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.ord_type, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.ord_type, range, "")
    absent:set_text("Ord Type: No Value")
  end

  return offset, value
end

-- Effective Time
moex_asts_marketdatamulticast_fast_v2025_10.effective_time = {}

-- Dissect: Effective Time
moex_asts_marketdatamulticast_fast_v2025_10.effective_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.effective_time, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.effective_time, range, 0)
    absent:set_text("Effective Time: No Value")
  end

  return offset, value
end

-- Start Time
moex_asts_marketdatamulticast_fast_v2025_10.start_time = {}

-- Dissect: Start Time
moex_asts_marketdatamulticast_fast_v2025_10.start_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.start_time, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.start_time, range, 0)
    absent:set_text("Start Time: No Value")
  end

  return offset, value
end

-- Accrued Interest Amt (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.accrued_interest_amt_sent = {}

-- Display: Accrued Interest Amt (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.accrued_interest_amt_sent.display = function(value)
  if value == nil then
    return "Accrued Interest Amt: No Value"
  end

  return "Accrued Interest Amt: "..value
end

-- Dissect: Accrued Interest Amt (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.accrued_interest_amt_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.accrued_interest_amt_sent.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.accrued_interest_amt, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.accrued_interest_amt, range, value, display)
  end

  return offset, value
end

-- Accrued Interest Amt (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.accrued_interest_amt_copy = {}

-- Display: Accrued Interest Amt (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.accrued_interest_amt_copy.display = function(value)
  if value == nil then
    return "Accrued Interest Amt: No Value"
  end

  return "Accrued Interest Amt: "..value
end

-- Dissect: Accrued Interest Amt (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.accrued_interest_amt_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.accrued_interest_amt_copy.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.accrued_interest_amt, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.accrued_interest_amt, range, value, display)
  end

  return offset, value
end

-- Chg From Wa Price
moex_asts_marketdatamulticast_fast_v2025_10.chg_from_wa_price = {}

-- Display: Chg From Wa Price
moex_asts_marketdatamulticast_fast_v2025_10.chg_from_wa_price.display = function(value)
  if value == nil then
    return "Chg From Wa Price: No Value"
  end

  return "Chg From Wa Price: "..value
end

-- Dissect: Chg From Wa Price
moex_asts_marketdatamulticast_fast_v2025_10.chg_from_wa_price.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.chg_from_wa_price.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.chg_from_wa_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.chg_from_wa_price, range, value, display)
  end

  return offset, value
end

-- Chg Open Interest
moex_asts_marketdatamulticast_fast_v2025_10.chg_open_interest = {}

-- Display: Chg Open Interest
moex_asts_marketdatamulticast_fast_v2025_10.chg_open_interest.display = function(value)
  if value == nil then
    return "Chg Open Interest: No Value"
  end

  return "Chg Open Interest: "..value
end

-- Dissect: Chg Open Interest
moex_asts_marketdatamulticast_fast_v2025_10.chg_open_interest.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.chg_open_interest.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.chg_open_interest, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.chg_open_interest, range, value, display)
  end

  return offset, value
end

-- Bid Market Size
moex_asts_marketdatamulticast_fast_v2025_10.bid_market_size = {}

-- Display: Bid Market Size
moex_asts_marketdatamulticast_fast_v2025_10.bid_market_size.display = function(value)
  if value == nil then
    return "Bid Market Size: No Value"
  end

  return "Bid Market Size: "..value
end

-- Dissect: Bid Market Size
moex_asts_marketdatamulticast_fast_v2025_10.bid_market_size.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.bid_market_size.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.bid_market_size, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.bid_market_size, range, value, display)
  end

  return offset, value
end

-- Ask Market Size
moex_asts_marketdatamulticast_fast_v2025_10.ask_market_size = {}

-- Display: Ask Market Size
moex_asts_marketdatamulticast_fast_v2025_10.ask_market_size.display = function(value)
  if value == nil then
    return "Ask Market Size: No Value"
  end

  return "Ask Market Size: "..value
end

-- Dissect: Ask Market Size
moex_asts_marketdatamulticast_fast_v2025_10.ask_market_size.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.ask_market_size.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.ask_market_size, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.ask_market_size, range, value, display)
  end

  return offset, value
end

-- Total Num Of Trades
moex_asts_marketdatamulticast_fast_v2025_10.total_num_of_trades = {}

-- Dissect: Total Num Of Trades
moex_asts_marketdatamulticast_fast_v2025_10.total_num_of_trades.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.total_num_of_trades, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.total_num_of_trades, range, 0)
    absent:set_text("Total Num Of Trades: No Value")
  end

  return offset, value
end

-- Trade Value (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.trade_value_sent = {}

-- Display: Trade Value (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.trade_value_sent.display = function(value)
  if value == nil then
    return "Trade Value: No Value"
  end

  return "Trade Value: "..value
end

-- Dissect: Trade Value (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.trade_value_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.trade_value_sent.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trade_value, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trade_value, range, value, display)
  end

  return offset, value
end

-- Trade Value (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.trade_value_copy = {}

-- Display: Trade Value (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.trade_value_copy.display = function(value)
  if value == nil then
    return "Trade Value: No Value"
  end

  return "Trade Value: "..value
end

-- Dissect: Trade Value (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.trade_value_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.trade_value_copy.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trade_value, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trade_value, range, value, display)
  end

  return offset, value
end

-- Yield (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.yield_sent = {}

-- Display: Yield (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.yield_sent.display = function(value)
  if value == nil then
    return "Yield: No Value"
  end

  return "Yield: "..value
end

-- Dissect: Yield (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.yield_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.yield_sent.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.yield, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.yield, range, value, display)
  end

  return offset, value
end

-- Yield (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.yield_copy = {}

-- Display: Yield (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.yield_copy.display = function(value)
  if value == nil then
    return "Yield: No Value"
  end

  return "Yield: "..value
end

-- Dissect: Yield (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.yield_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.yield_copy.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.yield, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.yield, range, value, display)
  end

  return offset, value
end

-- Total Volume (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.total_volume_sent = {}

-- Display: Total Volume (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.total_volume_sent.display = function(value)
  if value == nil then
    return "Total Volume: No Value"
  end

  return "Total Volume: "..value
end

-- Dissect: Total Volume (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.total_volume_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.total_volume_sent.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.total_volume, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.total_volume, range, value, display)
  end

  return offset, value
end

-- Total Volume (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.total_volume_copy = {}

-- Display: Total Volume (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.total_volume_copy.display = function(value)
  if value == nil then
    return "Total Volume: No Value"
  end

  return "Total Volume: "..value
end

-- Dissect: Total Volume (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.total_volume_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.total_volume_copy.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.total_volume, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.total_volume, range, value, display)
  end

  return offset, value
end

-- Offer Nb Or
moex_asts_marketdatamulticast_fast_v2025_10.offer_nb_or = {}

-- Dissect: Offer Nb Or
moex_asts_marketdatamulticast_fast_v2025_10.offer_nb_or.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.offer_nb_or, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.offer_nb_or, range, 0)
    absent:set_text("Offer Nb Or: No Value")
  end

  return offset, value
end

-- Bid Nb Or
moex_asts_marketdatamulticast_fast_v2025_10.bid_nb_or = {}

-- Dissect: Bid Nb Or
moex_asts_marketdatamulticast_fast_v2025_10.bid_nb_or.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.bid_nb_or, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.bid_nb_or, range, 0)
    absent:set_text("Bid Nb Or: No Value")
  end

  return offset, value
end

-- Chg From Settlmnt
moex_asts_marketdatamulticast_fast_v2025_10.chg_from_settlmnt = {}

-- Display: Chg From Settlmnt
moex_asts_marketdatamulticast_fast_v2025_10.chg_from_settlmnt.display = function(value)
  if value == nil then
    return "Chg From Settlmnt: No Value"
  end

  return "Chg From Settlmnt: "..value
end

-- Dissect: Chg From Settlmnt
moex_asts_marketdatamulticast_fast_v2025_10.chg_from_settlmnt.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.chg_from_settlmnt.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.chg_from_settlmnt, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.chg_from_settlmnt, range, value, display)
  end

  return offset, value
end

-- Settl Date (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.settl_date_sent = {}

-- Dissect: Settl Date (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.settl_date_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.settl_date, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.settl_date, range, 0)
    absent:set_text("Settl Date: No Value")
  end

  return offset, value
end

-- Settl Date (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.settl_date_copy = {}

-- Dissect: Settl Date (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.settl_date_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.settl_date, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.settl_date, range, 0)
    absent:set_text("Settl Date: No Value")
  end

  return offset, value
end

-- Settl Date2
moex_asts_marketdatamulticast_fast_v2025_10.settl_date2 = {}

-- Dissect: Settl Date2
moex_asts_marketdatamulticast_fast_v2025_10.settl_date2.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.settl_date2, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.settl_date2, range, 0)
    absent:set_text("Settl Date2: No Value")
  end

  return offset, value
end

-- Settle Type (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.settle_type_sent = {}

-- Dissect: Settle Type (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.settle_type_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.settle_type, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.settle_type, range, "")
    absent:set_text("Settle Type: No Value")
  end

  return offset, value
end

-- Settle Type (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.settle_type_copy = {}

-- Dissect: Settle Type (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.settle_type_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.settle_type, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.settle_type, range, "")
    absent:set_text("Settle Type: No Value")
  end

  return offset, value
end

-- Sum Qty Of Best
moex_asts_marketdatamulticast_fast_v2025_10.sum_qty_of_best = {}

-- Dissect: Sum Qty Of Best
moex_asts_marketdatamulticast_fast_v2025_10.sum_qty_of_best.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.sum_qty_of_best, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.sum_qty_of_best, range, 0)
    absent:set_text("Sum Qty Of Best: No Value")
  end

  return offset, value
end

-- Order Side (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.order_side_sent = {}

-- Dissect: Order Side (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.order_side_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.order_side, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.order_side, range, "")
    absent:set_text("Order Side: No Value")
  end

  return offset, value
end

-- Order Side (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.order_side_copy = {}

-- Dissect: Order Side (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.order_side_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.order_side, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.order_side, range, "")
    absent:set_text("Order Side: No Value")
  end

  return offset, value
end

-- Order Status (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.order_status_sent = {}

-- Dissect: Order Status (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.order_status_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.order_status, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.order_status, range, "")
    absent:set_text("Order Status: No Value")
  end

  return offset, value
end

-- Order Status (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.order_status_copy = {}

-- Dissect: Order Status (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.order_status_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.order_status, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.order_status, range, "")
    absent:set_text("Order Status: No Value")
  end

  return offset, value
end

-- Min Curr Px
moex_asts_marketdatamulticast_fast_v2025_10.min_curr_px = {}

-- Display: Min Curr Px
moex_asts_marketdatamulticast_fast_v2025_10.min_curr_px.display = function(value)
  if value == nil then
    return "Min Curr Px: No Value"
  end

  return "Min Curr Px: "..value
end

-- Dissect: Min Curr Px
moex_asts_marketdatamulticast_fast_v2025_10.min_curr_px.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.min_curr_px.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.min_curr_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.min_curr_px, range, value, display)
  end

  return offset, value
end

-- Index Cross Rate
moex_asts_marketdatamulticast_fast_v2025_10.index_cross_rate = {}

-- Display: Index Cross Rate
moex_asts_marketdatamulticast_fast_v2025_10.index_cross_rate.display = function(value)
  if value == nil then
    return "Index Cross Rate: No Value"
  end

  return "Index Cross Rate: "..value
end

-- Dissect: Index Cross Rate
moex_asts_marketdatamulticast_fast_v2025_10.index_cross_rate.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.index_cross_rate.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.index_cross_rate, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.index_cross_rate, range, value, display)
  end

  return offset, value
end

-- Min Curr Px Chg Time
moex_asts_marketdatamulticast_fast_v2025_10.min_curr_px_chg_time = {}

-- Dissect: Min Curr Px Chg Time
moex_asts_marketdatamulticast_fast_v2025_10.min_curr_px_chg_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.min_curr_px_chg_time, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.min_curr_px_chg_time, range, 0)
    absent:set_text("Min Curr Px Chg Time: No Value")
  end

  return offset, value
end

-- Trading Session (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.trading_session_sent = {}

-- Dissect: Trading Session (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.trading_session_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trading_session, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trading_session, range, "")
    absent:set_text("Trading Session: No Value")
  end

  return offset, value
end

-- Trading Session (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.trading_session_copy = {}

-- Dissect: Trading Session (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.trading_session_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trading_session, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trading_session, range, "")
    absent:set_text("Trading Session: No Value")
  end

  return offset, value
end

-- Security Statistics (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.security_statistics_sent = {}

-- Dissect: Security Statistics (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.security_statistics_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.security_statistics, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.security_statistics, range, 0)
    absent:set_text("Security Statistics: No Value")
  end

  return offset, value
end

-- Security Statistics (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.security_statistics_copy = {}

-- Dissect: Security Statistics (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.security_statistics_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.security_statistics, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.security_statistics, range, 0)
    absent:set_text("Security Statistics: No Value")
  end

  return offset, value
end

-- Volume Indicator
moex_asts_marketdatamulticast_fast_v2025_10.volume_indicator = {}

-- Dissect: Volume Indicator
moex_asts_marketdatamulticast_fast_v2025_10.volume_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.volume_indicator, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.volume_indicator, range, 0)
    absent:set_text("Volume Indicator: No Value")
  end

  return offset, value
end

-- Price (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.price_sent = {}

-- Display: Price (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.price_sent.display = function(value)
  if value == nil then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Dissect: Price (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.price_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.price_sent.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.price, range, value, display)
  end

  return offset, value
end

-- Price (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.price_copy = {}

-- Display: Price (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.price_copy.display = function(value)
  if value == nil then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Dissect: Price (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.price_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.price_copy.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.price, range, value, display)
  end

  return offset, value
end

-- Price Type (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.price_type_sent = {}

-- Dissect: Price Type (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.price_type_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.price_type, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.price_type, range, 0)
    absent:set_text("Price Type: No Value")
  end

  return offset, value
end

-- Price Type (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.price_type_copy = {}

-- Dissect: Price Type (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.price_type_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.price_type, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.price_type, range, 0)
    absent:set_text("Price Type: No Value")
  end

  return offset, value
end

-- Nominal Value
moex_asts_marketdatamulticast_fast_v2025_10.nominal_value = {}

-- Display: Nominal Value
moex_asts_marketdatamulticast_fast_v2025_10.nominal_value.display = function(value)
  if value == nil then
    return "Nominal Value: No Value"
  end

  return "Nominal Value: "..value
end

-- Dissect: Nominal Value
moex_asts_marketdatamulticast_fast_v2025_10.nominal_value.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.nominal_value.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.nominal_value, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.nominal_value, range, value, display)
  end

  return offset, value
end

-- Repo To Px (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.repo_to_px_sent = {}

-- Display: Repo To Px (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.repo_to_px_sent.display = function(value)
  if value == nil then
    return "Repo To Px: No Value"
  end

  return "Repo To Px: "..value
end

-- Dissect: Repo To Px (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.repo_to_px_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.repo_to_px_sent.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.repo_to_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.repo_to_px, range, value, display)
  end

  return offset, value
end

-- Repo To Px (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.repo_to_px_copy = {}

-- Display: Repo To Px (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.repo_to_px_copy.display = function(value)
  if value == nil then
    return "Repo To Px: No Value"
  end

  return "Repo To Px: "..value
end

-- Dissect: Repo To Px (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.repo_to_px_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.repo_to_px_copy.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.repo_to_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.repo_to_px, range, value, display)
  end

  return offset, value
end

-- Buy Back Px (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.buy_back_px_sent = {}

-- Display: Buy Back Px (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.buy_back_px_sent.display = function(value)
  if value == nil then
    return "Buy Back Px: No Value"
  end

  return "Buy Back Px: "..value
end

-- Dissect: Buy Back Px (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.buy_back_px_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.buy_back_px_sent.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.buy_back_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.buy_back_px, range, value, display)
  end

  return offset, value
end

-- Buy Back Px (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.buy_back_px_copy = {}

-- Display: Buy Back Px (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.buy_back_px_copy.display = function(value)
  if value == nil then
    return "Buy Back Px: No Value"
  end

  return "Buy Back Px: "..value
end

-- Dissect: Buy Back Px (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.buy_back_px_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.buy_back_px_copy.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.buy_back_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.buy_back_px, range, value, display)
  end

  return offset, value
end

-- Buy Back Date (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.buy_back_date_sent = {}

-- Dissect: Buy Back Date (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.buy_back_date_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.buy_back_date, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.buy_back_date, range, 0)
    absent:set_text("Buy Back Date: No Value")
  end

  return offset, value
end

-- Buy Back Date (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.buy_back_date_copy = {}

-- Dissect: Buy Back Date (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.buy_back_date_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.buy_back_date, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.buy_back_date, range, 0)
    absent:set_text("Buy Back Date: No Value")
  end

  return offset, value
end

-- Cx Flag
moex_asts_marketdatamulticast_fast_v2025_10.cx_flag = {}

-- Dissect: Cx Flag
moex_asts_marketdatamulticast_fast_v2025_10.cx_flag.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.cx_flag, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.cx_flag, range, 0)
    absent:set_text("Cx Flag: No Value")
  end

  return offset, value
end

-- Trading Session Sub Id (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.trading_session_sub_id_sent = {}

-- Dissect: Trading Session Sub Id (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.trading_session_sub_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trading_session_sub_id, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trading_session_sub_id, range, "")
    absent:set_text("Trading Session Sub Id: No Value")
  end

  return offset, value
end

-- Trading Session Sub Id (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.trading_session_sub_id_copy = {}

-- Dissect: Trading Session Sub Id (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.trading_session_sub_id_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trading_session_sub_id, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trading_session_sub_id, range, "")
    absent:set_text("Trading Session Sub Id: No Value")
  end

  return offset, value
end

-- Pml Upper Limit
moex_asts_marketdatamulticast_fast_v2025_10.pml_upper_limit = {}

-- Display: Pml Upper Limit
moex_asts_marketdatamulticast_fast_v2025_10.pml_upper_limit.display = function(value)
  if value == nil then
    return "Pml Upper Limit: No Value"
  end

  return "Pml Upper Limit: "..value
end

-- Dissect: Pml Upper Limit
moex_asts_marketdatamulticast_fast_v2025_10.pml_upper_limit.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.pml_upper_limit.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.pml_upper_limit, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.pml_upper_limit, range, value, display)
  end

  return offset, value
end

-- Pml Lower Limit
moex_asts_marketdatamulticast_fast_v2025_10.pml_lower_limit = {}

-- Display: Pml Lower Limit
moex_asts_marketdatamulticast_fast_v2025_10.pml_lower_limit.display = function(value)
  if value == nil then
    return "Pml Lower Limit: No Value"
  end

  return "Pml Lower Limit: "..value
end

-- Dissect: Pml Lower Limit
moex_asts_marketdatamulticast_fast_v2025_10.pml_lower_limit.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.pml_lower_limit.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.pml_lower_limit, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.pml_lower_limit, range, value, display)
  end

  return offset, value
end

-- Md Update Action (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.md_update_action_sent = {}

-- Dissect: Md Update Action (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.md_update_action_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_update_action, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_update_action, range, 0)
    absent:set_text("Md Update Action: No Value")
  end

  return offset, value
end

-- Md Update Action (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.md_update_action_copy = {}

-- Dissect: Md Update Action (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.md_update_action_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_update_action, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.md_update_action, range, 0)
    absent:set_text("Md Update Action: No Value")
  end

  return offset, value
end

-- Repo Term
moex_asts_marketdatamulticast_fast_v2025_10.repo_term = {}

-- Dissect: Repo Term
moex_asts_marketdatamulticast_fast_v2025_10.repo_term.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.repo_term, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.repo_term, range, 0)
    absent:set_text("Repo Term: No Value")
  end

  return offset, value
end

-- Liquidity Type
moex_asts_marketdatamulticast_fast_v2025_10.liquidity_type = {}

-- Dissect: Liquidity Type
moex_asts_marketdatamulticast_fast_v2025_10.liquidity_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.liquidity_type, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.liquidity_type, range, "")
    absent:set_text("Liquidity Type: No Value")
  end

  return offset, value
end

-- Trade Session Date (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.trade_session_date_copy = {}

-- Dissect: Trade Session Date (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.trade_session_date_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trade_session_date, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trade_session_date, range, 0)
    absent:set_text("Trade Session Date: No Value")
  end

  return offset, value
end

-- Trade Session Date (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.trade_session_date_sent = {}

-- Dissect: Trade Session Date (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.trade_session_date_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trade_session_date, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trade_session_date, range, 0)
    absent:set_text("Trade Session Date: No Value")
  end

  return offset, value
end

-- Ref Order Id (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.ref_order_id_copy = {}

-- Dissect: Ref Order Id (Copy)
moex_asts_marketdatamulticast_fast_v2025_10.ref_order_id_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.ref_order_id, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.ref_order_id, range, "")
    absent:set_text("Ref Order Id: No Value")
  end

  return offset, value
end

-- Ref Order Id (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.ref_order_id_sent = {}

-- Dissect: Ref Order Id (Sent)
moex_asts_marketdatamulticast_fast_v2025_10.ref_order_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.ref_order_id, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.ref_order_id, range, "")
    absent:set_text("Ref Order Id: No Value")
  end

  return offset, value
end

-- Last Update Time
moex_asts_marketdatamulticast_fast_v2025_10.last_update_time = {}

-- Dissect: Last Update Time
moex_asts_marketdatamulticast_fast_v2025_10.last_update_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.last_update_time, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.last_update_time, range, UInt64(0))
    absent:set_text("Last Update Time: No Value")
  end

  return offset, value
end

-- Message Encoding
moex_asts_marketdatamulticast_fast_v2025_10.message_encoding = {}

-- Dissect: Message Encoding
moex_asts_marketdatamulticast_fast_v2025_10.message_encoding.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = "UTF-8"
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.message_encoding, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.message_encoding, range, "")
    absent:set_text("Message Encoding: No Value")
  end

  return offset, value
end

-- Tot Num Reports
moex_asts_marketdatamulticast_fast_v2025_10.tot_num_reports = {}

-- Dissect: Tot Num Reports
moex_asts_marketdatamulticast_fast_v2025_10.tot_num_reports.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.tot_num_reports, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.tot_num_reports, range, 0)
    absent:set_text("Tot Num Reports: No Value")
  end

  return offset, value
end

-- Security Id
moex_asts_marketdatamulticast_fast_v2025_10.security_id = {}

-- Dissect: Security Id
moex_asts_marketdatamulticast_fast_v2025_10.security_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.security_id, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.security_id, buffer(start, 0))
    absent:set_text("Security Id: No Value")
  end

  return offset, value
end

-- Security Id Source
moex_asts_marketdatamulticast_fast_v2025_10.security_id_source = {}

-- Dissect: Security Id Source
moex_asts_marketdatamulticast_fast_v2025_10.security_id_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.security_id_source, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.security_id_source, buffer(start, 0))
    absent:set_text("Security Id Source: No Value")
  end

  return offset, value
end

-- Product
moex_asts_marketdatamulticast_fast_v2025_10.product = {}

-- Dissect: Product
moex_asts_marketdatamulticast_fast_v2025_10.product.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.product, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.product, range, 0)
    absent:set_text("Product: No Value")
  end

  return offset, value
end

-- Evening Session
moex_asts_marketdatamulticast_fast_v2025_10.evening_session = {}

-- Dissect: Evening Session
moex_asts_marketdatamulticast_fast_v2025_10.evening_session.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.evening_session, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.evening_session, range, 0)
    absent:set_text("Evening Session: No Value")
  end

  return offset, value
end

-- Morning Session
moex_asts_marketdatamulticast_fast_v2025_10.morning_session = {}

-- Dissect: Morning Session
moex_asts_marketdatamulticast_fast_v2025_10.morning_session.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.morning_session, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.morning_session, range, 0)
    absent:set_text("Morning Session: No Value")
  end

  return offset, value
end

-- Weekend Session
moex_asts_marketdatamulticast_fast_v2025_10.weekend_session = {}

-- Dissect: Weekend Session
moex_asts_marketdatamulticast_fast_v2025_10.weekend_session.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.weekend_session, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.weekend_session, range, 0)
    absent:set_text("Weekend Session: No Value")
  end

  return offset, value
end

-- Qualified Investor
moex_asts_marketdatamulticast_fast_v2025_10.qualified_investor = {}

-- Dissect: Qualified Investor
moex_asts_marketdatamulticast_fast_v2025_10.qualified_investor.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.qualified_investor, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.qualified_investor, range, "")
    absent:set_text("Qualified Investor: No Value")
  end

  return offset, value
end

-- Complex Product
moex_asts_marketdatamulticast_fast_v2025_10.complex_product = {}

-- Dissect: Complex Product
moex_asts_marketdatamulticast_fast_v2025_10.complex_product.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.complex_product, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.complex_product, range, Int64(0))
    absent:set_text("Complex Product: No Value")
  end

  return offset, value
end

-- Asset
moex_asts_marketdatamulticast_fast_v2025_10.asset = {}

-- Dissect: Asset
moex_asts_marketdatamulticast_fast_v2025_10.asset.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.asset, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.asset, buffer(start, 0))
    absent:set_text("Asset: No Value")
  end

  return offset, value
end

-- Subordbond
moex_asts_marketdatamulticast_fast_v2025_10.subordbond = {}

-- Dissect: Subordbond
moex_asts_marketdatamulticast_fast_v2025_10.subordbond.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.subordbond, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.subordbond, range, 0)
    absent:set_text("Subordbond: No Value")
  end

  return offset, value
end

-- Gc Pool Id
moex_asts_marketdatamulticast_fast_v2025_10.gc_pool_id = {}

-- Dissect: Gc Pool Id
moex_asts_marketdatamulticast_fast_v2025_10.gc_pool_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.gc_pool_id, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.gc_pool_id, buffer(start, 0))
    absent:set_text("Gc Pool Id: No Value")
  end

  return offset, value
end

-- High Risk
moex_asts_marketdatamulticast_fast_v2025_10.high_risk = {}

-- Dissect: High Risk
moex_asts_marketdatamulticast_fast_v2025_10.high_risk.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.high_risk, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.high_risk, range, 0)
    absent:set_text("High Risk: No Value")
  end

  return offset, value
end

-- Coupon Start Date
moex_asts_marketdatamulticast_fast_v2025_10.coupon_start_date = {}

-- Dissect: Coupon Start Date
moex_asts_marketdatamulticast_fast_v2025_10.coupon_start_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.coupon_start_date, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.coupon_start_date, range, 0)
    absent:set_text("Coupon Start Date: No Value")
  end

  return offset, value
end

-- Cfi Code
moex_asts_marketdatamulticast_fast_v2025_10.cfi_code = {}

-- Dissect: Cfi Code
moex_asts_marketdatamulticast_fast_v2025_10.cfi_code.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.cfi_code, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.cfi_code, buffer(start, 0))
    absent:set_text("Cfi Code: No Value")
  end

  return offset, value
end

-- Security Type
moex_asts_marketdatamulticast_fast_v2025_10.security_type = {}

-- Dissect: Security Type
moex_asts_marketdatamulticast_fast_v2025_10.security_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.security_type, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.security_type, buffer(start, 0))
    absent:set_text("Security Type: No Value")
  end

  return offset, value
end

-- Maturity Date
moex_asts_marketdatamulticast_fast_v2025_10.maturity_date = {}

-- Dissect: Maturity Date
moex_asts_marketdatamulticast_fast_v2025_10.maturity_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.maturity_date, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.maturity_date, range, 0)
    absent:set_text("Maturity Date: No Value")
  end

  return offset, value
end

-- Orig Issue Amt
moex_asts_marketdatamulticast_fast_v2025_10.orig_issue_amt = {}

-- Display: Orig Issue Amt
moex_asts_marketdatamulticast_fast_v2025_10.orig_issue_amt.display = function(value)
  if value == nil then
    return "Orig Issue Amt: No Value"
  end

  return "Orig Issue Amt: "..value
end

-- Dissect: Orig Issue Amt
moex_asts_marketdatamulticast_fast_v2025_10.orig_issue_amt.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.orig_issue_amt.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.orig_issue_amt, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.orig_issue_amt, range, value, display)
  end

  return offset, value
end

-- Coupon Payment Date
moex_asts_marketdatamulticast_fast_v2025_10.coupon_payment_date = {}

-- Dissect: Coupon Payment Date
moex_asts_marketdatamulticast_fast_v2025_10.coupon_payment_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.coupon_payment_date, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.coupon_payment_date, range, 0)
    absent:set_text("Coupon Payment Date: No Value")
  end

  return offset, value
end

-- Coupon Rate
moex_asts_marketdatamulticast_fast_v2025_10.coupon_rate = {}

-- Display: Coupon Rate
moex_asts_marketdatamulticast_fast_v2025_10.coupon_rate.display = function(value)
  if value == nil then
    return "Coupon Rate: No Value"
  end

  return "Coupon Rate: "..value
end

-- Dissect: Coupon Rate
moex_asts_marketdatamulticast_fast_v2025_10.coupon_rate.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.coupon_rate.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.coupon_rate, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.coupon_rate, range, value, display)
  end

  return offset, value
end

-- Settl Fixing Date
moex_asts_marketdatamulticast_fast_v2025_10.settl_fixing_date = {}

-- Dissect: Settl Fixing Date
moex_asts_marketdatamulticast_fast_v2025_10.settl_fixing_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.settl_fixing_date, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.settl_fixing_date, range, 0)
    absent:set_text("Settl Fixing Date: No Value")
  end

  return offset, value
end

-- Dividend Net Px
moex_asts_marketdatamulticast_fast_v2025_10.dividend_net_px = {}

-- Display: Dividend Net Px
moex_asts_marketdatamulticast_fast_v2025_10.dividend_net_px.display = function(value)
  if value == nil then
    return "Dividend Net Px: No Value"
  end

  return "Dividend Net Px: "..value
end

-- Dissect: Dividend Net Px
moex_asts_marketdatamulticast_fast_v2025_10.dividend_net_px.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.dividend_net_px.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.dividend_net_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.dividend_net_px, range, value, display)
  end

  return offset, value
end

-- Security Desc
moex_asts_marketdatamulticast_fast_v2025_10.security_desc = {}

-- Dissect: Security Desc
moex_asts_marketdatamulticast_fast_v2025_10.security_desc.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.security_desc, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.security_desc, buffer(start, 0))
    absent:set_text("Security Desc: No Value")
  end

  return offset, value
end

-- Encoded Security Desc
moex_asts_marketdatamulticast_fast_v2025_10.encoded_security_desc = {}

-- Dissect: Encoded Security Desc
moex_asts_marketdatamulticast_fast_v2025_10.encoded_security_desc.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.encoded_security_desc, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.encoded_security_desc, buffer(start, 0))
    absent:set_text("Encoded Security Desc: No Value")
  end

  return offset, value
end

-- Quote Text
moex_asts_marketdatamulticast_fast_v2025_10.quote_text = {}

-- Dissect: Quote Text
moex_asts_marketdatamulticast_fast_v2025_10.quote_text.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.quote_text, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.quote_text, buffer(start, 0))
    absent:set_text("Quote Text: No Value")
  end

  return offset, value
end

-- No Instr Attrib
moex_asts_marketdatamulticast_fast_v2025_10.no_instr_attrib = {}

-- Dissect: No Instr Attrib
moex_asts_marketdatamulticast_fast_v2025_10.no_instr_attrib.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.no_instr_attrib, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.no_instr_attrib, range, 0)
    absent:set_text("No Instr Attrib: No Value")
  end

  return offset, value
end

-- Instr Attrib Type
moex_asts_marketdatamulticast_fast_v2025_10.instr_attrib_type = {}

-- Dissect: Instr Attrib Type
moex_asts_marketdatamulticast_fast_v2025_10.instr_attrib_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.instr_attrib_type, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.instr_attrib_type, range, 0)
    absent:set_text("Instr Attrib Type: No Value")
  end

  return offset, value
end

-- Instr Attrib Value
moex_asts_marketdatamulticast_fast_v2025_10.instr_attrib_value = {}

-- Dissect: Instr Attrib Value
moex_asts_marketdatamulticast_fast_v2025_10.instr_attrib_value.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.instr_attrib_value, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.instr_attrib_value, buffer(start, 0))
    absent:set_text("Instr Attrib Value: No Value")
  end

  return offset, value
end

-- Currency
moex_asts_marketdatamulticast_fast_v2025_10.currency = {}

-- Dissect: Currency
moex_asts_marketdatamulticast_fast_v2025_10.currency.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.currency, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.currency, range, "")
    absent:set_text("Currency: No Value")
  end

  return offset, value
end

-- No Market Segments
moex_asts_marketdatamulticast_fast_v2025_10.no_market_segments = {}

-- Dissect: No Market Segments
moex_asts_marketdatamulticast_fast_v2025_10.no_market_segments.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.no_market_segments, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.no_market_segments, range, 0)
    absent:set_text("No Market Segments: No Value")
  end

  return offset, value
end

-- Round Lot
moex_asts_marketdatamulticast_fast_v2025_10.round_lot = {}

-- Display: Round Lot
moex_asts_marketdatamulticast_fast_v2025_10.round_lot.display = function(value)
  if value == nil then
    return "Round Lot: No Value"
  end

  return "Round Lot: "..value
end

-- Dissect: Round Lot
moex_asts_marketdatamulticast_fast_v2025_10.round_lot.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.round_lot.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.round_lot, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.round_lot, range, value, display)
  end

  return offset, value
end

-- Lot Divider
moex_asts_marketdatamulticast_fast_v2025_10.lot_divider = {}

-- Dissect: Lot Divider
moex_asts_marketdatamulticast_fast_v2025_10.lot_divider.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.lot_divider, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.lot_divider, range, 0)
    absent:set_text("Lot Divider: No Value")
  end

  return offset, value
end

-- No Trading Session Rules
moex_asts_marketdatamulticast_fast_v2025_10.no_trading_session_rules = {}

-- Dissect: No Trading Session Rules
moex_asts_marketdatamulticast_fast_v2025_10.no_trading_session_rules.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.no_trading_session_rules, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.no_trading_session_rules, range, 0)
    absent:set_text("No Trading Session Rules: No Value")
  end

  return offset, value
end

-- Security Trading Status
moex_asts_marketdatamulticast_fast_v2025_10.security_trading_status = {}

-- Dissect: Security Trading Status
moex_asts_marketdatamulticast_fast_v2025_10.security_trading_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.security_trading_status, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.security_trading_status, range, 0)
    absent:set_text("Security Trading Status: No Value")
  end

  return offset, value
end

-- Order Note
moex_asts_marketdatamulticast_fast_v2025_10.order_note = {}

-- Dissect: Order Note
moex_asts_marketdatamulticast_fast_v2025_10.order_note.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.order_note, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.order_note, range, 0)
    absent:set_text("Order Note: No Value")
  end

  return offset, value
end

-- Settl Currency
moex_asts_marketdatamulticast_fast_v2025_10.settl_currency = {}

-- Dissect: Settl Currency
moex_asts_marketdatamulticast_fast_v2025_10.settl_currency.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.settl_currency, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.settl_currency, range, "")
    absent:set_text("Settl Currency: No Value")
  end

  return offset, value
end

-- State Security Id
moex_asts_marketdatamulticast_fast_v2025_10.state_security_id = {}

-- Dissect: State Security Id
moex_asts_marketdatamulticast_fast_v2025_10.state_security_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.state_security_id, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.state_security_id, buffer(start, 0))
    absent:set_text("State Security Id: No Value")
  end

  return offset, value
end

-- Encoded Short Security Desc
moex_asts_marketdatamulticast_fast_v2025_10.encoded_short_security_desc = {}

-- Dissect: Encoded Short Security Desc
moex_asts_marketdatamulticast_fast_v2025_10.encoded_short_security_desc.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.encoded_short_security_desc, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.encoded_short_security_desc, buffer(start, 0))
    absent:set_text("Encoded Short Security Desc: No Value")
  end

  return offset, value
end

-- Market Code
moex_asts_marketdatamulticast_fast_v2025_10.market_code = {}

-- Dissect: Market Code
moex_asts_marketdatamulticast_fast_v2025_10.market_code.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.market_code, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.market_code, buffer(start, 0))
    absent:set_text("Market Code: No Value")
  end

  return offset, value
end

-- Min Price Increment
moex_asts_marketdatamulticast_fast_v2025_10.min_price_increment = {}

-- Display: Min Price Increment
moex_asts_marketdatamulticast_fast_v2025_10.min_price_increment.display = function(value)
  if value == nil then
    return "Min Price Increment: No Value"
  end

  return "Min Price Increment: "..value
end

-- Dissect: Min Price Increment
moex_asts_marketdatamulticast_fast_v2025_10.min_price_increment.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.min_price_increment.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.min_price_increment, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.min_price_increment, range, value, display)
  end

  return offset, value
end

-- Mkt Share Limit
moex_asts_marketdatamulticast_fast_v2025_10.mkt_share_limit = {}

-- Display: Mkt Share Limit
moex_asts_marketdatamulticast_fast_v2025_10.mkt_share_limit.display = function(value)
  if value == nil then
    return "Mkt Share Limit: No Value"
  end

  return "Mkt Share Limit: "..value
end

-- Dissect: Mkt Share Limit
moex_asts_marketdatamulticast_fast_v2025_10.mkt_share_limit.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.mkt_share_limit.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.mkt_share_limit, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.mkt_share_limit, range, value, display)
  end

  return offset, value
end

-- Mkt Share Threshold
moex_asts_marketdatamulticast_fast_v2025_10.mkt_share_threshold = {}

-- Display: Mkt Share Threshold
moex_asts_marketdatamulticast_fast_v2025_10.mkt_share_threshold.display = function(value)
  if value == nil then
    return "Mkt Share Threshold: No Value"
  end

  return "Mkt Share Threshold: "..value
end

-- Dissect: Mkt Share Threshold
moex_asts_marketdatamulticast_fast_v2025_10.mkt_share_threshold.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.mkt_share_threshold.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.mkt_share_threshold, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.mkt_share_threshold, range, value, display)
  end

  return offset, value
end

-- Max Orders Volume
moex_asts_marketdatamulticast_fast_v2025_10.max_orders_volume = {}

-- Display: Max Orders Volume
moex_asts_marketdatamulticast_fast_v2025_10.max_orders_volume.display = function(value)
  if value == nil then
    return "Max Orders Volume: No Value"
  end

  return "Max Orders Volume: "..value
end

-- Dissect: Max Orders Volume
moex_asts_marketdatamulticast_fast_v2025_10.max_orders_volume.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.max_orders_volume.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.max_orders_volume, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.max_orders_volume, range, value, display)
  end

  return offset, value
end

-- Price Mvm Limit
moex_asts_marketdatamulticast_fast_v2025_10.price_mvm_limit = {}

-- Display: Price Mvm Limit
moex_asts_marketdatamulticast_fast_v2025_10.price_mvm_limit.display = function(value)
  if value == nil then
    return "Price Mvm Limit: No Value"
  end

  return "Price Mvm Limit: "..value
end

-- Dissect: Price Mvm Limit
moex_asts_marketdatamulticast_fast_v2025_10.price_mvm_limit.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.price_mvm_limit.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.price_mvm_limit, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.price_mvm_limit, range, value, display)
  end

  return offset, value
end

-- Face Value
moex_asts_marketdatamulticast_fast_v2025_10.face_value = {}

-- Display: Face Value
moex_asts_marketdatamulticast_fast_v2025_10.face_value.display = function(value)
  if value == nil then
    return "Face Value: No Value"
  end

  return "Face Value: "..value
end

-- Dissect: Face Value
moex_asts_marketdatamulticast_fast_v2025_10.face_value.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.face_value.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.face_value, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.face_value, range, value, display)
  end

  return offset, value
end

-- Base Swap Px
moex_asts_marketdatamulticast_fast_v2025_10.base_swap_px = {}

-- Display: Base Swap Px
moex_asts_marketdatamulticast_fast_v2025_10.base_swap_px.display = function(value)
  if value == nil then
    return "Base Swap Px: No Value"
  end

  return "Base Swap Px: "..value
end

-- Dissect: Base Swap Px
moex_asts_marketdatamulticast_fast_v2025_10.base_swap_px.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.base_swap_px.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.base_swap_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.base_swap_px, range, value, display)
  end

  return offset, value
end

-- No Shares Issued
moex_asts_marketdatamulticast_fast_v2025_10.no_shares_issued = {}

-- Display: No Shares Issued
moex_asts_marketdatamulticast_fast_v2025_10.no_shares_issued.display = function(value)
  if value == nil then
    return "No Shares Issued: No Value"
  end

  return "No Shares Issued: "..value
end

-- Dissect: No Shares Issued
moex_asts_marketdatamulticast_fast_v2025_10.no_shares_issued.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.no_shares_issued.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.no_shares_issued, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.no_shares_issued, range, value, display)
  end

  return offset, value
end

-- High Limit
moex_asts_marketdatamulticast_fast_v2025_10.high_limit = {}

-- Display: High Limit
moex_asts_marketdatamulticast_fast_v2025_10.high_limit.display = function(value)
  if value == nil then
    return "High Limit: No Value"
  end

  return "High Limit: "..value
end

-- Dissect: High Limit
moex_asts_marketdatamulticast_fast_v2025_10.high_limit.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.high_limit.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.high_limit, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.high_limit, range, value, display)
  end

  return offset, value
end

-- Low Limit
moex_asts_marketdatamulticast_fast_v2025_10.low_limit = {}

-- Display: Low Limit
moex_asts_marketdatamulticast_fast_v2025_10.low_limit.display = function(value)
  if value == nil then
    return "Low Limit: No Value"
  end

  return "Low Limit: "..value
end

-- Dissect: Low Limit
moex_asts_marketdatamulticast_fast_v2025_10.low_limit.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = moex_asts_marketdatamulticast_fast_v2025_10.low_limit.display(value)

  if value == nil then
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.low_limit, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.low_limit, range, value, display)
  end

  return offset, value
end

-- Num Of Days To Maturity
moex_asts_marketdatamulticast_fast_v2025_10.num_of_days_to_maturity = {}

-- Dissect: Num Of Days To Maturity
moex_asts_marketdatamulticast_fast_v2025_10.num_of_days_to_maturity.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.num_of_days_to_maturity, range, value)
  else
    local absent = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.num_of_days_to_maturity, range, 0)
    absent:set_text("Num Of Days To Maturity: No Value")
  end

  return offset, value
end


-----------------------------------------------------------------------
-- Dissect Moex Asts MarketDataMulticast Fast 2025.10
-----------------------------------------------------------------------

-- 0 Message
moex_asts_marketdatamulticast_fast_v2025_10._0 = {}

-- Dissect Fields: 0 Message
moex_asts_marketdatamulticast_fast_v2025_10._0.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Message Type: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_0.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Begin String: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.msg_seq_num_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: 0 Message
moex_asts_marketdatamulticast_fast_v2025_10._0.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_asts_marketdatamulticast_fast_v2025_10._0.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- H Message
moex_asts_marketdatamulticast_fast_v2025_10.h = {}

-- Dissect Fields: H Message
moex_asts_marketdatamulticast_fast_v2025_10.h.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Message Type: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_h.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Begin String: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.msg_seq_num_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trad Ses Status: int32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trad_ses_status_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Text: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.text.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Id: string, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: H Message
moex_asts_marketdatamulticast_fast_v2025_10.h.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_asts_marketdatamulticast_fast_v2025_10.h.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- F Message
moex_asts_marketdatamulticast_fast_v2025_10.f = {}

-- Dissect Fields: F Message
moex_asts_marketdatamulticast_fast_v2025_10.f.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Message Type: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_f.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Begin String: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.msg_seq_num_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.symbol_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Sub Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_sub_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Status: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.security_trading_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Auction Indicator: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.auction_indicator.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: F Message
moex_asts_marketdatamulticast_fast_v2025_10.f.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_asts_marketdatamulticast_fast_v2025_10.f.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Trading Session Rules Grp
moex_asts_marketdatamulticast_fast_v2025_10.trading_session_rules_grp = {}

-- Dissect Fields: Trading Session Rules Grp
moex_asts_marketdatamulticast_fast_v2025_10.trading_session_rules_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trading Session Id: string, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Sub Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_sub_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Status: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.security_trading_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Note: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.order_note.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Trading Session Rules Grp
moex_asts_marketdatamulticast_fast_v2025_10.trading_session_rules_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.trading_session_rules_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_rules_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Segment Grp
moex_asts_marketdatamulticast_fast_v2025_10.market_segment_grp = {}

-- Dissect Fields: Market Segment Grp
moex_asts_marketdatamulticast_fast_v2025_10.market_segment_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Round Lot: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.round_lot.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Lot Divider: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.lot_divider.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Trading Session Rules: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.no_trading_session_rules.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Rules Grp: No Trading Session Rules entries
  local count = value or 0
  for trading_session_rules_grp_index = 1, count do
    index = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_rules_grp.dissect(buffer, index, packet, parent, presence_map, base, state, trading_session_rules_grp_index)
  end

  return index
end

-- Dissect: Market Segment Grp
moex_asts_marketdatamulticast_fast_v2025_10.market_segment_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.market_segment_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = moex_asts_marketdatamulticast_fast_v2025_10.market_segment_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Group Instr Attrib
moex_asts_marketdatamulticast_fast_v2025_10.group_instr_attrib = {}

-- Dissect Fields: Group Instr Attrib
moex_asts_marketdatamulticast_fast_v2025_10.group_instr_attrib.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Instr Attrib Type: int32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.instr_attrib_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Instr Attrib Value: byteVector, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.instr_attrib_value.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Group Instr Attrib
moex_asts_marketdatamulticast_fast_v2025_10.group_instr_attrib.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.group_instr_attrib, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = moex_asts_marketdatamulticast_fast_v2025_10.group_instr_attrib.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- D Message
moex_asts_marketdatamulticast_fast_v2025_10.d = {}

-- Dissect Fields: D Message
moex_asts_marketdatamulticast_fast_v2025_10.d.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Message Type: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_d.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Begin String: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.msg_seq_num_increment.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Sending Time: uInt64, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Encoding: string, Default
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.message_encoding.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Tot Num Reports: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.tot_num_reports.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.symbol_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: byteVector, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: byteVector, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Product: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.product.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Evening Session: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.evening_session.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Morning Session: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.morning_session.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Weekend Session: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.weekend_session.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Qualified Investor: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.qualified_investor.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Complex Product: int64, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.complex_product.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Asset: byteVector, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.asset.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Subordbond: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.subordbond.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Gc Pool Id: byteVector, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.gc_pool_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- High Risk: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.high_risk.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Coupon Start Date: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.coupon_start_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Cfi Code: byteVector, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.cfi_code.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Type: byteVector, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.security_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Maturity Date: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.maturity_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Date: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.settl_date_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settle Type: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.settle_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Orig Issue Amt: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.orig_issue_amt.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Coupon Payment Date: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.coupon_payment_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Coupon Rate: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.coupon_rate.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Settl Fixing Date: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.settl_fixing_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Dividend Net Px: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.dividend_net_px.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Security Desc: byteVector, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.security_desc.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Encoded Security Desc: byteVector, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.encoded_security_desc.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Quote Text: byteVector, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.quote_text.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Instr Attrib: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.no_instr_attrib.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Group Instr Attrib: No Instr Attrib entries
  local count = value or 0
  for group_instr_attrib_index = 1, count do
    index = moex_asts_marketdatamulticast_fast_v2025_10.group_instr_attrib.dissect(buffer, index, packet, parent, presence_map, base, state, group_instr_attrib_index)
  end

  -- Currency: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.currency.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Market Segments: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.no_market_segments.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Segment Grp: No Market Segments entries
  local count = value or 0
  for market_segment_grp_index = 1, count do
    index = moex_asts_marketdatamulticast_fast_v2025_10.market_segment_grp.dissect(buffer, index, packet, parent, presence_map, base, state, market_segment_grp_index)
  end

  -- Settl Currency: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.settl_currency.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price Type: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.price_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- State Security Id: byteVector, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.state_security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Encoded Short Security Desc: byteVector, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.encoded_short_security_desc.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Code: byteVector, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.market_code.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Min Price Increment: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.min_price_increment.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Mkt Share Limit: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.mkt_share_limit.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Mkt Share Threshold: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.mkt_share_threshold.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Max Orders Volume: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.max_orders_volume.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Price Mvm Limit: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.price_mvm_limit.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Face Value: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.face_value.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Base Swap Px: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.base_swap_px.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Repo To Px: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.repo_to_px_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Buy Back Px: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.buy_back_px_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Buy Back Date: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.buy_back_date_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Shares Issued: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.no_shares_issued.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- High Limit: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.high_limit.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Low Limit: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.low_limit.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Num Of Days To Maturity: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.num_of_days_to_maturity.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: D Message
moex_asts_marketdatamulticast_fast_v2025_10.d.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_asts_marketdatamulticast_fast_v2025_10.d.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- X-tlr-curr Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.xtlrcurr_group_md_entries = {}

-- Dissect Fields: X-tlr-curr Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.xtlrcurr_group_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_update_action_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Type: string, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_type_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.symbol_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Rpt Seq: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.rpt_seq_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Side: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.order_side_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Px: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_px_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Md Entry Size: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_size_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Ref Order Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.ref_order_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Date: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_date_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Time: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Orig Time: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.orig_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Value: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trade_value_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Settl Date: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.settl_date_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settle Type: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.settle_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.price_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Price Type: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.price_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Repo To Px: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.repo_to_px_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Buy Back Px: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.buy_back_px_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Buy Back Date: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.buy_back_date_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Sub Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_sub_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Statistics: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.security_statistics_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: X-tlr-curr Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.xtlrcurr_group_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.xtlrcurr_group_md_entries, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = moex_asts_marketdatamulticast_fast_v2025_10.xtlrcurr_group_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- X-tlr-curr Message
moex_asts_marketdatamulticast_fast_v2025_10.xtlrcurr = {}

-- Dissect Fields: X-tlr-curr Message
moex_asts_marketdatamulticast_fast_v2025_10.xtlrcurr.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Message Type: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Begin String: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.msg_seq_num_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Group Md Entries: No Md Entries entries
  local count = value or 0
  for xtlrcurr_group_md_entries_index = 1, count do
    index = moex_asts_marketdatamulticast_fast_v2025_10.xtlrcurr_group_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, xtlrcurr_group_md_entries_index)
  end

  return index
end

-- Dissect: X-tlr-curr Message
moex_asts_marketdatamulticast_fast_v2025_10.xtlrcurr.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_asts_marketdatamulticast_fast_v2025_10.xtlrcurr.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- X-tlr-fond Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.xtlrfond_group_md_entries = {}

-- Dissect Fields: X-tlr-fond Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.xtlrfond_group_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_update_action_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Type: string, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_type_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.symbol_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Rpt Seq: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.rpt_seq_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Side: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.order_side_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Px: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_px_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Md Entry Size: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_size_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Ref Order Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.ref_order_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Date: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_date_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Time: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Orig Time: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.orig_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Accrued Interest Amt: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.accrued_interest_amt_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Trade Value: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trade_value_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Yield: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.yield_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Settl Date: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.settl_date_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settle Type: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.settle_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.price_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Price Type: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.price_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Repo To Px: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.repo_to_px_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Buy Back Px: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.buy_back_px_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Buy Back Date: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.buy_back_date_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Repo Term: uInt32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.repo_term.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|8:RepoTerm")

  -- Total Volume: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.total_volume_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Trading Session: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Statistics: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.security_statistics_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Sub Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_sub_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Session Date: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trade_session_date_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: X-tlr-fond Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.xtlrfond_group_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.xtlrfond_group_md_entries, buffer(offset, 0))
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

  index = moex_asts_marketdatamulticast_fast_v2025_10.xtlrfond_group_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- X-tlr-fond Message
moex_asts_marketdatamulticast_fast_v2025_10.xtlrfond = {}

-- Dissect Fields: X-tlr-fond Message
moex_asts_marketdatamulticast_fast_v2025_10.xtlrfond.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Message Type: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Begin String: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.msg_seq_num_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Group Md Entries: No Md Entries entries
  local count = value or 0
  for xtlrfond_group_md_entries_index = 1, count do
    index = moex_asts_marketdatamulticast_fast_v2025_10.xtlrfond_group_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, xtlrfond_group_md_entries_index)
  end

  return index
end

-- Dissect: X-tlr-fond Message
moex_asts_marketdatamulticast_fast_v2025_10.xtlrfond.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_asts_marketdatamulticast_fast_v2025_10.xtlrfond.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- X-olr-curr Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.xolrcurr_group_md_entries = {}

-- Dissect Fields: X-olr-curr Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.xolrcurr_group_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_update_action_copy.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|14:MDUpdateAction")

  -- Md Entry Type: string, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_type_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|11:MDEntryType")

  -- Md Entry Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.symbol_copy.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|6:Symbol")

  -- Rpt Seq: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.rpt_seq_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Px: decimal, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_px_copy.dissect(buffer, index, packet, parent, { presence_map[base + 3], false }, state, { "6:global|0:|9:MDEntryPx|E", "6:global|0:|9:MDEntryPx|M" })

  -- Md Entry Size: decimal, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_size_copy.dissect(buffer, index, packet, parent, { presence_map[base + 4], false }, state, { "6:global|0:|11:MDEntrySize|E", "6:global|0:|11:MDEntrySize|M" })

  -- Md Entry Date: uInt32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_date_copy.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "6:global|0:|11:MDEntryDate")

  -- Md Entry Time: uInt32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_time_copy.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "6:global|0:|11:MDEntryTime")

  -- Orig Time: uInt32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.orig_time_copy.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "6:global|0:|8:OrigTime")

  -- Order Status: string, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.order_status_copy.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "6:global|0:|11:OrderStatus")

  -- Trading Session Id: string, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 9], state, "6:global|0:|16:TradingSessionID")

  -- Trading Session Sub Id: string, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_sub_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 10], state, "6:global|0:|19:TradingSessionSubID")

  -- Trading Session: string, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_copy.dissect(buffer, index, packet, parent, presence_map[base + 11], state, "6:global|0:|14:TradingSession")

  -- Security Statistics: uInt32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.security_statistics_copy.dissect(buffer, index, packet, parent, presence_map[base + 12], state, "6:global|0:|18:SecurityStatistics")

  return index
end

-- Dissect: X-olr-curr Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.xolrcurr_group_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.xolrcurr_group_md_entries, buffer(offset, 0))
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

  index = moex_asts_marketdatamulticast_fast_v2025_10.xolrcurr_group_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- X-olr-curr Message
moex_asts_marketdatamulticast_fast_v2025_10.xolrcurr = {}

-- Dissect Fields: X-olr-curr Message
moex_asts_marketdatamulticast_fast_v2025_10.xolrcurr.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Message Type: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Begin String: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.msg_seq_num_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Group Md Entries: No Md Entries entries
  local count = value or 0
  for xolrcurr_group_md_entries_index = 1, count do
    index = moex_asts_marketdatamulticast_fast_v2025_10.xolrcurr_group_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, xolrcurr_group_md_entries_index)
  end

  return index
end

-- Dissect: X-olr-curr Message
moex_asts_marketdatamulticast_fast_v2025_10.xolrcurr.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_asts_marketdatamulticast_fast_v2025_10.xolrcurr.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- X-olr-fond Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.xolrfond_group_md_entries = {}

-- Dissect Fields: X-olr-fond Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.xolrfond_group_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_update_action_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Type: string, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_type_copy.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|11:MDEntryType")

  -- Md Entry Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.symbol_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|6:Symbol")

  -- Rpt Seq: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.rpt_seq_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Px: decimal, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_px_copy.dissect(buffer, index, packet, parent, { presence_map[base + 2], false }, state, { "6:global|0:|9:MDEntryPx|E", "6:global|0:|9:MDEntryPx|M" })

  -- Md Entry Size: decimal, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_size_copy.dissect(buffer, index, packet, parent, { presence_map[base + 3], false }, state, { "6:global|0:|11:MDEntrySize|E", "6:global|0:|11:MDEntrySize|M" })

  -- Md Entry Date: uInt32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_date_copy.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|11:MDEntryDate")

  -- Md Entry Time: uInt32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_time_copy.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "6:global|0:|11:MDEntryTime")

  -- Orig Time: uInt32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.orig_time_copy.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "6:global|0:|8:OrigTime")

  -- Yield: decimal, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.yield_copy.dissect(buffer, index, packet, parent, { presence_map[base + 7], false }, state, { "6:global|0:|5:Yield|E", "6:global|0:|5:Yield|M" })

  -- Order Status: string, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.order_status_copy.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "6:global|0:|11:OrderStatus")

  -- Ord Type: string, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.ord_type_copy.dissect(buffer, index, packet, parent, presence_map[base + 9], state, "6:global|0:|7:OrdType")

  -- Total Volume: decimal, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.total_volume_copy.dissect(buffer, index, packet, parent, { presence_map[base + 10], false }, state, { "6:global|0:|11:TotalVolume|E", "6:global|0:|11:TotalVolume|M" })

  -- Trading Session: string, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_copy.dissect(buffer, index, packet, parent, presence_map[base + 11], state, "6:global|0:|14:TradingSession")

  -- Security Statistics: uInt32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.security_statistics_copy.dissect(buffer, index, packet, parent, presence_map[base + 12], state, "6:global|0:|18:SecurityStatistics")

  -- Liquidity Type: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.liquidity_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Id: string, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 13], state, "6:global|0:|16:TradingSessionID")

  -- Trading Session Sub Id: string, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_sub_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 14], state, "6:global|0:|19:TradingSessionSubID")

  -- Trade Session Date: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trade_session_date_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: X-olr-fond Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.xolrfond_group_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.xolrfond_group_md_entries, buffer(offset, 0))
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

  index = moex_asts_marketdatamulticast_fast_v2025_10.xolrfond_group_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- X-olr-fond Message
moex_asts_marketdatamulticast_fast_v2025_10.xolrfond = {}

-- Dissect Fields: X-olr-fond Message
moex_asts_marketdatamulticast_fast_v2025_10.xolrfond.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Message Type: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Begin String: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.msg_seq_num_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Group Md Entries: No Md Entries entries
  local count = value or 0
  for xolrfond_group_md_entries_index = 1, count do
    index = moex_asts_marketdatamulticast_fast_v2025_10.xolrfond_group_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, xolrfond_group_md_entries_index)
  end

  return index
end

-- Dissect: X-olr-fond Message
moex_asts_marketdatamulticast_fast_v2025_10.xolrfond.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_asts_marketdatamulticast_fast_v2025_10.xolrfond.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- X-msr-curr Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.xmsrcurr_group_md_entries = {}

-- Dissect Fields: X-msr-curr Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.xmsrcurr_group_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_update_action_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Type: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_type_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.symbol_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Rpt Seq: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.rpt_seq_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Total Num Of Trades: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.total_num_of_trades.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Value: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trade_value_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Offer Nb Or: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.offer_nb_or.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Bid Nb Or: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.bid_nb_or.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Px: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_px_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Md Entry Size: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_size_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Md Entry Date: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_date_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Time: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Start Time: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.start_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Quote Condition: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.quote_condition.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Condition: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trade_condition.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Open Close Settl Flag: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.open_close_settl_flag.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.net_chg_prev_day.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Chg From Wa Price: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.chg_from_wa_price.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Chg Open Interest: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.chg_open_interest.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Bid Market Size: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.bid_market_size.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Ask Market Size: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.ask_market_size.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Chg From Settlmnt: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.chg_from_settlmnt.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Settl Date: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.settl_date_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Date2: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.settl_date2.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settle Type: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.settle_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Cx Flag: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.cx_flag.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Sub Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_sub_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Statistics: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.security_statistics_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pml Upper Limit: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.pml_upper_limit.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Pml Lower Limit: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.pml_lower_limit.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  return index
end

-- Dissect: X-msr-curr Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.xmsrcurr_group_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.xmsrcurr_group_md_entries, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = moex_asts_marketdatamulticast_fast_v2025_10.xmsrcurr_group_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- X-msr-curr Message
moex_asts_marketdatamulticast_fast_v2025_10.xmsrcurr = {}

-- Dissect Fields: X-msr-curr Message
moex_asts_marketdatamulticast_fast_v2025_10.xmsrcurr.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Message Type: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Begin String: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.msg_seq_num_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Update Time: uInt64, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.last_update_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Group Md Entries: No Md Entries entries
  local count = value or 0
  for xmsrcurr_group_md_entries_index = 1, count do
    index = moex_asts_marketdatamulticast_fast_v2025_10.xmsrcurr_group_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, xmsrcurr_group_md_entries_index)
  end

  return index
end

-- Dissect: X-msr-curr Message
moex_asts_marketdatamulticast_fast_v2025_10.xmsrcurr.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_asts_marketdatamulticast_fast_v2025_10.xmsrcurr.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- X-msr-fond Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.xmsrfond_group_md_entries = {}

-- Dissect Fields: X-msr-fond Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.xmsrfond_group_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_update_action_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Type: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_type_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.symbol_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Rpt Seq: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.rpt_seq_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Total Num Of Trades: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.total_num_of_trades.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Value: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trade_value_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Offer Nb Or: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.offer_nb_or.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Bid Nb Or: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.bid_nb_or.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Px: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_px_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Md Entry Size: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_size_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Md Entry Date: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_date_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Time: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Start Time: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.start_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Quote Condition: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.quote_condition.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Condition: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trade_condition.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Open Close Settl Flag: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.open_close_settl_flag.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.net_chg_prev_day.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Price Improvement: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.price_improvement.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Accrued Interest Amt: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.accrued_interest_amt_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Chg From Wa Price: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.chg_from_wa_price.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Chg Open Interest: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.chg_open_interest.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Bid Market Size: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.bid_market_size.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Ask Market Size: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.ask_market_size.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Yield: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.yield_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Chg From Settlmnt: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.chg_from_settlmnt.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Min Curr Px: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.min_curr_px.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Min Curr Px Chg Time: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.min_curr_px_chg_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Index Cross Rate: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.index_cross_rate.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Trading Session: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Statistics: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.security_statistics_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Volume Indicator: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.volume_indicator.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Date: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.settl_date_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Date2: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.settl_date2.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settle Type: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.settle_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Cx Flag: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.cx_flag.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Sub Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_sub_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pml Upper Limit: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.pml_upper_limit.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Pml Lower Limit: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.pml_lower_limit.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  return index
end

-- Dissect: X-msr-fond Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.xmsrfond_group_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.xmsrfond_group_md_entries, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = moex_asts_marketdatamulticast_fast_v2025_10.xmsrfond_group_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- X-msr-fond Message
moex_asts_marketdatamulticast_fast_v2025_10.xmsrfond = {}

-- Dissect Fields: X-msr-fond Message
moex_asts_marketdatamulticast_fast_v2025_10.xmsrfond.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Message Type: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Begin String: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.msg_seq_num_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Update Time: uInt64, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.last_update_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Group Md Entries: No Md Entries entries
  local count = value or 0
  for xmsrfond_group_md_entries_index = 1, count do
    index = moex_asts_marketdatamulticast_fast_v2025_10.xmsrfond_group_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, xmsrfond_group_md_entries_index)
  end

  return index
end

-- Dissect: X-msr-fond Message
moex_asts_marketdatamulticast_fast_v2025_10.xmsrfond.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_asts_marketdatamulticast_fast_v2025_10.xmsrfond.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- W-tls-curr Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.wtlscurr_group_md_entries = {}

-- Dissect Fields: W-tls-curr Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.wtlscurr_group_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Entry Type: string, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_type_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Date: uInt32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_date_copy.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|11:MDEntryDate")

  -- Md Entry Time: uInt32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_time_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|11:MDEntryTime")

  -- Orig Time: uInt32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.orig_time_copy.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|8:OrigTime")

  -- Order Side: string, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.order_side_copy.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|9:OrderSide")

  -- Md Entry Px: decimal, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_px_copy.dissect(buffer, index, packet, parent, { presence_map[base + 4], false }, state, { "6:global|0:|9:MDEntryPx|E", "6:global|0:|9:MDEntryPx|M" })

  -- Md Entry Size: decimal, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_size_copy.dissect(buffer, index, packet, parent, { presence_map[base + 5], false }, state, { "6:global|0:|11:MDEntrySize|E", "6:global|0:|11:MDEntrySize|M" })

  -- Trade Value: decimal, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trade_value_copy.dissect(buffer, index, packet, parent, { presence_map[base + 6], false }, state, { "6:global|0:|10:TradeValue|E", "6:global|0:|10:TradeValue|M" })

  -- Settl Date: uInt32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.settl_date_copy.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "6:global|0:|9:SettlDate")

  -- Settle Type: string, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.settle_type_copy.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "6:global|0:|10:SettleType")

  -- Price: decimal, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.price_copy.dissect(buffer, index, packet, parent, { presence_map[base + 9], false }, state, { "6:global|0:|5:Price|E", "6:global|0:|5:Price|M" })

  -- Price Type: int32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.price_type_copy.dissect(buffer, index, packet, parent, presence_map[base + 10], state, "6:global|0:|9:PriceType")

  -- Repo To Px: decimal, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.repo_to_px_copy.dissect(buffer, index, packet, parent, { presence_map[base + 11], false }, state, { "6:global|0:|8:RepoToPx|E", "6:global|0:|8:RepoToPx|M" })

  -- Buy Back Px: decimal, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.buy_back_px_copy.dissect(buffer, index, packet, parent, { presence_map[base + 12], false }, state, { "6:global|0:|9:BuyBackPx|E", "6:global|0:|9:BuyBackPx|M" })

  -- Buy Back Date: uInt32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.buy_back_date_copy.dissect(buffer, index, packet, parent, presence_map[base + 13], state, "6:global|0:|11:BuyBackDate")

  -- Trading Session: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Statistics: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.security_statistics_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Sub Id: string, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_sub_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 14], state, "6:global|0:|19:TradingSessionSubID")

  -- Ref Order Id: string, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.ref_order_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 15], state, "6:global|0:|10:RefOrderID")

  return index
end

-- Dissect: W-tls-curr Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.wtlscurr_group_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.wtlscurr_group_md_entries, buffer(offset, 0))
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

  index = moex_asts_marketdatamulticast_fast_v2025_10.wtlscurr_group_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- W-tls-curr Message
moex_asts_marketdatamulticast_fast_v2025_10.wtlscurr = {}

-- Dissect Fields: W-tls-curr Message
moex_asts_marketdatamulticast_fast_v2025_10.wtlscurr.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Message Type: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_w.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Begin String: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.msg_seq_num_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.last_msg_seq_num_processed.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Rpt Seq: int32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.rpt_seq_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Fragment: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.last_fragment.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Route First: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.route_first.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trad Ses Status: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trad_ses_status_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.symbol_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Security Trading Status: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_security_trading_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Group Md Entries: No Md Entries entries
  local count = value or 0
  for wtlscurr_group_md_entries_index = 1, count do
    index = moex_asts_marketdatamulticast_fast_v2025_10.wtlscurr_group_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, wtlscurr_group_md_entries_index)
  end

  return index
end

-- Dissect: W-tls-curr Message
moex_asts_marketdatamulticast_fast_v2025_10.wtlscurr.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_asts_marketdatamulticast_fast_v2025_10.wtlscurr.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- W-tls-fond Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.wtlsfond_group_md_entries = {}

-- Dissect Fields: W-tls-fond Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.wtlsfond_group_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Entry Type: string, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_type_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Date: uInt32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_date_copy.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|11:MDEntryDate")

  -- Md Entry Time: uInt32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_time_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|11:MDEntryTime")

  -- Orig Time: uInt32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.orig_time_copy.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|8:OrigTime")

  -- Order Side: string, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.order_side_copy.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|9:OrderSide")

  -- Md Entry Px: decimal, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_px_copy.dissect(buffer, index, packet, parent, { presence_map[base + 4], false }, state, { "6:global|0:|9:MDEntryPx|E", "6:global|0:|9:MDEntryPx|M" })

  -- Md Entry Size: decimal, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_size_copy.dissect(buffer, index, packet, parent, { presence_map[base + 5], false }, state, { "6:global|0:|11:MDEntrySize|E", "6:global|0:|11:MDEntrySize|M" })

  -- Accrued Interest Amt: decimal, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.accrued_interest_amt_copy.dissect(buffer, index, packet, parent, { presence_map[base + 6], false }, state, { "6:global|0:|18:AccruedInterestAmt|E", "6:global|0:|18:AccruedInterestAmt|M" })

  -- Trade Value: decimal, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trade_value_copy.dissect(buffer, index, packet, parent, { presence_map[base + 7], false }, state, { "6:global|0:|10:TradeValue|E", "6:global|0:|10:TradeValue|M" })

  -- Yield: decimal, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.yield_copy.dissect(buffer, index, packet, parent, { presence_map[base + 8], false }, state, { "6:global|0:|5:Yield|E", "6:global|0:|5:Yield|M" })

  -- Settl Date: uInt32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.settl_date_copy.dissect(buffer, index, packet, parent, presence_map[base + 9], state, "6:global|0:|9:SettlDate")

  -- Settle Type: string, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.settle_type_copy.dissect(buffer, index, packet, parent, presence_map[base + 10], state, "6:global|0:|10:SettleType")

  -- Price: decimal, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.price_copy.dissect(buffer, index, packet, parent, { presence_map[base + 11], false }, state, { "6:global|0:|5:Price|E", "6:global|0:|5:Price|M" })

  -- Price Type: int32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.price_type_copy.dissect(buffer, index, packet, parent, presence_map[base + 12], state, "6:global|0:|9:PriceType")

  -- Repo To Px: decimal, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.repo_to_px_copy.dissect(buffer, index, packet, parent, { presence_map[base + 13], false }, state, { "6:global|0:|8:RepoToPx|E", "6:global|0:|8:RepoToPx|M" })

  -- Buy Back Px: decimal, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.buy_back_px_copy.dissect(buffer, index, packet, parent, { presence_map[base + 14], false }, state, { "6:global|0:|9:BuyBackPx|E", "6:global|0:|9:BuyBackPx|M" })

  -- Buy Back Date: uInt32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.buy_back_date_copy.dissect(buffer, index, packet, parent, presence_map[base + 15], state, "6:global|0:|11:BuyBackDate")

  -- Total Volume: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.total_volume_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Repo Term: uInt32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.repo_term.dissect(buffer, index, packet, parent, presence_map[base + 16], state, "6:global|0:|8:RepoTerm")

  -- Trading Session: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Statistics: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.security_statistics_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Sub Id: string, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_sub_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 17], state, "6:global|0:|19:TradingSessionSubID")

  -- Ref Order Id: string, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.ref_order_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 18], state, "6:global|0:|10:RefOrderID")

  -- Trade Session Date: uInt32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trade_session_date_copy.dissect(buffer, index, packet, parent, presence_map[base + 19], state, "6:global|0:|16:TradeSessionDate")

  return index
end

-- Dissect: W-tls-fond Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.wtlsfond_group_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.wtlsfond_group_md_entries, buffer(offset, 0))
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

  index = moex_asts_marketdatamulticast_fast_v2025_10.wtlsfond_group_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- W-tls-fond Message
moex_asts_marketdatamulticast_fast_v2025_10.wtlsfond = {}

-- Dissect Fields: W-tls-fond Message
moex_asts_marketdatamulticast_fast_v2025_10.wtlsfond.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Message Type: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_w.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Begin String: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.msg_seq_num_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.last_msg_seq_num_processed.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Rpt Seq: int32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.rpt_seq_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Fragment: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.last_fragment.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Route First: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.route_first.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trad Ses Status: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trad_ses_status_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.symbol_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Security Trading Status: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_security_trading_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Auction Indicator: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.auction_indicator.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Group Md Entries: No Md Entries entries
  local count = value or 0
  for wtlsfond_group_md_entries_index = 1, count do
    index = moex_asts_marketdatamulticast_fast_v2025_10.wtlsfond_group_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, wtlsfond_group_md_entries_index)
  end

  return index
end

-- Dissect: W-tls-fond Message
moex_asts_marketdatamulticast_fast_v2025_10.wtlsfond.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_asts_marketdatamulticast_fast_v2025_10.wtlsfond.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- W-ols-curr Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.wolscurr_group_md_entries = {}

-- Dissect Fields: W-ols-curr Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.wolscurr_group_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Entry Type: string, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_type_copy.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|11:MDEntryType")

  -- Md Entry Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Date: uInt32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_date_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|11:MDEntryDate")

  -- Md Entry Time: uInt32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_time_copy.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|11:MDEntryTime")

  -- Orig Time: uInt32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.orig_time_copy.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|8:OrigTime")

  -- Md Entry Px: decimal, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_px_copy.dissect(buffer, index, packet, parent, { presence_map[base + 4], false }, state, { "6:global|0:|9:MDEntryPx|E", "6:global|0:|9:MDEntryPx|M" })

  -- Md Entry Size: decimal, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_size_copy.dissect(buffer, index, packet, parent, { presence_map[base + 5], false }, state, { "6:global|0:|11:MDEntrySize|E", "6:global|0:|11:MDEntrySize|M" })

  -- Order Status: string, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.order_status_copy.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "6:global|0:|11:OrderStatus")

  -- Trading Session: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Statistics: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.security_statistics_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Sub Id: string, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_sub_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "6:global|0:|19:TradingSessionSubID")

  return index
end

-- Dissect: W-ols-curr Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.wolscurr_group_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.wolscurr_group_md_entries, buffer(offset, 0))
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

  index = moex_asts_marketdatamulticast_fast_v2025_10.wolscurr_group_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- W-ols-curr Message
moex_asts_marketdatamulticast_fast_v2025_10.wolscurr = {}

-- Dissect Fields: W-ols-curr Message
moex_asts_marketdatamulticast_fast_v2025_10.wolscurr.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Message Type: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_w.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Begin String: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.msg_seq_num_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.last_msg_seq_num_processed.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Rpt Seq: int32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.rpt_seq_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Fragment: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.last_fragment.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Route First: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.route_first.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trad Ses Status: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trad_ses_status_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.symbol_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Security Trading Status: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_security_trading_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Group Md Entries: No Md Entries entries
  local count = value or 0
  for wolscurr_group_md_entries_index = 1, count do
    index = moex_asts_marketdatamulticast_fast_v2025_10.wolscurr_group_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, wolscurr_group_md_entries_index)
  end

  return index
end

-- Dissect: W-ols-curr Message
moex_asts_marketdatamulticast_fast_v2025_10.wolscurr.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_asts_marketdatamulticast_fast_v2025_10.wolscurr.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- W-ols-fond Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.wolsfond_group_md_entries = {}

-- Dissect Fields: W-ols-fond Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.wolsfond_group_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Entry Type: string, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_type_copy.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|11:MDEntryType")

  -- Md Entry Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Date: uInt32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_date_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|11:MDEntryDate")

  -- Md Entry Time: uInt32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_time_copy.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|11:MDEntryTime")

  -- Orig Time: uInt32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.orig_time_copy.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|8:OrigTime")

  -- Md Entry Px: decimal, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_px_copy.dissect(buffer, index, packet, parent, { presence_map[base + 4], false }, state, { "6:global|0:|9:MDEntryPx|E", "6:global|0:|9:MDEntryPx|M" })

  -- Md Entry Size: decimal, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_size_copy.dissect(buffer, index, packet, parent, { presence_map[base + 5], false }, state, { "6:global|0:|11:MDEntrySize|E", "6:global|0:|11:MDEntrySize|M" })

  -- Yield: decimal, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.yield_copy.dissect(buffer, index, packet, parent, { presence_map[base + 6], false }, state, { "6:global|0:|5:Yield|E", "6:global|0:|5:Yield|M" })

  -- Order Status: string, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.order_status_copy.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "6:global|0:|11:OrderStatus")

  -- Ord Type: string, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.ord_type_copy.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "6:global|0:|7:OrdType")

  -- Total Volume: decimal, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.total_volume_copy.dissect(buffer, index, packet, parent, { presence_map[base + 9], false }, state, { "6:global|0:|11:TotalVolume|E", "6:global|0:|11:TotalVolume|M" })

  -- Trading Session: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Statistics: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.security_statistics_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Liquidity Type: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.liquidity_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Sub Id: string, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_sub_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 10], state, "6:global|0:|19:TradingSessionSubID")

  -- Trade Session Date: uInt32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trade_session_date_copy.dissect(buffer, index, packet, parent, presence_map[base + 11], state, "6:global|0:|16:TradeSessionDate")

  return index
end

-- Dissect: W-ols-fond Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.wolsfond_group_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.wolsfond_group_md_entries, buffer(offset, 0))
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

  index = moex_asts_marketdatamulticast_fast_v2025_10.wolsfond_group_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- W-ols-fond Message
moex_asts_marketdatamulticast_fast_v2025_10.wolsfond = {}

-- Dissect Fields: W-ols-fond Message
moex_asts_marketdatamulticast_fast_v2025_10.wolsfond.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Message Type: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_w.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Begin String: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.msg_seq_num_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.last_msg_seq_num_processed.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Rpt Seq: int32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.rpt_seq_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Fragment: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.last_fragment.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Route First: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.route_first.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trad Ses Status: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trad_ses_status_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.symbol_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Security Trading Status: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_security_trading_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Auction Indicator: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.auction_indicator.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Group Md Entries: No Md Entries entries
  local count = value or 0
  for wolsfond_group_md_entries_index = 1, count do
    index = moex_asts_marketdatamulticast_fast_v2025_10.wolsfond_group_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, wolsfond_group_md_entries_index)
  end

  return index
end

-- Dissect: W-ols-fond Message
moex_asts_marketdatamulticast_fast_v2025_10.wolsfond.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_asts_marketdatamulticast_fast_v2025_10.wolsfond.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- X- Generic Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.x_generic_group_md_entries = {}

-- Dissect Fields: X- Generic Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.x_generic_group_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_update_action_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Type: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_type_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Rpt Seq: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.rpt_seq_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Date: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_date_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Orig Time: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.orig_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Date: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.settl_date_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Date2: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.settl_date2.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settle Type: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.settle_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Time: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Effective Time: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.effective_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Start Time: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.start_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.symbol_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Px: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_px_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Md Entry Size: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_size_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Quote Condition: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.quote_condition.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Condition: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trade_condition.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Open Close Settl Flag: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.open_close_settl_flag.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Ord Type: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.ord_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.net_chg_prev_day.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Price Improvement: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.price_improvement.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Accrued Interest Amt: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.accrued_interest_amt_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Chg From Wa Price: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.chg_from_wa_price.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Chg Open Interest: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.chg_open_interest.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Bid Market Size: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.bid_market_size.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Ask Market Size: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.ask_market_size.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Total Num Of Trades: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.total_num_of_trades.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Value: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trade_value_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Yield: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.yield_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Total Volume: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.total_volume_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Offer Nb Or: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.offer_nb_or.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Bid Nb Or: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.bid_nb_or.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Chg From Settlmnt: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.chg_from_settlmnt.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Sum Qty Of Best: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sum_qty_of_best.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Side: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.order_side_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Status: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.order_status_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Min Curr Px: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.min_curr_px.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Min Curr Px Chg Time: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.min_curr_px_chg_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Index Cross Rate: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.index_cross_rate.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Trading Session: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Statistics: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.security_statistics_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Volume Indicator: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.volume_indicator.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.price_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Price Type: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.price_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Nominal Value: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.nominal_value.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Repo To Px: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.repo_to_px_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Buy Back Px: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.buy_back_px_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Buy Back Date: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.buy_back_date_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Cx Flag: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.cx_flag.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Repo Term: uInt32, Copy, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.repo_term.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|8:RepoTerm")

  -- Trading Session Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Sub Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_sub_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: X- Generic Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.x_generic_group_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.x_generic_group_md_entries, buffer(offset, 0))
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

  index = moex_asts_marketdatamulticast_fast_v2025_10.x_generic_group_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- X- Generic Message
moex_asts_marketdatamulticast_fast_v2025_10.x_generic = {}

-- Dissect Fields: X- Generic Message
moex_asts_marketdatamulticast_fast_v2025_10.x_generic.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Message Type: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Begin String: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.msg_seq_num_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Group Md Entries: No Md Entries entries
  local count = value or 0
  for x_generic_group_md_entries_index = 1, count do
    index = moex_asts_marketdatamulticast_fast_v2025_10.x_generic_group_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, x_generic_group_md_entries_index)
  end

  return index
end

-- Dissect: X- Generic Message
moex_asts_marketdatamulticast_fast_v2025_10.x_generic.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_asts_marketdatamulticast_fast_v2025_10.x_generic.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- W- Generic Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.w_generic_group_md_entries = {}

-- Dissect Fields: W- Generic Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.w_generic_group_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Entry Type: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_type_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Date: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_date_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Time: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Orig Time: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.orig_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Px: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_px_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Md Entry Size: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_entry_size_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Quote Condition: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.quote_condition.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Condition: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trade_condition.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Open Close Settl Flag: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.open_close_settl_flag.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Ord Type: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.ord_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Effective Time: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.effective_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Start Time: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.start_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Accrued Interest Amt: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.accrued_interest_amt_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Chg From Wa Price: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.chg_from_wa_price.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Chg Open Interest: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.chg_open_interest.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Bid Market Size: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.bid_market_size.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Ask Market Size: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.ask_market_size.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Total Num Of Trades: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.total_num_of_trades.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Value: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trade_value_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Yield: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.yield_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Total Volume: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.total_volume_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Offer Nb Or: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.offer_nb_or.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Bid Nb Or: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.bid_nb_or.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Chg From Settlmnt: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.chg_from_settlmnt.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Settl Date: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.settl_date_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Date2: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.settl_date2.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settle Type: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.settle_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sum Qty Of Best: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sum_qty_of_best.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Side: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.order_side_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Status: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.order_status_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Min Curr Px: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.min_curr_px.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Index Cross Rate: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.index_cross_rate.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Min Curr Px Chg Time: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.min_curr_px_chg_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Statistics: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.security_statistics_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Volume Indicator: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.volume_indicator.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.price_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Price Type: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.price_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Nominal Value: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.nominal_value.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Repo To Px: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.repo_to_px_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Buy Back Px: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.buy_back_px_sent.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Buy Back Date: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.buy_back_date_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Cx Flag: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.cx_flag.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Sub Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_sub_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pml Upper Limit: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.pml_upper_limit.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Pml Lower Limit: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.pml_lower_limit.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  return index
end

-- Dissect: W- Generic Group Md Entries
moex_asts_marketdatamulticast_fast_v2025_10.w_generic_group_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.w_generic_group_md_entries, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = moex_asts_marketdatamulticast_fast_v2025_10.w_generic_group_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- W- Generic Message
moex_asts_marketdatamulticast_fast_v2025_10.w_generic = {}

-- Dissect Fields: W- Generic Message
moex_asts_marketdatamulticast_fast_v2025_10.w_generic.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Message Type: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_w.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Begin String: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.msg_seq_num_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Id: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trading_session_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.symbol_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.last_msg_seq_num_processed.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Rpt Seq: int32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.rpt_seq_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Fragment: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.last_fragment.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Route First: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.route_first.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trad Ses Status: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.trad_ses_status_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Security Trading Status: int32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.md_security_trading_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Auction Indicator: uInt32, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.auction_indicator.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.net_chg_prev_day.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Price Improvement: decimal, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.price_improvement.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Group Md Entries: No Md Entries entries
  local count = value or 0
  for w_generic_group_md_entries_index = 1, count do
    index = moex_asts_marketdatamulticast_fast_v2025_10.w_generic_group_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, w_generic_group_md_entries_index)
  end

  return index
end

-- Dissect: W- Generic Message
moex_asts_marketdatamulticast_fast_v2025_10.w_generic.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_asts_marketdatamulticast_fast_v2025_10.w_generic.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- 5 Message
moex_asts_marketdatamulticast_fast_v2025_10._5 = {}

-- Dissect Fields: 5 Message
moex_asts_marketdatamulticast_fast_v2025_10._5.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Message Type: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_5.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Begin String: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Target Comp Id: string, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.target_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.msg_seq_num_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Text: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.text.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: 5 Message
moex_asts_marketdatamulticast_fast_v2025_10._5.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_asts_marketdatamulticast_fast_v2025_10._5.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- A Message
moex_asts_marketdatamulticast_fast_v2025_10.a = {}

-- Dissect Fields: A Message
moex_asts_marketdatamulticast_fast_v2025_10.a.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Message Type: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.message_type_constant_a.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Begin String: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Target Comp Id: string, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.target_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.msg_seq_num_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Heart Bt Int: int32, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.heart_bt_int.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Username: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.username.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Password: string, sent, optional
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.password.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Default Appl Ver Id: string, sent
  index, value = moex_asts_marketdatamulticast_fast_v2025_10.default_appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: A Message
moex_asts_marketdatamulticast_fast_v2025_10.a.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = moex_asts_marketdatamulticast_fast_v2025_10.a.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Moex Asts MarketDataMulticast Fast 2025.10 Message Dispatch
moex_asts_marketdatamulticast_fast_v2025_10.messages = {
  [2101] = moex_asts_marketdatamulticast_fast_v2025_10.a.dissect,
  [2102] = moex_asts_marketdatamulticast_fast_v2025_10._5.dissect,
  [2803] = moex_asts_marketdatamulticast_fast_v2025_10.w_generic.dissect,
  [2704] = moex_asts_marketdatamulticast_fast_v2025_10.x_generic.dissect,
  [2910] = moex_asts_marketdatamulticast_fast_v2025_10.wolsfond.dissect,
  [3700] = moex_asts_marketdatamulticast_fast_v2025_10.wolscurr.dissect,
  [2811] = moex_asts_marketdatamulticast_fast_v2025_10.wtlsfond.dissect,
  [3701] = moex_asts_marketdatamulticast_fast_v2025_10.wtlscurr.dissect,
  [2823] = moex_asts_marketdatamulticast_fast_v2025_10.xmsrfond.dissect,
  [3813] = moex_asts_marketdatamulticast_fast_v2025_10.xmsrcurr.dissect,
  [2920] = moex_asts_marketdatamulticast_fast_v2025_10.xolrfond.dissect,
  [3710] = moex_asts_marketdatamulticast_fast_v2025_10.xolrcurr.dissect,
  [2821] = moex_asts_marketdatamulticast_fast_v2025_10.xtlrfond.dissect,
  [3711] = moex_asts_marketdatamulticast_fast_v2025_10.xtlrcurr.dissect,
  [2915] = moex_asts_marketdatamulticast_fast_v2025_10.d.dissect,
  [2106] = moex_asts_marketdatamulticast_fast_v2025_10.f.dissect,
  [2107] = moex_asts_marketdatamulticast_fast_v2025_10.h.dissect,
  [2108] = moex_asts_marketdatamulticast_fast_v2025_10._0.dissect,
}

-- Moex Asts MarketDataMulticast Fast 2025.10 Message Nodes
moex_asts_marketdatamulticast_fast_v2025_10.message_fields = {
  [2101] = omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.a,
  [2102] = omi_moex_asts_marketdatamulticast_fast_v2025_10.fields._5,
  [2803] = omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.w_generic,
  [2704] = omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.x_generic,
  [2910] = omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.wolsfond,
  [3700] = omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.wolscurr,
  [2811] = omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.wtlsfond,
  [3701] = omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.wtlscurr,
  [2823] = omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.xmsrfond,
  [3813] = omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.xmsrcurr,
  [2920] = omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.xolrfond,
  [3710] = omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.xolrcurr,
  [2821] = omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.xtlrfond,
  [3711] = omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.xtlrcurr,
  [2915] = omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.d,
  [2106] = omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.f,
  [2107] = omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.h,
  [2108] = omi_moex_asts_marketdatamulticast_fast_v2025_10.fields._0,
}

-- Moex Asts MarketDataMulticast Fast 2025.10 Template Names
moex_asts_marketdatamulticast_fast_v2025_10.template_id = {}

-- Display: Template Id
moex_asts_marketdatamulticast_fast_v2025_10.template_id.display = function(value)
  if value == 2101 then
    return "Template Id: A (2101)"
  end
  if value == 2102 then
    return "Template Id: 5 (2102)"
  end
  if value == 2803 then
    return "Template Id: W-Generic (2803)"
  end
  if value == 2704 then
    return "Template Id: X-Generic (2704)"
  end
  if value == 2910 then
    return "Template Id: W-OLS-FOND (2910)"
  end
  if value == 3700 then
    return "Template Id: W-OLS-CURR (3700)"
  end
  if value == 2811 then
    return "Template Id: W-TLS-FOND (2811)"
  end
  if value == 3701 then
    return "Template Id: W-TLS-CURR (3701)"
  end
  if value == 2823 then
    return "Template Id: X-MSR-FOND (2823)"
  end
  if value == 3813 then
    return "Template Id: X-MSR-CURR (3813)"
  end
  if value == 2920 then
    return "Template Id: X-OLR-FOND (2920)"
  end
  if value == 3710 then
    return "Template Id: X-OLR-CURR (3710)"
  end
  if value == 2821 then
    return "Template Id: X-TLR-FOND (2821)"
  end
  if value == 3711 then
    return "Template Id: X-TLR-CURR (3711)"
  end
  if value == 2915 then
    return "Template Id: d (2915)"
  end
  if value == 2106 then
    return "Template Id: f (2106)"
  end
  if value == 2107 then
    return "Template Id: h (2107)"
  end
  if value == 2108 then
    return "Template Id: 0 (2108)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Name: Template Id
moex_asts_marketdatamulticast_fast_v2025_10.template_id.name = function(value)
  if value == 2101 then
    return "A"
  end
  if value == 2102 then
    return "5"
  end
  if value == 2803 then
    return "W-Generic"
  end
  if value == 2704 then
    return "X-Generic"
  end
  if value == 2910 then
    return "W-OLS-FOND"
  end
  if value == 3700 then
    return "W-OLS-CURR"
  end
  if value == 2811 then
    return "W-TLS-FOND"
  end
  if value == 3701 then
    return "W-TLS-CURR"
  end
  if value == 2823 then
    return "X-MSR-FOND"
  end
  if value == 3813 then
    return "X-MSR-CURR"
  end
  if value == 2920 then
    return "X-OLR-FOND"
  end
  if value == 3710 then
    return "X-OLR-CURR"
  end
  if value == 2821 then
    return "X-TLR-FOND"
  end
  if value == 3711 then
    return "X-TLR-CURR"
  end
  if value == 2915 then
    return "d"
  end
  if value == 2106 then
    return "f"
  end
  if value == 2107 then
    return "h"
  end
  if value == 2108 then
    return "0"
  end

  return "Unknown"
end

-- Moex Asts MarketDataMulticast Fast 2025.10 Packet Dissector
omi_moex_asts_marketdatamulticast_fast_v2025_10.dissector = function(buffer, packet, parent)
  packet.cols.protocol = "Moex Asts MarketDataMulticast Fast 2025.10"
  local root = parent:add(omi_moex_asts_marketdatamulticast_fast_v2025_10, buffer(), "Moex Asts MarketDataMulticast Fast 2025.10")
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

    local message_field = moex_asts_marketdatamulticast_fast_v2025_10.message_fields[template_id]
    local message_tree = nil

    if message_field ~= nil then
      message_tree = root:add(message_field, buffer(start, 0))
    else
      message_tree = root:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.message, buffer(start, 0))
      message_tree:set_text(moex_asts_marketdatamulticast_fast_v2025_10.template_id.name(template_id))
    end

    -- the presence map and the template id are the message's own framing
    local header = message_tree:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.message_header, buffer(start, offset - start))
    add_presence_map(header, buffer(start, mapped - start), omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.presence_map, omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.presence_stop, omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.presence_identified, omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.presence_unused, moex_asts_marketdatamulticast_fast_v2025_10.presence_bits.named[template_id])
    header:add(omi_moex_asts_marketdatamulticast_fast_v2025_10.fields.template_id, buffer(identified, offset - identified), template_id, moex_asts_marketdatamulticast_fast_v2025_10.template_id.display(template_id))

    local message = moex_asts_marketdatamulticast_fast_v2025_10.messages[template_id]

    if message == nil then
      message_tree:add_expert_info(PI_UNDECODED, PI_WARN, "This dissector reads: 2101 (A), 2102 (5), 2803 (W-Generic), 2704 (X-Generic), 2910 (W-OLS-FOND), 3700 (W-OLS-CURR), 2811 (W-TLS-FOND), 3701 (W-TLS-CURR), 2823 (X-MSR-FOND), 3813 (X-MSR-CURR), 2920 (X-OLR-FOND), 3710 (X-OLR-CURR), 2821 (X-TLR-FOND), 3711 (X-TLR-CURR), 2915 (d), 2106 (f), 2107 (h), 2108 (0)")
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
omi_moex_asts_marketdatamulticast_fast_v2025_10.init = function()
  stream_states = {}
end

-- Register Moex Asts MarketDataMulticast Fast 2025.10 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_moex_asts_marketdatamulticast_fast_v2025_10)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Moscow Exchange
--   Version: v2025.10
--   Specification: ENG_Market_Data_Multicast_User_Guide_Ver_5_1.pdf
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
