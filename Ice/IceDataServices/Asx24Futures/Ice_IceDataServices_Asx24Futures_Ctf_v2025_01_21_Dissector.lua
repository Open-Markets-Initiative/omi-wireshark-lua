-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Ice IceDataServices Asx24Futures Ctf 2025.01.21 Protocol
local omi_ice_icedataservices_asx24futures_ctf_v2025_01_21 = Proto("Omi.Ice.IceDataServices.Asx24Futures.Ctf.v2025.01.21", "Ice IceDataServices Asx24Futures Ctf 2025.01.21")

-- Protocol table
local ice_icedataservices_asx24futures_ctf_v2025_01_21 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Ice IceDataServices Asx24Futures Ctf 2025.01.21 Fields
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.frame_end = ProtoField.new("Frame End", "ice.icedataservices.asx24futures.ctf.v2025.01.21.frameend", ftypes.UINT8, nil, nil, nil, "Marks the end of the frame, 0x03 (2.2.6)")
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.frame_start = ProtoField.new("Frame Start", "ice.icedataservices.asx24futures.ctf.v2025.01.21.framestart", ftypes.UINT8, nil, nil, nil, "Marks the beginning of any frame, fixed at 0x04 (2.2.1)")
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.length = ProtoField.new("Length", "ice.icedataservices.asx24futures.ctf.v2025.01.21.length", ftypes.UINT32, nil, nil, nil, "Total number of bytes in the payload, excluding the header and framing characters (2.2.3)")
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.payload = ProtoField.new("Payload", "ice.icedataservices.asx24futures.ctf.v2025.01.21.payload", ftypes.BYTES, nil, nil, nil, "The token=value pairs: Param fields (token=value) separated by Delim fields (|), as many bytes as the Length states (2.2.4, 2.2.5)")
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.protocol_signature = ProtoField.new("Protocol Signature", "ice.icedataservices.asx24futures.ctf.v2025.01.21.protocolsignature", ftypes.UINT8, nil, nil, nil, "Indicates what processing rules apply to the payload; its current value is 0x20 (2.2.2)")

-- Ice IceDataServices Asx24Futures Ctf 2025.01.21 Framing
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ctf_frame = ProtoField.new("Packet", "ice.icedataservices.asx24futures.ctf.v2025.01.21.ctfframe", ftypes.STRING, nil, nil, nil, "A CTF frame: the framing characters around the frame header and one token=value payload")
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.frame_header = ProtoField.new("Packet Header", "ice.icedataservices.asx24futures.ctf.v2025.01.21.frameheader", ftypes.STRING, nil, nil, nil, "The Protocol Signature and Length fields, which together form the header of the frame (section 2)")

-----------------------------------------------------------------------
-- Declare Ctf Fields
-----------------------------------------------------------------------

-- Ice IceDataServices Asx24Futures Ctf 2025.01.21 Token Fields
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.action_date = ProtoField.new("ACTION.DATE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.actiondate", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.activity_date = ProtoField.new("ACTIVITY.DATE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.activitydate", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.activity_datetime = ProtoField.new("ACTIVITY.DATETIME", "ice.icedataservices.asx24futures.ctf.v2025.01.21.activitydatetime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ask_datetime = ProtoField.new("ASK.DATETIME", "ice.icedataservices.asx24futures.ctf.v2025.01.21.askdatetime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ask_indic_price = ProtoField.new("ASK.INDIC.PRICE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.askindicprice", ftypes.DOUBLE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ask_indic_size = ProtoField.new("ASK.INDIC.SIZE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.askindicsize", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ask_price = ProtoField.new("ASK.PRICE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.askprice", ftypes.DOUBLE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ask_size = ProtoField.new("ASK.SIZE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.asksize", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.auction_date = ProtoField.new("AUCTION.DATE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.auctiondate", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.auction_price = ProtoField.new("AUCTION.PRICE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.auctionprice", ftypes.DOUBLE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.auction_vol = ProtoField.new("AUCTION.VOL", "ice.icedataservices.asx24futures.ctf.v2025.01.21.auctionvol", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.bid_datetime = ProtoField.new("BID.DATETIME", "ice.icedataservices.asx24futures.ctf.v2025.01.21.biddatetime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.bid_indic_price = ProtoField.new("BID.INDIC.PRICE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.bidindicprice", ftypes.DOUBLE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.bid_indic_size = ProtoField.new("BID.INDIC.SIZE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.bidindicsize", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.bid_price = ProtoField.new("BID.PRICE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.bidprice", ftypes.DOUBLE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.bid_size = ProtoField.new("BID.SIZE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.bidsize", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.block_lot_size = ProtoField.new("BLOCK.LOT.SIZE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.blocklotsize", ftypes.DOUBLE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.bloomberg_global_id = ProtoField.new("BLOOMBERG.GLOBAL_ID", "ice.icedataservices.asx24futures.ctf.v2025.01.21.bloombergglobalid", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.bloomberg_global_id_comp = ProtoField.new("BLOOMBERG.GLOBAL_ID.COMP", "ice.icedataservices.asx24futures.ctf.v2025.01.21.bloombergglobalidcomp", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.buyer_combination_trade_id = ProtoField.new("BUYER.COMBINATION.TRADE.ID", "ice.icedataservices.asx24futures.ctf.v2025.01.21.buyercombinationtradeid", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.buyer_order_id = ProtoField.new("BUYER.ORDER.ID", "ice.icedataservices.asx24futures.ctf.v2025.01.21.buyerorderid", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.buyer_side = ProtoField.new("BUYER.SIDE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.buyerside", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.buyer_tradable_instr_id = ProtoField.new("BUYER.TRADABLE.INSTR.ID", "ice.icedataservices.asx24futures.ctf.v2025.01.21.buyertradableinstrid", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.cancel_trade_seq = ProtoField.new("CANCEL.TRADE.SEQ", "ice.icedataservices.asx24futures.ctf.v2025.01.21.canceltradeseq", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.cdd_version = ProtoField.new("CDD.VERSION", "ice.icedataservices.asx24futures.ctf.v2025.01.21.cddversion", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.chg = ProtoField.new("CHG", "ice.icedataservices.asx24futures.ctf.v2025.01.21.chg", ftypes.DOUBLE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.client_port = ProtoField.new("CLIENT.PORT", "ice.icedataservices.asx24futures.ctf.v2025.01.21.clientport", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.combination_trade_id = ProtoField.new("COMBINATION.TRADE.ID", "ice.icedataservices.asx24futures.ctf.v2025.01.21.combinationtradeid", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.conflate_indicator = ProtoField.new("CONFLATE.INDICATOR", "ice.icedataservices.asx24futures.ctf.v2025.01.21.conflateindicator", ftypes.BOOLEAN)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.conflation = ProtoField.new("CONFLATION", "ice.icedataservices.asx24futures.ctf.v2025.01.21.conflation", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.conflation_interval = ProtoField.new("CONFLATION.INTERVAL", "ice.icedataservices.asx24futures.ctf.v2025.01.21.conflationinterval", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.control_msg_type = ProtoField.new("CONTROL.MSG.TYPE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.controlmsgtype", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.counter_party_id_string = ProtoField.new("COUNTER.PARTY.ID.STRING", "ice.icedataservices.asx24futures.ctf.v2025.01.21.counterpartyidstring", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.coupon_frequency = ProtoField.new("COUPON.FREQUENCY", "ice.icedataservices.asx24futures.ctf.v2025.01.21.couponfrequency", ftypes.DOUBLE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.coupon_rate = ProtoField.new("COUPON.RATE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.couponrate", ftypes.DOUBLE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.csp_ddf_bate = ProtoField.new("CSP.DDF_BATE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.cspddfbate", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.csp_news = ProtoField.new("CSP.NEWS", "ice.icedataservices.asx24futures.ctf.v2025.01.21.cspnews", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.csp_output_state = ProtoField.new("CSP.OUTPUT_STATE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.cspoutputstate", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.csp_output_tokens = ProtoField.new("CSP.OUTPUT_TOKENS", "ice.icedataservices.asx24futures.ctf.v2025.01.21.cspoutputtokens", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.csp_version = ProtoField.new("CSP.VERSION", "ice.icedataservices.asx24futures.ctf.v2025.01.21.cspversion", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ctf_compressed = ProtoField.new("CTF.COMPRESSED", "ice.icedataservices.asx24futures.ctf.v2025.01.21.ctfcompressed", ftypes.BOOLEAN)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ctf_enum_desc = ProtoField.new("CTF.ENUM.DESC", "ice.icedataservices.asx24futures.ctf.v2025.01.21.ctfenumdesc", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ctf_enum_value = ProtoField.new("CTF.ENUM.VALUE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.ctfenumvalue", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ctf_token_name = ProtoField.new("CTF.TOKEN.NAME", "ice.icedataservices.asx24futures.ctf.v2025.01.21.ctftokenname", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ctf_token_num = ProtoField.new("CTF.TOKEN.NUM", "ice.icedataservices.asx24futures.ctf.v2025.01.21.ctftokennum", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ctf_token_size = ProtoField.new("CTF.TOKEN.SIZE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.ctftokensize", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ctf_token_store = ProtoField.new("CTF.TOKEN.STORE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.ctftokenstore", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ctf_token_type = ProtoField.new("CTF.TOKEN.TYPE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.ctftokentype", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.currency_string = ProtoField.new("CURRENCY.STRING", "ice.icedataservices.asx24futures.ctf.v2025.01.21.currencystring", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.current_datetime = ProtoField.new("CURRENT.DATETIME", "ice.icedataservices.asx24futures.ctf.v2025.01.21.currentdatetime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.current_price = ProtoField.new("CURRENT.PRICE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.currentprice", ftypes.DOUBLE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.cusip = ProtoField.new("CUSIP", "ice.icedataservices.asx24futures.ctf.v2025.01.21.cusip", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.customer_number = ProtoField.new("CUSTOMER.NUMBER", "ice.icedataservices.asx24futures.ctf.v2025.01.21.customernumber", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.delay_mins = ProtoField.new("DELAY.MINS", "ice.icedataservices.asx24futures.ctf.v2025.01.21.delaymins", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.delta = ProtoField.new("DELTA", "ice.icedataservices.asx24futures.ctf.v2025.01.21.delta", ftypes.DOUBLE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.display_precision = ProtoField.new("DISPLAY.PRECISION", "ice.icedataservices.asx24futures.ctf.v2025.01.21.displayprecision", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.dynamic_lower_lmt = ProtoField.new("DYNAMIC.LOWER.LMT", "ice.icedataservices.asx24futures.ctf.v2025.01.21.dynamiclowerlmt", ftypes.DOUBLE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.dynamic_ref_price = ProtoField.new("DYNAMIC.REF.PRICE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.dynamicrefprice", ftypes.DOUBLE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.dynamic_upper_lmt = ProtoField.new("DYNAMIC.UPPER.LMT", "ice.icedataservices.asx24futures.ctf.v2025.01.21.dynamicupperlmt", ftypes.DOUBLE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.enum_contract_units = ProtoField.new("ENUM.CONTRACT.UNITS", "ice.icedataservices.asx24futures.ctf.v2025.01.21.enumcontractunits", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.enum_currency = ProtoField.new("ENUM.CURRENCY", "ice.icedataservices.asx24futures.ctf.v2025.01.21.enumcurrency", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.enum_instr_type = ProtoField.new("ENUM.INSTR.TYPE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.enuminstrtype", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.enum_query_status = ProtoField.new("ENUM.QUERY.STATUS", "ice.icedataservices.asx24futures.ctf.v2025.01.21.enumquerystatus", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.enum_src_id = ProtoField.new("ENUM.SRC.ID", "ice.icedataservices.asx24futures.ctf.v2025.01.21.enumsrcid", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.enum_src_underlying_id = ProtoField.new("ENUM.SRC.UNDERLYING.ID", "ice.icedataservices.asx24futures.ctf.v2025.01.21.enumsrcunderlyingid", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.eod_view_close = ProtoField.new("EOD.VIEW.CLOSE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.eodviewclose", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.eod_view_open = ProtoField.new("EOD.VIEW.OPEN", "ice.icedataservices.asx24futures.ctf.v2025.01.21.eodviewopen", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.etr_price = ProtoField.new("ETR.PRICE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.etrprice", ftypes.DOUBLE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.exch_message_timestamp = ProtoField.new("EXCH.MESSAGE.TIMESTAMP", "ice.icedataservices.asx24futures.ctf.v2025.01.21.exchmessagetimestamp", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.exch_month_code = ProtoField.new("EXCH.MONTH.CODE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.exchmonthcode", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.exch_product_root = ProtoField.new("EXCH.PRODUCT.ROOT", "ice.icedataservices.asx24futures.ctf.v2025.01.21.exchproductroot", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.exch_year_code = ProtoField.new("EXCH.YEAR.CODE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.exchyearcode", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.expiration_date = ProtoField.new("EXPIRATION.DATE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.expirationdate", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.force_login = ProtoField.new("FORCE.LOGIN", "ice.icedataservices.asx24futures.ctf.v2025.01.21.forcelogin", ftypes.BOOLEAN)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.host_server_ip = ProtoField.new("HOST.SERVER.IP", "ice.icedataservices.asx24futures.ctf.v2025.01.21.hostserverip", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.implied_ask_size = ProtoField.new("IMPLIED.ASK.SIZE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.impliedasksize", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.implied_bid_siz = ProtoField.new("IMPLIED.BID.SIZ", "ice.icedataservices.asx24futures.ctf.v2025.01.21.impliedbidsiz", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.implied_volatility = ProtoField.new("IMPLIED.VOLATILITY", "ice.icedataservices.asx24futures.ctf.v2025.01.21.impliedvolatility", ftypes.DOUBLE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.instr_name = ProtoField.new("INSTR_NAME", "ice.icedataservices.asx24futures.ctf.v2025.01.21.instrname", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.instr_name2 = ProtoField.new("INSTR_NAME2", "ice.icedataservices.asx24futures.ctf.v2025.01.21.instrname2", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.instr_status = ProtoField.new("INSTR.STATUS", "ice.icedataservices.asx24futures.ctf.v2025.01.21.instrstatus", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.isin = ProtoField.new("ISIN", "ice.icedataservices.asx24futures.ctf.v2025.01.21.isin", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.last_trading_date = ProtoField.new("LAST.TRADING.DATE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.lasttradingdate", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.limit_high = ProtoField.new("LIMIT.HIGH", "ice.icedataservices.asx24futures.ctf.v2025.01.21.limithigh", ftypes.DOUBLE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.limit_low = ProtoField.new("LIMIT.LOW", "ice.icedataservices.asx24futures.ctf.v2025.01.21.limitlow", ftypes.DOUBLE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.local_code = ProtoField.new("LOCAL.CODE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.localcode", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.market_phase = ProtoField.new("MARKET.PHASE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.marketphase", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.mm_id = ProtoField.new("MM.ID", "ice.icedataservices.asx24futures.ctf.v2025.01.21.mmid", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.news_filter_code = ProtoField.new("NEWS.FILTER.CODE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.newsfiltercode", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.official_trade_count = ProtoField.new("OFFICIAL.TRADE.COUNT", "ice.icedataservices.asx24futures.ctf.v2025.01.21.officialtradecount", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.open_int = ProtoField.new("OPEN_INT", "ice.icedataservices.asx24futures.ctf.v2025.01.21.openint", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.open_int_date = ProtoField.new("OPEN.INT.DATE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.openintdate", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.opposite_order_id = ProtoField.new("OPPOSITE.ORDER.ID", "ice.icedataservices.asx24futures.ctf.v2025.01.21.oppositeorderid", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.opposite_order_side = ProtoField.new("OPPOSITE.ORDER. SIDE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.oppositeorderside", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.opposite_tradable_instr_id = ProtoField.new("OPPOSITE.TRADABLE.INSTR.ID", "ice.icedataservices.asx24futures.ctf.v2025.01.21.oppositetradableinstrid", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.option_active_ind = ProtoField.new("OPTION.ACTIVE.IND", "ice.icedataservices.asx24futures.ctf.v2025.01.21.optionactiveind", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.pct_chg = ProtoField.new("PCT.CHG", "ice.icedataservices.asx24futures.ctf.v2025.01.21.pctchg", ftypes.DOUBLE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.permission = ProtoField.new("PERMISSION", "ice.icedataservices.asx24futures.ctf.v2025.01.21.permission", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.pq_ask_price = ProtoField.new("PQ.ASK.PRICE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.pqaskprice", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.pq_auction_price = ProtoField.new("PQ.AUCTION.PRICE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.pqauctionprice", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.pq_bid_price = ProtoField.new("PQ.BID.PRICE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.pqbidprice", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.pq_price_method = ProtoField.new("PQ.PRICE.METHOD", "ice.icedataservices.asx24futures.ctf.v2025.01.21.pqpricemethod", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.pq_settle_price = ProtoField.new("PQ.SETTLE.PRICE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.pqsettleprice", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.prev_open_int = ProtoField.new("PREV_OPEN.INT", "ice.icedataservices.asx24futures.ctf.v2025.01.21.prevopenint", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.prev_trade_date = ProtoField.new("PREV.TRADE.DATE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.prevtradedate", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.price_denominator = ProtoField.new("PRICE.DENOMINATOR", "ice.icedataservices.asx24futures.ctf.v2025.01.21.pricedenominator", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.product_root = ProtoField.new("PRODUCT.ROOT", "ice.icedataservices.asx24futures.ctf.v2025.01.21.productroot", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_command = ProtoField.new("QUERY.COMMAND", "ice.icedataservices.asx24futures.ctf.v2025.01.21.querycommand", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_tag = ProtoField.new("QUERY.TAG", "ice.icedataservices.asx24futures.ctf.v2025.01.21.querytag", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.quote_cond_2 = ProtoField.new("QUOTE.COND_2", "ice.icedataservices.asx24futures.ctf.v2025.01.21.quotecond2", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.quote_date = ProtoField.new("QUOTE.DATE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.quotedate", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.quote_datetime = ProtoField.new("QUOTE.DATETIME", "ice.icedataservices.asx24futures.ctf.v2025.01.21.quotedatetime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.quote_official_time = ProtoField.new("QUOTE.OFFICIAL.TIME", "ice.icedataservices.asx24futures.ctf.v2025.01.21.quoteofficialtime", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.record_del = ProtoField.new("RECORD.DEL", "ice.icedataservices.asx24futures.ctf.v2025.01.21.recorddel", ftypes.BOOLEAN)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.record_precision = ProtoField.new("RECORD.PRECISION", "ice.icedataservices.asx24futures.ctf.v2025.01.21.recordprecision", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.record_reset = ProtoField.new("RECORD.RESET", "ice.icedataservices.asx24futures.ctf.v2025.01.21.recordreset", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.record_stale_ind = ProtoField.new("RECORD.STALE.IND", "ice.icedataservices.asx24futures.ctf.v2025.01.21.recordstaleind", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.refresh = ProtoField.new("REFRESH", "ice.icedataservices.asx24futures.ctf.v2025.01.21.refresh", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.residual_maturity = ProtoField.new("RESIDUAL.MATURITY", "ice.icedataservices.asx24futures.ctf.v2025.01.21.residualmaturity", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.retransmission_flag = ProtoField.new("RETRANSMISSION.FLAG", "ice.icedataservices.asx24futures.ctf.v2025.01.21.retransmissionflag", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.rfq_price = ProtoField.new("RFQ.PRICE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.rfqprice", ftypes.DOUBLE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.rfq_side = ProtoField.new("RFQ.SIDE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.rfqside", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.rfq_size = ProtoField.new("RFQ.SIZE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.rfqsize", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.sedol = ProtoField.new("SEDOL", "ice.icedataservices.asx24futures.ctf.v2025.01.21.sedol", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.seller_combination_trade_id = ProtoField.new("SELLER.COMBINATION.TRADE.ID", "ice.icedataservices.asx24futures.ctf.v2025.01.21.sellercombinationtradeid", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.seller_order_id = ProtoField.new("SELLER.ORDER.ID", "ice.icedataservices.asx24futures.ctf.v2025.01.21.sellerorderid", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.seller_side = ProtoField.new("SELLER.SIDE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.sellerside", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.seller_tradable_instr_id = ProtoField.new("SELLER.TRADABLE.INSTR.ID", "ice.icedataservices.asx24futures.ctf.v2025.01.21.sellertradableinstrid", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.settle_date = ProtoField.new("SETTLE.DATE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.settledate", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.settle_price = ProtoField.new("SETTLE.PRICE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.settleprice", ftypes.DOUBLE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.strike_min_tick = ProtoField.new("STRIKE.MIN.TICK", "ice.icedataservices.asx24futures.ctf.v2025.01.21.strikemintick", ftypes.DOUBLE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.symbol_bloomberg_ticker = ProtoField.new("SYMBOL.BLOOMBERG.TICKER", "ice.icedataservices.asx24futures.ctf.v2025.01.21.symbolbloombergticker", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.symbol_esignal_ticker = ProtoField.new("SYMBOL.ESIGNAL.TICKER", "ice.icedataservices.asx24futures.ctf.v2025.01.21.symbolesignalticker", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.symbol_exch_ticker = ProtoField.new("SYMBOL.EXCH.TICKER", "ice.icedataservices.asx24futures.ctf.v2025.01.21.symbolexchticker", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.symbol_ticker = ProtoField.new("SYMBOL.TICKER", "ice.icedataservices.asx24futures.ctf.v2025.01.21.symbolticker", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.symbol_ticker_alias = ProtoField.new("SYMBOL.TICKER.ALIAS", "ice.icedataservices.asx24futures.ctf.v2025.01.21.symboltickeralias", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.symbol_underlying_ticker = ProtoField.new("SYMBOL.UNDERLYING.TICKER", "ice.icedataservices.asx24futures.ctf.v2025.01.21.symbolunderlyingticker", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.tick_value = ProtoField.new("TICK.VALUE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.tickvalue", ftypes.DOUBLE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.token_del = ProtoField.new("TOKEN.DEL", "ice.icedataservices.asx24futures.ctf.v2025.01.21.tokendel", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.tradable_status = ProtoField.new("TRADABLE.STATUS", "ice.icedataservices.asx24futures.ctf.v2025.01.21.tradablestatus", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_block_count = ProtoField.new("TRADE.BLOCK.COUNT", "ice.icedataservices.asx24futures.ctf.v2025.01.21.tradeblockcount", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_block_vol = ProtoField.new("TRADE.BLOCK.VOL", "ice.icedataservices.asx24futures.ctf.v2025.01.21.tradeblockvol", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_cond_1 = ProtoField.new("TRADE.COND_1", "ice.icedataservices.asx24futures.ctf.v2025.01.21.tradecond1", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_cond_datetime = ProtoField.new("TRADE.COND.DATETIME", "ice.icedataservices.asx24futures.ctf.v2025.01.21.tradeconddatetime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_cond_official_date = ProtoField.new("TRADE.COND.OFFICIAL.DATE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.tradecondofficialdate", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_cond_official_time = ProtoField.new("TRADE.COND.OFFICIAL.TIME", "ice.icedataservices.asx24futures.ctf.v2025.01.21.tradecondofficialtime", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_cond_price = ProtoField.new("TRADE.COND.PRICE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.tradecondprice", ftypes.DOUBLE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_cond_size = ProtoField.new("TRADE.COND.SIZE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.tradecondsize", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_datetime = ProtoField.new("TRADE.DATETIME", "ice.icedataservices.asx24futures.ctf.v2025.01.21.tradedatetime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_high = ProtoField.new("TRADE.HIGH", "ice.icedataservices.asx24futures.ctf.v2025.01.21.tradehigh", ftypes.DOUBLE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_low = ProtoField.new("TRADE.LOW", "ice.icedataservices.asx24futures.ctf.v2025.01.21.tradelow", ftypes.DOUBLE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_official_date = ProtoField.new("TRADE.OFFICIAL.DATE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.tradeofficialdate", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_official_time = ProtoField.new("TRADE.OFFICIAL.TIME", "ice.icedataservices.asx24futures.ctf.v2025.01.21.tradeofficialtime", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_open = ProtoField.new("TRADE.OPEN", "ice.icedataservices.asx24futures.ctf.v2025.01.21.tradeopen", ftypes.DOUBLE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_price = ProtoField.new("TRADE.PRICE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.tradeprice", ftypes.DOUBLE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_size = ProtoField.new("TRADE.SIZE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.tradesize", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_tick = ProtoField.new("TRADE.TICK", "ice.icedataservices.asx24futures.ctf.v2025.01.21.tradetick", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_trend = ProtoField.new("TRADE.TREND", "ice.icedataservices.asx24futures.ctf.v2025.01.21.tradetrend", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_unique_id = ProtoField.new("TRADE.UNIQUE.ID", "ice.icedataservices.asx24futures.ctf.v2025.01.21.tradeuniqueid", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_vol = ProtoField.new("TRADE.VOL", "ice.icedataservices.asx24futures.ctf.v2025.01.21.tradevol", ftypes.INT64)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.user_name = ProtoField.new("USER_NAME", "ice.icedataservices.asx24futures.ctf.v2025.01.21.username", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.user_password = ProtoField.new("USER.PASSWORD", "ice.icedataservices.asx24futures.ctf.v2025.01.21.userpassword", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.vwap = ProtoField.new("VWAP", "ice.icedataservices.asx24futures.ctf.v2025.01.21.vwap", ftypes.DOUBLE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.yest_trade_close = ProtoField.new("YEST.TRADE.CLOSE", "ice.icedataservices.asx24futures.ctf.v2025.01.21.yesttradeclose", ftypes.DOUBLE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.yest_trade_vol = ProtoField.new("YEST.TRADE.VOL", "ice.icedataservices.asx24futures.ctf.v2025.01.21.yesttradevol", ftypes.INT64)

-- Ice IceDataServices Asx24Futures Ctf 2025.01.21 Message Fields
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.get_conflation_interval_message = ProtoField.new("Get Conflation Interval Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.getconflationintervalmessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.get_port_message = ProtoField.new("Get Port Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.getportmessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_administration_info_message = ProtoField.new("List Administration Info Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.listadministrationinfomessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_available_tokens_message = ProtoField.new("List Available Tokens Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.listavailabletokensmessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_enumeration_message = ProtoField.new("List Enumeration Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.listenumerationmessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_exchange_tokens_message = ProtoField.new("List Exchange Tokens Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.listexchangetokensmessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_extended_exchange_info_message = ProtoField.new("List Extended Exchange Info Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.listextendedexchangeinfomessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_internal_tokens_message = ProtoField.new("List Internal Tokens Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.listinternaltokensmessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_split_exchanges_message = ProtoField.new("List Split Exchanges Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.listsplitexchangesmessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_subscribed_exchanges_message = ProtoField.new("List Subscribed Exchanges Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.listsubscribedexchangesmessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_subscribed_news_message = ProtoField.new("List Subscribed News Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.listsubscribednewsmessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_subscribed_symbols_message = ProtoField.new("List Subscribed Symbols Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.listsubscribedsymbolsmessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_system_permission_message = ProtoField.new("List System Permission Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.listsystempermissionmessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_user_permission_message = ProtoField.new("List User Permission Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.listuserpermissionmessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_user_tokens_message = ProtoField.new("List User Tokens Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.listusertokensmessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.login_user_message = ProtoField.new("Login User Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.loginusermessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_depth_and_subscribe_message = ProtoField.new("Query Depth And Subscribe Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.querydepthandsubscribemessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_depth_message = ProtoField.new("Query Depth Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.querydepthmessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_snap_and_subscribe_message = ProtoField.new("Query Snap And Subscribe Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.querysnapandsubscribemessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_snap_message = ProtoField.new("Query Snap Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.querysnapmessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_subscribed_exchanges_message = ProtoField.new("Query Subscribed Exchanges Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.querysubscribedexchangesmessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_subscribed_symbols_message = ProtoField.new("Query Subscribed Symbols Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.querysubscribedsymbolsmessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_wild_card_message = ProtoField.new("Query Wild Card Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.querywildcardmessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_xref_message = ProtoField.new("Query Xref Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.queryxrefmessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.select_available_tokens_message = ProtoField.new("Select Available Tokens Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.selectavailabletokensmessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.select_output_message = ProtoField.new("Select Output Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.selectoutputmessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.select_user_filter_tokens_message = ProtoField.new("Select User Filter Tokens Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.selectuserfiltertokensmessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.select_user_tokens_message = ProtoField.new("Select User Tokens Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.selectusertokensmessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.set_conflation_interval_message = ProtoField.new("Set Conflation Interval Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.setconflationintervalmessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.subscribe_message = ProtoField.new("Subscribe Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.subscribemessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.unsubscribe_message = ProtoField.new("Unsubscribe Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.unsubscribemessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.update_message = ProtoField.new("Update Message", "ice.icedataservices.asx24futures.ctf.v2025.01.21.updatemessage", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.get_conflation_interval_response = ProtoField.new("Get Conflation Interval Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.getconflationintervalresponse", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.get_port_response = ProtoField.new("Get Port Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.getportresponse", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_administration_info_response = ProtoField.new("List Administration Info Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.listadministrationinforesponse", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_available_tokens_response = ProtoField.new("List Available Tokens Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.listavailabletokensresponse", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_enumeration_response = ProtoField.new("List Enumeration Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.listenumerationresponse", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_exchange_tokens_response = ProtoField.new("List Exchange Tokens Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.listexchangetokensresponse", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_extended_exchange_info_response = ProtoField.new("List Extended Exchange Info Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.listextendedexchangeinforesponse", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_internal_tokens_response = ProtoField.new("List Internal Tokens Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.listinternaltokensresponse", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_split_exchanges_response = ProtoField.new("List Split Exchanges Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.listsplitexchangesresponse", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_subscribed_exchanges_response = ProtoField.new("List Subscribed Exchanges Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.listsubscribedexchangesresponse", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_subscribed_news_response = ProtoField.new("List Subscribed News Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.listsubscribednewsresponse", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_subscribed_symbols_response = ProtoField.new("List Subscribed Symbols Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.listsubscribedsymbolsresponse", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_system_permission_response = ProtoField.new("List System Permission Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.listsystempermissionresponse", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_user_permission_response = ProtoField.new("List User Permission Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.listuserpermissionresponse", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_user_tokens_response = ProtoField.new("List User Tokens Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.listusertokensresponse", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.login_user_response = ProtoField.new("Login User Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.loginuserresponse", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_depth_and_subscribe_response = ProtoField.new("Query Depth And Subscribe Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.querydepthandsubscriberesponse", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_depth_response = ProtoField.new("Query Depth Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.querydepthresponse", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_snap_and_subscribe_response = ProtoField.new("Query Snap And Subscribe Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.querysnapandsubscriberesponse", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_snap_response = ProtoField.new("Query Snap Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.querysnapresponse", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_subscribed_exchanges_response = ProtoField.new("Query Subscribed Exchanges Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.querysubscribedexchangesresponse", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_subscribed_symbols_response = ProtoField.new("Query Subscribed Symbols Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.querysubscribedsymbolsresponse", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_wild_card_response = ProtoField.new("Query Wild Card Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.querywildcardresponse", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_xref_response = ProtoField.new("Query Xref Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.queryxrefresponse", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.select_available_tokens_response = ProtoField.new("Select Available Tokens Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.selectavailabletokensresponse", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.select_output_response = ProtoField.new("Select Output Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.selectoutputresponse", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.select_user_filter_tokens_response = ProtoField.new("Select User Filter Tokens Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.selectuserfiltertokensresponse", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.select_user_tokens_response = ProtoField.new("Select User Tokens Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.selectusertokensresponse", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.set_conflation_interval_response = ProtoField.new("Set Conflation Interval Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.setconflationintervalresponse", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.subscribe_response = ProtoField.new("Subscribe Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.subscriberesponse", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.unsubscribe_response = ProtoField.new("Unsubscribe Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.unsubscriberesponse", ftypes.STRING)

-- Ice IceDataServices Asx24Futures Ctf 2025.01.21 Payload Fields
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ctf_raw = ProtoField.new("Token", "ice.icedataservices.asx24futures.ctf.v2025.01.21.ctfraw", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ctf_null = ProtoField.new("Null", "ice.icedataservices.asx24futures.ctf.v2025.01.21.ctfnull", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ctf_response = ProtoField.new("Response", "ice.icedataservices.asx24futures.ctf.v2025.01.21.ctfresponse", ftypes.STRING)

-- Ice IceDataServices Asx24Futures Ctf 2025.01.21 Expert Info
ice_icedataservices_asx24futures_ctf_v2025_01_21.experts = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.unknown_command = ProtoExpert.new("ice.icedataservices.asx24futures.ctf.v2025.01.21.unknowncommand", "Unknown ctf command", expert.group.UNDECODED, expert.severity.WARN)
ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.unknown_token = ProtoExpert.new("ice.icedataservices.asx24futures.ctf.v2025.01.21.unknowntoken", "Unknown ctf token", expert.group.UNDECODED, expert.severity.NOTE)
ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.unknown_value = ProtoExpert.new("ice.icedataservices.asx24futures.ctf.v2025.01.21.unknownvalue", "Ctf value the model names no meaning for", expert.group.UNDECODED, expert.severity.NOTE)
ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.unexpected_token = ProtoExpert.new("ice.icedataservices.asx24futures.ctf.v2025.01.21.unexpectedtoken", "Ctf token the command does not carry", expert.group.PROTOCOL, expert.severity.NOTE)
ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.missing_token = ProtoExpert.new("ice.icedataservices.asx24futures.ctf.v2025.01.21.missingtoken", "Mandatory ctf token missing", expert.group.MALFORMED, expert.severity.WARN)
ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.invalid_value = ProtoExpert.new("ice.icedataservices.asx24futures.ctf.v2025.01.21.invalidvalue", "Ctf value does not read as its type", expert.group.MALFORMED, expert.severity.WARN)
ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.malformed_param = ProtoExpert.new("ice.icedataservices.asx24futures.ctf.v2025.01.21.malformedparam", "Ctf param is not a token number, separator and value", expert.group.MALFORMED, expert.severity.WARN)
ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.unanswered = ProtoExpert.new("ice.icedataservices.asx24futures.ctf.v2025.01.21.unanswered", "Ctf response to no command seen in this conversation", expert.group.SEQUENCE, expert.severity.NOTE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.experts = { ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.unknown_command, ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.unknown_token, ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.unknown_value, ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.unexpected_token, ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.missing_token, ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.invalid_value, ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.malformed_param, ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.unanswered }

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Ice IceDataServices Asx24Futures Ctf 2025.01.21 Element Dissection Options
show.structs = true
show.headers = true

-- Register Ice IceDataServices Asx24Futures Ctf 2025.01.21 Show Options
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

-- Handle changed preferences
function omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.prefs_changed()

  -- Check if preferences have changed
  if show.headers ~= omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.prefs.show_headers then
    show.headers = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.prefs.show_headers
  end
  if show.structs ~= omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.prefs.show_structs then
    show.structs = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Ctf Functions
-----------------------------------------------------------------------

-- Pairs of a text from start (one based): offset (zero based) and length of each delimited pair, and its name and the offset and size of its value either side of the first separator
ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_pairs = function(text, start, delimiter, separator)
  local found = {}
  while start <= #text do
    local stop = text:find(delimiter, start, true)
    if stop == nil then
      stop = #text + 1
    end
    if stop > start then
      local pair = { offset = start - 1, length = stop - start }
      local at = text:find(separator, start, true)
      if at ~= nil and at < stop then
        pair.name = text:sub(start, at - 1)
        pair.value = at - 1 + #separator
        pair.size = stop - at - #separator
      end
      found[#found + 1] = pair
    end
    start = stop + #delimiter
  end
  return found
end

-- Params of a ctf payload: its "|" delimited pairs, "=" between token and value, at the payload's offset; a token is a decimal number
ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_params = function(buffer, offset, size)
  local params = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_pairs(buffer(offset, size):raw(), 1, "|", "=")
  for _, param in ipairs(params) do
    param.offset = offset + param.offset
    if param.name ~= nil then
      param.value = offset + param.value
      if param.name:match("^%d+$") then
        param.token = param.name
      end
    end
  end
  return params
end

-- Escape sequences a payload writes: the sequence, the character it stands for, and where it is written as itself
ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_escapes = {
  { sequence = "&#00;", character = "\000" },
  { sequence = "&#01;", character = "\001" },
  { sequence = "&#02;", character = "\002" },
  { sequence = "&#03;", character = "\003" },
  { sequence = "&#04;", character = "\004" },
  { sequence = "&#05;", character = "\005" },
  { sequence = "&#06;", character = "\006" },
  { sequence = "&#07;", character = "\007" },
  { sequence = "&#08;", character = "\008" },
  { sequence = "&#09;", character = "\009" },
  { sequence = "&#10;", character = "\010" },
  { sequence = "&#11;", character = "\011" },
  { sequence = "&#12;", character = "\012" },
  { sequence = "&#13;", character = "\013" },
  { sequence = "&#14;", character = "\014" },
  { sequence = "&#15;", character = "\015" },
  { sequence = "&#16;", character = "\016" },
  { sequence = "&#17;", character = "\017" },
  { sequence = "&#18;", character = "\018" },
  { sequence = "&#19;", character = "\019" },
  { sequence = "&#20;", character = "\020" },
  { sequence = "&#21;", character = "\021" },
  { sequence = "&#22;", character = "\022" },
  { sequence = "&#23;", character = "\023" },
  { sequence = "&#24;", character = "\024" },
  { sequence = "&#25;", character = "\025" },
  { sequence = "&#26;", character = "\026" },
  { sequence = "&#27;", character = "\027" },
  { sequence = "&#28;", character = "\028" },
  { sequence = "&#29;", character = "\029" },
  { sequence = "&#30;", character = "\030" },
  { sequence = "&#31;", character = "\031" },
  { sequence = "&#38;", character = "&", except = "Symbol" },
  { sequence = "&#60;", character = "<" },
  { sequence = "&#124;", character = "|" },
}

-- Text of a value with its escapes read back, but those written as themselves where the value is
ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_text = function(range, where)
  local text = range:raw()
  if not text:find("[%&]") then
    return text
  end
  local parts = {}
  local index = 1
  while index <= #text do
    local at = text:find("[%&]", index)
    if at == nil then
      parts[#parts + 1] = text:sub(index)
      break
    end
    parts[#parts + 1] = text:sub(index, at - 1)
    local escaped = nil
    for _, escape in ipairs(ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_escapes) do
      if (escape.except == nil or escape.except ~= where) and text:sub(at, at + #escape.sequence - 1) == escape.sequence then
        escaped = escape
        break
      end
    end
    if escaped == nil then
      parts[#parts + 1] = text:sub(at, at)
      index = at + 1
    else
      parts[#parts + 1] = escaped.character
      index = at + #escaped.sequence
    end
  end
  return table.concat(parts)
end

-- Text of the first param carrying a token, its escapes read back; nil when none does
ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_value = function(buffer, params, token, where)
  for _, param in ipairs(params) do
    if param.token == token then
      return ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_text(buffer(param.value, param.size), where)
    end
  end
  return nil
end

-- An instant from a count of units after the Unix epoch, digits the units take below a second: its NSTime and its nine digits below a second, read exactly; nil when the text is no count
ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_instant = function(text, digits)
  local whole, fraction = text:match("^(%d+)%.?(%d*)$")
  if whole == nil then
    return nil
  end
  local padded = string.rep("0", digits + 1 - #whole)..whole
  local below = (padded:sub(#padded - digits + 1)..fraction.."000000000"):sub(1, 9)
  return NSTime.new(tonumber(padded:sub(1, #padded - digits)), tonumber(below)), below
end

-- Read String: text, as sent
ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string = function(text)
  return text, text
end

-- Read Integer: a whole number from -9223372036854775808 to 9223372036854775807, read exactly into Int64
ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer = function(text)
  local sign, digits = text:match("^([+-]?)(%d+)$")
  if digits == nil then
    return nil
  end
  digits = digits:match("^0*(%d.*)$")
  local limit = "9223372036854775807"
  if sign == "-" then
    limit = "9223372036854775808"
  end
  if #digits > #limit or (#digits == #limit and digits > limit) then
    return nil
  end
  local value = Int64.new(0)
  for index = 1, #digits do
    local digit = digits:byte(index) - 48
    if sign == "-" then
      value = value * 10 - digit
    else
      value = value * 10 + digit
    end
  end
  return value, text
end

-- Read Float: a number with an optional point and exponent, shown as sent
ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float = function(text)
  local mantissa, exponent = text:match("^([+-]?[%d%.]+)([eE]?[+-]?%d*)$")
  if mantissa == nil or not (mantissa:match("^[+-]?%d+%.?%d*$") or mantissa:match("^[+-]?%.%d+$")) or (exponent ~= "" and not exponent:match("^[eE][+-]?%d+$")) then
    return nil
  end
  return tonumber(text), text
end

-- Read DateTime: Seconds after the Unix epoch, in UTC, shown as a date and time beside the count
ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_date_time = function(text)
  local time, below = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_instant(text, 0)
  -- os.date reads no later than the year 9999
  if time == nil or time.secs > 253402300799 then
    return nil
  end
  local shown = os.date("!%Y-%m-%d %H:%M:%S", time.secs)
  local decimals = below:gsub("0+$", "")
  if #decimals > 0 then
    shown = shown.."."..decimals
  end
  return time, shown.." UTC ("..text..")"
end

-- Read Bool: True (1) or False (0)
ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_bool = function(text)
  if text == "1" then
    return true, "True (1)"
  end
  if text == "0" then
    return false, "False (0)"
  end
  return nil
end

-- Reply codes a status carries, by value: ENUM.QUERY.STATUS (5001)
ice_icedataservices_asx24futures_ctf_v2025_01_21.replies = {
  ["-139"] = { name = "ERR_AUTH_TWICE_PROXY_110", shown = "ERR_AUTH_TWICE_PROXY_110" },
  ["-137"] = { name = "ERR_AUTH_LOGIN_PROXY_108", shown = "ERR_AUTH_LOGIN_PROXY_108" },
  ["-46"] = { name = "ERR_REQ_INVALID", shown = "ERR_REQ_INVALID" },
  ["-6"] = { name = "ERR_AUTH_LOGIN_COUNT", shown = "ERR_AUTH_LOGIN_COUNT" },
  ["-5"] = { name = "ERR_AUTH_LOGIN", shown = "ERR_AUTH_LOGIN" },
  ["0"] = { name = "", shown = "" },
  ["-33"] = { name = "ERR_PARAM_BOUNDARY", shown = "ERR_PARAM_BOUNDARY" },
  ["-24"] = { name = "ERR_EXIST_TOKEN", shown = "ERR_EXIST_TOKEN" },
  ["-165"] = { name = "REQ_ENUMSCRCID_PROXY_136", shown = "REQ_ENUMSCRCID_PROXY_136" },
  ["-36"] = { name = "ERR_PARAM_MISSING", shown = "ERR_PARAM_MISSING" },
  ["-18"] = { name = "ERR_AUTH_TOPIC_SUBSCRIBE", shown = "ERR_AUTH_TOPIC_SUBSCRIBE" },
  ["-12"] = { name = "ERR_AUTH_REQ", shown = "ERR_AUTH_REQ" },
  ["-61"] = { name = "ERR_TOKEN_COUNT", shown = "ERR_TOKEN_COUNT" },
  ["-14"] = { name = "ERR_AUTH_TOKEN", shown = "ERR_AUTH_TOKEN" },
  ["-182"] = { name = "ERR_NO_DATA_FOUND", shown = "ERR_NO_DATA_FOUND" },
  ["14"] = { name = "WARN_NO_DATA_FOUND", shown = "WARN_NO_DATA_FOUND" },
}

-- What a reply code names: the command's own report of it, else the model's name for it; nil for a code neither names
ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_status = function(errors, code)
  if errors ~= nil and errors[code] ~= nil then
    return errors[code]
  end
  return ice_icedataservices_asx24futures_ctf_v2025_01_21.replies[code]
end


-----------------------------------------------------------------------
-- Ctf Tokens
-----------------------------------------------------------------------

-- ACTION.DATE (1011): Integer
-- Action Date for identifying market actions like halt/resume/suspension, etc. (in YYYYMMDD format)
ice_icedataservices_asx24futures_ctf_v2025_01_21.action_date = { name = "ACTION.DATE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.action_date, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- ACTIVITY.DATE (15): DateTime
-- Last activity date (UTC: yyyymmdd)
ice_icedataservices_asx24futures_ctf_v2025_01_21.activity_date = { name = "ACTIVITY.DATE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.activity_date, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_date_time, nullable = true }

-- ACTIVITY.DATETIME (16): DateTime
-- Last activity time
ice_icedataservices_asx24futures_ctf_v2025_01_21.activity_datetime = { name = "ACTIVITY.DATETIME", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.activity_datetime, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_date_time, nullable = true }

-- ASK.DATETIME (110): DateTime
-- Date time token triggered via timestamp process based on CTF 10 or 11
ice_icedataservices_asx24futures_ctf_v2025_01_21.ask_datetime = { name = "ASK.DATETIME", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ask_datetime, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_date_time, nullable = true }

-- ASK.INDIC.PRICE (321): Float
-- Indicative ask price
ice_icedataservices_asx24futures_ctf_v2025_01_21.ask_indic_price = { name = "ASK.INDIC.PRICE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ask_indic_price, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float, nullable = true }

-- ASK.INDIC.SIZE (322): Integer
-- Indicative ask size
ice_icedataservices_asx24futures_ctf_v2025_01_21.ask_indic_size = { name = "ASK.INDIC.SIZE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ask_indic_size, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- ASK.PRICE (10): Float
-- Best ask price
ice_icedataservices_asx24futures_ctf_v2025_01_21.ask_price = { name = "ASK.PRICE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ask_price, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float, nullable = true }

-- ASK.SIZE (11): Integer
-- Best ask size
ice_icedataservices_asx24futures_ctf_v2025_01_21.ask_size = { name = "ASK.SIZE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ask_size, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- AUCTION.DATE (3289): Integer
-- Auction Date (yyyymmdd)
ice_icedataservices_asx24futures_ctf_v2025_01_21.auction_date = { name = "AUCTION.DATE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.auction_date, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- AUCTION.PRICE (624): Float
-- Auction Price
ice_icedataservices_asx24futures_ctf_v2025_01_21.auction_price = { name = "AUCTION.PRICE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.auction_price, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float, nullable = true }

-- AUCTION.VOL (645): Integer
-- Auction Volume
ice_icedataservices_asx24futures_ctf_v2025_01_21.auction_vol = { name = "AUCTION.VOL", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.auction_vol, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- BID.DATETIME (109): DateTime
-- Date time token triggered via timestamp process based on CTF 12 or 13
ice_icedataservices_asx24futures_ctf_v2025_01_21.bid_datetime = { name = "BID.DATETIME", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.bid_datetime, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_date_time, nullable = true }

-- BID.INDIC.PRICE (323): Float
-- Indicative bid price
ice_icedataservices_asx24futures_ctf_v2025_01_21.bid_indic_price = { name = "BID.INDIC.PRICE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.bid_indic_price, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float, nullable = true }

-- BID.INDIC.SIZE (324): Integer
-- Indicative bid size
ice_icedataservices_asx24futures_ctf_v2025_01_21.bid_indic_size = { name = "BID.INDIC.SIZE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.bid_indic_size, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- BID.PRICE (12): Float
-- Best bid price
ice_icedataservices_asx24futures_ctf_v2025_01_21.bid_price = { name = "BID.PRICE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.bid_price, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float, nullable = true }

-- BID.SIZE (13): Integer
-- Best bid size
ice_icedataservices_asx24futures_ctf_v2025_01_21.bid_size = { name = "BID.SIZE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.bid_size, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- BLOCK.LOT.SIZE (3706): Float
-- Block lot size.
ice_icedataservices_asx24futures_ctf_v2025_01_21.block_lot_size = { name = "BLOCK.LOT.SIZE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.block_lot_size, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float, nullable = true }

-- BLOOMBERG.GLOBAL_ID (3952): String
-- Bloomberg Global ID. *Bloomberg’s unique, unchanging alphanumeric identifier, assigned to instruments at the Price Source (Exchange) level. The Bloomberg Global ID does not typically change during a corporate actions event.
ice_icedataservices_asx24futures_ctf_v2025_01_21.bloomberg_global_id = { name = "BLOOMBERG.GLOBAL_ID", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.bloomberg_global_id, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- BLOOMBERG.GLOBAL_ID.COMP (3953): String
-- Bloomberg Global ID Composite. *Generally Index will not have Composite ID.
ice_icedataservices_asx24futures_ctf_v2025_01_21.bloomberg_global_id_comp = { name = "BLOOMBERG.GLOBAL_ID.COMP", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.bloomberg_global_id_comp, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- BUYER.COMBINATION.TRADE.ID (1800): Integer
-- A non-zero value indicates this trade is part of an execution cycle for a combination trade.
ice_icedataservices_asx24futures_ctf_v2025_01_21.buyer_combination_trade_id = { name = "BUYER.COMBINATION.TRADE.ID", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.buyer_combination_trade_id, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- BUYER.ORDER.ID (1799): Integer
-- Reference number of the buyer’s order. If zero, the order is aggressive, dark, or undisclosed
ice_icedataservices_asx24futures_ctf_v2025_01_21.buyer_order_id = { name = "BUYER.ORDER.ID", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.buyer_order_id, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- BUYER.SIDE (1798): Integer
-- Side of the buyer’s order (0=Buy side, 1=Sell side)
ice_icedataservices_asx24futures_ctf_v2025_01_21.buyer_side = { name = "BUYER.SIDE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.buyer_side, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- BUYER.TRADABLE.INSTR.ID (1797): Integer
-- Identifier of the buyer’s order book
ice_icedataservices_asx24futures_ctf_v2025_01_21.buyer_tradable_instr_id = { name = "BUYER.TRADABLE.INSTR.ID", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.buyer_tradable_instr_id, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- CANCEL.TRADE.SEQ (1229): Integer
-- Sequence Number of Cancelled Trade
ice_icedataservices_asx24futures_ctf_v2025_01_21.cancel_trade_seq = { name = "CANCEL.TRADE.SEQ", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.cancel_trade_seq, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- CDD.VERSION (5080): String
-- CDD version. No value is shown: read as text
ice_icedataservices_asx24futures_ctf_v2025_01_21.cdd_version = { name = "CDD.VERSION", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.cdd_version, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- CHG (361): Float
-- Net change
ice_icedataservices_asx24futures_ctf_v2025_01_21.chg = { name = "CHG", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.chg, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float, nullable = true }

-- CLIENT.PORT (13101): Integer
-- Port of the CSP that has the exchange and symbol (2.2.8; sample: 7023)
ice_icedataservices_asx24futures_ctf_v2025_01_21.client_port = { name = "CLIENT.PORT", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.client_port, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- COMBINATION.TRADE.ID (1785): Integer
-- Combination Trade ID; a non-zero value indicates this trade is part of a combination execution; a zero value is not significant
ice_icedataservices_asx24futures_ctf_v2025_01_21.combination_trade_id = { name = "COMBINATION.TRADE.ID", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.combination_trade_id, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- CONFLATE.INDICATOR (5201): Bool
-- Set to 1 at login to have each non-conflatable message marked with 5201=0 (1.2.8)
ice_icedataservices_asx24futures_ctf_v2025_01_21.conflate_indicator = { name = "CONFLATE.INDICATOR", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.conflate_indicator, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_bool, nullable = true }

-- CONFLATION (2035): Integer
-- Requests trade-safe conflated data on a subscription (1.2.8; samples: 1)
ice_icedataservices_asx24futures_ctf_v2025_01_21.conflation = { name = "CONFLATION", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.conflation, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- CONFLATION.INTERVAL (2029): Integer
-- Conflation interval of the connection in milliseconds, 1 to 60000; default 1000 (2.2.9, 2.2.10; sample: 10000)
ice_icedataservices_asx24futures_ctf_v2025_01_21.conflation_interval = { name = "CONFLATION.INTERVAL", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.conflation_interval, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- CONTROL.MSG.TYPE (856): CONTROL.MSG.TYPE
-- Type of control message from an exchange, e.g. Start of day, end of day. See Enumerated Values
ice_icedataservices_asx24futures_ctf_v2025_01_21.control_msg_type = { name = "CONTROL.MSG.TYPE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.control_msg_type, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }
ice_icedataservices_asx24futures_ctf_v2025_01_21.control_msg_type.names = {
  ["3"] = "New trade date is opening",
  ["10"] = "Trade date has ended",
  ["15"] = "Messages will start for this trade date",
  ["17"] = "System has paused, note applies to all trade dates",
  ["18"] = "System has resumed, note applies to all trade dates",
}

-- COUNTER.PARTY.ID.STRING (1791): String
-- Counter Party ID; if not provided, indicates an anonymous instrument. If provided, gives the participant ID of the aggressor party to the execution in a non-anonymous market
ice_icedataservices_asx24futures_ctf_v2025_01_21.counter_party_id_string = { name = "COUNTER.PARTY.ID.STRING", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.counter_party_id_string, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- COUPON.FREQUENCY (3741): Float
-- Coupon frequency for the instrument, specifies number of coupons per year.
ice_icedataservices_asx24futures_ctf_v2025_01_21.coupon_frequency = { name = "COUPON.FREQUENCY", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.coupon_frequency, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float, nullable = true }

-- COUPON.RATE (698): Float
-- Coupon Rate
ice_icedataservices_asx24futures_ctf_v2025_01_21.coupon_rate = { name = "COUPON.RATE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.coupon_rate, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float, nullable = true }

-- CSP.DDF_BATE (5013): String
-- DDF bate of an exchange's token (2.3.10; samples: f19, n)
ice_icedataservices_asx24futures_ctf_v2025_01_21.csp_ddf_bate = { name = "CSP.DDF_BATE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.csp_ddf_bate, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- CSP.NEWS (5005): String
-- Whether news messages are sent with market data: ON or OFF (2.3.5; samples: OFF)
ice_icedataservices_asx24futures_ctf_v2025_01_21.csp_news = { name = "CSP.NEWS", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.csp_news, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- CSP.OUTPUT_STATE (5018): String
-- Whether the CSP outputs data: ON or OFF (2.3.5; samples: ON)
ice_icedataservices_asx24futures_ctf_v2025_01_21.csp_output_state = { name = "CSP.OUTPUT_STATE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.csp_output_state, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- CSP.OUTPUT_TOKENS (5019): String
-- Token output mode: Standard, User or StandardAndUser (2.3.5, which prints it CSP.OUTPUT_TOKEN; samples: STANDARD)
ice_icedataservices_asx24futures_ctf_v2025_01_21.csp_output_tokens = { name = "CSP.OUTPUT_TOKENS", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.csp_output_tokens, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- CSP.VERSION (5008): String
-- CSP version (sample: V6.0.0alpha)
ice_icedataservices_asx24futures_ctf_v2025_01_21.csp_version = { name = "CSP.VERSION", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.csp_version, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- CTF.COMPRESSED (13265): Bool
-- Requests compressed (zlib) output: 1 compressed, 0 uncompressed (1.2.9)
ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_compressed = { name = "CTF.COMPRESSED", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ctf_compressed, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_bool, nullable = true }

-- CTF.ENUM.DESC (5033): String
-- Description of an enumerated value (1.2.1; samples: OPRA (Options Price Reporting Authority), British Pounds)
ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_enum_desc = { name = "CTF.ENUM.DESC", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ctf_enum_desc, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- CTF.ENUM.VALUE (5034): Integer
-- Numerical ID of an enumerated value (1.2.1; samples: 12, 14, 26)
ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_enum_value = { name = "CTF.ENUM.VALUE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ctf_enum_value, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- CTF.TOKEN.NAME (5010): String
-- Token name (samples: PERMISSION, ENUM.SRC.ID, SYMBOL.TICKER, PART.CODE)
ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_token_name = { name = "CTF.TOKEN.NAME", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ctf_token_name, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- CTF.TOKEN.NUM (5035): Integer
-- Token number (samples: 3, 4, 5, 7, 201)
ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_token_num = { name = "CTF.TOKEN.NUM", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ctf_token_num, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- CTF.TOKEN.SIZE (5011): Integer
-- Token maximum byte size (samples: 19, 20, 1)
ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_token_size = { name = "CTF.TOKEN.SIZE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ctf_token_size, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- CTF.TOKEN.STORE (5002): Integer
-- Whether the token can be queried from a data store (samples: 1, 20)
ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_token_store = { name = "CTF.TOKEN.STORE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ctf_token_store, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- CTF.TOKEN.TYPE (5012): String
-- Token data type (samples: INTEGER, STRING)
ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_token_type = { name = "CTF.TOKEN.TYPE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ctf_token_type, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- CURRENCY.STRING (435): String
-- Currency as a String Value
ice_icedataservices_asx24futures_ctf_v2025_01_21.currency_string = { name = "CURRENCY.STRING", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.currency_string, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- CURRENT.DATETIME (437): DateTime
-- Current UTC time (samples: 437=1066232929.932)
ice_icedataservices_asx24futures_ctf_v2025_01_21.current_datetime = { name = "CURRENT.DATETIME", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.current_datetime, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_date_time, nullable = true }

-- CURRENT.PRICE (14): Float
-- Current price
ice_icedataservices_asx24futures_ctf_v2025_01_21.current_price = { name = "CURRENT.PRICE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.current_price, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float, nullable = true }

-- CUSIP (3123): String
-- CUSIP number, an alternate index (2.3.1; sample: 459200101)
ice_icedataservices_asx24futures_ctf_v2025_01_21.cusip = { name = "CUSIP", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.cusip, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- CUSTOMER.NUMBER (13349): String
-- Customer number. No value is shown: read as text
ice_icedataservices_asx24futures_ctf_v2025_01_21.customer_number = { name = "CUSTOMER.NUMBER", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.customer_number, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- DELAY.MINS (269): Integer
-- Delay of the data in minutes
ice_icedataservices_asx24futures_ctf_v2025_01_21.delay_mins = { name = "DELAY.MINS", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.delay_mins, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- DELTA (3327): Float
-- Delta of the option; expected change in an option's price for a 1 point price increase in the underlying symbol; not valid for futures.
ice_icedataservices_asx24futures_ctf_v2025_01_21.delta = { name = "DELTA", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.delta, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float, nullable = true }

-- DISPLAY.PRECISION (280): String
-- Display decimal precision gives the place holder value that should be displayed.
ice_icedataservices_asx24futures_ctf_v2025_01_21.display_precision = { name = "DISPLAY.PRECISION", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.display_precision, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- DYNAMIC.LOWER.LMT (1419): Float
-- Dynamic Lower Price Limit
ice_icedataservices_asx24futures_ctf_v2025_01_21.dynamic_lower_lmt = { name = "DYNAMIC.LOWER.LMT", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.dynamic_lower_lmt, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float, nullable = true }

-- DYNAMIC.REF.PRICE (365): Float
-- Dynamic reference price, i.e. the price used as a basis for setting the dynamic upper/lower trading limits
ice_icedataservices_asx24futures_ctf_v2025_01_21.dynamic_ref_price = { name = "DYNAMIC.REF.PRICE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.dynamic_ref_price, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float, nullable = true }

-- DYNAMIC.UPPER.LMT (1418): Float
-- Dynamic Upper Price Limit
ice_icedataservices_asx24futures_ctf_v2025_01_21.dynamic_upper_lmt = { name = "DYNAMIC.UPPER.LMT", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.dynamic_upper_lmt, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float, nullable = true }

-- ENUM.CONTRACT.UNITS (3016): Integer
-- Unit or type of the product quantity. For example: 33 (barrels).
ice_icedataservices_asx24futures_ctf_v2025_01_21.enum_contract_units = { name = "ENUM.CONTRACT.UNITS", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.enum_contract_units, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- ENUM.CURRENCY (270): Integer
-- Currency
ice_icedataservices_asx24futures_ctf_v2025_01_21.enum_currency = { name = "ENUM.CURRENCY", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.enum_currency, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- ENUM.INSTR.TYPE (3133): ENUM.INSTR.TYPE
-- Enumerated instrument type. Used in conjunction with CTF field 'INSTR.TYPE'.
ice_icedataservices_asx24futures_ctf_v2025_01_21.enum_instr_type = { name = "ENUM.INSTR.TYPE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.enum_instr_type, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }
ice_icedataservices_asx24futures_ctf_v2025_01_21.enum_instr_type.names = {
  ["3072"] = "FUTURE_OPTION",
  ["6100"] = "STRATEGY",
}

-- ENUM.QUERY.STATUS (5001): Integer
-- Status of a command: 0 for success, a negative value for an error (1.2.4)
ice_icedataservices_asx24futures_ctf_v2025_01_21.enum_query_status = { name = "ENUM.QUERY.STATUS", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.enum_query_status, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true, status = true }

-- ENUM.SRC.ID (4): Integer
-- Source ID for the source being reported (Integer in every supplement)
ice_icedataservices_asx24futures_ctf_v2025_01_21.enum_src_id = { name = "ENUM.SRC.ID", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.enum_src_id, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- ENUM.SRC.UNDERLYING.ID (3130): Integer
-- Source ID of the underlying instrument (samples: 3130=558)
ice_icedataservices_asx24futures_ctf_v2025_01_21.enum_src_underlying_id = { name = "ENUM.SRC.UNDERLYING.ID", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.enum_src_underlying_id, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- EOD.VIEW.CLOSE (13322): String
-- End-of-Day view close time of a delayed CSP permission (2.2.6). No value is shown: read as text
ice_icedataservices_asx24futures_ctf_v2025_01_21.eod_view_close = { name = "EOD.VIEW.CLOSE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.eod_view_close, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- EOD.VIEW.OPEN (13321): String
-- End-of-Day view open time of a delayed CSP permission (2.2.6). No value is shown: read as text
ice_icedataservices_asx24futures_ctf_v2025_01_21.eod_view_open = { name = "EOD.VIEW.OPEN", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.eod_view_open, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- ETR.PRICE (1771): Float
-- Extreme Trade Range Price
ice_icedataservices_asx24futures_ctf_v2025_01_21.etr_price = { name = "ETR.PRICE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.etr_price, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float, nullable = true }

-- EXCH.MESSAGE.TIMESTAMP (55): Integer
-- Exchange sent timestamp in milliseconds HHMMSSmmm. Time zone is not specified.
ice_icedataservices_asx24futures_ctf_v2025_01_21.exch_message_timestamp = { name = "EXCH.MESSAGE.TIMESTAMP", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.exch_message_timestamp, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- EXCH.MONTH.CODE (4015): String
-- The month code from the derivative contract.
ice_icedataservices_asx24futures_ctf_v2025_01_21.exch_month_code = { name = "EXCH.MONTH.CODE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.exch_month_code, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- EXCH.PRODUCT.ROOT (3975): String
-- The primary Product Root code for a series of futures or options, presented in the source exchange's format
ice_icedataservices_asx24futures_ctf_v2025_01_21.exch_product_root = { name = "EXCH.PRODUCT.ROOT", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.exch_product_root, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- EXCH.YEAR.CODE (4022): String
-- The year code from the derivative contract.
ice_icedataservices_asx24futures_ctf_v2025_01_21.exch_year_code = { name = "EXCH.YEAR.CODE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.exch_year_code, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- EXPIRATION.DATE (292): Integer
-- Expiration Date
ice_icedataservices_asx24futures_ctf_v2025_01_21.expiration_date = { name = "EXPIRATION.DATE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.expiration_date, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- FORCE.LOGIN (5079): Bool
-- Allows or refuses a second connection: 1 or 0, overriding the FORCE_LOGIN parameter of startup.csp (2.1.1)
ice_icedataservices_asx24futures_ctf_v2025_01_21.force_login = { name = "FORCE.LOGIN", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.force_login, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_bool, nullable = true }

-- HOST.SERVER.IP (13001): String
-- IP address of the CSP that has the exchange and symbol (2.2.8; sample: 127.0.01)
ice_icedataservices_asx24futures_ctf_v2025_01_21.host_server_ip = { name = "HOST.SERVER.IP", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.host_server_ip, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- IMPLIED.ASK.SIZE (74): Integer
-- Implied Ask size
ice_icedataservices_asx24futures_ctf_v2025_01_21.implied_ask_size = { name = "IMPLIED.ASK.SIZE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.implied_ask_size, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- IMPLIED.BID.SIZ (72): Integer
-- Implied Bid size I
ice_icedataservices_asx24futures_ctf_v2025_01_21.implied_bid_siz = { name = "IMPLIED.BID.SIZ", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.implied_bid_siz, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- IMPLIED.VOLATILITY (925): Float
-- Implied Volatility
ice_icedataservices_asx24futures_ctf_v2025_01_21.implied_volatility = { name = "IMPLIED.VOLATILITY", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.implied_volatility, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float, nullable = true }

-- INSTR_NAME (3127): String
-- Instrument name (an example response token of 2.3.3). No value is shown: read as text
ice_icedataservices_asx24futures_ctf_v2025_01_21.instr_name = { name = "INSTR_NAME", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.instr_name, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- INSTR_NAME2 (3177): String
-- Long description (up to 160 bytes) of the current instrument.
ice_icedataservices_asx24futures_ctf_v2025_01_21.instr_name2 = { name = "INSTR_NAME2", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.instr_name2, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- INSTR.STATUS (705): INSTR.STATUS
-- Instrument Status. See Enumerated Values
ice_icedataservices_asx24futures_ctf_v2025_01_21.instr_status = { name = "INSTR.STATUS", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.instr_status, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }
ice_icedataservices_asx24futures_ctf_v2025_01_21.instr_status.names = {
  ["0"] = "Opened",
  ["1"] = "Halted",
  ["2"] = "Maintenance",
  ["3"] = "Pre-open",
  ["7"] = "Regulatory halt",
  ["8"] = "Closed",
}

-- ISIN (3125): String
-- ISIN code, an alternate index (2.3.1)
ice_icedataservices_asx24futures_ctf_v2025_01_21.isin = { name = "ISIN", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.isin, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- LAST.TRADING.DATE (3518): Integer
-- Final date that an instrument can be traded. Format: YYYYMMDD
ice_icedataservices_asx24futures_ctf_v2025_01_21.last_trading_date = { name = "LAST.TRADING.DATE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.last_trading_date, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- LIMIT.HIGH (338): Float
-- Limit high price
ice_icedataservices_asx24futures_ctf_v2025_01_21.limit_high = { name = "LIMIT.HIGH", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.limit_high, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float, nullable = true }

-- LIMIT.LOW (339): Float
-- Limit low price
ice_icedataservices_asx24futures_ctf_v2025_01_21.limit_low = { name = "LIMIT.LOW", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.limit_low, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float, nullable = true }

-- LOCAL.CODE (3170): String
-- Exchange local code; type varies with market.
ice_icedataservices_asx24futures_ctf_v2025_01_21.local_code = { name = "LOCAL.CODE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.local_code, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- MARKET.PHASE (1709): MARKET.PHASE
-- Indicates the current trading phase of an instrument. See Enumerated Values
ice_icedataservices_asx24futures_ctf_v2025_01_21.market_phase = { name = "MARKET.PHASE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.market_phase, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }
ice_icedataservices_asx24futures_ctf_v2025_01_21.market_phase.names = {
  ["0"] = "Undefined",
  ["1"] = "Closed",
  ["2"] = "Pre-Market",
  ["3"] = "Opening Auction",
  ["4"] = "Continuous Trading",
  ["5"] = "Mandatory Quote",
  ["6"] = "Volatility Interruption",
  ["7"] = "Intra-Day Auction (Scheduled)",
  ["8"] = "Closing Auction",
  ["9"] = "Alternative Pricing Session",
  ["10"] = "Post-Market",
  ["11"] = "Indicative Quote",
}

-- MM.ID (355): String
-- Market Maker ID (2.4.1; samples: AGED, ATTN, BTRD)
ice_icedataservices_asx24futures_ctf_v2025_01_21.mm_id = { name = "MM.ID", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.mm_id, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- NEWS.FILTER.CODE (6016): String
-- News filter code the user is permissioned for (samples: RDB, RAR)
ice_icedataservices_asx24futures_ctf_v2025_01_21.news_filter_code = { name = "NEWS.FILTER.CODE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.news_filter_code, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- OFFICIAL.TRADE.COUNT (493): Integer
-- Total number of trades for a security, as provided by the exchange
ice_icedataservices_asx24futures_ctf_v2025_01_21.official_trade_count = { name = "OFFICIAL.TRADE.COUNT", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.official_trade_count, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- OPEN_INT (369): Integer
-- Open Interest
ice_icedataservices_asx24futures_ctf_v2025_01_21.open_int = { name = "OPEN_INT", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.open_int, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- OPEN.INT.DATE (293): Integer
-- Date to which the open interest applies, format YYYYMMDD
ice_icedataservices_asx24futures_ctf_v2025_01_21.open_int_date = { name = "OPEN.INT.DATE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.open_int_date, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- OPPOSITE.ORDER.ID (1794): Integer
-- Order ID of the opposite order; a non-zero value indicates it is part of an execution for a combination trade; a zero value is not significant.
ice_icedataservices_asx24futures_ctf_v2025_01_21.opposite_order_id = { name = "OPPOSITE.ORDER.ID", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.opposite_order_id, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- OPPOSITE.ORDER. SIDE (1796): Integer
-- Side of the opposite order (0=Buy side, 1=Sell side)
ice_icedataservices_asx24futures_ctf_v2025_01_21.opposite_order_side = { name = "OPPOSITE.ORDER. SIDE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.opposite_order_side, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- OPPOSITE.TRADABLE.INSTR.ID (1795): Integer
-- Identifier of the Opposite Tradable Instrument ID for Combinations
ice_icedataservices_asx24futures_ctf_v2025_01_21.opposite_tradable_instr_id = { name = "OPPOSITE.TRADABLE.INSTR.ID", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.opposite_tradable_instr_id, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- OPTION.ACTIVE.IND (310): OPTION.ACTIVE.IND
-- Active option indicator. See Enumerated Values
ice_icedataservices_asx24futures_ctf_v2025_01_21.option_active_ind = { name = "OPTION.ACTIVE.IND", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.option_active_ind, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }
ice_icedataservices_asx24futures_ctf_v2025_01_21.option_active_ind.names = {
  ["0"] = "Strike is inactive or is deactivated",
  ["1"] = "Strike is active or is activated",
}

-- PCT.CHG (362): Float
-- Today’s percent net change
ice_icedataservices_asx24futures_ctf_v2025_01_21.pct_chg = { name = "PCT.CHG", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.pct_chg, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float, nullable = true }

-- PERMISSION (3): Integer
-- Permission ID for the source being reported (Integer in every supplement)
ice_icedataservices_asx24futures_ctf_v2025_01_21.permission = { name = "PERMISSION", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.permission, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- PQ.ASK.PRICE (1097): PQ.ASK.PRICE
-- Price Qualifier for the ask price
ice_icedataservices_asx24futures_ctf_v2025_01_21.pq_ask_price = { name = "PQ.ASK.PRICE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.pq_ask_price, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }
ice_icedataservices_asx24futures_ctf_v2025_01_21.pq_ask_price.names = {
  ["0"] = "A valid order",
  ["1"] = "An implied order",
}

-- PQ.AUCTION.PRICE (1318): Integer
-- Price Qualifier for Auction Price
ice_icedataservices_asx24futures_ctf_v2025_01_21.pq_auction_price = { name = "PQ.AUCTION.PRICE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.pq_auction_price, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- PQ.BID.PRICE (1096): PQ.BID.PRICE
-- Price Qualifier for the bid price. See Enumerated Values
ice_icedataservices_asx24futures_ctf_v2025_01_21.pq_bid_price = { name = "PQ.BID.PRICE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.pq_bid_price, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }
ice_icedataservices_asx24futures_ctf_v2025_01_21.pq_bid_price.names = {
  ["0"] = "A valid order",
  ["1"] = "An implied order",
}

-- PQ.PRICE.METHOD (1845): PQ.PRICE.METHOD
-- Price Method used for Combinations. See Enumerated Values
ice_icedataservices_asx24futures_ctf_v2025_01_21.pq_price_method = { name = "PQ.PRICE.METHOD", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.pq_price_method, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }
ice_icedataservices_asx24futures_ctf_v2025_01_21.pq_price_method.names = {
  ["0"] = "Net price",
  ["2"] = "Yield difference",
  ["3"] = "Individual",
  ["4"] = "Average price",
}

-- PQ.SETTLE.PRICE (1095): PQ.SETTLE.PRICE
-- Price qualifier for the settle price. See Enumerated Values
ice_icedataservices_asx24futures_ctf_v2025_01_21.pq_settle_price = { name = "PQ.SETTLE.PRICE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.pq_settle_price, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }
ice_icedataservices_asx24futures_ctf_v2025_01_21.pq_settle_price.names = {
  ["27"] = "Settlement price is adjustment for prior day",
  ["32"] = "Final settlement price",
  ["34"] = "Interim settlement price",
}

-- PREV_OPEN.INT (3530): Integer
-- Open Interest from Previous Session
ice_icedataservices_asx24futures_ctf_v2025_01_21.prev_open_int = { name = "PREV_OPEN.INT", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.prev_open_int, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- PREV.TRADE.DATE (451): DateTime
-- Trade Date Close (UTC: yyyymmdd)
ice_icedataservices_asx24futures_ctf_v2025_01_21.prev_trade_date = { name = "PREV.TRADE.DATE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.prev_trade_date, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_date_time, nullable = true }

-- PRICE.DENOMINATOR (3511): Integer
-- Divisor or fractional denominator used to express prices in the appropriate format
ice_icedataservices_asx24futures_ctf_v2025_01_21.price_denominator = { name = "PRICE.DENOMINATOR", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.price_denominator, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- PRODUCT.ROOT (3974): String
-- Chaining functionality to Consolidated Feed through the use of token CTF 3974 PRODUCT.ROOT for Strategy symbols Examples: Root Symbol: S:CGF\P Contract symbols: S:CGFM18CGFU18 Contract symbols: S:CGFU18CGFZ18
ice_icedataservices_asx24futures_ctf_v2025_01_21.product_root = { name = "PRODUCT.ROOT", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.product_root, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- QUERY.COMMAND (5022): String
-- The command: its value is the command's name (samples: 5022=LoginUser, 5022=Subscribe, 5022=QuerySnap)
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_command = { name = "QUERY.COMMAND", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_command, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- QUERY.TAG (5026): Integer
-- Identifies a command and its response: the response carries the same token and value (1.2.6)
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_tag = { name = "QUERY.TAG", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_tag, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- QUOTE.COND_2 (2001): Integer
-- Quote condition 2 (samples: 2001=25)
ice_icedataservices_asx24futures_ctf_v2025_01_21.quote_cond_2 = { name = "QUOTE.COND_2", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.quote_cond_2, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- QUOTE.DATE (19): DateTime
-- Quote date (UTC: yyyymmdd)
ice_icedataservices_asx24futures_ctf_v2025_01_21.quote_date = { name = "QUOTE.DATE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.quote_date, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_date_time, nullable = true }

-- QUOTE.DATETIME (20): DateTime
-- Quote time (UNIXTimestamp.milliseconds)
ice_icedataservices_asx24futures_ctf_v2025_01_21.quote_datetime = { name = "QUOTE.DATETIME", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.quote_datetime, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_date_time, nullable = true }

-- QUOTE.OFFICIAL.TIME (25): Integer
-- Official exchange quote time
ice_icedataservices_asx24futures_ctf_v2025_01_21.quote_official_time = { name = "QUOTE.OFFICIAL.TIME", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.quote_official_time, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- RECORD.DEL (431): Bool
-- Ticker symbol delete legacy
ice_icedataservices_asx24futures_ctf_v2025_01_21.record_del = { name = "RECORD.DEL", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.record_del, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_bool, nullable = true }

-- RECORD.PRECISION (209): Integer
-- Decimal precision
ice_icedataservices_asx24futures_ctf_v2025_01_21.record_precision = { name = "RECORD.PRECISION", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.record_precision, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- RECORD.RESET (416): Integer
-- Reset the record/orderbook
ice_icedataservices_asx24futures_ctf_v2025_01_21.record_reset = { name = "RECORD.RESET", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.record_reset, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- RECORD.STALE.IND (5076): Integer
-- Indicates if an instrument record may contain stale values. Set to 1 if the CSP software is restarted or if the CSP's inbound feed is idle, and reset to 0 once a refresh message or real-time update is received for the symbol.
ice_icedataservices_asx24futures_ctf_v2025_01_21.record_stale_ind = { name = "RECORD.STALE.IND", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.record_stale_ind, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- REFRESH (24): Integer
-- Message <refresh> indicator (0:Realtime, 1:Refresh)
ice_icedataservices_asx24futures_ctf_v2025_01_21.refresh = { name = "REFRESH", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.refresh, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- RESIDUAL.MATURITY (1280): Integer
-- The remaining number of days until the expiration or the repayment of the instrument
ice_icedataservices_asx24futures_ctf_v2025_01_21.residual_maturity = { name = "RESIDUAL.MATURITY", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.residual_maturity, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- RETRANSMISSION.FLAG (13543): Integer
-- 13543=0 indicates a retransmission of the data in the message
ice_icedataservices_asx24futures_ctf_v2025_01_21.retransmission_flag = { name = "RETRANSMISSION.FLAG", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.retransmission_flag, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- RFQ.PRICE (1768): Float
-- Requested Quote Price
ice_icedataservices_asx24futures_ctf_v2025_01_21.rfq_price = { name = "RFQ.PRICE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.rfq_price, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float, nullable = true }

-- RFQ.SIDE (1580): Integer
-- RFQ Side (0=Buy side, 1=Sell side)
ice_icedataservices_asx24futures_ctf_v2025_01_21.rfq_side = { name = "RFQ.SIDE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.rfq_side, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- RFQ.SIZE (296): Integer
-- Volume requested as part of a Request For Quote
ice_icedataservices_asx24futures_ctf_v2025_01_21.rfq_size = { name = "RFQ.SIZE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.rfq_size, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- SEDOL (3126): String
-- SEDOL code, an alternate index (2.3.1). No value is shown: read as text
ice_icedataservices_asx24futures_ctf_v2025_01_21.sedol = { name = "SEDOL", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.sedol, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- SELLER.COMBINATION.TRADE.ID (1804): Integer
-- Non-zero value shows that this trade is part of an execution cycle for a combination trade
ice_icedataservices_asx24futures_ctf_v2025_01_21.seller_combination_trade_id = { name = "SELLER.COMBINATION.TRADE.ID", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.seller_combination_trade_id, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- SELLER.ORDER.ID (1803): Integer
-- Reference number of the seller’s order. If zero, the order is aggressive, dark or undisclosed
ice_icedataservices_asx24futures_ctf_v2025_01_21.seller_order_id = { name = "SELLER.ORDER.ID", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.seller_order_id, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- SELLER.SIDE (1802): Integer
-- Side of the seller’s order (0=Buy side, 1=Sell side)
ice_icedataservices_asx24futures_ctf_v2025_01_21.seller_side = { name = "SELLER.SIDE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.seller_side, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- SELLER.TRADABLE.INSTR.ID (1801): Integer
-- Identifier of the seller’s order book
ice_icedataservices_asx24futures_ctf_v2025_01_21.seller_tradable_instr_id = { name = "SELLER.TRADABLE.INSTR.ID", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.seller_tradable_instr_id, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- SETTLE.DATE (417): Integer
-- Epoch format with time value set to 00:00:00 (12PM GMT). Format YYYYMMDD 00:00:00
ice_icedataservices_asx24futures_ctf_v2025_01_21.settle_date = { name = "SETTLE.DATE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.settle_date, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- SETTLE.PRICE (418): Float
-- Settlement Price
ice_icedataservices_asx24futures_ctf_v2025_01_21.settle_price = { name = "SETTLE.PRICE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.settle_price, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float, nullable = true }

-- STRIKE.MIN.TICK (1776): Float
-- Minimum increase or decrease in the strike price for an option. This is an RTSD token and clients must be permissioned for RTSD in order to see it.
ice_icedataservices_asx24futures_ctf_v2025_01_21.strike_min_tick = { name = "STRIKE.MIN.TICK", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.strike_min_tick, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float, nullable = true }

-- SYMBOL.BLOOMBERG.TICKER (3950): String
-- Bloomberg Symbol *Note, based on Bloomberg’s Recommendation, the Bloomberg Symbol for indices will take the format of a Symbol and the text “Index” with a single space between them. Unlike other exchange traded instruments, the Bloomberg Symbol for indices will not include a Pricing Source. i.e. <NKY Index> for Nikkei 225. Note importantly that IDS will publish changes to the Bloomberg Ticker Symbol upon receipt of the change from Bloomberg, but cannot guarantee that Bloomberg will send changes in advance of trading on the effective date.
ice_icedataservices_asx24futures_ctf_v2025_01_21.symbol_bloomberg_ticker = { name = "SYMBOL.BLOOMBERG.TICKER", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.symbol_bloomberg_ticker, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- SYMBOL.ESIGNAL.TICKER (3958): String
-- eSignal Symbol including source suffix (e.g. AJG-LON, A:A2A-MIL)
ice_icedataservices_asx24futures_ctf_v2025_01_21.symbol_esignal_ticker = { name = "SYMBOL.ESIGNAL.TICKER", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.symbol_esignal_ticker, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- SYMBOL.EXCH.TICKER (3172): String
-- Ticker symbol provided by the exchange.
ice_icedataservices_asx24futures_ctf_v2025_01_21.symbol_exch_ticker = { name = "SYMBOL.EXCH.TICKER", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.symbol_exch_ticker, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- SYMBOL.TICKER (5): String
-- Consolidated Feed symbol (String in every supplement)
ice_icedataservices_asx24futures_ctf_v2025_01_21.symbol_ticker = { name = "SYMBOL.TICKER", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.symbol_ticker, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true, where = "Symbol" }

-- SYMBOL.TICKER.ALIAS (4070): String
-- The instrument's symbol alias regime, presented as chaining symbology for all future symbols.
ice_icedataservices_asx24futures_ctf_v2025_01_21.symbol_ticker_alias = { name = "SYMBOL.TICKER.ALIAS", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.symbol_ticker_alias, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- SYMBOL.UNDERLYING.TICKER (3083): String
-- Symbol of the underlying instrument (String in every supplement; samples: 3083=IBM)
ice_icedataservices_asx24futures_ctf_v2025_01_21.symbol_underlying_ticker = { name = "SYMBOL.UNDERLYING.TICKER", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.symbol_underlying_ticker, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- TICK.VALUE (3306): Float
-- Monetary value corresponding to the tick size
ice_icedataservices_asx24futures_ctf_v2025_01_21.tick_value = { name = "TICK.VALUE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.tick_value, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float, nullable = true }

-- TOKEN.DEL (5004): Integer
-- The value of this token is the ID of another token to be deleted.
ice_icedataservices_asx24futures_ctf_v2025_01_21.token_del = { name = "TOKEN.DEL", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.token_del, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- TRADABLE.STATUS (1708): TRADABLE.STATUS
-- Indicates if an instrument is tradable, halted, or suspended. See Enumerated Values
ice_icedataservices_asx24futures_ctf_v2025_01_21.tradable_status = { name = "TRADABLE.STATUS", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.tradable_status, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }
ice_icedataservices_asx24futures_ctf_v2025_01_21.tradable_status.names = {
  ["0"] = "Undefined",
  ["1"] = "Normal",
  ["2"] = "Halted",
  ["3"] = "Suspended",
}

-- TRADE.BLOCK.COUNT (440): Integer
-- Trade blocks today
ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_block_count = { name = "TRADE.BLOCK.COUNT", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_block_count, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- TRADE.BLOCK.VOL (441): Integer
-- Trade Block Volume
ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_block_vol = { name = "TRADE.BLOCK.VOL", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_block_vol, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- TRADE.COND_1 (2500): TRADE.COND_1
-- Trade condition 1. See Enumerated Values
ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_cond_1 = { name = "TRADE.COND_1", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_cond_1, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }
ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_cond_1.names = {
  ["0"] = "Normal trade",
  ["1"] = "Sweeping trade",
  ["2"] = "Levelling trade",
  ["3"] = "Spread-to-underlying trade",
  ["4"] = "Intra-spread to intra-spread trade",
  ["5"] = "Inter-spread to inter-spread trade",
  ["6"] = "Custom to custom trade",
  ["7"] = "Strip to outright",
}

-- TRADE.COND.DATETIME (76): DateTime
-- Last Conditional Trade Time
ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_cond_datetime = { name = "TRADE.COND.DATETIME", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_cond_datetime, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_date_time, nullable = true }

-- TRADE.COND.OFFICIAL.DATE (543): Integer
-- Provider date of most recent last ineligible trade
ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_cond_official_date = { name = "TRADE.COND.OFFICIAL.DATE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_cond_official_date, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- TRADE.COND.OFFICIAL.TIME (533): Integer
-- Provider time of most recent last ineligible trade
ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_cond_official_time = { name = "TRADE.COND.OFFICIAL.TIME", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_cond_official_time, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- TRADE.COND.PRICE (447): Float
-- Sale Condition Trade Price
ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_cond_price = { name = "TRADE.COND.PRICE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_cond_price, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float, nullable = true }

-- TRADE.COND.SIZE (448): Integer
-- Sale Condition Trade Size
ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_cond_size = { name = "TRADE.COND.SIZE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_cond_size, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- TRADE.DATETIME (18): DateTime
-- Last Trade Time (UNIXTimestamp.milliseconds)
ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_datetime = { name = "TRADE.DATETIME", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_datetime, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_date_time, nullable = true }

-- TRADE.HIGH (388): Float
-- Today’s high price
ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_high = { name = "TRADE.HIGH", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_high, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float, nullable = true }

-- TRADE.LOW (394): Float
-- Today’s low price
ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_low = { name = "TRADE.LOW", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_low, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float, nullable = true }

-- TRADE.OFFICIAL.DATE (444): Integer
-- Official exchange trade date
ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_official_date = { name = "TRADE.OFFICIAL.DATE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_official_date, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- TRADE.OFFICIAL.TIME (459): Integer
-- Exchange trade time
ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_official_time = { name = "TRADE.OFFICIAL.TIME", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_official_time, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- TRADE.OPEN (400): Float
-- Open price
ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_open = { name = "TRADE.OPEN", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_open, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float, nullable = true }

-- TRADE.PRICE (8): Float
-- Last trade price
ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_price = { name = "TRADE.PRICE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_price, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float, nullable = true }

-- TRADE.SIZE (9): Integer
-- Incremental volume
ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_size = { name = "TRADE.SIZE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_size, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- TRADE.TICK (316): String
-- Tick trend indicator (<-> = downtick, <+> = uptick)
ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_tick = { name = "TRADE.TICK", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_tick, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- TRADE.TREND (432): String
-- Trade price tick sequence ( <-> = downtick, <*> = unchanged, <+> = uptick), for example (- + * * + - - + -)
ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_trend = { name = "TRADE.TREND", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_trend, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- TRADE.UNIQUE.ID (461): Integer
-- Trade Identifier
ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_unique_id = { name = "TRADE.UNIQUE.ID", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_unique_id, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- TRADE.VOL (22): Integer
-- Calculated cumulative trade volume
ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_vol = { name = "TRADE.VOL", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.trade_vol, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- USER_NAME (5028): String
-- User name (samples: user001, user002)
ice_icedataservices_asx24futures_ctf_v2025_01_21.user_name = { name = "USER_NAME", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.user_name, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- USER.PASSWORD (5029): String
-- User password (sample: PASSWD1)
ice_icedataservices_asx24futures_ctf_v2025_01_21.user_password = { name = "USER.PASSWORD", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.user_password, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_string, nullable = true }

-- VWAP (474): Float
-- Volume Weighted Average Price
ice_icedataservices_asx24futures_ctf_v2025_01_21.vwap = { name = "VWAP", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.vwap, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float, nullable = true }

-- YEST.TRADE.CLOSE (407): Float
-- Previous trading day’s close price
ice_icedataservices_asx24futures_ctf_v2025_01_21.yest_trade_close = { name = "YEST.TRADE.CLOSE", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.yest_trade_close, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_float, nullable = true }

-- YEST.TRADE.VOL (473): Integer
-- Previous trading day’s volume
ice_icedataservices_asx24futures_ctf_v2025_01_21.yest_trade_vol = { name = "YEST.TRADE.VOL", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.yest_trade_vol, read = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_read_integer, nullable = true }

-- Token dispatch: token number to token
ice_icedataservices_asx24futures_ctf_v2025_01_21.tags = {
  ["3"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.permission,
  ["4"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.enum_src_id,
  ["5"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.symbol_ticker,
  ["8"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_price,
  ["9"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_size,
  ["10"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.ask_price,
  ["11"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.ask_size,
  ["12"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.bid_price,
  ["13"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.bid_size,
  ["14"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.current_price,
  ["15"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.activity_date,
  ["16"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.activity_datetime,
  ["18"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_datetime,
  ["19"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.quote_date,
  ["20"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.quote_datetime,
  ["22"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_vol,
  ["24"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.refresh,
  ["25"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.quote_official_time,
  ["55"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.exch_message_timestamp,
  ["72"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.implied_bid_siz,
  ["74"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.implied_ask_size,
  ["76"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_cond_datetime,
  ["109"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.bid_datetime,
  ["110"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.ask_datetime,
  ["209"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.record_precision,
  ["269"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.delay_mins,
  ["270"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.enum_currency,
  ["280"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.display_precision,
  ["292"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.expiration_date,
  ["293"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.open_int_date,
  ["296"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.rfq_size,
  ["310"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.option_active_ind,
  ["316"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_tick,
  ["321"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.ask_indic_price,
  ["322"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.ask_indic_size,
  ["323"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.bid_indic_price,
  ["324"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.bid_indic_size,
  ["338"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.limit_high,
  ["339"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.limit_low,
  ["355"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.mm_id,
  ["361"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.chg,
  ["362"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.pct_chg,
  ["365"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.dynamic_ref_price,
  ["369"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.open_int,
  ["388"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_high,
  ["394"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_low,
  ["400"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_open,
  ["407"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.yest_trade_close,
  ["416"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.record_reset,
  ["417"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.settle_date,
  ["418"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.settle_price,
  ["431"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.record_del,
  ["432"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_trend,
  ["435"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.currency_string,
  ["437"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.current_datetime,
  ["440"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_block_count,
  ["441"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_block_vol,
  ["444"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_official_date,
  ["447"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_cond_price,
  ["448"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_cond_size,
  ["451"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.prev_trade_date,
  ["459"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_official_time,
  ["461"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_unique_id,
  ["473"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.yest_trade_vol,
  ["474"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.vwap,
  ["493"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.official_trade_count,
  ["533"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_cond_official_time,
  ["543"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_cond_official_date,
  ["624"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.auction_price,
  ["645"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.auction_vol,
  ["698"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.coupon_rate,
  ["705"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.instr_status,
  ["856"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.control_msg_type,
  ["925"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.implied_volatility,
  ["1011"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.action_date,
  ["1095"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.pq_settle_price,
  ["1096"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.pq_bid_price,
  ["1097"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.pq_ask_price,
  ["1229"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.cancel_trade_seq,
  ["1280"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.residual_maturity,
  ["1318"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.pq_auction_price,
  ["1418"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.dynamic_upper_lmt,
  ["1419"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.dynamic_lower_lmt,
  ["1580"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.rfq_side,
  ["1708"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.tradable_status,
  ["1709"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.market_phase,
  ["1768"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.rfq_price,
  ["1771"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.etr_price,
  ["1776"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.strike_min_tick,
  ["1785"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.combination_trade_id,
  ["1791"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.counter_party_id_string,
  ["1794"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.opposite_order_id,
  ["1795"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.opposite_tradable_instr_id,
  ["1796"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.opposite_order_side,
  ["1797"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.buyer_tradable_instr_id,
  ["1798"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.buyer_side,
  ["1799"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.buyer_order_id,
  ["1800"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.buyer_combination_trade_id,
  ["1801"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.seller_tradable_instr_id,
  ["1802"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.seller_side,
  ["1803"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.seller_order_id,
  ["1804"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.seller_combination_trade_id,
  ["1845"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.pq_price_method,
  ["2001"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.quote_cond_2,
  ["2029"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.conflation_interval,
  ["2035"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.conflation,
  ["2500"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.trade_cond_1,
  ["3016"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.enum_contract_units,
  ["3083"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.symbol_underlying_ticker,
  ["3123"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.cusip,
  ["3125"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.isin,
  ["3126"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.sedol,
  ["3127"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.instr_name,
  ["3130"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.enum_src_underlying_id,
  ["3133"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.enum_instr_type,
  ["3170"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.local_code,
  ["3172"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.symbol_exch_ticker,
  ["3177"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.instr_name2,
  ["3289"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.auction_date,
  ["3306"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.tick_value,
  ["3327"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.delta,
  ["3511"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.price_denominator,
  ["3518"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.last_trading_date,
  ["3530"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.prev_open_int,
  ["3706"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.block_lot_size,
  ["3741"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.coupon_frequency,
  ["3950"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.symbol_bloomberg_ticker,
  ["3952"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.bloomberg_global_id,
  ["3953"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.bloomberg_global_id_comp,
  ["3958"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.symbol_esignal_ticker,
  ["3974"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.product_root,
  ["3975"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.exch_product_root,
  ["4015"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.exch_month_code,
  ["4022"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.exch_year_code,
  ["4070"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.symbol_ticker_alias,
  ["5001"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.enum_query_status,
  ["5002"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_token_store,
  ["5004"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.token_del,
  ["5005"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.csp_news,
  ["5008"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.csp_version,
  ["5010"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_token_name,
  ["5011"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_token_size,
  ["5012"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_token_type,
  ["5013"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.csp_ddf_bate,
  ["5018"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.csp_output_state,
  ["5019"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.csp_output_tokens,
  ["5022"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.query_command,
  ["5026"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.query_tag,
  ["5028"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.user_name,
  ["5029"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.user_password,
  ["5033"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_enum_desc,
  ["5034"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_enum_value,
  ["5035"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_token_num,
  ["5076"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.record_stale_ind,
  ["5079"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.force_login,
  ["5080"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.cdd_version,
  ["5201"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.conflate_indicator,
  ["6016"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.news_filter_code,
  ["13001"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.host_server_ip,
  ["13101"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.client_port,
  ["13265"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_compressed,
  ["13321"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.eod_view_open,
  ["13322"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.eod_view_close,
  ["13349"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.customer_number,
  ["13543"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.retransmission_flag,
}

-- Dissect the param of a known token: its value read as its type, shown by name, by its bits or by what it reports; an empty value of a nullable type is a null
ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_token = function(buffer, param, packet, parent, tag, errors)
  local range = buffer(param.offset, param.length)
  local text = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_text(buffer(param.value, param.size), tag.where)
  local label = tag.name.." ("..param.token.."): "
  if text == "" and tag.nullable then
    return parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ctf_null, range, tag.name, label.."null"), text
  end
  local value, shown = tag.read(text)
  if value == nil then
    local item = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ctf_raw, range, text, label..text)
    item:add_proto_expert_info(ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.invalid_value, tag.name.." does not read as its type: "..text)
    return item, text
  end
  local unknown = false
  if tag.names ~= nil then
    local name = tag.names[text]
    if name == nil then
      unknown = true
      shown = "Unknown ("..text..")"
    else
      shown = name.." ("..text..")"
    end
  elseif tag.status then
    local reply = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_status(errors, text)
    if reply == nil then
      unknown = true
      shown = "Unknown ("..text..")"
    elseif reply.shown == "" then
      shown = text
    else
      shown = reply.shown.." ("..text..")"
    end
  end
  local item = parent:add(tag.field, range, value, label..shown)
  if unknown then
    item:add_proto_expert_info(ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.unknown_value, tag.name.." value "..text.." is not one the model names")
  end
  return item, text
end


-----------------------------------------------------------------------
-- Ctf Queries
-----------------------------------------------------------------------

-- Queries: per conversation, the command each QUERY.TAG (5026) asks
ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_queries = {}

-- Answers: per response, by packet and offset, the command the first pass found it answers, false for none
ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_answers = {}

-- Conversation of a packet: both directions of one connection, the lower endpoint first
ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_conversation = function(packet)
  local source = tostring(packet.src)..":"..tostring(packet.src_port)
  local destination = tostring(packet.dst)..":"..tostring(packet.dst_port)
  if source < destination then
    return source.."|"..destination
  end
  return destination.."|"..source
end

-- Keep the command a query tag asks, in its conversation, on the first pass
ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_ask = function(packet, query, command)
  if packet.visited then
    return
  end
  local conversation = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_conversation(packet)
  local queries = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_queries
  queries[conversation] = queries[conversation] or {}
  queries[conversation][query] = command
end

-- The command a response answers, or nil: found on the first pass, read back on a later one
ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_answer = function(packet, offset, query)
  local key = tostring(packet.number)..":"..tostring(offset)
  local answers = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_answers
  if not packet.visited then
    local asked = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_queries[ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_conversation(packet)]
    answers[key] = (asked and asked[query]) or false
  end
  if not answers[key] then
    return nil
  end
  return answers[key]
end


-----------------------------------------------------------------------
-- Ctf Messages
-----------------------------------------------------------------------

-- Dissect the params of a ctf message: a param that is no token=value pair, and an unknown token, are shown as sent and flagged; a token the message does not carry, and a mandatory token it lacks, are flagged
ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields = function(buffer, packet, parent, params, message)
  local seen = {}
  for _, param in ipairs(params) do
    local range = buffer(param.offset, param.length)
    if param.token == nil then
      local text = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_text(range, nil)
      local item = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ctf_raw, range, text, "Param: "..text)
      item:add_proto_expert_info(ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.malformed_param, "Not a token number, separator and value: "..text)
    else
      local tag = ice_icedataservices_asx24futures_ctf_v2025_01_21.tags[param.token]
      if tag == nil then
        local text = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_text(buffer(param.value, param.size), nil)
        local item = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ctf_raw, range, text, "Token "..param.token..": "..text)
        item:add_proto_expert_info(ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.unknown_token, "Unknown ctf token: "..param.token)
      else
        local item = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_token(buffer, param, packet, parent, tag, message.errors)
        if message.codes ~= nil and not message.codes[param.token] then
          item:add_proto_expert_info(ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.unexpected_token, tag.name.." ("..param.token..") is not a token of "..message.name)
        end
        seen[param.token] = true
      end
    end
  end
  if message.mandatory ~= nil then
    for _, token in ipairs(message.mandatory) do
      if not seen[token] then
        parent:add_proto_expert_info(ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.missing_token, "Mandatory token "..message.codes[token].." ("..token..") missing from "..message.name)
      end
    end
  end
end

-- Get Conflation Interval Message (GetConflationInterval): System Information
-- This command allows users to view the current conflation interval for the connection. The interval is expressed in milliseconds and the default value is 1000 milliseconds.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.get_conflation_interval_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.get_conflation_interval_message.name = "GetConflationInterval"

-- Codes: Get Conflation Interval Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.get_conflation_interval_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG" }

-- Mandatory: Get Conflation Interval Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.get_conflation_interval_message.mandatory = { "5022", "5026" }

-- Dissect: Get Conflation Interval Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.get_conflation_interval_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.get_conflation_interval_message, buffer(offset, size), "GetConflationInterval")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.get_conflation_interval_message)
  return offset + size
end

-- Get Conflation Interval Response (GetConflationInterval): ENUM.QUERY.STATUS (5001), QUERY.TAG (5026), CONFLATION.INTERVAL (2029)
-- errors: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.get_conflation_interval_message.response = { name = "GetConflationInterval Response" }

-- Answer: Get Conflation Interval Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.get_conflation_interval_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.get_conflation_interval_response, buffer(offset, size), "GetConflationInterval")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.get_conflation_interval_message.response)
  return offset + size
end

-- Get Port Message (GetPort): System Information
-- In a multi-instance, multi-box scenario, this command returns the IP address and the port of the CSP that has a particular exchange and symbol.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026), ENUM.SRC.ID (4)
-- optional: SYMBOL.TICKER (5)
ice_icedataservices_asx24futures_ctf_v2025_01_21.get_port_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.get_port_message.name = "GetPort"

-- Codes: Get Port Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.get_port_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["4"] = "ENUM.SRC.ID", ["5"] = "SYMBOL.TICKER" }

-- Mandatory: Get Port Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.get_port_message.mandatory = { "5022", "5026", "4" }

-- Dissect: Get Port Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.get_port_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.get_port_message, buffer(offset, size), "GetPort")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.get_port_message)
  return offset + size
end

-- Get Port Response (GetPort): ENUM.QUERY.STATUS (5001), QUERY.TAG (5026), HOST.SERVER.IP (13001), CLIENT.PORT (13101)
-- errors: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.get_port_message.response = { name = "GetPort Response" }

-- Answer: Get Port Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.get_port_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.get_port_response, buffer(offset, size), "GetPort")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.get_port_message.response)
  return offset + size
end

-- List Administration Info Message (ListAdministrationInfo): System Information
-- The ListAdministrationInfo command provides information about the CSP system and the active services.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_administration_info_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_administration_info_message.name = "ListAdministrationInfo"

-- Codes: List Administration Info Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_administration_info_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG" }

-- Mandatory: List Administration Info Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_administration_info_message.mandatory = { "5022", "5026" }

-- Dissect: List Administration Info Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_administration_info_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_administration_info_message, buffer(offset, size), "ListAdministrationInfo")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.list_administration_info_message)
  return offset + size
end

-- List Administration Info Response (ListAdministrationInfo): CURRENT.DATETIME (437), ENUM.QUERY.STATUS (5001), CSP.NEWS (5005), CSP.VERSION (5008), CSP.OUTPUT_STATE (5018), CSP.OUTPUT_TOKENS (5019), QUERY.TAG (5026), CDD.VERSION (5080), CUSTOMER.NUMBER (13349)
-- errors: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_administration_info_message.response = { name = "ListAdministrationInfo Response" }

-- Answer: List Administration Info Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_administration_info_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_administration_info_response, buffer(offset, size), "ListAdministrationInfo")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.list_administration_info_message.response)
  return offset + size
end

-- List Available Tokens Message (ListAvailableTokens): System Information
-- The ListAvailableTokens command lists all tokens currently available on the CSP. The response shows the token name, token number, maximum byte size, data type, and if the token can be queried from a data store.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_available_tokens_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_available_tokens_message.name = "ListAvailableTokens"

-- Codes: List Available Tokens Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_available_tokens_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG" }

-- Mandatory: List Available Tokens Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_available_tokens_message.mandatory = { "5022", "5026" }

-- Dissect: List Available Tokens Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_available_tokens_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_available_tokens_message, buffer(offset, size), "ListAvailableTokens")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.list_available_tokens_message)
  return offset + size
end

-- List Available Tokens Response (ListAvailableTokens): ENUM.QUERY.STATUS (5001), CTF.TOKEN.STORE (5002), CTF.TOKEN.NAME (5010), CTF.TOKEN.SIZE (5011), CTF.TOKEN.TYPE (5012), CTF.TOKEN.NUM (5035)
-- errors: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_available_tokens_message.response = { name = "ListAvailableTokens Response" }

-- Answer: List Available Tokens Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_available_tokens_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_available_tokens_response, buffer(offset, size), "ListAvailableTokens")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.list_available_tokens_message.response)
  return offset + size
end

-- List Enumeration Message (ListEnumeration): System Information
-- The ListEnumeration command can list: • All enumerated sets • One enumerated set • A single enumerated value within an enumerated set To list all enumerated sets, the ListEnumeration command is used without any optional arguments. To list all the elements of one enumerated set, an optional argument is used to identify the set. To list just one element of one enumerated set, optional arguments are included to identify the set and the position of the element in the set.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: CTF.TOKEN.NUM (5035), CTF.ENUM.VALUE (5034)
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_enumeration_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_enumeration_message.name = "ListEnumeration"

-- Codes: List Enumeration Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_enumeration_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["5035"] = "CTF.TOKEN.NUM", ["5034"] = "CTF.ENUM.VALUE" }

-- Mandatory: List Enumeration Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_enumeration_message.mandatory = { "5022", "5026" }

-- Dissect: List Enumeration Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_enumeration_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_enumeration_message, buffer(offset, size), "ListEnumeration")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.list_enumeration_message)
  return offset + size
end

-- List Enumeration Response (ListEnumeration): ENUM.QUERY.STATUS (5001), QUERY.TAG (5026), CTF.ENUM.DESC (5033), CTF.ENUM.VALUE (5034), CTF.TOKEN.NUM (5035)
-- errors: ERR_REQ_INVALID (-46), ERR_PARAM_BOUNDARY (-33), ERR_EXIST_TOKEN (-24)
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_enumeration_message.response = { name = "ListEnumeration Response" }
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_enumeration_message.response.errors = {
  ["-46"] = { name = "ERR_REQ_INVALID", shown = "ERR_REQ_INVALID: QUERY.COMMAND is missing or specifies an unrecognized command" },
  ["-33"] = { name = "ERR_PARAM_BOUNDARY", shown = "ERR_PARAM_BOUNDARY: Requested token is not associated with an enumeration set." },
  ["-24"] = { name = "ERR_EXIST_TOKEN", shown = "ERR_EXIST_TOKEN: Requested token does not exist." },
}

-- Answer: List Enumeration Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_enumeration_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_enumeration_response, buffer(offset, size), "ListEnumeration")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.list_enumeration_message.response)
  return offset + size
end

-- List Exchange Tokens Message (ListExchangeTokens): Data Subscriptions
-- The ListExchangeTokens command returns all tokens used on one or all exchanges. If a value for ENUM.SRC.ID is included in the query, the response lists the tokens used on just the specified exchange; only one instance of ENUM.SRC.ID is allowed. If ENUM.SRC.ID is not included, the response lists all tokens used on all exchanges.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: ENUM.SRC.ID (4)
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_exchange_tokens_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_exchange_tokens_message.name = "ListExchangeTokens"

-- Codes: List Exchange Tokens Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_exchange_tokens_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["4"] = "ENUM.SRC.ID" }

-- Mandatory: List Exchange Tokens Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_exchange_tokens_message.mandatory = { "5022", "5026" }

-- Dissect: List Exchange Tokens Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_exchange_tokens_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_exchange_tokens_message, buffer(offset, size), "ListExchangeTokens")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.list_exchange_tokens_message)
  return offset + size
end

-- List Exchange Tokens Response (ListExchangeTokens): ENUM.QUERY.STATUS (5001), CTF.TOKEN.NAME (5010), QUERY.TAG (5026), CTF.TOKEN.NUM (5035), CSP.DDF_BATE (5013)
-- errors: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_exchange_tokens_message.response = { name = "ListExchangeTokens Response" }

-- Answer: List Exchange Tokens Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_exchange_tokens_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_exchange_tokens_response, buffer(offset, size), "ListExchangeTokens")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.list_exchange_tokens_message.response)
  return offset + size
end

-- List Extended Exchange Info Message (ListExtendedExchangeInfo): System Information
-- This command lists information from any delayed CSP about delay times and End-of-Day view times. The order of the tokens in the response is significant. Both DELAY.MINS and the EOD tokens are preceded by the PERMISSION to which each applies.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_extended_exchange_info_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_extended_exchange_info_message.name = "ListExtendedExchangeInfo"

-- Codes: List Extended Exchange Info Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_extended_exchange_info_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG" }

-- Mandatory: List Extended Exchange Info Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_extended_exchange_info_message.mandatory = { "5022", "5026" }

-- Dissect: List Extended Exchange Info Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_extended_exchange_info_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_extended_exchange_info_message, buffer(offset, size), "ListExtendedExchangeInfo")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.list_extended_exchange_info_message)
  return offset + size
end

-- List Extended Exchange Info Response (ListExtendedExchangeInfo): PERMISSION (3), DELAY.MINS (269), QUERY.TAG (5026), EOD.VIEW.OPEN (13321), EOD.VIEW.CLOSE (13322)
-- errors: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_extended_exchange_info_message.response = { name = "ListExtendedExchangeInfo Response" }

-- Answer: List Extended Exchange Info Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_extended_exchange_info_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_extended_exchange_info_response, buffer(offset, size), "ListExtendedExchangeInfo")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.list_extended_exchange_info_message.response)
  return offset + size
end

-- List Internal Tokens Message (ListInternalTokens): System Information
-- This command lists all CTF data tokens recognized by the CSP including those that are used solely for DDF output. The list of tokens returned by ListAvailableTokens is a subset of the list returned by ListInternalTokens. The response of ListInternalTokens shows the token name, token number, maximum byte size, data type, and if the token can be queried from a data store.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_internal_tokens_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_internal_tokens_message.name = "ListInternalTokens"

-- Codes: List Internal Tokens Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_internal_tokens_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG" }

-- Mandatory: List Internal Tokens Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_internal_tokens_message.mandatory = { "5022", "5026" }

-- Dissect: List Internal Tokens Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_internal_tokens_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_internal_tokens_message, buffer(offset, size), "ListInternalTokens")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.list_internal_tokens_message)
  return offset + size
end

-- List Internal Tokens Response (ListInternalTokens): ENUM.QUERY.STATUS (5001), CTF.TOKEN.STORE (5002), CTF.TOKEN.NAME (5010), CTF.TOKEN.SIZE (5011), CTF.TOKEN.TYPE (5012), CTF.TOKEN.NUM (5035)
-- errors: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_internal_tokens_message.response = { name = "ListInternalTokens Response" }

-- Answer: List Internal Tokens Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_internal_tokens_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_internal_tokens_response, buffer(offset, size), "ListInternalTokens")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.list_internal_tokens_message.response)
  return offset + size
end

-- List Split Exchanges Message (ListSplitExchanges): Data Subscriptions
-- This command lists all source IDs that carry data only for restricted subsets of ticker symbols on the CSP. All symbols in a subset begin with the same letter or with a non-alphabetic character. The capability of reporting exchange data that is restricted according to ticker symbol is available in the CSP version 6.5 and later. The response to the ListSplitExchanges command is a sequence of regular expressions indicating the first letter of each reported subset of symbols or indicating a non-alphabetic character as the first character of the symbol subset.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_split_exchanges_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_split_exchanges_message.name = "ListSplitExchanges"

-- Codes: List Split Exchanges Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_split_exchanges_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG" }

-- Mandatory: List Split Exchanges Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_split_exchanges_message.mandatory = { "5022", "5026" }

-- Dissect: List Split Exchanges Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_split_exchanges_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_split_exchanges_message, buffer(offset, size), "ListSplitExchanges")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.list_split_exchanges_message)
  return offset + size
end

-- List Split Exchanges Response (ListSplitExchanges): ENUM.SRC.ID (4), SYMBOL.TICKER (5), ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_split_exchanges_message.response = { name = "ListSplitExchanges Response" }

-- Answer: List Split Exchanges Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_split_exchanges_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_split_exchanges_response, buffer(offset, size), "ListSplitExchanges")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.list_split_exchanges_message.response)
  return offset + size
end

-- List Subscribed Exchanges Message (ListSubscribedExchanges): Data Subscriptions
-- The ListSubscribedExchanges command lists all the exchanges to which the user is currently subscribed.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_subscribed_exchanges_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_subscribed_exchanges_message.name = "ListSubscribedExchanges"

-- Codes: List Subscribed Exchanges Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_subscribed_exchanges_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG" }

-- Mandatory: List Subscribed Exchanges Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_subscribed_exchanges_message.mandatory = { "5022", "5026" }

-- Dissect: List Subscribed Exchanges Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_subscribed_exchanges_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_subscribed_exchanges_message, buffer(offset, size), "ListSubscribedExchanges")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.list_subscribed_exchanges_message)
  return offset + size
end

-- List Subscribed Exchanges Response (ListSubscribedExchanges): ENUM.SRC.ID (4), ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_subscribed_exchanges_message.response = { name = "ListSubscribedExchanges Response" }

-- Answer: List Subscribed Exchanges Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_subscribed_exchanges_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_subscribed_exchanges_response, buffer(offset, size), "ListSubscribedExchanges")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.list_subscribed_exchanges_message.response)
  return offset + size
end

-- List Subscribed News Message (ListSubscribedNews): Data Subscriptions
-- The ListSubscribedNews command lists all the news sources to which the user is currently subscribed.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_subscribed_news_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_subscribed_news_message.name = "ListSubscribedNews"

-- Codes: List Subscribed News Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_subscribed_news_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG" }

-- Mandatory: List Subscribed News Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_subscribed_news_message.mandatory = { "5022", "5026" }

-- Dissect: List Subscribed News Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_subscribed_news_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_subscribed_news_message, buffer(offset, size), "ListSubscribedNews")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.list_subscribed_news_message)
  return offset + size
end

-- List Subscribed News Response (ListSubscribedNews): ENUM.SRC.ID (4), ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_subscribed_news_message.response = { name = "ListSubscribedNews Response" }

-- Answer: List Subscribed News Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_subscribed_news_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_subscribed_news_response, buffer(offset, size), "ListSubscribedNews")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.list_subscribed_news_message.response)
  return offset + size
end

-- List Subscribed Symbols Message (ListSubscribedSymbols): Data Subscriptions
-- The ListSubscribedSymbols command lists all ticker symbols to which the user is currently subscribed.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_subscribed_symbols_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_subscribed_symbols_message.name = "ListSubscribedSymbols"

-- Codes: List Subscribed Symbols Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_subscribed_symbols_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG" }

-- Mandatory: List Subscribed Symbols Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_subscribed_symbols_message.mandatory = { "5022", "5026" }

-- Dissect: List Subscribed Symbols Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_subscribed_symbols_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_subscribed_symbols_message, buffer(offset, size), "ListSubscribedSymbols")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.list_subscribed_symbols_message)
  return offset + size
end

-- List Subscribed Symbols Response (ListSubscribedSymbols): ENUM.SRC.ID (4), SYMBOL.TICKER (5), ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_subscribed_symbols_message.response = { name = "ListSubscribedSymbols Response" }

-- Answer: List Subscribed Symbols Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_subscribed_symbols_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_subscribed_symbols_response, buffer(offset, size), "ListSubscribedSymbols")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.list_subscribed_symbols_message.response)
  return offset + size
end

-- List System Permission Message (ListSystemPermission): System Information
-- This command lists all of the entitlements of the CSP system. The permission codes that are returned represent exchange sources and news sources.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_system_permission_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_system_permission_message.name = "ListSystemPermission"

-- Codes: List System Permission Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_system_permission_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG" }

-- Mandatory: List System Permission Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_system_permission_message.mandatory = { "5022", "5026" }

-- Dissect: List System Permission Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_system_permission_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_system_permission_message, buffer(offset, size), "ListSystemPermission")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.list_system_permission_message)
  return offset + size
end

-- List System Permission Response (ListSystemPermission): PERMISSION (3), ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_system_permission_message.response = { name = "ListSystemPermission Response" }

-- Answer: List System Permission Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_system_permission_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_system_permission_response, buffer(offset, size), "ListSystemPermission")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.list_system_permission_message.response)
  return offset + size
end

-- List User Permission Message (ListUserPermission): System Information
-- This command lists all of the entitlements of the current user of the CSP system. The returned permission codes represent exchange sources, news sources, and news filter codes. In special cases the command can also be used to list the permissions of other users. If the startup.csp file includes the line OTHER_USER_PERMS=TRUE and if the person issuing the command is permissioned for the news code “PRM”, then the issuer can use the ListUserPermission command with another user ID to query the permissions of the other user.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: USER_NAME (5028)
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_user_permission_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_user_permission_message.name = "ListUserPermission"

-- Codes: List User Permission Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_user_permission_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["5028"] = "USER_NAME" }

-- Mandatory: List User Permission Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_user_permission_message.mandatory = { "5022", "5026" }

-- Dissect: List User Permission Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_user_permission_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_user_permission_message, buffer(offset, size), "ListUserPermission")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.list_user_permission_message)
  return offset + size
end

-- List User Permission Response (ListUserPermission): PERMISSION (3), ENUM.QUERY.STATUS (5001), QUERY.TAG (5026), NEWS.FILTER.CODE (6016)
-- errors: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_user_permission_message.response = { name = "ListUserPermission Response" }

-- Answer: List User Permission Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_user_permission_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_user_permission_response, buffer(offset, size), "ListUserPermission")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.list_user_permission_message.response)
  return offset + size
end

-- List User Tokens Message (ListUserTokens): Data Subscriptions
-- The ListUserTokens command lists all tokens currently on the user’s selected token list.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_user_tokens_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_user_tokens_message.name = "ListUserTokens"

-- Codes: List User Tokens Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_user_tokens_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG" }

-- Mandatory: List User Tokens Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_user_tokens_message.mandatory = { "5022", "5026" }

-- Dissect: List User Tokens Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_user_tokens_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_user_tokens_message, buffer(offset, size), "ListUserTokens")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.list_user_tokens_message)
  return offset + size
end

-- List User Tokens Response (ListUserTokens): ENUM.QUERY.STATUS (5001), QUERY.TAG (5026), CTF.TOKEN.NUM (5035)
-- errors: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_user_tokens_message.response = { name = "ListUserTokens Response" }

-- Answer: List User Tokens Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.list_user_tokens_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.list_user_tokens_response, buffer(offset, size), "ListUserTokens")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.list_user_tokens_message.response)
  return offset + size
end

-- Login User Message (LoginUser): Login
-- The LoginUser command lets users log into the system. Each user must have a valid username and password. After a successful login, if a user attempts to log in a second time with the same username and password to another TCP socket, the system rejects the attempt and closes the second TCP socket without sending a response message.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026), USER_NAME (5028), USER.PASSWORD (5029)
-- optional: FORCE.LOGIN (5079), CTF.COMPRESSED (13265), CONFLATE.INDICATOR (5201)
ice_icedataservices_asx24futures_ctf_v2025_01_21.login_user_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.login_user_message.name = "LoginUser"

-- Codes: Login User Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.login_user_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["5028"] = "USER_NAME", ["5029"] = "USER.PASSWORD", ["5079"] = "FORCE.LOGIN", ["13265"] = "CTF.COMPRESSED", ["5201"] = "CONFLATE.INDICATOR" }

-- Mandatory: Login User Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.login_user_message.mandatory = { "5022", "5026", "5028", "5029" }

-- Dissect: Login User Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.login_user_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.login_user_message, buffer(offset, size), "LoginUser")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.login_user_message)
  return offset + size
end

-- Login User Response (LoginUser): ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: ERR_AUTH_TWICE_PROXY_110 (-139), ERR_AUTH_LOGIN_PROXY_108 (-137), ERR_REQ_INVALID (-46), ERR_AUTH_LOGIN_COUNT (-6), ERR_AUTH_LOGIN (-5), Successful login (0)
ice_icedataservices_asx24futures_ctf_v2025_01_21.login_user_message.response = { name = "LoginUser Response" }
ice_icedataservices_asx24futures_ctf_v2025_01_21.login_user_message.response.errors = {
  ["-139"] = { name = "ERR_AUTH_TWICE_PROXY_110", shown = "ERR_AUTH_TWICE_PROXY_110: User already logged in" },
  ["-137"] = { name = "ERR_AUTH_LOGIN_PROXY_108", shown = "ERR_AUTH_LOGIN_PROXY_108: Incorrect username or password" },
  ["-46"] = { name = "ERR_REQ_INVALID", shown = "ERR_REQ_INVALID: QUERY.COMMAND is missing or specifies an unrecognized command" },
  ["-6"] = { name = "ERR_AUTH_LOGIN_COUNT", shown = "ERR_AUTH_LOGIN_COUNT: User already logged in via this TCP socket" },
  ["-5"] = { name = "ERR_AUTH_LOGIN", shown = "ERR_AUTH_LOGIN: Incorrect username or password. After returning the error message, the server closes this TCP socket." },
  ["0"] = { name = "", shown = "Successful login" },
}

-- Answer: Login User Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.login_user_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.login_user_response, buffer(offset, size), "LoginUser")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.login_user_message.response)
  return offset + size
end

-- Query Depth And Subscribe Message (QueryDepthAndSubscribe): Data Queries
-- The QueryDepthAndSubscribe command combines the QueryDepth command with features of the Subscribe command. When issued, it subscribes the user for streaming updates and then requests a snapshot to make sure that no updates have been missed.
-- mandatory: ENUM.SRC.ID (4), SYMBOL.TICKER (5), QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_depth_and_subscribe_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_depth_and_subscribe_message.name = "QueryDepthAndSubscribe"

-- Codes: Query Depth And Subscribe Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_depth_and_subscribe_message.codes = { ["4"] = "ENUM.SRC.ID", ["5"] = "SYMBOL.TICKER", ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG" }

-- Mandatory: Query Depth And Subscribe Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_depth_and_subscribe_message.mandatory = { "4", "5", "5022", "5026" }

-- Dissect: Query Depth And Subscribe Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_depth_and_subscribe_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_depth_and_subscribe_message, buffer(offset, size), "QueryDepthAndSubscribe")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.query_depth_and_subscribe_message)
  return offset + size
end

-- Query Depth And Subscribe Response (QueryDepthAndSubscribe): ENUM.SRC.ID (4), SYMBOL.TICKER (5), ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: ERR_REQ_INVALID (-46), ERR_PARAM_MISSING (-36)
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_depth_and_subscribe_message.response = { name = "QueryDepthAndSubscribe Response" }
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_depth_and_subscribe_message.response.errors = {
  ["-46"] = { name = "ERR_REQ_INVALID", shown = "ERR_REQ_INVALID: - ENUM.SRC.ID is not a source configured to store depth order books, or - QUERY.COMMAND is missing or specifies an unrecognized command. - PART.CODE or MM.ID was supplied as a parameter in the command. They are not allowed." },
  ["-36"] = { name = "ERR_PARAM_MISSING", shown = "ERR_PARAM_MISSING: SYMBOL.TICKER or ENUM.SRC.ID is missing." },
}

-- Answer: Query Depth And Subscribe Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_depth_and_subscribe_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_depth_and_subscribe_response, buffer(offset, size), "QueryDepthAndSubscribe")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.query_depth_and_subscribe_message.response)
  return offset + size
end

-- Query Depth Message (QueryDepth): Data Queries
-- The QueryDepth command queries the depth database for bid, ask, market maker, and other information for a given instrument. Only one instance of SYMBOL.TICKER is permitted in the command. The SelectUserTokens command will not work along with the QueryDepth command. The tokens returned in the response are set and not configurable. (A token will be in the snapshot database if there is current data for it.)
-- mandatory: ENUM.SRC.ID (4), SYMBOL.TICKER (5), QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: MM.ID (355), CTF.TOKEN.NUM (5035)
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_depth_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_depth_message.name = "QueryDepth"

-- Codes: Query Depth Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_depth_message.codes = { ["4"] = "ENUM.SRC.ID", ["5"] = "SYMBOL.TICKER", ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["355"] = "MM.ID", ["5035"] = "CTF.TOKEN.NUM" }

-- Mandatory: Query Depth Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_depth_message.mandatory = { "4", "5", "5022", "5026" }

-- Dissect: Query Depth Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_depth_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_depth_message, buffer(offset, size), "QueryDepth")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.query_depth_message)
  return offset + size
end

-- Query Depth Response (QueryDepth): PERMISSION (3), ENUM.SRC.ID (4), SYMBOL.TICKER (5), ENUM.QUERY.STATUS (5001), QUERY.TAG (5026), ASK.PRICE (10), ASK.SIZE (11), BID.PRICE (12), BID.SIZE (13), QUOTE.DATETIME (20), MM.ID (355), QUOTE.COND_2 (2001), TRADE.COND_1 (2500)
-- errors: ERR_REQ_INVALID (-46), ERR_PARAM_MISSING (-36)
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_depth_message.response = { name = "QueryDepth Response" }
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_depth_message.response.errors = {
  ["-46"] = { name = "ERR_REQ_INVALID", shown = "ERR_REQ_INVALID: - ENUM.SRC.ID is not a source configured to store depth order books, or - QUERY.COMMAND is missing or specifies an unrecognized command." },
  ["-36"] = { name = "ERR_PARAM_MISSING", shown = "ERR_PARAM_MISSING: SYMBOL.TICKER or ENUM.SRC.ID is missing." },
}

-- Answer: Query Depth Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_depth_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_depth_response, buffer(offset, size), "QueryDepth")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.query_depth_message.response)
  return offset + size
end

-- Query Snap And Subscribe Message (QuerySnapAndSubscribe): Data Queries
-- The QuerySnapAndSubscribe command combines the QuerySnap command with features of the Subscribe command. When issued, it subscribes the user for streaming updates and then requests a snapshot to make sure that no updates have been missed. Unlike the Subscribe command, it does not let the user subscribe to all instruments across all exchanges. The derivative chain feature is supported by the QuerySnapAndSubscribe command. Product root chaining is supported for futures and options chains by doing a QuerySnapAndSubscribe by PRODUCT.ROOT. This request can be supported using QuerySnap, Subscribe, or QuerySnapAndSubscribe. In the startup.csp file there needs to be a line: ALTERNATE_INDEX_WITH_SRCID=PRODUCT.ROOT. The QuerySnapAndSubscribe command can also be used to generate trade- safe conflated data using the CTF token CONFLATION. If alternate indexes have been set up in the startup.csp file of the CSP, the QuerySnapAndSubscribe command can accept alternate index values and will query the snapshot database for a specified index. For example, if CUSIP numbers have been set up as an alternate index, the QuerySnapAndSubscribe command can be used to query the database for a given CUSIP number. The available alternate indexes are CUSIP, ISIN, and SEDOL.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: ENUM.SRC.ID (4), SYMBOL.TICKER (5), CONFLATION (2035), SYMBOL.UNDERLYING.TICKER (3083), ENUM.SRC.UNDERLYING.ID (3130), CUSIP (3123), ISIN (3125), SEDOL (3126), PRODUCT.ROOT (3974)
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_snap_and_subscribe_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_snap_and_subscribe_message.name = "QuerySnapAndSubscribe"

-- Codes: Query Snap And Subscribe Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_snap_and_subscribe_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["4"] = "ENUM.SRC.ID", ["5"] = "SYMBOL.TICKER", ["2035"] = "CONFLATION", ["3083"] = "SYMBOL.UNDERLYING.TICKER", ["3130"] = "ENUM.SRC.UNDERLYING.ID", ["3123"] = "CUSIP", ["3125"] = "ISIN", ["3126"] = "SEDOL", ["3974"] = "PRODUCT.ROOT" }

-- Mandatory: Query Snap And Subscribe Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_snap_and_subscribe_message.mandatory = { "5022", "5026" }

-- Dissect: Query Snap And Subscribe Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_snap_and_subscribe_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_snap_and_subscribe_message, buffer(offset, size), "QuerySnapAndSubscribe")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.query_snap_and_subscribe_message)
  return offset + size
end

-- Query Snap And Subscribe Response (QuerySnapAndSubscribe): PERMISSION (3), ENUM.SRC.ID (4), SYMBOL.TICKER (5), ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: ERR_REQ_INVALID (-46), ERR_PARAM_MISSING (-36), ERR_PARAM_BOUNDARY (-33), ERR_AUTH_REQ (-12), WARN_NO_DATA_FOUND (14)
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_snap_and_subscribe_message.response = { name = "QuerySnapAndSubscribe Response" }
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_snap_and_subscribe_message.response.errors = {
  ["-46"] = { name = "ERR_REQ_INVALID", shown = "ERR_REQ_INVALID: QUERY.COMMAND is missing or specifies an unrecognized command." },
  ["-36"] = { name = "ERR_PARAM_MISSING", shown = "ERR_PARAM_MISSING: SYMBOL.TICKER is supplied but ENUM.SRC.ID is missing; OR SYMBOL.UNDERLYING.TICKER is supplied but ENUM.SRC.UNDERLYING.ID is missing; OR no arguments are supplied." },
  ["-33"] = { name = "ERR_PARAM_BOUNDARY", shown = "ERR_PARAM_BOUNDARY: ENUM.SRC.ID or ENUM.SRC.UNDERLYING.ID is out of range." },
  ["-12"] = { name = "ERR_AUTH_REQ", shown = "ERR_AUTH_REQ: User does not have entitlement for the requested exchange" },
  ["14"] = { name = "WARN_NO_DATA_FOUND", shown = "WARN_NO_DATA_FOUND: Currently there is no record for one or more symbols requested." },
}

-- Answer: Query Snap And Subscribe Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_snap_and_subscribe_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_snap_and_subscribe_response, buffer(offset, size), "QuerySnapAndSubscribe")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.query_snap_and_subscribe_message.response)
  return offset + size
end

-- Query Snap Message (QuerySnap): Data Queries
-- The QuerySnap command queries the snapshot database for market data. The tokens returned in the response are tokens that are both on the user’s token list (created by the SelectUserTokens command) and populated in the snapshot database. (A token will be in the snapshot database if there is current data for it.) The CSP accepts a level 2 exchange ID (ENUM.SRC.ID), e.g., 9 for NASDAQ level 2, and returns level 1 snapshot information for each symbol. The QuerySnap command supports the derivative chain feature. If the request includes ENUM.SRC.UNDERLYING.ID set to the source ID and SYMBOL.UNDERLYING.TICKER set to the ticker symbol, the command will query all the options, warrants, and other derivatives associated with the underlying symbol at every exchange. To limit the response to just one exchange, the user can include the ENUM.SRC.ID token with the value set to that exchange. Product root chaining is supported for futures and options chains by doing a QuerySnap by PRODUCT.ROOT. This request can be supported using QuerySnap, Subscribe, or QuerySnapAndSubscribe. In the startup.csp file there needs to be a line: ALTERNATE_INDEX_WITH_SRCID=PRODUCT.ROOT. If alternate indexes have been set up in the startup.csp file of the CSP, the QuerySnap command can accept alternate index values and will query the snapshot database for a specified index. For example, if CUSIP numbers have been set up as an alternate index, the QuerySnap command can be used to query the database for a given CUSIP number. The available alternate indexes are CUSIP, ISIN, and SEDOL.
-- mandatory: ENUM.SRC.ID (4), QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: SYMBOL.TICKER (5), SYMBOL.UNDERLYING.TICKER (3083), ENUM.SRC.UNDERLYING.ID (3130), CUSIP (3123), ISIN (3125), SEDOL (3126), PRODUCT.ROOT (3974)
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_snap_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_snap_message.name = "QuerySnap"

-- Codes: Query Snap Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_snap_message.codes = { ["4"] = "ENUM.SRC.ID", ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["5"] = "SYMBOL.TICKER", ["3083"] = "SYMBOL.UNDERLYING.TICKER", ["3130"] = "ENUM.SRC.UNDERLYING.ID", ["3123"] = "CUSIP", ["3125"] = "ISIN", ["3126"] = "SEDOL", ["3974"] = "PRODUCT.ROOT" }

-- Mandatory: Query Snap Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_snap_message.mandatory = { "4", "5022", "5026" }

-- Dissect: Query Snap Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_snap_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_snap_message, buffer(offset, size), "QuerySnap")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.query_snap_message)
  return offset + size
end

-- Query Snap Response (QuerySnap): PERMISSION (3), ENUM.SRC.ID (4), SYMBOL.TICKER (5), ENUM.QUERY.STATUS (5001), QUERY.TAG (5026), ASK.PRICE (10), BID.PRICE (12)
-- errors: ERR_REQ_INVALID (-46), ERR_PARAM_MISSING (-36), ERR_PARAM_BOUNDARY (-33), ERR_AUTH_REQ (-12)
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_snap_message.response = { name = "QuerySnap Response" }
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_snap_message.response.errors = {
  ["-46"] = { name = "ERR_REQ_INVALID", shown = "ERR_REQ_INVALID: QUERY.COMMAND is missing or specifies an unrecognized command." },
  ["-36"] = { name = "ERR_PARAM_MISSING", shown = "ERR_PARAM_MISSING: SYMBOL.TICKER is supplied but ENUM.SRC.ID is missing; OR SYMBOL.UNDERLYING.TICKER is supplied but ENUM.SRC.UNDERLYING.ID is missing." },
  ["-33"] = { name = "ERR_PARAM_BOUNDARY", shown = "ERR_PARAM_BOUNDARY: ENUM.SRC.ID or ENUM.SRC.UNDERLYING.ID is out of range." },
  ["-12"] = { name = "ERR_AUTH_REQ", shown = "ERR_AUTH_REQ: User does not have entitlement for the requested exchange" },
}

-- Answer: Query Snap Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_snap_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_snap_response, buffer(offset, size), "QuerySnap")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.query_snap_message.response)
  return offset + size
end

-- Query Subscribed Exchanges Message (QuerySubscribedExchanges): Data Queries
-- The QuerySubscribedExchanges command queries all the instruments on each exchange to which the user is subscribed. The tokens returned are both on the user’s token list and populated in the snapshot database.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: MM.ID (355)
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_subscribed_exchanges_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_subscribed_exchanges_message.name = "QuerySubscribedExchanges"

-- Codes: Query Subscribed Exchanges Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_subscribed_exchanges_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["355"] = "MM.ID" }

-- Mandatory: Query Subscribed Exchanges Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_subscribed_exchanges_message.mandatory = { "5022", "5026" }

-- Dissect: Query Subscribed Exchanges Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_subscribed_exchanges_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_subscribed_exchanges_message, buffer(offset, size), "QuerySubscribedExchanges")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.query_subscribed_exchanges_message)
  return offset + size
end

-- Query Subscribed Exchanges Response (QuerySubscribedExchanges): ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_subscribed_exchanges_message.response = { name = "QuerySubscribedExchanges Response" }

-- Answer: Query Subscribed Exchanges Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_subscribed_exchanges_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_subscribed_exchanges_response, buffer(offset, size), "QuerySubscribedExchanges")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.query_subscribed_exchanges_message.response)
  return offset + size
end

-- Query Subscribed Symbols Message (QuerySubscribedSymbols): Data Queries
-- This command queries the snapshot database for each instrument to which the user is subscribed. The tokens returned in the response are tokens that are both on the user’s token list and populated in the snapshot database.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: MM.ID (355)
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_subscribed_symbols_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_subscribed_symbols_message.name = "QuerySubscribedSymbols"

-- Codes: Query Subscribed Symbols Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_subscribed_symbols_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["355"] = "MM.ID" }

-- Mandatory: Query Subscribed Symbols Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_subscribed_symbols_message.mandatory = { "5022", "5026" }

-- Dissect: Query Subscribed Symbols Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_subscribed_symbols_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_subscribed_symbols_message, buffer(offset, size), "QuerySubscribedSymbols")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.query_subscribed_symbols_message)
  return offset + size
end

-- Query Subscribed Symbols Response (QuerySubscribedSymbols): ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_subscribed_symbols_message.response = { name = "QuerySubscribedSymbols Response" }

-- Answer: Query Subscribed Symbols Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_subscribed_symbols_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_subscribed_symbols_response, buffer(offset, size), "QuerySubscribedSymbols")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.query_subscribed_symbols_message.response)
  return offset + size
end

-- Query Wild Card Message (QueryWildCard): Data Queries
-- The QueryWildCard command lets users query the snapshot database for market data using as search criteria either explicit token values or regular expression patterns in token values. The command accepts multiple criteria and patterns. To indicate a pattern, enclose the entire regular expression in braces “{regular expression}”. The tokens returned in the response are the same as the tokens returned by the QuerySnap command. The QueryWildCard command supports the derivative chain feature. Note: To represent a pipe character, ‘|’, in a regular expression, use the tilde, ‘~’, in its place to avoid conflicts with the CTF protocol, which uses the pipe character as a delimiter between token=value pairs. The CSP does not accept wildcard values for the following tokens: • ENUM.SRC.ID • ENUM.SRC.UNDERLYING.ID • SYMBOL.UNDERLYING.TICKER If one of these tokens is used in a QueryWildCard command, the CSP returns a negative value for ENUM.QUERY.STATUS.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: ENUM.SRC.ID (4), SYMBOL.TICKER (5), SYMBOL.UNDERLYING.TICKER (3083), ENUM.SRC.UNDERLYING.ID (3130)
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_wild_card_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_wild_card_message.name = "QueryWildCard"

-- Codes: Query Wild Card Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_wild_card_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["4"] = "ENUM.SRC.ID", ["5"] = "SYMBOL.TICKER", ["3083"] = "SYMBOL.UNDERLYING.TICKER", ["3130"] = "ENUM.SRC.UNDERLYING.ID" }

-- Mandatory: Query Wild Card Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_wild_card_message.mandatory = { "5022", "5026" }

-- Dissect: Query Wild Card Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_wild_card_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_wild_card_message, buffer(offset, size), "QueryWildCard")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.query_wild_card_message)
  return offset + size
end

-- Query Wild Card Response (QueryWildCard): PERMISSION (3), ENUM.SRC.ID (4), SYMBOL.TICKER (5), ENUM.QUERY.STATUS (5001), QUERY.TAG (5026), ASK.PRICE (10), BID.PRICE (12)
-- errors: ERR_NO_DATA_FOUND (-182), ERR_REQ_INVALID (-46), ERR_PARAM_MISSING (-36), ERR_PARAM_BOUNDARY (-33)
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_wild_card_message.response = { name = "QueryWildCard Response" }
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_wild_card_message.response.errors = {
  ["-182"] = { name = "ERR_NO_DATA_FOUND", shown = "ERR_NO_DATA_FOUND: The command includes a wildcard value for an explicitly excluded token." },
  ["-46"] = { name = "ERR_REQ_INVALID", shown = "ERR_REQ_INVALID: QUERY.COMMAND is missing or specifies an unrecognized command." },
  ["-36"] = { name = "ERR_PARAM_MISSING", shown = "ERR_PARAM_MISSING: SYMBOL.UNDERLYING.TICKER is supplied but ENUM.SRC.UNDERLYING.ID is missing." },
  ["-33"] = { name = "ERR_PARAM_BOUNDARY", shown = "ERR_PARAM_BOUNDARY: ENUM.SRC.ID or ENUM.SRC.UNDERLYING.ID is not valid." },
}

-- Answer: Query Wild Card Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_wild_card_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_wild_card_response, buffer(offset, size), "QueryWildCard")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.query_wild_card_message.response)
  return offset + size
end

-- Query Xref Message (QueryXref): Data Queries
-- This command queries the CSP for reference data for a specified instrument on a given source ID. The SelectUserTokens command can also be used with QueryXref to limit the response to the reference data tokens of interest to the user. If the user does not specify SYMBOL.TICKER, the command will return reference data for all tickers on the given source ID. If the user has the news code SMI entitled, he will be able to issue a QueryXref command and see the results, but he will not be able to subscribe to or snap normal data.
-- mandatory: ENUM.SRC.ID (4), QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: SYMBOL.TICKER (5)
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_xref_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_xref_message.name = "QueryXref"

-- Codes: Query Xref Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_xref_message.codes = { ["4"] = "ENUM.SRC.ID", ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["5"] = "SYMBOL.TICKER" }

-- Mandatory: Query Xref Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_xref_message.mandatory = { "4", "5022", "5026" }

-- Dissect: Query Xref Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_xref_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_xref_message, buffer(offset, size), "QueryXref")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.query_xref_message)
  return offset + size
end

-- Query Xref Response (QueryXref): PERMISSION (3), ENUM.SRC.ID (4), SYMBOL.TICKER (5), ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: ERR_REQ_INVALID (-46), ERR_PARAM_MISSING (-36), ERR_AUTH_REQ (-12)
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_xref_message.response = { name = "QueryXref Response" }
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_xref_message.response.errors = {
  ["-46"] = { name = "ERR_REQ_INVALID", shown = "ERR_REQ_INVALID: QUERY.COMMAND is missing or specifies an unrecognized command." },
  ["-36"] = { name = "ERR_PARAM_MISSING", shown = "ERR_PARAM_MISSING: ENUM.SRC.ID is missing." },
  ["-12"] = { name = "ERR_AUTH_REQ", shown = "ERR_AUTH_REQ: CSP is not entitled for the permission requested." },
}

-- Answer: Query Xref Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.query_xref_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.query_xref_response, buffer(offset, size), "QueryXref")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.query_xref_message.response)
  return offset + size
end

-- Select Available Tokens Message (SelectAvailableTokens): Data Subscriptions
-- The SelectAvailableTokens command lets the user set all available tokens to the user’s token list. The user’s token list is used for database queries and for certain output modes. Each time this command is issued the previously defined set of tokens is removed.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.select_available_tokens_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.select_available_tokens_message.name = "SelectAvailableTokens"

-- Codes: Select Available Tokens Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.select_available_tokens_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG" }

-- Mandatory: Select Available Tokens Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.select_available_tokens_message.mandatory = { "5022", "5026" }

-- Dissect: Select Available Tokens Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.select_available_tokens_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.select_available_tokens_message, buffer(offset, size), "SelectAvailableTokens")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.select_available_tokens_message)
  return offset + size
end

-- Select Available Tokens Response (SelectAvailableTokens): ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.select_available_tokens_message.response = { name = "SelectAvailableTokens Response" }

-- Answer: Select Available Tokens Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.select_available_tokens_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.select_available_tokens_response, buffer(offset, size), "SelectAvailableTokens")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.select_available_tokens_message.response)
  return offset + size
end

-- Select Output Message (SelectOutput): Data Subscriptions
-- The SelectOutput command lets a user control the tokens and types of messages that are received from streaming data. The Select Output command can be sent with any number of the fields shown below, any fields not included with the command are assumed to be set to the default state. CSP.OUTPUT_TOKEN (default state: Standard): allows customers to set the token output mode. There are three available modes for token output: Standard, User and the combination StandardAndUser. Standard mode accepts tokens from the feed (including derived tokens such as TRADE.HIGH etc) that have changed. User mode accepts only the tokens that are set via the SelectUserTokens command. StandardAndUser mode accepts both the standard and the user tokens. Note: User and StandardAndUser modes should be selected only in special situations. It causes all user tokens to be output with each message, whether or not they have changed, and consequently increases the volume of data output CSP.OUTPUT_STATE (default state: OFF): Controls if the CSP outputs data. If set to OFF no real-time, refresh or news messages will be sent unless an explicit subscription is issued with the Subscribe command CSP.NEWS (default state: OFF): Controls if news messages are sent along with market data. If set to OFF, news messages are only sent with an explicit subscription to a news source using the Subscribe command. If set to ON, news messages are sent with market data messages when the CSP output state is set ON or an explicit subscription is issued for market data.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: CSP.NEWS (5005), CSP.OUTPUT_STATE (5018), CSP.OUTPUT_TOKENS (5019)
ice_icedataservices_asx24futures_ctf_v2025_01_21.select_output_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.select_output_message.name = "SelectOutput"

-- Codes: Select Output Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.select_output_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["5005"] = "CSP.NEWS", ["5018"] = "CSP.OUTPUT_STATE", ["5019"] = "CSP.OUTPUT_TOKENS" }

-- Mandatory: Select Output Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.select_output_message.mandatory = { "5022", "5026" }

-- Dissect: Select Output Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.select_output_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.select_output_message, buffer(offset, size), "SelectOutput")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.select_output_message)
  return offset + size
end

-- Select Output Response (SelectOutput): ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.select_output_message.response = { name = "SelectOutput Response" }

-- Answer: Select Output Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.select_output_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.select_output_response, buffer(offset, size), "SelectOutput")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.select_output_message.response)
  return offset + size
end

-- Select User Filter Tokens Message (SelectUserFilterTokens): Data Subscriptions
-- With this command, clients can now make a request, and specify a specific list of tokens they want to receive in the result. Only these tokens will be returned on the snap or the update. These tokens will only be returned when one of the tokens has an updated value. This allows clients to get only the tokens they care about, as well as optimizing the bandwidth on the wire by the CSP only sending the tokens the client cares about. This capability can be used in conjunction with Conflation (see Sec. 1.2.8), Compression (see Sec 1.2.9), and Server-Side Filtering (see Sec. 1.2.12).
-- mandatory: ENUM.SRC.ID (4), QUERY.COMMAND (5022), QUERY.TAG (5026), CTF.TOKEN.NUM (5035)
-- optional: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.select_user_filter_tokens_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.select_user_filter_tokens_message.name = "SelectUserFilterTokens"

-- Codes: Select User Filter Tokens Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.select_user_filter_tokens_message.codes = { ["4"] = "ENUM.SRC.ID", ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["5035"] = "CTF.TOKEN.NUM" }

-- Mandatory: Select User Filter Tokens Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.select_user_filter_tokens_message.mandatory = { "4", "5022", "5026", "5035" }

-- Dissect: Select User Filter Tokens Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.select_user_filter_tokens_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.select_user_filter_tokens_message, buffer(offset, size), "SelectUserFilterTokens")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.select_user_filter_tokens_message)
  return offset + size
end

-- Select User Filter Tokens Response (SelectUserFilterTokens): ENUM.SRC.ID (4), ENUM.QUERY.STATUS (5001), CTF.TOKEN.NAME (5010), QUERY.TAG (5026), CTF.TOKEN.NUM (5035)
-- errors: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.select_user_filter_tokens_message.response = { name = "SelectUserFilterTokens Response" }

-- Answer: Select User Filter Tokens Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.select_user_filter_tokens_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.select_user_filter_tokens_response, buffer(offset, size), "SelectUserFilterTokens")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.select_user_filter_tokens_message.response)
  return offset + size
end

-- Select User Tokens Message (SelectUserTokens): Data Subscriptions
-- The SelectUserTokens command lets the user define a specific set of tokens to be returned on database queries and in certain output modes. The set is defined by including multiple instances of |5035=x| in the command, one for each required token, where x is the number of the token. If too many tokens are requested (context dependent), the command returns ENUM.QUERY.STATUS=-61. Each time this command is issued the previously defined set of tokens is removed.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026), CTF.TOKEN.NUM (5035)
-- optional: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.select_user_tokens_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.select_user_tokens_message.name = "SelectUserTokens"

-- Codes: Select User Tokens Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.select_user_tokens_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["5035"] = "CTF.TOKEN.NUM" }

-- Mandatory: Select User Tokens Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.select_user_tokens_message.mandatory = { "5022", "5026", "5035" }

-- Dissect: Select User Tokens Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.select_user_tokens_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.select_user_tokens_message, buffer(offset, size), "SelectUserTokens")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.select_user_tokens_message)
  return offset + size
end

-- Select User Tokens Response (SelectUserTokens): ENUM.QUERY.STATUS (5001), QUERY.TAG (5026), TRADE.PRICE (8), TRADE.SIZE (9), INSTR_NAME (3127), ISIN (3125)
-- errors: ERR_TOKEN_COUNT (-61), ERR_REQ_INVALID (-46), ERR_EXIST_TOKEN (-24), ERR_AUTH_TOKEN (-14)
ice_icedataservices_asx24futures_ctf_v2025_01_21.select_user_tokens_message.response = { name = "SelectUserTokens Response" }
ice_icedataservices_asx24futures_ctf_v2025_01_21.select_user_tokens_message.response.errors = {
  ["-61"] = { name = "ERR_TOKEN_COUNT", shown = "ERR_TOKEN_COUNT: Too many tokens have been requested (context dependent)." },
  ["-46"] = { name = "ERR_REQ_INVALID", shown = "ERR_REQ_INVALID: QUERY.COMMAND is missing or specifies an unrecognized command." },
  ["-24"] = { name = "ERR_EXIST_TOKEN", shown = "ERR_EXIST_TOKEN: Requested token does not exist." },
  ["-14"] = { name = "ERR_AUTH_TOKEN", shown = "ERR_AUTH_TOKEN: The user is not authorized for that token." },
}

-- Answer: Select User Tokens Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.select_user_tokens_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.select_user_tokens_response, buffer(offset, size), "SelectUserTokens")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.select_user_tokens_message.response)
  return offset + size
end

-- Set Conflation Interval Message (SetConflationInterval): System Information
-- This command allows users to set the current conflation interval for the connection. The interval is expressed in milliseconds, and the valid range is 1 ms to 60000 ms (1 minute). There is only one conflation interval per connection. If using the CSA, the same interval will be used for all of the CSPs.
-- mandatory: CONFLATION.INTERVAL (2029), QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.set_conflation_interval_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.set_conflation_interval_message.name = "SetConflationInterval"

-- Codes: Set Conflation Interval Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.set_conflation_interval_message.codes = { ["2029"] = "CONFLATION.INTERVAL", ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG" }

-- Mandatory: Set Conflation Interval Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.set_conflation_interval_message.mandatory = { "2029", "5022", "5026" }

-- Dissect: Set Conflation Interval Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.set_conflation_interval_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.set_conflation_interval_message, buffer(offset, size), "SetConflationInterval")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.set_conflation_interval_message)
  return offset + size
end

-- Set Conflation Interval Response (SetConflationInterval): ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: none
ice_icedataservices_asx24futures_ctf_v2025_01_21.set_conflation_interval_message.response = { name = "SetConflationInterval Response" }

-- Answer: Set Conflation Interval Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.set_conflation_interval_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.set_conflation_interval_response, buffer(offset, size), "SetConflationInterval")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.set_conflation_interval_message.response)
  return offset + size
end

-- Subscribe Message (Subscribe): Data Subscriptions
-- The Subscribe command specifies the streaming market data that the user will receive. There are no default subscriptions, and the user must issue this command to receive any market data during a session. The CSP user can subscribe to all market data, all data on a per exchange basis, or specific instruments. User and StandardAndUser modes should be selected only in special situations when using the Subscribe command. It causes user selected tokens to be output with each message, whether or not they have updated. Consequently, this will increase the volume of data output and possibly result in misleading data. The Subscribe command supports the derivative chain feature. If the request includes ENUM.SRC.UNDERLYING.ID set to the source ID and SYMBOL.UNDERLYING.TICKER set to the ticker symbol, the command will subscribe to all the options, warrants, and other derivatives associated with the underlying symbol at every exchange. To limit the response to just one exchange, the user can include the ENUM.SRC.ID token with the value set to that exchange. For example, if ENUM.SRC.UNDERLYING.ID is set to 558 for NYSE Composite and SYMBOL.UNDERLYING.TICKER is set to IBM, the command will subscribe to all the options, warrants, and other derivatives associated with IBM at every exchange. If the command also includes ENUM.SRC.ID set to 559, the response will be limited to IBM derivatives on the OPRA Composite exchange. Product root chaining is supported for futures and options chains by doing a subscription by PRODUCT.ROOT. This request can be supported using QuerySnap, Subscribe, or QuerySnapAndSubscribe. In the startup.csp file there needs to be a line: ALTERNATE_INDEX_WITH_SRCID=PRODUCT.ROOT. The Subscribe command can also be used to generate trade-safe conflated data using the CTF token CONFLATION. If alternate indexes have been set up in the startup.csp file of the CSP, the Subscribe command can accept alternate index values and will subscribe to a specified index. For example, if CUSIP numbers have been set up as an alternate index, the Subscribe command can be used to subscribe to a given CUSIP number. The available alternate indexes are CUSIP, ISIN, and SEDOL.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: ENUM.SRC.ID (4), SYMBOL.TICKER (5), CONFLATION (2035), SYMBOL.UNDERLYING.TICKER (3083), ENUM.SRC.UNDERLYING.ID (3130), CUSIP (3123), ISIN (3125), SEDOL (3126), PRODUCT.ROOT (3974)
ice_icedataservices_asx24futures_ctf_v2025_01_21.subscribe_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.subscribe_message.name = "Subscribe"

-- Codes: Subscribe Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.subscribe_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["4"] = "ENUM.SRC.ID", ["5"] = "SYMBOL.TICKER", ["2035"] = "CONFLATION", ["3083"] = "SYMBOL.UNDERLYING.TICKER", ["3130"] = "ENUM.SRC.UNDERLYING.ID", ["3123"] = "CUSIP", ["3125"] = "ISIN", ["3126"] = "SEDOL", ["3974"] = "PRODUCT.ROOT" }

-- Mandatory: Subscribe Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.subscribe_message.mandatory = { "5022", "5026" }

-- Dissect: Subscribe Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.subscribe_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.subscribe_message, buffer(offset, size), "Subscribe")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.subscribe_message)
  return offset + size
end

-- Subscribe Response (Subscribe): ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: REQ_ENUMSCRCID_PROXY_136 (-165), ERR_REQ_INVALID (-46), ERR_PARAM_MISSING (-36), ERR_PARAM_BOUNDARY (-33), ERR_AUTH_TOPIC_SUBSCRIBE (-18), ERR_AUTH_REQ (-12)
ice_icedataservices_asx24futures_ctf_v2025_01_21.subscribe_message.response = { name = "Subscribe Response" }
ice_icedataservices_asx24futures_ctf_v2025_01_21.subscribe_message.response.errors = {
  ["-165"] = { name = "REQ_ENUMSCRCID_PROXY_136", shown = "REQ_ENUMSCRCID_PROXY_136: ENUM.SRC.ID is missing" },
  ["-46"] = { name = "ERR_REQ_INVALID", shown = "ERR_REQ_INVALID: - Command includes an argument that is not from the mandatory or optional list, or - An optional argument is supplied more than once, or - ENUM.SRC.UNDERLYING. ID is supplied but SYMBOL.UNDERLYING. TICKER is not." },
  ["-36"] = { name = "ERR_PARAM_MISSING", shown = "ERR_PARAM_MISSING: - SYMBOL.TICKER is supplied but ENUM.SRC.ID is not; or - SYMBOL.UNDERLYING. TICKER is supplied but ENUM.SRC.UNDERLYING. ID is not." },
  ["-33"] = { name = "ERR_PARAM_BOUNDARY", shown = "ERR_PARAM_BOUNDARY: ENUM.SRC.ID or ENUM.SRC.UNDERLYING. ID is out of range." },
  ["-18"] = { name = "ERR_AUTH_TOPIC_SUBSCRIBE", shown = "ERR_AUTH_TOPIC_SUBSCRIBE: ENUM.SRC.ID not entitled or out of range." },
  ["-12"] = { name = "ERR_AUTH_REQ", shown = "ERR_AUTH_REQ: User does not have entitlement for the requested exchange." },
}

-- Answer: Subscribe Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.subscribe_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.subscribe_response, buffer(offset, size), "Subscribe")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.subscribe_message.response)
  return offset + size
end

-- Unsubscribe Message (Unsubscribe): Data Subscriptions
-- The Unsubscribe command cancels a previous Subscribe command. If the Subscribe command was issued with no optional parameters in order to subscribe to the entire data feed, it can be canceled by issuing the Unsubscribe command, in the same way, with no optional parameters. If the Subscribe command was issued for a specific exchange, it can be canceled by issuing the Unsubscribe command for the same exchange. If the Subscribe command was issued for a specific exchange and an instrument on that exchange, it can be canceled by issuing the Unsubscribe command for the same exchange and instrument. The Unsubscribe command with no optional arguments does not cancel subscriptions to exchanges or instruments that have been previously explicitly subscribed with the Subscribe command. The Unsubscribe command supports the derivative chain feature.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: ENUM.SRC.ID (4), SYMBOL.TICKER (5), SYMBOL.UNDERLYING.TICKER (3083), ENUM.SRC.UNDERLYING.ID (3130)
ice_icedataservices_asx24futures_ctf_v2025_01_21.unsubscribe_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.unsubscribe_message.name = "Unsubscribe"

-- Codes: Unsubscribe Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.unsubscribe_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["4"] = "ENUM.SRC.ID", ["5"] = "SYMBOL.TICKER", ["3083"] = "SYMBOL.UNDERLYING.TICKER", ["3130"] = "ENUM.SRC.UNDERLYING.ID" }

-- Mandatory: Unsubscribe Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.unsubscribe_message.mandatory = { "5022", "5026" }

-- Dissect: Unsubscribe Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.unsubscribe_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.unsubscribe_message, buffer(offset, size), "Unsubscribe")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.unsubscribe_message)
  return offset + size
end

-- Unsubscribe Response (Unsubscribe): ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: ERR_REQ_INVALID (-46), ERR_PARAM_MISSING (-36), ERR_PARAM_BOUNDARY (-33)
ice_icedataservices_asx24futures_ctf_v2025_01_21.unsubscribe_message.response = { name = "Unsubscribe Response" }
ice_icedataservices_asx24futures_ctf_v2025_01_21.unsubscribe_message.response.errors = {
  ["-46"] = { name = "ERR_REQ_INVALID", shown = "ERR_REQ_INVALID: QUERY.COMMAND is missing or specifies an unrecognized command." },
  ["-36"] = { name = "ERR_PARAM_MISSING", shown = "ERR_PARAM_MISSING: SYMBOL. TICKER is supplied but ENUM.SRC.ID is missing; OR SYMBOL.UNDERLYING.TICKER is supplied but ENUM.SRC.UNDERLYING.ID is missing; OR no arguments are supplied." },
  ["-33"] = { name = "ERR_PARAM_BOUNDARY", shown = "ERR_PARAM_BOUNDARY: ENUM.SRC.ID or ENUM.SRC.UNDERLYING.ID is out of range." },
}

-- Answer: Unsubscribe Response
ice_icedataservices_asx24futures_ctf_v2025_01_21.unsubscribe_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.unsubscribe_response, buffer(offset, size), "Unsubscribe")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.unsubscribe_message.response)
  return offset + size
end

-- Update Message (Update): Data
-- mandatory: none
-- optional: TRADE.PRICE (8), TRADE.SIZE (9), ASK.PRICE (10), ASK.SIZE (11), BID.PRICE (12), BID.SIZE (13), CURRENT.PRICE (14), ACTIVITY.DATE (15), ACTIVITY.DATETIME (16), TRADE.DATETIME (18), QUOTE.DATE (19), QUOTE.DATETIME (20), TRADE.VOL (22), REFRESH (24), QUOTE.OFFICIAL.TIME (25), IMPLIED.BID.SIZ (72), IMPLIED.ASK.SIZE (74), TRADE.COND.DATETIME (76), BID.DATETIME (109), ASK.DATETIME (110), RECORD.PRECISION (209), ENUM.CURRENCY (270), DISPLAY.PRECISION (280), EXPIRATION.DATE (292), OPEN.INT.DATE (293), RFQ.SIZE (296), OPTION.ACTIVE.IND (310), TRADE.TICK (316), ASK.INDIC.PRICE (321), ASK.INDIC.SIZE (322), BID.INDIC.PRICE (323), BID.INDIC.SIZE (324), LIMIT.HIGH (338), LIMIT.LOW (339), CHG (361), PCT.CHG (362), DYNAMIC.REF.PRICE (365), OPEN_INT (369), TRADE.HIGH (388), TRADE.LOW (394), TRADE.OPEN (400), YEST.TRADE.CLOSE (407), RECORD.RESET (416), SETTLE.DATE (417), SETTLE.PRICE (418), RECORD.DEL (431), TRADE.TREND (432), CURRENCY.STRING (435), TRADE.BLOCK.COUNT (440), TRADE.BLOCK.VOL (441), TRADE.OFFICIAL.DATE (444), TRADE.COND.PRICE (447), TRADE.COND.SIZE (448), PREV.TRADE.DATE (451), TRADE.OFFICIAL.TIME (459), TRADE.UNIQUE.ID (461), YEST.TRADE.VOL (473), VWAP (474), OFFICIAL.TRADE.COUNT (493), TRADE.COND.OFFICIAL.TIME (533), TRADE.COND.OFFICIAL.DATE (543), AUCTION.PRICE (624), AUCTION.VOL (645), COUPON.RATE (698), INSTR.STATUS (705), CONTROL.MSG.TYPE (856), IMPLIED.VOLATILITY (925), ACTION.DATE (1011), PQ.SETTLE.PRICE (1095), PQ.BID.PRICE (1096), PQ.ASK.PRICE (1097), CANCEL.TRADE.SEQ (1229), RESIDUAL.MATURITY (1280), PQ.AUCTION.PRICE (1318), DYNAMIC.UPPER.LMT (1418), DYNAMIC.LOWER.LMT (1419), RFQ.SIDE (1580), TRADABLE.STATUS (1708), MARKET.PHASE (1709), RFQ.PRICE (1768), ETR.PRICE (1771), STRIKE.MIN.TICK (1776), COMBINATION.TRADE.ID (1785), COUNTER.PARTY.ID.STRING (1791), OPPOSITE.ORDER.ID (1794), OPPOSITE.TRADABLE.INSTR.ID (1795), OPPOSITE.ORDER. SIDE (1796), BUYER.TRADABLE.INSTR.ID (1797), BUYER.SIDE (1798), BUYER.ORDER.ID (1799), BUYER.COMBINATION.TRADE.ID (1800), SELLER.TRADABLE.INSTR.ID (1801), SELLER.SIDE (1802), SELLER.ORDER.ID (1803), SELLER.COMBINATION.TRADE.ID (1804), PQ.PRICE.METHOD (1845), TRADE.COND_1 (2500), ENUM.INSTR.TYPE (3133), LOCAL.CODE (3170), SYMBOL.EXCH.TICKER (3172), INSTR_NAME2 (3177), AUCTION.DATE (3289), TICK.VALUE (3306), DELTA (3327), PRICE.DENOMINATOR (3511), LAST.TRADING.DATE (3518), PREV_OPEN.INT (3530), ENUM.CONTRACT.UNITS (3016), BLOCK.LOT.SIZE (3706), COUPON.FREQUENCY (3741), SYMBOL.BLOOMBERG.TICKER (3950), BLOOMBERG.GLOBAL_ID (3952), BLOOMBERG.GLOBAL_ID.COMP (3953), SYMBOL.ESIGNAL.TICKER (3958), PRODUCT.ROOT (3974), EXCH.PRODUCT.ROOT (3975), EXCH.MONTH.CODE (4015), EXCH.YEAR.CODE (4022), SYMBOL.TICKER.ALIAS (4070), TOKEN.DEL (5004), RECORD.STALE.IND (5076), RETRANSMISSION.FLAG (13543), EXCH.MESSAGE.TIMESTAMP (55), QUERY.COMMAND (5022), QUERY.TAG (5026), USER_NAME (5028), USER.PASSWORD (5029), FORCE.LOGIN (5079), CTF.COMPRESSED (13265), CONFLATE.INDICATOR (5201), ENUM.QUERY.STATUS (5001), CURRENT.DATETIME (437), CSP.NEWS (5005), CSP.VERSION (5008), CSP.OUTPUT_STATE (5018), CSP.OUTPUT_TOKENS (5019), CDD.VERSION (5080), CUSTOMER.NUMBER (13349), CTF.TOKEN.STORE (5002), CTF.TOKEN.NAME (5010), CTF.TOKEN.SIZE (5011), CTF.TOKEN.TYPE (5012), CTF.TOKEN.NUM (5035), CTF.ENUM.VALUE (5034), CTF.ENUM.DESC (5033), PERMISSION (3), NEWS.FILTER.CODE (6016), DELAY.MINS (269), EOD.VIEW.OPEN (13321), EOD.VIEW.CLOSE (13322), ENUM.SRC.ID (4), SYMBOL.TICKER (5), HOST.SERVER.IP (13001), CLIENT.PORT (13101), CONFLATION.INTERVAL (2029), CONFLATION (2035), SYMBOL.UNDERLYING.TICKER (3083), ENUM.SRC.UNDERLYING.ID (3130), CUSIP (3123), ISIN (3125), SEDOL (3126), INSTR_NAME (3127), CSP.DDF_BATE (5013), MM.ID (355), QUOTE.COND_2 (2001)
ice_icedataservices_asx24futures_ctf_v2025_01_21.update_message = {}
ice_icedataservices_asx24futures_ctf_v2025_01_21.update_message.name = "Update"

-- Codes: Update Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.update_message.codes = { ["8"] = "TRADE.PRICE", ["9"] = "TRADE.SIZE", ["10"] = "ASK.PRICE", ["11"] = "ASK.SIZE", ["12"] = "BID.PRICE", ["13"] = "BID.SIZE", ["14"] = "CURRENT.PRICE", ["15"] = "ACTIVITY.DATE", ["16"] = "ACTIVITY.DATETIME", ["18"] = "TRADE.DATETIME", ["19"] = "QUOTE.DATE", ["20"] = "QUOTE.DATETIME", ["22"] = "TRADE.VOL", ["24"] = "REFRESH", ["25"] = "QUOTE.OFFICIAL.TIME", ["72"] = "IMPLIED.BID.SIZ", ["74"] = "IMPLIED.ASK.SIZE", ["76"] = "TRADE.COND.DATETIME", ["109"] = "BID.DATETIME", ["110"] = "ASK.DATETIME", ["209"] = "RECORD.PRECISION", ["270"] = "ENUM.CURRENCY", ["280"] = "DISPLAY.PRECISION", ["292"] = "EXPIRATION.DATE", ["293"] = "OPEN.INT.DATE", ["296"] = "RFQ.SIZE", ["310"] = "OPTION.ACTIVE.IND", ["316"] = "TRADE.TICK", ["321"] = "ASK.INDIC.PRICE", ["322"] = "ASK.INDIC.SIZE", ["323"] = "BID.INDIC.PRICE", ["324"] = "BID.INDIC.SIZE", ["338"] = "LIMIT.HIGH", ["339"] = "LIMIT.LOW", ["361"] = "CHG", ["362"] = "PCT.CHG", ["365"] = "DYNAMIC.REF.PRICE", ["369"] = "OPEN_INT", ["388"] = "TRADE.HIGH", ["394"] = "TRADE.LOW", ["400"] = "TRADE.OPEN", ["407"] = "YEST.TRADE.CLOSE", ["416"] = "RECORD.RESET", ["417"] = "SETTLE.DATE", ["418"] = "SETTLE.PRICE", ["431"] = "RECORD.DEL", ["432"] = "TRADE.TREND", ["435"] = "CURRENCY.STRING", ["440"] = "TRADE.BLOCK.COUNT", ["441"] = "TRADE.BLOCK.VOL", ["444"] = "TRADE.OFFICIAL.DATE", ["447"] = "TRADE.COND.PRICE", ["448"] = "TRADE.COND.SIZE", ["451"] = "PREV.TRADE.DATE", ["459"] = "TRADE.OFFICIAL.TIME", ["461"] = "TRADE.UNIQUE.ID", ["473"] = "YEST.TRADE.VOL", ["474"] = "VWAP", ["493"] = "OFFICIAL.TRADE.COUNT", ["533"] = "TRADE.COND.OFFICIAL.TIME", ["543"] = "TRADE.COND.OFFICIAL.DATE", ["624"] = "AUCTION.PRICE", ["645"] = "AUCTION.VOL", ["698"] = "COUPON.RATE", ["705"] = "INSTR.STATUS", ["856"] = "CONTROL.MSG.TYPE", ["925"] = "IMPLIED.VOLATILITY", ["1011"] = "ACTION.DATE", ["1095"] = "PQ.SETTLE.PRICE", ["1096"] = "PQ.BID.PRICE", ["1097"] = "PQ.ASK.PRICE", ["1229"] = "CANCEL.TRADE.SEQ", ["1280"] = "RESIDUAL.MATURITY", ["1318"] = "PQ.AUCTION.PRICE", ["1418"] = "DYNAMIC.UPPER.LMT", ["1419"] = "DYNAMIC.LOWER.LMT", ["1580"] = "RFQ.SIDE", ["1708"] = "TRADABLE.STATUS", ["1709"] = "MARKET.PHASE", ["1768"] = "RFQ.PRICE", ["1771"] = "ETR.PRICE", ["1776"] = "STRIKE.MIN.TICK", ["1785"] = "COMBINATION.TRADE.ID", ["1791"] = "COUNTER.PARTY.ID.STRING", ["1794"] = "OPPOSITE.ORDER.ID", ["1795"] = "OPPOSITE.TRADABLE.INSTR.ID", ["1796"] = "OPPOSITE.ORDER. SIDE", ["1797"] = "BUYER.TRADABLE.INSTR.ID", ["1798"] = "BUYER.SIDE", ["1799"] = "BUYER.ORDER.ID", ["1800"] = "BUYER.COMBINATION.TRADE.ID", ["1801"] = "SELLER.TRADABLE.INSTR.ID", ["1802"] = "SELLER.SIDE", ["1803"] = "SELLER.ORDER.ID", ["1804"] = "SELLER.COMBINATION.TRADE.ID", ["1845"] = "PQ.PRICE.METHOD", ["2500"] = "TRADE.COND_1", ["3133"] = "ENUM.INSTR.TYPE", ["3170"] = "LOCAL.CODE", ["3172"] = "SYMBOL.EXCH.TICKER", ["3177"] = "INSTR_NAME2", ["3289"] = "AUCTION.DATE", ["3306"] = "TICK.VALUE", ["3327"] = "DELTA", ["3511"] = "PRICE.DENOMINATOR", ["3518"] = "LAST.TRADING.DATE", ["3530"] = "PREV_OPEN.INT", ["3016"] = "ENUM.CONTRACT.UNITS", ["3706"] = "BLOCK.LOT.SIZE", ["3741"] = "COUPON.FREQUENCY", ["3950"] = "SYMBOL.BLOOMBERG.TICKER", ["3952"] = "BLOOMBERG.GLOBAL_ID", ["3953"] = "BLOOMBERG.GLOBAL_ID.COMP", ["3958"] = "SYMBOL.ESIGNAL.TICKER", ["3974"] = "PRODUCT.ROOT", ["3975"] = "EXCH.PRODUCT.ROOT", ["4015"] = "EXCH.MONTH.CODE", ["4022"] = "EXCH.YEAR.CODE", ["4070"] = "SYMBOL.TICKER.ALIAS", ["5004"] = "TOKEN.DEL", ["5076"] = "RECORD.STALE.IND", ["13543"] = "RETRANSMISSION.FLAG", ["55"] = "EXCH.MESSAGE.TIMESTAMP", ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["5028"] = "USER_NAME", ["5029"] = "USER.PASSWORD", ["5079"] = "FORCE.LOGIN", ["13265"] = "CTF.COMPRESSED", ["5201"] = "CONFLATE.INDICATOR", ["5001"] = "ENUM.QUERY.STATUS", ["437"] = "CURRENT.DATETIME", ["5005"] = "CSP.NEWS", ["5008"] = "CSP.VERSION", ["5018"] = "CSP.OUTPUT_STATE", ["5019"] = "CSP.OUTPUT_TOKENS", ["5080"] = "CDD.VERSION", ["13349"] = "CUSTOMER.NUMBER", ["5002"] = "CTF.TOKEN.STORE", ["5010"] = "CTF.TOKEN.NAME", ["5011"] = "CTF.TOKEN.SIZE", ["5012"] = "CTF.TOKEN.TYPE", ["5035"] = "CTF.TOKEN.NUM", ["5034"] = "CTF.ENUM.VALUE", ["5033"] = "CTF.ENUM.DESC", ["3"] = "PERMISSION", ["6016"] = "NEWS.FILTER.CODE", ["269"] = "DELAY.MINS", ["13321"] = "EOD.VIEW.OPEN", ["13322"] = "EOD.VIEW.CLOSE", ["4"] = "ENUM.SRC.ID", ["5"] = "SYMBOL.TICKER", ["13001"] = "HOST.SERVER.IP", ["13101"] = "CLIENT.PORT", ["2029"] = "CONFLATION.INTERVAL", ["2035"] = "CONFLATION", ["3083"] = "SYMBOL.UNDERLYING.TICKER", ["3130"] = "ENUM.SRC.UNDERLYING.ID", ["3123"] = "CUSIP", ["3125"] = "ISIN", ["3126"] = "SEDOL", ["3127"] = "INSTR_NAME", ["5013"] = "CSP.DDF_BATE", ["355"] = "MM.ID", ["2001"] = "QUOTE.COND_2" }

-- Mandatory: Update Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.update_message.mandatory = {  }

-- Dissect: Update Message
ice_icedataservices_asx24futures_ctf_v2025_01_21.update_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.update_message, buffer(offset, size), "Update")
  ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, parent, params, ice_icedataservices_asx24futures_ctf_v2025_01_21.update_message)
  return offset + size
end

-- Command dispatch: command token value to command
ice_icedataservices_asx24futures_ctf_v2025_01_21.messages = {
  ["GetConflationInterval"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.get_conflation_interval_message,
  ["GetPort"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.get_port_message,
  ["ListAdministrationInfo"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.list_administration_info_message,
  ["ListAvailableTokens"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.list_available_tokens_message,
  ["ListEnumeration"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.list_enumeration_message,
  ["ListExchangeTokens"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.list_exchange_tokens_message,
  ["ListExtendedExchangeInfo"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.list_extended_exchange_info_message,
  ["ListInternalTokens"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.list_internal_tokens_message,
  ["ListSplitExchanges"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.list_split_exchanges_message,
  ["ListSubscribedExchanges"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.list_subscribed_exchanges_message,
  ["ListSubscribedNews"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.list_subscribed_news_message,
  ["ListSubscribedSymbols"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.list_subscribed_symbols_message,
  ["ListSystemPermission"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.list_system_permission_message,
  ["ListUserPermission"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.list_user_permission_message,
  ["ListUserTokens"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.list_user_tokens_message,
  ["LoginUser"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.login_user_message,
  ["QueryDepth"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.query_depth_message,
  ["QueryDepthAndSubscribe"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.query_depth_and_subscribe_message,
  ["QuerySnap"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.query_snap_message,
  ["QuerySnapAndSubscribe"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.query_snap_and_subscribe_message,
  ["QuerySubscribedExchanges"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.query_subscribed_exchanges_message,
  ["QuerySubscribedSymbols"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.query_subscribed_symbols_message,
  ["QueryWildCard"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.query_wild_card_message,
  ["QueryXref"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.query_xref_message,
  ["SelectAvailableTokens"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.select_available_tokens_message,
  ["SelectOutput"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.select_output_message,
  ["SelectUserFilterTokens"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.select_user_filter_tokens_message,
  ["SelectUserTokens"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.select_user_tokens_message,
  ["SetConflationInterval"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.set_conflation_interval_message,
  ["Subscribe"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.subscribe_message,
  ["Unsubscribe"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.unsubscribe_message,
}


-----------------------------------------------------------------------
-- Ice IceDataServices Asx24Futures Ctf 2025.01.21 Fields
-----------------------------------------------------------------------

-- Frame End
ice_icedataservices_asx24futures_ctf_v2025_01_21.frame_end = {}

-- Size: Frame End
ice_icedataservices_asx24futures_ctf_v2025_01_21.frame_end.size = 1

-- Display: Frame End
ice_icedataservices_asx24futures_ctf_v2025_01_21.frame_end.display = function(value)
  if value == 3 then
    return "Frame End: Frame End"
  end

  return "Frame End: Unknown("..value..")"
end

-- Dissect: Frame End
ice_icedataservices_asx24futures_ctf_v2025_01_21.frame_end.dissect = function(buffer, offset, packet, parent)
  local length = ice_icedataservices_asx24futures_ctf_v2025_01_21.frame_end.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ice_icedataservices_asx24futures_ctf_v2025_01_21.frame_end.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.frame_end, range, value, display)

  return offset + length, value
end

-- Frame Start
ice_icedataservices_asx24futures_ctf_v2025_01_21.frame_start = {}

-- Size: Frame Start
ice_icedataservices_asx24futures_ctf_v2025_01_21.frame_start.size = 1

-- Display: Frame Start
ice_icedataservices_asx24futures_ctf_v2025_01_21.frame_start.display = function(value)
  if value == 4 then
    return "Frame Start: Frame Start"
  end

  return "Frame Start: Unknown("..value..")"
end

-- Dissect: Frame Start
ice_icedataservices_asx24futures_ctf_v2025_01_21.frame_start.dissect = function(buffer, offset, packet, parent)
  local length = ice_icedataservices_asx24futures_ctf_v2025_01_21.frame_start.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ice_icedataservices_asx24futures_ctf_v2025_01_21.frame_start.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.frame_start, range, value, display)

  return offset + length, value
end

-- Length
ice_icedataservices_asx24futures_ctf_v2025_01_21.length = {}

-- Size: Length
ice_icedataservices_asx24futures_ctf_v2025_01_21.length.size = 4

-- Display: Length
ice_icedataservices_asx24futures_ctf_v2025_01_21.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
ice_icedataservices_asx24futures_ctf_v2025_01_21.length.dissect = function(buffer, offset, packet, parent)
  local length = ice_icedataservices_asx24futures_ctf_v2025_01_21.length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ice_icedataservices_asx24futures_ctf_v2025_01_21.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.length, range, value, display)

  return offset + length, value
end

-- Payload: a ctf payload, dispatched as a command, a response or the data update
ice_icedataservices_asx24futures_ctf_v2025_01_21.payload = {}

-- Dissect runtime sized field: Payload, as a ctf payload
ice_icedataservices_asx24futures_ctf_v2025_01_21.payload.dissect = function(buffer, offset, packet, parent, size)
  local params = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_params(buffer, offset, size)
  if #params == 0 then
    return offset + size
  end

  -- QUERY.COMMAND (5022): carried by every command and by no response, its value the command
  local command = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_value(buffer, params, "5022", nil)
  -- QUERY.TAG (5026): carried by every command, and back by its response
  local query = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_value(buffer, params, "5026", nil)
  -- ENUM.QUERY.STATUS (5001): carried by every response whose command reports errors, and by no command
  local status = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_value(buffer, params, "5001", nil)
  local name = nil
  if command ~= nil then
    local message = ice_icedataservices_asx24futures_ctf_v2025_01_21.messages[command]
    if message == nil then
      local item = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.payload, buffer(offset, size))
      item:add_proto_expert_info(ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.unknown_command, "Unknown ctf command: "..command)
      ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, item, params, { name = command })
    else
      message.dissect(buffer, offset, size, packet, parent, params)
    end
    if query ~= nil then
      ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_ask(packet, query, command)
    end
    name = command
  elseif query ~= nil or status ~= nil then
    local message = nil
    local asked = nil
    if query ~= nil then
      asked = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_answer(packet, offset, query)
    end
    if asked ~= nil then
      message = ice_icedataservices_asx24futures_ctf_v2025_01_21.messages[asked]
    end
    if message == nil then
      local item = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.ctf_response, buffer(offset, size), "")
      if query ~= nil then
        item:add_proto_expert_info(ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.unanswered, "No command seen asks query tag "..query)
      end
      ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_fields(buffer, packet, item, params, { name = "Response" })
      name = "Response"
    else
      message.answer(buffer, offset, size, packet, parent, params)
      name = message.response.name
    end
    if status ~= nil then
      local errors = nil
      if message ~= nil then
        errors = message.response.errors
      end
      local reply = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_status(errors, status)
      if reply ~= nil and reply.name ~= "" then
        name = name.." "..reply.name
      else
        name = name.." "..status
      end
    end
  else
    ice_icedataservices_asx24futures_ctf_v2025_01_21.update_message.dissect(buffer, offset, size, packet, parent, params)
    name = "Update"
    local symbol = ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_value(buffer, params, "5", "Symbol")
    if symbol ~= nil then
      name = name.." "..symbol
    end
  end
  packet.cols.info:append(name.." ")

  return offset + size, name
end

-- Protocol Signature
ice_icedataservices_asx24futures_ctf_v2025_01_21.protocol_signature = {}

-- Size: Protocol Signature
ice_icedataservices_asx24futures_ctf_v2025_01_21.protocol_signature.size = 1

-- Display: Protocol Signature
ice_icedataservices_asx24futures_ctf_v2025_01_21.protocol_signature.display = function(value)
  if value == 32 then
    return "Protocol Signature: Token Value Payload"
  end

  return "Protocol Signature: Unknown("..value..")"
end

-- Dissect: Protocol Signature
ice_icedataservices_asx24futures_ctf_v2025_01_21.protocol_signature.dissect = function(buffer, offset, packet, parent)
  local length = ice_icedataservices_asx24futures_ctf_v2025_01_21.protocol_signature.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ice_icedataservices_asx24futures_ctf_v2025_01_21.protocol_signature.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.protocol_signature, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Ice IceDataServices Asx24Futures Ctf 2025.01.21
-----------------------------------------------------------------------

-- Frame Header
ice_icedataservices_asx24futures_ctf_v2025_01_21.frame_header = {}

-- Size: Frame Header
ice_icedataservices_asx24futures_ctf_v2025_01_21.frame_header.size =
  ice_icedataservices_asx24futures_ctf_v2025_01_21.protocol_signature.size + 
  ice_icedataservices_asx24futures_ctf_v2025_01_21.length.size

-- Display: Frame Header
ice_icedataservices_asx24futures_ctf_v2025_01_21.frame_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Frame Header
ice_icedataservices_asx24futures_ctf_v2025_01_21.frame_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Protocol Signature: 1 Byte Unsigned Fixed Width Integer Static
  index, protocol_signature = ice_icedataservices_asx24futures_ctf_v2025_01_21.protocol_signature.dissect(buffer, index, packet, parent)

  -- Length: 4 Byte Unsigned Fixed Width Integer
  index, length = ice_icedataservices_asx24futures_ctf_v2025_01_21.length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Frame Header
ice_icedataservices_asx24futures_ctf_v2025_01_21.frame_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.fields.frame_header, buffer(offset, 0))
    local index = ice_icedataservices_asx24futures_ctf_v2025_01_21.frame_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icedataservices_asx24futures_ctf_v2025_01_21.frame_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icedataservices_asx24futures_ctf_v2025_01_21.frame_header.fields(buffer, offset, packet, parent)
  end
end

-- Ctf Frame
ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_frame = {}

-- Verify required size of Tcp packet
ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_frame.requiredsize = function(buffer)
  return buffer:len() >= ice_icedataservices_asx24futures_ctf_v2025_01_21.frame_start.size + ice_icedataservices_asx24futures_ctf_v2025_01_21.frame_header.size
end

-- Dissect Ctf Frame
ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_frame.dissect = function(buffer, packet, parent)
  local index = 0

  -- Frame Start: 1 Byte Unsigned Fixed Width Integer Static
  index, frame_start = ice_icedataservices_asx24futures_ctf_v2025_01_21.frame_start.dissect(buffer, index, packet, parent)

  -- Frame Header: Struct of 2 fields
  index, frame_header = ice_icedataservices_asx24futures_ctf_v2025_01_21.frame_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Length
  local length = buffer(index - 4, 4):uint()

  -- Runtime Size Of: Payload
  index, payload = ice_icedataservices_asx24futures_ctf_v2025_01_21.payload.dissect(buffer, index, packet, parent, length)

  -- Frame End: 1 Byte Unsigned Fixed Width Integer Static
  index, frame_end = ice_icedataservices_asx24futures_ctf_v2025_01_21.frame_end.dissect(buffer, index, packet, parent)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.init()
end

-- Dissector for Ice IceDataServices Asx24Futures Ctf 2025.01.21
function omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.name

  local length = buffer:len()
  local index = 0

  -- Dissect each message the segment carries
  while index < length do
    local remaining = length - index

    -- The message length lives in the header: wait for the header before reading it
    if remaining < 1 + ice_icedataservices_asx24futures_ctf_v2025_01_21.frame_header.size then
      packet.desegment_offset = index
      packet.desegment_len = DESEGMENT_ONE_MORE_SEGMENT
      return length
    end

    local size = buffer(index + 2, 4):uint() + 7
    -- A message split across segments: ask TCP for exactly the bytes still missing
    if remaining < size then
      packet.desegment_offset = index
      packet.desegment_len = size - remaining
      return length
    end

    local protocol = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21, buffer(index, size), omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.description, "("..size.." Bytes)")
    ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_frame.dissect(buffer(index, size):tvb(), packet, protocol)
    protocol:set_len(size)
    index = index + size
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Frame Start Field
ice_icedataservices_asx24futures_ctf_v2025_01_21.frame_start.verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 0 + 1 then
    return false
  end

  -- Attempt to read field
  local value = buffer(0, 1):uint()

  if value == 4 then
    return true
  end

  return false
end

-- Verify Protocol Signature Field
ice_icedataservices_asx24futures_ctf_v2025_01_21.protocol_signature.verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 1 + 1 then
    return false
  end

  -- Attempt to read field
  local value = buffer(1, 1):uint()

  if value == 32 then
    return true
  end

  return false
end

-- Dissector Heuristic for Ice IceDataServices Asx24Futures Ctf 2025.01.21 (Tcp)
local function omi_ice_icedataservices_asx24futures_ctf_v2025_01_21_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_frame.requiredsize(buffer) then return false end

  -- Verify Frame Start
  if not ice_icedataservices_asx24futures_ctf_v2025_01_21.frame_start.verify(buffer) then return false end

  -- Verify Protocol Signature
  if not ice_icedataservices_asx24futures_ctf_v2025_01_21.protocol_signature.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21
  omi_ice_icedataservices_asx24futures_ctf_v2025_01_21.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Ice IceDataServices Asx24Futures Ctf 2025.01.21
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21:register_heuristic("tcp", omi_ice_icedataservices_asx24futures_ctf_v2025_01_21_tcp_heuristic)

-- Register Ice IceDataServices Asx24Futures Ctf 2025.01.21 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21)

-----------------------------------------------------------------------
-- Ctf Lines
-----------------------------------------------------------------------

-- Ice Replay File 2.0.0: A day of one source's payloads as text: a header line naming the day and the layout's version, then one data line per payload
local omi_ice_icedataservices_asx24futures_ctf_v2025_01_21_lines = Proto("Omi.Ice.IceDataServices.Asx24Futures.Ctf.v2025.01.21.Lines", "Ice IceDataServices Asx24Futures Ctf 2025.01.21 Ice Replay File")

-- Ice Replay File Fields
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21_lines.fields.lines_header = ProtoField.new("Header", "ice.icedataservices.asx24futures.ctf.v2025.01.21.linesheader", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21_lines.fields.lines_header_date = ProtoField.new("Date", "ice.icedataservices.asx24futures.ctf.v2025.01.21.linesheaderdate", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21_lines.fields.lines_header_version = ProtoField.new("VERSION", "ice.icedataservices.asx24futures.ctf.v2025.01.21.linesheaderversion", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21_lines.fields.lines_data = ProtoField.new("Data", "ice.icedataservices.asx24futures.ctf.v2025.01.21.linesdata", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21_lines.fields.lines_footer = ProtoField.new("Footer", "ice.icedataservices.asx24futures.ctf.v2025.01.21.linesfooter", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21_lines.fields.lines_footer_end = ProtoField.new("END", "ice.icedataservices.asx24futures.ctf.v2025.01.21.linesfooterend", ftypes.STRING)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21_lines.fields.lines_line = ProtoField.new("Line", "ice.icedataservices.asx24futures.ctf.v2025.01.21.linesline", ftypes.STRING)

-- Ice Replay File Expert Info
ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.unknown_kind = ProtoExpert.new("ice.icedataservices.asx24futures.ctf.v2025.01.21.unknownkind", "Line of no record kind the line layout names", expert.group.UNDECODED, expert.severity.WARN)
ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.unknown_field = ProtoExpert.new("ice.icedataservices.asx24futures.ctf.v2025.01.21.unknownfield", "Line field the record does not name", expert.group.UNDECODED, expert.severity.NOTE)
ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.untimed = ProtoExpert.new("ice.icedataservices.asx24futures.ctf.v2025.01.21.untimed", "Payload line without its time token: its frame time is the header's day", expert.group.SEQUENCE, expert.severity.NOTE)
omi_ice_icedataservices_asx24futures_ctf_v2025_01_21_lines.experts = { ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.unknown_kind, ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.unknown_field, ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.untimed }

-- Year, month and day of a date field's value, where its Format places them; nil when it is no such date
ice_icedataservices_asx24futures_ctf_v2025_01_21.lines_day = function(value, day)
  if #value ~= day.length then
    return nil
  end
  local year = tonumber(value:sub(day.year, day.year + 3))
  local month = tonumber(value:sub(day.month, day.month + 1))
  local date = tonumber(value:sub(day.day, day.day + 1))
  if year == nil or month == nil or date == nil then
    return nil
  end
  return year, month, date
end

-- Dissect a line of name=value fields: "|" between fields, "=" between name and value; a field its record does not name is flagged
ice_icedataservices_asx24futures_ctf_v2025_01_21.lines_named = function(buffer, text, offset, packet, parent, record)
  parent = parent:add(record.field, buffer(), record.kind)
  for _, pair in ipairs(ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_pairs(text, offset + 1, "|", "=")) do
    local range = buffer(pair.offset, pair.length)
    local named = pair.name and record.fields[pair.name]
    local marker = pair.name == nil and record.fields[range:string()]
    if marker and marker.marker then
      parent:add(marker.field, range, range:string())
    elseif not named then
      local item = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21_lines.fields.lines_line, range, range:string())
      item:add_proto_expert_info(ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.unknown_field, "Not a field of "..record.name..": "..range:string())
    else
      local value = text:sub(pair.value + 1, pair.value + pair.size)
      local shown = value
      if named.day ~= nil then
        local year, month, date = ice_icedataservices_asx24futures_ctf_v2025_01_21.lines_day(value, named.day)
        if year ~= nil then
          shown = string.format("%04d-%02d-%02d (%s)", year, month, date, value)
        end
      end
      parent:add(named.field, range, value, pair.name..": "..shown)
    end
  end
  packet.cols.info:append(record.name.." ")
end

-- Header (H): The file's first line: the day its payloads were sent and the layout's version
ice_icedataservices_asx24futures_ctf_v2025_01_21.lines_header_record = { name = "Header", kind = "H", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21_lines.fields.lines_header, dissect = ice_icedataservices_asx24futures_ctf_v2025_01_21.lines_named }
ice_icedataservices_asx24futures_ctf_v2025_01_21.lines_header_record.fields = {
  ["Date"] = { field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21_lines.fields.lines_header_date, day = { year = 1, month = 5, day = 7, length = 8 } },
  ["VERSION"] = { field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21_lines.fields.lines_header_version },
}

-- Footer (F): The file's last line, "F|END": the file ends here, so a file without it was cut short
ice_icedataservices_asx24futures_ctf_v2025_01_21.lines_footer_record = { name = "Footer", kind = "F", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21_lines.fields.lines_footer, dissect = ice_icedataservices_asx24futures_ctf_v2025_01_21.lines_named }
ice_icedataservices_asx24futures_ctf_v2025_01_21.lines_footer_record.fields = {
  ["END"] = { field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21_lines.fields.lines_footer_end, marker = true },
}

-- Data (D): One payload: everything after "D|" is the token=value pairs a CTF frame's payload holds
-- frame time: its ACTIVITY.DATETIME (16), else the header's day
ice_icedataservices_asx24futures_ctf_v2025_01_21.lines_data_record = { name = "Data", kind = "D", field = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21_lines.fields.lines_data }

-- Dissect: Data, its payload as a frame's
ice_icedataservices_asx24futures_ctf_v2025_01_21.lines_data_record.dissect = function(buffer, text, offset, packet, parent, record)
  parent = parent:add(record.field, buffer(), record.kind)
  if ice_icedataservices_asx24futures_ctf_v2025_01_21.lines_time(text) == nil then
    parent:add_proto_expert_info(ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.untimed, "No ACTIVITY.DATETIME (16): the frame's time is the header's day")
  end
  return ice_icedataservices_asx24futures_ctf_v2025_01_21.payload.dissect(buffer, offset, packet, parent, buffer:len() - offset)
end

-- Record dispatch: line kind to record
ice_icedataservices_asx24futures_ctf_v2025_01_21.lines_records = {
  ["D"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.lines_data_record,
  ["F"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.lines_footer_record,
  ["H"] = ice_icedataservices_asx24futures_ctf_v2025_01_21.lines_header_record,
}

-- Dissect a line of a Ice Replay File: its kind, before the first "|", selects its record
function omi_ice_icedataservices_asx24futures_ctf_v2025_01_21_lines.dissector(buffer, packet, parent)
  packet.cols.protocol = omi_ice_icedataservices_asx24futures_ctf_v2025_01_21_lines.name
  local text = buffer:raw()
  local tree = parent:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21_lines, buffer())
  local at = text:find("|", 1, true)
  local kind = text
  local offset = #text
  if at ~= nil then
    kind = text:sub(1, at - 1)
    offset = at
  end
  local record = ice_icedataservices_asx24futures_ctf_v2025_01_21.lines_records[kind]
  if record == nil then
    local item = tree:add(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21_lines.fields.lines_line, buffer(), text)
    item:add_proto_expert_info(ice_icedataservices_asx24futures_ctf_v2025_01_21.experts.unknown_kind, "No record is of kind "..kind)
    packet.cols.info:append(kind.." ")
  else
    record.dissect(buffer, text, offset, packet, tree, record)
  end
  return buffer:len()
end


-----------------------------------------------------------------------
-- Ctf Lines Reader
-----------------------------------------------------------------------

-- Exported PDU tags a line is written behind: the dissector name omi.ice.icedataservices.asx24futures.ctf.v2025.01.21.lines, then the end of the tags
ice_icedataservices_asx24futures_ctf_v2025_01_21.lines_tags = "\000\012\000<omi.ice.icedataservices.asx24futures.ctf.v2025.01.21.lines\000\000\000\000\000\000"

-- Does a file open with the layout's header: H, exactly its fields Date, VERSION, and VERSION 2.0.0?
ice_icedataservices_asx24futures_ctf_v2025_01_21.lines_opens = function(line)
  if line == nil or line:sub(1, 2) ~= "H|" then
    return false
  end
  local named = {}
  local count = 0
  for _, pair in ipairs(ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_pairs(line, 3, "|", "=")) do
    if pair.name == nil or named[pair.name] ~= nil then
      return false
    end
    named[pair.name] = line:sub(pair.value + 1, pair.value + pair.size)
    count = count + 1
  end
  if count ~= 2 or named["Date"] == nil or named["VERSION"] == nil then
    return false
  end
  return named["VERSION"] == "2.0.0"
end

-- Midnight UTC of a header line's Date, as its Format yyyymmdd places the day; nil for another line, or a day that does not read
ice_icedataservices_asx24futures_ctf_v2025_01_21.lines_midnight = function(line)
  if line:sub(1, 2) ~= "H|" then
    return nil
  end
  for _, pair in ipairs(ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_pairs(line, 3, "|", "=")) do
    if pair.name == "Date" then
      local year, month, day = ice_icedataservices_asx24futures_ctf_v2025_01_21.lines_day(line:sub(pair.value + 1, pair.value + pair.size), { year = 1, month = 5, day = 7, length = 8 })
      if year == nil then
        return nil
      end
      -- days from the civil date: years from March, so a leap day ends its year
      if month <= 2 then
        year = year - 1
      end
      local era = math.floor(year / 400)
      local years = year - era * 400
      local days = math.floor((153 * ((month + 9) % 12) + 2) / 5) + day - 1
      local epoch = era * 146097 + years * 365 + math.floor(years / 4) - math.floor(years / 100) + days - 719468
      return NSTime.new(epoch * 86400, 0)
    end
  end
  return nil
end

-- Time of a payload line: its ACTIVITY.DATETIME (16) read exactly; nil for another line, or one without it
ice_icedataservices_asx24futures_ctf_v2025_01_21.lines_time = function(line)
  if line:sub(1, 2) ~= "D|" then
    return nil
  end
  local first = 3
  if line:sub(first, first + 2) ~= "16=" then
    local start = line:find("|16=", first, true)
    if start == nil then
      return nil
    end
    first = start + 1
  end
  first = first + 3
  local stop = line:find("|", first, true)
  if stop == nil then
    stop = #line + 1
  end
  return (ice_icedataservices_asx24futures_ctf_v2025_01_21.ctf_instant(line:sub(first, stop - 1), 0))
end

-- Read the next line into a frame behind the exported PDU tags: its time a payload line's ACTIVITY.DATETIME (16), else the header's day; false at the end of the file
ice_icedataservices_asx24futures_ctf_v2025_01_21.lines_frame = function(file, capture, frame)
  local line = file:read("*l")
  if line == nil then
    return false
  end
  local state = capture.private_table
  local midnight = ice_icedataservices_asx24futures_ctf_v2025_01_21.lines_midnight(line)
  if midnight ~= nil then
    state.midnight = midnight
  end
  local time = ice_icedataservices_asx24futures_ctf_v2025_01_21.lines_time(line)
  if time == nil then
    time = state.midnight
  end
  local data = ice_icedataservices_asx24futures_ctf_v2025_01_21.lines_tags..line
  frame.rec_type = wtap_rec_types.PACKET
  frame.flags = wtap_presence_flags.TS
  frame.time = time
  frame.captured_length = #data
  frame.original_length = #data
  frame.data = data
  return true
end

-- Ice Replay File reader: a file opening with its header, one frame per line
local omi_ice_icedataservices_asx24futures_ctf_v2025_01_21_lines_reader = FileHandler.new("Ice IceDataServices Asx24Futures Ctf 2025.01.21 Ice Replay File", "ice_icedataservices_asx24futures_ctf_v2025_01_21_lines", "A day of one source's payloads as text: a header line naming the day and the layout's version, then one data line per payload", "rs")

-- Open: claim the file only when its first line is the layout's header, and keep its day
function omi_ice_icedataservices_asx24futures_ctf_v2025_01_21_lines_reader.read_open(file, capture)
  local first = file:read("*l")
  if not ice_icedataservices_asx24futures_ctf_v2025_01_21.lines_opens(first) then
    return false
  end
  file:seek("set", 0)
  capture.encap = wtap_encaps.WIRESHARK_UPPER_PDU
  capture.time_precision = wtap_tsprecs.NSEC
  capture.private_table = { midnight = ice_icedataservices_asx24futures_ctf_v2025_01_21.lines_midnight(first) or NSTime.new(0, 0) }
  return true
end

-- Read: the next frame, at the offset its line starts at
function omi_ice_icedataservices_asx24futures_ctf_v2025_01_21_lines_reader.read(file, capture, frame)
  local offset = file:seek()
  if not ice_icedataservices_asx24futures_ctf_v2025_01_21.lines_frame(file, capture, frame) then
    return false
  end
  return offset
end

-- Seek read: the frame whose line starts at offset
function omi_ice_icedataservices_asx24futures_ctf_v2025_01_21_lines_reader.seek_read(file, capture, frame, offset)
  file:seek("set", offset)
  return ice_icedataservices_asx24futures_ctf_v2025_01_21.lines_frame(file, capture, frame)
end

function omi_ice_icedataservices_asx24futures_ctf_v2025_01_21_lines_reader.read_close(file, capture)
  return true
end

function omi_ice_icedataservices_asx24futures_ctf_v2025_01_21_lines_reader.seq_read_close(file, capture)
  return true
end

-- Register the Ice Replay File reader
register_filehandler(omi_ice_icedataservices_asx24futures_ctf_v2025_01_21_lines_reader)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Intercontinental Exchange
--   Version: 2025.01.21
--   Date: Tuesday, January 21, 2025
--   Specification: ASX_24_and_New_Zealand_Futures_and_Options_2025-01-21.pdf
--   Specification: CTF_Wire_Protocol_2017-10-10.pdf
--
-- Script:
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
