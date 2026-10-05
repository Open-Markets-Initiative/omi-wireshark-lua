-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax OnyxFutures TopOfMarketRetransmission SesM 1.3.a Protocol
local omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a = Proto("Omi.Miax.OnyxFutures.TopOfMarketRetransmission.SesM.v1.3.a", "Miax OnyxFutures TopOfMarketRetransmission SesM 1.3.a")

-- Protocol table
local miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax OnyxFutures TopOfMarketRetransmission SesM 1.3.a Fields
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.application_protocol = ProtoField.new("Application Protocol", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.applicationprotocol", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.complex_trade_id = ProtoField.new("Complex Trade Id", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.complextradeid", ftypes.UINT64)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.computer_id = ProtoField.new("Computer Id", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.computerid", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.contract_date = ProtoField.new("Contract Date", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.contractdate", ftypes.UINT32)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.correction_number = ProtoField.new("Correction Number", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.correctionnumber", ftypes.UINT8)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.currency = ProtoField.new("Currency", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.currency", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.deprecated_instrument_leg = ProtoField.new("Deprecated Instrument Leg", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.deprecatedinstrumentleg", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.end_of_refresh = ProtoField.new("End Of Refresh", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.endofrefresh", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.end_sequence_number = ProtoField.new("End Sequence Number", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.endsequencenumber", ftypes.UINT64)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.exchange = ProtoField.new("Exchange", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.exchange", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.first_delivery_date = ProtoField.new("First Delivery Date", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.firstdeliverydate", ftypes.UINT16)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.first_notice_date = ProtoField.new("First Notice Date", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.firstnoticedate", ftypes.UINT16)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.first_trade_date = ProtoField.new("First Trade Date", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.firsttradedate", ftypes.UINT16)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.goodbye_packet = ProtoField.new("Goodbye Packet", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.goodbyepacket", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.high_limit_price = ProtoField.new("High Limit Price", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.highlimitprice", ftypes.DOUBLE)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.highest_sequence_number = ProtoField.new("Highest Sequence Number", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.highestsequencenumber", ftypes.UINT64)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.instrument_id = ProtoField.new("Instrument Id", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.instrumentid", ftypes.UINT32)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.instrument_id_formerly_known_as_strategy_id = ProtoField.new("Instrument Id Formerly Known As Strategy Id", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.instrumentidformerlyknownasstrategyid", ftypes.UINT32)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.instrument_id_source = ProtoField.new("Instrument Id Source", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.instrumentidsource", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.instrument_leg = ProtoField.new("Instrument Leg", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.instrumentleg", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.instrument_listing_status = ProtoField.new("Instrument Listing Status", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.instrumentlistingstatus", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.instrument_type = ProtoField.new("Instrument Type", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.instrumenttype", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.last_delivery_date = ProtoField.new("Last Delivery Date", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.lastdeliverydate", ftypes.UINT16)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.last_notice_date = ProtoField.new("Last Notice Date", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.lastnoticedate", ftypes.UINT16)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.last_trade_date = ProtoField.new("Last Trade Date", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.lasttradedate", ftypes.UINT16)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.leg_ratio_and_side = ProtoField.new("Leg Ratio And Side", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.legratioandside", ftypes.INT32)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.listing_status = ProtoField.new("Listing Status", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.listingstatus", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.login_request = ProtoField.new("Login Request", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.loginrequest", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.login_response = ProtoField.new("Login Response", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.loginresponse", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.login_status = ProtoField.new("Login Status", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.loginstatus", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.logout_reason = ProtoField.new("Logout Reason", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.logoutreason", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.logout_request = ProtoField.new("Logout Request", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.logoutrequest", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.logout_text = ProtoField.new("Logout Text", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.logouttext", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.low_limit_price = ProtoField.new("Low Limit Price", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.lowlimitprice", ftypes.DOUBLE)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.market_state = ProtoField.new("Market State", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.marketstate", ftypes.UINT8)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.match_algorithm = ProtoField.new("Match Algorithm", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.matchalgorithm", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.maturity_date = ProtoField.new("Maturity Date", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.maturitydate", ftypes.UINT16)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.maximum_size = ProtoField.new("Maximum Size", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.maximumsize", ftypes.UINT32)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.mbb_price = ProtoField.new("Mbb Price", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.mbbprice", ftypes.DOUBLE)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.mbb_size = ProtoField.new("Mbb Size", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.mbbsize", ftypes.UINT32)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.mbo_price = ProtoField.new("Mbo Price", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.mboprice", ftypes.DOUBLE)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.mbo_size = ProtoField.new("Mbo Size", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.mbosize", ftypes.UINT32)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.message_type = ProtoField.new("Message Type", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.messagetype", ftypes.UINT8)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.minimum_size = ProtoField.new("Minimum Size", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.minimumsize", ftypes.UINT32)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.number_of_legs = ProtoField.new("Number Of Legs", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.numberoflegs", ftypes.UINT8)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.open_interest_quantity = ProtoField.new("Open Interest Quantity", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.openinterestquantity", ftypes.UINT32)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.option_expiration_type = ProtoField.new("Option Expiration Type", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.optionexpirationtype", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.option_strike_currency = ProtoField.new("Option Strike Currency", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.optionstrikecurrency", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.option_strike_price = ProtoField.new("Option Strike Price", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.optionstrikeprice", ftypes.DOUBLE)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.option_type = ProtoField.new("Option Type", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.optiontype", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.price = ProtoField.new("Price", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.price", ftypes.DOUBLE)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.product_group_code_alphanumeric_13 = ProtoField.new("Product Group Code Alphanumeric 13", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.productgroupcodealphanumeric13", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.product_group_code_alphanumeric_6 = ProtoField.new("Product Group Code Alphanumeric 6", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.productgroupcodealphanumeric6", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.refresh_message_type = ProtoField.new("Refresh Message Type", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.refreshmessagetype", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.refresh_request = ProtoField.new("Refresh Request", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.refreshrequest", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.refresh_response = ProtoField.new("Refresh Response", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.refreshresponse", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.refresh_type = ProtoField.new("Refresh Type", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.refreshtype", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.requestedsequencenumber", ftypes.UINT64)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.requested_session = ProtoField.new("Requested Session", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.requestedsession", ftypes.UINT8)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.reserved_16 = ProtoField.new("Reserved 16", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.reserved16", ftypes.BYTES)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.reserved_3 = ProtoField.new("Reserved 3", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.reserved3", ftypes.BYTES)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.reserved_32 = ProtoField.new("Reserved 32", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.reserved32", ftypes.BYTES)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.reserved_4 = ProtoField.new("Reserved 4", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.reserved4", ftypes.BYTES)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.reserved_6 = ProtoField.new("Reserved 6", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.reserved6", ftypes.BYTES)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.reserved_64 = ProtoField.new("Reserved 64", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.reserved64", ftypes.BYTES)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.retransmission_request = ProtoField.new("Retransmission Request", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.retransmissionrequest", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.sequence_number = ProtoField.new("Sequence Number", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.sequencenumber", ftypes.UINT64)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.sequenceddatapacket", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.sesm_packet_length = ProtoField.new("Sesm Packet Length", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.sesmpacketlength", ftypes.UINT16)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.sesm_packet_type = ProtoField.new("Sesm Packet Type", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.sesmpackettype", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.sesm_version = ProtoField.new("Sesm Version", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.sesmversion", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.session_id = ProtoField.new("Session Id", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.sessionid", ftypes.UINT8)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.settlement_currency = ProtoField.new("Settlement Currency", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.settlementcurrency", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.settlement_price = ProtoField.new("Settlement Price", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.settlementprice", ftypes.DOUBLE)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.settlement_price_type_calc_method = ProtoField.new("Settlement Price Type Calc Method", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.settlementpricetypecalcmethod", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.size = ProtoField.new("Size", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.size", ftypes.UINT32)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.spread_type = ProtoField.new("Spread Type", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.spreadtype", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.start_sequence_number = ProtoField.new("Start Sequence Number", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.startsequencenumber", ftypes.UINT64)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.system_status = ProtoField.new("System Status", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.systemstatus", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.tick = ProtoField.new("Tick", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.tick", ftypes.DOUBLE)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.timestamp = ProtoField.new("Timestamp", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.timestamp", ftypes.UINT64)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.to_m_version = ProtoField.new("To M Version", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.tomversion", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.total_volume = ProtoField.new("Total Volume", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.totalvolume", ftypes.UINT32)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.trade_date = ProtoField.new("Trade Date", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.tradedate", ftypes.UINT16)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.trade_id = ProtoField.new("Trade Id", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.tradeid", ftypes.UINT64)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.trade_type = ProtoField.new("Trade Type", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.tradetype", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.trading_collar_variation = ProtoField.new("Trading Collar Variation", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.tradingcollarvariation", ftypes.DOUBLE)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.trading_collar_variation_type = ProtoField.new("Trading Collar Variation Type", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.tradingcollarvariationtype", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.trading_status = ProtoField.new("Trading Status", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.tradingstatus", ftypes.UINT8)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.underlying_asset_alphanumeric_4 = ProtoField.new("Underlying Asset Alphanumeric 4", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.underlyingassetalphanumeric4", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.underlying_asset_alphanumeric_9 = ProtoField.new("Underlying Asset Alphanumeric 9", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.underlyingassetalphanumeric9", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.underlying_asset_type = ProtoField.new("Underlying Asset Type", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.underlyingassettype", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.underlying_future_instrument_id = ProtoField.new("Underlying Future Instrument Id", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.underlyingfutureinstrumentid", ftypes.UINT32)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.unit_of_measure = ProtoField.new("Unit Of Measure", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.unitofmeasure", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.unit_of_measure_quantity = ProtoField.new("Unit Of Measure Quantity", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.unitofmeasurequantity", ftypes.UINT32)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.unsequenceddatapacket", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.username = ProtoField.new("Username", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.username", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.valuation_date = ProtoField.new("Valuation Date", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.valuationdate", ftypes.UINT16)

-- Miax OnyxFutures TopOfMarketRetransmission SesM 1.3.a Framing
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.packet = ProtoField.new("Packet", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.packet", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.sesm_packet_header = ProtoField.new("Sesm Packet Header", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.sesmpacketheader", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.sesm_tcp_packet = ProtoField.new("Sesm Tcp Packet", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.sesmtcppacket", ftypes.STRING)

-- Miax OnyxFutures TopOfMarketRetransmission 1.3.a Application Messages
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.best_bid_and_offer_message = ProtoField.new("Best Bid And Offer Message", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.bestbidandoffermessage", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.complex_instrument_definition_deprecated_message = ProtoField.new("Complex Instrument Definition Deprecated Message", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.complexinstrumentdefinitiondeprecatedmessage", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.complex_instrument_definition_message = ProtoField.new("Complex Instrument Definition Message", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.complexinstrumentdefinitionmessage", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.instrument_trading_status_notification_message = ProtoField.new("Instrument Trading Status Notification Message", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.instrumenttradingstatusnotificationmessage", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.last_sale_message = ProtoField.new("Last Sale Message", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.lastsalemessage", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.simple_instrument_definition_message = ProtoField.new("Simple Instrument Definition Message", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.simpleinstrumentdefinitionmessage", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.system_state_message = ProtoField.new("System State Message", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.systemstatemessage", ftypes.STRING)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.tradecancelmessage", ftypes.STRING)

-- Miax OnyxFutures TopOfMarketRetransmission SesM 1.3.a Generated Fields
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.deprecated_instrument_leg_index = ProtoField.new("Deprecated Instrument Leg Index", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.deprecatedinstrumentlegindex", ftypes.UINT16)
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.instrument_leg_index = ProtoField.new("Instrument Leg Index", "miax.onyxfutures.topofmarketretransmission.sesm.v1.3.a.instrumentlegindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Miax OnyxFutures TopOfMarketRetransmission SesM 1.3.a Element Dissection Options
show.application_messages = true
show.repeating_groups = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Miax OnyxFutures TopOfMarketRetransmission SesM 1.3.a Show Options
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.prefs.show_application_messages then
    show.application_messages = omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.prefs.show_application_messages
  end
  if show.headers ~= omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.prefs.show_headers then
    show.headers = omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.prefs.show_headers
  end
  if show.repeating_groups ~= omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.prefs.show_repeating_groups then
    show.repeating_groups = omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.prefs.show_repeating_groups
  end
  if show.structs ~= omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.prefs.show_structs then
    show.structs = omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.prefs.show_structs
  end
  if show.indexes ~= omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.prefs.show_indexes then
    show.indexes = omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------

-- trim trailing spaces
trim_right_spaces = function(str)
  local finish = str:len()

  while finish > 0 and str:byte(finish) == 0x20 do
    finish = finish - 1
  end

  return str:sub(1, finish)
end


-----------------------------------------------------------------------
-- Miax OnyxFutures TopOfMarketRetransmission SesM 1.3.a Fields
-----------------------------------------------------------------------

-- Application Protocol
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.application_protocol = {}

-- Size: Application Protocol
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.application_protocol.size = 8

-- Display: Application Protocol
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.application_protocol.display = function(value)
  return "Application Protocol: "..value
end

-- Dissect: Application Protocol
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.application_protocol.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.application_protocol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.application_protocol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.application_protocol, range, value, display)

  return offset + length, value
end

-- Complex Trade Id
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.complex_trade_id = {}

-- Size: Complex Trade Id
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.complex_trade_id.size = 8

-- Display: Complex Trade Id
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.complex_trade_id.display = function(value)
  return "Complex Trade Id: "..value
end

-- Dissect: Complex Trade Id
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.complex_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.complex_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.complex_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.complex_trade_id, range, value, display)

  return offset + length, value
end

-- Computer Id
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.computer_id = {}

-- Size: Computer Id
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.computer_id.size = 8

-- Display: Computer Id
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.computer_id.display = function(value)
  return "Computer Id: "..value
end

-- Dissect: Computer Id
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.computer_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.computer_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.computer_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.computer_id, range, value, display)

  return offset + length, value
end

-- Contract Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.contract_date = {}

-- Size: Contract Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.contract_date.size = 4

-- Display: Contract Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.contract_date.display = function(value)
  return "Contract Date: "..value
end

-- Dissect: Contract Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.contract_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.contract_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.contract_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.contract_date, range, value, display)

  return offset + length, value
end

-- Correction Number
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.correction_number = {}

-- Size: Correction Number
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.correction_number.size = 1

-- Display: Correction Number
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.correction_number.display = function(value)
  return "Correction Number: "..value
end

-- Dissect: Correction Number
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.correction_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.correction_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.correction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.correction_number, range, value, display)

  return offset + length, value
end

-- Currency
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.currency = {}

-- Size: Currency
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.currency.size = 1

-- Display: Currency
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.currency.display = function(value)
  if value == "U" then
    return "Currency: Usd (U)"
  end

  return "Currency: Unknown("..value..")"
end

-- Dissect: Currency
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.currency.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.currency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.currency, range, value, display)

  return offset + length, value
end

-- End Sequence Number
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.end_sequence_number = {}

-- Size: End Sequence Number
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.end_sequence_number.size = 8

-- Display: End Sequence Number
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.end_sequence_number.display = function(value)
  return "End Sequence Number: "..value
end

-- Dissect: End Sequence Number
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.end_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.end_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.end_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.end_sequence_number, range, value, display)

  return offset + length, value
end

-- Exchange
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.exchange = {}

-- Size: Exchange
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.exchange.size = 4

-- Display: Exchange
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.exchange.display = function(value)
  return "Exchange: "..value
end

-- Dissect: Exchange
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.exchange.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.exchange.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.exchange, range, value, display)

  return offset + length, value
end

-- First Delivery Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.first_delivery_date = {}

-- Size: First Delivery Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.first_delivery_date.size = 2

-- Display: First Delivery Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.first_delivery_date.display = function(value)
  return "First Delivery Date: "..value
end

-- Dissect: First Delivery Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.first_delivery_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.first_delivery_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.first_delivery_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.first_delivery_date, range, value, display)

  return offset + length, value
end

-- First Notice Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.first_notice_date = {}

-- Size: First Notice Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.first_notice_date.size = 2

-- Display: First Notice Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.first_notice_date.display = function(value)
  return "First Notice Date: "..value
end

-- Dissect: First Notice Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.first_notice_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.first_notice_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.first_notice_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.first_notice_date, range, value, display)

  return offset + length, value
end

-- First Trade Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.first_trade_date = {}

-- Size: First Trade Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.first_trade_date.size = 2

-- Display: First Trade Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.first_trade_date.display = function(value)
  return "First Trade Date: "..value
end

-- Dissect: First Trade Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.first_trade_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.first_trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.first_trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.first_trade_date, range, value, display)

  return offset + length, value
end

-- High Limit Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.high_limit_price = {}

-- Size: High Limit Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.high_limit_price.size = 8

-- Display: High Limit Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.high_limit_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xA763FFFF, 0x0DE0B6B3) then
    return "High Limit Price: No Value"
  end

  return "High Limit Price: "..value
end

-- Translate: High Limit Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.high_limit_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xA763FFFF, 0x0DE0B6B3) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: High Limit Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.high_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.high_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.high_limit_price.translate(raw)
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.high_limit_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.high_limit_price, range, value, display)

  return offset + length, value
end

-- Highest Sequence Number
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.highest_sequence_number = {}

-- Size: Highest Sequence Number
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.highest_sequence_number.size = 8

-- Display: Highest Sequence Number
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.highest_sequence_number.display = function(value)
  return "Highest Sequence Number: "..value
end

-- Dissect: Highest Sequence Number
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.highest_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.highest_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.highest_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.highest_sequence_number, range, value, display)

  return offset + length, value
end

-- Instrument Id
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id = {}

-- Size: Instrument Id
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id.size = 4

-- Display: Instrument Id
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Instrument Id Formerly Known As Strategy Id
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id_formerly_known_as_strategy_id = {}

-- Size: Instrument Id Formerly Known As Strategy Id
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id_formerly_known_as_strategy_id.size = 4

-- Display: Instrument Id Formerly Known As Strategy Id
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id_formerly_known_as_strategy_id.display = function(value)
  return "Instrument Id Formerly Known As Strategy Id: "..value
end

-- Dissect: Instrument Id Formerly Known As Strategy Id
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id_formerly_known_as_strategy_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id_formerly_known_as_strategy_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id_formerly_known_as_strategy_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.instrument_id_formerly_known_as_strategy_id, range, value, display)

  return offset + length, value
end

-- Instrument Id Source
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id_source = {}

-- Size: Instrument Id Source
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id_source.size = 1

-- Display: Instrument Id Source
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id_source.display = function(value)
  if value == "E" then
    return "Instrument Id Source: Exchange (E)"
  end

  return "Instrument Id Source: Unknown("..value..")"
end

-- Dissect: Instrument Id Source
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id_source.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id_source.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.instrument_id_source, range, value, display)

  return offset + length, value
end

-- Instrument Listing Status
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_listing_status = {}

-- Size: Instrument Listing Status
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_listing_status.size = 1

-- Display: Instrument Listing Status
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_listing_status.display = function(value)
  if value == "A" then
    return "Instrument Listing Status: Active (A)"
  end
  if value == "I" then
    return "Instrument Listing Status: Inactive (I)"
  end

  return "Instrument Listing Status: Unknown("..value..")"
end

-- Dissect: Instrument Listing Status
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_listing_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_listing_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_listing_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.instrument_listing_status, range, value, display)

  return offset + length, value
end

-- Instrument Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_type = {}

-- Size: Instrument Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_type.size = 1

-- Display: Instrument Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_type.display = function(value)
  if value == "F" then
    return "Instrument Type: Futures (F)"
  end
  if value == "O" then
    return "Instrument Type: Options On (O)"
  end
  if value == "T" then
    return "Instrument Type: Trade At (T)"
  end
  if value == "B" then
    return "Instrument Type: Basis (B)"
  end

  return "Instrument Type: Unknown("..value..")"
end

-- Dissect: Instrument Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Last Delivery Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_delivery_date = {}

-- Size: Last Delivery Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_delivery_date.size = 2

-- Display: Last Delivery Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_delivery_date.display = function(value)
  return "Last Delivery Date: "..value
end

-- Dissect: Last Delivery Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_delivery_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_delivery_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_delivery_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.last_delivery_date, range, value, display)

  return offset + length, value
end

-- Last Notice Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_notice_date = {}

-- Size: Last Notice Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_notice_date.size = 2

-- Display: Last Notice Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_notice_date.display = function(value)
  return "Last Notice Date: "..value
end

-- Dissect: Last Notice Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_notice_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_notice_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_notice_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.last_notice_date, range, value, display)

  return offset + length, value
end

-- Last Trade Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_trade_date = {}

-- Size: Last Trade Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_trade_date.size = 2

-- Display: Last Trade Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_trade_date.display = function(value)
  return "Last Trade Date: "..value
end

-- Dissect: Last Trade Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_trade_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.last_trade_date, range, value, display)

  return offset + length, value
end

-- Leg Ratio And Side
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.leg_ratio_and_side = {}

-- Size: Leg Ratio And Side
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.leg_ratio_and_side.size = 4

-- Display: Leg Ratio And Side
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.leg_ratio_and_side.display = function(value)
  return "Leg Ratio And Side: "..value
end

-- Dissect: Leg Ratio And Side
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.leg_ratio_and_side.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.leg_ratio_and_side.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.leg_ratio_and_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.leg_ratio_and_side, range, value, display)

  return offset + length, value
end

-- Listing Status
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.listing_status = {}

-- Size: Listing Status
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.listing_status.size = 1

-- Display: Listing Status
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.listing_status.display = function(value)
  if value == "A" then
    return "Listing Status: Active (A)"
  end
  if value == "I" then
    return "Listing Status: Inactive (I)"
  end

  return "Listing Status: Unknown("..value..")"
end

-- Dissect: Listing Status
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.listing_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.listing_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.listing_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.listing_status, range, value, display)

  return offset + length, value
end

-- Login Status
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.login_status = {}

-- Size: Login Status
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.login_status.size = 1

-- Display: Login Status
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.login_status.display = function(value)
  if value == " " then
    return "Login Status: Successful (<whitespace>)"
  end
  if value == "X" then
    return "Login Status: Rejected (X)"
  end
  if value == "S" then
    return "Login Status: Requested Session Is Not Available (S)"
  end
  if value == "N" then
    return "Login Status: Invalid Start Sequence Number Requested (N)"
  end
  if value == "I" then
    return "Login Status: Incompatible Session Protocol Version (I)"
  end
  if value == "A" then
    return "Login Status: Incompatible Application Protocol Version (A)"
  end
  if value == "L" then
    return "Login Status: Request Rejected Because Client Already Logged In (L)"
  end

  return "Login Status: Unknown("..value..")"
end

-- Dissect: Login Status
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.login_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.login_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.login_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.login_status, range, value, display)

  return offset + length, value
end

-- Logout Reason
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.logout_reason = {}

-- Size: Logout Reason
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.logout_reason.size = 1

-- Display: Logout Reason
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.logout_reason.display = function(value)
  if value == " " then
    return "Logout Reason: Graceful Logout (<whitespace>)"
  end
  if value == "B" then
    return "Logout Reason: Bad Packet (B)"
  end
  if value == "L" then
    return "Logout Reason: Timed Out (L)"
  end
  if value == "A" then
    return "Logout Reason: Application Terminating Connection (A)"
  end

  return "Logout Reason: Unknown("..value..")"
end

-- Dissect: Logout Reason
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Logout Text
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.logout_text = {}

-- Display: Logout Text
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.logout_text.display = function(value)
  return "Logout Text: "..value
end

-- Dissect runtime sized field: Logout Text
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.logout_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.logout_text.display(value, packet, parent, size)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.logout_text, range, value, display)

  return offset + size, value
end

-- Low Limit Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.low_limit_price = {}

-- Size: Low Limit Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.low_limit_price.size = 8

-- Display: Low Limit Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.low_limit_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x589C0001, 0xF21F494C) then
    return "Low Limit Price: No Value"
  end

  return "Low Limit Price: "..value
end

-- Translate: Low Limit Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.low_limit_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x589C0001, 0xF21F494C) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Low Limit Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.low_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.low_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.low_limit_price.translate(raw)
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.low_limit_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.low_limit_price, range, value, display)

  return offset + length, value
end

-- Market State
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.market_state = {}

-- Size: Market State
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.market_state.size = 1

-- Display: Market State
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.market_state.display = function(value)
  return "Market State: "..value
end

-- Dissect: Market State
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.market_state.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.market_state.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.market_state, range, value, display)

  return offset + length, value
end

-- Match Algorithm
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.match_algorithm = {}

-- Size: Match Algorithm
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.match_algorithm.size = 1

-- Display: Match Algorithm
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.match_algorithm.display = function(value)
  if value == "P" then
    return "Match Algorithm: Price Time (P)"
  end

  return "Match Algorithm: Unknown("..value..")"
end

-- Dissect: Match Algorithm
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.match_algorithm.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.match_algorithm.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.match_algorithm.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.match_algorithm, range, value, display)

  return offset + length, value
end

-- Maturity Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.maturity_date = {}

-- Size: Maturity Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.maturity_date.size = 2

-- Display: Maturity Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.maturity_date.display = function(value)
  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.maturity_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Maximum Size
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.maximum_size = {}

-- Size: Maximum Size
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.maximum_size.size = 4

-- Display: Maximum Size
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.maximum_size.display = function(value)
  return "Maximum Size: "..value
end

-- Dissect: Maximum Size
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.maximum_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.maximum_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.maximum_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.maximum_size, range, value, display)

  return offset + length, value
end

-- Mbb Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbb_price = {}

-- Size: Mbb Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbb_price.size = 8

-- Display: Mbb Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbb_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x589C0001, 0xF21F494C) then
    return "Mbb Price: No Value"
  end

  return "Mbb Price: "..value
end

-- Translate: Mbb Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbb_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x589C0001, 0xF21F494C) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Mbb Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbb_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbb_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbb_price.translate(raw)
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbb_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.mbb_price, range, value, display)

  return offset + length, value
end

-- Mbb Size
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbb_size = {}

-- Size: Mbb Size
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbb_size.size = 4

-- Display: Mbb Size
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbb_size.display = function(value)
  return "Mbb Size: "..value
end

-- Dissect: Mbb Size
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbb_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbb_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbb_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.mbb_size, range, value, display)

  return offset + length, value
end

-- Mbo Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbo_price = {}

-- Size: Mbo Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbo_price.size = 8

-- Display: Mbo Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbo_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xA763FFFF, 0x0DE0B6B3) then
    return "Mbo Price: No Value"
  end

  return "Mbo Price: "..value
end

-- Translate: Mbo Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbo_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xA763FFFF, 0x0DE0B6B3) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Mbo Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbo_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbo_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbo_price.translate(raw)
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbo_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.mbo_price, range, value, display)

  return offset + length, value
end

-- Mbo Size
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbo_size = {}

-- Size: Mbo Size
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbo_size.size = 4

-- Display: Mbo Size
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbo_size.display = function(value)
  return "Mbo Size: "..value
end

-- Dissect: Mbo Size
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbo_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbo_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbo_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.mbo_size, range, value, display)

  return offset + length, value
end

-- Message Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.message_type = {}

-- Size: Message Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.message_type.size = 1

-- Display: Message Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.message_type.display = function(value)
  if value == 1 then
    return "Message Type: Simple Instrument Definition Message (1)"
  end
  if value == 17 then
    return "Message Type: Complex Instrument Definition Message (17)"
  end
  if value == 2 then
    return "Message Type: Complex Instrument Definition Deprecated Message (2)"
  end
  if value == 3 then
    return "Message Type: System State Message (3)"
  end
  if value == 4 then
    return "Message Type: Instrument Trading Status Notification Message (4)"
  end
  if value == 15 then
    return "Message Type: Best Bid And Offer Message (15)"
  end
  if value == 16 then
    return "Message Type: Last Sale Message (16)"
  end
  if value == 14 then
    return "Message Type: Trade Cancel Message (14)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.message_type, range, value, display)

  return offset + length, value
end

-- Minimum Size
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.minimum_size = {}

-- Size: Minimum Size
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.minimum_size.size = 4

-- Display: Minimum Size
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.minimum_size.display = function(value)
  return "Minimum Size: "..value
end

-- Dissect: Minimum Size
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.minimum_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.minimum_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.minimum_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.minimum_size, range, value, display)

  return offset + length, value
end

-- Number Of Legs
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.number_of_legs = {}

-- Size: Number Of Legs
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.number_of_legs.size = 1

-- Display: Number Of Legs
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Open Interest Quantity
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.open_interest_quantity = {}

-- Size: Open Interest Quantity
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.open_interest_quantity.size = 4

-- Display: Open Interest Quantity
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.open_interest_quantity.display = function(value)
  return "Open Interest Quantity: "..value
end

-- Dissect: Open Interest Quantity
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.open_interest_quantity.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.open_interest_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.open_interest_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.open_interest_quantity, range, value, display)

  return offset + length, value
end

-- Option Expiration Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_expiration_type = {}

-- Size: Option Expiration Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_expiration_type.size = 1

-- Display: Option Expiration Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_expiration_type.display = function(value)
  if value == "A" then
    return "Option Expiration Type: American Style (A)"
  end
  if value == "E" then
    return "Option Expiration Type: European Style (E)"
  end
  if value == "N" then
    return "Option Expiration Type: Na When (N)"
  end

  return "Option Expiration Type: Unknown("..value..")"
end

-- Dissect: Option Expiration Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_expiration_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_expiration_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_expiration_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.option_expiration_type, range, value, display)

  return offset + length, value
end

-- Option Strike Currency
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_strike_currency = {}

-- Size: Option Strike Currency
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_strike_currency.size = 1

-- Display: Option Strike Currency
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_strike_currency.display = function(value)
  if value == "U" then
    return "Option Strike Currency: Us Dollar (U)"
  end
  if value == "N" then
    return "Option Strike Currency: Na When (N)"
  end

  return "Option Strike Currency: Unknown("..value..")"
end

-- Dissect: Option Strike Currency
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_strike_currency.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_strike_currency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_strike_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.option_strike_currency, range, value, display)

  return offset + length, value
end

-- Option Strike Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_strike_price = {}

-- Size: Option Strike Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_strike_price.size = 8

-- Display: Option Strike Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_strike_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xA763FFFF, 0x0DE0B6B3) then
    return "Option Strike Price: No Value"
  end

  return "Option Strike Price: "..value
end

-- Translate: Option Strike Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_strike_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xA763FFFF, 0x0DE0B6B3) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Option Strike Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_strike_price.translate(raw)
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_strike_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.option_strike_price, range, value, display)

  return offset + length, value
end

-- Option Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_type = {}

-- Size: Option Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_type.size = 1

-- Display: Option Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_type.display = function(value)
  if value == "C" then
    return "Option Type: Call (C)"
  end
  if value == "P" then
    return "Option Type: Put (P)"
  end
  if value == "N" then
    return "Option Type: Na When (N)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.option_type, range, value, display)

  return offset + length, value
end

-- Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.price = {}

-- Size: Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.price.size = 8

-- Display: Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.price.translate(raw)
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.price, range, value, display)

  return offset + length, value
end

-- Product Group Code Alphanumeric 13
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.product_group_code_alphanumeric_13 = {}

-- Size: Product Group Code Alphanumeric 13
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.product_group_code_alphanumeric_13.size = 13

-- Display: Product Group Code Alphanumeric 13
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.product_group_code_alphanumeric_13.display = function(value)
  return "Product Group Code Alphanumeric 13: "..value
end

-- Dissect: Product Group Code Alphanumeric 13
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.product_group_code_alphanumeric_13.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.product_group_code_alphanumeric_13.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.product_group_code_alphanumeric_13.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.product_group_code_alphanumeric_13, range, value, display)

  return offset + length, value
end

-- Product Group Code Alphanumeric 6
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.product_group_code_alphanumeric_6 = {}

-- Size: Product Group Code Alphanumeric 6
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.product_group_code_alphanumeric_6.size = 6

-- Display: Product Group Code Alphanumeric 6
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.product_group_code_alphanumeric_6.display = function(value)
  return "Product Group Code Alphanumeric 6: "..value
end

-- Dissect: Product Group Code Alphanumeric 6
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.product_group_code_alphanumeric_6.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.product_group_code_alphanumeric_6.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.product_group_code_alphanumeric_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.product_group_code_alphanumeric_6, range, value, display)

  return offset + length, value
end

-- Refresh Message Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_message_type = {}

-- Size: Refresh Message Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_message_type.size = 1

-- Display: Refresh Message Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_message_type.display = function(value)
  if value == "I" then
    return "Refresh Message Type: Simple Complex Instrument Definition Refresh (I)"
  end
  if value == "T" then
    return "Refresh Message Type: Instrument Trading Status Refresh (T)"
  end
  if value == "S" then
    return "Refresh Message Type: System State Refresh (S)"
  end
  if value == "Q" then
    return "Refresh Message Type: Top Of Market Refresh (Q)"
  end

  return "Refresh Message Type: Unknown("..value..")"
end

-- Dissect: Refresh Message Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.refresh_message_type, range, value, display)

  return offset + length, value
end

-- Refresh Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_type = {}

-- Size: Refresh Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_type.size = 1

-- Display: Refresh Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_type.display = function(value)
  if value == "R" then
    return "Refresh Type: Refresh Request (R)"
  end
  if value == "r" then
    return "Refresh Type: Refresh Response (r)"
  end
  if value == "E" then
    return "Refresh Type: End Of Request (E)"
  end

  return "Refresh Type: Unknown("..value..")"
end

-- Dissect: Refresh Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.refresh_type, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.requested_sequence_number = {}

-- Size: Requested Sequence Number
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.requested_sequence_number.size = 8

-- Display: Requested Sequence Number
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.requested_session = {}

-- Size: Requested Session
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.requested_session.size = 1

-- Display: Requested Session
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.requested_session.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved 16
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_16 = {}

-- Size: Reserved 16
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_16.size = 16

-- Display: Reserved 16
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_16.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Reserved 3
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_3 = {}

-- Size: Reserved 3
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_3.size = 3

-- Display: Reserved 3
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Reserved 32
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_32 = {}

-- Size: Reserved 32
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_32.size = 32

-- Display: Reserved 32
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_32.display = function(value)
  return "Reserved 32: "..value
end

-- Dissect: Reserved 32
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_32.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_32.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.reserved_32, range, value, display)

  return offset + length, value
end

-- Reserved 4
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_4 = {}

-- Size: Reserved 4
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_4.size = 4

-- Display: Reserved 4
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Reserved 6
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_6 = {}

-- Size: Reserved 6
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_6.size = 6

-- Display: Reserved 6
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_6.display = function(value)
  return "Reserved 6: "..value
end

-- Dissect: Reserved 6
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_6.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_6.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.reserved_6, range, value, display)

  return offset + length, value
end

-- Reserved 64
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_64 = {}

-- Size: Reserved 64
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_64.size = 64

-- Display: Reserved 64
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_64.display = function(value)
  return "Reserved 64: "..value
end

-- Dissect: Reserved 64
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_64.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_64.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_64.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.reserved_64, range, value, display)

  return offset + length, value
end

-- Sequence Number
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sequence_number = {}

-- Size: Sequence Number
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sequence_number.size = 8

-- Display: Sequence Number
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sesm Packet Length
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_packet_length = {}

-- Size: Sesm Packet Length
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_packet_length.size = 2

-- Display: Sesm Packet Length
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_packet_length.display = function(value)
  return "Sesm Packet Length: "..value
end

-- Dissect: Sesm Packet Length
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.sesm_packet_length, range, value, display)

  return offset + length, value
end

-- Sesm Packet Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_packet_type = {}

-- Size: Sesm Packet Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_packet_type.size = 1

-- Display: Sesm Packet Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_packet_type.display = function(value)
  if value == "S" then
    return "Sesm Packet Type: Sequenced Data Packet (S)"
  end
  if value == "U" then
    return "Sesm Packet Type: Unsequenced Data Packet (U)"
  end
  if value == "L" then
    return "Sesm Packet Type: Login Request (L)"
  end
  if value == "R" then
    return "Sesm Packet Type: Login Response (R)"
  end
  if value == "C" then
    return "Sesm Packet Type: Synchronization Complete (C)"
  end
  if value == "A" then
    return "Sesm Packet Type: Retransmission Request (A)"
  end
  if value == "X" then
    return "Sesm Packet Type: Logout Request (X)"
  end
  if value == "G" then
    return "Sesm Packet Type: Goodbye Packet (G)"
  end
  if value == "E" then
    return "Sesm Packet Type: End Of Session (E)"
  end
  if value == "0" then
    return "Sesm Packet Type: Server Heartbeat (0)"
  end
  if value == "1" then
    return "Sesm Packet Type: Client Heartbeat (1)"
  end

  return "Sesm Packet Type: Unknown("..value..")"
end

-- Dissect: Sesm Packet Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.sesm_packet_type, range, value, display)

  return offset + length, value
end

-- Sesm Version
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_version = {}

-- Size: Sesm Version
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_version.size = 5

-- Display: Sesm Version
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_version.display = function(value)
  return "Sesm Version: "..value
end

-- Dissect: Sesm Version
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.sesm_version, range, value, display)

  return offset + length, value
end

-- Session Id
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.session_id = {}

-- Size: Session Id
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.session_id.size = 1

-- Display: Session Id
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.session_id, range, value, display)

  return offset + length, value
end

-- Settlement Currency
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_currency = {}

-- Size: Settlement Currency
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_currency.size = 1

-- Display: Settlement Currency
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_currency.display = function(value)
  if value == "U" then
    return "Settlement Currency: Usd (U)"
  end

  return "Settlement Currency: Unknown("..value..")"
end

-- Dissect: Settlement Currency
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_currency.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_currency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.settlement_currency, range, value, display)

  return offset + length, value
end

-- Settlement Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_price = {}

-- Size: Settlement Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_price.size = 8

-- Display: Settlement Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_price.display = function(value)
  return "Settlement Price: "..value
end

-- Translate: Settlement Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Settlement Price
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_price.translate(raw)
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Settlement Price Type Calc Method
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_price_type_calc_method = {}

-- Size: Settlement Price Type Calc Method
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_price_type_calc_method.size = 1

-- Display: Settlement Price Type Calc Method
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_price_type_calc_method.display = function(value)
  if value == "A" then
    return "Settlement Price Type Calc Method: Actual (A)"
  end
  if value == "T" then
    return "Settlement Price Type Calc Method: Theoretical (T)"
  end

  return "Settlement Price Type Calc Method: Unknown("..value..")"
end

-- Dissect: Settlement Price Type Calc Method
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_price_type_calc_method.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_price_type_calc_method.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_price_type_calc_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.settlement_price_type_calc_method, range, value, display)

  return offset + length, value
end

-- Size
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.size = {}

-- Size: Size
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.size.size = 4

-- Display: Size
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.size.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.size, range, value, display)

  return offset + length, value
end

-- Spread Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.spread_type = {}

-- Size: Spread Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.spread_type.size = 1

-- Display: Spread Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.spread_type.display = function(value)
  if value == "S" then
    return "Spread Type: Standard (S)"
  end
  if value == "E" then
    return "Spread Type: Equity (E)"
  end
  if value == "B" then
    return "Spread Type: Butterfly (B)"
  end
  if value == "C" then
    return "Spread Type: Cross (C)"
  end

  return "Spread Type: Unknown("..value..")"
end

-- Dissect: Spread Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.spread_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.spread_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.spread_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.spread_type, range, value, display)

  return offset + length, value
end

-- Start Sequence Number
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.start_sequence_number = {}

-- Size: Start Sequence Number
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.start_sequence_number.size = 8

-- Display: Start Sequence Number
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.start_sequence_number.display = function(value)
  return "Start Sequence Number: "..value
end

-- Dissect: Start Sequence Number
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.start_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.start_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.start_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.start_sequence_number, range, value, display)

  return offset + length, value
end

-- System Status
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.system_status = {}

-- Size: System Status
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.system_status.size = 1

-- Display: System Status
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.system_status.display = function(value)
  if value == "S" then
    return "System Status: Start Of (S)"
  end
  if value == "C" then
    return "System Status: End Of (C)"
  end
  if value == "1" then
    return "System Status: Start Of (1)"
  end
  if value == "2" then
    return "System Status: End Of (2)"
  end

  return "System Status: Unknown("..value..")"
end

-- Dissect: System Status
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.system_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.system_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.system_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.system_status, range, value, display)

  return offset + length, value
end

-- Tick
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.tick = {}

-- Size: Tick
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.tick.size = 8

-- Display: Tick
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.tick.display = function(value)
  return "Tick: "..value
end

-- Translate: Tick
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.tick.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Tick
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.tick.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.tick.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.tick.translate(raw)
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.tick.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.tick, range, value, display)

  return offset + length, value
end

-- Timestamp
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.timestamp = {}

-- Size: Timestamp
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.timestamp.size = 8

-- Display: Timestamp
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.timestamp, range, value, display)

  return offset + length, value
end

-- To M Version
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.to_m_version = {}

-- Size: To M Version
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.to_m_version.size = 8

-- Display: To M Version
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.to_m_version.display = function(value)
  return "To M Version: "..value
end

-- Dissect: To M Version
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.to_m_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.to_m_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.to_m_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.to_m_version, range, value, display)

  return offset + length, value
end

-- Total Volume
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.total_volume = {}

-- Size: Total Volume
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.total_volume.size = 4

-- Display: Total Volume
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.total_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Trade Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_date = {}

-- Size: Trade Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_date.size = 2

-- Display: Trade Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trade Id
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_id = {}

-- Size: Trade Id
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_id.size = 8

-- Display: Trade Id
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_type = {}

-- Size: Trade Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_type.size = 1

-- Display: Trade Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_type.display = function(value)
  if value == "O" then
    return "Trade Type: Outright (O)"
  end
  if value == "S" then
    return "Trade Type: Strategy (S)"
  end
  if value == "M" then
    return "Trade Type: Strategy (M)"
  end
  if value == "C" then
    return "Trade Type: Complex (C)"
  end
  if value == "L" then
    return "Trade Type: Complex (L)"
  end
  if value == "A" then
    return "Trade Type: Adjusted Late (A)"
  end

  return "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Trading Collar Variation
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_collar_variation = {}

-- Size: Trading Collar Variation
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_collar_variation.size = 8

-- Display: Trading Collar Variation
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_collar_variation.display = function(value)
  return "Trading Collar Variation: "..value
end

-- Translate: Trading Collar Variation
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_collar_variation.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Trading Collar Variation
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_collar_variation.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_collar_variation.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_collar_variation.translate(raw)
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_collar_variation.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.trading_collar_variation, range, value, display)

  return offset + length, value
end

-- Trading Collar Variation Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_collar_variation_type = {}

-- Size: Trading Collar Variation Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_collar_variation_type.size = 1

-- Display: Trading Collar Variation Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_collar_variation_type.display = function(value)
  if value == "D" then
    return "Trading Collar Variation Type: Product (D)"
  end
  if value == "P" then
    return "Trading Collar Variation Type: Product (P)"
  end
  if value == "N" then
    return "Trading Collar Variation Type: Not (N)"
  end

  return "Trading Collar Variation Type: Unknown("..value..")"
end

-- Dissect: Trading Collar Variation Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_collar_variation_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_collar_variation_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_collar_variation_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.trading_collar_variation_type, range, value, display)

  return offset + length, value
end

-- Trading Status
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_status = {}

-- Size: Trading Status
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_status.size = 1

-- Display: Trading Status
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_status.display = function(value)
  return "Trading Status: "..value
end

-- Dissect: Trading Status
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Underlying Asset Alphanumeric 4
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_asset_alphanumeric_4 = {}

-- Size: Underlying Asset Alphanumeric 4
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_asset_alphanumeric_4.size = 4

-- Display: Underlying Asset Alphanumeric 4
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_asset_alphanumeric_4.display = function(value)
  return "Underlying Asset Alphanumeric 4: "..value
end

-- Dissect: Underlying Asset Alphanumeric 4
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_asset_alphanumeric_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_asset_alphanumeric_4.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_asset_alphanumeric_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.underlying_asset_alphanumeric_4, range, value, display)

  return offset + length, value
end

-- Underlying Asset Alphanumeric 9
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_asset_alphanumeric_9 = {}

-- Size: Underlying Asset Alphanumeric 9
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_asset_alphanumeric_9.size = 9

-- Display: Underlying Asset Alphanumeric 9
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_asset_alphanumeric_9.display = function(value)
  return "Underlying Asset Alphanumeric 9: "..value
end

-- Dissect: Underlying Asset Alphanumeric 9
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_asset_alphanumeric_9.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_asset_alphanumeric_9.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_asset_alphanumeric_9.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.underlying_asset_alphanumeric_9, range, value, display)

  return offset + length, value
end

-- Underlying Asset Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_asset_type = {}

-- Size: Underlying Asset Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_asset_type.size = 1

-- Display: Underlying Asset Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_asset_type.display = function(value)
  if value == "E" then
    return "Underlying Asset Type: Equity (E)"
  end
  if value == "A" then
    return "Underlying Asset Type: Commodity Agriculture (A)"
  end
  if value == "F" then
    return "Underlying Asset Type: Futures (F)"
  end
  if value == "N" then
    return "Underlying Asset Type: Not (N)"
  end

  return "Underlying Asset Type: Unknown("..value..")"
end

-- Dissect: Underlying Asset Type
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_asset_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_asset_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_asset_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.underlying_asset_type, range, value, display)

  return offset + length, value
end

-- Underlying Future Instrument Id
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_future_instrument_id = {}

-- Size: Underlying Future Instrument Id
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_future_instrument_id.size = 4

-- Display: Underlying Future Instrument Id
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_future_instrument_id.display = function(value)
  return "Underlying Future Instrument Id: "..value
end

-- Dissect: Underlying Future Instrument Id
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_future_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_future_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_future_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.underlying_future_instrument_id, range, value, display)

  return offset + length, value
end

-- Unit Of Measure
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unit_of_measure = {}

-- Size: Unit Of Measure
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unit_of_measure.size = 5

-- Display: Unit Of Measure
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unit_of_measure.display = function(value)
  if value == "BU" then
    return "Unit Of Measure: Bushels (BU)"
  end
  if value == "USD" then
    return "Unit Of Measure: Usd (USD)"
  end
  if value == "FUT" then
    return "Unit Of Measure: Futures (FUT)"
  end
  if value == "ST" then
    return "Unit Of Measure: Short (ST)"
  end
  if value == "LB" then
    return "Unit Of Measure: Pounds (LB)"
  end

  return "Unit Of Measure: Unknown("..value..")"
end

-- Dissect: Unit Of Measure
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unit_of_measure.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unit_of_measure.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unit_of_measure.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.unit_of_measure, range, value, display)

  return offset + length, value
end

-- Unit Of Measure Quantity
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unit_of_measure_quantity = {}

-- Size: Unit Of Measure Quantity
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unit_of_measure_quantity.size = 4

-- Display: Unit Of Measure Quantity
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unit_of_measure_quantity.display = function(value)
  return "Unit Of Measure Quantity: "..value
end

-- Dissect: Unit Of Measure Quantity
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unit_of_measure_quantity.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unit_of_measure_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unit_of_measure_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.unit_of_measure_quantity, range, value, display)

  return offset + length, value
end

-- Username
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.username = {}

-- Size: Username
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.username.size = 5

-- Display: Username
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.username.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.username, range, value, display)

  return offset + length, value
end

-- Valuation Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.valuation_date = {}

-- Size: Valuation Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.valuation_date.size = 2

-- Display: Valuation Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.valuation_date.display = function(value)
  return "Valuation Date: "..value
end

-- Dissect: Valuation Date
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.valuation_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.valuation_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.valuation_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.valuation_date, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Miax OnyxFutures TopOfMarketRetransmission SesM 1.3.a
-----------------------------------------------------------------------

-- Client Heartbeat
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.client_heartbeat = {}

-- Display: Client Heartbeat
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.server_heartbeat = {}

-- Display: Server Heartbeat
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- End Of Session
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.end_of_session = {}

-- Display: End Of Session
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Goodbye Packet
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.goodbye_packet = {}

-- Calculate size of: Goodbye Packet
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.goodbye_packet.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.logout_reason.size

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Goodbye Packet
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.goodbye_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Goodbye Packet
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.goodbye_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = sesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Goodbye Packet
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.goodbye_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.goodbye_packet, buffer(offset, 0))
    local index = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.goodbye_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.goodbye_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.goodbye_packet.fields(buffer, offset, packet, parent)
  end
end

-- Logout Request
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.logout_request = {}

-- Calculate size of: Logout Request
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.logout_request.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.logout_reason.size

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Logout Request
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.logout_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Request
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.logout_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = sesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Logout Request
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.logout_request.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.logout_request, buffer(offset, 0))
    local index = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.logout_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.logout_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.logout_request.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.retransmission_request = {}

-- Size: Retransmission Request
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.retransmission_request.size =
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.start_sequence_number.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.end_sequence_number.size

-- Display: Retransmission Request
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.retransmission_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.retransmission_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, start_sequence_number = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.start_sequence_number.dissect(buffer, index, packet, parent)

  -- End Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, end_sequence_number = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.end_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.retransmission_request.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.retransmission_request, buffer(offset, 0))
    local index = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.retransmission_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.retransmission_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.retransmission_request.fields(buffer, offset, packet, parent)
  end
end

-- Synchronization Complete
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.synchronization_complete = {}

-- Display: Synchronization Complete
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.synchronization_complete.display = function(packet, parent, length)
  return "Synchronization Complete"
end


-- Dissect: Synchronization Complete
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.synchronization_complete.dissect = function(buffer, offset, packet, parent)
  local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.synchronization_complete.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Login Response
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.login_response = {}

-- Size: Login Response
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.login_response.size =
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.login_status.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.session_id.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.highest_sequence_number.size

-- Display: Login Response
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.login_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.login_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Status: 1 Byte Ascii String Enum with 7 values
  index, login_status = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.login_status.dissect(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.session_id.dissect(buffer, index, packet, parent)

  -- Highest Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, highest_sequence_number = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.highest_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.login_response.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.login_response, buffer(offset, 0))
    local index = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.login_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.login_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.login_response.fields(buffer, offset, packet, parent)
  end
end

-- Login Request
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.login_request = {}

-- Size: Login Request
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.login_request.size =
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_version.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.username.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.computer_id.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.application_protocol.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.requested_session.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.requested_sequence_number.size

-- Display: Login Request
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.login_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.login_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sesm Version: 5 Byte Ascii String
  index, sesm_version = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_version.dissect(buffer, index, packet, parent)

  -- Username: 5 Byte Ascii String
  index, username = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.username.dissect(buffer, index, packet, parent)

  -- Computer Id: 8 Byte Ascii String
  index, computer_id = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.computer_id.dissect(buffer, index, packet, parent)

  -- Application Protocol: 8 Byte Ascii String
  index, application_protocol = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.application_protocol.dissect(buffer, index, packet, parent)

  -- Requested Session: 1 Byte Unsigned Fixed Width Integer
  index, requested_session = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, requested_sequence_number = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.login_request.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.login_request, buffer(offset, 0))
    local index = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.login_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.login_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.login_request.fields(buffer, offset, packet, parent)
  end
end

-- End Of Refresh
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.end_of_refresh = {}

-- Size: End Of Refresh
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.end_of_refresh.size =
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_message_type.size

-- Display: End Of Refresh
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.end_of_refresh.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Refresh
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.end_of_refresh.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Refresh Message Type: 1 Byte Ascii String Enum with 4 values
  index, refresh_message_type = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Refresh
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.end_of_refresh.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.end_of_refresh, buffer(offset, 0))
    local index = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.end_of_refresh.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.end_of_refresh.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.end_of_refresh.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_cancel_message = {}

-- Size: Trade Cancel Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_cancel_message.size =
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.timestamp.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_date.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_id.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.correction_number.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.price.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.size.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_type.size

-- Display: Trade Cancel Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_date.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.correction_number.dissect(buffer, index, packet, parent)

  -- Price: Price9S
  index, price = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.size.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alphanumeric
  index, instrument_type = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.trade_cancel_message, buffer(offset, 0))
    local index = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Sale Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_sale_message = {}

-- Size: Last Sale Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_sale_message.size =
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.timestamp.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_date.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_id.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.correction_number.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.price.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.size.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_type.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.complex_trade_id.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_type.size

-- Display: Last Sale Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_sale_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Sale Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_sale_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_date.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.correction_number.dissect(buffer, index, packet, parent)

  -- Price: Price9S
  index, price = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.size.dissect(buffer, index, packet, parent)

  -- Trade Type: Alphanumeric
  index, trade_type = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_type.dissect(buffer, index, packet, parent)

  -- Complex Trade Id: BinaryU
  index, complex_trade_id = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.complex_trade_id.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alphanumeric
  index, instrument_type = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Sale Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_sale_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.last_sale_message, buffer(offset, 0))
    local index = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_sale_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_sale_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_sale_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Bid And Offer Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.best_bid_and_offer_message = {}

-- Size: Best Bid And Offer Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.best_bid_and_offer_message.size =
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.timestamp.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbb_price.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbb_size.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbo_price.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbo_size.size

-- Display: Best Bid And Offer Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.best_bid_and_offer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid And Offer Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.best_bid_and_offer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id.dissect(buffer, index, packet, parent)

  -- Mbb Price: Price9S
  index, mbb_price = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbb_price.dissect(buffer, index, packet, parent)

  -- Mbb Size: BinaryU
  index, mbb_size = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbb_size.dissect(buffer, index, packet, parent)

  -- Mbo Price: Price9S
  index, mbo_price = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbo_price.dissect(buffer, index, packet, parent)

  -- Mbo Size: BinaryU
  index, mbo_size = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.mbo_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid And Offer Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.best_bid_and_offer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.best_bid_and_offer_message, buffer(offset, 0))
    local index = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.best_bid_and_offer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.best_bid_and_offer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.best_bid_and_offer_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Trading Status Notification Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_trading_status_notification_message = {}

-- Size: Instrument Trading Status Notification Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_trading_status_notification_message.size =
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.timestamp.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_status.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.market_state.size

-- Display: Instrument Trading Status Notification Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_trading_status_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Trading Status Notification Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_trading_status_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id.dissect(buffer, index, packet, parent)

  -- Trading Status: BinaryU
  index, trading_status = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_status.dissect(buffer, index, packet, parent)

  -- Market State: BinaryU
  index, market_state = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.market_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Trading Status Notification Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_trading_status_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.instrument_trading_status_notification_message, buffer(offset, 0))
    local index = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_trading_status_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_trading_status_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_trading_status_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- System State Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.system_state_message = {}

-- Size: System State Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.system_state_message.size =
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.timestamp.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.to_m_version.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.session_id.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.system_status.size

-- Display: System State Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.system_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System State Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.system_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- To M Version: Alphanumeric
  index, to_m_version = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.to_m_version.dissect(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.session_id.dissect(buffer, index, packet, parent)

  -- System Status: Alphanumeric
  index, system_status = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.system_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.system_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.system_state_message, buffer(offset, 0))
    local index = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.system_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.system_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.system_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Deprecated Instrument Leg
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.deprecated_instrument_leg = {}

-- Size: Deprecated Instrument Leg
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.deprecated_instrument_leg.size =
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.leg_ratio_and_side.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_4.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.maturity_date.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_6.size

-- Display: Deprecated Instrument Leg
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.deprecated_instrument_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Deprecated Instrument Leg
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.deprecated_instrument_leg.fields = function(buffer, offset, packet, parent, deprecated_instrument_leg_index)
  local index = offset

  -- Implicit Deprecated Instrument Leg Index
  if deprecated_instrument_leg_index ~= nil and show.indexes then
    local iteration = parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.deprecated_instrument_leg_index, deprecated_instrument_leg_index)
    iteration:set_generated()
  end

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id.dissect(buffer, index, packet, parent)

  -- Leg Ratio And Side: BinaryS
  index, leg_ratio_and_side = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.leg_ratio_and_side.dissect(buffer, index, packet, parent)

  -- Reserved 4: BinaryU
  index, reserved_4 = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_4.dissect(buffer, index, packet, parent)

  -- Maturity Date: Date
  index, maturity_date = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.maturity_date.dissect(buffer, index, packet, parent)

  -- Reserved 6: BinaryU
  index, reserved_6 = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Deprecated Instrument Leg
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.deprecated_instrument_leg.dissect = function(buffer, offset, packet, parent, deprecated_instrument_leg_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.deprecated_instrument_leg, buffer(offset, 0))
    local index = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.deprecated_instrument_leg.fields(buffer, offset, packet, parent, deprecated_instrument_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.deprecated_instrument_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.deprecated_instrument_leg.fields(buffer, offset, packet, parent, deprecated_instrument_leg_index)
  end
end

-- Complex Instrument Definition Deprecated Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.complex_instrument_definition_deprecated_message = {}

-- Calculate size of: Complex Instrument Definition Deprecated Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.complex_instrument_definition_deprecated_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.timestamp.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id_formerly_known_as_strategy_id.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_asset_type.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_asset_alphanumeric_4.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.product_group_code_alphanumeric_6.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.spread_type.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.exchange.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id_source.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_type.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.currency.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_currency.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.match_algorithm.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.minimum_size.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.maximum_size.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.tick.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unit_of_measure.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unit_of_measure_quantity.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_collar_variation_type.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_collar_variation.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_16.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.number_of_legs.size

  -- Calculate field size from count
  local deprecated_instrument_leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + deprecated_instrument_leg_count * 20

  return index
end

-- Display: Complex Instrument Definition Deprecated Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.complex_instrument_definition_deprecated_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Instrument Definition Deprecated Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.complex_instrument_definition_deprecated_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id Formerly Known As Strategy Id: BinaryU
  index, instrument_id_formerly_known_as_strategy_id = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id_formerly_known_as_strategy_id.dissect(buffer, index, packet, parent)

  -- Underlying Asset Type: Alphanumeric
  index, underlying_asset_type = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_asset_type.dissect(buffer, index, packet, parent)

  -- Underlying Asset Alphanumeric 4: Alphanumeric
  index, underlying_asset_alphanumeric_4 = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_asset_alphanumeric_4.dissect(buffer, index, packet, parent)

  -- Product Group Code Alphanumeric 6: Alphanumeric
  index, product_group_code_alphanumeric_6 = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.product_group_code_alphanumeric_6.dissect(buffer, index, packet, parent)

  -- Spread Type: Alphanumeric
  index, spread_type = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.spread_type.dissect(buffer, index, packet, parent)

  -- Exchange: Alphanumeric
  index, exchange = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.exchange.dissect(buffer, index, packet, parent)

  -- Instrument Id Source: Alphanumeric
  index, instrument_id_source = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id_source.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alphanumeric
  index, instrument_type = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_type.dissect(buffer, index, packet, parent)

  -- Currency: Alphanumeric
  index, currency = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.currency.dissect(buffer, index, packet, parent)

  -- Settlement Currency: Alphanumeric
  index, settlement_currency = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_currency.dissect(buffer, index, packet, parent)

  -- Match Algorithm: Alphanumeric
  index, match_algorithm = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.match_algorithm.dissect(buffer, index, packet, parent)

  -- Minimum Size: BinaryU
  index, minimum_size = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.minimum_size.dissect(buffer, index, packet, parent)

  -- Maximum Size: BinaryU
  index, maximum_size = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.maximum_size.dissect(buffer, index, packet, parent)

  -- Tick: Price9S
  index, tick = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.tick.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: Alphanumeric
  index, unit_of_measure = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Unit Of Measure Quantity: BinaryU
  index, unit_of_measure_quantity = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unit_of_measure_quantity.dissect(buffer, index, packet, parent)

  -- Trading Collar Variation Type: Alphanumeric
  index, trading_collar_variation_type = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_collar_variation_type.dissect(buffer, index, packet, parent)

  -- Trading Collar Variation: Price9S
  index, trading_collar_variation = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_collar_variation.dissect(buffer, index, packet, parent)

  -- Reserved 16: BinaryU
  index, reserved_16 = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_16.dissect(buffer, index, packet, parent)

  -- Number Of Legs: BinaryU
  index, number_of_legs = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Deprecated Instrument Leg
  for deprecated_instrument_leg_index = 1, number_of_legs do
    index, deprecated_instrument_leg = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.deprecated_instrument_leg.dissect(buffer, index, packet, parent, deprecated_instrument_leg_index)
  end

  return index
end

-- Dissect: Complex Instrument Definition Deprecated Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.complex_instrument_definition_deprecated_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.complex_instrument_definition_deprecated_message, buffer(offset, 0))
    local index = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.complex_instrument_definition_deprecated_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.complex_instrument_definition_deprecated_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.complex_instrument_definition_deprecated_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Leg
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_leg = {}

-- Size: Instrument Leg
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_leg.size =
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.leg_ratio_and_side.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.maturity_date.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_32.size

-- Display: Instrument Leg
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Leg
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_leg.fields = function(buffer, offset, packet, parent, instrument_leg_index)
  local index = offset

  -- Implicit Instrument Leg Index
  if instrument_leg_index ~= nil and show.indexes then
    local iteration = parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.instrument_leg_index, instrument_leg_index)
    iteration:set_generated()
  end

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id.dissect(buffer, index, packet, parent)

  -- Leg Ratio And Side: BinaryS
  index, leg_ratio_and_side = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.leg_ratio_and_side.dissect(buffer, index, packet, parent)

  -- Maturity Date: Date
  index, maturity_date = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.maturity_date.dissect(buffer, index, packet, parent)

  -- Reserved 32: BinaryU
  index, reserved_32 = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_32.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Leg
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_leg.dissect = function(buffer, offset, packet, parent, instrument_leg_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.instrument_leg, buffer(offset, 0))
    local index = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_leg.fields(buffer, offset, packet, parent, instrument_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_leg.fields(buffer, offset, packet, parent, instrument_leg_index)
  end
end

-- Complex Instrument Definition Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.complex_instrument_definition_message = {}

-- Calculate size of: Complex Instrument Definition Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.complex_instrument_definition_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.timestamp.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id_formerly_known_as_strategy_id.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_asset_type.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_asset_alphanumeric_9.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.product_group_code_alphanumeric_13.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.spread_type.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.exchange.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id_source.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_type.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.currency.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_currency.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.match_algorithm.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.minimum_size.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.maximum_size.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.tick.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unit_of_measure.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unit_of_measure_quantity.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_price.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_price_type_calc_method.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_collar_variation_type.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_collar_variation.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.listing_status.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.first_trade_date.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_64.size

  index = index + miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.number_of_legs.size

  -- Calculate field size from count
  local instrument_leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + instrument_leg_count * 42

  return index
end

-- Display: Complex Instrument Definition Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.complex_instrument_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Instrument Definition Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.complex_instrument_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id Formerly Known As Strategy Id: BinaryU
  index, instrument_id_formerly_known_as_strategy_id = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id_formerly_known_as_strategy_id.dissect(buffer, index, packet, parent)

  -- Underlying Asset Type: Alphanumeric
  index, underlying_asset_type = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_asset_type.dissect(buffer, index, packet, parent)

  -- Underlying Asset Alphanumeric 9: Alphanumeric
  index, underlying_asset_alphanumeric_9 = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_asset_alphanumeric_9.dissect(buffer, index, packet, parent)

  -- Product Group Code Alphanumeric 13: Alphanumeric
  index, product_group_code_alphanumeric_13 = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.product_group_code_alphanumeric_13.dissect(buffer, index, packet, parent)

  -- Spread Type: Alphanumeric
  index, spread_type = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.spread_type.dissect(buffer, index, packet, parent)

  -- Exchange: Alphanumeric
  index, exchange = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.exchange.dissect(buffer, index, packet, parent)

  -- Instrument Id Source: Alphanumeric
  index, instrument_id_source = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id_source.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alphanumeric
  index, instrument_type = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_type.dissect(buffer, index, packet, parent)

  -- Currency: Alphanumeric
  index, currency = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.currency.dissect(buffer, index, packet, parent)

  -- Settlement Currency: Alphanumeric
  index, settlement_currency = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_currency.dissect(buffer, index, packet, parent)

  -- Match Algorithm: Alphanumeric
  index, match_algorithm = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.match_algorithm.dissect(buffer, index, packet, parent)

  -- Minimum Size: BinaryU
  index, minimum_size = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.minimum_size.dissect(buffer, index, packet, parent)

  -- Maximum Size: BinaryU
  index, maximum_size = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.maximum_size.dissect(buffer, index, packet, parent)

  -- Tick: Price9S
  index, tick = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.tick.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: Alphanumeric
  index, unit_of_measure = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Unit Of Measure Quantity: BinaryU
  index, unit_of_measure_quantity = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unit_of_measure_quantity.dissect(buffer, index, packet, parent)

  -- Settlement Price: Price9S
  index, settlement_price = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_price.dissect(buffer, index, packet, parent)

  -- Settlement Price Type Calc Method: Alphanumeric
  index, settlement_price_type_calc_method = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_price_type_calc_method.dissect(buffer, index, packet, parent)

  -- Trading Collar Variation Type: Alphanumeric
  index, trading_collar_variation_type = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_collar_variation_type.dissect(buffer, index, packet, parent)

  -- Trading Collar Variation: Price9S
  index, trading_collar_variation = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_collar_variation.dissect(buffer, index, packet, parent)

  -- Listing Status: Alphanumeric
  index, listing_status = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.listing_status.dissect(buffer, index, packet, parent)

  -- First Trade Date: Date
  index, first_trade_date = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.first_trade_date.dissect(buffer, index, packet, parent)

  -- Reserved 64: BinaryU
  index, reserved_64 = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_64.dissect(buffer, index, packet, parent)

  -- Number Of Legs: BinaryU
  index, number_of_legs = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Instrument Leg
  for instrument_leg_index = 1, number_of_legs do
    index, instrument_leg = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_leg.dissect(buffer, index, packet, parent, instrument_leg_index)
  end

  return index
end

-- Dissect: Complex Instrument Definition Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.complex_instrument_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.complex_instrument_definition_message, buffer(offset, 0))
    local index = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.complex_instrument_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.complex_instrument_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.complex_instrument_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Instrument Definition Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.simple_instrument_definition_message = {}

-- Size: Simple Instrument Definition Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.simple_instrument_definition_message.size =
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.timestamp.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_asset_type.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_asset_alphanumeric_4.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.product_group_code_alphanumeric_6.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.exchange.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id_source.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_type.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_listing_status.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_3.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.currency.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_currency.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.match_algorithm.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.minimum_size.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.maximum_size.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.tick.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unit_of_measure.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unit_of_measure_quantity.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_price.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_price_type_calc_method.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.total_volume.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.open_interest_quantity.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.high_limit_price.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.low_limit_price.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_collar_variation_type.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_collar_variation.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.contract_date.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.maturity_date.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.valuation_date.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.first_trade_date.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_trade_date.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.first_notice_date.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_notice_date.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.first_delivery_date.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_delivery_date.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_strike_price.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_strike_currency.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_type.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_expiration_type.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_future_instrument_id.size

-- Display: Simple Instrument Definition Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.simple_instrument_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Instrument Definition Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.simple_instrument_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id.dissect(buffer, index, packet, parent)

  -- Underlying Asset Type: Alphanumeric
  index, underlying_asset_type = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_asset_type.dissect(buffer, index, packet, parent)

  -- Underlying Asset Alphanumeric 4: Alphanumeric
  index, underlying_asset_alphanumeric_4 = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_asset_alphanumeric_4.dissect(buffer, index, packet, parent)

  -- Product Group Code Alphanumeric 6: Alphanumeric
  index, product_group_code_alphanumeric_6 = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.product_group_code_alphanumeric_6.dissect(buffer, index, packet, parent)

  -- Exchange: Alphanumeric
  index, exchange = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.exchange.dissect(buffer, index, packet, parent)

  -- Instrument Id Source: Alphanumeric
  index, instrument_id_source = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_id_source.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alphanumeric
  index, instrument_type = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_type.dissect(buffer, index, packet, parent)

  -- Instrument Listing Status: Alphanumeric
  index, instrument_listing_status = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_listing_status.dissect(buffer, index, packet, parent)

  -- Reserved 3: BinaryU
  index, reserved_3 = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.reserved_3.dissect(buffer, index, packet, parent)

  -- Currency: Alphanumeric
  index, currency = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.currency.dissect(buffer, index, packet, parent)

  -- Settlement Currency: Alphanumeric
  index, settlement_currency = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_currency.dissect(buffer, index, packet, parent)

  -- Match Algorithm: Alphanumeric
  index, match_algorithm = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.match_algorithm.dissect(buffer, index, packet, parent)

  -- Minimum Size: BinaryU
  index, minimum_size = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.minimum_size.dissect(buffer, index, packet, parent)

  -- Maximum Size: BinaryU
  index, maximum_size = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.maximum_size.dissect(buffer, index, packet, parent)

  -- Tick: Price9S
  index, tick = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.tick.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: Alphanumeric
  index, unit_of_measure = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Unit Of Measure Quantity: BinaryU
  index, unit_of_measure_quantity = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unit_of_measure_quantity.dissect(buffer, index, packet, parent)

  -- Settlement Price: Price9S
  index, settlement_price = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_price.dissect(buffer, index, packet, parent)

  -- Settlement Price Type Calc Method: Alphanumeric
  index, settlement_price_type_calc_method = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.settlement_price_type_calc_method.dissect(buffer, index, packet, parent)

  -- Total Volume: BinaryU
  index, total_volume = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.total_volume.dissect(buffer, index, packet, parent)

  -- Open Interest Quantity: BinaryU
  index, open_interest_quantity = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.open_interest_quantity.dissect(buffer, index, packet, parent)

  -- High Limit Price: Price9S
  index, high_limit_price = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.high_limit_price.dissect(buffer, index, packet, parent)

  -- Low Limit Price: Price9S
  index, low_limit_price = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.low_limit_price.dissect(buffer, index, packet, parent)

  -- Trading Collar Variation Type: Alphanumeric
  index, trading_collar_variation_type = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_collar_variation_type.dissect(buffer, index, packet, parent)

  -- Trading Collar Variation: Price9S
  index, trading_collar_variation = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trading_collar_variation.dissect(buffer, index, packet, parent)

  -- Contract Date: BinaryU
  index, contract_date = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.contract_date.dissect(buffer, index, packet, parent)

  -- Maturity Date: Date
  index, maturity_date = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.maturity_date.dissect(buffer, index, packet, parent)

  -- Valuation Date: Date
  index, valuation_date = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.valuation_date.dissect(buffer, index, packet, parent)

  -- First Trade Date: Date
  index, first_trade_date = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.first_trade_date.dissect(buffer, index, packet, parent)

  -- Last Trade Date: Date
  index, last_trade_date = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_trade_date.dissect(buffer, index, packet, parent)

  -- First Notice Date: Date
  index, first_notice_date = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.first_notice_date.dissect(buffer, index, packet, parent)

  -- Last Notice Date: Date
  index, last_notice_date = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_notice_date.dissect(buffer, index, packet, parent)

  -- First Delivery Date: Date
  index, first_delivery_date = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.first_delivery_date.dissect(buffer, index, packet, parent)

  -- Last Delivery Date: Date
  index, last_delivery_date = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_delivery_date.dissect(buffer, index, packet, parent)

  -- Option Strike Price: Price9S
  index, option_strike_price = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_strike_price.dissect(buffer, index, packet, parent)

  -- Option Strike Currency: Alphanumeric
  index, option_strike_currency = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_strike_currency.dissect(buffer, index, packet, parent)

  -- Option Type: Alphanumeric
  index, option_type = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_type.dissect(buffer, index, packet, parent)

  -- Option Expiration Type: Alphanumeric
  index, option_expiration_type = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.option_expiration_type.dissect(buffer, index, packet, parent)

  -- Underlying Future Instrument Id: BinaryU
  index, underlying_future_instrument_id = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.underlying_future_instrument_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Instrument Definition Message
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.simple_instrument_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.simple_instrument_definition_message, buffer(offset, 0))
    local index = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.simple_instrument_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.simple_instrument_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.simple_instrument_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Data
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.data = {}

-- Dissect: Data
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.data.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Simple Instrument Definition Message
  if message_type == 1 then
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.simple_instrument_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Instrument Definition Message
  if message_type == 17 then
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.complex_instrument_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Instrument Definition Deprecated Message
  if message_type == 2 then
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.complex_instrument_definition_deprecated_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System State Message
  if message_type == 3 then
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.system_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Trading Status Notification Message
  if message_type == 4 then
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.instrument_trading_status_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid And Offer Message
  if message_type == 15 then
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.best_bid_and_offer_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Last Sale Message
  if message_type == 16 then
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.last_sale_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Message
  if message_type == 14 then
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.trade_cancel_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Refresh Response
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_response = {}

-- Read runtime size of: Refresh Response
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 4, 2):le_uint()

  return sesm_packet_length - 2
end

-- Display: Refresh Response
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Response
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_response.fields = function(buffer, offset, packet, parent, size_of_refresh_response)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, message_type = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.message_type.dissect(buffer, index, packet, parent)

  -- Data: Runtime Type with 8 branches
  index = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.data.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Refresh Response
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_response.dissect = function(buffer, offset, packet, parent, size_of_refresh_response)
  local size_of_refresh_response = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_response.size(buffer, offset)
  local index = offset + size_of_refresh_response

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.refresh_response, buffer(offset, 0))
    local current = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_response.fields(buffer, offset, packet, parent, size_of_refresh_response)
    parent:set_len(size_of_refresh_response)
    local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_response.fields(buffer, offset, packet, parent, size_of_refresh_response)

    return index
  end
end

-- Refresh Request
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_request = {}

-- Size: Refresh Request
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_request.size =
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_message_type.size

-- Display: Refresh Request
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Refresh Message Type: 1 Byte Ascii String Enum with 4 values
  index, refresh_message_type = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_request.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.refresh_request, buffer(offset, 0))
    local index = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_request.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Payload
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_payload = {}

-- Dissect: Refresh Payload
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_payload.dissect = function(buffer, offset, packet, parent, refresh_type)
  -- Dissect Refresh Request
  if refresh_type == "R" then
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Response
  if refresh_type == "r" then
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Refresh
  if refresh_type == "E" then
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.end_of_refresh.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  return sesm_packet_length - 1
end

-- Display: Unsequenced Data Packet
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Refresh Type: 1 Byte Ascii String Enum with 3 values
  index, refresh_type = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_type.dissect(buffer, index, packet, parent)

  -- Refresh Payload: Runtime Type with 3 branches
  index = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.refresh_payload.dissect(buffer, index, packet, parent, refresh_type)

  return index
end

-- Dissect: Unsequenced Data Packet
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Sequenced Data Packet
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  return sesm_packet_length - 1
end

-- Display: Sequenced Data Packet
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, message_type = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.message_type.dissect(buffer, index, packet, parent)

  -- Data: Runtime Type with 8 branches
  index = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.data.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Sequenced Data Packet
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.sequenced_data_packet, buffer(offset, 0))
    local current = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Sesm Payload
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_payload = {}

-- Dissect: Sesm Payload
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_payload.dissect = function(buffer, offset, packet, parent, sesm_packet_type)
  -- Dissect Sequenced Data Packet
  if sesm_packet_type == "S" then
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if sesm_packet_type == "U" then
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request
  if sesm_packet_type == "L" then
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.login_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response
  if sesm_packet_type == "R" then
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.login_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Synchronization Complete
  if sesm_packet_type == "C" then
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.synchronization_complete.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request
  if sesm_packet_type == "A" then
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.retransmission_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if sesm_packet_type == "X" then
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.logout_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Goodbye Packet
  if sesm_packet_type == "G" then
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.goodbye_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if sesm_packet_type == "E" then
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.end_of_session.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat
  if sesm_packet_type == "0" then
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.server_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat
  if sesm_packet_type == "1" then
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.client_heartbeat.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sesm Packet Header
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_packet_header = {}

-- Size: Sesm Packet Header
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_packet_header.size =
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_packet_length.size + 
  miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_packet_type.size

-- Display: Sesm Packet Header
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sesm Packet Header
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sesm Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, sesm_packet_length = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_packet_length.dissect(buffer, index, packet, parent)

  -- Sesm Packet Type: 1 Byte Ascii String Enum with 11 values
  index, sesm_packet_type = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sesm Packet Header
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.sesm_packet_header, buffer(offset, 0))
    local index = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Sesm Tcp Packet
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_tcp_packet = {}

-- Display: Sesm Tcp Packet
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sesm Tcp Packet
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset

  -- Sesm Packet Header: Struct of 2 fields
  index, sesm_packet_header = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Type
  local sesm_packet_type = buffer(index - 1, 1):string()

  -- Sesm Payload: Runtime Type with 11 branches
  index = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_payload.dissect(buffer, index, packet, parent, sesm_packet_type)

  return index
end

-- Dissect: Sesm Tcp Packet
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset + size_of_sesm_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.fields.sesm_tcp_packet, buffer(offset, 0))
    local current = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_tcp_packet.fields(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
    parent:set_len(size_of_sesm_tcp_packet)
    local display = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_tcp_packet.fields(buffer, offset, packet, parent, size_of_sesm_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Sesm Tcp Packet
local sesm_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):le_uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.packet = {}

-- Verify required size of Tcp packet
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.packet.requiredsize = function(buffer)
  return buffer:len() >= miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_packet_header.size
end

-- Dissect Packet
miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Sesm Tcp Packet
  local end_of_payload = buffer:len()

  -- Sesm Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_sesm_tcp_packet = sesm_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.sesm_tcp_packet.dissect(buffer, index, packet, parent, size_of_sesm_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      -- Claim the whole buffer: tcp keeps the bytes from desegment_offset for reassembly
      return end_of_payload
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.init()
end

-- Dissector for Miax OnyxFutures TopOfMarketRetransmission SesM 1.3.a
function omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.name

  -- Dissect protocol
  local protocol = parent:add(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a, buffer(), omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.description, "("..buffer:len().." Bytes)")
  return miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Miax OnyxFutures TopOfMarketRetransmission SesM 1.3.a (Tcp)
local function omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a
  omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax OnyxFutures TopOfMarketRetransmission SesM 1.3.a
omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a:register_heuristic("tcp", omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a_tcp_heuristic)

-- Register Miax OnyxFutures TopOfMarketRetransmission SesM 1.3.a for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_miax_onyxfutures_topofmarketretransmission_sesm_v1_3_a)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Miami International Holdings
--   Version: 1.3.a
--   Date: Friday, July 31, 2026
--   Specification: ONYX ToM Feed v1.3a.pdf
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
