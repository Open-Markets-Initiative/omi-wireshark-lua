-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Ice IceDataServices BrazilBmf Ctf 2024.10.09 Protocol
local omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09 = Proto("Omi.Ice.IceDataServices.BrazilBmf.Ctf.v2024.10.09", "Ice IceDataServices BrazilBmf Ctf 2024.10.09")

-- Protocol table
local ice_icedataservices_brazilbmf_ctf_v2024_10_09 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Ice IceDataServices BrazilBmf Ctf 2024.10.09 Fields
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.frame_end = ProtoField.new("Frame End", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.frameend", ftypes.UINT8, nil, nil, nil, "Marks the end of the frame, 0x03 (2.2.6)")
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.frame_start = ProtoField.new("Frame Start", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.framestart", ftypes.UINT8, nil, nil, nil, "Marks the beginning of any frame, fixed at 0x04 (2.2.1)")
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.length = ProtoField.new("Length", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.length", ftypes.UINT32, nil, nil, nil, "Total number of bytes in the payload, excluding the header and framing characters (2.2.3)")
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.payload = ProtoField.new("Payload", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.payload", ftypes.BYTES, nil, nil, nil, "The token=value pairs: Param fields (token=value) separated by Delim fields (|), as many bytes as the Length states (2.2.4, 2.2.5)")
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.protocol_signature = ProtoField.new("Protocol Signature", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.protocolsignature", ftypes.UINT8, nil, nil, nil, "Indicates what processing rules apply to the payload; its current value is 0x20 (2.2.2)")

-- Ice IceDataServices BrazilBmf Ctf 2024.10.09 Framing
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ctf_frame = ProtoField.new("Packet", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.ctfframe", ftypes.STRING, nil, nil, nil, "A CTF frame: the framing characters around the frame header and one token=value payload")
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.frame_header = ProtoField.new("Packet Header", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.frameheader", ftypes.STRING, nil, nil, nil, "The Protocol Signature and Length fields, which together form the header of the frame (section 2)")

-----------------------------------------------------------------------
-- Declare Ctf Fields
-----------------------------------------------------------------------

-- Ice IceDataServices BrazilBmf Ctf 2024.10.09 Token Fields
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.abrv_currency = ProtoField.new("ABRV.CURRENCY", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.abrvcurrency", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.activity_date = ProtoField.new("ACTIVITY.DATE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.activitydate", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.activity_datetime = ProtoField.new("ACTIVITY.DATETIME", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.activitydatetime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ask_close = ProtoField.new("ASK.CLOSE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.askclose", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ask_close_size = ProtoField.new("ASK.CLOSE_SIZE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.askclosesize", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ask_count = ProtoField.new("ASK.COUNT", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.askcount", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ask_datetime = ProtoField.new("ASK.DATETIME", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.askdatetime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ask_price = ProtoField.new("ASK.PRICE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.askprice", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ask_size = ProtoField.new("ASK.SIZE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.asksize", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.auction_price = ProtoField.new("AUCTION.PRICE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.auctionprice", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.auction_priceband_pct = ProtoField.new("AUCTION.PRICEBAND.PCT", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.auctionpricebandpct", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.auction_vol = ProtoField.new("AUCTION.VOL", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.auctionvol", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.bid_count = ProtoField.new("BID.COUNT", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.bidcount", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.bid_datetime = ProtoField.new("BID.DATETIME", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.biddatetime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.bid_price = ProtoField.new("BID.PRICE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.bidprice", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.bid_size = ProtoField.new("BID.SIZE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.bidsize", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.bloomberg_global_id = ProtoField.new("BLOOMBERG.GLOBAL_ID", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.bloombergglobalid", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.bloomberg_global_id_comp = ProtoField.new("BLOOMBERG.GLOBAL_ID.COMP", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.bloombergglobalidcomp", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.buyer_id = ProtoField.new("BUYER.ID", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.buyerid", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.cdd_version = ProtoField.new("CDD.VERSION", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.cddversion", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.chg = ProtoField.new("CHG", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.chg", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.client_port = ProtoField.new("CLIENT.PORT", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.clientport", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.conflate_indicator = ProtoField.new("CONFLATE.INDICATOR", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.conflateindicator", ftypes.BOOLEAN)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.conflation = ProtoField.new("CONFLATION", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.conflation", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.conflation_interval = ProtoField.new("CONFLATION.INTERVAL", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.conflationinterval", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.correction_prev_trade_price = ProtoField.new("CORRECTION.PREV.TRADE.PRICE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.correctionprevtradeprice", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.correction_prev_trade_size = ProtoField.new("CORRECTION.PREV.TRADE.SIZE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.correctionprevtradesize", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.csp_ddf_bate = ProtoField.new("CSP.DDF_BATE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.cspddfbate", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.csp_news = ProtoField.new("CSP.NEWS", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.cspnews", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.csp_output_state = ProtoField.new("CSP.OUTPUT_STATE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.cspoutputstate", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.csp_output_tokens = ProtoField.new("CSP.OUTPUT_TOKENS", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.cspoutputtokens", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.csp_version = ProtoField.new("CSP.VERSION", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.cspversion", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ctf_compressed = ProtoField.new("CTF.COMPRESSED", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.ctfcompressed", ftypes.BOOLEAN)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ctf_enum_desc = ProtoField.new("CTF.ENUM.DESC", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.ctfenumdesc", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ctf_enum_value = ProtoField.new("CTF.ENUM.VALUE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.ctfenumvalue", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ctf_token_name = ProtoField.new("CTF.TOKEN.NAME", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.ctftokenname", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ctf_token_num = ProtoField.new("CTF.TOKEN.NUM", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.ctftokennum", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ctf_token_size = ProtoField.new("CTF.TOKEN.SIZE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.ctftokensize", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ctf_token_store = ProtoField.new("CTF.TOKEN.STORE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.ctftokenstore", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ctf_token_type = ProtoField.new("CTF.TOKEN.TYPE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.ctftokentype", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.currency_string = ProtoField.new("CURRENCY.STRING", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.currencystring", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.current_datetime = ProtoField.new("CURRENT.DATETIME", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.currentdatetime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.current_price = ProtoField.new("CURRENT.PRICE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.currentprice", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.cusip = ProtoField.new("CUSIP", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.cusip", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.customer_number = ProtoField.new("CUSTOMER.NUMBER", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.customernumber", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.delay_mins = ProtoField.new("DELAY.MINS", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.delaymins", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.dynamic_lower_lmt = ProtoField.new("DYNAMIC.LOWER.LMT", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.dynamiclowerlmt", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.dynamic_priceband_pct = ProtoField.new("DYNAMIC.PRICEBAND.PCT", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.dynamicpricebandpct", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.dynamic_upper_lmt = ProtoField.new("DYNAMIC.UPPER.LMT", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.dynamicupperlmt", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.end_update_flag = ProtoField.new("END.UPDATE.FLAG", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.endupdateflag", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.entitlement_code = ProtoField.new("ENTITLEMENT.CODE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.entitlementcode", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.enum_currency = ProtoField.new("ENUM.CURRENCY", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.enumcurrency", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.enum_instr_type = ProtoField.new("ENUM.INSTR.TYPE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.enuminstrtype", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.enum_query_status = ProtoField.new("ENUM.QUERY.STATUS", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.enumquerystatus", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.enum_src_id = ProtoField.new("ENUM.SRC.ID", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.enumsrcid", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.enum_src_underlying_id = ProtoField.new("ENUM.SRC.UNDERLYING.ID", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.enumsrcunderlyingid", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.eod_view_close = ProtoField.new("EOD.VIEW.CLOSE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.eodviewclose", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.eod_view_open = ProtoField.new("EOD.VIEW.OPEN", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.eodviewopen", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.exch_message_timestamp = ProtoField.new("EXCH.MESSAGE.TIMESTAMP", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.exchmessagetimestamp", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.expiration_date = ProtoField.new("EXPIRATION.DATE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.expirationdate", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.first_trade_alert = ProtoField.new("FIRST.TRADE.ALERT", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.firsttradealert", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.force_login = ProtoField.new("FORCE.LOGIN", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.forcelogin", ftypes.BOOLEAN)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.host_server_ip = ProtoField.new("HOST.SERVER.IP", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.hostserverip", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.imbalance_side = ProtoField.new("IMBALANCE.SIDE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.imbalanceside", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.instr_local_type3 = ProtoField.new("INSTR.LOCAL_TYPE3", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.instrlocaltype3", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.instr_name = ProtoField.new("INSTR_NAME", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.instrname", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.instr_status = ProtoField.new("INSTR.STATUS", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.instrstatus", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.isin = ProtoField.new("ISIN", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.isin", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.last_trading_date = ProtoField.new("LAST.TRADING.DATE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.lasttradingdate", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.limit_high = ProtoField.new("LIMIT.HIGH", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.limithigh", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.limit_low = ProtoField.new("LIMIT.LOW", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.limitlow", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.market_phase = ProtoField.new("MARKET.PHASE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.marketphase", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.mm_id = ProtoField.new("MM.ID", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.mmid", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.multiplier = ProtoField.new("MULTIPLIER", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.multiplier", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.news_filter_code = ProtoField.new("NEWS.FILTER.CODE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.newsfiltercode", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.open_int = ProtoField.new("OPEN_INT", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.openint", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.open_int_date = ProtoField.new("OPEN.INT.DATE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.openintdate", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.operating_mic = ProtoField.new("OPERATING.MIC", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.operatingmic", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.option_expiry_type = ProtoField.new("OPTION.EXPIRY.TYPE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.optionexpirytype", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.order_imbalance_vol = ProtoField.new("ORDER.IMBALANCE.VOL", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.orderimbalancevol", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.pct_chg = ProtoField.new("PCT.CHG", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.pctchg", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.permission = ProtoField.new("PERMISSION", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.permission", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.pq_auction_price = ProtoField.new("PQ.AUCTION.PRICE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.pqauctionprice", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.pq_settle_price = ProtoField.new("PQ.SETTLE.PRICE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.pqsettleprice", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.pq_trade_high = ProtoField.new("PQ.TRADE.HIGH", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.pqtradehigh", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.pq_trade_low = ProtoField.new("PQ.TRADE.LOW", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.pqtradelow", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.prev_trade_date = ProtoField.new("PREV.TRADE.DATE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.prevtradedate", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.prior_session_current_price = ProtoField.new("PRIOR.SESSION.CURRENT.PRICE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.priorsessioncurrentprice", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.prior_session_settle_price = ProtoField.new("PRIOR.SESSION.SETTLE.PRICE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.priorsessionsettleprice", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.prior_session_trade_high = ProtoField.new("PRIOR.SESSION.TRADE.HIGH", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.priorsessiontradehigh", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.prior_session_trade_low = ProtoField.new("PRIOR.SESSION.TRADE.LOW", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.priorsessiontradelow", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.prior_session_trade_open = ProtoField.new("PRIOR.SESSION.TRADE.OPEN", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.priorsessiontradeopen", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.product_root = ProtoField.new("PRODUCT.ROOT", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.productroot", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_command = ProtoField.new("QUERY.COMMAND", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.querycommand", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_tag = ProtoField.new("QUERY.TAG", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.querytag", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.quote_cond_2 = ProtoField.new("QUOTE.COND_2", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.quotecond2", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.quote_date = ProtoField.new("QUOTE.DATE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.quotedate", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.quote_datetime = ProtoField.new("QUOTE.DATETIME", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.quotedatetime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.quote_official_close_date = ProtoField.new("QUOTE.OFFICIAL.CLOSE.DATE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.quoteofficialclosedate", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.record_del = ProtoField.new("RECORD.DEL", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.recorddel", ftypes.BOOLEAN)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.record_precision = ProtoField.new("RECORD.PRECISION", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.recordprecision", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.record_reset = ProtoField.new("RECORD.RESET", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.recordreset", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.record_stale_ind = ProtoField.new("RECORD.STALE.IND", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.recordstaleind", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ref_price = ProtoField.new("REF.PRICE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.refprice", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.refresh = ProtoField.new("REFRESH", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.refresh", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.retransmission_flag = ProtoField.new("RETRANSMISSION.FLAG", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.retransmissionflag", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.rnr_end_exch_seq = ProtoField.new("RNR.END.EXCH.SEQ", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.rnrendexchseq", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.rnr_exch_original_seq = ProtoField.new("RNR.EXCH.ORIGINAL.SEQ", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.rnrexchoriginalseq", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.sedol = ProtoField.new("SEDOL", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.sedol", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.seller_id = ProtoField.new("SELLER.ID", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.sellerid", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.session_vol = ProtoField.new("SESSION.VOL", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.sessionvol", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.settle_alt_datetime = ProtoField.new("SETTLE.ALT.DATETIME", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.settlealtdatetime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.settle_alt_price = ProtoField.new("SETTLE.ALT.PRICE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.settlealtprice", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.settle_date = ProtoField.new("SETTLE.DATE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.settledate", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.settle_price = ProtoField.new("SETTLE.PRICE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.settleprice", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.source_instrument_code = ProtoField.new("SOURCE.INSTRUMENT.CODE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.sourceinstrumentcode", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.strategy_leg_types = ProtoField.new("STRATEGY.LEG.TYPES", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.strategylegtypes", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.strike_price = ProtoField.new("STRIKE.PRICE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.strikeprice", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.symbol_bloomberg_ticker = ProtoField.new("SYMBOL.BLOOMBERG.TICKER", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.symbolbloombergticker", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.symbol_esignal_ticker = ProtoField.new("SYMBOL.ESIGNAL.TICKER", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.symbolesignalticker", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.symbol_ticker = ProtoField.new("SYMBOL.TICKER", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.symbolticker", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.symbol_ticker_alias = ProtoField.new("SYMBOL.TICKER.ALIAS", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.symboltickeralias", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.symbol_underlying_ticker = ProtoField.new("SYMBOL.UNDERLYING.TICKER", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.symbolunderlyingticker", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.theoretical_open = ProtoField.new("THEORETICAL.OPEN", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.theoreticalopen", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.token_del = ProtoField.new("TOKEN.DEL", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.tokendel", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.tradable_status = ProtoField.new("TRADABLE.STATUS", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.tradablestatus", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_block_count = ProtoField.new("TRADE.BLOCK.COUNT", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.tradeblockcount", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_block_vol = ProtoField.new("TRADE.BLOCK.VOL", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.tradeblockvol", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_cond_1 = ProtoField.new("TRADE.COND_1", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.tradecond1", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_cond_2 = ProtoField.new("TRADE.COND_2", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.tradecond2", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_cond_datetime = ProtoField.new("TRADE.COND.DATETIME", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.tradeconddatetime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_cond_price = ProtoField.new("TRADE.COND.PRICE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.tradecondprice", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_cond_size = ProtoField.new("TRADE.COND.SIZE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.tradecondsize", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_date = ProtoField.new("TRADE.DATE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.tradedate", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_datetime = ProtoField.new("TRADE.DATETIME", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.tradedatetime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_high = ProtoField.new("TRADE.HIGH", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.tradehigh", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_low = ProtoField.new("TRADE.LOW", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.tradelow", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_official_date = ProtoField.new("TRADE.OFFICIAL.DATE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.tradeofficialdate", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_official_time = ProtoField.new("TRADE.OFFICIAL.TIME", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.tradeofficialtime", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_open = ProtoField.new("TRADE.OPEN", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.tradeopen", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_price = ProtoField.new("TRADE.PRICE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.tradeprice", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_size = ProtoField.new("TRADE.SIZE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.tradesize", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_tick = ProtoField.new("TRADE.TICK", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.tradetick", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_trend = ProtoField.new("TRADE.TREND", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.tradetrend", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_unique_id = ProtoField.new("TRADE.UNIQUE.ID", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.tradeuniqueid", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_vol = ProtoField.new("TRADE.VOL", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.tradevol", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ts_auction_end = ProtoField.new("TS.AUCTION.END", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.tsauctionend", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ts_auction_price = ProtoField.new("TS.AUCTION.PRICE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.tsauctionprice", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.update_action = ProtoField.new("UPDATE.ACTION", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.updateaction", ftypes.INT64)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.user_name = ProtoField.new("USER_NAME", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.username", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.user_password = ProtoField.new("USER.PASSWORD", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.userpassword", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.vwap = ProtoField.new("VWAP", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.vwap", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.week52_trade_high = ProtoField.new("WEEK52.TRADE.HIGH", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.week52tradehigh", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.week52_trade_low = ProtoField.new("WEEK52.TRADE.LOW", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.week52tradelow", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.yest_trade_close = ProtoField.new("YEST.TRADE.CLOSE", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.yesttradeclose", ftypes.DOUBLE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.yest_trade_vol = ProtoField.new("YEST.TRADE.VOL", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.yesttradevol", ftypes.INT64)

-- Ice IceDataServices BrazilBmf Ctf 2024.10.09 Message Fields
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.get_conflation_interval_message = ProtoField.new("Get Conflation Interval Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.getconflationintervalmessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.get_port_message = ProtoField.new("Get Port Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.getportmessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_administration_info_message = ProtoField.new("List Administration Info Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.listadministrationinfomessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_available_tokens_message = ProtoField.new("List Available Tokens Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.listavailabletokensmessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_enumeration_message = ProtoField.new("List Enumeration Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.listenumerationmessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_exchange_tokens_message = ProtoField.new("List Exchange Tokens Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.listexchangetokensmessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_extended_exchange_info_message = ProtoField.new("List Extended Exchange Info Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.listextendedexchangeinfomessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_internal_tokens_message = ProtoField.new("List Internal Tokens Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.listinternaltokensmessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_split_exchanges_message = ProtoField.new("List Split Exchanges Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.listsplitexchangesmessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_subscribed_exchanges_message = ProtoField.new("List Subscribed Exchanges Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.listsubscribedexchangesmessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_subscribed_news_message = ProtoField.new("List Subscribed News Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.listsubscribednewsmessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_subscribed_symbols_message = ProtoField.new("List Subscribed Symbols Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.listsubscribedsymbolsmessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_system_permission_message = ProtoField.new("List System Permission Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.listsystempermissionmessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_user_permission_message = ProtoField.new("List User Permission Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.listuserpermissionmessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_user_tokens_message = ProtoField.new("List User Tokens Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.listusertokensmessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.login_user_message = ProtoField.new("Login User Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.loginusermessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_depth_and_subscribe_message = ProtoField.new("Query Depth And Subscribe Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.querydepthandsubscribemessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_depth_message = ProtoField.new("Query Depth Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.querydepthmessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_snap_and_subscribe_message = ProtoField.new("Query Snap And Subscribe Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.querysnapandsubscribemessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_snap_message = ProtoField.new("Query Snap Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.querysnapmessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_subscribed_exchanges_message = ProtoField.new("Query Subscribed Exchanges Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.querysubscribedexchangesmessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_subscribed_symbols_message = ProtoField.new("Query Subscribed Symbols Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.querysubscribedsymbolsmessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_wild_card_message = ProtoField.new("Query Wild Card Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.querywildcardmessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_xref_message = ProtoField.new("Query Xref Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.queryxrefmessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.select_available_tokens_message = ProtoField.new("Select Available Tokens Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.selectavailabletokensmessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.select_output_message = ProtoField.new("Select Output Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.selectoutputmessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.select_user_filter_tokens_message = ProtoField.new("Select User Filter Tokens Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.selectuserfiltertokensmessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.select_user_tokens_message = ProtoField.new("Select User Tokens Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.selectusertokensmessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.set_conflation_interval_message = ProtoField.new("Set Conflation Interval Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.setconflationintervalmessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.subscribe_message = ProtoField.new("Subscribe Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.subscribemessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.unsubscribe_message = ProtoField.new("Unsubscribe Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.unsubscribemessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.update_message = ProtoField.new("Update Message", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.updatemessage", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.get_conflation_interval_response = ProtoField.new("Get Conflation Interval Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.getconflationintervalresponse", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.get_port_response = ProtoField.new("Get Port Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.getportresponse", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_administration_info_response = ProtoField.new("List Administration Info Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.listadministrationinforesponse", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_available_tokens_response = ProtoField.new("List Available Tokens Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.listavailabletokensresponse", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_enumeration_response = ProtoField.new("List Enumeration Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.listenumerationresponse", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_exchange_tokens_response = ProtoField.new("List Exchange Tokens Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.listexchangetokensresponse", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_extended_exchange_info_response = ProtoField.new("List Extended Exchange Info Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.listextendedexchangeinforesponse", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_internal_tokens_response = ProtoField.new("List Internal Tokens Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.listinternaltokensresponse", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_split_exchanges_response = ProtoField.new("List Split Exchanges Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.listsplitexchangesresponse", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_subscribed_exchanges_response = ProtoField.new("List Subscribed Exchanges Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.listsubscribedexchangesresponse", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_subscribed_news_response = ProtoField.new("List Subscribed News Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.listsubscribednewsresponse", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_subscribed_symbols_response = ProtoField.new("List Subscribed Symbols Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.listsubscribedsymbolsresponse", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_system_permission_response = ProtoField.new("List System Permission Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.listsystempermissionresponse", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_user_permission_response = ProtoField.new("List User Permission Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.listuserpermissionresponse", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_user_tokens_response = ProtoField.new("List User Tokens Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.listusertokensresponse", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.login_user_response = ProtoField.new("Login User Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.loginuserresponse", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_depth_and_subscribe_response = ProtoField.new("Query Depth And Subscribe Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.querydepthandsubscriberesponse", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_depth_response = ProtoField.new("Query Depth Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.querydepthresponse", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_snap_and_subscribe_response = ProtoField.new("Query Snap And Subscribe Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.querysnapandsubscriberesponse", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_snap_response = ProtoField.new("Query Snap Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.querysnapresponse", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_subscribed_exchanges_response = ProtoField.new("Query Subscribed Exchanges Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.querysubscribedexchangesresponse", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_subscribed_symbols_response = ProtoField.new("Query Subscribed Symbols Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.querysubscribedsymbolsresponse", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_wild_card_response = ProtoField.new("Query Wild Card Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.querywildcardresponse", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_xref_response = ProtoField.new("Query Xref Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.queryxrefresponse", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.select_available_tokens_response = ProtoField.new("Select Available Tokens Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.selectavailabletokensresponse", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.select_output_response = ProtoField.new("Select Output Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.selectoutputresponse", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.select_user_filter_tokens_response = ProtoField.new("Select User Filter Tokens Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.selectuserfiltertokensresponse", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.select_user_tokens_response = ProtoField.new("Select User Tokens Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.selectusertokensresponse", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.set_conflation_interval_response = ProtoField.new("Set Conflation Interval Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.setconflationintervalresponse", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.subscribe_response = ProtoField.new("Subscribe Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.subscriberesponse", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.unsubscribe_response = ProtoField.new("Unsubscribe Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.unsubscriberesponse", ftypes.STRING)

-- Ice IceDataServices BrazilBmf Ctf 2024.10.09 Payload Fields
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ctf_raw = ProtoField.new("Token", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.ctfraw", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ctf_null = ProtoField.new("Null", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.ctfnull", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ctf_response = ProtoField.new("Response", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.ctfresponse", ftypes.STRING)

-- Ice IceDataServices BrazilBmf Ctf 2024.10.09 Expert Info
ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.unknown_command = ProtoExpert.new("ice.icedataservices.brazilbmf.ctf.v2024.10.09.unknowncommand", "Unknown ctf command", expert.group.UNDECODED, expert.severity.WARN)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.unknown_token = ProtoExpert.new("ice.icedataservices.brazilbmf.ctf.v2024.10.09.unknowntoken", "Unknown ctf token", expert.group.UNDECODED, expert.severity.NOTE)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.unknown_value = ProtoExpert.new("ice.icedataservices.brazilbmf.ctf.v2024.10.09.unknownvalue", "Ctf value the model names no meaning for", expert.group.UNDECODED, expert.severity.NOTE)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.unexpected_token = ProtoExpert.new("ice.icedataservices.brazilbmf.ctf.v2024.10.09.unexpectedtoken", "Ctf token the command does not carry", expert.group.PROTOCOL, expert.severity.NOTE)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.missing_token = ProtoExpert.new("ice.icedataservices.brazilbmf.ctf.v2024.10.09.missingtoken", "Mandatory ctf token missing", expert.group.MALFORMED, expert.severity.WARN)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.invalid_value = ProtoExpert.new("ice.icedataservices.brazilbmf.ctf.v2024.10.09.invalidvalue", "Ctf value does not read as its type", expert.group.MALFORMED, expert.severity.WARN)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.malformed_param = ProtoExpert.new("ice.icedataservices.brazilbmf.ctf.v2024.10.09.malformedparam", "Ctf param is not a token number, separator and value", expert.group.MALFORMED, expert.severity.WARN)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.unanswered = ProtoExpert.new("ice.icedataservices.brazilbmf.ctf.v2024.10.09.unanswered", "Ctf response to no command seen in this conversation", expert.group.SEQUENCE, expert.severity.NOTE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts = { ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.unknown_command, ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.unknown_token, ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.unknown_value, ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.unexpected_token, ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.missing_token, ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.invalid_value, ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.malformed_param, ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.unanswered }

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Ice IceDataServices BrazilBmf Ctf 2024.10.09 Element Dissection Options
show.structs = true
show.headers = true

-- Register Ice IceDataServices BrazilBmf Ctf 2024.10.09 Show Options
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

-- Handle changed preferences
function omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.prefs_changed()

  -- Check if preferences have changed
  if show.headers ~= omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.prefs.show_headers then
    show.headers = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.prefs.show_headers
  end
  if show.structs ~= omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.prefs.show_structs then
    show.structs = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Ctf Functions
-----------------------------------------------------------------------

-- Pairs of a text from start (one based): offset (zero based) and length of each delimited pair, and its name and the offset and size of its value either side of the first separator
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_pairs = function(text, start, delimiter, separator)
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
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_params = function(buffer, offset, size)
  local params = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_pairs(buffer(offset, size):raw(), 1, "|", "=")
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
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_escapes = {
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
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_text = function(range, where)
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
    for _, escape in ipairs(ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_escapes) do
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
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_value = function(buffer, params, token, where)
  for _, param in ipairs(params) do
    if param.token == token then
      return ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_text(buffer(param.value, param.size), where)
    end
  end
  return nil
end

-- An instant from a count of units after the Unix epoch, digits the units take below a second: its NSTime and its nine digits below a second, read exactly; nil when the text is no count
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_instant = function(text, digits)
  local whole, fraction = text:match("^(%d+)%.?(%d*)$")
  if whole == nil then
    return nil
  end
  local padded = string.rep("0", digits + 1 - #whole)..whole
  local below = (padded:sub(#padded - digits + 1)..fraction.."000000000"):sub(1, 9)
  return NSTime.new(tonumber(padded:sub(1, #padded - digits)), tonumber(below)), below
end

-- Read String: text, as sent
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string = function(text)
  return text, text
end

-- Read Integer: a whole number from -9223372036854775808 to 9223372036854775807, read exactly into Int64
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer = function(text)
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
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float = function(text)
  local mantissa, exponent = text:match("^([+-]?[%d%.]+)([eE]?[+-]?%d*)$")
  if mantissa == nil or not (mantissa:match("^[+-]?%d+%.?%d*$") or mantissa:match("^[+-]?%.%d+$")) or (exponent ~= "" and not exponent:match("^[eE][+-]?%d+$")) then
    return nil
  end
  return tonumber(text), text
end

-- Read DateTime: Seconds after the Unix epoch, in UTC, shown as a date and time beside the count
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_date_time = function(text)
  local time, below = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_instant(text, 0)
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
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_bool = function(text)
  if text == "1" then
    return true, "True (1)"
  end
  if text == "0" then
    return false, "False (0)"
  end
  return nil
end

-- Names of the bits a value sets, and whether it sets a bit no name is given for
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_bits = function(bits, text)
  local number = tonumber(text)
  if number == nil or number < 0 or number % 1 ~= 0 then
    return "Unknown ("..text..")", true
  end
  local names = {}
  local rest = number
  for _, bit in ipairs(bits) do
    if math.floor(number / bit.value) % 2 == 1 then
      names[#names + 1] = bit.name
      rest = rest - bit.value
    end
  end
  if rest ~= 0 then
    names[#names + 1] = "Unknown bits "..string.format("%.0f", rest)
  end
  if #names == 0 then
    return "None ("..text..")", false
  end
  return table.concat(names, ", ").." ("..text..")", rest ~= 0
end

-- Reply codes a status carries, by value: ENUM.QUERY.STATUS (5001)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.replies = {
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
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_status = function(errors, code)
  if errors ~= nil and errors[code] ~= nil then
    return errors[code]
  end
  return ice_icedataservices_brazilbmf_ctf_v2024_10_09.replies[code]
end


-----------------------------------------------------------------------
-- Ctf Tokens
-----------------------------------------------------------------------

-- ABRV.CURRENCY (620): String
-- 3-character currency code
ice_icedataservices_brazilbmf_ctf_v2024_10_09.abrv_currency = { name = "ABRV.CURRENCY", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.abrv_currency, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- ACTIVITY.DATE (15): DateTime
-- (Not used in CTF output) Last activity date (UTC: yyyymmdd)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.activity_date = { name = "ACTIVITY.DATE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.activity_date, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_date_time, nullable = true }

-- ACTIVITY.DATETIME (16): DateTime
-- Last activity time (UNIXTimestamp.milliseconds)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.activity_datetime = { name = "ACTIVITY.DATETIME", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.activity_datetime, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_date_time, nullable = true }

-- ASK.CLOSE (207): Float
-- Closing ask price. Calculated by ICE Data Services.
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ask_close = { name = "ASK.CLOSE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ask_close, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- ASK.CLOSE_SIZE (791): Integer
-- Closing ask size
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ask_close_size = { name = "ASK.CLOSE_SIZE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ask_close_size, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- ASK.COUNT (211): Integer
-- Number of ask orders
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ask_count = { name = "ASK.COUNT", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ask_count, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- ASK.DATETIME (110): DateTime
-- Date time token triggered via timestamp process based on CTF 10 or 11
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ask_datetime = { name = "ASK.DATETIME", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ask_datetime, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_date_time, nullable = true }

-- ASK.PRICE (10): Float
-- Ask price
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ask_price = { name = "ASK.PRICE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ask_price, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- ASK.SIZE (11): Integer
-- Ask size
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ask_size = { name = "ASK.SIZE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ask_size, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- AUCTION.PRICE (624): Float
-- Auction price
ice_icedataservices_brazilbmf_ctf_v2024_10_09.auction_price = { name = "AUCTION.PRICE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.auction_price, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- AUCTION.PRICEBAND.PCT (1728): Float
-- Percentage at which the dynamic trading limits are set during auction periods. Trades can only be executed within this percentage of the last traded price.
ice_icedataservices_brazilbmf_ctf_v2024_10_09.auction_priceband_pct = { name = "AUCTION.PRICEBAND.PCT", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.auction_priceband_pct, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- AUCTION.VOL (645): Integer
-- Auction volume
ice_icedataservices_brazilbmf_ctf_v2024_10_09.auction_vol = { name = "AUCTION.VOL", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.auction_vol, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- BID.COUNT (225): Integer
-- Number of bid orders
ice_icedataservices_brazilbmf_ctf_v2024_10_09.bid_count = { name = "BID.COUNT", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.bid_count, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- BID.DATETIME (109): DateTime
-- Date time token triggered via timestamp process based on CTF 12 or 13
ice_icedataservices_brazilbmf_ctf_v2024_10_09.bid_datetime = { name = "BID.DATETIME", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.bid_datetime, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_date_time, nullable = true }

-- BID.PRICE (12): Float
-- Bid price
ice_icedataservices_brazilbmf_ctf_v2024_10_09.bid_price = { name = "BID.PRICE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.bid_price, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- BID.SIZE (13): Integer
-- Bid size
ice_icedataservices_brazilbmf_ctf_v2024_10_09.bid_size = { name = "BID.SIZE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.bid_size, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- BLOOMBERG.GLOBAL_ID (3952): String
-- Bloomberg Global ID. *Bloomberg’s unique, unchanging alphanumeric identifier, assigned to instruments at the Price Source (Exchange) level. The Bloomberg Global ID does not typically change during a corporate actions event.
ice_icedataservices_brazilbmf_ctf_v2024_10_09.bloomberg_global_id = { name = "BLOOMBERG.GLOBAL_ID", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.bloomberg_global_id, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- BLOOMBERG.GLOBAL_ID.COMP (3953): String
-- Bloomberg Global ID Composite. *Generally Index will not have Composite ID.
ice_icedataservices_brazilbmf_ctf_v2024_10_09.bloomberg_global_id_comp = { name = "BLOOMBERG.GLOBAL_ID.COMP", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.bloomberg_global_id_comp, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- BUYER.ID (375): Integer
-- Integer-Type Buyer Identifier
ice_icedataservices_brazilbmf_ctf_v2024_10_09.buyer_id = { name = "BUYER.ID", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.buyer_id, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- CDD.VERSION (5080): String
-- CDD version. No value is shown: read as text
ice_icedataservices_brazilbmf_ctf_v2024_10_09.cdd_version = { name = "CDD.VERSION", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.cdd_version, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- CHG (361): Float
-- Net change
ice_icedataservices_brazilbmf_ctf_v2024_10_09.chg = { name = "CHG", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.chg, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- CLIENT.PORT (13101): Integer
-- Port of the CSP that has the exchange and symbol (2.2.8; sample: 7023)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.client_port = { name = "CLIENT.PORT", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.client_port, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- CONFLATE.INDICATOR (5201): Bool
-- Set to 1 at login to have each non-conflatable message marked with 5201=0 (1.2.8)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.conflate_indicator = { name = "CONFLATE.INDICATOR", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.conflate_indicator, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_bool, nullable = true }

-- CONFLATION (2035): Integer
-- Requests trade-safe conflated data on a subscription (1.2.8; samples: 1)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.conflation = { name = "CONFLATION", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.conflation, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- CONFLATION.INTERVAL (2029): Integer
-- Conflation interval of the connection in milliseconds, 1 to 60000; default 1000 (2.2.9, 2.2.10; sample: 10000)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.conflation_interval = { name = "CONFLATION.INTERVAL", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.conflation_interval, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- CORRECTION.PREV.TRADE.PRICE (252): Float
-- Price to be corrected
ice_icedataservices_brazilbmf_ctf_v2024_10_09.correction_prev_trade_price = { name = "CORRECTION.PREV.TRADE.PRICE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.correction_prev_trade_price, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- CORRECTION.PREV.TRADE.SIZE (253): Integer
-- Size to be corrected
ice_icedataservices_brazilbmf_ctf_v2024_10_09.correction_prev_trade_size = { name = "CORRECTION.PREV.TRADE.SIZE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.correction_prev_trade_size, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- CSP.DDF_BATE (5013): String
-- DDF bate of an exchange's token (2.3.10; samples: f19, n)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.csp_ddf_bate = { name = "CSP.DDF_BATE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.csp_ddf_bate, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- CSP.NEWS (5005): String
-- Whether news messages are sent with market data: ON or OFF (2.3.5; samples: OFF)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.csp_news = { name = "CSP.NEWS", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.csp_news, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- CSP.OUTPUT_STATE (5018): String
-- Whether the CSP outputs data: ON or OFF (2.3.5; samples: ON)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.csp_output_state = { name = "CSP.OUTPUT_STATE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.csp_output_state, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- CSP.OUTPUT_TOKENS (5019): String
-- Token output mode: Standard, User or StandardAndUser (2.3.5, which prints it CSP.OUTPUT_TOKEN; samples: STANDARD)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.csp_output_tokens = { name = "CSP.OUTPUT_TOKENS", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.csp_output_tokens, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- CSP.VERSION (5008): String
-- CSP version (sample: V6.0.0alpha)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.csp_version = { name = "CSP.VERSION", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.csp_version, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- CTF.COMPRESSED (13265): Bool
-- Requests compressed (zlib) output: 1 compressed, 0 uncompressed (1.2.9)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_compressed = { name = "CTF.COMPRESSED", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ctf_compressed, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_bool, nullable = true }

-- CTF.ENUM.DESC (5033): String
-- Description of an enumerated value (1.2.1; samples: OPRA (Options Price Reporting Authority), British Pounds)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_enum_desc = { name = "CTF.ENUM.DESC", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ctf_enum_desc, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- CTF.ENUM.VALUE (5034): Integer
-- Numerical ID of an enumerated value (1.2.1; samples: 12, 14, 26)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_enum_value = { name = "CTF.ENUM.VALUE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ctf_enum_value, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- CTF.TOKEN.NAME (5010): String
-- Token name (samples: PERMISSION, ENUM.SRC.ID, SYMBOL.TICKER, PART.CODE)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_token_name = { name = "CTF.TOKEN.NAME", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ctf_token_name, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- CTF.TOKEN.NUM (5035): Integer
-- Token number (samples: 3, 4, 5, 7, 201)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_token_num = { name = "CTF.TOKEN.NUM", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ctf_token_num, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- CTF.TOKEN.SIZE (5011): Integer
-- Token maximum byte size (samples: 19, 20, 1)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_token_size = { name = "CTF.TOKEN.SIZE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ctf_token_size, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- CTF.TOKEN.STORE (5002): Integer
-- Whether the token can be queried from a data store (samples: 1, 20)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_token_store = { name = "CTF.TOKEN.STORE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ctf_token_store, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- CTF.TOKEN.TYPE (5012): String
-- Token data type (samples: INTEGER, STRING)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_token_type = { name = "CTF.TOKEN.TYPE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ctf_token_type, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- CURRENCY.STRING (435): String
-- Currency code, typically the ISO code
ice_icedataservices_brazilbmf_ctf_v2024_10_09.currency_string = { name = "CURRENCY.STRING", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.currency_string, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- CURRENT.DATETIME (437): DateTime
-- Current UTC time (UNIXTimestamp.milliseconds)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.current_datetime = { name = "CURRENT.DATETIME", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.current_datetime, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_date_time, nullable = true }

-- CURRENT.PRICE (14): Float
-- Current price
ice_icedataservices_brazilbmf_ctf_v2024_10_09.current_price = { name = "CURRENT.PRICE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.current_price, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- CUSIP (3123): String
-- CUSIP number, an alternate index (2.3.1; sample: 459200101)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.cusip = { name = "CUSIP", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.cusip, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- CUSTOMER.NUMBER (13349): String
-- Customer number. No value is shown: read as text
ice_icedataservices_brazilbmf_ctf_v2024_10_09.customer_number = { name = "CUSTOMER.NUMBER", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.customer_number, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- DELAY.MINS (269): Integer
-- Delay of the data in minutes
ice_icedataservices_brazilbmf_ctf_v2024_10_09.delay_mins = { name = "DELAY.MINS", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.delay_mins, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- DYNAMIC.LOWER.LMT (1419): Float
-- Dynamic lower price limit.
ice_icedataservices_brazilbmf_ctf_v2024_10_09.dynamic_lower_lmt = { name = "DYNAMIC.LOWER.LMT", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.dynamic_lower_lmt, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- DYNAMIC.PRICEBAND.PCT (1051): Float
-- Percentage at which the dynamic trading limits are set. Trades can only be executed within this percentage of the last traded price.
ice_icedataservices_brazilbmf_ctf_v2024_10_09.dynamic_priceband_pct = { name = "DYNAMIC.PRICEBAND.PCT", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.dynamic_priceband_pct, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- DYNAMIC.UPPER.LMT (1418): Float
-- Dynamic upper price limit.
ice_icedataservices_brazilbmf_ctf_v2024_10_09.dynamic_upper_lmt = { name = "DYNAMIC.UPPER.LMT", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.dynamic_upper_lmt, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- END.UPDATE.FLAG (3851): Integer
-- The value END.UPDATE.FLAG=0 flags that level 1 quotes are consistent
ice_icedataservices_brazilbmf_ctf_v2024_10_09.end_update_flag = { name = "END.UPDATE.FLAG", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.end_update_flag, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- ENTITLEMENT.CODE (6): Integer
-- Instrument level entitlement code to identify the specific content set the instrument belongs to
ice_icedataservices_brazilbmf_ctf_v2024_10_09.entitlement_code = { name = "ENTITLEMENT.CODE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.entitlement_code, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- ENUM.CURRENCY (270): Integer
-- Currency enumeration. In CSP output, alpha currency code is displayed.
ice_icedataservices_brazilbmf_ctf_v2024_10_09.enum_currency = { name = "ENUM.CURRENCY", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.enum_currency, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- ENUM.INSTR.TYPE (3133): ENUM.INSTR.TYPE
-- Enumerated instrument type. Used in conjunction with CTF field 'INSTR.TYPE'.
ice_icedataservices_brazilbmf_ctf_v2024_10_09.enum_instr_type = { name = "ENUM.INSTR.TYPE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.enum_instr_type, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }
ice_icedataservices_brazilbmf_ctf_v2024_10_09.enum_instr_type.names = {
  ["1025"] = "Future Spread",
  ["1280"] = "Future",
  ["1290"] = "Forward",
  ["1306"] = "Spot",
  ["2048"] = "Option",
  ["2049"] = "Option Spread",
  ["2304"] = "Equity Option",
  ["2560"] = "Index Option",
  ["3072"] = "Future Option",
  ["5102"] = "Interest Rate Swap",
  ["16384"] = "FOREX",
  ["18432"] = "FOREX Option",
  ["65534"] = "Test",
}

-- ENUM.QUERY.STATUS (5001): Integer
-- Status of a command: 0 for success, a negative value for an error (1.2.4)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.enum_query_status = { name = "ENUM.QUERY.STATUS", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.enum_query_status, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true, status = true }

-- ENUM.SRC.ID (4): Integer
-- Source ID for the source being reported
ice_icedataservices_brazilbmf_ctf_v2024_10_09.enum_src_id = { name = "ENUM.SRC.ID", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.enum_src_id, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- ENUM.SRC.UNDERLYING.ID (3130): Integer
-- Source ID of the underlying instrument (samples: 3130=558)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.enum_src_underlying_id = { name = "ENUM.SRC.UNDERLYING.ID", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.enum_src_underlying_id, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- EOD.VIEW.CLOSE (13322): String
-- End-of-Day view close time of a delayed CSP permission (2.2.6). No value is shown: read as text
ice_icedataservices_brazilbmf_ctf_v2024_10_09.eod_view_close = { name = "EOD.VIEW.CLOSE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.eod_view_close, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- EOD.VIEW.OPEN (13321): String
-- End-of-Day view open time of a delayed CSP permission (2.2.6). No value is shown: read as text
ice_icedataservices_brazilbmf_ctf_v2024_10_09.eod_view_open = { name = "EOD.VIEW.OPEN", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.eod_view_open, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- EXCH.MESSAGE.TIMESTAMP (55): Integer
-- Exchange sent timestamp in milliseconds (HHMMSSmmm). Time zone is UTC for this exchange.
ice_icedataservices_brazilbmf_ctf_v2024_10_09.exch_message_timestamp = { name = "EXCH.MESSAGE.TIMESTAMP", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.exch_message_timestamp, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- EXPIRATION.DATE (292): Integer
-- Expiration date
ice_icedataservices_brazilbmf_ctf_v2024_10_09.expiration_date = { name = "EXPIRATION.DATE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.expiration_date, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- FIRST.TRADE.ALERT (583): Integer
-- First trade of the day indicator
ice_icedataservices_brazilbmf_ctf_v2024_10_09.first_trade_alert = { name = "FIRST.TRADE.ALERT", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.first_trade_alert, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- FORCE.LOGIN (5079): Bool
-- Allows or refuses a second connection: 1 or 0, overriding the FORCE_LOGIN parameter of startup.csp (2.1.1)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.force_login = { name = "FORCE.LOGIN", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.force_login, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_bool, nullable = true }

-- HOST.SERVER.IP (13001): String
-- IP address of the CSP that has the exchange and symbol (2.2.8; sample: 127.0.01)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.host_server_ip = { name = "HOST.SERVER.IP", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.host_server_ip, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- IMBALANCE.SIDE (785): IMBALANCE.SIDE
-- Imbalance side indicator. See enumerated values
ice_icedataservices_brazilbmf_ctf_v2024_10_09.imbalance_side = { name = "IMBALANCE.SIDE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.imbalance_side, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }
ice_icedataservices_brazilbmf_ctf_v2024_10_09.imbalance_side.names = {
  ["1"] = "Buy",
  ["2"] = "Sell",
  ["3"] = "No imbalance",
}

-- INSTR.LOCAL_TYPE3 (8506): INSTR.LOCAL_TYPE3
-- BM&F instrument subtype. See enumerated values
ice_icedataservices_brazilbmf_ctf_v2024_10_09.instr_local_type3 = { name = "INSTR.LOCAL_TYPE3", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.instr_local_type3, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }
ice_icedataservices_brazilbmf_ctf_v2024_10_09.instr_local_type3.names = {
  ["2"] = "Commodity",
  ["3"] = "Corporate",
  ["4"] = "Currency",
  ["5"] = "Equity",
  ["6"] = "Government",
  ["7"] = "Index",
  ["15"] = "Economic Indicator",
  ["16"] = "Multileg",
}

-- INSTR_NAME (3127): String
-- Instrument name (an example response token of 2.3.3). No value is shown: read as text
ice_icedataservices_brazilbmf_ctf_v2024_10_09.instr_name = { name = "INSTR_NAME", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.instr_name, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- INSTR.STATUS (705): INSTR.STATUS
-- Instrument status. See enumerated values
ice_icedataservices_brazilbmf_ctf_v2024_10_09.instr_status = { name = "INSTR.STATUS", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.instr_status, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }
ice_icedataservices_brazilbmf_ctf_v2024_10_09.instr_status.names = {
  ["2"] = "Trading Halt (Pause)",
  ["4"] = "No-Open (Close)",
  ["17"] = "Ready to trade (Open)",
  ["18"] = "Not available for trading (Pre-close)",
  ["20"] = "Unknown or invalid",
  ["21"] = "Pre-open",
  ["101"] = "Final closing call",
  ["999"] = "Trading session change/clearance",
}

-- ISIN (3125): String
-- ISIN code, an alternate index (2.3.1)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.isin = { name = "ISIN", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.isin, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- LAST.TRADING.DATE (3518): Integer
-- The last day when trading is allowed to occur for an instrument, not the last date that the instrument actually traded. (Format yyyymmdd.) This is an RTSD token, and clients must have RTSD permissioning to receive it.
ice_icedataservices_brazilbmf_ctf_v2024_10_09.last_trading_date = { name = "LAST.TRADING.DATE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.last_trading_date, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- LIMIT.HIGH (338): Float
-- Limit high price
ice_icedataservices_brazilbmf_ctf_v2024_10_09.limit_high = { name = "LIMIT.HIGH", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.limit_high, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- LIMIT.LOW (339): Float
-- Limit low price
ice_icedataservices_brazilbmf_ctf_v2024_10_09.limit_low = { name = "LIMIT.LOW", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.limit_low, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- MARKET.PHASE (1709): MARKET.PHASE
-- Indicates the current trading phase of an instrument. See enumerated values
ice_icedataservices_brazilbmf_ctf_v2024_10_09.market_phase = { name = "MARKET.PHASE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.market_phase, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }
ice_icedataservices_brazilbmf_ctf_v2024_10_09.market_phase.names = {
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
ice_icedataservices_brazilbmf_ctf_v2024_10_09.mm_id = { name = "MM.ID", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.mm_id, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- MULTIPLIER (4010): Float
-- Option Multiplier is the factor at which the option premium and option strike price is multiplied.
ice_icedataservices_brazilbmf_ctf_v2024_10_09.multiplier = { name = "MULTIPLIER", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.multiplier, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- NEWS.FILTER.CODE (6016): String
-- News filter code the user is permissioned for (samples: RDB, RAR)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.news_filter_code = { name = "NEWS.FILTER.CODE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.news_filter_code, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- OPEN_INT (369): Integer
-- Open interest
ice_icedataservices_brazilbmf_ctf_v2024_10_09.open_int = { name = "OPEN_INT", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.open_int, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- OPEN.INT.DATE (293): Integer
-- Date to which the open interest applies, format YYYYMMDD
ice_icedataservices_brazilbmf_ctf_v2024_10_09.open_int_date = { name = "OPEN.INT.DATE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.open_int_date, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- OPERATING.MIC (3512): OPERATING.MIC
-- The Operating MIC, as defined by ISO-10383 Market Identifier Code (MIC).
ice_icedataservices_brazilbmf_ctf_v2024_10_09.operating_mic = { name = "OPERATING.MIC", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.operating_mic, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }
ice_icedataservices_brazilbmf_ctf_v2024_10_09.operating_mic.names = {
  ["BVMF"] = "Brazilian Mercantile and Futures Exchange",
}

-- OPTION.EXPIRY.TYPE (3921): String
-- Expiry type of an instrument (option, warrant etc.)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.option_expiry_type = { name = "OPTION.EXPIRY.TYPE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.option_expiry_type, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- ORDER.IMBALANCE.VOL (817): Integer
-- Order imbalance volume
ice_icedataservices_brazilbmf_ctf_v2024_10_09.order_imbalance_vol = { name = "ORDER.IMBALANCE.VOL", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.order_imbalance_vol, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- PCT.CHG (362): Float
-- Today’s percent net change.
ice_icedataservices_brazilbmf_ctf_v2024_10_09.pct_chg = { name = "PCT.CHG", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.pct_chg, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- PERMISSION (3): Integer
-- Permission ID for the source being reported
ice_icedataservices_brazilbmf_ctf_v2024_10_09.permission = { name = "PERMISSION", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.permission, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- PQ.AUCTION.PRICE (1318): PQ.AUCTION.PRICE
-- Identifies whether the values in auction price and auction size are firm or indicative. See enumerated values
ice_icedataservices_brazilbmf_ctf_v2024_10_09.pq_auction_price = { name = "PQ.AUCTION.PRICE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.pq_auction_price, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }
ice_icedataservices_brazilbmf_ctf_v2024_10_09.pq_auction_price.names = {
  ["0"] = "Indicative auction price",
  ["1"] = "Firm auction price",
}

-- PQ.SETTLE.PRICE (1095): PQ.SETTLE.PRICE
-- Price qualifier for settle price. See enumerated values
ice_icedataservices_brazilbmf_ctf_v2024_10_09.pq_settle_price = { name = "PQ.SETTLE.PRICE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.pq_settle_price, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }
ice_icedataservices_brazilbmf_ctf_v2024_10_09.pq_settle_price.names = {
  ["32"] = "Settle price is final",
  ["34"] = "Settle price is preliminary and subject to revision.",
}

-- PQ.TRADE.HIGH (1117): Integer
-- Price qualifier for high price (28=high is set by trade only)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.pq_trade_high = { name = "PQ.TRADE.HIGH", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.pq_trade_high, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- PQ.TRADE.LOW (1118): Integer
-- Price qualifier for low price (28=low is set by trade only)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.pq_trade_low = { name = "PQ.TRADE.LOW", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.pq_trade_low, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- PREV.TRADE.DATE (451): DateTime
-- Trade Date Close (UTC: yyyymmdd)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.prev_trade_date = { name = "PREV.TRADE.DATE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.prev_trade_date, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_date_time, nullable = true }

-- PRIOR.SESSION.CURRENT.PRICE (1141): Float
-- Prior Session Current Price
ice_icedataservices_brazilbmf_ctf_v2024_10_09.prior_session_current_price = { name = "PRIOR.SESSION.CURRENT.PRICE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.prior_session_current_price, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- PRIOR.SESSION.SETTLE.PRICE (1140): Float
-- Prior Session Settlement Price
ice_icedataservices_brazilbmf_ctf_v2024_10_09.prior_session_settle_price = { name = "PRIOR.SESSION.SETTLE.PRICE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.prior_session_settle_price, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- PRIOR.SESSION.TRADE.HIGH (1143): Float
-- Prior Session Trade High
ice_icedataservices_brazilbmf_ctf_v2024_10_09.prior_session_trade_high = { name = "PRIOR.SESSION.TRADE.HIGH", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.prior_session_trade_high, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- PRIOR.SESSION.TRADE.LOW (1144): Float
-- Prior Session Trade Low
ice_icedataservices_brazilbmf_ctf_v2024_10_09.prior_session_trade_low = { name = "PRIOR.SESSION.TRADE.LOW", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.prior_session_trade_low, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- PRIOR.SESSION.TRADE.OPEN (1145): Float
-- Prior Session Trade Open
ice_icedataservices_brazilbmf_ctf_v2024_10_09.prior_session_trade_open = { name = "PRIOR.SESSION.TRADE.OPEN", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.prior_session_trade_open, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- PRODUCT.ROOT (3974): String
-- Chaining functionality to Consolidated Feed through the use of token CTF 3974 PRODUCT.ROOT for Strategy symbols Examples: Root Symbol: S:CGF\P Contract symbols: S:CGFM18CGFU18 Contract symbols: S:CGFU18CGFZ18
ice_icedataservices_brazilbmf_ctf_v2024_10_09.product_root = { name = "PRODUCT.ROOT", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.product_root, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- QUERY.COMMAND (5022): String
-- The command: its value is the command's name (samples: 5022=LoginUser, 5022=Subscribe, 5022=QuerySnap)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_command = { name = "QUERY.COMMAND", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_command, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- QUERY.TAG (5026): Integer
-- Identifies a command and its response: the response carries the same token and value (1.2.6)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_tag = { name = "QUERY.TAG", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_tag, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- QUOTE.COND_2 (2001): Integer
-- Quote condition 2 (samples: 2001=25)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.quote_cond_2 = { name = "QUOTE.COND_2", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.quote_cond_2, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- QUOTE.DATE (19): DateTime
-- (Not used in CTF output) Quote date (UTC: yyyymmdd)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.quote_date = { name = "QUOTE.DATE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.quote_date, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_date_time, nullable = true }

-- QUOTE.DATETIME (20): DateTime
-- Quote time (UNIXTimestamp.milliseconds)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.quote_datetime = { name = "QUOTE.DATETIME", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.quote_datetime, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_date_time, nullable = true }

-- QUOTE.OFFICIAL.CLOSE.DATE (1713): Integer
-- Exchange provided date of closing BBOs (format YYYYMMDD)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.quote_official_close_date = { name = "QUOTE.OFFICIAL.CLOSE.DATE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.quote_official_close_date, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- RECORD.DEL (431): Bool
-- Ticker symbol delete legacy
ice_icedataservices_brazilbmf_ctf_v2024_10_09.record_del = { name = "RECORD.DEL", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.record_del, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_bool, nullable = true }

-- RECORD.PRECISION (209): Integer
-- (Not used in CTF output) Decimal precision. This value can be 1 through 9.
ice_icedataservices_brazilbmf_ctf_v2024_10_09.record_precision = { name = "RECORD.PRECISION", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.record_precision, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- RECORD.RESET (416): Integer
-- Reset this record
ice_icedataservices_brazilbmf_ctf_v2024_10_09.record_reset = { name = "RECORD.RESET", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.record_reset, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- RECORD.STALE.IND (5076): Integer
-- Indicates if data for a symbol is stale. Set to 1 if the CSP software is restarted or the CSP inbound feed is idle. Reset to 0 if an update or refresh message is received for the symbol.
ice_icedataservices_brazilbmf_ctf_v2024_10_09.record_stale_ind = { name = "RECORD.STALE.IND", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.record_stale_ind, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- REF.PRICE (622): Float
-- Reference Price, representing the exchange-calculated value of the corresponding economic indicator instrument. This token is only added/used for Economic Indicator instruments which don't typically trade.
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ref_price = { name = "REF.PRICE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ref_price, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- REFRESH (24): Integer
-- Message refresh indicator (0=Realtime, 1=Refresh)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.refresh = { name = "REFRESH", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.refresh, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- RETRANSMISSION.FLAG (13543): Integer
-- Indicates an update in a transmission
ice_icedataservices_brazilbmf_ctf_v2024_10_09.retransmission_flag = { name = "RETRANSMISSION.FLAG", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.retransmission_flag, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- RNR.END.EXCH.SEQ (5061): Integer
-- Official exchange sequence number
ice_icedataservices_brazilbmf_ctf_v2024_10_09.rnr_end_exch_seq = { name = "RNR.END.EXCH.SEQ", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.rnr_end_exch_seq, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- RNR.EXCH.ORIGINAL.SEQ (5072): Integer
-- Original exchange sequence number
ice_icedataservices_brazilbmf_ctf_v2024_10_09.rnr_exch_original_seq = { name = "RNR.EXCH.ORIGINAL.SEQ", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.rnr_exch_original_seq, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- SEDOL (3126): String
-- SEDOL code, an alternate index (2.3.1). No value is shown: read as text
ice_icedataservices_brazilbmf_ctf_v2024_10_09.sedol = { name = "SEDOL", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.sedol, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- SELLER.ID (309): Integer
-- Integer-type Seller Identifier
ice_icedataservices_brazilbmf_ctf_v2024_10_09.seller_id = { name = "SELLER.ID", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.seller_id, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- SESSION.VOL (23): Integer
-- Volume traded during the current trading session
ice_icedataservices_brazilbmf_ctf_v2024_10_09.session_vol = { name = "SESSION.VOL", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.session_vol, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- SETTLE.ALT.DATETIME (1885): DateTime
-- Alternative settle date/time
ice_icedataservices_brazilbmf_ctf_v2024_10_09.settle_alt_datetime = { name = "SETTLE.ALT.DATETIME", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.settle_alt_datetime, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_date_time, nullable = true }

-- SETTLE.ALT.PRICE (1886): Float
-- Alternative settlement price
ice_icedataservices_brazilbmf_ctf_v2024_10_09.settle_alt_price = { name = "SETTLE.ALT.PRICE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.settle_alt_price, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- SETTLE.DATE (417): DateTime
-- Last date when a settle price was received (UNIXTimestamp.milliseconds)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.settle_date = { name = "SETTLE.DATE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.settle_date, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_date_time, nullable = true }

-- SETTLE.PRICE (418): Float
-- Settlement price
ice_icedataservices_brazilbmf_ctf_v2024_10_09.settle_price = { name = "SETTLE.PRICE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.settle_price, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- SOURCE.INSTRUMENT.CODE (3927): String
-- A numeric code used by exchanges to optimize their storage and transmission of content. Used by exchanges when it is cheaper to store and transmit an integer identifier than a string.
ice_icedataservices_brazilbmf_ctf_v2024_10_09.source_instrument_code = { name = "SOURCE.INSTRUMENT.CODE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.source_instrument_code, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- STRATEGY.LEG.TYPES (3537): STRATEGY.LEG.TYPES
-- Strategy leg type; may contain multiple space-delimited values corresponding to each leg. See enumerated values
ice_icedataservices_brazilbmf_ctf_v2024_10_09.strategy_leg_types = { name = "STRATEGY.LEG.TYPES", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.strategy_leg_types, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }
ice_icedataservices_brazilbmf_ctf_v2024_10_09.strategy_leg_types.names = {
  ["CORP"] = "Corporate Fixed Income",
  ["ETF"] = "Exchange Traded Fund",
  ["FUT"] = "Futures",
  ["SPOT"] = "Spot Market",
  ["SOPT"] = "Spot Options",
  ["FOPT"] = "Future Options",
  ["DTERM"] = "Derivative Forward Markets",
  ["CS"] = "Common Stock",
  ["PS"] = "Preferred Stock",
  ["CASH"] = "Rights, etc.",
  ["FORWARD"] = "Equity Forward",
  ["OPT"] = "Option",
  ["INDEX"] = "Non Tradable Index",
  ["OPTEXER"] = "Option Exercise",
  ["MLEG"] = "Multileg Instrument",
  ["SECLOAN"] = "Security Loan",
  ["INDEXOPT"] = "Option on Index",
}

-- STRIKE.PRICE (423): Float
-- Strike price
ice_icedataservices_brazilbmf_ctf_v2024_10_09.strike_price = { name = "STRIKE.PRICE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.strike_price, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- SYMBOL.BLOOMBERG.TICKER (3950): String
-- Bloomberg Symbol *Note, based on Bloomberg’s Recommendation, the Bloomberg Symbol for indices will take the format of a Symbol and the text “Index” with a single space between them. Unlike other exchange traded instruments, the Bloomberg Symbol for indices will not include a Pricing Source. i.e. <NKY Index> for Nikkei 225. Note importantly that IDS will publish changes to the Bloomberg Ticker Symbol upon receipt of the change from Bloomberg, but cannot guarantee that Bloomberg will send changes in advance of trading on the effective date.
ice_icedataservices_brazilbmf_ctf_v2024_10_09.symbol_bloomberg_ticker = { name = "SYMBOL.BLOOMBERG.TICKER", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.symbol_bloomberg_ticker, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- SYMBOL.ESIGNAL.TICKER (3958): String
-- eSignal Symbol including source suffix (e.g. AJG-LON, A:A2A-MIL)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.symbol_esignal_ticker = { name = "SYMBOL.ESIGNAL.TICKER", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.symbol_esignal_ticker, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- SYMBOL.TICKER (5): String
-- Consolidated Feed symbol for security/instrument
ice_icedataservices_brazilbmf_ctf_v2024_10_09.symbol_ticker = { name = "SYMBOL.TICKER", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.symbol_ticker, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true, where = "Symbol" }

-- SYMBOL.TICKER.ALIAS (4070): String
-- The instrument's symbol alias regime, presented as chaining symbology for all future symbols
ice_icedataservices_brazilbmf_ctf_v2024_10_09.symbol_ticker_alias = { name = "SYMBOL.TICKER.ALIAS", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.symbol_ticker_alias, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- SYMBOL.UNDERLYING.TICKER (3083): String
-- Symbol of the underlying instrument (String in every supplement; samples: 3083=IBM)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.symbol_underlying_ticker = { name = "SYMBOL.UNDERLYING.TICKER", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.symbol_underlying_ticker, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- THEORETICAL.OPEN (430): Float
-- Theoretical open
ice_icedataservices_brazilbmf_ctf_v2024_10_09.theoretical_open = { name = "THEORETICAL.OPEN", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.theoretical_open, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- TOKEN.DEL (5004): Integer
-- The value of this token is the ID of a token to be deleted.
ice_icedataservices_brazilbmf_ctf_v2024_10_09.token_del = { name = "TOKEN.DEL", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.token_del, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- TRADABLE.STATUS (1708): TRADABLE.STATUS
-- Indicates if an instrument is tradable, halted, or suspended. See enumerated values
ice_icedataservices_brazilbmf_ctf_v2024_10_09.tradable_status = { name = "TRADABLE.STATUS", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.tradable_status, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }
ice_icedataservices_brazilbmf_ctf_v2024_10_09.tradable_status.names = {
  ["0"] = "Undefined",
  ["1"] = "Normal",
  ["2"] = "Halted",
  ["3"] = "Suspended",
}

-- TRADE.BLOCK.COUNT (440): Integer
-- Calculated field: number of trades of size greater than 10000 for current trading day
ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_block_count = { name = "TRADE.BLOCK.COUNT", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_block_count, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- TRADE.BLOCK.VOL (441): Integer
-- Calculated field: total volume of trades of size greater than 10000 for current trading day
ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_block_vol = { name = "TRADE.BLOCK.VOL", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_block_vol, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- TRADE.COND_1 (2500): TRADE.COND_1
-- Trade condition 1. See enumerated values
ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_cond_1 = { name = "TRADE.COND_1", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_cond_1, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }
ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_cond_1.names = {
  ["0"] = "Otherwise - neither Crossed (1) nor prior day/non-regular session trade (24)",
  ["1"] = "Crossed",
  ["24"] = "A prior day trade (determined by comparing Exchange-reported Trade Date to today's date) or Exchange identified trade having occurred in a \"non-regular\" session.",
  ["25"] = "Retail liquidity trade - private book",
}

-- TRADE.COND_2 (2501): TRADE.COND_2
-- Trade condition 2. See enumerated values
ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_cond_2 = { name = "TRADE.COND_2", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_cond_2, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }
ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_cond_2.bits = {
  { value = 1, name = "Opening price" },
  { value = 2, name = "Crossed" },
  { value = 4, name = "Last trade at the same price indicator" },
  { value = 8, name = "Imbalance, more buyers" },
  { value = 16, name = "Imbalance, more sellers" },
  { value = 32, name = "Exchange last" },
}

-- TRADE.COND.DATETIME (76): DateTime
-- Last Conditional Trade Time
ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_cond_datetime = { name = "TRADE.COND.DATETIME", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_cond_datetime, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_date_time, nullable = true }

-- TRADE.COND.PRICE (447): Float
-- Trade condition price; used on source ID 937 only if TRADE.COND_1 = 24
ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_cond_price = { name = "TRADE.COND.PRICE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_cond_price, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- TRADE.COND.SIZE (448): Integer
-- Trade condition size; used on source ID 937 only if TRADE.COND_1 = 24
ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_cond_size = { name = "TRADE.COND.SIZE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_cond_size, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- TRADE.DATE (17): DateTime
-- (Not used in CTF output) Last Trade Date (UTC: yyyymmdd)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_date = { name = "TRADE.DATE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_date, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_date_time, nullable = true }

-- TRADE.DATETIME (18): DateTime
-- Last Trade Time (UNIXTimestamp.milliseconds)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_datetime = { name = "TRADE.DATETIME", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_datetime, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_date_time, nullable = true }

-- TRADE.HIGH (388): Float
-- Today’s high price
ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_high = { name = "TRADE.HIGH", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_high, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- TRADE.LOW (394): Float
-- Today’s low price
ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_low = { name = "TRADE.LOW", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_low, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- TRADE.OFFICIAL.DATE (444): Integer
-- Official exchange trade date
ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_official_date = { name = "TRADE.OFFICIAL.DATE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_official_date, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- TRADE.OFFICIAL.TIME (459): Integer
-- Exchange trade time. Format: HHMMSSmmm
ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_official_time = { name = "TRADE.OFFICIAL.TIME", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_official_time, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- TRADE.OPEN (400): Float
-- Open price
ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_open = { name = "TRADE.OPEN", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_open, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- TRADE.PRICE (8): Float
-- Last trade price
ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_price = { name = "TRADE.PRICE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_price, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- TRADE.SIZE (9): Integer
-- Incremental volume
ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_size = { name = "TRADE.SIZE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_size, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- TRADE.TICK (316): String
-- Latest price movement: uptick (+) or downtick (-)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_tick = { name = "TRADE.TICK", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_tick, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- TRADE.TREND (432): String
-- Price movement for last 8 trades, the first byte representing the most recent trade. Values are uptick (+), downtick (-), or unchanged (*).
ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_trend = { name = "TRADE.TREND", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_trend, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- TRADE.UNIQUE.ID (461): Integer
-- Unique trade ID
ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_unique_id = { name = "TRADE.UNIQUE.ID", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_unique_id, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- TRADE.VOL (22): Integer
-- RTS calculated cumulative trade volume.
ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_vol = { name = "TRADE.VOL", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.trade_vol, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- TS.AUCTION.END (1692): Integer
-- The time when the current auction period ends (format HHMMSSmmm)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ts_auction_end = { name = "TS.AUCTION.END", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ts_auction_end, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- TS.AUCTION.PRICE (1411): Integer
-- Auction price timestamp (format HHMMSSmmm)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ts_auction_price = { name = "TS.AUCTION.PRICE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ts_auction_price, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- UPDATE.ACTION (469): Integer
-- Value = token number of latest trade or quote update (TRADE.PRICE, BID.PRICE, BID.SIZE, ASK.PRICE, or ASK.SIZE)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.update_action = { name = "UPDATE.ACTION", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.update_action, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- USER_NAME (5028): String
-- User name (samples: user001, user002)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.user_name = { name = "USER_NAME", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.user_name, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- USER.PASSWORD (5029): String
-- User password (sample: PASSWD1)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.user_password = { name = "USER.PASSWORD", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.user_password, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_string, nullable = true }

-- VWAP (474): Float
-- Volume Weighted Average Price. Calculated for every trade and size pair using the following formula: 1) VWAP [new] = ((VWAP [old] * V [old]) + (T * I)) / (V [old] + I) 2) V [new] = V [old] + I where: T = trade price (8) I = trade size (9) V = total volume (22)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.vwap = { name = "VWAP", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.vwap, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- WEEK52.TRADE.HIGH (3060): Float
-- 52-week trade high price
ice_icedataservices_brazilbmf_ctf_v2024_10_09.week52_trade_high = { name = "WEEK52.TRADE.HIGH", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.week52_trade_high, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- WEEK52.TRADE.LOW (3061): Float
-- 52-week trade low price
ice_icedataservices_brazilbmf_ctf_v2024_10_09.week52_trade_low = { name = "WEEK52.TRADE.LOW", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.week52_trade_low, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- YEST.TRADE.CLOSE (407): Float
-- Previous trading day’s close price
ice_icedataservices_brazilbmf_ctf_v2024_10_09.yest_trade_close = { name = "YEST.TRADE.CLOSE", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.yest_trade_close, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_float, nullable = true }

-- YEST.TRADE.VOL (473): Integer
-- Previous trading day's total cumulative volume
ice_icedataservices_brazilbmf_ctf_v2024_10_09.yest_trade_vol = { name = "YEST.TRADE.VOL", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.yest_trade_vol, read = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_read_integer, nullable = true }

-- Token dispatch: token number to token
ice_icedataservices_brazilbmf_ctf_v2024_10_09.tags = {
  ["3"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.permission,
  ["4"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.enum_src_id,
  ["5"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.symbol_ticker,
  ["6"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.entitlement_code,
  ["8"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_price,
  ["9"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_size,
  ["10"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ask_price,
  ["11"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ask_size,
  ["12"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.bid_price,
  ["13"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.bid_size,
  ["14"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.current_price,
  ["15"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.activity_date,
  ["16"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.activity_datetime,
  ["17"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_date,
  ["18"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_datetime,
  ["19"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.quote_date,
  ["20"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.quote_datetime,
  ["22"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_vol,
  ["23"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.session_vol,
  ["24"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.refresh,
  ["55"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.exch_message_timestamp,
  ["76"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_cond_datetime,
  ["109"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.bid_datetime,
  ["110"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ask_datetime,
  ["207"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ask_close,
  ["209"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.record_precision,
  ["211"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ask_count,
  ["225"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.bid_count,
  ["252"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.correction_prev_trade_price,
  ["253"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.correction_prev_trade_size,
  ["269"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.delay_mins,
  ["270"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.enum_currency,
  ["292"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.expiration_date,
  ["293"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.open_int_date,
  ["309"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.seller_id,
  ["316"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_tick,
  ["338"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.limit_high,
  ["339"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.limit_low,
  ["355"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.mm_id,
  ["361"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.chg,
  ["362"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.pct_chg,
  ["369"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.open_int,
  ["375"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.buyer_id,
  ["388"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_high,
  ["394"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_low,
  ["400"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_open,
  ["407"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.yest_trade_close,
  ["416"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.record_reset,
  ["417"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.settle_date,
  ["418"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.settle_price,
  ["423"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.strike_price,
  ["430"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.theoretical_open,
  ["431"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.record_del,
  ["432"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_trend,
  ["435"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.currency_string,
  ["437"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.current_datetime,
  ["440"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_block_count,
  ["441"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_block_vol,
  ["444"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_official_date,
  ["447"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_cond_price,
  ["448"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_cond_size,
  ["451"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.prev_trade_date,
  ["459"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_official_time,
  ["461"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_unique_id,
  ["469"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.update_action,
  ["473"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.yest_trade_vol,
  ["474"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.vwap,
  ["583"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.first_trade_alert,
  ["620"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.abrv_currency,
  ["622"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ref_price,
  ["624"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.auction_price,
  ["645"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.auction_vol,
  ["705"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.instr_status,
  ["785"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.imbalance_side,
  ["791"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ask_close_size,
  ["817"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.order_imbalance_vol,
  ["1051"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.dynamic_priceband_pct,
  ["1095"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.pq_settle_price,
  ["1117"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.pq_trade_high,
  ["1118"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.pq_trade_low,
  ["1140"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.prior_session_settle_price,
  ["1141"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.prior_session_current_price,
  ["1143"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.prior_session_trade_high,
  ["1144"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.prior_session_trade_low,
  ["1145"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.prior_session_trade_open,
  ["1318"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.pq_auction_price,
  ["1411"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ts_auction_price,
  ["1418"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.dynamic_upper_lmt,
  ["1419"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.dynamic_lower_lmt,
  ["1692"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ts_auction_end,
  ["1708"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.tradable_status,
  ["1709"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.market_phase,
  ["1713"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.quote_official_close_date,
  ["1728"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.auction_priceband_pct,
  ["1885"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.settle_alt_datetime,
  ["1886"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.settle_alt_price,
  ["2001"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.quote_cond_2,
  ["2029"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.conflation_interval,
  ["2035"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.conflation,
  ["2500"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_cond_1,
  ["2501"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.trade_cond_2,
  ["3060"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.week52_trade_high,
  ["3061"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.week52_trade_low,
  ["3083"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.symbol_underlying_ticker,
  ["3123"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.cusip,
  ["3125"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.isin,
  ["3126"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.sedol,
  ["3127"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.instr_name,
  ["3130"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.enum_src_underlying_id,
  ["3133"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.enum_instr_type,
  ["3512"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.operating_mic,
  ["3518"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.last_trading_date,
  ["3537"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.strategy_leg_types,
  ["3851"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.end_update_flag,
  ["3921"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.option_expiry_type,
  ["3927"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.source_instrument_code,
  ["3950"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.symbol_bloomberg_ticker,
  ["3952"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.bloomberg_global_id,
  ["3953"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.bloomberg_global_id_comp,
  ["3958"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.symbol_esignal_ticker,
  ["3974"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.product_root,
  ["4010"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.multiplier,
  ["4070"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.symbol_ticker_alias,
  ["5001"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.enum_query_status,
  ["5002"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_token_store,
  ["5004"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.token_del,
  ["5005"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.csp_news,
  ["5008"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.csp_version,
  ["5010"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_token_name,
  ["5011"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_token_size,
  ["5012"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_token_type,
  ["5013"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.csp_ddf_bate,
  ["5018"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.csp_output_state,
  ["5019"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.csp_output_tokens,
  ["5022"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_command,
  ["5026"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_tag,
  ["5028"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.user_name,
  ["5029"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.user_password,
  ["5033"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_enum_desc,
  ["5034"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_enum_value,
  ["5035"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_token_num,
  ["5061"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.rnr_end_exch_seq,
  ["5072"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.rnr_exch_original_seq,
  ["5076"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.record_stale_ind,
  ["5079"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.force_login,
  ["5080"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.cdd_version,
  ["5201"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.conflate_indicator,
  ["6016"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.news_filter_code,
  ["8506"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.instr_local_type3,
  ["13001"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.host_server_ip,
  ["13101"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.client_port,
  ["13265"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_compressed,
  ["13321"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.eod_view_open,
  ["13322"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.eod_view_close,
  ["13349"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.customer_number,
  ["13543"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.retransmission_flag,
}

-- Dissect the param of a known token: its value read as its type, shown by name, by its bits or by what it reports; an empty value of a nullable type is a null
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_token = function(buffer, param, packet, parent, tag, errors)
  local range = buffer(param.offset, param.length)
  local text = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_text(buffer(param.value, param.size), tag.where)
  local label = tag.name.." ("..param.token.."): "
  if text == "" and tag.nullable then
    return parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ctf_null, range, tag.name, label.."null"), text
  end
  local value, shown = tag.read(text)
  if value == nil then
    local item = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ctf_raw, range, text, label..text)
    item:add_proto_expert_info(ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.invalid_value, tag.name.." does not read as its type: "..text)
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
  elseif tag.bits ~= nil then
    shown, unknown = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_bits(tag.bits, text)
  elseif tag.status then
    local reply = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_status(errors, text)
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
    item:add_proto_expert_info(ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.unknown_value, tag.name.." value "..text.." is not one the model names")
  end
  return item, text
end


-----------------------------------------------------------------------
-- Ctf Queries
-----------------------------------------------------------------------

-- Queries: per conversation, the command each QUERY.TAG (5026) asks
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_queries = {}

-- Answers: per response, by packet and offset, the command the first pass found it answers, false for none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_answers = {}

-- Conversation of a packet: both directions of one connection, the lower endpoint first
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_conversation = function(packet)
  local source = tostring(packet.src)..":"..tostring(packet.src_port)
  local destination = tostring(packet.dst)..":"..tostring(packet.dst_port)
  if source < destination then
    return source.."|"..destination
  end
  return destination.."|"..source
end

-- Keep the command a query tag asks, in its conversation, on the first pass
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_ask = function(packet, query, command)
  if packet.visited then
    return
  end
  local conversation = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_conversation(packet)
  local queries = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_queries
  queries[conversation] = queries[conversation] or {}
  queries[conversation][query] = command
end

-- The command a response answers, or nil: found on the first pass, read back on a later one
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_answer = function(packet, offset, query)
  local key = tostring(packet.number)..":"..tostring(offset)
  local answers = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_answers
  if not packet.visited then
    local asked = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_queries[ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_conversation(packet)]
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
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields = function(buffer, packet, parent, params, message)
  local seen = {}
  for _, param in ipairs(params) do
    local range = buffer(param.offset, param.length)
    if param.token == nil then
      local text = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_text(range, nil)
      local item = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ctf_raw, range, text, "Param: "..text)
      item:add_proto_expert_info(ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.malformed_param, "Not a token number, separator and value: "..text)
    else
      local tag = ice_icedataservices_brazilbmf_ctf_v2024_10_09.tags[param.token]
      if tag == nil then
        local text = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_text(buffer(param.value, param.size), nil)
        local item = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ctf_raw, range, text, "Token "..param.token..": "..text)
        item:add_proto_expert_info(ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.unknown_token, "Unknown ctf token: "..param.token)
      else
        local item = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_token(buffer, param, packet, parent, tag, message.errors)
        if message.codes ~= nil and not message.codes[param.token] then
          item:add_proto_expert_info(ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.unexpected_token, tag.name.." ("..param.token..") is not a token of "..message.name)
        end
        seen[param.token] = true
      end
    end
  end
  if message.mandatory ~= nil then
    for _, token in ipairs(message.mandatory) do
      if not seen[token] then
        parent:add_proto_expert_info(ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.missing_token, "Mandatory token "..message.codes[token].." ("..token..") missing from "..message.name)
      end
    end
  end
end

-- Get Conflation Interval Message (GetConflationInterval): System Information
-- This command allows users to view the current conflation interval for the connection. The interval is expressed in milliseconds and the default value is 1000 milliseconds.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.get_conflation_interval_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.get_conflation_interval_message.name = "GetConflationInterval"

-- Codes: Get Conflation Interval Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.get_conflation_interval_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG" }

-- Mandatory: Get Conflation Interval Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.get_conflation_interval_message.mandatory = { "5022", "5026" }

-- Dissect: Get Conflation Interval Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.get_conflation_interval_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.get_conflation_interval_message, buffer(offset, size), "GetConflationInterval")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.get_conflation_interval_message)
  return offset + size
end

-- Get Conflation Interval Response (GetConflationInterval): ENUM.QUERY.STATUS (5001), QUERY.TAG (5026), CONFLATION.INTERVAL (2029)
-- errors: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.get_conflation_interval_message.response = { name = "GetConflationInterval Response" }

-- Answer: Get Conflation Interval Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.get_conflation_interval_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.get_conflation_interval_response, buffer(offset, size), "GetConflationInterval")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.get_conflation_interval_message.response)
  return offset + size
end

-- Get Port Message (GetPort): System Information
-- In a multi-instance, multi-box scenario, this command returns the IP address and the port of the CSP that has a particular exchange and symbol.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026), ENUM.SRC.ID (4)
-- optional: SYMBOL.TICKER (5)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.get_port_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.get_port_message.name = "GetPort"

-- Codes: Get Port Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.get_port_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["4"] = "ENUM.SRC.ID", ["5"] = "SYMBOL.TICKER" }

-- Mandatory: Get Port Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.get_port_message.mandatory = { "5022", "5026", "4" }

-- Dissect: Get Port Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.get_port_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.get_port_message, buffer(offset, size), "GetPort")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.get_port_message)
  return offset + size
end

-- Get Port Response (GetPort): ENUM.QUERY.STATUS (5001), QUERY.TAG (5026), HOST.SERVER.IP (13001), CLIENT.PORT (13101)
-- errors: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.get_port_message.response = { name = "GetPort Response" }

-- Answer: Get Port Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.get_port_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.get_port_response, buffer(offset, size), "GetPort")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.get_port_message.response)
  return offset + size
end

-- List Administration Info Message (ListAdministrationInfo): System Information
-- The ListAdministrationInfo command provides information about the CSP system and the active services.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_administration_info_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_administration_info_message.name = "ListAdministrationInfo"

-- Codes: List Administration Info Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_administration_info_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG" }

-- Mandatory: List Administration Info Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_administration_info_message.mandatory = { "5022", "5026" }

-- Dissect: List Administration Info Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_administration_info_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_administration_info_message, buffer(offset, size), "ListAdministrationInfo")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_administration_info_message)
  return offset + size
end

-- List Administration Info Response (ListAdministrationInfo): CURRENT.DATETIME (437), ENUM.QUERY.STATUS (5001), CSP.NEWS (5005), CSP.VERSION (5008), CSP.OUTPUT_STATE (5018), CSP.OUTPUT_TOKENS (5019), QUERY.TAG (5026), CDD.VERSION (5080), CUSTOMER.NUMBER (13349)
-- errors: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_administration_info_message.response = { name = "ListAdministrationInfo Response" }

-- Answer: List Administration Info Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_administration_info_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_administration_info_response, buffer(offset, size), "ListAdministrationInfo")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_administration_info_message.response)
  return offset + size
end

-- List Available Tokens Message (ListAvailableTokens): System Information
-- The ListAvailableTokens command lists all tokens currently available on the CSP. The response shows the token name, token number, maximum byte size, data type, and if the token can be queried from a data store.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_available_tokens_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_available_tokens_message.name = "ListAvailableTokens"

-- Codes: List Available Tokens Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_available_tokens_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG" }

-- Mandatory: List Available Tokens Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_available_tokens_message.mandatory = { "5022", "5026" }

-- Dissect: List Available Tokens Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_available_tokens_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_available_tokens_message, buffer(offset, size), "ListAvailableTokens")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_available_tokens_message)
  return offset + size
end

-- List Available Tokens Response (ListAvailableTokens): ENUM.QUERY.STATUS (5001), CTF.TOKEN.STORE (5002), CTF.TOKEN.NAME (5010), CTF.TOKEN.SIZE (5011), CTF.TOKEN.TYPE (5012), CTF.TOKEN.NUM (5035)
-- errors: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_available_tokens_message.response = { name = "ListAvailableTokens Response" }

-- Answer: List Available Tokens Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_available_tokens_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_available_tokens_response, buffer(offset, size), "ListAvailableTokens")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_available_tokens_message.response)
  return offset + size
end

-- List Enumeration Message (ListEnumeration): System Information
-- The ListEnumeration command can list: • All enumerated sets • One enumerated set • A single enumerated value within an enumerated set To list all enumerated sets, the ListEnumeration command is used without any optional arguments. To list all the elements of one enumerated set, an optional argument is used to identify the set. To list just one element of one enumerated set, optional arguments are included to identify the set and the position of the element in the set.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: CTF.TOKEN.NUM (5035), CTF.ENUM.VALUE (5034)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_enumeration_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_enumeration_message.name = "ListEnumeration"

-- Codes: List Enumeration Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_enumeration_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["5035"] = "CTF.TOKEN.NUM", ["5034"] = "CTF.ENUM.VALUE" }

-- Mandatory: List Enumeration Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_enumeration_message.mandatory = { "5022", "5026" }

-- Dissect: List Enumeration Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_enumeration_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_enumeration_message, buffer(offset, size), "ListEnumeration")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_enumeration_message)
  return offset + size
end

-- List Enumeration Response (ListEnumeration): ENUM.QUERY.STATUS (5001), QUERY.TAG (5026), CTF.ENUM.DESC (5033), CTF.ENUM.VALUE (5034), CTF.TOKEN.NUM (5035)
-- errors: ERR_REQ_INVALID (-46), ERR_PARAM_BOUNDARY (-33), ERR_EXIST_TOKEN (-24)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_enumeration_message.response = { name = "ListEnumeration Response" }
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_enumeration_message.response.errors = {
  ["-46"] = { name = "ERR_REQ_INVALID", shown = "ERR_REQ_INVALID: QUERY.COMMAND is missing or specifies an unrecognized command" },
  ["-33"] = { name = "ERR_PARAM_BOUNDARY", shown = "ERR_PARAM_BOUNDARY: Requested token is not associated with an enumeration set." },
  ["-24"] = { name = "ERR_EXIST_TOKEN", shown = "ERR_EXIST_TOKEN: Requested token does not exist." },
}

-- Answer: List Enumeration Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_enumeration_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_enumeration_response, buffer(offset, size), "ListEnumeration")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_enumeration_message.response)
  return offset + size
end

-- List Exchange Tokens Message (ListExchangeTokens): Data Subscriptions
-- The ListExchangeTokens command returns all tokens used on one or all exchanges. If a value for ENUM.SRC.ID is included in the query, the response lists the tokens used on just the specified exchange; only one instance of ENUM.SRC.ID is allowed. If ENUM.SRC.ID is not included, the response lists all tokens used on all exchanges.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: ENUM.SRC.ID (4)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_exchange_tokens_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_exchange_tokens_message.name = "ListExchangeTokens"

-- Codes: List Exchange Tokens Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_exchange_tokens_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["4"] = "ENUM.SRC.ID" }

-- Mandatory: List Exchange Tokens Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_exchange_tokens_message.mandatory = { "5022", "5026" }

-- Dissect: List Exchange Tokens Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_exchange_tokens_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_exchange_tokens_message, buffer(offset, size), "ListExchangeTokens")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_exchange_tokens_message)
  return offset + size
end

-- List Exchange Tokens Response (ListExchangeTokens): ENUM.QUERY.STATUS (5001), CTF.TOKEN.NAME (5010), QUERY.TAG (5026), CTF.TOKEN.NUM (5035), CSP.DDF_BATE (5013)
-- errors: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_exchange_tokens_message.response = { name = "ListExchangeTokens Response" }

-- Answer: List Exchange Tokens Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_exchange_tokens_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_exchange_tokens_response, buffer(offset, size), "ListExchangeTokens")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_exchange_tokens_message.response)
  return offset + size
end

-- List Extended Exchange Info Message (ListExtendedExchangeInfo): System Information
-- This command lists information from any delayed CSP about delay times and End-of-Day view times. The order of the tokens in the response is significant. Both DELAY.MINS and the EOD tokens are preceded by the PERMISSION to which each applies.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_extended_exchange_info_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_extended_exchange_info_message.name = "ListExtendedExchangeInfo"

-- Codes: List Extended Exchange Info Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_extended_exchange_info_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG" }

-- Mandatory: List Extended Exchange Info Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_extended_exchange_info_message.mandatory = { "5022", "5026" }

-- Dissect: List Extended Exchange Info Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_extended_exchange_info_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_extended_exchange_info_message, buffer(offset, size), "ListExtendedExchangeInfo")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_extended_exchange_info_message)
  return offset + size
end

-- List Extended Exchange Info Response (ListExtendedExchangeInfo): PERMISSION (3), DELAY.MINS (269), QUERY.TAG (5026), EOD.VIEW.OPEN (13321), EOD.VIEW.CLOSE (13322)
-- errors: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_extended_exchange_info_message.response = { name = "ListExtendedExchangeInfo Response" }

-- Answer: List Extended Exchange Info Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_extended_exchange_info_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_extended_exchange_info_response, buffer(offset, size), "ListExtendedExchangeInfo")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_extended_exchange_info_message.response)
  return offset + size
end

-- List Internal Tokens Message (ListInternalTokens): System Information
-- This command lists all CTF data tokens recognized by the CSP including those that are used solely for DDF output. The list of tokens returned by ListAvailableTokens is a subset of the list returned by ListInternalTokens. The response of ListInternalTokens shows the token name, token number, maximum byte size, data type, and if the token can be queried from a data store.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_internal_tokens_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_internal_tokens_message.name = "ListInternalTokens"

-- Codes: List Internal Tokens Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_internal_tokens_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG" }

-- Mandatory: List Internal Tokens Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_internal_tokens_message.mandatory = { "5022", "5026" }

-- Dissect: List Internal Tokens Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_internal_tokens_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_internal_tokens_message, buffer(offset, size), "ListInternalTokens")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_internal_tokens_message)
  return offset + size
end

-- List Internal Tokens Response (ListInternalTokens): ENUM.QUERY.STATUS (5001), CTF.TOKEN.STORE (5002), CTF.TOKEN.NAME (5010), CTF.TOKEN.SIZE (5011), CTF.TOKEN.TYPE (5012), CTF.TOKEN.NUM (5035)
-- errors: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_internal_tokens_message.response = { name = "ListInternalTokens Response" }

-- Answer: List Internal Tokens Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_internal_tokens_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_internal_tokens_response, buffer(offset, size), "ListInternalTokens")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_internal_tokens_message.response)
  return offset + size
end

-- List Split Exchanges Message (ListSplitExchanges): Data Subscriptions
-- This command lists all source IDs that carry data only for restricted subsets of ticker symbols on the CSP. All symbols in a subset begin with the same letter or with a non-alphabetic character. The capability of reporting exchange data that is restricted according to ticker symbol is available in the CSP version 6.5 and later. The response to the ListSplitExchanges command is a sequence of regular expressions indicating the first letter of each reported subset of symbols or indicating a non-alphabetic character as the first character of the symbol subset.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_split_exchanges_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_split_exchanges_message.name = "ListSplitExchanges"

-- Codes: List Split Exchanges Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_split_exchanges_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG" }

-- Mandatory: List Split Exchanges Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_split_exchanges_message.mandatory = { "5022", "5026" }

-- Dissect: List Split Exchanges Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_split_exchanges_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_split_exchanges_message, buffer(offset, size), "ListSplitExchanges")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_split_exchanges_message)
  return offset + size
end

-- List Split Exchanges Response (ListSplitExchanges): ENUM.SRC.ID (4), SYMBOL.TICKER (5), ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_split_exchanges_message.response = { name = "ListSplitExchanges Response" }

-- Answer: List Split Exchanges Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_split_exchanges_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_split_exchanges_response, buffer(offset, size), "ListSplitExchanges")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_split_exchanges_message.response)
  return offset + size
end

-- List Subscribed Exchanges Message (ListSubscribedExchanges): Data Subscriptions
-- The ListSubscribedExchanges command lists all the exchanges to which the user is currently subscribed.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_subscribed_exchanges_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_subscribed_exchanges_message.name = "ListSubscribedExchanges"

-- Codes: List Subscribed Exchanges Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_subscribed_exchanges_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG" }

-- Mandatory: List Subscribed Exchanges Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_subscribed_exchanges_message.mandatory = { "5022", "5026" }

-- Dissect: List Subscribed Exchanges Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_subscribed_exchanges_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_subscribed_exchanges_message, buffer(offset, size), "ListSubscribedExchanges")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_subscribed_exchanges_message)
  return offset + size
end

-- List Subscribed Exchanges Response (ListSubscribedExchanges): ENUM.SRC.ID (4), ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_subscribed_exchanges_message.response = { name = "ListSubscribedExchanges Response" }

-- Answer: List Subscribed Exchanges Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_subscribed_exchanges_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_subscribed_exchanges_response, buffer(offset, size), "ListSubscribedExchanges")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_subscribed_exchanges_message.response)
  return offset + size
end

-- List Subscribed News Message (ListSubscribedNews): Data Subscriptions
-- The ListSubscribedNews command lists all the news sources to which the user is currently subscribed.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_subscribed_news_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_subscribed_news_message.name = "ListSubscribedNews"

-- Codes: List Subscribed News Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_subscribed_news_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG" }

-- Mandatory: List Subscribed News Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_subscribed_news_message.mandatory = { "5022", "5026" }

-- Dissect: List Subscribed News Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_subscribed_news_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_subscribed_news_message, buffer(offset, size), "ListSubscribedNews")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_subscribed_news_message)
  return offset + size
end

-- List Subscribed News Response (ListSubscribedNews): ENUM.SRC.ID (4), ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_subscribed_news_message.response = { name = "ListSubscribedNews Response" }

-- Answer: List Subscribed News Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_subscribed_news_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_subscribed_news_response, buffer(offset, size), "ListSubscribedNews")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_subscribed_news_message.response)
  return offset + size
end

-- List Subscribed Symbols Message (ListSubscribedSymbols): Data Subscriptions
-- The ListSubscribedSymbols command lists all ticker symbols to which the user is currently subscribed.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_subscribed_symbols_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_subscribed_symbols_message.name = "ListSubscribedSymbols"

-- Codes: List Subscribed Symbols Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_subscribed_symbols_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG" }

-- Mandatory: List Subscribed Symbols Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_subscribed_symbols_message.mandatory = { "5022", "5026" }

-- Dissect: List Subscribed Symbols Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_subscribed_symbols_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_subscribed_symbols_message, buffer(offset, size), "ListSubscribedSymbols")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_subscribed_symbols_message)
  return offset + size
end

-- List Subscribed Symbols Response (ListSubscribedSymbols): ENUM.SRC.ID (4), SYMBOL.TICKER (5), ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_subscribed_symbols_message.response = { name = "ListSubscribedSymbols Response" }

-- Answer: List Subscribed Symbols Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_subscribed_symbols_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_subscribed_symbols_response, buffer(offset, size), "ListSubscribedSymbols")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_subscribed_symbols_message.response)
  return offset + size
end

-- List System Permission Message (ListSystemPermission): System Information
-- This command lists all of the entitlements of the CSP system. The permission codes that are returned represent exchange sources and news sources.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_system_permission_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_system_permission_message.name = "ListSystemPermission"

-- Codes: List System Permission Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_system_permission_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG" }

-- Mandatory: List System Permission Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_system_permission_message.mandatory = { "5022", "5026" }

-- Dissect: List System Permission Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_system_permission_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_system_permission_message, buffer(offset, size), "ListSystemPermission")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_system_permission_message)
  return offset + size
end

-- List System Permission Response (ListSystemPermission): PERMISSION (3), ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_system_permission_message.response = { name = "ListSystemPermission Response" }

-- Answer: List System Permission Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_system_permission_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_system_permission_response, buffer(offset, size), "ListSystemPermission")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_system_permission_message.response)
  return offset + size
end

-- List User Permission Message (ListUserPermission): System Information
-- This command lists all of the entitlements of the current user of the CSP system. The returned permission codes represent exchange sources, news sources, and news filter codes. In special cases the command can also be used to list the permissions of other users. If the startup.csp file includes the line OTHER_USER_PERMS=TRUE and if the person issuing the command is permissioned for the news code “PRM”, then the issuer can use the ListUserPermission command with another user ID to query the permissions of the other user.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: USER_NAME (5028)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_user_permission_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_user_permission_message.name = "ListUserPermission"

-- Codes: List User Permission Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_user_permission_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["5028"] = "USER_NAME" }

-- Mandatory: List User Permission Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_user_permission_message.mandatory = { "5022", "5026" }

-- Dissect: List User Permission Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_user_permission_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_user_permission_message, buffer(offset, size), "ListUserPermission")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_user_permission_message)
  return offset + size
end

-- List User Permission Response (ListUserPermission): PERMISSION (3), ENUM.QUERY.STATUS (5001), QUERY.TAG (5026), NEWS.FILTER.CODE (6016)
-- errors: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_user_permission_message.response = { name = "ListUserPermission Response" }

-- Answer: List User Permission Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_user_permission_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_user_permission_response, buffer(offset, size), "ListUserPermission")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_user_permission_message.response)
  return offset + size
end

-- List User Tokens Message (ListUserTokens): Data Subscriptions
-- The ListUserTokens command lists all tokens currently on the user’s selected token list.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_user_tokens_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_user_tokens_message.name = "ListUserTokens"

-- Codes: List User Tokens Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_user_tokens_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG" }

-- Mandatory: List User Tokens Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_user_tokens_message.mandatory = { "5022", "5026" }

-- Dissect: List User Tokens Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_user_tokens_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_user_tokens_message, buffer(offset, size), "ListUserTokens")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_user_tokens_message)
  return offset + size
end

-- List User Tokens Response (ListUserTokens): ENUM.QUERY.STATUS (5001), QUERY.TAG (5026), CTF.TOKEN.NUM (5035)
-- errors: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_user_tokens_message.response = { name = "ListUserTokens Response" }

-- Answer: List User Tokens Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_user_tokens_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.list_user_tokens_response, buffer(offset, size), "ListUserTokens")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_user_tokens_message.response)
  return offset + size
end

-- Login User Message (LoginUser): Login
-- The LoginUser command lets users log into the system. Each user must have a valid username and password. After a successful login, if a user attempts to log in a second time with the same username and password to another TCP socket, the system rejects the attempt and closes the second TCP socket without sending a response message.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026), USER_NAME (5028), USER.PASSWORD (5029)
-- optional: FORCE.LOGIN (5079), CTF.COMPRESSED (13265), CONFLATE.INDICATOR (5201)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.login_user_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.login_user_message.name = "LoginUser"

-- Codes: Login User Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.login_user_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["5028"] = "USER_NAME", ["5029"] = "USER.PASSWORD", ["5079"] = "FORCE.LOGIN", ["13265"] = "CTF.COMPRESSED", ["5201"] = "CONFLATE.INDICATOR" }

-- Mandatory: Login User Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.login_user_message.mandatory = { "5022", "5026", "5028", "5029" }

-- Dissect: Login User Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.login_user_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.login_user_message, buffer(offset, size), "LoginUser")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.login_user_message)
  return offset + size
end

-- Login User Response (LoginUser): ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: ERR_AUTH_TWICE_PROXY_110 (-139), ERR_AUTH_LOGIN_PROXY_108 (-137), ERR_REQ_INVALID (-46), ERR_AUTH_LOGIN_COUNT (-6), ERR_AUTH_LOGIN (-5), Successful login (0)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.login_user_message.response = { name = "LoginUser Response" }
ice_icedataservices_brazilbmf_ctf_v2024_10_09.login_user_message.response.errors = {
  ["-139"] = { name = "ERR_AUTH_TWICE_PROXY_110", shown = "ERR_AUTH_TWICE_PROXY_110: User already logged in" },
  ["-137"] = { name = "ERR_AUTH_LOGIN_PROXY_108", shown = "ERR_AUTH_LOGIN_PROXY_108: Incorrect username or password" },
  ["-46"] = { name = "ERR_REQ_INVALID", shown = "ERR_REQ_INVALID: QUERY.COMMAND is missing or specifies an unrecognized command" },
  ["-6"] = { name = "ERR_AUTH_LOGIN_COUNT", shown = "ERR_AUTH_LOGIN_COUNT: User already logged in via this TCP socket" },
  ["-5"] = { name = "ERR_AUTH_LOGIN", shown = "ERR_AUTH_LOGIN: Incorrect username or password. After returning the error message, the server closes this TCP socket." },
  ["0"] = { name = "", shown = "Successful login" },
}

-- Answer: Login User Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.login_user_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.login_user_response, buffer(offset, size), "LoginUser")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.login_user_message.response)
  return offset + size
end

-- Query Depth And Subscribe Message (QueryDepthAndSubscribe): Data Queries
-- The QueryDepthAndSubscribe command combines the QueryDepth command with features of the Subscribe command. When issued, it subscribes the user for streaming updates and then requests a snapshot to make sure that no updates have been missed.
-- mandatory: ENUM.SRC.ID (4), SYMBOL.TICKER (5), QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_depth_and_subscribe_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_depth_and_subscribe_message.name = "QueryDepthAndSubscribe"

-- Codes: Query Depth And Subscribe Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_depth_and_subscribe_message.codes = { ["4"] = "ENUM.SRC.ID", ["5"] = "SYMBOL.TICKER", ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG" }

-- Mandatory: Query Depth And Subscribe Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_depth_and_subscribe_message.mandatory = { "4", "5", "5022", "5026" }

-- Dissect: Query Depth And Subscribe Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_depth_and_subscribe_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_depth_and_subscribe_message, buffer(offset, size), "QueryDepthAndSubscribe")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_depth_and_subscribe_message)
  return offset + size
end

-- Query Depth And Subscribe Response (QueryDepthAndSubscribe): ENUM.SRC.ID (4), SYMBOL.TICKER (5), ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: ERR_REQ_INVALID (-46), ERR_PARAM_MISSING (-36)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_depth_and_subscribe_message.response = { name = "QueryDepthAndSubscribe Response" }
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_depth_and_subscribe_message.response.errors = {
  ["-46"] = { name = "ERR_REQ_INVALID", shown = "ERR_REQ_INVALID: - ENUM.SRC.ID is not a source configured to store depth order books, or - QUERY.COMMAND is missing or specifies an unrecognized command. - PART.CODE or MM.ID was supplied as a parameter in the command. They are not allowed." },
  ["-36"] = { name = "ERR_PARAM_MISSING", shown = "ERR_PARAM_MISSING: SYMBOL.TICKER or ENUM.SRC.ID is missing." },
}

-- Answer: Query Depth And Subscribe Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_depth_and_subscribe_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_depth_and_subscribe_response, buffer(offset, size), "QueryDepthAndSubscribe")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_depth_and_subscribe_message.response)
  return offset + size
end

-- Query Depth Message (QueryDepth): Data Queries
-- The QueryDepth command queries the depth database for bid, ask, market maker, and other information for a given instrument. Only one instance of SYMBOL.TICKER is permitted in the command. The SelectUserTokens command will not work along with the QueryDepth command. The tokens returned in the response are set and not configurable. (A token will be in the snapshot database if there is current data for it.)
-- mandatory: ENUM.SRC.ID (4), SYMBOL.TICKER (5), QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: MM.ID (355), CTF.TOKEN.NUM (5035)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_depth_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_depth_message.name = "QueryDepth"

-- Codes: Query Depth Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_depth_message.codes = { ["4"] = "ENUM.SRC.ID", ["5"] = "SYMBOL.TICKER", ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["355"] = "MM.ID", ["5035"] = "CTF.TOKEN.NUM" }

-- Mandatory: Query Depth Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_depth_message.mandatory = { "4", "5", "5022", "5026" }

-- Dissect: Query Depth Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_depth_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_depth_message, buffer(offset, size), "QueryDepth")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_depth_message)
  return offset + size
end

-- Query Depth Response (QueryDepth): PERMISSION (3), ENUM.SRC.ID (4), SYMBOL.TICKER (5), ENUM.QUERY.STATUS (5001), QUERY.TAG (5026), ASK.PRICE (10), ASK.SIZE (11), BID.PRICE (12), BID.SIZE (13), QUOTE.DATETIME (20), MM.ID (355), QUOTE.COND_2 (2001), TRADE.COND_1 (2500)
-- errors: ERR_REQ_INVALID (-46), ERR_PARAM_MISSING (-36)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_depth_message.response = { name = "QueryDepth Response" }
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_depth_message.response.errors = {
  ["-46"] = { name = "ERR_REQ_INVALID", shown = "ERR_REQ_INVALID: - ENUM.SRC.ID is not a source configured to store depth order books, or - QUERY.COMMAND is missing or specifies an unrecognized command." },
  ["-36"] = { name = "ERR_PARAM_MISSING", shown = "ERR_PARAM_MISSING: SYMBOL.TICKER or ENUM.SRC.ID is missing." },
}

-- Answer: Query Depth Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_depth_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_depth_response, buffer(offset, size), "QueryDepth")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_depth_message.response)
  return offset + size
end

-- Query Snap And Subscribe Message (QuerySnapAndSubscribe): Data Queries
-- The QuerySnapAndSubscribe command combines the QuerySnap command with features of the Subscribe command. When issued, it subscribes the user for streaming updates and then requests a snapshot to make sure that no updates have been missed. Unlike the Subscribe command, it does not let the user subscribe to all instruments across all exchanges. The derivative chain feature is supported by the QuerySnapAndSubscribe command. Product root chaining is supported for futures and options chains by doing a QuerySnapAndSubscribe by PRODUCT.ROOT. This request can be supported using QuerySnap, Subscribe, or QuerySnapAndSubscribe. In the startup.csp file there needs to be a line: ALTERNATE_INDEX_WITH_SRCID=PRODUCT.ROOT. The QuerySnapAndSubscribe command can also be used to generate trade- safe conflated data using the CTF token CONFLATION. If alternate indexes have been set up in the startup.csp file of the CSP, the QuerySnapAndSubscribe command can accept alternate index values and will query the snapshot database for a specified index. For example, if CUSIP numbers have been set up as an alternate index, the QuerySnapAndSubscribe command can be used to query the database for a given CUSIP number. The available alternate indexes are CUSIP, ISIN, and SEDOL.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: ENUM.SRC.ID (4), SYMBOL.TICKER (5), CONFLATION (2035), SYMBOL.UNDERLYING.TICKER (3083), ENUM.SRC.UNDERLYING.ID (3130), CUSIP (3123), ISIN (3125), SEDOL (3126), PRODUCT.ROOT (3974)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_snap_and_subscribe_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_snap_and_subscribe_message.name = "QuerySnapAndSubscribe"

-- Codes: Query Snap And Subscribe Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_snap_and_subscribe_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["4"] = "ENUM.SRC.ID", ["5"] = "SYMBOL.TICKER", ["2035"] = "CONFLATION", ["3083"] = "SYMBOL.UNDERLYING.TICKER", ["3130"] = "ENUM.SRC.UNDERLYING.ID", ["3123"] = "CUSIP", ["3125"] = "ISIN", ["3126"] = "SEDOL", ["3974"] = "PRODUCT.ROOT" }

-- Mandatory: Query Snap And Subscribe Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_snap_and_subscribe_message.mandatory = { "5022", "5026" }

-- Dissect: Query Snap And Subscribe Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_snap_and_subscribe_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_snap_and_subscribe_message, buffer(offset, size), "QuerySnapAndSubscribe")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_snap_and_subscribe_message)
  return offset + size
end

-- Query Snap And Subscribe Response (QuerySnapAndSubscribe): PERMISSION (3), ENUM.SRC.ID (4), SYMBOL.TICKER (5), ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: ERR_REQ_INVALID (-46), ERR_PARAM_MISSING (-36), ERR_PARAM_BOUNDARY (-33), ERR_AUTH_REQ (-12), WARN_NO_DATA_FOUND (14)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_snap_and_subscribe_message.response = { name = "QuerySnapAndSubscribe Response" }
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_snap_and_subscribe_message.response.errors = {
  ["-46"] = { name = "ERR_REQ_INVALID", shown = "ERR_REQ_INVALID: QUERY.COMMAND is missing or specifies an unrecognized command." },
  ["-36"] = { name = "ERR_PARAM_MISSING", shown = "ERR_PARAM_MISSING: SYMBOL.TICKER is supplied but ENUM.SRC.ID is missing; OR SYMBOL.UNDERLYING.TICKER is supplied but ENUM.SRC.UNDERLYING.ID is missing; OR no arguments are supplied." },
  ["-33"] = { name = "ERR_PARAM_BOUNDARY", shown = "ERR_PARAM_BOUNDARY: ENUM.SRC.ID or ENUM.SRC.UNDERLYING.ID is out of range." },
  ["-12"] = { name = "ERR_AUTH_REQ", shown = "ERR_AUTH_REQ: User does not have entitlement for the requested exchange" },
  ["14"] = { name = "WARN_NO_DATA_FOUND", shown = "WARN_NO_DATA_FOUND: Currently there is no record for one or more symbols requested." },
}

-- Answer: Query Snap And Subscribe Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_snap_and_subscribe_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_snap_and_subscribe_response, buffer(offset, size), "QuerySnapAndSubscribe")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_snap_and_subscribe_message.response)
  return offset + size
end

-- Query Snap Message (QuerySnap): Data Queries
-- The QuerySnap command queries the snapshot database for market data. The tokens returned in the response are tokens that are both on the user’s token list (created by the SelectUserTokens command) and populated in the snapshot database. (A token will be in the snapshot database if there is current data for it.) The CSP accepts a level 2 exchange ID (ENUM.SRC.ID), e.g., 9 for NASDAQ level 2, and returns level 1 snapshot information for each symbol. The QuerySnap command supports the derivative chain feature. If the request includes ENUM.SRC.UNDERLYING.ID set to the source ID and SYMBOL.UNDERLYING.TICKER set to the ticker symbol, the command will query all the options, warrants, and other derivatives associated with the underlying symbol at every exchange. To limit the response to just one exchange, the user can include the ENUM.SRC.ID token with the value set to that exchange. Product root chaining is supported for futures and options chains by doing a QuerySnap by PRODUCT.ROOT. This request can be supported using QuerySnap, Subscribe, or QuerySnapAndSubscribe. In the startup.csp file there needs to be a line: ALTERNATE_INDEX_WITH_SRCID=PRODUCT.ROOT. If alternate indexes have been set up in the startup.csp file of the CSP, the QuerySnap command can accept alternate index values and will query the snapshot database for a specified index. For example, if CUSIP numbers have been set up as an alternate index, the QuerySnap command can be used to query the database for a given CUSIP number. The available alternate indexes are CUSIP, ISIN, and SEDOL.
-- mandatory: ENUM.SRC.ID (4), QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: SYMBOL.TICKER (5), SYMBOL.UNDERLYING.TICKER (3083), ENUM.SRC.UNDERLYING.ID (3130), CUSIP (3123), ISIN (3125), SEDOL (3126), PRODUCT.ROOT (3974)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_snap_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_snap_message.name = "QuerySnap"

-- Codes: Query Snap Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_snap_message.codes = { ["4"] = "ENUM.SRC.ID", ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["5"] = "SYMBOL.TICKER", ["3083"] = "SYMBOL.UNDERLYING.TICKER", ["3130"] = "ENUM.SRC.UNDERLYING.ID", ["3123"] = "CUSIP", ["3125"] = "ISIN", ["3126"] = "SEDOL", ["3974"] = "PRODUCT.ROOT" }

-- Mandatory: Query Snap Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_snap_message.mandatory = { "4", "5022", "5026" }

-- Dissect: Query Snap Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_snap_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_snap_message, buffer(offset, size), "QuerySnap")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_snap_message)
  return offset + size
end

-- Query Snap Response (QuerySnap): PERMISSION (3), ENUM.SRC.ID (4), SYMBOL.TICKER (5), ENUM.QUERY.STATUS (5001), QUERY.TAG (5026), ASK.PRICE (10), BID.PRICE (12)
-- errors: ERR_REQ_INVALID (-46), ERR_PARAM_MISSING (-36), ERR_PARAM_BOUNDARY (-33), ERR_AUTH_REQ (-12)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_snap_message.response = { name = "QuerySnap Response" }
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_snap_message.response.errors = {
  ["-46"] = { name = "ERR_REQ_INVALID", shown = "ERR_REQ_INVALID: QUERY.COMMAND is missing or specifies an unrecognized command." },
  ["-36"] = { name = "ERR_PARAM_MISSING", shown = "ERR_PARAM_MISSING: SYMBOL.TICKER is supplied but ENUM.SRC.ID is missing; OR SYMBOL.UNDERLYING.TICKER is supplied but ENUM.SRC.UNDERLYING.ID is missing." },
  ["-33"] = { name = "ERR_PARAM_BOUNDARY", shown = "ERR_PARAM_BOUNDARY: ENUM.SRC.ID or ENUM.SRC.UNDERLYING.ID is out of range." },
  ["-12"] = { name = "ERR_AUTH_REQ", shown = "ERR_AUTH_REQ: User does not have entitlement for the requested exchange" },
}

-- Answer: Query Snap Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_snap_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_snap_response, buffer(offset, size), "QuerySnap")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_snap_message.response)
  return offset + size
end

-- Query Subscribed Exchanges Message (QuerySubscribedExchanges): Data Queries
-- The QuerySubscribedExchanges command queries all the instruments on each exchange to which the user is subscribed. The tokens returned are both on the user’s token list and populated in the snapshot database.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: MM.ID (355)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_subscribed_exchanges_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_subscribed_exchanges_message.name = "QuerySubscribedExchanges"

-- Codes: Query Subscribed Exchanges Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_subscribed_exchanges_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["355"] = "MM.ID" }

-- Mandatory: Query Subscribed Exchanges Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_subscribed_exchanges_message.mandatory = { "5022", "5026" }

-- Dissect: Query Subscribed Exchanges Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_subscribed_exchanges_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_subscribed_exchanges_message, buffer(offset, size), "QuerySubscribedExchanges")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_subscribed_exchanges_message)
  return offset + size
end

-- Query Subscribed Exchanges Response (QuerySubscribedExchanges): ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_subscribed_exchanges_message.response = { name = "QuerySubscribedExchanges Response" }

-- Answer: Query Subscribed Exchanges Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_subscribed_exchanges_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_subscribed_exchanges_response, buffer(offset, size), "QuerySubscribedExchanges")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_subscribed_exchanges_message.response)
  return offset + size
end

-- Query Subscribed Symbols Message (QuerySubscribedSymbols): Data Queries
-- This command queries the snapshot database for each instrument to which the user is subscribed. The tokens returned in the response are tokens that are both on the user’s token list and populated in the snapshot database.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: MM.ID (355)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_subscribed_symbols_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_subscribed_symbols_message.name = "QuerySubscribedSymbols"

-- Codes: Query Subscribed Symbols Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_subscribed_symbols_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["355"] = "MM.ID" }

-- Mandatory: Query Subscribed Symbols Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_subscribed_symbols_message.mandatory = { "5022", "5026" }

-- Dissect: Query Subscribed Symbols Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_subscribed_symbols_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_subscribed_symbols_message, buffer(offset, size), "QuerySubscribedSymbols")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_subscribed_symbols_message)
  return offset + size
end

-- Query Subscribed Symbols Response (QuerySubscribedSymbols): ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_subscribed_symbols_message.response = { name = "QuerySubscribedSymbols Response" }

-- Answer: Query Subscribed Symbols Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_subscribed_symbols_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_subscribed_symbols_response, buffer(offset, size), "QuerySubscribedSymbols")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_subscribed_symbols_message.response)
  return offset + size
end

-- Query Wild Card Message (QueryWildCard): Data Queries
-- The QueryWildCard command lets users query the snapshot database for market data using as search criteria either explicit token values or regular expression patterns in token values. The command accepts multiple criteria and patterns. To indicate a pattern, enclose the entire regular expression in braces “{regular expression}”. The tokens returned in the response are the same as the tokens returned by the QuerySnap command. The QueryWildCard command supports the derivative chain feature. Note: To represent a pipe character, ‘|’, in a regular expression, use the tilde, ‘~’, in its place to avoid conflicts with the CTF protocol, which uses the pipe character as a delimiter between token=value pairs. The CSP does not accept wildcard values for the following tokens: • ENUM.SRC.ID • ENUM.SRC.UNDERLYING.ID • SYMBOL.UNDERLYING.TICKER If one of these tokens is used in a QueryWildCard command, the CSP returns a negative value for ENUM.QUERY.STATUS.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: ENUM.SRC.ID (4), SYMBOL.TICKER (5), SYMBOL.UNDERLYING.TICKER (3083), ENUM.SRC.UNDERLYING.ID (3130)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_wild_card_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_wild_card_message.name = "QueryWildCard"

-- Codes: Query Wild Card Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_wild_card_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["4"] = "ENUM.SRC.ID", ["5"] = "SYMBOL.TICKER", ["3083"] = "SYMBOL.UNDERLYING.TICKER", ["3130"] = "ENUM.SRC.UNDERLYING.ID" }

-- Mandatory: Query Wild Card Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_wild_card_message.mandatory = { "5022", "5026" }

-- Dissect: Query Wild Card Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_wild_card_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_wild_card_message, buffer(offset, size), "QueryWildCard")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_wild_card_message)
  return offset + size
end

-- Query Wild Card Response (QueryWildCard): PERMISSION (3), ENUM.SRC.ID (4), SYMBOL.TICKER (5), ENUM.QUERY.STATUS (5001), QUERY.TAG (5026), ASK.PRICE (10), BID.PRICE (12)
-- errors: ERR_NO_DATA_FOUND (-182), ERR_REQ_INVALID (-46), ERR_PARAM_MISSING (-36), ERR_PARAM_BOUNDARY (-33)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_wild_card_message.response = { name = "QueryWildCard Response" }
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_wild_card_message.response.errors = {
  ["-182"] = { name = "ERR_NO_DATA_FOUND", shown = "ERR_NO_DATA_FOUND: The command includes a wildcard value for an explicitly excluded token." },
  ["-46"] = { name = "ERR_REQ_INVALID", shown = "ERR_REQ_INVALID: QUERY.COMMAND is missing or specifies an unrecognized command." },
  ["-36"] = { name = "ERR_PARAM_MISSING", shown = "ERR_PARAM_MISSING: SYMBOL.UNDERLYING.TICKER is supplied but ENUM.SRC.UNDERLYING.ID is missing." },
  ["-33"] = { name = "ERR_PARAM_BOUNDARY", shown = "ERR_PARAM_BOUNDARY: ENUM.SRC.ID or ENUM.SRC.UNDERLYING.ID is not valid." },
}

-- Answer: Query Wild Card Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_wild_card_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_wild_card_response, buffer(offset, size), "QueryWildCard")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_wild_card_message.response)
  return offset + size
end

-- Query Xref Message (QueryXref): Data Queries
-- This command queries the CSP for reference data for a specified instrument on a given source ID. The SelectUserTokens command can also be used with QueryXref to limit the response to the reference data tokens of interest to the user. If the user does not specify SYMBOL.TICKER, the command will return reference data for all tickers on the given source ID. If the user has the news code SMI entitled, he will be able to issue a QueryXref command and see the results, but he will not be able to subscribe to or snap normal data.
-- mandatory: ENUM.SRC.ID (4), QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: SYMBOL.TICKER (5)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_xref_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_xref_message.name = "QueryXref"

-- Codes: Query Xref Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_xref_message.codes = { ["4"] = "ENUM.SRC.ID", ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["5"] = "SYMBOL.TICKER" }

-- Mandatory: Query Xref Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_xref_message.mandatory = { "4", "5022", "5026" }

-- Dissect: Query Xref Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_xref_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_xref_message, buffer(offset, size), "QueryXref")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_xref_message)
  return offset + size
end

-- Query Xref Response (QueryXref): PERMISSION (3), ENUM.SRC.ID (4), SYMBOL.TICKER (5), ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: ERR_REQ_INVALID (-46), ERR_PARAM_MISSING (-36), ERR_AUTH_REQ (-12)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_xref_message.response = { name = "QueryXref Response" }
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_xref_message.response.errors = {
  ["-46"] = { name = "ERR_REQ_INVALID", shown = "ERR_REQ_INVALID: QUERY.COMMAND is missing or specifies an unrecognized command." },
  ["-36"] = { name = "ERR_PARAM_MISSING", shown = "ERR_PARAM_MISSING: ENUM.SRC.ID is missing." },
  ["-12"] = { name = "ERR_AUTH_REQ", shown = "ERR_AUTH_REQ: CSP is not entitled for the permission requested." },
}

-- Answer: Query Xref Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_xref_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.query_xref_response, buffer(offset, size), "QueryXref")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_xref_message.response)
  return offset + size
end

-- Select Available Tokens Message (SelectAvailableTokens): Data Subscriptions
-- The SelectAvailableTokens command lets the user set all available tokens to the user’s token list. The user’s token list is used for database queries and for certain output modes. Each time this command is issued the previously defined set of tokens is removed.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_available_tokens_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_available_tokens_message.name = "SelectAvailableTokens"

-- Codes: Select Available Tokens Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_available_tokens_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG" }

-- Mandatory: Select Available Tokens Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_available_tokens_message.mandatory = { "5022", "5026" }

-- Dissect: Select Available Tokens Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_available_tokens_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.select_available_tokens_message, buffer(offset, size), "SelectAvailableTokens")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_available_tokens_message)
  return offset + size
end

-- Select Available Tokens Response (SelectAvailableTokens): ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_available_tokens_message.response = { name = "SelectAvailableTokens Response" }

-- Answer: Select Available Tokens Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_available_tokens_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.select_available_tokens_response, buffer(offset, size), "SelectAvailableTokens")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_available_tokens_message.response)
  return offset + size
end

-- Select Output Message (SelectOutput): Data Subscriptions
-- The SelectOutput command lets a user control the tokens and types of messages that are received from streaming data. The Select Output command can be sent with any number of the fields shown below, any fields not included with the command are assumed to be set to the default state. CSP.OUTPUT_TOKEN (default state: Standard): allows customers to set the token output mode. There are three available modes for token output: Standard, User and the combination StandardAndUser. Standard mode accepts tokens from the feed (including derived tokens such as TRADE.HIGH etc) that have changed. User mode accepts only the tokens that are set via the SelectUserTokens command. StandardAndUser mode accepts both the standard and the user tokens. Note: User and StandardAndUser modes should be selected only in special situations. It causes all user tokens to be output with each message, whether or not they have changed, and consequently increases the volume of data output CSP.OUTPUT_STATE (default state: OFF): Controls if the CSP outputs data. If set to OFF no real-time, refresh or news messages will be sent unless an explicit subscription is issued with the Subscribe command CSP.NEWS (default state: OFF): Controls if news messages are sent along with market data. If set to OFF, news messages are only sent with an explicit subscription to a news source using the Subscribe command. If set to ON, news messages are sent with market data messages when the CSP output state is set ON or an explicit subscription is issued for market data.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: CSP.NEWS (5005), CSP.OUTPUT_STATE (5018), CSP.OUTPUT_TOKENS (5019)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_output_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_output_message.name = "SelectOutput"

-- Codes: Select Output Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_output_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["5005"] = "CSP.NEWS", ["5018"] = "CSP.OUTPUT_STATE", ["5019"] = "CSP.OUTPUT_TOKENS" }

-- Mandatory: Select Output Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_output_message.mandatory = { "5022", "5026" }

-- Dissect: Select Output Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_output_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.select_output_message, buffer(offset, size), "SelectOutput")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_output_message)
  return offset + size
end

-- Select Output Response (SelectOutput): ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_output_message.response = { name = "SelectOutput Response" }

-- Answer: Select Output Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_output_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.select_output_response, buffer(offset, size), "SelectOutput")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_output_message.response)
  return offset + size
end

-- Select User Filter Tokens Message (SelectUserFilterTokens): Data Subscriptions
-- With this command, clients can now make a request, and specify a specific list of tokens they want to receive in the result. Only these tokens will be returned on the snap or the update. These tokens will only be returned when one of the tokens has an updated value. This allows clients to get only the tokens they care about, as well as optimizing the bandwidth on the wire by the CSP only sending the tokens the client cares about. This capability can be used in conjunction with Conflation (see Sec. 1.2.8), Compression (see Sec 1.2.9), and Server-Side Filtering (see Sec. 1.2.12).
-- mandatory: ENUM.SRC.ID (4), QUERY.COMMAND (5022), QUERY.TAG (5026), CTF.TOKEN.NUM (5035)
-- optional: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_user_filter_tokens_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_user_filter_tokens_message.name = "SelectUserFilterTokens"

-- Codes: Select User Filter Tokens Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_user_filter_tokens_message.codes = { ["4"] = "ENUM.SRC.ID", ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["5035"] = "CTF.TOKEN.NUM" }

-- Mandatory: Select User Filter Tokens Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_user_filter_tokens_message.mandatory = { "4", "5022", "5026", "5035" }

-- Dissect: Select User Filter Tokens Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_user_filter_tokens_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.select_user_filter_tokens_message, buffer(offset, size), "SelectUserFilterTokens")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_user_filter_tokens_message)
  return offset + size
end

-- Select User Filter Tokens Response (SelectUserFilterTokens): ENUM.SRC.ID (4), ENUM.QUERY.STATUS (5001), CTF.TOKEN.NAME (5010), QUERY.TAG (5026), CTF.TOKEN.NUM (5035)
-- errors: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_user_filter_tokens_message.response = { name = "SelectUserFilterTokens Response" }

-- Answer: Select User Filter Tokens Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_user_filter_tokens_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.select_user_filter_tokens_response, buffer(offset, size), "SelectUserFilterTokens")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_user_filter_tokens_message.response)
  return offset + size
end

-- Select User Tokens Message (SelectUserTokens): Data Subscriptions
-- The SelectUserTokens command lets the user define a specific set of tokens to be returned on database queries and in certain output modes. The set is defined by including multiple instances of |5035=x| in the command, one for each required token, where x is the number of the token. If too many tokens are requested (context dependent), the command returns ENUM.QUERY.STATUS=-61. Each time this command is issued the previously defined set of tokens is removed.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026), CTF.TOKEN.NUM (5035)
-- optional: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_user_tokens_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_user_tokens_message.name = "SelectUserTokens"

-- Codes: Select User Tokens Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_user_tokens_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["5035"] = "CTF.TOKEN.NUM" }

-- Mandatory: Select User Tokens Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_user_tokens_message.mandatory = { "5022", "5026", "5035" }

-- Dissect: Select User Tokens Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_user_tokens_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.select_user_tokens_message, buffer(offset, size), "SelectUserTokens")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_user_tokens_message)
  return offset + size
end

-- Select User Tokens Response (SelectUserTokens): ENUM.QUERY.STATUS (5001), QUERY.TAG (5026), TRADE.PRICE (8), TRADE.SIZE (9), INSTR_NAME (3127), ISIN (3125)
-- errors: ERR_TOKEN_COUNT (-61), ERR_REQ_INVALID (-46), ERR_EXIST_TOKEN (-24), ERR_AUTH_TOKEN (-14)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_user_tokens_message.response = { name = "SelectUserTokens Response" }
ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_user_tokens_message.response.errors = {
  ["-61"] = { name = "ERR_TOKEN_COUNT", shown = "ERR_TOKEN_COUNT: Too many tokens have been requested (context dependent)." },
  ["-46"] = { name = "ERR_REQ_INVALID", shown = "ERR_REQ_INVALID: QUERY.COMMAND is missing or specifies an unrecognized command." },
  ["-24"] = { name = "ERR_EXIST_TOKEN", shown = "ERR_EXIST_TOKEN: Requested token does not exist." },
  ["-14"] = { name = "ERR_AUTH_TOKEN", shown = "ERR_AUTH_TOKEN: The user is not authorized for that token." },
}

-- Answer: Select User Tokens Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_user_tokens_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.select_user_tokens_response, buffer(offset, size), "SelectUserTokens")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_user_tokens_message.response)
  return offset + size
end

-- Set Conflation Interval Message (SetConflationInterval): System Information
-- This command allows users to set the current conflation interval for the connection. The interval is expressed in milliseconds, and the valid range is 1 ms to 60000 ms (1 minute). There is only one conflation interval per connection. If using the CSA, the same interval will be used for all of the CSPs.
-- mandatory: CONFLATION.INTERVAL (2029), QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.set_conflation_interval_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.set_conflation_interval_message.name = "SetConflationInterval"

-- Codes: Set Conflation Interval Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.set_conflation_interval_message.codes = { ["2029"] = "CONFLATION.INTERVAL", ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG" }

-- Mandatory: Set Conflation Interval Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.set_conflation_interval_message.mandatory = { "2029", "5022", "5026" }

-- Dissect: Set Conflation Interval Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.set_conflation_interval_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.set_conflation_interval_message, buffer(offset, size), "SetConflationInterval")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.set_conflation_interval_message)
  return offset + size
end

-- Set Conflation Interval Response (SetConflationInterval): ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: none
ice_icedataservices_brazilbmf_ctf_v2024_10_09.set_conflation_interval_message.response = { name = "SetConflationInterval Response" }

-- Answer: Set Conflation Interval Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.set_conflation_interval_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.set_conflation_interval_response, buffer(offset, size), "SetConflationInterval")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.set_conflation_interval_message.response)
  return offset + size
end

-- Subscribe Message (Subscribe): Data Subscriptions
-- The Subscribe command specifies the streaming market data that the user will receive. There are no default subscriptions, and the user must issue this command to receive any market data during a session. The CSP user can subscribe to all market data, all data on a per exchange basis, or specific instruments. User and StandardAndUser modes should be selected only in special situations when using the Subscribe command. It causes user selected tokens to be output with each message, whether or not they have updated. Consequently, this will increase the volume of data output and possibly result in misleading data. The Subscribe command supports the derivative chain feature. If the request includes ENUM.SRC.UNDERLYING.ID set to the source ID and SYMBOL.UNDERLYING.TICKER set to the ticker symbol, the command will subscribe to all the options, warrants, and other derivatives associated with the underlying symbol at every exchange. To limit the response to just one exchange, the user can include the ENUM.SRC.ID token with the value set to that exchange. For example, if ENUM.SRC.UNDERLYING.ID is set to 558 for NYSE Composite and SYMBOL.UNDERLYING.TICKER is set to IBM, the command will subscribe to all the options, warrants, and other derivatives associated with IBM at every exchange. If the command also includes ENUM.SRC.ID set to 559, the response will be limited to IBM derivatives on the OPRA Composite exchange. Product root chaining is supported for futures and options chains by doing a subscription by PRODUCT.ROOT. This request can be supported using QuerySnap, Subscribe, or QuerySnapAndSubscribe. In the startup.csp file there needs to be a line: ALTERNATE_INDEX_WITH_SRCID=PRODUCT.ROOT. The Subscribe command can also be used to generate trade-safe conflated data using the CTF token CONFLATION. If alternate indexes have been set up in the startup.csp file of the CSP, the Subscribe command can accept alternate index values and will subscribe to a specified index. For example, if CUSIP numbers have been set up as an alternate index, the Subscribe command can be used to subscribe to a given CUSIP number. The available alternate indexes are CUSIP, ISIN, and SEDOL.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: ENUM.SRC.ID (4), SYMBOL.TICKER (5), CONFLATION (2035), SYMBOL.UNDERLYING.TICKER (3083), ENUM.SRC.UNDERLYING.ID (3130), CUSIP (3123), ISIN (3125), SEDOL (3126), PRODUCT.ROOT (3974)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.subscribe_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.subscribe_message.name = "Subscribe"

-- Codes: Subscribe Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.subscribe_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["4"] = "ENUM.SRC.ID", ["5"] = "SYMBOL.TICKER", ["2035"] = "CONFLATION", ["3083"] = "SYMBOL.UNDERLYING.TICKER", ["3130"] = "ENUM.SRC.UNDERLYING.ID", ["3123"] = "CUSIP", ["3125"] = "ISIN", ["3126"] = "SEDOL", ["3974"] = "PRODUCT.ROOT" }

-- Mandatory: Subscribe Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.subscribe_message.mandatory = { "5022", "5026" }

-- Dissect: Subscribe Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.subscribe_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.subscribe_message, buffer(offset, size), "Subscribe")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.subscribe_message)
  return offset + size
end

-- Subscribe Response (Subscribe): ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: REQ_ENUMSCRCID_PROXY_136 (-165), ERR_REQ_INVALID (-46), ERR_PARAM_MISSING (-36), ERR_PARAM_BOUNDARY (-33), ERR_AUTH_TOPIC_SUBSCRIBE (-18), ERR_AUTH_REQ (-12)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.subscribe_message.response = { name = "Subscribe Response" }
ice_icedataservices_brazilbmf_ctf_v2024_10_09.subscribe_message.response.errors = {
  ["-165"] = { name = "REQ_ENUMSCRCID_PROXY_136", shown = "REQ_ENUMSCRCID_PROXY_136: ENUM.SRC.ID is missing" },
  ["-46"] = { name = "ERR_REQ_INVALID", shown = "ERR_REQ_INVALID: - Command includes an argument that is not from the mandatory or optional list, or - An optional argument is supplied more than once, or - ENUM.SRC.UNDERLYING. ID is supplied but SYMBOL.UNDERLYING. TICKER is not." },
  ["-36"] = { name = "ERR_PARAM_MISSING", shown = "ERR_PARAM_MISSING: - SYMBOL.TICKER is supplied but ENUM.SRC.ID is not; or - SYMBOL.UNDERLYING. TICKER is supplied but ENUM.SRC.UNDERLYING. ID is not." },
  ["-33"] = { name = "ERR_PARAM_BOUNDARY", shown = "ERR_PARAM_BOUNDARY: ENUM.SRC.ID or ENUM.SRC.UNDERLYING. ID is out of range." },
  ["-18"] = { name = "ERR_AUTH_TOPIC_SUBSCRIBE", shown = "ERR_AUTH_TOPIC_SUBSCRIBE: ENUM.SRC.ID not entitled or out of range." },
  ["-12"] = { name = "ERR_AUTH_REQ", shown = "ERR_AUTH_REQ: User does not have entitlement for the requested exchange." },
}

-- Answer: Subscribe Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.subscribe_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.subscribe_response, buffer(offset, size), "Subscribe")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.subscribe_message.response)
  return offset + size
end

-- Unsubscribe Message (Unsubscribe): Data Subscriptions
-- The Unsubscribe command cancels a previous Subscribe command. If the Subscribe command was issued with no optional parameters in order to subscribe to the entire data feed, it can be canceled by issuing the Unsubscribe command, in the same way, with no optional parameters. If the Subscribe command was issued for a specific exchange, it can be canceled by issuing the Unsubscribe command for the same exchange. If the Subscribe command was issued for a specific exchange and an instrument on that exchange, it can be canceled by issuing the Unsubscribe command for the same exchange and instrument. The Unsubscribe command with no optional arguments does not cancel subscriptions to exchanges or instruments that have been previously explicitly subscribed with the Subscribe command. The Unsubscribe command supports the derivative chain feature.
-- mandatory: QUERY.COMMAND (5022), QUERY.TAG (5026)
-- optional: ENUM.SRC.ID (4), SYMBOL.TICKER (5), SYMBOL.UNDERLYING.TICKER (3083), ENUM.SRC.UNDERLYING.ID (3130)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.unsubscribe_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.unsubscribe_message.name = "Unsubscribe"

-- Codes: Unsubscribe Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.unsubscribe_message.codes = { ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["4"] = "ENUM.SRC.ID", ["5"] = "SYMBOL.TICKER", ["3083"] = "SYMBOL.UNDERLYING.TICKER", ["3130"] = "ENUM.SRC.UNDERLYING.ID" }

-- Mandatory: Unsubscribe Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.unsubscribe_message.mandatory = { "5022", "5026" }

-- Dissect: Unsubscribe Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.unsubscribe_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.unsubscribe_message, buffer(offset, size), "Unsubscribe")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.unsubscribe_message)
  return offset + size
end

-- Unsubscribe Response (Unsubscribe): ENUM.QUERY.STATUS (5001), QUERY.TAG (5026)
-- errors: ERR_REQ_INVALID (-46), ERR_PARAM_MISSING (-36), ERR_PARAM_BOUNDARY (-33)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.unsubscribe_message.response = { name = "Unsubscribe Response" }
ice_icedataservices_brazilbmf_ctf_v2024_10_09.unsubscribe_message.response.errors = {
  ["-46"] = { name = "ERR_REQ_INVALID", shown = "ERR_REQ_INVALID: QUERY.COMMAND is missing or specifies an unrecognized command." },
  ["-36"] = { name = "ERR_PARAM_MISSING", shown = "ERR_PARAM_MISSING: SYMBOL. TICKER is supplied but ENUM.SRC.ID is missing; OR SYMBOL.UNDERLYING.TICKER is supplied but ENUM.SRC.UNDERLYING.ID is missing; OR no arguments are supplied." },
  ["-33"] = { name = "ERR_PARAM_BOUNDARY", shown = "ERR_PARAM_BOUNDARY: ENUM.SRC.ID or ENUM.SRC.UNDERLYING.ID is out of range." },
}

-- Answer: Unsubscribe Response
ice_icedataservices_brazilbmf_ctf_v2024_10_09.unsubscribe_message.answer = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.unsubscribe_response, buffer(offset, size), "Unsubscribe")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.unsubscribe_message.response)
  return offset + size
end

-- Update Message (Update): Data
-- mandatory: none
-- optional: PERMISSION (3), ENUM.SRC.ID (4), SYMBOL.TICKER (5), TRADE.PRICE (8), TRADE.SIZE (9), ASK.PRICE (10), ASK.SIZE (11), BID.PRICE (12), BID.SIZE (13), CURRENT.PRICE (14), ACTIVITY.DATE (15), ACTIVITY.DATETIME (16), TRADE.DATE (17), TRADE.DATETIME (18), QUOTE.DATE (19), QUOTE.DATETIME (20), TRADE.VOL (22), REFRESH (24), EXCH.MESSAGE.TIMESTAMP (55), TRADE.COND.DATETIME (76), BID.DATETIME (109), ASK.DATETIME (110), RECORD.PRECISION (209), ASK.COUNT (211), BID.COUNT (225), CORRECTION.PREV.TRADE.PRICE (252), CORRECTION.PREV.TRADE.SIZE (253), ENUM.CURRENCY (270), EXPIRATION.DATE (292), OPEN.INT.DATE (293), SELLER.ID (309), TRADE.TICK (316), LIMIT.HIGH (338), LIMIT.LOW (339), CHG (361), PCT.CHG (362), OPEN_INT (369), BUYER.ID (375), TRADE.HIGH (388), TRADE.LOW (394), TRADE.OPEN (400), YEST.TRADE.CLOSE (407), RECORD.RESET (416), SETTLE.DATE (417), SETTLE.PRICE (418), STRIKE.PRICE (423), THEORETICAL.OPEN (430), RECORD.DEL (431), TRADE.TREND (432), CURRENCY.STRING (435), CURRENT.DATETIME (437), TRADE.BLOCK.COUNT (440), TRADE.BLOCK.VOL (441), TRADE.OFFICIAL.DATE (444), TRADE.COND.PRICE (447), TRADE.COND.SIZE (448), PREV.TRADE.DATE (451), TRADE.OFFICIAL.TIME (459), UPDATE.ACTION (469), YEST.TRADE.VOL (473), VWAP (474), FIRST.TRADE.ALERT (583), ABRV.CURRENCY (620), REF.PRICE (622), INSTR.STATUS (705), IMBALANCE.SIDE (785), ORDER.IMBALANCE.VOL (817), DYNAMIC.PRICEBAND.PCT (1051), PQ.SETTLE.PRICE (1095), PQ.TRADE.HIGH (1117), PQ.TRADE.LOW (1118), PRIOR.SESSION.SETTLE.PRICE (1140), PRIOR.SESSION.CURRENT.PRICE (1141), PRIOR.SESSION.TRADE.HIGH (1143), PRIOR.SESSION.TRADE.LOW (1144), PRIOR.SESSION.TRADE.OPEN (1145), PQ.AUCTION.PRICE (1318), DYNAMIC.UPPER.LMT (1418), DYNAMIC.LOWER.LMT (1419), TRADABLE.STATUS (1708), MARKET.PHASE (1709), AUCTION.PRICEBAND.PCT (1728), SETTLE.ALT.DATETIME (1885), SETTLE.ALT.PRICE (1886), TRADE.COND_1 (2500), TRADE.COND_2 (2501), WEEK52.TRADE.HIGH (3060), WEEK52.TRADE.LOW (3061), ENUM.INSTR.TYPE (3133), OPERATING.MIC (3512), LAST.TRADING.DATE (3518), STRATEGY.LEG.TYPES (3537), SYMBOL.BLOOMBERG.TICKER (3950), END.UPDATE.FLAG (3851), OPTION.EXPIRY.TYPE (3921), SOURCE.INSTRUMENT.CODE (3927), BLOOMBERG.GLOBAL_ID (3952), BLOOMBERG.GLOBAL_ID.COMP (3953), SYMBOL.ESIGNAL.TICKER (3958), PRODUCT.ROOT (3974), MULTIPLIER (4010), SYMBOL.TICKER.ALIAS (4070), TOKEN.DEL (5004), RNR.END.EXCH.SEQ (5061), RECORD.STALE.IND (5076), INSTR.LOCAL_TYPE3 (8506), RETRANSMISSION.FLAG (13543), ENTITLEMENT.CODE (6), SESSION.VOL (23), TRADE.UNIQUE.ID (461), AUCTION.PRICE (624), AUCTION.VOL (645), TS.AUCTION.PRICE (1411), TS.AUCTION.END (1692), RNR.EXCH.ORIGINAL.SEQ (5072), ASK.CLOSE (207), ASK.CLOSE_SIZE (791), QUOTE.OFFICIAL.CLOSE.DATE (1713), QUERY.COMMAND (5022), QUERY.TAG (5026), USER_NAME (5028), USER.PASSWORD (5029), FORCE.LOGIN (5079), CTF.COMPRESSED (13265), CONFLATE.INDICATOR (5201), ENUM.QUERY.STATUS (5001), CSP.NEWS (5005), CSP.VERSION (5008), CSP.OUTPUT_STATE (5018), CSP.OUTPUT_TOKENS (5019), CDD.VERSION (5080), CUSTOMER.NUMBER (13349), CTF.TOKEN.STORE (5002), CTF.TOKEN.NAME (5010), CTF.TOKEN.SIZE (5011), CTF.TOKEN.TYPE (5012), CTF.TOKEN.NUM (5035), CTF.ENUM.VALUE (5034), CTF.ENUM.DESC (5033), NEWS.FILTER.CODE (6016), DELAY.MINS (269), EOD.VIEW.OPEN (13321), EOD.VIEW.CLOSE (13322), HOST.SERVER.IP (13001), CLIENT.PORT (13101), CONFLATION.INTERVAL (2029), CONFLATION (2035), SYMBOL.UNDERLYING.TICKER (3083), ENUM.SRC.UNDERLYING.ID (3130), CUSIP (3123), ISIN (3125), SEDOL (3126), INSTR_NAME (3127), CSP.DDF_BATE (5013), MM.ID (355), QUOTE.COND_2 (2001)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.update_message = {}
ice_icedataservices_brazilbmf_ctf_v2024_10_09.update_message.name = "Update"

-- Codes: Update Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.update_message.codes = { ["3"] = "PERMISSION", ["4"] = "ENUM.SRC.ID", ["5"] = "SYMBOL.TICKER", ["8"] = "TRADE.PRICE", ["9"] = "TRADE.SIZE", ["10"] = "ASK.PRICE", ["11"] = "ASK.SIZE", ["12"] = "BID.PRICE", ["13"] = "BID.SIZE", ["14"] = "CURRENT.PRICE", ["15"] = "ACTIVITY.DATE", ["16"] = "ACTIVITY.DATETIME", ["17"] = "TRADE.DATE", ["18"] = "TRADE.DATETIME", ["19"] = "QUOTE.DATE", ["20"] = "QUOTE.DATETIME", ["22"] = "TRADE.VOL", ["24"] = "REFRESH", ["55"] = "EXCH.MESSAGE.TIMESTAMP", ["76"] = "TRADE.COND.DATETIME", ["109"] = "BID.DATETIME", ["110"] = "ASK.DATETIME", ["209"] = "RECORD.PRECISION", ["211"] = "ASK.COUNT", ["225"] = "BID.COUNT", ["252"] = "CORRECTION.PREV.TRADE.PRICE", ["253"] = "CORRECTION.PREV.TRADE.SIZE", ["270"] = "ENUM.CURRENCY", ["292"] = "EXPIRATION.DATE", ["293"] = "OPEN.INT.DATE", ["309"] = "SELLER.ID", ["316"] = "TRADE.TICK", ["338"] = "LIMIT.HIGH", ["339"] = "LIMIT.LOW", ["361"] = "CHG", ["362"] = "PCT.CHG", ["369"] = "OPEN_INT", ["375"] = "BUYER.ID", ["388"] = "TRADE.HIGH", ["394"] = "TRADE.LOW", ["400"] = "TRADE.OPEN", ["407"] = "YEST.TRADE.CLOSE", ["416"] = "RECORD.RESET", ["417"] = "SETTLE.DATE", ["418"] = "SETTLE.PRICE", ["423"] = "STRIKE.PRICE", ["430"] = "THEORETICAL.OPEN", ["431"] = "RECORD.DEL", ["432"] = "TRADE.TREND", ["435"] = "CURRENCY.STRING", ["437"] = "CURRENT.DATETIME", ["440"] = "TRADE.BLOCK.COUNT", ["441"] = "TRADE.BLOCK.VOL", ["444"] = "TRADE.OFFICIAL.DATE", ["447"] = "TRADE.COND.PRICE", ["448"] = "TRADE.COND.SIZE", ["451"] = "PREV.TRADE.DATE", ["459"] = "TRADE.OFFICIAL.TIME", ["469"] = "UPDATE.ACTION", ["473"] = "YEST.TRADE.VOL", ["474"] = "VWAP", ["583"] = "FIRST.TRADE.ALERT", ["620"] = "ABRV.CURRENCY", ["622"] = "REF.PRICE", ["705"] = "INSTR.STATUS", ["785"] = "IMBALANCE.SIDE", ["817"] = "ORDER.IMBALANCE.VOL", ["1051"] = "DYNAMIC.PRICEBAND.PCT", ["1095"] = "PQ.SETTLE.PRICE", ["1117"] = "PQ.TRADE.HIGH", ["1118"] = "PQ.TRADE.LOW", ["1140"] = "PRIOR.SESSION.SETTLE.PRICE", ["1141"] = "PRIOR.SESSION.CURRENT.PRICE", ["1143"] = "PRIOR.SESSION.TRADE.HIGH", ["1144"] = "PRIOR.SESSION.TRADE.LOW", ["1145"] = "PRIOR.SESSION.TRADE.OPEN", ["1318"] = "PQ.AUCTION.PRICE", ["1418"] = "DYNAMIC.UPPER.LMT", ["1419"] = "DYNAMIC.LOWER.LMT", ["1708"] = "TRADABLE.STATUS", ["1709"] = "MARKET.PHASE", ["1728"] = "AUCTION.PRICEBAND.PCT", ["1885"] = "SETTLE.ALT.DATETIME", ["1886"] = "SETTLE.ALT.PRICE", ["2500"] = "TRADE.COND_1", ["2501"] = "TRADE.COND_2", ["3060"] = "WEEK52.TRADE.HIGH", ["3061"] = "WEEK52.TRADE.LOW", ["3133"] = "ENUM.INSTR.TYPE", ["3512"] = "OPERATING.MIC", ["3518"] = "LAST.TRADING.DATE", ["3537"] = "STRATEGY.LEG.TYPES", ["3950"] = "SYMBOL.BLOOMBERG.TICKER", ["3851"] = "END.UPDATE.FLAG", ["3921"] = "OPTION.EXPIRY.TYPE", ["3927"] = "SOURCE.INSTRUMENT.CODE", ["3952"] = "BLOOMBERG.GLOBAL_ID", ["3953"] = "BLOOMBERG.GLOBAL_ID.COMP", ["3958"] = "SYMBOL.ESIGNAL.TICKER", ["3974"] = "PRODUCT.ROOT", ["4010"] = "MULTIPLIER", ["4070"] = "SYMBOL.TICKER.ALIAS", ["5004"] = "TOKEN.DEL", ["5061"] = "RNR.END.EXCH.SEQ", ["5076"] = "RECORD.STALE.IND", ["8506"] = "INSTR.LOCAL_TYPE3", ["13543"] = "RETRANSMISSION.FLAG", ["6"] = "ENTITLEMENT.CODE", ["23"] = "SESSION.VOL", ["461"] = "TRADE.UNIQUE.ID", ["624"] = "AUCTION.PRICE", ["645"] = "AUCTION.VOL", ["1411"] = "TS.AUCTION.PRICE", ["1692"] = "TS.AUCTION.END", ["5072"] = "RNR.EXCH.ORIGINAL.SEQ", ["207"] = "ASK.CLOSE", ["791"] = "ASK.CLOSE_SIZE", ["1713"] = "QUOTE.OFFICIAL.CLOSE.DATE", ["5022"] = "QUERY.COMMAND", ["5026"] = "QUERY.TAG", ["5028"] = "USER_NAME", ["5029"] = "USER.PASSWORD", ["5079"] = "FORCE.LOGIN", ["13265"] = "CTF.COMPRESSED", ["5201"] = "CONFLATE.INDICATOR", ["5001"] = "ENUM.QUERY.STATUS", ["5005"] = "CSP.NEWS", ["5008"] = "CSP.VERSION", ["5018"] = "CSP.OUTPUT_STATE", ["5019"] = "CSP.OUTPUT_TOKENS", ["5080"] = "CDD.VERSION", ["13349"] = "CUSTOMER.NUMBER", ["5002"] = "CTF.TOKEN.STORE", ["5010"] = "CTF.TOKEN.NAME", ["5011"] = "CTF.TOKEN.SIZE", ["5012"] = "CTF.TOKEN.TYPE", ["5035"] = "CTF.TOKEN.NUM", ["5034"] = "CTF.ENUM.VALUE", ["5033"] = "CTF.ENUM.DESC", ["6016"] = "NEWS.FILTER.CODE", ["269"] = "DELAY.MINS", ["13321"] = "EOD.VIEW.OPEN", ["13322"] = "EOD.VIEW.CLOSE", ["13001"] = "HOST.SERVER.IP", ["13101"] = "CLIENT.PORT", ["2029"] = "CONFLATION.INTERVAL", ["2035"] = "CONFLATION", ["3083"] = "SYMBOL.UNDERLYING.TICKER", ["3130"] = "ENUM.SRC.UNDERLYING.ID", ["3123"] = "CUSIP", ["3125"] = "ISIN", ["3126"] = "SEDOL", ["3127"] = "INSTR_NAME", ["5013"] = "CSP.DDF_BATE", ["355"] = "MM.ID", ["2001"] = "QUOTE.COND_2" }

-- Mandatory: Update Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.update_message.mandatory = {  }

-- Dissect: Update Message
ice_icedataservices_brazilbmf_ctf_v2024_10_09.update_message.dissect = function(buffer, offset, size, packet, parent, params)
  parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.update_message, buffer(offset, size), "Update")
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, parent, params, ice_icedataservices_brazilbmf_ctf_v2024_10_09.update_message)
  return offset + size
end

-- Command dispatch: command token value to command
ice_icedataservices_brazilbmf_ctf_v2024_10_09.messages = {
  ["GetConflationInterval"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.get_conflation_interval_message,
  ["GetPort"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.get_port_message,
  ["ListAdministrationInfo"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_administration_info_message,
  ["ListAvailableTokens"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_available_tokens_message,
  ["ListEnumeration"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_enumeration_message,
  ["ListExchangeTokens"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_exchange_tokens_message,
  ["ListExtendedExchangeInfo"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_extended_exchange_info_message,
  ["ListInternalTokens"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_internal_tokens_message,
  ["ListSplitExchanges"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_split_exchanges_message,
  ["ListSubscribedExchanges"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_subscribed_exchanges_message,
  ["ListSubscribedNews"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_subscribed_news_message,
  ["ListSubscribedSymbols"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_subscribed_symbols_message,
  ["ListSystemPermission"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_system_permission_message,
  ["ListUserPermission"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_user_permission_message,
  ["ListUserTokens"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.list_user_tokens_message,
  ["LoginUser"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.login_user_message,
  ["QueryDepth"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_depth_message,
  ["QueryDepthAndSubscribe"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_depth_and_subscribe_message,
  ["QuerySnap"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_snap_message,
  ["QuerySnapAndSubscribe"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_snap_and_subscribe_message,
  ["QuerySubscribedExchanges"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_subscribed_exchanges_message,
  ["QuerySubscribedSymbols"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_subscribed_symbols_message,
  ["QueryWildCard"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_wild_card_message,
  ["QueryXref"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.query_xref_message,
  ["SelectAvailableTokens"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_available_tokens_message,
  ["SelectOutput"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_output_message,
  ["SelectUserFilterTokens"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_user_filter_tokens_message,
  ["SelectUserTokens"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.select_user_tokens_message,
  ["SetConflationInterval"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.set_conflation_interval_message,
  ["Subscribe"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.subscribe_message,
  ["Unsubscribe"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.unsubscribe_message,
}


-----------------------------------------------------------------------
-- Ice IceDataServices BrazilBmf Ctf 2024.10.09 Fields
-----------------------------------------------------------------------

-- Frame End
ice_icedataservices_brazilbmf_ctf_v2024_10_09.frame_end = {}

-- Size: Frame End
ice_icedataservices_brazilbmf_ctf_v2024_10_09.frame_end.size = 1

-- Display: Frame End
ice_icedataservices_brazilbmf_ctf_v2024_10_09.frame_end.display = function(value)
  if value == 3 then
    return "Frame End: Frame End"
  end

  return "Frame End: Unknown("..value..")"
end

-- Dissect: Frame End
ice_icedataservices_brazilbmf_ctf_v2024_10_09.frame_end.dissect = function(buffer, offset, packet, parent)
  local length = ice_icedataservices_brazilbmf_ctf_v2024_10_09.frame_end.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ice_icedataservices_brazilbmf_ctf_v2024_10_09.frame_end.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.frame_end, range, value, display)

  return offset + length, value
end

-- Frame Start
ice_icedataservices_brazilbmf_ctf_v2024_10_09.frame_start = {}

-- Size: Frame Start
ice_icedataservices_brazilbmf_ctf_v2024_10_09.frame_start.size = 1

-- Display: Frame Start
ice_icedataservices_brazilbmf_ctf_v2024_10_09.frame_start.display = function(value)
  if value == 4 then
    return "Frame Start: Frame Start"
  end

  return "Frame Start: Unknown("..value..")"
end

-- Dissect: Frame Start
ice_icedataservices_brazilbmf_ctf_v2024_10_09.frame_start.dissect = function(buffer, offset, packet, parent)
  local length = ice_icedataservices_brazilbmf_ctf_v2024_10_09.frame_start.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ice_icedataservices_brazilbmf_ctf_v2024_10_09.frame_start.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.frame_start, range, value, display)

  return offset + length, value
end

-- Length
ice_icedataservices_brazilbmf_ctf_v2024_10_09.length = {}

-- Size: Length
ice_icedataservices_brazilbmf_ctf_v2024_10_09.length.size = 4

-- Display: Length
ice_icedataservices_brazilbmf_ctf_v2024_10_09.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
ice_icedataservices_brazilbmf_ctf_v2024_10_09.length.dissect = function(buffer, offset, packet, parent)
  local length = ice_icedataservices_brazilbmf_ctf_v2024_10_09.length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ice_icedataservices_brazilbmf_ctf_v2024_10_09.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.length, range, value, display)

  return offset + length, value
end

-- Payload: a ctf payload, dispatched as a command, a response or the data update
ice_icedataservices_brazilbmf_ctf_v2024_10_09.payload = {}

-- Dissect runtime sized field: Payload, as a ctf payload
ice_icedataservices_brazilbmf_ctf_v2024_10_09.payload.dissect = function(buffer, offset, packet, parent, size)
  local params = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_params(buffer, offset, size)
  if #params == 0 then
    return offset + size
  end

  -- QUERY.COMMAND (5022): carried by every command and by no response, its value the command
  local command = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_value(buffer, params, "5022", nil)
  -- QUERY.TAG (5026): carried by every command, and back by its response
  local query = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_value(buffer, params, "5026", nil)
  -- ENUM.QUERY.STATUS (5001): carried by every response whose command reports errors, and by no command
  local status = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_value(buffer, params, "5001", nil)
  local name = nil
  if command ~= nil then
    local message = ice_icedataservices_brazilbmf_ctf_v2024_10_09.messages[command]
    if message == nil then
      local item = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.payload, buffer(offset, size))
      item:add_proto_expert_info(ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.unknown_command, "Unknown ctf command: "..command)
      ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, item, params, { name = command })
    else
      message.dissect(buffer, offset, size, packet, parent, params)
    end
    if query ~= nil then
      ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_ask(packet, query, command)
    end
    name = command
  elseif query ~= nil or status ~= nil then
    local message = nil
    local asked = nil
    if query ~= nil then
      asked = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_answer(packet, offset, query)
    end
    if asked ~= nil then
      message = ice_icedataservices_brazilbmf_ctf_v2024_10_09.messages[asked]
    end
    if message == nil then
      local item = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.ctf_response, buffer(offset, size), "")
      if query ~= nil then
        item:add_proto_expert_info(ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.unanswered, "No command seen asks query tag "..query)
      end
      ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_fields(buffer, packet, item, params, { name = "Response" })
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
      local reply = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_status(errors, status)
      if reply ~= nil and reply.name ~= "" then
        name = name.." "..reply.name
      else
        name = name.." "..status
      end
    end
  else
    ice_icedataservices_brazilbmf_ctf_v2024_10_09.update_message.dissect(buffer, offset, size, packet, parent, params)
    name = "Update"
    local symbol = ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_value(buffer, params, "5", "Symbol")
    if symbol ~= nil then
      name = name.." "..symbol
    end
  end
  packet.cols.info:append(name.." ")

  return offset + size, name
end

-- Protocol Signature
ice_icedataservices_brazilbmf_ctf_v2024_10_09.protocol_signature = {}

-- Size: Protocol Signature
ice_icedataservices_brazilbmf_ctf_v2024_10_09.protocol_signature.size = 1

-- Display: Protocol Signature
ice_icedataservices_brazilbmf_ctf_v2024_10_09.protocol_signature.display = function(value)
  if value == 32 then
    return "Protocol Signature: Token Value Payload"
  end

  return "Protocol Signature: Unknown("..value..")"
end

-- Dissect: Protocol Signature
ice_icedataservices_brazilbmf_ctf_v2024_10_09.protocol_signature.dissect = function(buffer, offset, packet, parent)
  local length = ice_icedataservices_brazilbmf_ctf_v2024_10_09.protocol_signature.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ice_icedataservices_brazilbmf_ctf_v2024_10_09.protocol_signature.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.protocol_signature, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Ice IceDataServices BrazilBmf Ctf 2024.10.09
-----------------------------------------------------------------------

-- Frame Header
ice_icedataservices_brazilbmf_ctf_v2024_10_09.frame_header = {}

-- Size: Frame Header
ice_icedataservices_brazilbmf_ctf_v2024_10_09.frame_header.size =
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.protocol_signature.size + 
  ice_icedataservices_brazilbmf_ctf_v2024_10_09.length.size

-- Display: Frame Header
ice_icedataservices_brazilbmf_ctf_v2024_10_09.frame_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Frame Header
ice_icedataservices_brazilbmf_ctf_v2024_10_09.frame_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Protocol Signature: 1 Byte Unsigned Fixed Width Integer Static
  index, protocol_signature = ice_icedataservices_brazilbmf_ctf_v2024_10_09.protocol_signature.dissect(buffer, index, packet, parent)

  -- Length: 4 Byte Unsigned Fixed Width Integer
  index, length = ice_icedataservices_brazilbmf_ctf_v2024_10_09.length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Frame Header
ice_icedataservices_brazilbmf_ctf_v2024_10_09.frame_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.fields.frame_header, buffer(offset, 0))
    local index = ice_icedataservices_brazilbmf_ctf_v2024_10_09.frame_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icedataservices_brazilbmf_ctf_v2024_10_09.frame_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icedataservices_brazilbmf_ctf_v2024_10_09.frame_header.fields(buffer, offset, packet, parent)
  end
end

-- Ctf Frame
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_frame = {}

-- Verify required size of Tcp packet
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_frame.requiredsize = function(buffer)
  return buffer:len() >= ice_icedataservices_brazilbmf_ctf_v2024_10_09.frame_start.size + ice_icedataservices_brazilbmf_ctf_v2024_10_09.frame_header.size
end

-- Dissect Ctf Frame
ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_frame.dissect = function(buffer, packet, parent)
  local index = 0

  -- Frame Start: 1 Byte Unsigned Fixed Width Integer Static
  index, frame_start = ice_icedataservices_brazilbmf_ctf_v2024_10_09.frame_start.dissect(buffer, index, packet, parent)

  -- Frame Header: Struct of 2 fields
  index, frame_header = ice_icedataservices_brazilbmf_ctf_v2024_10_09.frame_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Length
  local length = buffer(index - 4, 4):uint()

  -- Runtime Size Of: Payload
  index, payload = ice_icedataservices_brazilbmf_ctf_v2024_10_09.payload.dissect(buffer, index, packet, parent, length)

  -- Frame End: 1 Byte Unsigned Fixed Width Integer Static
  index, frame_end = ice_icedataservices_brazilbmf_ctf_v2024_10_09.frame_end.dissect(buffer, index, packet, parent)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.init()
end

-- Dissector for Ice IceDataServices BrazilBmf Ctf 2024.10.09
function omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.name

  local length = buffer:len()
  local index = 0

  -- Dissect each message the segment carries
  while index < length do
    local remaining = length - index

    -- The message length lives in the header: wait for the header before reading it
    if remaining < 1 + ice_icedataservices_brazilbmf_ctf_v2024_10_09.frame_header.size then
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

    local protocol = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09, buffer(index, size), omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.description, "("..size.." Bytes)")
    ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_frame.dissect(buffer(index, size):tvb(), packet, protocol)
    protocol:set_len(size)
    index = index + size
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Frame Start Field
ice_icedataservices_brazilbmf_ctf_v2024_10_09.frame_start.verify = function(buffer)
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
ice_icedataservices_brazilbmf_ctf_v2024_10_09.protocol_signature.verify = function(buffer)
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

-- Dissector Heuristic for Ice IceDataServices BrazilBmf Ctf 2024.10.09 (Tcp)
local function omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_frame.requiredsize(buffer) then return false end

  -- Verify Frame Start
  if not ice_icedataservices_brazilbmf_ctf_v2024_10_09.frame_start.verify(buffer) then return false end

  -- Verify Protocol Signature
  if not ice_icedataservices_brazilbmf_ctf_v2024_10_09.protocol_signature.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09
  omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Ice IceDataServices BrazilBmf Ctf 2024.10.09
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09:register_heuristic("tcp", omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09_tcp_heuristic)

-- Register Ice IceDataServices BrazilBmf Ctf 2024.10.09 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09)

-----------------------------------------------------------------------
-- Ctf Lines
-----------------------------------------------------------------------

-- Ice Replay File 2.0.0: A day of one source's payloads as text: a header line naming the day and the layout's version, then one data line per payload
local omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09_lines = Proto("Omi.Ice.IceDataServices.BrazilBmf.Ctf.v2024.10.09.Lines", "Ice IceDataServices BrazilBmf Ctf 2024.10.09 Ice Replay File")

-- Ice Replay File Fields
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09_lines.fields.lines_header = ProtoField.new("Header", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.linesheader", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09_lines.fields.lines_header_date = ProtoField.new("Date", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.linesheaderdate", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09_lines.fields.lines_header_version = ProtoField.new("VERSION", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.linesheaderversion", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09_lines.fields.lines_data = ProtoField.new("Data", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.linesdata", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09_lines.fields.lines_footer = ProtoField.new("Footer", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.linesfooter", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09_lines.fields.lines_footer_end = ProtoField.new("END", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.linesfooterend", ftypes.STRING)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09_lines.fields.lines_line = ProtoField.new("Line", "ice.icedataservices.brazilbmf.ctf.v2024.10.09.linesline", ftypes.STRING)

-- Ice Replay File Expert Info
ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.unknown_kind = ProtoExpert.new("ice.icedataservices.brazilbmf.ctf.v2024.10.09.unknownkind", "Line of no record kind the line layout names", expert.group.UNDECODED, expert.severity.WARN)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.unknown_field = ProtoExpert.new("ice.icedataservices.brazilbmf.ctf.v2024.10.09.unknownfield", "Line field the record does not name", expert.group.UNDECODED, expert.severity.NOTE)
ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.untimed = ProtoExpert.new("ice.icedataservices.brazilbmf.ctf.v2024.10.09.untimed", "Payload line without its time token: its frame time is the header's day", expert.group.SEQUENCE, expert.severity.NOTE)
omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09_lines.experts = { ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.unknown_kind, ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.unknown_field, ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.untimed }

-- Year, month and day of a date field's value, where its Format places them; nil when it is no such date
ice_icedataservices_brazilbmf_ctf_v2024_10_09.lines_day = function(value, day)
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
ice_icedataservices_brazilbmf_ctf_v2024_10_09.lines_named = function(buffer, text, offset, packet, parent, record)
  parent = parent:add(record.field, buffer(), record.kind)
  for _, pair in ipairs(ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_pairs(text, offset + 1, "|", "=")) do
    local range = buffer(pair.offset, pair.length)
    local named = pair.name and record.fields[pair.name]
    local marker = pair.name == nil and record.fields[range:string()]
    if marker and marker.marker then
      parent:add(marker.field, range, range:string())
    elseif not named then
      local item = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09_lines.fields.lines_line, range, range:string())
      item:add_proto_expert_info(ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.unknown_field, "Not a field of "..record.name..": "..range:string())
    else
      local value = text:sub(pair.value + 1, pair.value + pair.size)
      local shown = value
      if named.day ~= nil then
        local year, month, date = ice_icedataservices_brazilbmf_ctf_v2024_10_09.lines_day(value, named.day)
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
ice_icedataservices_brazilbmf_ctf_v2024_10_09.lines_header_record = { name = "Header", kind = "H", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09_lines.fields.lines_header, dissect = ice_icedataservices_brazilbmf_ctf_v2024_10_09.lines_named }
ice_icedataservices_brazilbmf_ctf_v2024_10_09.lines_header_record.fields = {
  ["Date"] = { field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09_lines.fields.lines_header_date, day = { year = 1, month = 5, day = 7, length = 8 } },
  ["VERSION"] = { field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09_lines.fields.lines_header_version },
}

-- Footer (F): The file's last line, "F|END": the file ends here, so a file without it was cut short
ice_icedataservices_brazilbmf_ctf_v2024_10_09.lines_footer_record = { name = "Footer", kind = "F", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09_lines.fields.lines_footer, dissect = ice_icedataservices_brazilbmf_ctf_v2024_10_09.lines_named }
ice_icedataservices_brazilbmf_ctf_v2024_10_09.lines_footer_record.fields = {
  ["END"] = { field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09_lines.fields.lines_footer_end, marker = true },
}

-- Data (D): One payload: everything after "D|" is the token=value pairs a CTF frame's payload holds
-- frame time: its ACTIVITY.DATETIME (16), else the header's day
ice_icedataservices_brazilbmf_ctf_v2024_10_09.lines_data_record = { name = "Data", kind = "D", field = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09_lines.fields.lines_data }

-- Dissect: Data, its payload as a frame's
ice_icedataservices_brazilbmf_ctf_v2024_10_09.lines_data_record.dissect = function(buffer, text, offset, packet, parent, record)
  parent = parent:add(record.field, buffer(), record.kind)
  if ice_icedataservices_brazilbmf_ctf_v2024_10_09.lines_time(text) == nil then
    parent:add_proto_expert_info(ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.untimed, "No ACTIVITY.DATETIME (16): the frame's time is the header's day")
  end
  return ice_icedataservices_brazilbmf_ctf_v2024_10_09.payload.dissect(buffer, offset, packet, parent, buffer:len() - offset)
end

-- Record dispatch: line kind to record
ice_icedataservices_brazilbmf_ctf_v2024_10_09.lines_records = {
  ["D"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.lines_data_record,
  ["F"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.lines_footer_record,
  ["H"] = ice_icedataservices_brazilbmf_ctf_v2024_10_09.lines_header_record,
}

-- Dissect a line of a Ice Replay File: its kind, before the first "|", selects its record
function omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09_lines.dissector(buffer, packet, parent)
  packet.cols.protocol = omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09_lines.name
  local text = buffer:raw()
  local tree = parent:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09_lines, buffer())
  local at = text:find("|", 1, true)
  local kind = text
  local offset = #text
  if at ~= nil then
    kind = text:sub(1, at - 1)
    offset = at
  end
  local record = ice_icedataservices_brazilbmf_ctf_v2024_10_09.lines_records[kind]
  if record == nil then
    local item = tree:add(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09_lines.fields.lines_line, buffer(), text)
    item:add_proto_expert_info(ice_icedataservices_brazilbmf_ctf_v2024_10_09.experts.unknown_kind, "No record is of kind "..kind)
    packet.cols.info:append(kind.." ")
  else
    record.dissect(buffer, text, offset, packet, tree, record)
  end
  return buffer:len()
end


-----------------------------------------------------------------------
-- Ctf Lines Reader
-----------------------------------------------------------------------

-- Exported PDU tags a line is written behind: the dissector name omi.ice.icedataservices.brazilbmf.ctf.v2024.10.09.lines, then the end of the tags
ice_icedataservices_brazilbmf_ctf_v2024_10_09.lines_tags = "\000\012\000\056omi.ice.icedataservices.brazilbmf.ctf.v2024.10.09.lines\000\000\000\000\000"

-- Does a file open with the layout's header: H, exactly its fields Date, VERSION, and VERSION 2.0.0?
ice_icedataservices_brazilbmf_ctf_v2024_10_09.lines_opens = function(line)
  if line == nil or line:sub(1, 2) ~= "H|" then
    return false
  end
  local named = {}
  local count = 0
  for _, pair in ipairs(ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_pairs(line, 3, "|", "=")) do
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
ice_icedataservices_brazilbmf_ctf_v2024_10_09.lines_midnight = function(line)
  if line:sub(1, 2) ~= "H|" then
    return nil
  end
  for _, pair in ipairs(ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_pairs(line, 3, "|", "=")) do
    if pair.name == "Date" then
      local year, month, day = ice_icedataservices_brazilbmf_ctf_v2024_10_09.lines_day(line:sub(pair.value + 1, pair.value + pair.size), { year = 1, month = 5, day = 7, length = 8 })
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
ice_icedataservices_brazilbmf_ctf_v2024_10_09.lines_time = function(line)
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
  return (ice_icedataservices_brazilbmf_ctf_v2024_10_09.ctf_instant(line:sub(first, stop - 1), 0))
end

-- Read the next line into a frame behind the exported PDU tags: its time a payload line's ACTIVITY.DATETIME (16), else the header's day; false at the end of the file
ice_icedataservices_brazilbmf_ctf_v2024_10_09.lines_frame = function(file, capture, frame)
  local line = file:read("*l")
  if line == nil then
    return false
  end
  local state = capture.private_table
  local midnight = ice_icedataservices_brazilbmf_ctf_v2024_10_09.lines_midnight(line)
  if midnight ~= nil then
    state.midnight = midnight
  end
  local time = ice_icedataservices_brazilbmf_ctf_v2024_10_09.lines_time(line)
  if time == nil then
    time = state.midnight
  end
  local data = ice_icedataservices_brazilbmf_ctf_v2024_10_09.lines_tags..line
  frame.rec_type = wtap_rec_types.PACKET
  frame.flags = wtap_presence_flags.TS
  frame.time = time
  frame.captured_length = #data
  frame.original_length = #data
  frame.data = data
  return true
end

-- Ice Replay File reader: a file opening with its header, one frame per line
local omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09_lines_reader = FileHandler.new("Ice IceDataServices BrazilBmf Ctf 2024.10.09 Ice Replay File", "ice_icedataservices_brazilbmf_ctf_v2024_10_09_lines", "A day of one source's payloads as text: a header line naming the day and the layout's version, then one data line per payload", "rs")

-- Open: claim the file only when its first line is the layout's header, and keep its day
function omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09_lines_reader.read_open(file, capture)
  local first = file:read("*l")
  if not ice_icedataservices_brazilbmf_ctf_v2024_10_09.lines_opens(first) then
    return false
  end
  file:seek("set", 0)
  capture.encap = wtap_encaps.WIRESHARK_UPPER_PDU
  capture.time_precision = wtap_tsprecs.NSEC
  capture.private_table = { midnight = ice_icedataservices_brazilbmf_ctf_v2024_10_09.lines_midnight(first) or NSTime.new(0, 0) }
  return true
end

-- Read: the next frame, at the offset its line starts at
function omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09_lines_reader.read(file, capture, frame)
  local offset = file:seek()
  if not ice_icedataservices_brazilbmf_ctf_v2024_10_09.lines_frame(file, capture, frame) then
    return false
  end
  return offset
end

-- Seek read: the frame whose line starts at offset
function omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09_lines_reader.seek_read(file, capture, frame, offset)
  file:seek("set", offset)
  return ice_icedataservices_brazilbmf_ctf_v2024_10_09.lines_frame(file, capture, frame)
end

function omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09_lines_reader.read_close(file, capture)
  return true
end

function omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09_lines_reader.seq_read_close(file, capture)
  return true
end

-- Register the Ice Replay File reader
register_filehandler(omi_ice_icedataservices_brazilbmf_ctf_v2024_10_09_lines_reader)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Intercontinental Exchange
--   Version: 2024.10.09
--   Date: Wednesday, October 9, 2024
--   Specification: Brazil_BMnF_Futures_and_Options_2024-10-09.pdf
--   Specification: CTF_Wire_Protocol_2017-10-10.pdf
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
