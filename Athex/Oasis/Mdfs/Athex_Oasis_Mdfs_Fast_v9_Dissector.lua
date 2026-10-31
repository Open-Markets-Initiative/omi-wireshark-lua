-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Athex Oasis Mdfs Fast 9 Protocol
local omi_athex_oasis_mdfs_fast_v9 = Proto("Omi.Athex.Oasis.Mdfs.Fast.v9", "Athex Oasis Mdfs Fast 9")

-- Protocol table
local athex_oasis_mdfs_fast_v9 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Athex Oasis Mdfs Fast 9 Framing
omi_athex_oasis_mdfs_fast_v9.fields.message = ProtoField.new("Message", "athex.oasis.mdfs.fast.v9.message", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.message_header = ProtoField.new("Message Header", "athex.oasis.mdfs.fast.v9.messageheader", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.presence_map = ProtoField.new("Presence Map", "athex.oasis.mdfs.fast.v9.presencemap", ftypes.BYTES)
omi_athex_oasis_mdfs_fast_v9.fields.template_id = ProtoField.new("Template Id", "athex.oasis.mdfs.fast.v9.templateid", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.presence_stop = ProtoField.new("Stop Bit", "athex.oasis.mdfs.fast.v9.presencestop", ftypes.UINT8, { [0] = "Clear", [1] = "Set" }, base.DEC)
omi_athex_oasis_mdfs_fast_v9.fields.presence_identified = ProtoField.new("Template Id", "athex.oasis.mdfs.fast.v9.presencetemplateid", ftypes.UINT8, { [0] = "Repeated", [1] = "Sent" }, base.DEC)
omi_athex_oasis_mdfs_fast_v9.fields.presence_unused = ProtoField.new("Unused", "athex.oasis.mdfs.fast.v9.presenceunused", ftypes.UINT8, nil, base.HEX)
athex_oasis_mdfs_fast_v9.presence_bits = {}

-- Athex Oasis Mdfs Fast 9 Presence Map Fields
omi_athex_oasis_mdfs_fast_v9.fields.presence_no_athex_recovery_seq_nums = ProtoField.new("No Athex Recovery Seq Nums", "athex.oasis.mdfs.fast.v9.noathexrecoveryseqnumspresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_athex_oasis_mdfs_fast_v9.fields.presence_last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "athex.oasis.mdfs.fast.v9.lastmsgseqnumprocessedpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_athex_oasis_mdfs_fast_v9.fields.presence_athex_snapshot_indicator = ProtoField.new("Athex Snapshot Indicator", "athex.oasis.mdfs.fast.v9.athexsnapshotindicatorpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_athex_oasis_mdfs_fast_v9.fields.presence_athex_fragment_indicator = ProtoField.new("Athex Fragment Indicator", "athex.oasis.mdfs.fast.v9.athexfragmentindicatorpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_athex_oasis_mdfs_fast_v9.fields.presence_trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "athex.oasis.mdfs.fast.v9.tradingsessionsubidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_athex_oasis_mdfs_fast_v9.fields.presence_security_status_grp = ProtoField.new("Security Status Grp", "athex.oasis.mdfs.fast.v9.securitystatusgrppresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_athex_oasis_mdfs_fast_v9.fields.presence_athex_auction_type = ProtoField.new("Athex Auction Type", "athex.oasis.mdfs.fast.v9.athexauctiontypepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_athex_oasis_mdfs_fast_v9.fields.presence_trading_session_grp = ProtoField.new("Trading Session Grp", "athex.oasis.mdfs.fast.v9.tradingsessiongrppresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_athex_oasis_mdfs_fast_v9.fields.presence_athex_system_status = ProtoField.new("Athex System Status", "athex.oasis.mdfs.fast.v9.athexsystemstatuspresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_athex_oasis_mdfs_fast_v9.fields.presence_md_book_type = ProtoField.new("Md Book Type", "athex.oasis.mdfs.fast.v9.mdbooktypepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_athex_oasis_mdfs_fast_v9.fields.presence_instrument_grp = ProtoField.new("Instrument Grp", "athex.oasis.mdfs.fast.v9.instrumentgrppresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_athex_oasis_mdfs_fast_v9.fields.presence_no_underlyings = ProtoField.new("No Underlyings", "athex.oasis.mdfs.fast.v9.nounderlyingspresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)

athex_oasis_mdfs_fast_v9.presence_bits.named = {
  [17] = {
    [2] = omi_athex_oasis_mdfs_fast_v9.fields.presence_no_athex_recovery_seq_nums,
  },
  [18] = {
    [2] = omi_athex_oasis_mdfs_fast_v9.fields.presence_last_msg_seq_num_processed,
    [3] = omi_athex_oasis_mdfs_fast_v9.fields.presence_athex_snapshot_indicator,
    [4] = omi_athex_oasis_mdfs_fast_v9.fields.presence_athex_fragment_indicator,
    [5] = omi_athex_oasis_mdfs_fast_v9.fields.presence_no_athex_recovery_seq_nums,
    [6] = omi_athex_oasis_mdfs_fast_v9.fields.presence_trading_session_sub_id,
    [7] = omi_athex_oasis_mdfs_fast_v9.fields.presence_security_status_grp,
    [8] = omi_athex_oasis_mdfs_fast_v9.fields.presence_athex_auction_type,
  },
  [19] = {
    [2] = omi_athex_oasis_mdfs_fast_v9.fields.presence_last_msg_seq_num_processed,
    [3] = omi_athex_oasis_mdfs_fast_v9.fields.presence_athex_snapshot_indicator,
    [4] = omi_athex_oasis_mdfs_fast_v9.fields.presence_athex_fragment_indicator,
    [5] = omi_athex_oasis_mdfs_fast_v9.fields.presence_no_athex_recovery_seq_nums,
    [6] = omi_athex_oasis_mdfs_fast_v9.fields.presence_trading_session_grp,
    [7] = omi_athex_oasis_mdfs_fast_v9.fields.presence_athex_system_status,
    [8] = omi_athex_oasis_mdfs_fast_v9.fields.presence_athex_auction_type,
  },
  [20] = {
    [2] = omi_athex_oasis_mdfs_fast_v9.fields.presence_last_msg_seq_num_processed,
    [3] = omi_athex_oasis_mdfs_fast_v9.fields.presence_athex_snapshot_indicator,
    [4] = omi_athex_oasis_mdfs_fast_v9.fields.presence_athex_fragment_indicator,
    [5] = omi_athex_oasis_mdfs_fast_v9.fields.presence_no_athex_recovery_seq_nums,
  },
  [21] = {
    [2] = omi_athex_oasis_mdfs_fast_v9.fields.presence_athex_snapshot_indicator,
    [3] = omi_athex_oasis_mdfs_fast_v9.fields.presence_athex_fragment_indicator,
    [4] = omi_athex_oasis_mdfs_fast_v9.fields.presence_md_book_type,
    [5] = omi_athex_oasis_mdfs_fast_v9.fields.presence_instrument_grp,
    [6] = omi_athex_oasis_mdfs_fast_v9.fields.presence_no_underlyings,
  },
  [22] = {
    [2] = omi_athex_oasis_mdfs_fast_v9.fields.presence_athex_fragment_indicator,
    [3] = omi_athex_oasis_mdfs_fast_v9.fields.presence_no_athex_recovery_seq_nums,
    [4] = omi_athex_oasis_mdfs_fast_v9.fields.presence_md_book_type,
  },
  [10] = {
    [2] = omi_athex_oasis_mdfs_fast_v9.fields.presence_last_msg_seq_num_processed,
    [3] = omi_athex_oasis_mdfs_fast_v9.fields.presence_athex_snapshot_indicator,
    [4] = omi_athex_oasis_mdfs_fast_v9.fields.presence_athex_fragment_indicator,
    [5] = omi_athex_oasis_mdfs_fast_v9.fields.presence_trading_session_sub_id,
    [6] = omi_athex_oasis_mdfs_fast_v9.fields.presence_security_status_grp,
  },
  [11] = {
    [2] = omi_athex_oasis_mdfs_fast_v9.fields.presence_last_msg_seq_num_processed,
    [3] = omi_athex_oasis_mdfs_fast_v9.fields.presence_athex_snapshot_indicator,
    [4] = omi_athex_oasis_mdfs_fast_v9.fields.presence_athex_fragment_indicator,
  },
  [12] = {
    [2] = omi_athex_oasis_mdfs_fast_v9.fields.presence_last_msg_seq_num_processed,
    [3] = omi_athex_oasis_mdfs_fast_v9.fields.presence_athex_snapshot_indicator,
    [4] = omi_athex_oasis_mdfs_fast_v9.fields.presence_athex_fragment_indicator,
  },
  [15] = {
    [2] = omi_athex_oasis_mdfs_fast_v9.fields.presence_athex_snapshot_indicator,
    [3] = omi_athex_oasis_mdfs_fast_v9.fields.presence_athex_fragment_indicator,
    [4] = omi_athex_oasis_mdfs_fast_v9.fields.presence_md_book_type,
    [5] = omi_athex_oasis_mdfs_fast_v9.fields.presence_instrument_grp,
    [6] = omi_athex_oasis_mdfs_fast_v9.fields.presence_no_underlyings,
  },
  [16] = {
    [2] = omi_athex_oasis_mdfs_fast_v9.fields.presence_athex_fragment_indicator,
    [3] = omi_athex_oasis_mdfs_fast_v9.fields.presence_md_book_type,
  },
}

-- Athex Oasis Mdfs Fast 9 Fields
omi_athex_oasis_mdfs_fast_v9.fields.begin_string = ProtoField.new("Begin String", "athex.oasis.mdfs.fast.v9.beginstring", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.body_length = ProtoField.new("Body Length", "athex.oasis.mdfs.fast.v9.bodylength", ftypes.INT32)
omi_athex_oasis_mdfs_fast_v9.fields.msg_type = ProtoField.new("Msg Type", "athex.oasis.mdfs.fast.v9.msgtype", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.sender_comp_id = ProtoField.new("Sender Comp Id", "athex.oasis.mdfs.fast.v9.sendercompid", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.target_comp_id = ProtoField.new("Target Comp Id", "athex.oasis.mdfs.fast.v9.targetcompid", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "athex.oasis.mdfs.fast.v9.msgseqnum", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.sending_time = ProtoField.new("Sending Time", "athex.oasis.mdfs.fast.v9.sendingtime", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "athex.oasis.mdfs.fast.v9.lastmsgseqnumprocessed", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.no_athex_recovery_seq_nums = ProtoField.new("No Athex Recovery Seq Nums", "athex.oasis.mdfs.fast.v9.noathexrecoveryseqnums", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.athex_recovery_seq_num = ProtoField.new("Athex Recovery Seq Num", "athex.oasis.mdfs.fast.v9.athexrecoveryseqnum", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.appl_id = ProtoField.new("Appl Id", "athex.oasis.mdfs.fast.v9.applid", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.appl_seq_num = ProtoField.new("Appl Seq Num", "athex.oasis.mdfs.fast.v9.applseqnum", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.checksum = ProtoField.new("Checksum", "athex.oasis.mdfs.fast.v9.checksum", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.athex_snapshot_indicator = ProtoField.new("Athex Snapshot Indicator", "athex.oasis.mdfs.fast.v9.athexsnapshotindicator", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.athex_fragment_indicator = ProtoField.new("Athex Fragment Indicator", "athex.oasis.mdfs.fast.v9.athexfragmentindicator", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.symbol = ProtoField.new("Symbol", "athex.oasis.mdfs.fast.v9.symbol", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.athex_security_category = ProtoField.new("Athex Security Category", "athex.oasis.mdfs.fast.v9.athexsecuritycategory", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.security_type = ProtoField.new("Security Type", "athex.oasis.mdfs.fast.v9.securitytype", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.security_exchange = ProtoField.new("Security Exchange", "athex.oasis.mdfs.fast.v9.securityexchange", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.athex_market_id = ProtoField.new("Athex Market Id", "athex.oasis.mdfs.fast.v9.athexmarketid", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "athex.oasis.mdfs.fast.v9.tradingsessionsubid", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.security_trading_status = ProtoField.new("Security Trading Status", "athex.oasis.mdfs.fast.v9.securitytradingstatus", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.halt_reason = ProtoField.new("Halt Reason", "athex.oasis.mdfs.fast.v9.haltreason", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.athex_auction_type = ProtoField.new("Athex Auction Type", "athex.oasis.mdfs.fast.v9.athexauctiontype", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.transact_time = ProtoField.new("Transact Time", "athex.oasis.mdfs.fast.v9.transacttime", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.athex_board_id = ProtoField.new("Athex Board Id", "athex.oasis.mdfs.fast.v9.athexboardid", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.trading_session_id = ProtoField.new("Trading Session Id", "athex.oasis.mdfs.fast.v9.tradingsessionid", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.trad_ses_status = ProtoField.new("Trad Ses Status", "athex.oasis.mdfs.fast.v9.tradsesstatus", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.athex_system_status = ProtoField.new("Athex System Status", "athex.oasis.mdfs.fast.v9.athexsystemstatus", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.language_code = ProtoField.new("Language Code", "athex.oasis.mdfs.fast.v9.languagecode", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.headline = ProtoField.new("Headline", "athex.oasis.mdfs.fast.v9.headline", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.no_lines_of_text = ProtoField.new("No Lines Of Text", "athex.oasis.mdfs.fast.v9.nolinesoftext", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.text = ProtoField.new("Text", "athex.oasis.mdfs.fast.v9.text", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.md_book_type = ProtoField.new("Md Book Type", "athex.oasis.mdfs.fast.v9.mdbooktype", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "athex.oasis.mdfs.fast.v9.contractmultiplier", ftypes.DOUBLE)
omi_athex_oasis_mdfs_fast_v9.fields.accrued_interest_amt = ProtoField.new("Accrued Interest Amt", "athex.oasis.mdfs.fast.v9.accruedinterestamt", ftypes.DOUBLE)
omi_athex_oasis_mdfs_fast_v9.fields.security_id = ProtoField.new("Security Id", "athex.oasis.mdfs.fast.v9.securityid", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.security_id_source = ProtoField.new("Security Id Source", "athex.oasis.mdfs.fast.v9.securityidsource", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.financial_instrument_full_name = ProtoField.new("Financial Instrument Full Name", "athex.oasis.mdfs.fast.v9.financialinstrumentfullname", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.cfi_code = ProtoField.new("Cfi Code", "athex.oasis.mdfs.fast.v9.cficode", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.unit_of_measure_qty = ProtoField.new("Unit Of Measure Qty", "athex.oasis.mdfs.fast.v9.unitofmeasureqty", ftypes.DOUBLE)
omi_athex_oasis_mdfs_fast_v9.fields.athexapa_unit_of_measure = ProtoField.new("Athexapa Unit Of Measure", "athex.oasis.mdfs.fast.v9.athexapaunitofmeasure", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.put_or_call = ProtoField.new("Put Or Call", "athex.oasis.mdfs.fast.v9.putorcall", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.strike_price = ProtoField.new("Strike Price", "athex.oasis.mdfs.fast.v9.strikeprice", ftypes.DOUBLE)
omi_athex_oasis_mdfs_fast_v9.fields.strike_currency = ProtoField.new("Strike Currency", "athex.oasis.mdfs.fast.v9.strikecurrency", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.athexapa_strike_price_type_uint32 = ProtoField.new("Athexapa Strike Price Type", "athex.oasis.mdfs.fast.v9.athexapastrikepricetype.uint32", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.athexapa_strike_price_type_string = ProtoField.new("Athexapa Strike Price Type", "athex.oasis.mdfs.fast.v9.athexapastrikepricetype.string", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.exercise_style = ProtoField.new("Exercise Style", "athex.oasis.mdfs.fast.v9.exercisestyle", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.maturity_date = ProtoField.new("Maturity Date", "athex.oasis.mdfs.fast.v9.maturitydate", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.settl_method = ProtoField.new("Settl Method", "athex.oasis.mdfs.fast.v9.settlmethod", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.no_underlyings = ProtoField.new("No Underlyings", "athex.oasis.mdfs.fast.v9.nounderlyings", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.underlying_security_id = ProtoField.new("Underlying Security Id", "athex.oasis.mdfs.fast.v9.underlyingsecurityid", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.underlying_security_id_source = ProtoField.new("Underlying Security Id Source", "athex.oasis.mdfs.fast.v9.underlyingsecurityidsource", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.underlying_index_curve_unit = ProtoField.new("Underlying Index Curve Unit", "athex.oasis.mdfs.fast.v9.underlyingindexcurveunit", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.underlying_index_curve_period = ProtoField.new("Underlying Index Curve Period", "athex.oasis.mdfs.fast.v9.underlyingindexcurveperiod", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.no_md_entries = ProtoField.new("No Md Entries", "athex.oasis.mdfs.fast.v9.nomdentries", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.md_entry_type = ProtoField.new("Md Entry Type", "athex.oasis.mdfs.fast.v9.mdentrytype", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.md_entry_px = ProtoField.new("Md Entry Px", "athex.oasis.mdfs.fast.v9.mdentrypx", ftypes.DOUBLE)
omi_athex_oasis_mdfs_fast_v9.fields.md_entry_size = ProtoField.new("Md Entry Size", "athex.oasis.mdfs.fast.v9.mdentrysize", ftypes.DOUBLE)
omi_athex_oasis_mdfs_fast_v9.fields.md_origin_type = ProtoField.new("Md Origin Type", "athex.oasis.mdfs.fast.v9.mdorigintype", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.market_depth = ProtoField.new("Market Depth", "athex.oasis.mdfs.fast.v9.marketdepth", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.md_price_level = ProtoField.new("Md Price Level", "athex.oasis.mdfs.fast.v9.mdpricelevel", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.number_of_orders = ProtoField.new("Number Of Orders", "athex.oasis.mdfs.fast.v9.numberoforders", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.md_entry_position_no = ProtoField.new("Md Entry Position No", "athex.oasis.mdfs.fast.v9.mdentrypositionno", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.order_id = ProtoField.new("Order Id", "athex.oasis.mdfs.fast.v9.orderid", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.ord_status = ProtoField.new("Ord Status", "athex.oasis.mdfs.fast.v9.ordstatus", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.cum_qty = ProtoField.new("Cum Qty", "athex.oasis.mdfs.fast.v9.cumqty", ftypes.DOUBLE)
omi_athex_oasis_mdfs_fast_v9.fields.time_in_force = ProtoField.new("Time In Force", "athex.oasis.mdfs.fast.v9.timeinforce", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.ord_type = ProtoField.new("Ord Type", "athex.oasis.mdfs.fast.v9.ordtype", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.athex_special_condition = ProtoField.new("Athex Special Condition", "athex.oasis.mdfs.fast.v9.athexspecialcondition", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.athex_condition_volume = ProtoField.new("Athex Condition Volume", "athex.oasis.mdfs.fast.v9.athexconditionvolume", ftypes.DOUBLE)
omi_athex_oasis_mdfs_fast_v9.fields.athex_order_entry_date = ProtoField.new("Athex Order Entry Date", "athex.oasis.mdfs.fast.v9.athexorderentrydate", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.trade_condition = ProtoField.new("Trade Condition", "athex.oasis.mdfs.fast.v9.tradecondition", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.trade_id = ProtoField.new("Trade Id", "athex.oasis.mdfs.fast.v9.tradeid", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.order_category = ProtoField.new("Order Category", "athex.oasis.mdfs.fast.v9.ordercategory", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.no_trd_reg_publications = ProtoField.new("No Trd Reg Publications", "athex.oasis.mdfs.fast.v9.notrdregpublications", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.trd_reg_publication_type = ProtoField.new("Trd Reg Publication Type", "athex.oasis.mdfs.fast.v9.trdregpublicationtype", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.trd_reg_publication_reason = ProtoField.new("Trd Reg Publication Reason", "athex.oasis.mdfs.fast.v9.trdregpublicationreason", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.no_trade_price_conditions = ProtoField.new("No Trade Price Conditions", "athex.oasis.mdfs.fast.v9.notradepriceconditions", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.trade_price_condition = ProtoField.new("Trade Price Condition", "athex.oasis.mdfs.fast.v9.tradepricecondition", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.algorithmic_trade_indicator = ProtoField.new("Algorithmic Trade Indicator", "athex.oasis.mdfs.fast.v9.algorithmictradeindicator", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.trade_publish_indicator = ProtoField.new("Trade Publish Indicator", "athex.oasis.mdfs.fast.v9.tradepublishindicator", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.athex_total_volume = ProtoField.new("Athex Total Volume", "athex.oasis.mdfs.fast.v9.athextotalvolume", ftypes.DOUBLE)
omi_athex_oasis_mdfs_fast_v9.fields.athex_trade_value = ProtoField.new("Athex Trade Value", "athex.oasis.mdfs.fast.v9.athextradevalue", ftypes.DOUBLE)
omi_athex_oasis_mdfs_fast_v9.fields.athex_index_type = ProtoField.new("Athex Index Type", "athex.oasis.mdfs.fast.v9.athexindextype", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.low_limit_price = ProtoField.new("Low Limit Price", "athex.oasis.mdfs.fast.v9.lowlimitprice", ftypes.DOUBLE)
omi_athex_oasis_mdfs_fast_v9.fields.high_limit_price = ProtoField.new("High Limit Price", "athex.oasis.mdfs.fast.v9.highlimitprice", ftypes.DOUBLE)
omi_athex_oasis_mdfs_fast_v9.fields.no_trade_types = ProtoField.new("No Trade Types", "athex.oasis.mdfs.fast.v9.notradetypes", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.trade_type = ProtoField.new("Trade Type", "athex.oasis.mdfs.fast.v9.tradetype", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.trade_sub_type = ProtoField.new("Trade Sub Type", "athex.oasis.mdfs.fast.v9.tradesubtype", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.athexapa_report_status = ProtoField.new("Athexapa Report Status", "athex.oasis.mdfs.fast.v9.athexapareportstatus", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.no_party_i_ds = ProtoField.new("No Party I Ds", "athex.oasis.mdfs.fast.v9.nopartyids", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.party_id = ProtoField.new("Party Id", "athex.oasis.mdfs.fast.v9.partyid", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.party_id_source = ProtoField.new("Party Id Source", "athex.oasis.mdfs.fast.v9.partyidsource", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.price_type = ProtoField.new("Price Type", "athex.oasis.mdfs.fast.v9.pricetype", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.athexapa_price_currency = ProtoField.new("Athexapa Price Currency", "athex.oasis.mdfs.fast.v9.athexapapricecurrency", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.athexapa_price_multiplier = ProtoField.new("Athexapa Price Multiplier", "athex.oasis.mdfs.fast.v9.athexapapricemultiplier", ftypes.DOUBLE)
omi_athex_oasis_mdfs_fast_v9.fields.athexapa_size_currency = ProtoField.new("Athexapa Size Currency", "athex.oasis.mdfs.fast.v9.athexapasizecurrency", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.athexapa_trade_value_currency = ProtoField.new("Athexapa Trade Value Currency", "athex.oasis.mdfs.fast.v9.athexapatradevaluecurrency", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.expire_date = ProtoField.new("Expire Date", "athex.oasis.mdfs.fast.v9.expiredate", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.last_mkt = ProtoField.new("Last Mkt", "athex.oasis.mdfs.fast.v9.lastmkt", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.side = ProtoField.new("Side", "athex.oasis.mdfs.fast.v9.side", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.quote_id = ProtoField.new("Quote Id", "athex.oasis.mdfs.fast.v9.quoteid", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.athexapa_quote_liquidity = ProtoField.new("Athexapa Quote Liquidity", "athex.oasis.mdfs.fast.v9.athexapaquoteliquidity", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.athexapa_trade_id_indicator = ProtoField.new("Athexapa Trade Id Indicator", "athex.oasis.mdfs.fast.v9.athexapatradeidindicator", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.no_athexapa_regulatory_report_types = ProtoField.new("No Athexapa Regulatory Report Types", "athex.oasis.mdfs.fast.v9.noathexaparegulatoryreporttypes", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.regulatory_report_type = ProtoField.new("Regulatory Report Type", "athex.oasis.mdfs.fast.v9.regulatoryreporttype", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.number_of_trades = ProtoField.new("Number Of Trades", "athex.oasis.mdfs.fast.v9.numberoftrades", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.athexapa_transaction_to_be_cleared = ProtoField.new("Athexapa Transaction To Be Cleared", "athex.oasis.mdfs.fast.v9.athexapatransactiontobecleared", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.athexapa_venue_of_publication = ProtoField.new("Athexapa Venue Of Publication", "athex.oasis.mdfs.fast.v9.athexapavenueofpublication", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.athexapa_third_country_venue = ProtoField.new("Athexapa Third Country Venue", "athex.oasis.mdfs.fast.v9.athexapathirdcountryvenue", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.md_update_action = ProtoField.new("Md Update Action", "athex.oasis.mdfs.fast.v9.mdupdateaction", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.previously_reported = ProtoField.new("Previously Reported", "athex.oasis.mdfs.fast.v9.previouslyreported", ftypes.STRING)
omi_athex_oasis_mdfs_fast_v9.fields.no_athexapa_trd_types = ProtoField.new("No Athexapa Trd Types", "athex.oasis.mdfs.fast.v9.noathexapatrdtypes", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.trd_type = ProtoField.new("Trd Type", "athex.oasis.mdfs.fast.v9.trdtype", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.trd_sub_type = ProtoField.new("Trd Sub Type", "athex.oasis.mdfs.fast.v9.trdsubtype", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.secondary_trd_type = ProtoField.new("Secondary Trd Type", "athex.oasis.mdfs.fast.v9.secondarytrdtype", ftypes.UINT32)
omi_athex_oasis_mdfs_fast_v9.fields.athexapa_emission_allowance = ProtoField.new("Athexapa Emission Allowance", "athex.oasis.mdfs.fast.v9.athexapaemissionallowance", ftypes.STRING)

-- Athex Oasis Mdfs Fast 9 Messages
omi_athex_oasis_mdfs_fast_v9.fields.heartbeat_17 = ProtoField.new("Heartbeat_17 Message", "athex.oasis.mdfs.fast.v9.heartbeat_17", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.athex_recovery_grp = ProtoField.new("Athex Recovery Grp", "athex.oasis.mdfs.fast.v9.athexrecoverygrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.security_status_18 = ProtoField.new("Security Status_18 Message", "athex.oasis.mdfs.fast.v9.securitystatus_18", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.athex_recovery_grp = ProtoField.new("Athex Recovery Grp", "athex.oasis.mdfs.fast.v9.athexrecoverygrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.security_status_grp = ProtoField.new("Security Status Grp", "athex.oasis.mdfs.fast.v9.securitystatusgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.trading_session_status_19 = ProtoField.new("Trading Session Status_19 Message", "athex.oasis.mdfs.fast.v9.tradingsessionstatus_19", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.athex_recovery_grp = ProtoField.new("Athex Recovery Grp", "athex.oasis.mdfs.fast.v9.athexrecoverygrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.trading_session_grp = ProtoField.new("Trading Session Grp", "athex.oasis.mdfs.fast.v9.tradingsessiongrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.news_20 = ProtoField.new("News_20 Message", "athex.oasis.mdfs.fast.v9.news_20", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.athex_recovery_grp = ProtoField.new("Athex Recovery Grp", "athex.oasis.mdfs.fast.v9.athexrecoverygrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.lines_of_text_grp = ProtoField.new("Lines Of Text Grp", "athex.oasis.mdfs.fast.v9.linesoftextgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.market_data_snapshot_full_refresh_21 = ProtoField.new("Market Data Snapshot Full Refresh_21 Message", "athex.oasis.mdfs.fast.v9.marketdatasnapshotfullrefresh_21", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.instrument_grp = ProtoField.new("Instrument Grp", "athex.oasis.mdfs.fast.v9.instrumentgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.bonds_instrument_grp = ProtoField.new("Bonds Instrument Grp", "athex.oasis.mdfs.fast.v9.bondsinstrumentgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.apaotc_instrument_grp = ProtoField.new("Apaotc Instrument Grp", "athex.oasis.mdfs.fast.v9.apaotcinstrumentgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.und_instrmt_grp = ProtoField.new("Und Instrmt Grp", "athex.oasis.mdfs.fast.v9.undinstrmtgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.market_data_snapshot_full_refresh_21_md_full_grp = ProtoField.new("Market Data Snapshot Full Refresh_21 Md Full Grp", "athex.oasis.mdfs.fast.v9.marketdatasnapshotfullrefresh_21mdfullgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.price_depth_grp = ProtoField.new("Price Depth Grp", "athex.oasis.mdfs.fast.v9.pricedepthgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.order_depth_grp = ProtoField.new("Order Depth Grp", "athex.oasis.mdfs.fast.v9.orderdepthgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.market_data_snapshot_full_refresh_21_trade_grp = ProtoField.new("Market Data Snapshot Full Refresh_21 Trade Grp", "athex.oasis.mdfs.fast.v9.marketdatasnapshotfullrefresh_21tradegrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.trd_reg_publication_grp = ProtoField.new("Trd Reg Publication Grp", "athex.oasis.mdfs.fast.v9.trdregpublicationgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.trade_price_condition_grp = ProtoField.new("Trade Price Condition Grp", "athex.oasis.mdfs.fast.v9.tradepriceconditiongrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.price_limits_grp = ProtoField.new("Price Limits Grp", "athex.oasis.mdfs.fast.v9.pricelimitsgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.market_data_snapshot_full_refresh_21_apaotc_trade_grp = ProtoField.new("Market Data Snapshot Full Refresh_21 Apaotc Trade Grp", "athex.oasis.mdfs.fast.v9.marketdatasnapshotfullrefresh_21apaotctradegrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.trade_type_grp = ProtoField.new("Trade Type Grp", "athex.oasis.mdfs.fast.v9.tradetypegrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.parties_grp = ProtoField.new("Parties Grp", "athex.oasis.mdfs.fast.v9.partiesgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.apaotc_pre_trade_grp = ProtoField.new("Apaotc Pre Trade Grp", "athex.oasis.mdfs.fast.v9.apaotcpretradegrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.market_data_snapshot_full_refresh_21_apaotc_post_trade_grp = ProtoField.new("Market Data Snapshot Full Refresh_21 Apaotc Post Trade Grp", "athex.oasis.mdfs.fast.v9.marketdatasnapshotfullrefresh_21apaotcposttradegrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.athexapa_regulatory_report_type_grp = ProtoField.new("Athexapa Regulatory Report Type Grp", "athex.oasis.mdfs.fast.v9.athexaparegulatoryreporttypegrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.market_data_incremental_refresh_22 = ProtoField.new("Market Data Incremental Refresh_22 Message", "athex.oasis.mdfs.fast.v9.marketdataincrementalrefresh_22", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.athex_recovery_grp = ProtoField.new("Athex Recovery Grp", "athex.oasis.mdfs.fast.v9.athexrecoverygrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.market_data_incremental_refresh_22_md_inc_grp = ProtoField.new("Market Data Incremental Refresh_22 Md Inc Grp", "athex.oasis.mdfs.fast.v9.marketdataincrementalrefresh_22mdincgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.bonds_instrument_grp = ProtoField.new("Bonds Instrument Grp", "athex.oasis.mdfs.fast.v9.bondsinstrumentgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.apaotc_instrument_grp = ProtoField.new("Apaotc Instrument Grp", "athex.oasis.mdfs.fast.v9.apaotcinstrumentgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.price_depth_grp = ProtoField.new("Price Depth Grp", "athex.oasis.mdfs.fast.v9.pricedepthgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.order_depth_grp = ProtoField.new("Order Depth Grp", "athex.oasis.mdfs.fast.v9.orderdepthgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.market_data_incremental_refresh_22_trade_grp = ProtoField.new("Market Data Incremental Refresh_22 Trade Grp", "athex.oasis.mdfs.fast.v9.marketdataincrementalrefresh_22tradegrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.trd_reg_publication_grp = ProtoField.new("Trd Reg Publication Grp", "athex.oasis.mdfs.fast.v9.trdregpublicationgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.trade_price_condition_grp = ProtoField.new("Trade Price Condition Grp", "athex.oasis.mdfs.fast.v9.tradepriceconditiongrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.price_limits_grp = ProtoField.new("Price Limits Grp", "athex.oasis.mdfs.fast.v9.pricelimitsgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.market_data_incremental_refresh_22_apaotc_trade_grp = ProtoField.new("Market Data Incremental Refresh_22 Apaotc Trade Grp", "athex.oasis.mdfs.fast.v9.marketdataincrementalrefresh_22apaotctradegrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.und_instrmt_grp = ProtoField.new("Und Instrmt Grp", "athex.oasis.mdfs.fast.v9.undinstrmtgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.trade_type_grp = ProtoField.new("Trade Type Grp", "athex.oasis.mdfs.fast.v9.tradetypegrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.parties_grp = ProtoField.new("Parties Grp", "athex.oasis.mdfs.fast.v9.partiesgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.apaotc_pre_trade_grp = ProtoField.new("Apaotc Pre Trade Grp", "athex.oasis.mdfs.fast.v9.apaotcpretradegrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.market_data_incremental_refresh_22_apaotc_post_trade_grp = ProtoField.new("Market Data Incremental Refresh_22 Apaotc Post Trade Grp", "athex.oasis.mdfs.fast.v9.marketdataincrementalrefresh_22apaotcposttradegrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.athexapa_regulatory_report_type_grp = ProtoField.new("Athexapa Regulatory Report Type Grp", "athex.oasis.mdfs.fast.v9.athexaparegulatoryreporttypegrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.heartbeat_9 = ProtoField.new("Heartbeat_9 Message", "athex.oasis.mdfs.fast.v9.heartbeat_9", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.security_status_10 = ProtoField.new("Security Status_10 Message", "athex.oasis.mdfs.fast.v9.securitystatus_10", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.security_status_grp = ProtoField.new("Security Status Grp", "athex.oasis.mdfs.fast.v9.securitystatusgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.trading_session_status_11 = ProtoField.new("Trading Session Status_11 Message", "athex.oasis.mdfs.fast.v9.tradingsessionstatus_11", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.news_12 = ProtoField.new("News_12 Message", "athex.oasis.mdfs.fast.v9.news_12", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.lines_of_text_grp = ProtoField.new("Lines Of Text Grp", "athex.oasis.mdfs.fast.v9.linesoftextgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.market_data_snapshot_full_refresh_15 = ProtoField.new("Market Data Snapshot Full Refresh_15 Message", "athex.oasis.mdfs.fast.v9.marketdatasnapshotfullrefresh_15", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.instrument_grp = ProtoField.new("Instrument Grp", "athex.oasis.mdfs.fast.v9.instrumentgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.bonds_instrument_grp = ProtoField.new("Bonds Instrument Grp", "athex.oasis.mdfs.fast.v9.bondsinstrumentgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.apaotc_instrument_grp = ProtoField.new("Apaotc Instrument Grp", "athex.oasis.mdfs.fast.v9.apaotcinstrumentgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.und_instrmt_grp = ProtoField.new("Und Instrmt Grp", "athex.oasis.mdfs.fast.v9.undinstrmtgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.market_data_snapshot_full_refresh_15_md_full_grp = ProtoField.new("Market Data Snapshot Full Refresh_15 Md Full Grp", "athex.oasis.mdfs.fast.v9.marketdatasnapshotfullrefresh_15mdfullgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.price_depth_grp = ProtoField.new("Price Depth Grp", "athex.oasis.mdfs.fast.v9.pricedepthgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.order_depth_grp = ProtoField.new("Order Depth Grp", "athex.oasis.mdfs.fast.v9.orderdepthgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.market_data_snapshot_full_refresh_15_trade_grp = ProtoField.new("Market Data Snapshot Full Refresh_15 Trade Grp", "athex.oasis.mdfs.fast.v9.marketdatasnapshotfullrefresh_15tradegrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.trd_reg_publication_grp = ProtoField.new("Trd Reg Publication Grp", "athex.oasis.mdfs.fast.v9.trdregpublicationgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.trade_price_condition_grp = ProtoField.new("Trade Price Condition Grp", "athex.oasis.mdfs.fast.v9.tradepriceconditiongrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.price_limits_grp = ProtoField.new("Price Limits Grp", "athex.oasis.mdfs.fast.v9.pricelimitsgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.market_data_snapshot_full_refresh_15_apaotc_trade_grp = ProtoField.new("Market Data Snapshot Full Refresh_15 Apaotc Trade Grp", "athex.oasis.mdfs.fast.v9.marketdatasnapshotfullrefresh_15apaotctradegrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.trade_type_grp = ProtoField.new("Trade Type Grp", "athex.oasis.mdfs.fast.v9.tradetypegrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.parties_grp = ProtoField.new("Parties Grp", "athex.oasis.mdfs.fast.v9.partiesgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.apaotc_pre_trade_grp = ProtoField.new("Apaotc Pre Trade Grp", "athex.oasis.mdfs.fast.v9.apaotcpretradegrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.market_data_snapshot_full_refresh_15_apaotc_post_trade_grp = ProtoField.new("Market Data Snapshot Full Refresh_15 Apaotc Post Trade Grp", "athex.oasis.mdfs.fast.v9.marketdatasnapshotfullrefresh_15apaotcposttradegrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.athexapa_trd_types_grp = ProtoField.new("Athexapa Trd Types Grp", "athex.oasis.mdfs.fast.v9.athexapatrdtypesgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.athexapa_regulatory_report_type_grp = ProtoField.new("Athexapa Regulatory Report Type Grp", "athex.oasis.mdfs.fast.v9.athexaparegulatoryreporttypegrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.market_data_incremental_refresh_16 = ProtoField.new("Market Data Incremental Refresh_16 Message", "athex.oasis.mdfs.fast.v9.marketdataincrementalrefresh_16", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.market_data_incremental_refresh_16_md_inc_grp = ProtoField.new("Market Data Incremental Refresh_16 Md Inc Grp", "athex.oasis.mdfs.fast.v9.marketdataincrementalrefresh_16mdincgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.bonds_instrument_grp = ProtoField.new("Bonds Instrument Grp", "athex.oasis.mdfs.fast.v9.bondsinstrumentgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.apaotc_instrument_grp = ProtoField.new("Apaotc Instrument Grp", "athex.oasis.mdfs.fast.v9.apaotcinstrumentgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.price_depth_grp = ProtoField.new("Price Depth Grp", "athex.oasis.mdfs.fast.v9.pricedepthgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.order_depth_grp = ProtoField.new("Order Depth Grp", "athex.oasis.mdfs.fast.v9.orderdepthgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.market_data_incremental_refresh_16_trade_grp = ProtoField.new("Market Data Incremental Refresh_16 Trade Grp", "athex.oasis.mdfs.fast.v9.marketdataincrementalrefresh_16tradegrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.trd_reg_publication_grp = ProtoField.new("Trd Reg Publication Grp", "athex.oasis.mdfs.fast.v9.trdregpublicationgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.trade_price_condition_grp = ProtoField.new("Trade Price Condition Grp", "athex.oasis.mdfs.fast.v9.tradepriceconditiongrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.price_limits_grp = ProtoField.new("Price Limits Grp", "athex.oasis.mdfs.fast.v9.pricelimitsgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.market_data_incremental_refresh_16_apaotc_trade_grp = ProtoField.new("Market Data Incremental Refresh_16 Apaotc Trade Grp", "athex.oasis.mdfs.fast.v9.marketdataincrementalrefresh_16apaotctradegrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.und_instrmt_grp = ProtoField.new("Und Instrmt Grp", "athex.oasis.mdfs.fast.v9.undinstrmtgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.trade_type_grp = ProtoField.new("Trade Type Grp", "athex.oasis.mdfs.fast.v9.tradetypegrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.parties_grp = ProtoField.new("Parties Grp", "athex.oasis.mdfs.fast.v9.partiesgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.apaotc_pre_trade_grp = ProtoField.new("Apaotc Pre Trade Grp", "athex.oasis.mdfs.fast.v9.apaotcpretradegrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.market_data_incremental_refresh_16_apaotc_post_trade_grp = ProtoField.new("Market Data Incremental Refresh_16 Apaotc Post Trade Grp", "athex.oasis.mdfs.fast.v9.marketdataincrementalrefresh_16apaotcposttradegrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.athexapa_trd_types_grp = ProtoField.new("Athexapa Trd Types Grp", "athex.oasis.mdfs.fast.v9.athexapatrdtypesgrp", ftypes.NONE)
omi_athex_oasis_mdfs_fast_v9.fields.athexapa_regulatory_report_type_grp = ProtoField.new("Athexapa Regulatory Report Type Grp", "athex.oasis.mdfs.fast.v9.athexaparegulatoryreporttypegrp", ftypes.NONE)

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
-- Athex Oasis Mdfs Fast 9 Fields
-----------------------------------------------------------------------

-- Begin String
athex_oasis_mdfs_fast_v9.begin_string = {}

-- Dissect: Begin String
athex_oasis_mdfs_fast_v9.begin_string.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "FIXT.1.1"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.begin_string, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.begin_string, range, "")
    absent:set_text("Begin String: No Value")
  end

  return offset, value
end

-- Body Length
athex_oasis_mdfs_fast_v9.body_length = {}

-- Dissect: Body Length
athex_oasis_mdfs_fast_v9.body_length.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.body_length, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.body_length, range, 0)
    absent:set_text("Body Length: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
athex_oasis_mdfs_fast_v9.msg_type_constant_0 = {}

-- Dissect: Msg Type (Constant)
athex_oasis_mdfs_fast_v9.msg_type_constant_0.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "0"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
athex_oasis_mdfs_fast_v9.msg_type_constant_f = {}

-- Dissect: Msg Type (Constant)
athex_oasis_mdfs_fast_v9.msg_type_constant_f.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "f"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
athex_oasis_mdfs_fast_v9.msg_type_constant_h = {}

-- Dissect: Msg Type (Constant)
athex_oasis_mdfs_fast_v9.msg_type_constant_h.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "h"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
athex_oasis_mdfs_fast_v9.msg_type_constant_b = {}

-- Dissect: Msg Type (Constant)
athex_oasis_mdfs_fast_v9.msg_type_constant_b.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "B"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
athex_oasis_mdfs_fast_v9.msg_type_constant_w = {}

-- Dissect: Msg Type (Constant)
athex_oasis_mdfs_fast_v9.msg_type_constant_w.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "W"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
athex_oasis_mdfs_fast_v9.msg_type_constant_x = {}

-- Dissect: Msg Type (Constant)
athex_oasis_mdfs_fast_v9.msg_type_constant_x.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "X"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Sender Comp Id
athex_oasis_mdfs_fast_v9.sender_comp_id = {}

-- Dissect: Sender Comp Id
athex_oasis_mdfs_fast_v9.sender_comp_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.sender_comp_id, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.sender_comp_id, range, "")
    absent:set_text("Sender Comp Id: No Value")
  end

  return offset, value
end

-- Target Comp Id
athex_oasis_mdfs_fast_v9.target_comp_id = {}

-- Dissect: Target Comp Id
athex_oasis_mdfs_fast_v9.target_comp_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.target_comp_id, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.target_comp_id, range, "")
    absent:set_text("Target Comp Id: No Value")
  end

  return offset, value
end

-- Msg Seq Num
athex_oasis_mdfs_fast_v9.msg_seq_num = {}

-- Dissect: Msg Seq Num
athex_oasis_mdfs_fast_v9.msg_seq_num.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.msg_seq_num, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.msg_seq_num, range, 0)
    absent:set_text("Msg Seq Num: No Value")
  end

  return offset, value
end

-- Sending Time
athex_oasis_mdfs_fast_v9.sending_time = {}

-- Dissect: Sending Time
athex_oasis_mdfs_fast_v9.sending_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.sending_time, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.sending_time, range, "")
    absent:set_text("Sending Time: No Value")
  end

  return offset, value
end

-- Last Msg Seq Num Processed (Sent)
athex_oasis_mdfs_fast_v9.last_msg_seq_num_processed_sent = {}

-- Dissect: Last Msg Seq Num Processed (Sent)
athex_oasis_mdfs_fast_v9.last_msg_seq_num_processed_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.last_msg_seq_num_processed, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.last_msg_seq_num_processed, range, 0)
    absent:set_text("Last Msg Seq Num Processed: No Value")
  end

  return offset, value
end

-- Last Msg Seq Num Processed (Default)
athex_oasis_mdfs_fast_v9.last_msg_seq_num_processed_default = {}

-- Dissect: Last Msg Seq Num Processed (Default)
athex_oasis_mdfs_fast_v9.last_msg_seq_num_processed_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.last_msg_seq_num_processed, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.last_msg_seq_num_processed, range, 0)
    absent:set_text("Last Msg Seq Num Processed: No Value")
  end

  return offset, value
end

-- No Athex Recovery Seq Nums
athex_oasis_mdfs_fast_v9.no_athex_recovery_seq_nums = {}

-- Dissect: No Athex Recovery Seq Nums
athex_oasis_mdfs_fast_v9.no_athex_recovery_seq_nums.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.no_athex_recovery_seq_nums, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.no_athex_recovery_seq_nums, range, 0)
    absent:set_text("No Athex Recovery Seq Nums: No Value")
  end

  return offset, value
end

-- Athex Recovery Seq Num
athex_oasis_mdfs_fast_v9.athex_recovery_seq_num = {}

-- Dissect: Athex Recovery Seq Num
athex_oasis_mdfs_fast_v9.athex_recovery_seq_num.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_recovery_seq_num, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_recovery_seq_num, range, 0)
    absent:set_text("Athex Recovery Seq Num: No Value")
  end

  return offset, value
end

-- Appl Id
athex_oasis_mdfs_fast_v9.appl_id = {}

-- Dissect: Appl Id
athex_oasis_mdfs_fast_v9.appl_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.appl_id, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.appl_id, range, "")
    absent:set_text("Appl Id: No Value")
  end

  return offset, value
end

-- Appl Seq Num
athex_oasis_mdfs_fast_v9.appl_seq_num = {}

-- Dissect: Appl Seq Num
athex_oasis_mdfs_fast_v9.appl_seq_num.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.appl_seq_num, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.appl_seq_num, range, 0)
    absent:set_text("Appl Seq Num: No Value")
  end

  return offset, value
end

-- Checksum
athex_oasis_mdfs_fast_v9.checksum = {}

-- Dissect: Checksum
athex_oasis_mdfs_fast_v9.checksum.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.checksum, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.checksum, range, "")
    absent:set_text("Checksum: No Value")
  end

  return offset, value
end

-- Athex Snapshot Indicator
athex_oasis_mdfs_fast_v9.athex_snapshot_indicator = {}

-- Dissect: Athex Snapshot Indicator
athex_oasis_mdfs_fast_v9.athex_snapshot_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_snapshot_indicator, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_snapshot_indicator, range, 0)
    absent:set_text("Athex Snapshot Indicator: No Value")
  end

  return offset, value
end

-- Athex Fragment Indicator
athex_oasis_mdfs_fast_v9.athex_fragment_indicator = {}

-- Dissect: Athex Fragment Indicator
athex_oasis_mdfs_fast_v9.athex_fragment_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_fragment_indicator, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_fragment_indicator, range, 0)
    absent:set_text("Athex Fragment Indicator: No Value")
  end

  return offset, value
end

-- Symbol (Sent)
athex_oasis_mdfs_fast_v9.symbol_sent = {}

-- Dissect: Symbol (Sent)
athex_oasis_mdfs_fast_v9.symbol_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.symbol, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.symbol, range, "")
    absent:set_text("Symbol: No Value")
  end

  return offset, value
end

-- Symbol (Default)
athex_oasis_mdfs_fast_v9.symbol_default = {}

-- Dissect: Symbol (Default)
athex_oasis_mdfs_fast_v9.symbol_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.symbol, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.symbol, range, "")
    absent:set_text("Symbol: No Value")
  end

  return offset, value
end

-- Athex Security Category (Sent)
athex_oasis_mdfs_fast_v9.athex_security_category_sent = {}

-- Dissect: Athex Security Category (Sent)
athex_oasis_mdfs_fast_v9.athex_security_category_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_security_category, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_security_category, range, 0)
    absent:set_text("Athex Security Category: No Value")
  end

  return offset, value
end

-- Athex Security Category (Default)
athex_oasis_mdfs_fast_v9.athex_security_category_default = {}

-- Dissect: Athex Security Category (Default)
athex_oasis_mdfs_fast_v9.athex_security_category_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_security_category, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_security_category, range, 0)
    absent:set_text("Athex Security Category: No Value")
  end

  return offset, value
end

-- Security Type (Sent)
athex_oasis_mdfs_fast_v9.security_type_sent = {}

-- Dissect: Security Type (Sent)
athex_oasis_mdfs_fast_v9.security_type_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.security_type, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.security_type, range, "")
    absent:set_text("Security Type: No Value")
  end

  return offset, value
end

-- Security Type (Default)
athex_oasis_mdfs_fast_v9.security_type_default = {}

-- Dissect: Security Type (Default)
athex_oasis_mdfs_fast_v9.security_type_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.security_type, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.security_type, range, "")
    absent:set_text("Security Type: No Value")
  end

  return offset, value
end

-- Security Exchange (Sent)
athex_oasis_mdfs_fast_v9.security_exchange_sent = {}

-- Dissect: Security Exchange (Sent)
athex_oasis_mdfs_fast_v9.security_exchange_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.security_exchange, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.security_exchange, range, "")
    absent:set_text("Security Exchange: No Value")
  end

  return offset, value
end

-- Security Exchange (Default)
athex_oasis_mdfs_fast_v9.security_exchange_default = {}

-- Dissect: Security Exchange (Default)
athex_oasis_mdfs_fast_v9.security_exchange_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.security_exchange, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.security_exchange, range, "")
    absent:set_text("Security Exchange: No Value")
  end

  return offset, value
end

-- Athex Market Id (Sent)
athex_oasis_mdfs_fast_v9.athex_market_id_sent = {}

-- Dissect: Athex Market Id (Sent)
athex_oasis_mdfs_fast_v9.athex_market_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_market_id, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_market_id, range, "")
    absent:set_text("Athex Market Id: No Value")
  end

  return offset, value
end

-- Athex Market Id (Default)
athex_oasis_mdfs_fast_v9.athex_market_id_default = {}

-- Dissect: Athex Market Id (Default)
athex_oasis_mdfs_fast_v9.athex_market_id_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_market_id, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_market_id, range, "")
    absent:set_text("Athex Market Id: No Value")
  end

  return offset, value
end

-- Trading Session Sub Id (Default)
athex_oasis_mdfs_fast_v9.trading_session_sub_id_default = {}

-- Dissect: Trading Session Sub Id (Default)
athex_oasis_mdfs_fast_v9.trading_session_sub_id_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trading_session_sub_id, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trading_session_sub_id, range, "")
    absent:set_text("Trading Session Sub Id: No Value")
  end

  return offset, value
end

-- Trading Session Sub Id (Sent)
athex_oasis_mdfs_fast_v9.trading_session_sub_id_sent = {}

-- Dissect: Trading Session Sub Id (Sent)
athex_oasis_mdfs_fast_v9.trading_session_sub_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trading_session_sub_id, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trading_session_sub_id, range, "")
    absent:set_text("Trading Session Sub Id: No Value")
  end

  return offset, value
end

-- Security Trading Status
athex_oasis_mdfs_fast_v9.security_trading_status = {}

-- Dissect: Security Trading Status
athex_oasis_mdfs_fast_v9.security_trading_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.security_trading_status, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.security_trading_status, range, 0)
    absent:set_text("Security Trading Status: No Value")
  end

  return offset, value
end

-- Halt Reason
athex_oasis_mdfs_fast_v9.halt_reason = {}

-- Dissect: Halt Reason
athex_oasis_mdfs_fast_v9.halt_reason.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.halt_reason, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.halt_reason, range, 0)
    absent:set_text("Halt Reason: No Value")
  end

  return offset, value
end

-- Athex Auction Type
athex_oasis_mdfs_fast_v9.athex_auction_type = {}

-- Dissect: Athex Auction Type
athex_oasis_mdfs_fast_v9.athex_auction_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_auction_type, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_auction_type, range, 0)
    absent:set_text("Athex Auction Type: No Value")
  end

  return offset, value
end

-- Transact Time (Sent)
athex_oasis_mdfs_fast_v9.transact_time_sent = {}

-- Dissect: Transact Time (Sent)
athex_oasis_mdfs_fast_v9.transact_time_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.transact_time, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.transact_time, range, "")
    absent:set_text("Transact Time: No Value")
  end

  return offset, value
end

-- Transact Time (Default)
athex_oasis_mdfs_fast_v9.transact_time_default = {}

-- Dissect: Transact Time (Default)
athex_oasis_mdfs_fast_v9.transact_time_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.transact_time, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.transact_time, range, "")
    absent:set_text("Transact Time: No Value")
  end

  return offset, value
end

-- Athex Board Id (Sent)
athex_oasis_mdfs_fast_v9.athex_board_id_sent = {}

-- Dissect: Athex Board Id (Sent)
athex_oasis_mdfs_fast_v9.athex_board_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_board_id, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_board_id, range, "")
    absent:set_text("Athex Board Id: No Value")
  end

  return offset, value
end

-- Athex Board Id (Default)
athex_oasis_mdfs_fast_v9.athex_board_id_default = {}

-- Dissect: Athex Board Id (Default)
athex_oasis_mdfs_fast_v9.athex_board_id_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_board_id, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_board_id, range, "")
    absent:set_text("Athex Board Id: No Value")
  end

  return offset, value
end

-- Trading Session Id
athex_oasis_mdfs_fast_v9.trading_session_id = {}

-- Dissect: Trading Session Id
athex_oasis_mdfs_fast_v9.trading_session_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "1"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trading_session_id, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trading_session_id, range, "")
    absent:set_text("Trading Session Id: No Value")
  end

  return offset, value
end

-- Trad Ses Status
athex_oasis_mdfs_fast_v9.trad_ses_status = {}

-- Dissect: Trad Ses Status
athex_oasis_mdfs_fast_v9.trad_ses_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trad_ses_status, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trad_ses_status, range, 0)
    absent:set_text("Trad Ses Status: No Value")
  end

  return offset, value
end

-- Athex System Status
athex_oasis_mdfs_fast_v9.athex_system_status = {}

-- Dissect: Athex System Status
athex_oasis_mdfs_fast_v9.athex_system_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_system_status, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_system_status, range, "")
    absent:set_text("Athex System Status: No Value")
  end

  return offset, value
end

-- Language Code
athex_oasis_mdfs_fast_v9.language_code = {}

-- Dissect: Language Code
athex_oasis_mdfs_fast_v9.language_code.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.language_code, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.language_code, range, "")
    absent:set_text("Language Code: No Value")
  end

  return offset, value
end

-- Headline
athex_oasis_mdfs_fast_v9.headline = {}

-- Dissect: Headline
athex_oasis_mdfs_fast_v9.headline.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.headline, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.headline, range, "")
    absent:set_text("Headline: No Value")
  end

  return offset, value
end

-- No Lines Of Text
athex_oasis_mdfs_fast_v9.no_lines_of_text = {}

-- Dissect: No Lines Of Text
athex_oasis_mdfs_fast_v9.no_lines_of_text.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.no_lines_of_text, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.no_lines_of_text, range, 0)
    absent:set_text("No Lines Of Text: No Value")
  end

  return offset, value
end

-- Text
athex_oasis_mdfs_fast_v9.text = {}

-- Dissect: Text
athex_oasis_mdfs_fast_v9.text.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.text, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.text, range, "")
    absent:set_text("Text: No Value")
  end

  return offset, value
end

-- Md Book Type
athex_oasis_mdfs_fast_v9.md_book_type = {}

-- Dissect: Md Book Type
athex_oasis_mdfs_fast_v9.md_book_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.md_book_type, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.md_book_type, range, 0)
    absent:set_text("Md Book Type: No Value")
  end

  return offset, value
end

-- Contract Multiplier
athex_oasis_mdfs_fast_v9.contract_multiplier = {}

-- Display: Contract Multiplier
athex_oasis_mdfs_fast_v9.contract_multiplier.display = function(value)
  if value == nil then
    return "Contract Multiplier: No Value"
  end

  return "Contract Multiplier: "..value
end

-- Dissect: Contract Multiplier
athex_oasis_mdfs_fast_v9.contract_multiplier.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = athex_oasis_mdfs_fast_v9.contract_multiplier.display(value)

  if value == nil then
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.contract_multiplier, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.contract_multiplier, range, value, display)
  end

  return offset, value
end

-- Accrued Interest Amt
athex_oasis_mdfs_fast_v9.accrued_interest_amt = {}

-- Display: Accrued Interest Amt
athex_oasis_mdfs_fast_v9.accrued_interest_amt.display = function(value)
  if value == nil then
    return "Accrued Interest Amt: No Value"
  end

  return "Accrued Interest Amt: "..value
end

-- Dissect: Accrued Interest Amt
athex_oasis_mdfs_fast_v9.accrued_interest_amt.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = athex_oasis_mdfs_fast_v9.accrued_interest_amt.display(value)

  if value == nil then
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.accrued_interest_amt, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.accrued_interest_amt, range, value, display)
  end

  return offset, value
end

-- Security Id
athex_oasis_mdfs_fast_v9.security_id = {}

-- Dissect: Security Id
athex_oasis_mdfs_fast_v9.security_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.security_id, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.security_id, range, "")
    absent:set_text("Security Id: No Value")
  end

  return offset, value
end

-- Security Id Source
athex_oasis_mdfs_fast_v9.security_id_source = {}

-- Dissect: Security Id Source
athex_oasis_mdfs_fast_v9.security_id_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.security_id_source, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.security_id_source, range, "")
    absent:set_text("Security Id Source: No Value")
  end

  return offset, value
end

-- Financial Instrument Full Name
athex_oasis_mdfs_fast_v9.financial_instrument_full_name = {}

-- Dissect: Financial Instrument Full Name
athex_oasis_mdfs_fast_v9.financial_instrument_full_name.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.financial_instrument_full_name, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.financial_instrument_full_name, range, "")
    absent:set_text("Financial Instrument Full Name: No Value")
  end

  return offset, value
end

-- Cfi Code
athex_oasis_mdfs_fast_v9.cfi_code = {}

-- Dissect: Cfi Code
athex_oasis_mdfs_fast_v9.cfi_code.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.cfi_code, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.cfi_code, range, "")
    absent:set_text("Cfi Code: No Value")
  end

  return offset, value
end

-- Unit Of Measure Qty
athex_oasis_mdfs_fast_v9.unit_of_measure_qty = {}

-- Display: Unit Of Measure Qty
athex_oasis_mdfs_fast_v9.unit_of_measure_qty.display = function(value)
  if value == nil then
    return "Unit Of Measure Qty: No Value"
  end

  return "Unit Of Measure Qty: "..value
end

-- Dissect: Unit Of Measure Qty
athex_oasis_mdfs_fast_v9.unit_of_measure_qty.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = athex_oasis_mdfs_fast_v9.unit_of_measure_qty.display(value)

  if value == nil then
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.unit_of_measure_qty, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.unit_of_measure_qty, range, value, display)
  end

  return offset, value
end

-- Athexapa Unit Of Measure
athex_oasis_mdfs_fast_v9.athexapa_unit_of_measure = {}

-- Dissect: Athexapa Unit Of Measure
athex_oasis_mdfs_fast_v9.athexapa_unit_of_measure.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_unit_of_measure, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_unit_of_measure, range, "")
    absent:set_text("Athexapa Unit Of Measure: No Value")
  end

  return offset, value
end

-- Put Or Call
athex_oasis_mdfs_fast_v9.put_or_call = {}

-- Dissect: Put Or Call
athex_oasis_mdfs_fast_v9.put_or_call.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.put_or_call, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.put_or_call, range, 0)
    absent:set_text("Put Or Call: No Value")
  end

  return offset, value
end

-- Strike Price
athex_oasis_mdfs_fast_v9.strike_price = {}

-- Display: Strike Price
athex_oasis_mdfs_fast_v9.strike_price.display = function(value)
  if value == nil then
    return "Strike Price: No Value"
  end

  return "Strike Price: "..value
end

-- Dissect: Strike Price
athex_oasis_mdfs_fast_v9.strike_price.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = athex_oasis_mdfs_fast_v9.strike_price.display(value)

  if value == nil then
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.strike_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.strike_price, range, value, display)
  end

  return offset, value
end

-- Strike Currency
athex_oasis_mdfs_fast_v9.strike_currency = {}

-- Dissect: Strike Currency
athex_oasis_mdfs_fast_v9.strike_currency.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.strike_currency, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.strike_currency, range, "")
    absent:set_text("Strike Currency: No Value")
  end

  return offset, value
end

-- Athexapa Strike Price Type (Default)
athex_oasis_mdfs_fast_v9.athexapa_strike_price_type_default_optional_u_int32 = {}

-- Dissect: Athexapa Strike Price Type (Default)
athex_oasis_mdfs_fast_v9.athexapa_strike_price_type_default_optional_u_int32.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_strike_price_type_uint32, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_strike_price_type_uint32, range, 0)
    absent:set_text("Athexapa Strike Price Type: No Value")
  end

  return offset, value
end

-- Athexapa Strike Price Type (Default)
athex_oasis_mdfs_fast_v9.athexapa_strike_price_type_default_optional_string = {}

-- Dissect: Athexapa Strike Price Type (Default)
athex_oasis_mdfs_fast_v9.athexapa_strike_price_type_default_optional_string.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_strike_price_type_string, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_strike_price_type_string, range, "")
    absent:set_text("Athexapa Strike Price Type: No Value")
  end

  return offset, value
end

-- Exercise Style
athex_oasis_mdfs_fast_v9.exercise_style = {}

-- Dissect: Exercise Style
athex_oasis_mdfs_fast_v9.exercise_style.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.exercise_style, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.exercise_style, range, 0)
    absent:set_text("Exercise Style: No Value")
  end

  return offset, value
end

-- Maturity Date
athex_oasis_mdfs_fast_v9.maturity_date = {}

-- Dissect: Maturity Date
athex_oasis_mdfs_fast_v9.maturity_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.maturity_date, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.maturity_date, range, "")
    absent:set_text("Maturity Date: No Value")
  end

  return offset, value
end

-- Settl Method
athex_oasis_mdfs_fast_v9.settl_method = {}

-- Dissect: Settl Method
athex_oasis_mdfs_fast_v9.settl_method.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.settl_method, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.settl_method, range, "")
    absent:set_text("Settl Method: No Value")
  end

  return offset, value
end

-- No Underlyings
athex_oasis_mdfs_fast_v9.no_underlyings = {}

-- Dissect: No Underlyings
athex_oasis_mdfs_fast_v9.no_underlyings.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.no_underlyings, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.no_underlyings, range, 0)
    absent:set_text("No Underlyings: No Value")
  end

  return offset, value
end

-- Underlying Security Id
athex_oasis_mdfs_fast_v9.underlying_security_id = {}

-- Dissect: Underlying Security Id
athex_oasis_mdfs_fast_v9.underlying_security_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.underlying_security_id, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.underlying_security_id, range, "")
    absent:set_text("Underlying Security Id: No Value")
  end

  return offset, value
end

-- Underlying Security Id Source
athex_oasis_mdfs_fast_v9.underlying_security_id_source = {}

-- Dissect: Underlying Security Id Source
athex_oasis_mdfs_fast_v9.underlying_security_id_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.underlying_security_id_source, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.underlying_security_id_source, range, "")
    absent:set_text("Underlying Security Id Source: No Value")
  end

  return offset, value
end

-- Underlying Index Curve Unit
athex_oasis_mdfs_fast_v9.underlying_index_curve_unit = {}

-- Dissect: Underlying Index Curve Unit
athex_oasis_mdfs_fast_v9.underlying_index_curve_unit.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.underlying_index_curve_unit, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.underlying_index_curve_unit, range, "")
    absent:set_text("Underlying Index Curve Unit: No Value")
  end

  return offset, value
end

-- Underlying Index Curve Period
athex_oasis_mdfs_fast_v9.underlying_index_curve_period = {}

-- Dissect: Underlying Index Curve Period
athex_oasis_mdfs_fast_v9.underlying_index_curve_period.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.underlying_index_curve_period, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.underlying_index_curve_period, range, 0)
    absent:set_text("Underlying Index Curve Period: No Value")
  end

  return offset, value
end

-- No Md Entries
athex_oasis_mdfs_fast_v9.no_md_entries = {}

-- Dissect: No Md Entries
athex_oasis_mdfs_fast_v9.no_md_entries.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.no_md_entries, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.no_md_entries, range, 0)
    absent:set_text("No Md Entries: No Value")
  end

  return offset, value
end

-- Md Entry Type
athex_oasis_mdfs_fast_v9.md_entry_type = {}

-- Dissect: Md Entry Type
athex_oasis_mdfs_fast_v9.md_entry_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.md_entry_type, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.md_entry_type, range, "")
    absent:set_text("Md Entry Type: No Value")
  end

  return offset, value
end

-- Md Entry Px
athex_oasis_mdfs_fast_v9.md_entry_px = {}

-- Display: Md Entry Px
athex_oasis_mdfs_fast_v9.md_entry_px.display = function(value)
  if value == nil then
    return "Md Entry Px: No Value"
  end

  return "Md Entry Px: "..value
end

-- Dissect: Md Entry Px
athex_oasis_mdfs_fast_v9.md_entry_px.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = athex_oasis_mdfs_fast_v9.md_entry_px.display(value)

  if value == nil then
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.md_entry_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.md_entry_px, range, value, display)
  end

  return offset, value
end

-- Md Entry Size
athex_oasis_mdfs_fast_v9.md_entry_size = {}

-- Display: Md Entry Size
athex_oasis_mdfs_fast_v9.md_entry_size.display = function(value)
  if value == nil then
    return "Md Entry Size: No Value"
  end

  return "Md Entry Size: "..value
end

-- Dissect: Md Entry Size
athex_oasis_mdfs_fast_v9.md_entry_size.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = athex_oasis_mdfs_fast_v9.md_entry_size.display(value)

  if value == nil then
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.md_entry_size, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.md_entry_size, range, value, display)
  end

  return offset, value
end

-- Md Origin Type
athex_oasis_mdfs_fast_v9.md_origin_type = {}

-- Dissect: Md Origin Type
athex_oasis_mdfs_fast_v9.md_origin_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.md_origin_type, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.md_origin_type, range, 0)
    absent:set_text("Md Origin Type: No Value")
  end

  return offset, value
end

-- Market Depth
athex_oasis_mdfs_fast_v9.market_depth = {}

-- Dissect: Market Depth
athex_oasis_mdfs_fast_v9.market_depth.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.market_depth, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.market_depth, range, 0)
    absent:set_text("Market Depth: No Value")
  end

  return offset, value
end

-- Md Price Level
athex_oasis_mdfs_fast_v9.md_price_level = {}

-- Dissect: Md Price Level
athex_oasis_mdfs_fast_v9.md_price_level.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.md_price_level, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.md_price_level, range, 0)
    absent:set_text("Md Price Level: No Value")
  end

  return offset, value
end

-- Number Of Orders
athex_oasis_mdfs_fast_v9.number_of_orders = {}

-- Dissect: Number Of Orders
athex_oasis_mdfs_fast_v9.number_of_orders.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.number_of_orders, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.number_of_orders, range, 0)
    absent:set_text("Number Of Orders: No Value")
  end

  return offset, value
end

-- Md Entry Position No
athex_oasis_mdfs_fast_v9.md_entry_position_no = {}

-- Dissect: Md Entry Position No
athex_oasis_mdfs_fast_v9.md_entry_position_no.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.md_entry_position_no, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.md_entry_position_no, range, 0)
    absent:set_text("Md Entry Position No: No Value")
  end

  return offset, value
end

-- Order Id
athex_oasis_mdfs_fast_v9.order_id = {}

-- Dissect: Order Id
athex_oasis_mdfs_fast_v9.order_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.order_id, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.order_id, range, "")
    absent:set_text("Order Id: No Value")
  end

  return offset, value
end

-- Ord Status
athex_oasis_mdfs_fast_v9.ord_status = {}

-- Dissect: Ord Status
athex_oasis_mdfs_fast_v9.ord_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.ord_status, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.ord_status, range, "")
    absent:set_text("Ord Status: No Value")
  end

  return offset, value
end

-- Cum Qty
athex_oasis_mdfs_fast_v9.cum_qty = {}

-- Display: Cum Qty
athex_oasis_mdfs_fast_v9.cum_qty.display = function(value)
  if value == nil then
    return "Cum Qty: No Value"
  end

  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
athex_oasis_mdfs_fast_v9.cum_qty.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = athex_oasis_mdfs_fast_v9.cum_qty.display(value)

  if value == nil then
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.cum_qty, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.cum_qty, range, value, display)
  end

  return offset, value
end

-- Time In Force
athex_oasis_mdfs_fast_v9.time_in_force = {}

-- Dissect: Time In Force
athex_oasis_mdfs_fast_v9.time_in_force.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.time_in_force, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.time_in_force, range, "")
    absent:set_text("Time In Force: No Value")
  end

  return offset, value
end

-- Ord Type
athex_oasis_mdfs_fast_v9.ord_type = {}

-- Dissect: Ord Type
athex_oasis_mdfs_fast_v9.ord_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.ord_type, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.ord_type, range, "")
    absent:set_text("Ord Type: No Value")
  end

  return offset, value
end

-- Athex Special Condition
athex_oasis_mdfs_fast_v9.athex_special_condition = {}

-- Dissect: Athex Special Condition
athex_oasis_mdfs_fast_v9.athex_special_condition.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_special_condition, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_special_condition, range, "")
    absent:set_text("Athex Special Condition: No Value")
  end

  return offset, value
end

-- Athex Condition Volume
athex_oasis_mdfs_fast_v9.athex_condition_volume = {}

-- Display: Athex Condition Volume
athex_oasis_mdfs_fast_v9.athex_condition_volume.display = function(value)
  if value == nil then
    return "Athex Condition Volume: No Value"
  end

  return "Athex Condition Volume: "..value
end

-- Dissect: Athex Condition Volume
athex_oasis_mdfs_fast_v9.athex_condition_volume.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = athex_oasis_mdfs_fast_v9.athex_condition_volume.display(value)

  if value == nil then
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_condition_volume, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_condition_volume, range, value, display)
  end

  return offset, value
end

-- Athex Order Entry Date
athex_oasis_mdfs_fast_v9.athex_order_entry_date = {}

-- Dissect: Athex Order Entry Date
athex_oasis_mdfs_fast_v9.athex_order_entry_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_order_entry_date, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_order_entry_date, range, "")
    absent:set_text("Athex Order Entry Date: No Value")
  end

  return offset, value
end

-- Trade Condition
athex_oasis_mdfs_fast_v9.trade_condition = {}

-- Dissect: Trade Condition
athex_oasis_mdfs_fast_v9.trade_condition.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trade_condition, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trade_condition, range, "")
    absent:set_text("Trade Condition: No Value")
  end

  return offset, value
end

-- Trade Id
athex_oasis_mdfs_fast_v9.trade_id = {}

-- Dissect: Trade Id
athex_oasis_mdfs_fast_v9.trade_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trade_id, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trade_id, range, "")
    absent:set_text("Trade Id: No Value")
  end

  return offset, value
end

-- Order Category
athex_oasis_mdfs_fast_v9.order_category = {}

-- Dissect: Order Category
athex_oasis_mdfs_fast_v9.order_category.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.order_category, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.order_category, range, "")
    absent:set_text("Order Category: No Value")
  end

  return offset, value
end

-- No Trd Reg Publications
athex_oasis_mdfs_fast_v9.no_trd_reg_publications = {}

-- Dissect: No Trd Reg Publications
athex_oasis_mdfs_fast_v9.no_trd_reg_publications.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.no_trd_reg_publications, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.no_trd_reg_publications, range, 0)
    absent:set_text("No Trd Reg Publications: No Value")
  end

  return offset, value
end

-- Trd Reg Publication Type
athex_oasis_mdfs_fast_v9.trd_reg_publication_type = {}

-- Dissect: Trd Reg Publication Type
athex_oasis_mdfs_fast_v9.trd_reg_publication_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trd_reg_publication_type, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trd_reg_publication_type, range, 0)
    absent:set_text("Trd Reg Publication Type: No Value")
  end

  return offset, value
end

-- Trd Reg Publication Reason
athex_oasis_mdfs_fast_v9.trd_reg_publication_reason = {}

-- Dissect: Trd Reg Publication Reason
athex_oasis_mdfs_fast_v9.trd_reg_publication_reason.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trd_reg_publication_reason, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trd_reg_publication_reason, range, 0)
    absent:set_text("Trd Reg Publication Reason: No Value")
  end

  return offset, value
end

-- No Trade Price Conditions
athex_oasis_mdfs_fast_v9.no_trade_price_conditions = {}

-- Dissect: No Trade Price Conditions
athex_oasis_mdfs_fast_v9.no_trade_price_conditions.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.no_trade_price_conditions, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.no_trade_price_conditions, range, 0)
    absent:set_text("No Trade Price Conditions: No Value")
  end

  return offset, value
end

-- Trade Price Condition
athex_oasis_mdfs_fast_v9.trade_price_condition = {}

-- Dissect: Trade Price Condition
athex_oasis_mdfs_fast_v9.trade_price_condition.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trade_price_condition, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trade_price_condition, range, 0)
    absent:set_text("Trade Price Condition: No Value")
  end

  return offset, value
end

-- Algorithmic Trade Indicator
athex_oasis_mdfs_fast_v9.algorithmic_trade_indicator = {}

-- Dissect: Algorithmic Trade Indicator
athex_oasis_mdfs_fast_v9.algorithmic_trade_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.algorithmic_trade_indicator, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.algorithmic_trade_indicator, range, 0)
    absent:set_text("Algorithmic Trade Indicator: No Value")
  end

  return offset, value
end

-- Trade Publish Indicator
athex_oasis_mdfs_fast_v9.trade_publish_indicator = {}

-- Dissect: Trade Publish Indicator
athex_oasis_mdfs_fast_v9.trade_publish_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trade_publish_indicator, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trade_publish_indicator, range, 0)
    absent:set_text("Trade Publish Indicator: No Value")
  end

  return offset, value
end

-- Athex Total Volume
athex_oasis_mdfs_fast_v9.athex_total_volume = {}

-- Display: Athex Total Volume
athex_oasis_mdfs_fast_v9.athex_total_volume.display = function(value)
  if value == nil then
    return "Athex Total Volume: No Value"
  end

  return "Athex Total Volume: "..value
end

-- Dissect: Athex Total Volume
athex_oasis_mdfs_fast_v9.athex_total_volume.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = athex_oasis_mdfs_fast_v9.athex_total_volume.display(value)

  if value == nil then
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_total_volume, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_total_volume, range, value, display)
  end

  return offset, value
end

-- Athex Trade Value
athex_oasis_mdfs_fast_v9.athex_trade_value = {}

-- Display: Athex Trade Value
athex_oasis_mdfs_fast_v9.athex_trade_value.display = function(value)
  if value == nil then
    return "Athex Trade Value: No Value"
  end

  return "Athex Trade Value: "..value
end

-- Dissect: Athex Trade Value
athex_oasis_mdfs_fast_v9.athex_trade_value.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = athex_oasis_mdfs_fast_v9.athex_trade_value.display(value)

  if value == nil then
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_trade_value, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_trade_value, range, value, display)
  end

  return offset, value
end

-- Athex Index Type
athex_oasis_mdfs_fast_v9.athex_index_type = {}

-- Dissect: Athex Index Type
athex_oasis_mdfs_fast_v9.athex_index_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_index_type, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_index_type, range, "")
    absent:set_text("Athex Index Type: No Value")
  end

  return offset, value
end

-- Low Limit Price
athex_oasis_mdfs_fast_v9.low_limit_price = {}

-- Display: Low Limit Price
athex_oasis_mdfs_fast_v9.low_limit_price.display = function(value)
  if value == nil then
    return "Low Limit Price: No Value"
  end

  return "Low Limit Price: "..value
end

-- Dissect: Low Limit Price
athex_oasis_mdfs_fast_v9.low_limit_price.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = athex_oasis_mdfs_fast_v9.low_limit_price.display(value)

  if value == nil then
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.low_limit_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.low_limit_price, range, value, display)
  end

  return offset, value
end

-- High Limit Price
athex_oasis_mdfs_fast_v9.high_limit_price = {}

-- Display: High Limit Price
athex_oasis_mdfs_fast_v9.high_limit_price.display = function(value)
  if value == nil then
    return "High Limit Price: No Value"
  end

  return "High Limit Price: "..value
end

-- Dissect: High Limit Price
athex_oasis_mdfs_fast_v9.high_limit_price.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = athex_oasis_mdfs_fast_v9.high_limit_price.display(value)

  if value == nil then
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.high_limit_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.high_limit_price, range, value, display)
  end

  return offset, value
end

-- No Trade Types
athex_oasis_mdfs_fast_v9.no_trade_types = {}

-- Dissect: No Trade Types
athex_oasis_mdfs_fast_v9.no_trade_types.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.no_trade_types, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.no_trade_types, range, 0)
    absent:set_text("No Trade Types: No Value")
  end

  return offset, value
end

-- Trade Type
athex_oasis_mdfs_fast_v9.trade_type = {}

-- Dissect: Trade Type
athex_oasis_mdfs_fast_v9.trade_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trade_type, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trade_type, range, 0)
    absent:set_text("Trade Type: No Value")
  end

  return offset, value
end

-- Trade Sub Type
athex_oasis_mdfs_fast_v9.trade_sub_type = {}

-- Dissect: Trade Sub Type
athex_oasis_mdfs_fast_v9.trade_sub_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trade_sub_type, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trade_sub_type, range, 0)
    absent:set_text("Trade Sub Type: No Value")
  end

  return offset, value
end

-- Athexapa Report Status
athex_oasis_mdfs_fast_v9.athexapa_report_status = {}

-- Dissect: Athexapa Report Status
athex_oasis_mdfs_fast_v9.athexapa_report_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_report_status, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_report_status, range, "")
    absent:set_text("Athexapa Report Status: No Value")
  end

  return offset, value
end

-- No Party I Ds
athex_oasis_mdfs_fast_v9.no_party_i_ds = {}

-- Dissect: No Party I Ds
athex_oasis_mdfs_fast_v9.no_party_i_ds.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.no_party_i_ds, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.no_party_i_ds, range, 0)
    absent:set_text("No Party I Ds: No Value")
  end

  return offset, value
end

-- Party Id
athex_oasis_mdfs_fast_v9.party_id = {}

-- Dissect: Party Id
athex_oasis_mdfs_fast_v9.party_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.party_id, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.party_id, range, "")
    absent:set_text("Party Id: No Value")
  end

  return offset, value
end

-- Party Id Source
athex_oasis_mdfs_fast_v9.party_id_source = {}

-- Dissect: Party Id Source
athex_oasis_mdfs_fast_v9.party_id_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.party_id_source, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.party_id_source, range, "")
    absent:set_text("Party Id Source: No Value")
  end

  return offset, value
end

-- Price Type
athex_oasis_mdfs_fast_v9.price_type = {}

-- Dissect: Price Type
athex_oasis_mdfs_fast_v9.price_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.price_type, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.price_type, range, 0)
    absent:set_text("Price Type: No Value")
  end

  return offset, value
end

-- Athexapa Price Currency
athex_oasis_mdfs_fast_v9.athexapa_price_currency = {}

-- Dissect: Athexapa Price Currency
athex_oasis_mdfs_fast_v9.athexapa_price_currency.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_price_currency, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_price_currency, range, "")
    absent:set_text("Athexapa Price Currency: No Value")
  end

  return offset, value
end

-- Athexapa Price Multiplier
athex_oasis_mdfs_fast_v9.athexapa_price_multiplier = {}

-- Display: Athexapa Price Multiplier
athex_oasis_mdfs_fast_v9.athexapa_price_multiplier.display = function(value)
  if value == nil then
    return "Athexapa Price Multiplier: No Value"
  end

  return "Athexapa Price Multiplier: "..value
end

-- Dissect: Athexapa Price Multiplier
athex_oasis_mdfs_fast_v9.athexapa_price_multiplier.dissect = function(buffer, offset, packet, parent, present, state, key)
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

  local display = athex_oasis_mdfs_fast_v9.athexapa_price_multiplier.display(value)

  if value == nil then
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_price_multiplier, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_price_multiplier, range, value, display)
  end

  return offset, value
end

-- Athexapa Size Currency
athex_oasis_mdfs_fast_v9.athexapa_size_currency = {}

-- Dissect: Athexapa Size Currency
athex_oasis_mdfs_fast_v9.athexapa_size_currency.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_size_currency, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_size_currency, range, "")
    absent:set_text("Athexapa Size Currency: No Value")
  end

  return offset, value
end

-- Athexapa Trade Value Currency
athex_oasis_mdfs_fast_v9.athexapa_trade_value_currency = {}

-- Dissect: Athexapa Trade Value Currency
athex_oasis_mdfs_fast_v9.athexapa_trade_value_currency.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_trade_value_currency, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_trade_value_currency, range, "")
    absent:set_text("Athexapa Trade Value Currency: No Value")
  end

  return offset, value
end

-- Expire Date
athex_oasis_mdfs_fast_v9.expire_date = {}

-- Dissect: Expire Date
athex_oasis_mdfs_fast_v9.expire_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.expire_date, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.expire_date, range, "")
    absent:set_text("Expire Date: No Value")
  end

  return offset, value
end

-- Last Mkt
athex_oasis_mdfs_fast_v9.last_mkt = {}

-- Dissect: Last Mkt
athex_oasis_mdfs_fast_v9.last_mkt.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.last_mkt, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.last_mkt, range, "")
    absent:set_text("Last Mkt: No Value")
  end

  return offset, value
end

-- Side
athex_oasis_mdfs_fast_v9.side = {}

-- Dissect: Side
athex_oasis_mdfs_fast_v9.side.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.side, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.side, range, "")
    absent:set_text("Side: No Value")
  end

  return offset, value
end

-- Quote Id
athex_oasis_mdfs_fast_v9.quote_id = {}

-- Dissect: Quote Id
athex_oasis_mdfs_fast_v9.quote_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.quote_id, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.quote_id, range, "")
    absent:set_text("Quote Id: No Value")
  end

  return offset, value
end

-- Athexapa Quote Liquidity
athex_oasis_mdfs_fast_v9.athexapa_quote_liquidity = {}

-- Dissect: Athexapa Quote Liquidity
athex_oasis_mdfs_fast_v9.athexapa_quote_liquidity.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_quote_liquidity, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_quote_liquidity, range, 0)
    absent:set_text("Athexapa Quote Liquidity: No Value")
  end

  return offset, value
end

-- Athexapa Trade Id Indicator
athex_oasis_mdfs_fast_v9.athexapa_trade_id_indicator = {}

-- Dissect: Athexapa Trade Id Indicator
athex_oasis_mdfs_fast_v9.athexapa_trade_id_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_trade_id_indicator, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_trade_id_indicator, range, 0)
    absent:set_text("Athexapa Trade Id Indicator: No Value")
  end

  return offset, value
end

-- No Athexapa Regulatory Report Types
athex_oasis_mdfs_fast_v9.no_athexapa_regulatory_report_types = {}

-- Dissect: No Athexapa Regulatory Report Types
athex_oasis_mdfs_fast_v9.no_athexapa_regulatory_report_types.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.no_athexapa_regulatory_report_types, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.no_athexapa_regulatory_report_types, range, 0)
    absent:set_text("No Athexapa Regulatory Report Types: No Value")
  end

  return offset, value
end

-- Regulatory Report Type
athex_oasis_mdfs_fast_v9.regulatory_report_type = {}

-- Dissect: Regulatory Report Type
athex_oasis_mdfs_fast_v9.regulatory_report_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.regulatory_report_type, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.regulatory_report_type, range, 0)
    absent:set_text("Regulatory Report Type: No Value")
  end

  return offset, value
end

-- Number Of Trades
athex_oasis_mdfs_fast_v9.number_of_trades = {}

-- Dissect: Number Of Trades
athex_oasis_mdfs_fast_v9.number_of_trades.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.number_of_trades, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.number_of_trades, range, 0)
    absent:set_text("Number Of Trades: No Value")
  end

  return offset, value
end

-- Athexapa Transaction To Be Cleared
athex_oasis_mdfs_fast_v9.athexapa_transaction_to_be_cleared = {}

-- Dissect: Athexapa Transaction To Be Cleared
athex_oasis_mdfs_fast_v9.athexapa_transaction_to_be_cleared.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_transaction_to_be_cleared, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_transaction_to_be_cleared, range, "")
    absent:set_text("Athexapa Transaction To Be Cleared: No Value")
  end

  return offset, value
end

-- Athexapa Venue Of Publication
athex_oasis_mdfs_fast_v9.athexapa_venue_of_publication = {}

-- Dissect: Athexapa Venue Of Publication
athex_oasis_mdfs_fast_v9.athexapa_venue_of_publication.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_venue_of_publication, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_venue_of_publication, range, "")
    absent:set_text("Athexapa Venue Of Publication: No Value")
  end

  return offset, value
end

-- Athexapa Third Country Venue
athex_oasis_mdfs_fast_v9.athexapa_third_country_venue = {}

-- Dissect: Athexapa Third Country Venue
athex_oasis_mdfs_fast_v9.athexapa_third_country_venue.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_third_country_venue, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_third_country_venue, range, "")
    absent:set_text("Athexapa Third Country Venue: No Value")
  end

  return offset, value
end

-- Md Update Action
athex_oasis_mdfs_fast_v9.md_update_action = {}

-- Dissect: Md Update Action
athex_oasis_mdfs_fast_v9.md_update_action.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.md_update_action, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.md_update_action, range, "")
    absent:set_text("Md Update Action: No Value")
  end

  return offset, value
end

-- Previously Reported
athex_oasis_mdfs_fast_v9.previously_reported = {}

-- Dissect: Previously Reported
athex_oasis_mdfs_fast_v9.previously_reported.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.previously_reported, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.previously_reported, range, "")
    absent:set_text("Previously Reported: No Value")
  end

  return offset, value
end

-- No Athexapa Trd Types
athex_oasis_mdfs_fast_v9.no_athexapa_trd_types = {}

-- Dissect: No Athexapa Trd Types
athex_oasis_mdfs_fast_v9.no_athexapa_trd_types.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.no_athexapa_trd_types, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.no_athexapa_trd_types, range, 0)
    absent:set_text("No Athexapa Trd Types: No Value")
  end

  return offset, value
end

-- Trd Type
athex_oasis_mdfs_fast_v9.trd_type = {}

-- Dissect: Trd Type
athex_oasis_mdfs_fast_v9.trd_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trd_type, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trd_type, range, 0)
    absent:set_text("Trd Type: No Value")
  end

  return offset, value
end

-- Trd Sub Type
athex_oasis_mdfs_fast_v9.trd_sub_type = {}

-- Dissect: Trd Sub Type
athex_oasis_mdfs_fast_v9.trd_sub_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trd_sub_type, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trd_sub_type, range, 0)
    absent:set_text("Trd Sub Type: No Value")
  end

  return offset, value
end

-- Secondary Trd Type
athex_oasis_mdfs_fast_v9.secondary_trd_type = {}

-- Dissect: Secondary Trd Type
athex_oasis_mdfs_fast_v9.secondary_trd_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.secondary_trd_type, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.secondary_trd_type, range, 0)
    absent:set_text("Secondary Trd Type: No Value")
  end

  return offset, value
end

-- Athexapa Emission Allowance
athex_oasis_mdfs_fast_v9.athexapa_emission_allowance = {}

-- Dissect: Athexapa Emission Allowance
athex_oasis_mdfs_fast_v9.athexapa_emission_allowance.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_emission_allowance, range, value)
  else
    local absent = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_emission_allowance, range, "")
    absent:set_text("Athexapa Emission Allowance: No Value")
  end

  return offset, value
end


-----------------------------------------------------------------------
-- Dissect Athex Oasis Mdfs Fast 9
-----------------------------------------------------------------------

-- Athexapa Regulatory Report Type Grp
athex_oasis_mdfs_fast_v9.athexapa_regulatory_report_type_grp = {}

-- Dissect Fields: Athexapa Regulatory Report Type Grp
athex_oasis_mdfs_fast_v9.athexapa_regulatory_report_type_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Regulatory Report Type: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.regulatory_report_type.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Athexapa Regulatory Report Type Grp
athex_oasis_mdfs_fast_v9.athexapa_regulatory_report_type_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_regulatory_report_type_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = athex_oasis_mdfs_fast_v9.athexapa_regulatory_report_type_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Athexapa Trd Types Grp
athex_oasis_mdfs_fast_v9.athexapa_trd_types_grp = {}

-- Dissect Fields: Athexapa Trd Types Grp
athex_oasis_mdfs_fast_v9.athexapa_trd_types_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trd Type: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.trd_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trd Sub Type: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.trd_sub_type.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Secondary Trd Type: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.secondary_trd_type.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  return index
end

-- Dissect: Athexapa Trd Types Grp
athex_oasis_mdfs_fast_v9.athexapa_trd_types_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_trd_types_grp, buffer(offset, 0))
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

  index = athex_oasis_mdfs_fast_v9.athexapa_trd_types_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Incremental Refresh_16 Apaotc Post Trade Grp
athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_16_apaotc_post_trade_grp = {}

-- Dissect Fields: Market Data Incremental Refresh_16 Apaotc Post Trade Grp
athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_16_apaotc_post_trade_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Athexapa Trade Id Indicator: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.athexapa_trade_id_indicator.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Athexapa Trd Types: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.no_athexapa_trd_types.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Athexapa Trd Types Grp: No Athexapa Trd Types entries
  local count = value or 0
  for athexapa_trd_types_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.athexapa_trd_types_grp.dissect(buffer, index, packet, parent, presence_map, base, state, athexapa_trd_types_grp_index)
  end

  -- No Athexapa Regulatory Report Types: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.no_athexapa_regulatory_report_types.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Athexapa Regulatory Report Type Grp: No Athexapa Regulatory Report Types entries
  local count = value or 0
  for athexapa_regulatory_report_type_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.athexapa_regulatory_report_type_grp.dissect(buffer, index, packet, parent, presence_map, base, state, athexapa_regulatory_report_type_grp_index)
  end

  -- Athexapa Transaction To Be Cleared: string, sent
  index, value = athex_oasis_mdfs_fast_v9.athexapa_transaction_to_be_cleared.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Athexapa Emission Allowance: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athexapa_emission_allowance.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Athexapa Third Country Venue: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athexapa_third_country_venue.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  return index
end

-- Dissect: Market Data Incremental Refresh_16 Apaotc Post Trade Grp
athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_16_apaotc_post_trade_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.market_data_incremental_refresh_16_apaotc_post_trade_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_16_apaotc_post_trade_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Apaotc Pre Trade Grp
athex_oasis_mdfs_fast_v9.apaotc_pre_trade_grp = {}

-- Dissect Fields: Apaotc Pre Trade Grp
athex_oasis_mdfs_fast_v9.apaotc_pre_trade_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Side: string, sent
  index, value = athex_oasis_mdfs_fast_v9.side.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Quote Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.quote_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Athexapa Quote Liquidity: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.athexapa_quote_liquidity.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Apaotc Pre Trade Grp
athex_oasis_mdfs_fast_v9.apaotc_pre_trade_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.apaotc_pre_trade_grp, buffer(offset, 0))
  local index = offset

  index = athex_oasis_mdfs_fast_v9.apaotc_pre_trade_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Parties Grp
athex_oasis_mdfs_fast_v9.parties_grp = {}

-- Dissect Fields: Parties Grp
athex_oasis_mdfs_fast_v9.parties_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Party Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.party_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Party Id Source: string, sent
  index, value = athex_oasis_mdfs_fast_v9.party_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Parties Grp
athex_oasis_mdfs_fast_v9.parties_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.parties_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = athex_oasis_mdfs_fast_v9.parties_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Trade Type Grp
athex_oasis_mdfs_fast_v9.trade_type_grp = {}

-- Dissect Fields: Trade Type Grp
athex_oasis_mdfs_fast_v9.trade_type_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trade Type: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.trade_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Sub Type: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.trade_sub_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  return index
end

-- Dissect: Trade Type Grp
athex_oasis_mdfs_fast_v9.trade_type_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trade_type_grp, buffer(offset, 0))
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

  index = athex_oasis_mdfs_fast_v9.trade_type_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Und Instrmt Grp
athex_oasis_mdfs_fast_v9.und_instrmt_grp = {}

-- Dissect Fields: Und Instrmt Grp
athex_oasis_mdfs_fast_v9.und_instrmt_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Underlying Security Id: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.underlying_security_id.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Underlying Security Id Source: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.underlying_security_id_source.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Underlying Index Curve Unit: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.underlying_index_curve_unit.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Underlying Index Curve Period: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.underlying_index_curve_period.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  return index
end

-- Dissect: Und Instrmt Grp
athex_oasis_mdfs_fast_v9.und_instrmt_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.und_instrmt_grp, buffer(offset, 0))
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

  index = athex_oasis_mdfs_fast_v9.und_instrmt_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Incremental Refresh_16 Apaotc Trade Grp
athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_16_apaotc_trade_grp = {}

-- Dissect Fields: Market Data Incremental Refresh_16 Apaotc Trade Grp
athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_16_apaotc_trade_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- No Underlyings: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.no_underlyings.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Und Instrmt Grp: No Underlyings entries
  local count = value or 0
  for und_instrmt_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.und_instrmt_grp.dissect(buffer, index, packet, parent, presence_map, base, state, und_instrmt_grp_index)
  end

  -- No Trade Types: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.no_trade_types.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Type Grp: No Trade Types entries
  local count = value or 0
  for trade_type_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.trade_type_grp.dissect(buffer, index, packet, parent, presence_map, base, state, trade_type_grp_index)
  end

  -- Athexapa Report Status: string, sent
  index, value = athex_oasis_mdfs_fast_v9.athexapa_report_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Party I Ds: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.no_party_i_ds.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Parties Grp: No Party I Ds entries
  local count = value or 0
  for parties_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.parties_grp.dissect(buffer, index, packet, parent, presence_map, base, state, parties_grp_index)
  end

  -- Price Type: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.price_type.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Athexapa Price Currency: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athexapa_price_currency.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Athexapa Price Multiplier: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athexapa_price_multiplier.dissect(buffer, index, packet, parent, { presence_map[base + 3], false }, state, nil)

  -- Athexapa Size Currency: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athexapa_size_currency.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Athexapa Trade Value Currency: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athexapa_trade_value_currency.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Expire Date: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.expire_date.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Apaotc Pre Trade Grp: group, optional
  if presence_map[base + 7] then
    index = athex_oasis_mdfs_fast_v9.apaotc_pre_trade_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Apaotc Post Trade Grp: group, optional
  if presence_map[base + 8] then
    index = athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_16_apaotc_post_trade_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  return index
end

-- Dissect: Market Data Incremental Refresh_16 Apaotc Trade Grp
athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_16_apaotc_trade_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.market_data_incremental_refresh_16_apaotc_trade_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_16_apaotc_trade_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Price Limits Grp
athex_oasis_mdfs_fast_v9.price_limits_grp = {}

-- Dissect Fields: Price Limits Grp
athex_oasis_mdfs_fast_v9.price_limits_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Low Limit Price: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.low_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 0], false }, state, nil)

  -- High Limit Price: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.high_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 1], false }, state, nil)

  return index
end

-- Dissect: Price Limits Grp
athex_oasis_mdfs_fast_v9.price_limits_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.price_limits_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.price_limits_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Trade Price Condition Grp
athex_oasis_mdfs_fast_v9.trade_price_condition_grp = {}

-- Dissect Fields: Trade Price Condition Grp
athex_oasis_mdfs_fast_v9.trade_price_condition_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trade Price Condition: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.trade_price_condition.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Trade Price Condition Grp
athex_oasis_mdfs_fast_v9.trade_price_condition_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trade_price_condition_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = athex_oasis_mdfs_fast_v9.trade_price_condition_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Trd Reg Publication Grp
athex_oasis_mdfs_fast_v9.trd_reg_publication_grp = {}

-- Dissect Fields: Trd Reg Publication Grp
athex_oasis_mdfs_fast_v9.trd_reg_publication_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trd Reg Publication Type: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.trd_reg_publication_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trd Reg Publication Reason: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.trd_reg_publication_reason.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Trd Reg Publication Grp
athex_oasis_mdfs_fast_v9.trd_reg_publication_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trd_reg_publication_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = athex_oasis_mdfs_fast_v9.trd_reg_publication_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Incremental Refresh_16 Trade Grp
athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_16_trade_grp = {}

-- Dissect Fields: Market Data Incremental Refresh_16 Trade Grp
athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_16_trade_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trade Condition: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.trade_condition.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Id: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.trade_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Md Origin Type: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.md_origin_type.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Trading Session Sub Id: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.trading_session_sub_id_default.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Order Category: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.order_category.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- No Trd Reg Publications: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.no_trd_reg_publications.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Trd Reg Publication Grp: No Trd Reg Publications entries
  local count = value or 0
  for trd_reg_publication_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.trd_reg_publication_grp.dissect(buffer, index, packet, parent, presence_map, base, state, trd_reg_publication_grp_index)
  end

  -- No Trade Price Conditions: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.no_trade_price_conditions.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Trade Price Condition Grp: No Trade Price Conditions entries
  local count = value or 0
  for trade_price_condition_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.trade_price_condition_grp.dissect(buffer, index, packet, parent, presence_map, base, state, trade_price_condition_grp_index)
  end

  -- Algorithmic Trade Indicator: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.algorithmic_trade_indicator.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Trade Publish Indicator: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.trade_publish_indicator.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Previously Reported: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.previously_reported.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Athex Total Volume: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_total_volume.dissect(buffer, index, packet, parent, { presence_map[base + 10], false }, state, nil)

  -- Athex Trade Value: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_trade_value.dissect(buffer, index, packet, parent, { presence_map[base + 11], false }, state, nil)

  return index
end

-- Dissect: Market Data Incremental Refresh_16 Trade Grp
athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_16_trade_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.market_data_incremental_refresh_16_trade_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_16_trade_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Order Depth Grp
athex_oasis_mdfs_fast_v9.order_depth_grp = {}

-- Dissect Fields: Order Depth Grp
athex_oasis_mdfs_fast_v9.order_depth_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Entry Position No: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.md_entry_position_no.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.order_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Ord Status: string, sent
  index, value = athex_oasis_mdfs_fast_v9.ord_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Cum Qty: decimal, sent
  index, value = athex_oasis_mdfs_fast_v9.cum_qty.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Time In Force: string, sent
  index, value = athex_oasis_mdfs_fast_v9.time_in_force.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Ord Type: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.ord_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Athex Special Condition: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_special_condition.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Athex Condition Volume: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_condition_volume.dissect(buffer, index, packet, parent, { presence_map[base + 2], false }, state, nil)

  -- Athex Order Entry Date: string, sent
  index, value = athex_oasis_mdfs_fast_v9.athex_order_entry_date.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Order Depth Grp
athex_oasis_mdfs_fast_v9.order_depth_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.order_depth_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.order_depth_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Price Depth Grp
athex_oasis_mdfs_fast_v9.price_depth_grp = {}

-- Dissect Fields: Price Depth Grp
athex_oasis_mdfs_fast_v9.price_depth_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Market Depth: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.market_depth.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Price Level: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.md_price_level.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Number Of Orders: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.number_of_orders.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  return index
end

-- Dissect: Price Depth Grp
athex_oasis_mdfs_fast_v9.price_depth_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.price_depth_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.price_depth_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Apaotc Instrument Grp
athex_oasis_mdfs_fast_v9.apaotc_instrument_grp = {}

-- Dissect Fields: Apaotc Instrument Grp
athex_oasis_mdfs_fast_v9.apaotc_instrument_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: string, sent
  index, value = athex_oasis_mdfs_fast_v9.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Financial Instrument Full Name: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.financial_instrument_full_name.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Cfi Code: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.cfi_code.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Unit Of Measure Qty: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.unit_of_measure_qty.dissect(buffer, index, packet, parent, { presence_map[base + 2], false }, state, nil)

  -- Athexapa Unit Of Measure: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athexapa_unit_of_measure.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Put Or Call: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.put_or_call.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Strike Price: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.strike_price.dissect(buffer, index, packet, parent, { presence_map[base + 5], false }, state, nil)

  -- Strike Currency: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.strike_currency.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Athexapa Strike Price Type: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athexapa_strike_price_type_default_optional_string.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Exercise Style: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.exercise_style.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Maturity Date: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.maturity_date.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Settl Method: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.settl_method.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  return index
end

-- Dissect: Apaotc Instrument Grp
athex_oasis_mdfs_fast_v9.apaotc_instrument_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.apaotc_instrument_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.apaotc_instrument_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Bonds Instrument Grp
athex_oasis_mdfs_fast_v9.bonds_instrument_grp = {}

-- Dissect Fields: Bonds Instrument Grp
athex_oasis_mdfs_fast_v9.bonds_instrument_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Contract Multiplier: decimal, sent
  index, value = athex_oasis_mdfs_fast_v9.contract_multiplier.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Accrued Interest Amt: decimal, sent
  index, value = athex_oasis_mdfs_fast_v9.accrued_interest_amt.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  return index
end

-- Dissect: Bonds Instrument Grp
athex_oasis_mdfs_fast_v9.bonds_instrument_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.bonds_instrument_grp, buffer(offset, 0))
  local index = offset

  index = athex_oasis_mdfs_fast_v9.bonds_instrument_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Incremental Refresh_16 Md Inc Grp
athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_16_md_inc_grp = {}

-- Dissect Fields: Market Data Incremental Refresh_16 Md Inc Grp
athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_16_md_inc_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: string, sent
  index, value = athex_oasis_mdfs_fast_v9.md_update_action.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.symbol_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Athex Security Category: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_security_category_default.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Security Type: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.security_type_default.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Security Exchange: string, sent
  index, value = athex_oasis_mdfs_fast_v9.security_exchange_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Bonds Instrument Grp: group, optional
  if presence_map[base + 3] then
    index = athex_oasis_mdfs_fast_v9.bonds_instrument_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Athex Market Id: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_market_id_default.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Apaotc Instrument Grp: group, optional
  if presence_map[base + 5] then
    index = athex_oasis_mdfs_fast_v9.apaotc_instrument_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Md Entry Type: string, sent
  index, value = athex_oasis_mdfs_fast_v9.md_entry_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Athex Board Id: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_board_id_default.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Md Entry Px: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.md_entry_px.dissect(buffer, index, packet, parent, { presence_map[base + 7], false }, state, nil)

  -- Md Entry Size: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.md_entry_size.dissect(buffer, index, packet, parent, { presence_map[base + 8], false }, state, nil)

  -- Price Depth Grp: group, optional
  if presence_map[base + 9] then
    index = athex_oasis_mdfs_fast_v9.price_depth_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Order Depth Grp: group, optional
  if presence_map[base + 10] then
    index = athex_oasis_mdfs_fast_v9.order_depth_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Trade Grp: group, optional
  if presence_map[base + 11] then
    index = athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_16_trade_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Athex Index Type: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_index_type.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Price Limits Grp: group, optional
  if presence_map[base + 13] then
    index = athex_oasis_mdfs_fast_v9.price_limits_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Apaotc Trade Grp: group, optional
  if presence_map[base + 14] then
    index = athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_16_apaotc_trade_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Transact Time: string, sent
  index, value = athex_oasis_mdfs_fast_v9.transact_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Market Data Incremental Refresh_16 Md Inc Grp
athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_16_md_inc_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.market_data_incremental_refresh_16_md_inc_grp, buffer(offset, 0))
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

  index = athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_16_md_inc_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Incremental Refresh_16 Message
athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_16 = {}

-- Dissect Fields: Market Data Incremental Refresh_16 Message
athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_16.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Begin String: string, Constant
  index, value = athex_oasis_mdfs_fast_v9.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Body Length: int32, sent
  index, value = athex_oasis_mdfs_fast_v9.body_length.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Type: string, Constant
  index, value = athex_oasis_mdfs_fast_v9.msg_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Target Comp Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.target_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: string, sent
  index, value = athex_oasis_mdfs_fast_v9.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Athex Fragment Indicator: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_fragment_indicator.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Appl Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.appl_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Seq Num: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.appl_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Book Type: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.md_book_type.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- No Md Entries: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Inc Grp: No Md Entries entries
  local count = value or 0
  for market_data_incremental_refresh_16_md_inc_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_16_md_inc_grp.dissect(buffer, index, packet, parent, presence_map, base, state, market_data_incremental_refresh_16_md_inc_grp_index)
  end

  -- Checksum: string, sent
  index, value = athex_oasis_mdfs_fast_v9.checksum.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Market Data Incremental Refresh_16 Message
athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_16.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_16.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Athexapa Regulatory Report Type Grp
athex_oasis_mdfs_fast_v9.athexapa_regulatory_report_type_grp = {}

-- Dissect Fields: Athexapa Regulatory Report Type Grp
athex_oasis_mdfs_fast_v9.athexapa_regulatory_report_type_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Regulatory Report Type: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.regulatory_report_type.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Athexapa Regulatory Report Type Grp
athex_oasis_mdfs_fast_v9.athexapa_regulatory_report_type_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_regulatory_report_type_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = athex_oasis_mdfs_fast_v9.athexapa_regulatory_report_type_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Athexapa Trd Types Grp
athex_oasis_mdfs_fast_v9.athexapa_trd_types_grp = {}

-- Dissect Fields: Athexapa Trd Types Grp
athex_oasis_mdfs_fast_v9.athexapa_trd_types_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trd Type: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.trd_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trd Sub Type: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.trd_sub_type.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Secondary Trd Type: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.secondary_trd_type.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  return index
end

-- Dissect: Athexapa Trd Types Grp
athex_oasis_mdfs_fast_v9.athexapa_trd_types_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_trd_types_grp, buffer(offset, 0))
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

  index = athex_oasis_mdfs_fast_v9.athexapa_trd_types_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Snapshot Full Refresh_15 Apaotc Post Trade Grp
athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_15_apaotc_post_trade_grp = {}

-- Dissect Fields: Market Data Snapshot Full Refresh_15 Apaotc Post Trade Grp
athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_15_apaotc_post_trade_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Athexapa Trade Id Indicator: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.athexapa_trade_id_indicator.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Athexapa Trd Types: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.no_athexapa_trd_types.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Athexapa Trd Types Grp: No Athexapa Trd Types entries
  local count = value or 0
  for athexapa_trd_types_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.athexapa_trd_types_grp.dissect(buffer, index, packet, parent, presence_map, base, state, athexapa_trd_types_grp_index)
  end

  -- No Athexapa Regulatory Report Types: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.no_athexapa_regulatory_report_types.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Athexapa Regulatory Report Type Grp: No Athexapa Regulatory Report Types entries
  local count = value or 0
  for athexapa_regulatory_report_type_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.athexapa_regulatory_report_type_grp.dissect(buffer, index, packet, parent, presence_map, base, state, athexapa_regulatory_report_type_grp_index)
  end

  -- Athexapa Transaction To Be Cleared: string, sent
  index, value = athex_oasis_mdfs_fast_v9.athexapa_transaction_to_be_cleared.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Athexapa Emission Allowance: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athexapa_emission_allowance.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Athexapa Third Country Venue: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athexapa_third_country_venue.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  return index
end

-- Dissect: Market Data Snapshot Full Refresh_15 Apaotc Post Trade Grp
athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_15_apaotc_post_trade_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.market_data_snapshot_full_refresh_15_apaotc_post_trade_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_15_apaotc_post_trade_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Apaotc Pre Trade Grp
athex_oasis_mdfs_fast_v9.apaotc_pre_trade_grp = {}

-- Dissect Fields: Apaotc Pre Trade Grp
athex_oasis_mdfs_fast_v9.apaotc_pre_trade_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Side: string, sent
  index, value = athex_oasis_mdfs_fast_v9.side.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Quote Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.quote_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Athexapa Quote Liquidity: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.athexapa_quote_liquidity.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Apaotc Pre Trade Grp
athex_oasis_mdfs_fast_v9.apaotc_pre_trade_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.apaotc_pre_trade_grp, buffer(offset, 0))
  local index = offset

  index = athex_oasis_mdfs_fast_v9.apaotc_pre_trade_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Parties Grp
athex_oasis_mdfs_fast_v9.parties_grp = {}

-- Dissect Fields: Parties Grp
athex_oasis_mdfs_fast_v9.parties_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Party Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.party_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Party Id Source: string, sent
  index, value = athex_oasis_mdfs_fast_v9.party_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Parties Grp
athex_oasis_mdfs_fast_v9.parties_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.parties_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = athex_oasis_mdfs_fast_v9.parties_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Trade Type Grp
athex_oasis_mdfs_fast_v9.trade_type_grp = {}

-- Dissect Fields: Trade Type Grp
athex_oasis_mdfs_fast_v9.trade_type_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trade Type: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.trade_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Sub Type: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.trade_sub_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  return index
end

-- Dissect: Trade Type Grp
athex_oasis_mdfs_fast_v9.trade_type_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trade_type_grp, buffer(offset, 0))
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

  index = athex_oasis_mdfs_fast_v9.trade_type_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Snapshot Full Refresh_15 Apaotc Trade Grp
athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_15_apaotc_trade_grp = {}

-- Dissect Fields: Market Data Snapshot Full Refresh_15 Apaotc Trade Grp
athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_15_apaotc_trade_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- No Trade Types: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.no_trade_types.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Type Grp: No Trade Types entries
  local count = value or 0
  for trade_type_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.trade_type_grp.dissect(buffer, index, packet, parent, presence_map, base, state, trade_type_grp_index)
  end

  -- Athexapa Report Status: string, sent
  index, value = athex_oasis_mdfs_fast_v9.athexapa_report_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Party I Ds: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.no_party_i_ds.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Parties Grp: No Party I Ds entries
  local count = value or 0
  for parties_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.parties_grp.dissect(buffer, index, packet, parent, presence_map, base, state, parties_grp_index)
  end

  -- Price Type: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.price_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Athexapa Price Currency: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athexapa_price_currency.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Athexapa Price Multiplier: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athexapa_price_multiplier.dissect(buffer, index, packet, parent, { presence_map[base + 2], false }, state, nil)

  -- Athexapa Size Currency: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athexapa_size_currency.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Athexapa Trade Value Currency: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athexapa_trade_value_currency.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Expire Date: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.expire_date.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Apaotc Pre Trade Grp: group, optional
  if presence_map[base + 6] then
    index = athex_oasis_mdfs_fast_v9.apaotc_pre_trade_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Apaotc Post Trade Grp: group, optional
  if presence_map[base + 7] then
    index = athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_15_apaotc_post_trade_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  return index
end

-- Dissect: Market Data Snapshot Full Refresh_15 Apaotc Trade Grp
athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_15_apaotc_trade_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.market_data_snapshot_full_refresh_15_apaotc_trade_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_15_apaotc_trade_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Price Limits Grp
athex_oasis_mdfs_fast_v9.price_limits_grp = {}

-- Dissect Fields: Price Limits Grp
athex_oasis_mdfs_fast_v9.price_limits_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Low Limit Price: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.low_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 0], false }, state, nil)

  -- High Limit Price: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.high_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 1], false }, state, nil)

  return index
end

-- Dissect: Price Limits Grp
athex_oasis_mdfs_fast_v9.price_limits_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.price_limits_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.price_limits_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Trade Price Condition Grp
athex_oasis_mdfs_fast_v9.trade_price_condition_grp = {}

-- Dissect Fields: Trade Price Condition Grp
athex_oasis_mdfs_fast_v9.trade_price_condition_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trade Price Condition: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.trade_price_condition.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Trade Price Condition Grp
athex_oasis_mdfs_fast_v9.trade_price_condition_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trade_price_condition_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = athex_oasis_mdfs_fast_v9.trade_price_condition_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Trd Reg Publication Grp
athex_oasis_mdfs_fast_v9.trd_reg_publication_grp = {}

-- Dissect Fields: Trd Reg Publication Grp
athex_oasis_mdfs_fast_v9.trd_reg_publication_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trd Reg Publication Type: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.trd_reg_publication_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trd Reg Publication Reason: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.trd_reg_publication_reason.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Trd Reg Publication Grp
athex_oasis_mdfs_fast_v9.trd_reg_publication_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trd_reg_publication_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = athex_oasis_mdfs_fast_v9.trd_reg_publication_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Snapshot Full Refresh_15 Trade Grp
athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_15_trade_grp = {}

-- Dissect Fields: Market Data Snapshot Full Refresh_15 Trade Grp
athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_15_trade_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trade Condition: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.trade_condition.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Id: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.trade_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Md Origin Type: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.md_origin_type.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Trading Session Sub Id: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.trading_session_sub_id_default.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Order Category: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.order_category.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- No Trd Reg Publications: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.no_trd_reg_publications.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Trd Reg Publication Grp: No Trd Reg Publications entries
  local count = value or 0
  for trd_reg_publication_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.trd_reg_publication_grp.dissect(buffer, index, packet, parent, presence_map, base, state, trd_reg_publication_grp_index)
  end

  -- No Trade Price Conditions: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.no_trade_price_conditions.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Trade Price Condition Grp: No Trade Price Conditions entries
  local count = value or 0
  for trade_price_condition_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.trade_price_condition_grp.dissect(buffer, index, packet, parent, presence_map, base, state, trade_price_condition_grp_index)
  end

  -- Algorithmic Trade Indicator: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.algorithmic_trade_indicator.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Trade Publish Indicator: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.trade_publish_indicator.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Previously Reported: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.previously_reported.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Athex Total Volume: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_total_volume.dissect(buffer, index, packet, parent, { presence_map[base + 10], false }, state, nil)

  -- Athex Trade Value: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_trade_value.dissect(buffer, index, packet, parent, { presence_map[base + 11], false }, state, nil)

  return index
end

-- Dissect: Market Data Snapshot Full Refresh_15 Trade Grp
athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_15_trade_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.market_data_snapshot_full_refresh_15_trade_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_15_trade_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Order Depth Grp
athex_oasis_mdfs_fast_v9.order_depth_grp = {}

-- Dissect Fields: Order Depth Grp
athex_oasis_mdfs_fast_v9.order_depth_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Entry Position No: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.md_entry_position_no.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.order_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Ord Status: string, sent
  index, value = athex_oasis_mdfs_fast_v9.ord_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Cum Qty: decimal, sent
  index, value = athex_oasis_mdfs_fast_v9.cum_qty.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Time In Force: string, sent
  index, value = athex_oasis_mdfs_fast_v9.time_in_force.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Ord Type: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.ord_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Athex Special Condition: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_special_condition.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Athex Condition Volume: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_condition_volume.dissect(buffer, index, packet, parent, { presence_map[base + 2], false }, state, nil)

  -- Athex Order Entry Date: string, sent
  index, value = athex_oasis_mdfs_fast_v9.athex_order_entry_date.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Order Depth Grp
athex_oasis_mdfs_fast_v9.order_depth_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.order_depth_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.order_depth_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Price Depth Grp
athex_oasis_mdfs_fast_v9.price_depth_grp = {}

-- Dissect Fields: Price Depth Grp
athex_oasis_mdfs_fast_v9.price_depth_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Market Depth: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.market_depth.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Price Level: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.md_price_level.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Number Of Orders: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.number_of_orders.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  return index
end

-- Dissect: Price Depth Grp
athex_oasis_mdfs_fast_v9.price_depth_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.price_depth_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.price_depth_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Snapshot Full Refresh_15 Md Full Grp
athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_15_md_full_grp = {}

-- Dissect Fields: Market Data Snapshot Full Refresh_15 Md Full Grp
athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_15_md_full_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Entry Type: string, sent
  index, value = athex_oasis_mdfs_fast_v9.md_entry_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Athex Board Id: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_board_id_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Md Entry Px: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.md_entry_px.dissect(buffer, index, packet, parent, { presence_map[base + 1], false }, state, nil)

  -- Md Entry Size: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.md_entry_size.dissect(buffer, index, packet, parent, { presence_map[base + 2], false }, state, nil)

  -- Price Depth Grp: group, optional
  if presence_map[base + 3] then
    index = athex_oasis_mdfs_fast_v9.price_depth_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Order Depth Grp: group, optional
  if presence_map[base + 4] then
    index = athex_oasis_mdfs_fast_v9.order_depth_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Trade Grp: group, optional
  if presence_map[base + 5] then
    index = athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_15_trade_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Athex Index Type: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_index_type.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Price Limits Grp: group, optional
  if presence_map[base + 7] then
    index = athex_oasis_mdfs_fast_v9.price_limits_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Apaotc Trade Grp: group, optional
  if presence_map[base + 8] then
    index = athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_15_apaotc_trade_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Transact Time: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.transact_time_default.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  return index
end

-- Dissect: Market Data Snapshot Full Refresh_15 Md Full Grp
athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_15_md_full_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.market_data_snapshot_full_refresh_15_md_full_grp, buffer(offset, 0))
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

  index = athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_15_md_full_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Und Instrmt Grp
athex_oasis_mdfs_fast_v9.und_instrmt_grp = {}

-- Dissect Fields: Und Instrmt Grp
athex_oasis_mdfs_fast_v9.und_instrmt_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Underlying Security Id: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.underlying_security_id.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Underlying Security Id Source: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.underlying_security_id_source.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Underlying Index Curve Unit: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.underlying_index_curve_unit.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Underlying Index Curve Period: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.underlying_index_curve_period.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  return index
end

-- Dissect: Und Instrmt Grp
athex_oasis_mdfs_fast_v9.und_instrmt_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.und_instrmt_grp, buffer(offset, 0))
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

  index = athex_oasis_mdfs_fast_v9.und_instrmt_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Apaotc Instrument Grp
athex_oasis_mdfs_fast_v9.apaotc_instrument_grp = {}

-- Dissect Fields: Apaotc Instrument Grp
athex_oasis_mdfs_fast_v9.apaotc_instrument_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: string, sent
  index, value = athex_oasis_mdfs_fast_v9.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Financial Instrument Full Name: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.financial_instrument_full_name.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Cfi Code: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.cfi_code.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Unit Of Measure Qty: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.unit_of_measure_qty.dissect(buffer, index, packet, parent, { presence_map[base + 2], false }, state, nil)

  -- Athexapa Unit Of Measure: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athexapa_unit_of_measure.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Put Or Call: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.put_or_call.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Strike Price: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.strike_price.dissect(buffer, index, packet, parent, { presence_map[base + 5], false }, state, nil)

  -- Strike Currency: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.strike_currency.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Athexapa Strike Price Type: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athexapa_strike_price_type_default_optional_string.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Exercise Style: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.exercise_style.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Maturity Date: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.maturity_date.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Settl Method: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.settl_method.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  return index
end

-- Dissect: Apaotc Instrument Grp
athex_oasis_mdfs_fast_v9.apaotc_instrument_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.apaotc_instrument_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.apaotc_instrument_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Bonds Instrument Grp
athex_oasis_mdfs_fast_v9.bonds_instrument_grp = {}

-- Dissect Fields: Bonds Instrument Grp
athex_oasis_mdfs_fast_v9.bonds_instrument_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Contract Multiplier: decimal, sent
  index, value = athex_oasis_mdfs_fast_v9.contract_multiplier.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Accrued Interest Amt: decimal, sent
  index, value = athex_oasis_mdfs_fast_v9.accrued_interest_amt.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  return index
end

-- Dissect: Bonds Instrument Grp
athex_oasis_mdfs_fast_v9.bonds_instrument_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.bonds_instrument_grp, buffer(offset, 0))
  local index = offset

  index = athex_oasis_mdfs_fast_v9.bonds_instrument_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Grp
athex_oasis_mdfs_fast_v9.instrument_grp = {}

-- Dissect Fields: Instrument Grp
athex_oasis_mdfs_fast_v9.instrument_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Symbol: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.symbol_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Athex Security Category: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_security_category_default.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Security Type: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.security_type_default.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Security Exchange: string, sent
  index, value = athex_oasis_mdfs_fast_v9.security_exchange_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Bonds Instrument Grp: group, optional
  if presence_map[base + 3] then
    index = athex_oasis_mdfs_fast_v9.bonds_instrument_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Athex Market Id: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_market_id_default.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Apaotc Instrument Grp: group, optional
  if presence_map[base + 5] then
    index = athex_oasis_mdfs_fast_v9.apaotc_instrument_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  return index
end

-- Dissect: Instrument Grp
athex_oasis_mdfs_fast_v9.instrument_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.instrument_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.instrument_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Snapshot Full Refresh_15 Message
athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_15 = {}

-- Dissect Fields: Market Data Snapshot Full Refresh_15 Message
athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_15.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Begin String: string, Constant
  index, value = athex_oasis_mdfs_fast_v9.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Body Length: int32, sent
  index, value = athex_oasis_mdfs_fast_v9.body_length.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Type: string, Constant
  index, value = athex_oasis_mdfs_fast_v9.msg_type_constant_w.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Target Comp Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.target_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: string, sent
  index, value = athex_oasis_mdfs_fast_v9.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.last_msg_seq_num_processed_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Athex Snapshot Indicator: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_snapshot_indicator.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Athex Fragment Indicator: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_fragment_indicator.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Appl Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.appl_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Seq Num: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.appl_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Book Type: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.md_book_type.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Instrument Grp: group, optional
  if presence_map[base + 3] then
    index = athex_oasis_mdfs_fast_v9.instrument_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- No Underlyings: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.no_underlyings.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Und Instrmt Grp: No Underlyings entries
  local count = value or 0
  for und_instrmt_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.und_instrmt_grp.dissect(buffer, index, packet, parent, presence_map, base, state, und_instrmt_grp_index)
  end

  -- No Md Entries: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Full Grp: No Md Entries entries
  local count = value or 0
  for market_data_snapshot_full_refresh_15_md_full_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_15_md_full_grp.dissect(buffer, index, packet, parent, presence_map, base, state, market_data_snapshot_full_refresh_15_md_full_grp_index)
  end

  -- Checksum: string, sent
  index, value = athex_oasis_mdfs_fast_v9.checksum.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Market Data Snapshot Full Refresh_15 Message
athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_15.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_15.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Lines Of Text Grp
athex_oasis_mdfs_fast_v9.lines_of_text_grp = {}

-- Dissect Fields: Lines Of Text Grp
athex_oasis_mdfs_fast_v9.lines_of_text_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Text: string, sent
  index, value = athex_oasis_mdfs_fast_v9.text.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Lines Of Text Grp
athex_oasis_mdfs_fast_v9.lines_of_text_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.lines_of_text_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = athex_oasis_mdfs_fast_v9.lines_of_text_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- News_12 Message
athex_oasis_mdfs_fast_v9.news_12 = {}

-- Dissect Fields: News_12 Message
athex_oasis_mdfs_fast_v9.news_12.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Begin String: string, Constant
  index, value = athex_oasis_mdfs_fast_v9.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Body Length: int32, sent
  index, value = athex_oasis_mdfs_fast_v9.body_length.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Type: string, Constant
  index, value = athex_oasis_mdfs_fast_v9.msg_type_constant_b.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Target Comp Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.target_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: string, sent
  index, value = athex_oasis_mdfs_fast_v9.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.last_msg_seq_num_processed_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Athex Snapshot Indicator: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_snapshot_indicator.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Athex Fragment Indicator: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_fragment_indicator.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Appl Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.appl_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Seq Num: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.appl_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Language Code: string, sent
  index, value = athex_oasis_mdfs_fast_v9.language_code.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Headline: string, sent
  index, value = athex_oasis_mdfs_fast_v9.headline.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Lines Of Text: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.no_lines_of_text.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Lines Of Text Grp: No Lines Of Text entries
  local count = value or 0
  for lines_of_text_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.lines_of_text_grp.dissect(buffer, index, packet, parent, presence_map, base, state, lines_of_text_grp_index)
  end

  -- Transact Time: string, sent
  index, value = athex_oasis_mdfs_fast_v9.transact_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Checksum: string, sent
  index, value = athex_oasis_mdfs_fast_v9.checksum.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: News_12 Message
athex_oasis_mdfs_fast_v9.news_12.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = athex_oasis_mdfs_fast_v9.news_12.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Trading Session Status_11 Message
athex_oasis_mdfs_fast_v9.trading_session_status_11 = {}

-- Dissect Fields: Trading Session Status_11 Message
athex_oasis_mdfs_fast_v9.trading_session_status_11.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Begin String: string, Constant
  index, value = athex_oasis_mdfs_fast_v9.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Body Length: int32, sent
  index, value = athex_oasis_mdfs_fast_v9.body_length.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Type: string, Constant
  index, value = athex_oasis_mdfs_fast_v9.msg_type_constant_h.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Target Comp Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.target_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: string, sent
  index, value = athex_oasis_mdfs_fast_v9.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.last_msg_seq_num_processed_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Athex Snapshot Indicator: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_snapshot_indicator.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Athex Fragment Indicator: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_fragment_indicator.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Appl Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.appl_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Seq Num: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.appl_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, sent
  index, value = athex_oasis_mdfs_fast_v9.security_exchange_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Athex Market Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.athex_market_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Athex Board Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.athex_board_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Id: string, Constant
  index, value = athex_oasis_mdfs_fast_v9.trading_session_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Sub Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.trading_session_sub_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trad Ses Status: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.trad_ses_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Transact Time: string, sent
  index, value = athex_oasis_mdfs_fast_v9.transact_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Checksum: string, sent
  index, value = athex_oasis_mdfs_fast_v9.checksum.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Trading Session Status_11 Message
athex_oasis_mdfs_fast_v9.trading_session_status_11.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = athex_oasis_mdfs_fast_v9.trading_session_status_11.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Security Status Grp
athex_oasis_mdfs_fast_v9.security_status_grp = {}

-- Dissect Fields: Security Status Grp
athex_oasis_mdfs_fast_v9.security_status_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security Trading Status: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.security_trading_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Halt Reason: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.halt_reason.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  return index
end

-- Dissect: Security Status Grp
athex_oasis_mdfs_fast_v9.security_status_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.security_status_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.security_status_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Security Status_10 Message
athex_oasis_mdfs_fast_v9.security_status_10 = {}

-- Dissect Fields: Security Status_10 Message
athex_oasis_mdfs_fast_v9.security_status_10.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Begin String: string, Constant
  index, value = athex_oasis_mdfs_fast_v9.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Body Length: int32, sent
  index, value = athex_oasis_mdfs_fast_v9.body_length.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Type: string, Constant
  index, value = athex_oasis_mdfs_fast_v9.msg_type_constant_f.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Target Comp Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.target_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: string, sent
  index, value = athex_oasis_mdfs_fast_v9.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.last_msg_seq_num_processed_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Athex Snapshot Indicator: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_snapshot_indicator.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Athex Fragment Indicator: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_fragment_indicator.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Appl Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.appl_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Seq Num: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.appl_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, sent
  index, value = athex_oasis_mdfs_fast_v9.symbol_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Athex Security Category: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.athex_security_category_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Type: string, sent
  index, value = athex_oasis_mdfs_fast_v9.security_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, sent
  index, value = athex_oasis_mdfs_fast_v9.security_exchange_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Athex Market Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.athex_market_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Sub Id: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.trading_session_sub_id_default.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Security Status Grp: group, optional
  if presence_map[base + 4] then
    index = athex_oasis_mdfs_fast_v9.security_status_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Transact Time: string, sent
  index, value = athex_oasis_mdfs_fast_v9.transact_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Checksum: string, sent
  index, value = athex_oasis_mdfs_fast_v9.checksum.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Security Status_10 Message
athex_oasis_mdfs_fast_v9.security_status_10.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = athex_oasis_mdfs_fast_v9.security_status_10.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Heartbeat_9 Message
athex_oasis_mdfs_fast_v9.heartbeat_9 = {}

-- Dissect Fields: Heartbeat_9 Message
athex_oasis_mdfs_fast_v9.heartbeat_9.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Begin String: string, Constant
  index, value = athex_oasis_mdfs_fast_v9.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Body Length: int32, sent
  index, value = athex_oasis_mdfs_fast_v9.body_length.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Type: string, Constant
  index, value = athex_oasis_mdfs_fast_v9.msg_type_constant_0.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Target Comp Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.target_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: string, sent
  index, value = athex_oasis_mdfs_fast_v9.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.last_msg_seq_num_processed_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.appl_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Seq Num: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.appl_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Checksum: string, sent
  index, value = athex_oasis_mdfs_fast_v9.checksum.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Heartbeat_9 Message
athex_oasis_mdfs_fast_v9.heartbeat_9.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = athex_oasis_mdfs_fast_v9.heartbeat_9.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Athexapa Regulatory Report Type Grp
athex_oasis_mdfs_fast_v9.athexapa_regulatory_report_type_grp = {}

-- Dissect Fields: Athexapa Regulatory Report Type Grp
athex_oasis_mdfs_fast_v9.athexapa_regulatory_report_type_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Regulatory Report Type: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.regulatory_report_type.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Athexapa Regulatory Report Type Grp
athex_oasis_mdfs_fast_v9.athexapa_regulatory_report_type_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_regulatory_report_type_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = athex_oasis_mdfs_fast_v9.athexapa_regulatory_report_type_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Incremental Refresh_22 Apaotc Post Trade Grp
athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_22_apaotc_post_trade_grp = {}

-- Dissect Fields: Market Data Incremental Refresh_22 Apaotc Post Trade Grp
athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_22_apaotc_post_trade_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Athexapa Trade Id Indicator: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.athexapa_trade_id_indicator.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Athexapa Regulatory Report Types: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.no_athexapa_regulatory_report_types.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Athexapa Regulatory Report Type Grp: No Athexapa Regulatory Report Types entries
  local count = value or 0
  for athexapa_regulatory_report_type_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.athexapa_regulatory_report_type_grp.dissect(buffer, index, packet, parent, presence_map, base, state, athexapa_regulatory_report_type_grp_index)
  end

  -- Number Of Trades: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.number_of_trades.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Athexapa Transaction To Be Cleared: string, sent
  index, value = athex_oasis_mdfs_fast_v9.athexapa_transaction_to_be_cleared.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Athexapa Venue Of Publication: string, sent
  index, value = athex_oasis_mdfs_fast_v9.athexapa_venue_of_publication.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Athexapa Third Country Venue: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athexapa_third_country_venue.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  return index
end

-- Dissect: Market Data Incremental Refresh_22 Apaotc Post Trade Grp
athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_22_apaotc_post_trade_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.market_data_incremental_refresh_22_apaotc_post_trade_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_22_apaotc_post_trade_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Apaotc Pre Trade Grp
athex_oasis_mdfs_fast_v9.apaotc_pre_trade_grp = {}

-- Dissect Fields: Apaotc Pre Trade Grp
athex_oasis_mdfs_fast_v9.apaotc_pre_trade_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Side: string, sent
  index, value = athex_oasis_mdfs_fast_v9.side.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Quote Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.quote_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Athexapa Quote Liquidity: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.athexapa_quote_liquidity.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Apaotc Pre Trade Grp
athex_oasis_mdfs_fast_v9.apaotc_pre_trade_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.apaotc_pre_trade_grp, buffer(offset, 0))
  local index = offset

  index = athex_oasis_mdfs_fast_v9.apaotc_pre_trade_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Parties Grp
athex_oasis_mdfs_fast_v9.parties_grp = {}

-- Dissect Fields: Parties Grp
athex_oasis_mdfs_fast_v9.parties_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Party Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.party_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Party Id Source: string, sent
  index, value = athex_oasis_mdfs_fast_v9.party_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Parties Grp
athex_oasis_mdfs_fast_v9.parties_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.parties_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = athex_oasis_mdfs_fast_v9.parties_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Trade Type Grp
athex_oasis_mdfs_fast_v9.trade_type_grp = {}

-- Dissect Fields: Trade Type Grp
athex_oasis_mdfs_fast_v9.trade_type_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trade Type: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.trade_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Sub Type: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.trade_sub_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  return index
end

-- Dissect: Trade Type Grp
athex_oasis_mdfs_fast_v9.trade_type_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trade_type_grp, buffer(offset, 0))
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

  index = athex_oasis_mdfs_fast_v9.trade_type_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Und Instrmt Grp
athex_oasis_mdfs_fast_v9.und_instrmt_grp = {}

-- Dissect Fields: Und Instrmt Grp
athex_oasis_mdfs_fast_v9.und_instrmt_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Underlying Security Id: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.underlying_security_id.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Underlying Security Id Source: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.underlying_security_id_source.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Underlying Index Curve Unit: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.underlying_index_curve_unit.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Underlying Index Curve Period: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.underlying_index_curve_period.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  return index
end

-- Dissect: Und Instrmt Grp
athex_oasis_mdfs_fast_v9.und_instrmt_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.und_instrmt_grp, buffer(offset, 0))
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

  index = athex_oasis_mdfs_fast_v9.und_instrmt_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Incremental Refresh_22 Apaotc Trade Grp
athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_22_apaotc_trade_grp = {}

-- Dissect Fields: Market Data Incremental Refresh_22 Apaotc Trade Grp
athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_22_apaotc_trade_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- No Underlyings: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.no_underlyings.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Und Instrmt Grp: No Underlyings entries
  local count = value or 0
  for und_instrmt_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.und_instrmt_grp.dissect(buffer, index, packet, parent, presence_map, base, state, und_instrmt_grp_index)
  end

  -- No Trade Types: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.no_trade_types.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Type Grp: No Trade Types entries
  local count = value or 0
  for trade_type_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.trade_type_grp.dissect(buffer, index, packet, parent, presence_map, base, state, trade_type_grp_index)
  end

  -- Athexapa Report Status: string, sent
  index, value = athex_oasis_mdfs_fast_v9.athexapa_report_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Party I Ds: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.no_party_i_ds.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Parties Grp: No Party I Ds entries
  local count = value or 0
  for parties_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.parties_grp.dissect(buffer, index, packet, parent, presence_map, base, state, parties_grp_index)
  end

  -- Price Type: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.price_type.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Athexapa Price Currency: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athexapa_price_currency.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Athexapa Price Multiplier: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athexapa_price_multiplier.dissect(buffer, index, packet, parent, { presence_map[base + 3], false }, state, nil)

  -- Athexapa Size Currency: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athexapa_size_currency.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Athexapa Trade Value Currency: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athexapa_trade_value_currency.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Expire Date: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.expire_date.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Last Mkt: string, sent
  index, value = athex_oasis_mdfs_fast_v9.last_mkt.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Apaotc Pre Trade Grp: group, optional
  if presence_map[base + 7] then
    index = athex_oasis_mdfs_fast_v9.apaotc_pre_trade_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Apaotc Post Trade Grp: group, optional
  if presence_map[base + 8] then
    index = athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_22_apaotc_post_trade_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  return index
end

-- Dissect: Market Data Incremental Refresh_22 Apaotc Trade Grp
athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_22_apaotc_trade_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.market_data_incremental_refresh_22_apaotc_trade_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_22_apaotc_trade_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Price Limits Grp
athex_oasis_mdfs_fast_v9.price_limits_grp = {}

-- Dissect Fields: Price Limits Grp
athex_oasis_mdfs_fast_v9.price_limits_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Low Limit Price: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.low_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 0], false }, state, nil)

  -- High Limit Price: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.high_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 1], false }, state, nil)

  return index
end

-- Dissect: Price Limits Grp
athex_oasis_mdfs_fast_v9.price_limits_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.price_limits_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.price_limits_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Trade Price Condition Grp
athex_oasis_mdfs_fast_v9.trade_price_condition_grp = {}

-- Dissect Fields: Trade Price Condition Grp
athex_oasis_mdfs_fast_v9.trade_price_condition_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trade Price Condition: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.trade_price_condition.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Trade Price Condition Grp
athex_oasis_mdfs_fast_v9.trade_price_condition_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trade_price_condition_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = athex_oasis_mdfs_fast_v9.trade_price_condition_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Trd Reg Publication Grp
athex_oasis_mdfs_fast_v9.trd_reg_publication_grp = {}

-- Dissect Fields: Trd Reg Publication Grp
athex_oasis_mdfs_fast_v9.trd_reg_publication_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trd Reg Publication Type: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.trd_reg_publication_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trd Reg Publication Reason: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.trd_reg_publication_reason.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Trd Reg Publication Grp
athex_oasis_mdfs_fast_v9.trd_reg_publication_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trd_reg_publication_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = athex_oasis_mdfs_fast_v9.trd_reg_publication_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Incremental Refresh_22 Trade Grp
athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_22_trade_grp = {}

-- Dissect Fields: Market Data Incremental Refresh_22 Trade Grp
athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_22_trade_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trade Condition: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.trade_condition.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Id: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.trade_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Order Category: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.order_category.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- No Trd Reg Publications: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.no_trd_reg_publications.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Trd Reg Publication Grp: No Trd Reg Publications entries
  local count = value or 0
  for trd_reg_publication_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.trd_reg_publication_grp.dissect(buffer, index, packet, parent, presence_map, base, state, trd_reg_publication_grp_index)
  end

  -- No Trade Price Conditions: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.no_trade_price_conditions.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Trade Price Condition Grp: No Trade Price Conditions entries
  local count = value or 0
  for trade_price_condition_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.trade_price_condition_grp.dissect(buffer, index, packet, parent, presence_map, base, state, trade_price_condition_grp_index)
  end

  -- Algorithmic Trade Indicator: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.algorithmic_trade_indicator.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Trade Publish Indicator: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.trade_publish_indicator.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Athex Total Volume: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_total_volume.dissect(buffer, index, packet, parent, { presence_map[base + 7], false }, state, nil)

  -- Athex Trade Value: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_trade_value.dissect(buffer, index, packet, parent, { presence_map[base + 8], false }, state, nil)

  return index
end

-- Dissect: Market Data Incremental Refresh_22 Trade Grp
athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_22_trade_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.market_data_incremental_refresh_22_trade_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_22_trade_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Order Depth Grp
athex_oasis_mdfs_fast_v9.order_depth_grp = {}

-- Dissect Fields: Order Depth Grp
athex_oasis_mdfs_fast_v9.order_depth_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Entry Position No: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.md_entry_position_no.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.order_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Ord Status: string, sent
  index, value = athex_oasis_mdfs_fast_v9.ord_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Cum Qty: decimal, sent
  index, value = athex_oasis_mdfs_fast_v9.cum_qty.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Time In Force: string, sent
  index, value = athex_oasis_mdfs_fast_v9.time_in_force.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Ord Type: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.ord_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Athex Special Condition: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_special_condition.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Athex Condition Volume: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_condition_volume.dissect(buffer, index, packet, parent, { presence_map[base + 2], false }, state, nil)

  -- Athex Order Entry Date: string, sent
  index, value = athex_oasis_mdfs_fast_v9.athex_order_entry_date.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Order Depth Grp
athex_oasis_mdfs_fast_v9.order_depth_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.order_depth_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.order_depth_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Price Depth Grp
athex_oasis_mdfs_fast_v9.price_depth_grp = {}

-- Dissect Fields: Price Depth Grp
athex_oasis_mdfs_fast_v9.price_depth_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Market Depth: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.market_depth.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Price Level: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.md_price_level.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Number Of Orders: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.number_of_orders.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  return index
end

-- Dissect: Price Depth Grp
athex_oasis_mdfs_fast_v9.price_depth_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.price_depth_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.price_depth_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Apaotc Instrument Grp
athex_oasis_mdfs_fast_v9.apaotc_instrument_grp = {}

-- Dissect Fields: Apaotc Instrument Grp
athex_oasis_mdfs_fast_v9.apaotc_instrument_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: string, sent
  index, value = athex_oasis_mdfs_fast_v9.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Financial Instrument Full Name: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.financial_instrument_full_name.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Cfi Code: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.cfi_code.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Unit Of Measure Qty: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.unit_of_measure_qty.dissect(buffer, index, packet, parent, { presence_map[base + 2], false }, state, nil)

  -- Athexapa Unit Of Measure: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athexapa_unit_of_measure.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Put Or Call: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.put_or_call.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Strike Price: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.strike_price.dissect(buffer, index, packet, parent, { presence_map[base + 5], false }, state, nil)

  -- Strike Currency: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.strike_currency.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Athexapa Strike Price Type: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athexapa_strike_price_type_default_optional_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Exercise Style: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.exercise_style.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Maturity Date: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.maturity_date.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Settl Method: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.settl_method.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  return index
end

-- Dissect: Apaotc Instrument Grp
athex_oasis_mdfs_fast_v9.apaotc_instrument_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.apaotc_instrument_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.apaotc_instrument_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Bonds Instrument Grp
athex_oasis_mdfs_fast_v9.bonds_instrument_grp = {}

-- Dissect Fields: Bonds Instrument Grp
athex_oasis_mdfs_fast_v9.bonds_instrument_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Contract Multiplier: decimal, sent
  index, value = athex_oasis_mdfs_fast_v9.contract_multiplier.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Accrued Interest Amt: decimal, sent
  index, value = athex_oasis_mdfs_fast_v9.accrued_interest_amt.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  return index
end

-- Dissect: Bonds Instrument Grp
athex_oasis_mdfs_fast_v9.bonds_instrument_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.bonds_instrument_grp, buffer(offset, 0))
  local index = offset

  index = athex_oasis_mdfs_fast_v9.bonds_instrument_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Incremental Refresh_22 Md Inc Grp
athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_22_md_inc_grp = {}

-- Dissect Fields: Market Data Incremental Refresh_22 Md Inc Grp
athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_22_md_inc_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: string, sent
  index, value = athex_oasis_mdfs_fast_v9.md_update_action.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.symbol_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Athex Security Category: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_security_category_default.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Security Type: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.security_type_default.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Security Exchange: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.security_exchange_default.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Bonds Instrument Grp: group, optional
  if presence_map[base + 4] then
    index = athex_oasis_mdfs_fast_v9.bonds_instrument_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Athex Market Id: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_market_id_default.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Apaotc Instrument Grp: group, optional
  if presence_map[base + 6] then
    index = athex_oasis_mdfs_fast_v9.apaotc_instrument_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Md Entry Type: string, sent
  index, value = athex_oasis_mdfs_fast_v9.md_entry_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Athex Board Id: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_board_id_default.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Md Entry Px: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.md_entry_px.dissect(buffer, index, packet, parent, { presence_map[base + 8], false }, state, nil)

  -- Md Entry Size: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.md_entry_size.dissect(buffer, index, packet, parent, { presence_map[base + 9], false }, state, nil)

  -- Md Origin Type: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.md_origin_type.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Trading Session Sub Id: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.trading_session_sub_id_default.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Price Depth Grp: group, optional
  if presence_map[base + 12] then
    index = athex_oasis_mdfs_fast_v9.price_depth_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Order Depth Grp: group, optional
  if presence_map[base + 13] then
    index = athex_oasis_mdfs_fast_v9.order_depth_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Trade Grp: group, optional
  if presence_map[base + 14] then
    index = athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_22_trade_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Athex Index Type: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_index_type.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  -- Price Limits Grp: group, optional
  if presence_map[base + 16] then
    index = athex_oasis_mdfs_fast_v9.price_limits_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Apaotc Trade Grp: group, optional
  if presence_map[base + 17] then
    index = athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_22_apaotc_trade_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Transact Time: string, sent
  index, value = athex_oasis_mdfs_fast_v9.transact_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Market Data Incremental Refresh_22 Md Inc Grp
athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_22_md_inc_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.market_data_incremental_refresh_22_md_inc_grp, buffer(offset, 0))
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

  index = athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_22_md_inc_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Athex Recovery Grp
athex_oasis_mdfs_fast_v9.athex_recovery_grp = {}

-- Dissect Fields: Athex Recovery Grp
athex_oasis_mdfs_fast_v9.athex_recovery_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Athex Recovery Seq Num: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.athex_recovery_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Athex Recovery Grp
athex_oasis_mdfs_fast_v9.athex_recovery_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_recovery_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = athex_oasis_mdfs_fast_v9.athex_recovery_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Incremental Refresh_22 Message
athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_22 = {}

-- Dissect Fields: Market Data Incremental Refresh_22 Message
athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_22.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Begin String: string, Constant
  index, value = athex_oasis_mdfs_fast_v9.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Body Length: int32, sent
  index, value = athex_oasis_mdfs_fast_v9.body_length.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Type: string, Constant
  index, value = athex_oasis_mdfs_fast_v9.msg_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Target Comp Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.target_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: string, sent
  index, value = athex_oasis_mdfs_fast_v9.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Athex Fragment Indicator: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_fragment_indicator.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- No Athex Recovery Seq Nums: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.no_athex_recovery_seq_nums.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Athex Recovery Grp: No Athex Recovery Seq Nums entries
  local count = value or 0
  for athex_recovery_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.athex_recovery_grp.dissect(buffer, index, packet, parent, presence_map, base, state, athex_recovery_grp_index)
  end

  -- Appl Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.appl_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Seq Num: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.appl_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Book Type: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.md_book_type.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- No Md Entries: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Inc Grp: No Md Entries entries
  local count = value or 0
  for market_data_incremental_refresh_22_md_inc_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_22_md_inc_grp.dissect(buffer, index, packet, parent, presence_map, base, state, market_data_incremental_refresh_22_md_inc_grp_index)
  end

  -- Checksum: string, sent
  index, value = athex_oasis_mdfs_fast_v9.checksum.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Market Data Incremental Refresh_22 Message
athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_22.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_22.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Athexapa Regulatory Report Type Grp
athex_oasis_mdfs_fast_v9.athexapa_regulatory_report_type_grp = {}

-- Dissect Fields: Athexapa Regulatory Report Type Grp
athex_oasis_mdfs_fast_v9.athexapa_regulatory_report_type_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Regulatory Report Type: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.regulatory_report_type.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Athexapa Regulatory Report Type Grp
athex_oasis_mdfs_fast_v9.athexapa_regulatory_report_type_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athexapa_regulatory_report_type_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = athex_oasis_mdfs_fast_v9.athexapa_regulatory_report_type_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Snapshot Full Refresh_21 Apaotc Post Trade Grp
athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_21_apaotc_post_trade_grp = {}

-- Dissect Fields: Market Data Snapshot Full Refresh_21 Apaotc Post Trade Grp
athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_21_apaotc_post_trade_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Athexapa Trade Id Indicator: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.athexapa_trade_id_indicator.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Athexapa Regulatory Report Types: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.no_athexapa_regulatory_report_types.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Athexapa Regulatory Report Type Grp: No Athexapa Regulatory Report Types entries
  local count = value or 0
  for athexapa_regulatory_report_type_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.athexapa_regulatory_report_type_grp.dissect(buffer, index, packet, parent, presence_map, base, state, athexapa_regulatory_report_type_grp_index)
  end

  -- Number Of Trades: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.number_of_trades.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Athexapa Transaction To Be Cleared: string, sent
  index, value = athex_oasis_mdfs_fast_v9.athexapa_transaction_to_be_cleared.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Athexapa Venue Of Publication: string, sent
  index, value = athex_oasis_mdfs_fast_v9.athexapa_venue_of_publication.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Athexapa Third Country Venue: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athexapa_third_country_venue.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  return index
end

-- Dissect: Market Data Snapshot Full Refresh_21 Apaotc Post Trade Grp
athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_21_apaotc_post_trade_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.market_data_snapshot_full_refresh_21_apaotc_post_trade_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_21_apaotc_post_trade_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Apaotc Pre Trade Grp
athex_oasis_mdfs_fast_v9.apaotc_pre_trade_grp = {}

-- Dissect Fields: Apaotc Pre Trade Grp
athex_oasis_mdfs_fast_v9.apaotc_pre_trade_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Side: string, sent
  index, value = athex_oasis_mdfs_fast_v9.side.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Quote Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.quote_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Athexapa Quote Liquidity: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.athexapa_quote_liquidity.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Apaotc Pre Trade Grp
athex_oasis_mdfs_fast_v9.apaotc_pre_trade_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.apaotc_pre_trade_grp, buffer(offset, 0))
  local index = offset

  index = athex_oasis_mdfs_fast_v9.apaotc_pre_trade_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Parties Grp
athex_oasis_mdfs_fast_v9.parties_grp = {}

-- Dissect Fields: Parties Grp
athex_oasis_mdfs_fast_v9.parties_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Party Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.party_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Party Id Source: string, sent
  index, value = athex_oasis_mdfs_fast_v9.party_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Parties Grp
athex_oasis_mdfs_fast_v9.parties_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.parties_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = athex_oasis_mdfs_fast_v9.parties_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Trade Type Grp
athex_oasis_mdfs_fast_v9.trade_type_grp = {}

-- Dissect Fields: Trade Type Grp
athex_oasis_mdfs_fast_v9.trade_type_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trade Type: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.trade_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Sub Type: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.trade_sub_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  return index
end

-- Dissect: Trade Type Grp
athex_oasis_mdfs_fast_v9.trade_type_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trade_type_grp, buffer(offset, 0))
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

  index = athex_oasis_mdfs_fast_v9.trade_type_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Snapshot Full Refresh_21 Apaotc Trade Grp
athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_21_apaotc_trade_grp = {}

-- Dissect Fields: Market Data Snapshot Full Refresh_21 Apaotc Trade Grp
athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_21_apaotc_trade_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- No Trade Types: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.no_trade_types.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Type Grp: No Trade Types entries
  local count = value or 0
  for trade_type_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.trade_type_grp.dissect(buffer, index, packet, parent, presence_map, base, state, trade_type_grp_index)
  end

  -- Athexapa Report Status: string, sent
  index, value = athex_oasis_mdfs_fast_v9.athexapa_report_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Party I Ds: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.no_party_i_ds.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Parties Grp: No Party I Ds entries
  local count = value or 0
  for parties_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.parties_grp.dissect(buffer, index, packet, parent, presence_map, base, state, parties_grp_index)
  end

  -- Price Type: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.price_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Athexapa Price Currency: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athexapa_price_currency.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Athexapa Price Multiplier: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athexapa_price_multiplier.dissect(buffer, index, packet, parent, { presence_map[base + 2], false }, state, nil)

  -- Athexapa Size Currency: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athexapa_size_currency.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Athexapa Trade Value Currency: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athexapa_trade_value_currency.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Expire Date: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.expire_date.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Last Mkt: string, sent
  index, value = athex_oasis_mdfs_fast_v9.last_mkt.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Apaotc Pre Trade Grp: group, optional
  if presence_map[base + 6] then
    index = athex_oasis_mdfs_fast_v9.apaotc_pre_trade_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Apaotc Post Trade Grp: group, optional
  if presence_map[base + 7] then
    index = athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_21_apaotc_post_trade_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  return index
end

-- Dissect: Market Data Snapshot Full Refresh_21 Apaotc Trade Grp
athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_21_apaotc_trade_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.market_data_snapshot_full_refresh_21_apaotc_trade_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_21_apaotc_trade_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Price Limits Grp
athex_oasis_mdfs_fast_v9.price_limits_grp = {}

-- Dissect Fields: Price Limits Grp
athex_oasis_mdfs_fast_v9.price_limits_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Low Limit Price: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.low_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 0], false }, state, nil)

  -- High Limit Price: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.high_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 1], false }, state, nil)

  return index
end

-- Dissect: Price Limits Grp
athex_oasis_mdfs_fast_v9.price_limits_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.price_limits_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.price_limits_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Trade Price Condition Grp
athex_oasis_mdfs_fast_v9.trade_price_condition_grp = {}

-- Dissect Fields: Trade Price Condition Grp
athex_oasis_mdfs_fast_v9.trade_price_condition_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trade Price Condition: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.trade_price_condition.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Trade Price Condition Grp
athex_oasis_mdfs_fast_v9.trade_price_condition_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trade_price_condition_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = athex_oasis_mdfs_fast_v9.trade_price_condition_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Trd Reg Publication Grp
athex_oasis_mdfs_fast_v9.trd_reg_publication_grp = {}

-- Dissect Fields: Trd Reg Publication Grp
athex_oasis_mdfs_fast_v9.trd_reg_publication_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trd Reg Publication Type: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.trd_reg_publication_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trd Reg Publication Reason: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.trd_reg_publication_reason.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Trd Reg Publication Grp
athex_oasis_mdfs_fast_v9.trd_reg_publication_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trd_reg_publication_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = athex_oasis_mdfs_fast_v9.trd_reg_publication_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Snapshot Full Refresh_21 Trade Grp
athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_21_trade_grp = {}

-- Dissect Fields: Market Data Snapshot Full Refresh_21 Trade Grp
athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_21_trade_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trade Condition: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.trade_condition.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Id: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.trade_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Order Category: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.order_category.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- No Trd Reg Publications: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.no_trd_reg_publications.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Trd Reg Publication Grp: No Trd Reg Publications entries
  local count = value or 0
  for trd_reg_publication_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.trd_reg_publication_grp.dissect(buffer, index, packet, parent, presence_map, base, state, trd_reg_publication_grp_index)
  end

  -- No Trade Price Conditions: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.no_trade_price_conditions.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Trade Price Condition Grp: No Trade Price Conditions entries
  local count = value or 0
  for trade_price_condition_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.trade_price_condition_grp.dissect(buffer, index, packet, parent, presence_map, base, state, trade_price_condition_grp_index)
  end

  -- Algorithmic Trade Indicator: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.algorithmic_trade_indicator.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Trade Publish Indicator: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.trade_publish_indicator.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Athex Total Volume: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_total_volume.dissect(buffer, index, packet, parent, { presence_map[base + 7], false }, state, nil)

  -- Athex Trade Value: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_trade_value.dissect(buffer, index, packet, parent, { presence_map[base + 8], false }, state, nil)

  return index
end

-- Dissect: Market Data Snapshot Full Refresh_21 Trade Grp
athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_21_trade_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.market_data_snapshot_full_refresh_21_trade_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_21_trade_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Order Depth Grp
athex_oasis_mdfs_fast_v9.order_depth_grp = {}

-- Dissect Fields: Order Depth Grp
athex_oasis_mdfs_fast_v9.order_depth_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Entry Position No: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.md_entry_position_no.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.order_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Ord Status: string, sent
  index, value = athex_oasis_mdfs_fast_v9.ord_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Cum Qty: decimal, sent
  index, value = athex_oasis_mdfs_fast_v9.cum_qty.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Time In Force: string, sent
  index, value = athex_oasis_mdfs_fast_v9.time_in_force.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Ord Type: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.ord_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Athex Special Condition: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_special_condition.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Athex Condition Volume: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_condition_volume.dissect(buffer, index, packet, parent, { presence_map[base + 2], false }, state, nil)

  -- Athex Order Entry Date: string, sent
  index, value = athex_oasis_mdfs_fast_v9.athex_order_entry_date.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Order Depth Grp
athex_oasis_mdfs_fast_v9.order_depth_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.order_depth_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.order_depth_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Price Depth Grp
athex_oasis_mdfs_fast_v9.price_depth_grp = {}

-- Dissect Fields: Price Depth Grp
athex_oasis_mdfs_fast_v9.price_depth_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Market Depth: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.market_depth.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Price Level: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.md_price_level.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Number Of Orders: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.number_of_orders.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  return index
end

-- Dissect: Price Depth Grp
athex_oasis_mdfs_fast_v9.price_depth_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.price_depth_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.price_depth_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Snapshot Full Refresh_21 Md Full Grp
athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_21_md_full_grp = {}

-- Dissect Fields: Market Data Snapshot Full Refresh_21 Md Full Grp
athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_21_md_full_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Entry Type: string, sent
  index, value = athex_oasis_mdfs_fast_v9.md_entry_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Athex Board Id: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_board_id_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Md Entry Px: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.md_entry_px.dissect(buffer, index, packet, parent, { presence_map[base + 1], false }, state, nil)

  -- Md Entry Size: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.md_entry_size.dissect(buffer, index, packet, parent, { presence_map[base + 2], false }, state, nil)

  -- Md Origin Type: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.md_origin_type.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Trading Session Sub Id: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.trading_session_sub_id_default.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Price Depth Grp: group, optional
  if presence_map[base + 5] then
    index = athex_oasis_mdfs_fast_v9.price_depth_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Order Depth Grp: group, optional
  if presence_map[base + 6] then
    index = athex_oasis_mdfs_fast_v9.order_depth_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Trade Grp: group, optional
  if presence_map[base + 7] then
    index = athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_21_trade_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Athex Index Type: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_index_type.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Price Limits Grp: group, optional
  if presence_map[base + 9] then
    index = athex_oasis_mdfs_fast_v9.price_limits_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Apaotc Trade Grp: group, optional
  if presence_map[base + 10] then
    index = athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_21_apaotc_trade_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Transact Time: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.transact_time_default.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  return index
end

-- Dissect: Market Data Snapshot Full Refresh_21 Md Full Grp
athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_21_md_full_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.market_data_snapshot_full_refresh_21_md_full_grp, buffer(offset, 0))
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

  index = athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_21_md_full_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Und Instrmt Grp
athex_oasis_mdfs_fast_v9.und_instrmt_grp = {}

-- Dissect Fields: Und Instrmt Grp
athex_oasis_mdfs_fast_v9.und_instrmt_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Underlying Security Id: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.underlying_security_id.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Underlying Security Id Source: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.underlying_security_id_source.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Underlying Index Curve Unit: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.underlying_index_curve_unit.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Underlying Index Curve Period: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.underlying_index_curve_period.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  return index
end

-- Dissect: Und Instrmt Grp
athex_oasis_mdfs_fast_v9.und_instrmt_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.und_instrmt_grp, buffer(offset, 0))
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

  index = athex_oasis_mdfs_fast_v9.und_instrmt_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Apaotc Instrument Grp
athex_oasis_mdfs_fast_v9.apaotc_instrument_grp = {}

-- Dissect Fields: Apaotc Instrument Grp
athex_oasis_mdfs_fast_v9.apaotc_instrument_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: string, sent
  index, value = athex_oasis_mdfs_fast_v9.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Financial Instrument Full Name: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.financial_instrument_full_name.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Cfi Code: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.cfi_code.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Unit Of Measure Qty: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.unit_of_measure_qty.dissect(buffer, index, packet, parent, { presence_map[base + 2], false }, state, nil)

  -- Athexapa Unit Of Measure: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athexapa_unit_of_measure.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Put Or Call: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.put_or_call.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Strike Price: decimal, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.strike_price.dissect(buffer, index, packet, parent, { presence_map[base + 5], false }, state, nil)

  -- Strike Currency: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.strike_currency.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Athexapa Strike Price Type: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athexapa_strike_price_type_default_optional_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Exercise Style: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.exercise_style.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Maturity Date: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.maturity_date.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Settl Method: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.settl_method.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  return index
end

-- Dissect: Apaotc Instrument Grp
athex_oasis_mdfs_fast_v9.apaotc_instrument_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.apaotc_instrument_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.apaotc_instrument_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Bonds Instrument Grp
athex_oasis_mdfs_fast_v9.bonds_instrument_grp = {}

-- Dissect Fields: Bonds Instrument Grp
athex_oasis_mdfs_fast_v9.bonds_instrument_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Contract Multiplier: decimal, sent
  index, value = athex_oasis_mdfs_fast_v9.contract_multiplier.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  -- Accrued Interest Amt: decimal, sent
  index, value = athex_oasis_mdfs_fast_v9.accrued_interest_amt.dissect(buffer, index, packet, parent, { nil, false }, state, nil)

  return index
end

-- Dissect: Bonds Instrument Grp
athex_oasis_mdfs_fast_v9.bonds_instrument_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.bonds_instrument_grp, buffer(offset, 0))
  local index = offset

  index = athex_oasis_mdfs_fast_v9.bonds_instrument_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Grp
athex_oasis_mdfs_fast_v9.instrument_grp = {}

-- Dissect Fields: Instrument Grp
athex_oasis_mdfs_fast_v9.instrument_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Symbol: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.symbol_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Athex Security Category: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_security_category_default.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Security Type: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.security_type_default.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Security Exchange: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.security_exchange_default.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Bonds Instrument Grp: group, optional
  if presence_map[base + 4] then
    index = athex_oasis_mdfs_fast_v9.bonds_instrument_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Athex Market Id: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_market_id_default.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Apaotc Instrument Grp: group, optional
  if presence_map[base + 6] then
    index = athex_oasis_mdfs_fast_v9.apaotc_instrument_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  return index
end

-- Dissect: Instrument Grp
athex_oasis_mdfs_fast_v9.instrument_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.instrument_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.instrument_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Data Snapshot Full Refresh_21 Message
athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_21 = {}

-- Dissect Fields: Market Data Snapshot Full Refresh_21 Message
athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_21.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Begin String: string, Constant
  index, value = athex_oasis_mdfs_fast_v9.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Body Length: int32, sent
  index, value = athex_oasis_mdfs_fast_v9.body_length.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Type: string, Constant
  index, value = athex_oasis_mdfs_fast_v9.msg_type_constant_w.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Target Comp Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.target_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: string, sent
  index, value = athex_oasis_mdfs_fast_v9.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.last_msg_seq_num_processed_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Athex Snapshot Indicator: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_snapshot_indicator.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Athex Fragment Indicator: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_fragment_indicator.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Appl Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.appl_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Seq Num: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.appl_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Book Type: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.md_book_type.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Instrument Grp: group, optional
  if presence_map[base + 3] then
    index = athex_oasis_mdfs_fast_v9.instrument_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- No Underlyings: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.no_underlyings.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Und Instrmt Grp: No Underlyings entries
  local count = value or 0
  for und_instrmt_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.und_instrmt_grp.dissect(buffer, index, packet, parent, presence_map, base, state, und_instrmt_grp_index)
  end

  -- No Md Entries: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Full Grp: No Md Entries entries
  local count = value or 0
  for market_data_snapshot_full_refresh_21_md_full_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_21_md_full_grp.dissect(buffer, index, packet, parent, presence_map, base, state, market_data_snapshot_full_refresh_21_md_full_grp_index)
  end

  -- Checksum: string, sent
  index, value = athex_oasis_mdfs_fast_v9.checksum.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Market Data Snapshot Full Refresh_21 Message
athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_21.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_21.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Lines Of Text Grp
athex_oasis_mdfs_fast_v9.lines_of_text_grp = {}

-- Dissect Fields: Lines Of Text Grp
athex_oasis_mdfs_fast_v9.lines_of_text_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Text: string, sent
  index, value = athex_oasis_mdfs_fast_v9.text.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Lines Of Text Grp
athex_oasis_mdfs_fast_v9.lines_of_text_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.lines_of_text_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = athex_oasis_mdfs_fast_v9.lines_of_text_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Athex Recovery Grp
athex_oasis_mdfs_fast_v9.athex_recovery_grp = {}

-- Dissect Fields: Athex Recovery Grp
athex_oasis_mdfs_fast_v9.athex_recovery_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Athex Recovery Seq Num: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.athex_recovery_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Athex Recovery Grp
athex_oasis_mdfs_fast_v9.athex_recovery_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_recovery_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = athex_oasis_mdfs_fast_v9.athex_recovery_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- News_20 Message
athex_oasis_mdfs_fast_v9.news_20 = {}

-- Dissect Fields: News_20 Message
athex_oasis_mdfs_fast_v9.news_20.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Begin String: string, Constant
  index, value = athex_oasis_mdfs_fast_v9.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Body Length: int32, sent
  index, value = athex_oasis_mdfs_fast_v9.body_length.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Type: string, Constant
  index, value = athex_oasis_mdfs_fast_v9.msg_type_constant_b.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Target Comp Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.target_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: string, sent
  index, value = athex_oasis_mdfs_fast_v9.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.last_msg_seq_num_processed_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Athex Snapshot Indicator: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_snapshot_indicator.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Athex Fragment Indicator: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_fragment_indicator.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- No Athex Recovery Seq Nums: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.no_athex_recovery_seq_nums.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Athex Recovery Grp: No Athex Recovery Seq Nums entries
  local count = value or 0
  for athex_recovery_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.athex_recovery_grp.dissect(buffer, index, packet, parent, presence_map, base, state, athex_recovery_grp_index)
  end

  -- Appl Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.appl_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Seq Num: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.appl_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Language Code: string, sent
  index, value = athex_oasis_mdfs_fast_v9.language_code.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Headline: string, sent
  index, value = athex_oasis_mdfs_fast_v9.headline.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Lines Of Text: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.no_lines_of_text.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Lines Of Text Grp: No Lines Of Text entries
  local count = value or 0
  for lines_of_text_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.lines_of_text_grp.dissect(buffer, index, packet, parent, presence_map, base, state, lines_of_text_grp_index)
  end

  -- Transact Time: string, sent
  index, value = athex_oasis_mdfs_fast_v9.transact_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Checksum: string, sent
  index, value = athex_oasis_mdfs_fast_v9.checksum.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: News_20 Message
athex_oasis_mdfs_fast_v9.news_20.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = athex_oasis_mdfs_fast_v9.news_20.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Trading Session Grp
athex_oasis_mdfs_fast_v9.trading_session_grp = {}

-- Dissect Fields: Trading Session Grp
athex_oasis_mdfs_fast_v9.trading_session_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security Exchange: string, sent
  index, value = athex_oasis_mdfs_fast_v9.security_exchange_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Athex Market Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.athex_market_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Athex Board Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.athex_board_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Id: string, Constant
  index, value = athex_oasis_mdfs_fast_v9.trading_session_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Sub Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.trading_session_sub_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trad Ses Status: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.trad_ses_status.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Trading Session Grp
athex_oasis_mdfs_fast_v9.trading_session_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.trading_session_grp, buffer(offset, 0))
  local index = offset

  index = athex_oasis_mdfs_fast_v9.trading_session_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Athex Recovery Grp
athex_oasis_mdfs_fast_v9.athex_recovery_grp = {}

-- Dissect Fields: Athex Recovery Grp
athex_oasis_mdfs_fast_v9.athex_recovery_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Athex Recovery Seq Num: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.athex_recovery_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Athex Recovery Grp
athex_oasis_mdfs_fast_v9.athex_recovery_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_recovery_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = athex_oasis_mdfs_fast_v9.athex_recovery_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Trading Session Status_19 Message
athex_oasis_mdfs_fast_v9.trading_session_status_19 = {}

-- Dissect Fields: Trading Session Status_19 Message
athex_oasis_mdfs_fast_v9.trading_session_status_19.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Begin String: string, Constant
  index, value = athex_oasis_mdfs_fast_v9.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Body Length: int32, sent
  index, value = athex_oasis_mdfs_fast_v9.body_length.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Type: string, Constant
  index, value = athex_oasis_mdfs_fast_v9.msg_type_constant_h.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Target Comp Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.target_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: string, sent
  index, value = athex_oasis_mdfs_fast_v9.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.last_msg_seq_num_processed_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Athex Snapshot Indicator: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_snapshot_indicator.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Athex Fragment Indicator: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_fragment_indicator.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- No Athex Recovery Seq Nums: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.no_athex_recovery_seq_nums.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Athex Recovery Grp: No Athex Recovery Seq Nums entries
  local count = value or 0
  for athex_recovery_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.athex_recovery_grp.dissect(buffer, index, packet, parent, presence_map, base, state, athex_recovery_grp_index)
  end

  -- Appl Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.appl_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Seq Num: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.appl_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Grp: group, optional
  if presence_map[base + 4] then
    index = athex_oasis_mdfs_fast_v9.trading_session_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Athex System Status: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_system_status.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Athex Auction Type: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_auction_type.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Transact Time: string, sent
  index, value = athex_oasis_mdfs_fast_v9.transact_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Checksum: string, sent
  index, value = athex_oasis_mdfs_fast_v9.checksum.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Trading Session Status_19 Message
athex_oasis_mdfs_fast_v9.trading_session_status_19.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = athex_oasis_mdfs_fast_v9.trading_session_status_19.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Security Status Grp
athex_oasis_mdfs_fast_v9.security_status_grp = {}

-- Dissect Fields: Security Status Grp
athex_oasis_mdfs_fast_v9.security_status_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security Trading Status: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.security_trading_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Halt Reason: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.halt_reason.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  return index
end

-- Dissect: Security Status Grp
athex_oasis_mdfs_fast_v9.security_status_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.security_status_grp, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = athex_oasis_mdfs_fast_v9.security_status_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Athex Recovery Grp
athex_oasis_mdfs_fast_v9.athex_recovery_grp = {}

-- Dissect Fields: Athex Recovery Grp
athex_oasis_mdfs_fast_v9.athex_recovery_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Athex Recovery Seq Num: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.athex_recovery_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Athex Recovery Grp
athex_oasis_mdfs_fast_v9.athex_recovery_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_recovery_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = athex_oasis_mdfs_fast_v9.athex_recovery_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Security Status_18 Message
athex_oasis_mdfs_fast_v9.security_status_18 = {}

-- Dissect Fields: Security Status_18 Message
athex_oasis_mdfs_fast_v9.security_status_18.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Begin String: string, Constant
  index, value = athex_oasis_mdfs_fast_v9.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Body Length: int32, sent
  index, value = athex_oasis_mdfs_fast_v9.body_length.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Type: string, Constant
  index, value = athex_oasis_mdfs_fast_v9.msg_type_constant_f.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Target Comp Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.target_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: string, sent
  index, value = athex_oasis_mdfs_fast_v9.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.last_msg_seq_num_processed_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Athex Snapshot Indicator: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_snapshot_indicator.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Athex Fragment Indicator: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_fragment_indicator.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- No Athex Recovery Seq Nums: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.no_athex_recovery_seq_nums.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Athex Recovery Grp: No Athex Recovery Seq Nums entries
  local count = value or 0
  for athex_recovery_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.athex_recovery_grp.dissect(buffer, index, packet, parent, presence_map, base, state, athex_recovery_grp_index)
  end

  -- Appl Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.appl_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Seq Num: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.appl_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, sent
  index, value = athex_oasis_mdfs_fast_v9.symbol_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Athex Security Category: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.athex_security_category_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Type: string, sent
  index, value = athex_oasis_mdfs_fast_v9.security_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, sent
  index, value = athex_oasis_mdfs_fast_v9.security_exchange_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Athex Market Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.athex_market_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Sub Id: string, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.trading_session_sub_id_default.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Security Status Grp: group, optional
  if presence_map[base + 5] then
    index = athex_oasis_mdfs_fast_v9.security_status_grp.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Athex Auction Type: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.athex_auction_type.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Transact Time: string, sent
  index, value = athex_oasis_mdfs_fast_v9.transact_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Checksum: string, sent
  index, value = athex_oasis_mdfs_fast_v9.checksum.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Security Status_18 Message
athex_oasis_mdfs_fast_v9.security_status_18.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = athex_oasis_mdfs_fast_v9.security_status_18.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Athex Recovery Grp
athex_oasis_mdfs_fast_v9.athex_recovery_grp = {}

-- Dissect Fields: Athex Recovery Grp
athex_oasis_mdfs_fast_v9.athex_recovery_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Athex Recovery Seq Num: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.athex_recovery_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Athex Recovery Grp
athex_oasis_mdfs_fast_v9.athex_recovery_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_athex_oasis_mdfs_fast_v9.fields.athex_recovery_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = athex_oasis_mdfs_fast_v9.athex_recovery_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Heartbeat_17 Message
athex_oasis_mdfs_fast_v9.heartbeat_17 = {}

-- Dissect Fields: Heartbeat_17 Message
athex_oasis_mdfs_fast_v9.heartbeat_17.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Begin String: string, Constant
  index, value = athex_oasis_mdfs_fast_v9.begin_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Body Length: int32, sent
  index, value = athex_oasis_mdfs_fast_v9.body_length.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Type: string, Constant
  index, value = athex_oasis_mdfs_fast_v9.msg_type_constant_0.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Target Comp Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.target_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: string, sent
  index, value = athex_oasis_mdfs_fast_v9.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.last_msg_seq_num_processed_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Athex Recovery Seq Nums: uInt32, Default, optional
  index, value = athex_oasis_mdfs_fast_v9.no_athex_recovery_seq_nums.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Athex Recovery Grp: No Athex Recovery Seq Nums entries
  local count = value or 0
  for athex_recovery_grp_index = 1, count do
    index = athex_oasis_mdfs_fast_v9.athex_recovery_grp.dissect(buffer, index, packet, parent, presence_map, base, state, athex_recovery_grp_index)
  end

  -- Appl Id: string, sent
  index, value = athex_oasis_mdfs_fast_v9.appl_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Seq Num: uInt32, sent
  index, value = athex_oasis_mdfs_fast_v9.appl_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Checksum: string, sent
  index, value = athex_oasis_mdfs_fast_v9.checksum.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Heartbeat_17 Message
athex_oasis_mdfs_fast_v9.heartbeat_17.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = athex_oasis_mdfs_fast_v9.heartbeat_17.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Athex Oasis Mdfs Fast 9 Message Dispatch
athex_oasis_mdfs_fast_v9.messages = {
  [17] = athex_oasis_mdfs_fast_v9.heartbeat_17.dissect,
  [18] = athex_oasis_mdfs_fast_v9.security_status_18.dissect,
  [19] = athex_oasis_mdfs_fast_v9.trading_session_status_19.dissect,
  [20] = athex_oasis_mdfs_fast_v9.news_20.dissect,
  [21] = athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_21.dissect,
  [22] = athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_22.dissect,
  [9] = athex_oasis_mdfs_fast_v9.heartbeat_9.dissect,
  [10] = athex_oasis_mdfs_fast_v9.security_status_10.dissect,
  [11] = athex_oasis_mdfs_fast_v9.trading_session_status_11.dissect,
  [12] = athex_oasis_mdfs_fast_v9.news_12.dissect,
  [15] = athex_oasis_mdfs_fast_v9.market_data_snapshot_full_refresh_15.dissect,
  [16] = athex_oasis_mdfs_fast_v9.market_data_incremental_refresh_16.dissect,
}

-- Athex Oasis Mdfs Fast 9 Message Nodes
athex_oasis_mdfs_fast_v9.message_fields = {
  [17] = omi_athex_oasis_mdfs_fast_v9.fields.heartbeat_17,
  [18] = omi_athex_oasis_mdfs_fast_v9.fields.security_status_18,
  [19] = omi_athex_oasis_mdfs_fast_v9.fields.trading_session_status_19,
  [20] = omi_athex_oasis_mdfs_fast_v9.fields.news_20,
  [21] = omi_athex_oasis_mdfs_fast_v9.fields.market_data_snapshot_full_refresh_21,
  [22] = omi_athex_oasis_mdfs_fast_v9.fields.market_data_incremental_refresh_22,
  [9] = omi_athex_oasis_mdfs_fast_v9.fields.heartbeat_9,
  [10] = omi_athex_oasis_mdfs_fast_v9.fields.security_status_10,
  [11] = omi_athex_oasis_mdfs_fast_v9.fields.trading_session_status_11,
  [12] = omi_athex_oasis_mdfs_fast_v9.fields.news_12,
  [15] = omi_athex_oasis_mdfs_fast_v9.fields.market_data_snapshot_full_refresh_15,
  [16] = omi_athex_oasis_mdfs_fast_v9.fields.market_data_incremental_refresh_16,
}

-- Athex Oasis Mdfs Fast 9 Template Names
athex_oasis_mdfs_fast_v9.template_id = {}

-- Display: Template Id
athex_oasis_mdfs_fast_v9.template_id.display = function(value)
  if value == 17 then
    return "Template Id: Heartbeat_17 (17)"
  end
  if value == 18 then
    return "Template Id: SecurityStatus_18 (18)"
  end
  if value == 19 then
    return "Template Id: TradingSessionStatus_19 (19)"
  end
  if value == 20 then
    return "Template Id: News_20 (20)"
  end
  if value == 21 then
    return "Template Id: MarketDataSnapshotFullRefresh_21 (21)"
  end
  if value == 22 then
    return "Template Id: MarketDataIncrementalRefresh_22 (22)"
  end
  if value == 9 then
    return "Template Id: Heartbeat_9 (9)"
  end
  if value == 10 then
    return "Template Id: SecurityStatus_10 (10)"
  end
  if value == 11 then
    return "Template Id: TradingSessionStatus_11 (11)"
  end
  if value == 12 then
    return "Template Id: News_12 (12)"
  end
  if value == 15 then
    return "Template Id: MarketDataSnapshotFullRefresh_15 (15)"
  end
  if value == 16 then
    return "Template Id: MarketDataIncrementalRefresh_16 (16)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Name: Template Id
athex_oasis_mdfs_fast_v9.template_id.name = function(value)
  if value == 17 then
    return "Heartbeat_17"
  end
  if value == 18 then
    return "SecurityStatus_18"
  end
  if value == 19 then
    return "TradingSessionStatus_19"
  end
  if value == 20 then
    return "News_20"
  end
  if value == 21 then
    return "MarketDataSnapshotFullRefresh_21"
  end
  if value == 22 then
    return "MarketDataIncrementalRefresh_22"
  end
  if value == 9 then
    return "Heartbeat_9"
  end
  if value == 10 then
    return "SecurityStatus_10"
  end
  if value == 11 then
    return "TradingSessionStatus_11"
  end
  if value == 12 then
    return "News_12"
  end
  if value == 15 then
    return "MarketDataSnapshotFullRefresh_15"
  end
  if value == 16 then
    return "MarketDataIncrementalRefresh_16"
  end

  return "Unknown"
end

-- Athex Oasis Mdfs Fast 9 Packet Dissector
omi_athex_oasis_mdfs_fast_v9.dissector = function(buffer, packet, parent)
  packet.cols.protocol = "Athex Oasis Mdfs Fast 9"
  local root = parent:add(omi_athex_oasis_mdfs_fast_v9, buffer(), "Athex Oasis Mdfs Fast 9")
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

    local message_field = athex_oasis_mdfs_fast_v9.message_fields[template_id]
    local message_tree = nil

    if message_field ~= nil then
      message_tree = root:add(message_field, buffer(start, 0))
    else
      message_tree = root:add(omi_athex_oasis_mdfs_fast_v9.fields.message, buffer(start, 0))
      message_tree:set_text(athex_oasis_mdfs_fast_v9.template_id.name(template_id))
    end

    -- the presence map and the template id are the message's own framing
    local header = message_tree:add(omi_athex_oasis_mdfs_fast_v9.fields.message_header, buffer(start, offset - start))
    add_presence_map(header, buffer(start, mapped - start), omi_athex_oasis_mdfs_fast_v9.fields.presence_map, omi_athex_oasis_mdfs_fast_v9.fields.presence_stop, omi_athex_oasis_mdfs_fast_v9.fields.presence_identified, omi_athex_oasis_mdfs_fast_v9.fields.presence_unused, athex_oasis_mdfs_fast_v9.presence_bits.named[template_id])
    header:add(omi_athex_oasis_mdfs_fast_v9.fields.template_id, buffer(identified, offset - identified), template_id, athex_oasis_mdfs_fast_v9.template_id.display(template_id))

    local message = athex_oasis_mdfs_fast_v9.messages[template_id]

    if message == nil then
      message_tree:add_expert_info(PI_UNDECODED, PI_WARN, "This dissector reads: 17 (Heartbeat_17), 18 (SecurityStatus_18), 19 (TradingSessionStatus_19), 20 (News_20), 21 (MarketDataSnapshotFullRefresh_21), 22 (MarketDataIncrementalRefresh_22), 9 (Heartbeat_9), 10 (SecurityStatus_10), 11 (TradingSessionStatus_11), 12 (News_12), 15 (MarketDataSnapshotFullRefresh_15), 16 (MarketDataIncrementalRefresh_16)")
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
omi_athex_oasis_mdfs_fast_v9.init = function()
  stream_states = {}
end

-- Register Athex Oasis Mdfs Fast 9 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_athex_oasis_mdfs_fast_v9)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Athens Exchange Group
--   Version: v9
--   Specification: OASIS MDFS - Specification v2.2.pdf
--   Specification: OASIS MDFS - Message Reference v2.2.pdf
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
