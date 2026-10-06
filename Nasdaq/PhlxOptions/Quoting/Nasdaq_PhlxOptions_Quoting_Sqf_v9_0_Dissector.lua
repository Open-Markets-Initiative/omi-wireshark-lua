-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq PhlxOptions Quoting Sqf 9.0 Protocol
local omi_nasdaq_phlxoptions_quoting_sqf_v9_0 = Proto("Omi.Nasdaq.PhlxOptions.Quoting.Sqf.v9.0", "Nasdaq PhlxOptions Quoting Sqf 9.0")

-- Protocol table
local nasdaq_phlxoptions_quoting_sqf_v9_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq PhlxOptions Quoting Sqf 9.0 Fields
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "nasdaq.phlxoptions.quoting.sqf.v9.0.acceptedsequencenumber", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.accepted_session = ProtoField.new("Accepted Session", "nasdaq.phlxoptions.quoting.sqf.v9.0.acceptedsession", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.active_counter_value = ProtoField.new("Active Counter Value", "nasdaq.phlxoptions.quoting.sqf.v9.0.activecountervalue", ftypes.UINT32)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.ask_price = ProtoField.new("Ask Price", "nasdaq.phlxoptions.quoting.sqf.v9.0.askprice", ftypes.DOUBLE)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.ask_sequence = ProtoField.new("Ask Sequence", "nasdaq.phlxoptions.quoting.sqf.v9.0.asksequence", ftypes.UINT64)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.ask_size = ProtoField.new("Ask Size", "nasdaq.phlxoptions.quoting.sqf.v9.0.asksize", ftypes.UINT32)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.auction_duration = ProtoField.new("Auction Duration", "nasdaq.phlxoptions.quoting.sqf.v9.0.auctionduration", ftypes.UINT32)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.auction_event = ProtoField.new("Auction Event", "nasdaq.phlxoptions.quoting.sqf.v9.0.auctionevent", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.auction_id = ProtoField.new("Auction Id", "nasdaq.phlxoptions.quoting.sqf.v9.0.auctionid", ftypes.UINT32)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.auction_type = ProtoField.new("Auction Type", "nasdaq.phlxoptions.quoting.sqf.v9.0.auctiontype", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.badge = ProtoField.new("Badge", "nasdaq.phlxoptions.quoting.sqf.v9.0.badge", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.best_response_price = ProtoField.new("Best Response Price", "nasdaq.phlxoptions.quoting.sqf.v9.0.bestresponseprice", ftypes.DOUBLE)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.best_response_size = ProtoField.new("Best Response Size", "nasdaq.phlxoptions.quoting.sqf.v9.0.bestresponsesize", ftypes.UINT32)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.bid_price = ProtoField.new("Bid Price", "nasdaq.phlxoptions.quoting.sqf.v9.0.bidprice", ftypes.DOUBLE)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.bid_sequence = ProtoField.new("Bid Sequence", "nasdaq.phlxoptions.quoting.sqf.v9.0.bidsequence", ftypes.UINT64)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.bid_size = ProtoField.new("Bid Size", "nasdaq.phlxoptions.quoting.sqf.v9.0.bidsize", ftypes.UINT32)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.block_status_code = ProtoField.new("Block Status Code", "nasdaq.phlxoptions.quoting.sqf.v9.0.blockstatuscode", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.client_packet_type = ProtoField.new("Packet Type", "nasdaq.phlxoptions.quoting.sqf.v9.0.clientpackettype", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.closing_type = ProtoField.new("Closing Type", "nasdaq.phlxoptions.quoting.sqf.v9.0.closingtype", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.cmta = ProtoField.new("Cmta", "nasdaq.phlxoptions.quoting.sqf.v9.0.cmta", ftypes.UINT32)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.complex_legs = ProtoField.new("Complex Legs", "nasdaq.phlxoptions.quoting.sqf.v9.0.complexlegs", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.complex_quotes = ProtoField.new("Complex Quotes", "nasdaq.phlxoptions.quoting.sqf.v9.0.complexquotes", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.contracts = ProtoField.new("Contracts", "nasdaq.phlxoptions.quoting.sqf.v9.0.contracts", ftypes.UINT32)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.cross_id = ProtoField.new("Cross Id", "nasdaq.phlxoptions.quoting.sqf.v9.0.crossid", ftypes.UINT32)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.cum_qty = ProtoField.new("Cum Qty", "nasdaq.phlxoptions.quoting.sqf.v9.0.cumqty", ftypes.UINT32)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.debit_credit = ProtoField.new("Debit Credit", "nasdaq.phlxoptions.quoting.sqf.v9.0.debitcredit", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.debug_text = ProtoField.new("Debug Text", "nasdaq.phlxoptions.quoting.sqf.v9.0.debugtext", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.delta = ProtoField.new("Delta", "nasdaq.phlxoptions.quoting.sqf.v9.0.delta", ftypes.UINT32)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.detailed_quote_responses = ProtoField.new("Detailed Quote Responses", "nasdaq.phlxoptions.quoting.sqf.v9.0.detailedquoteresponses", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.event_code = ProtoField.new("Event Code", "nasdaq.phlxoptions.quoting.sqf.v9.0.eventcode", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.exec_flag = ProtoField.new("Exec Flag", "nasdaq.phlxoptions.quoting.sqf.v9.0.execflag", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.expiration = ProtoField.new("Expiration", "nasdaq.phlxoptions.quoting.sqf.v9.0.expiration", ftypes.UINT16)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.firm_id = ProtoField.new("Firm Id", "nasdaq.phlxoptions.quoting.sqf.v9.0.firmid", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.flex_dac_legs = ProtoField.new("Flex Dac Legs", "nasdaq.phlxoptions.quoting.sqf.v9.0.flexdaclegs", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.heartbeat_timeout = ProtoField.new("Heartbeat Timeout", "nasdaq.phlxoptions.quoting.sqf.v9.0.heartbeattimeout", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.instrument_id = ProtoField.new("Instrument Id", "nasdaq.phlxoptions.quoting.sqf.v9.0.instrumentid", ftypes.UINT32)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.instrument_type = ProtoField.new("Instrument Type", "nasdaq.phlxoptions.quoting.sqf.v9.0.instrumenttype", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.interval = ProtoField.new("Interval", "nasdaq.phlxoptions.quoting.sqf.v9.0.interval", ftypes.UINT16)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.leg_id = ProtoField.new("Leg Id", "nasdaq.phlxoptions.quoting.sqf.v9.0.legid", ftypes.UINT8)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.leg_instrument_id = ProtoField.new("Leg Instrument Id", "nasdaq.phlxoptions.quoting.sqf.v9.0.leginstrumentid", ftypes.UINT32)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.leg_ratio = ProtoField.new("Leg Ratio", "nasdaq.phlxoptions.quoting.sqf.v9.0.legratio", ftypes.UINT32)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.leg_side = ProtoField.new("Leg Side", "nasdaq.phlxoptions.quoting.sqf.v9.0.legside", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.liquidity_indicator = ProtoField.new("Liquidity Indicator", "nasdaq.phlxoptions.quoting.sqf.v9.0.liquidityindicator", ftypes.UINT8)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.match_id = ProtoField.new("Match Id", "nasdaq.phlxoptions.quoting.sqf.v9.0.matchid", ftypes.UINT32)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.matched_volume = ProtoField.new("Matched Volume", "nasdaq.phlxoptions.quoting.sqf.v9.0.matchedvolume", ftypes.UINT32)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.message_id = ProtoField.new("Message Id", "nasdaq.phlxoptions.quoting.sqf.v9.0.messageid", ftypes.UINT64)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.mpv = ProtoField.new("Mpv", "nasdaq.phlxoptions.quoting.sqf.v9.0.mpv", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.msar_type = ProtoField.new("Msar Type", "nasdaq.phlxoptions.quoting.sqf.v9.0.msartype", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.multiplier = ProtoField.new("Multiplier", "nasdaq.phlxoptions.quoting.sqf.v9.0.multiplier", ftypes.UINT8)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.nanoseconds = ProtoField.new("Nanoseconds", "nasdaq.phlxoptions.quoting.sqf.v9.0.nanoseconds", ftypes.UINT32)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.notification_type = ProtoField.new("Notification Type", "nasdaq.phlxoptions.quoting.sqf.v9.0.notificationtype", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.number_of_flex_dac_legs = ProtoField.new("Number Of Flex Dac Legs", "nasdaq.phlxoptions.quoting.sqf.v9.0.numberofflexdaclegs", ftypes.UINT8)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.number_of_legs = ProtoField.new("Number Of Legs", "nasdaq.phlxoptions.quoting.sqf.v9.0.numberoflegs", ftypes.UINT8)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.occ_account = ProtoField.new("Occ Account", "nasdaq.phlxoptions.quoting.sqf.v9.0.occaccount", ftypes.UINT32)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.option_type = ProtoField.new("Option Type", "nasdaq.phlxoptions.quoting.sqf.v9.0.optiontype", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.order_capacity = ProtoField.new("Order Capacity", "nasdaq.phlxoptions.quoting.sqf.v9.0.ordercapacity", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.order_type = ProtoField.new("Order Type", "nasdaq.phlxoptions.quoting.sqf.v9.0.ordertype", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.phlxoptions.quoting.sqf.v9.0.packetlength", ftypes.UINT16)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.password = ProtoField.new("Password", "nasdaq.phlxoptions.quoting.sqf.v9.0.password", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.percentage = ProtoField.new("Percentage", "nasdaq.phlxoptions.quoting.sqf.v9.0.percentage", ftypes.UINT16)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.permitted = ProtoField.new("Permitted", "nasdaq.phlxoptions.quoting.sqf.v9.0.permitted", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.price = ProtoField.new("Price", "nasdaq.phlxoptions.quoting.sqf.v9.0.price", ftypes.DOUBLE)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.price_6 = ProtoField.new("Price 6", "nasdaq.phlxoptions.quoting.sqf.v9.0.price6", ftypes.DOUBLE)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.price_protection = ProtoField.new("Price Protection", "nasdaq.phlxoptions.quoting.sqf.v9.0.priceprotection", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.purge_reason = ProtoField.new("Purge Reason", "nasdaq.phlxoptions.quoting.sqf.v9.0.purgereason", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.quote_count = ProtoField.new("Quote Count", "nasdaq.phlxoptions.quoting.sqf.v9.0.quotecount", ftypes.UINT16)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.quote_id = ProtoField.new("Quote Id", "nasdaq.phlxoptions.quoting.sqf.v9.0.quoteid", ftypes.UINT64)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.quote_responses = ProtoField.new("Quote Responses", "nasdaq.phlxoptions.quoting.sqf.v9.0.quoteresponses", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.quote_status_code = ProtoField.new("Quote Status Code", "nasdaq.phlxoptions.quoting.sqf.v9.0.quotestatuscode", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.reentry_indicator = ProtoField.new("Reentry Indicator", "nasdaq.phlxoptions.quoting.sqf.v9.0.reentryindicator", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.reentry_scope = ProtoField.new("Reentry Scope", "nasdaq.phlxoptions.quoting.sqf.v9.0.reentryscope", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.phlxoptions.quoting.sqf.v9.0.rejectreasoncode", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.replenishment_value = ProtoField.new("Replenishment Value", "nasdaq.phlxoptions.quoting.sqf.v9.0.replenishmentvalue", ftypes.UINT32)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.requested_replenishment_value = ProtoField.new("Requested Replenishment Value", "nasdaq.phlxoptions.quoting.sqf.v9.0.requestedreplenishmentvalue", ftypes.UINT32)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.phlxoptions.quoting.sqf.v9.0.requestedsequencenumber", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.phlxoptions.quoting.sqf.v9.0.requestedsession", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.reserved_1 = ProtoField.new("Reserved 1", "nasdaq.phlxoptions.quoting.sqf.v9.0.reserved1", ftypes.BYTES)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.reserved_16 = ProtoField.new("Reserved 16", "nasdaq.phlxoptions.quoting.sqf.v9.0.reserved16", ftypes.BYTES)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.reserved_32 = ProtoField.new("Reserved 32", "nasdaq.phlxoptions.quoting.sqf.v9.0.reserved32", ftypes.BYTES)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.reserved_4 = ProtoField.new("Reserved 4", "nasdaq.phlxoptions.quoting.sqf.v9.0.reserved4", ftypes.BYTES)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.reserved_8 = ProtoField.new("Reserved 8", "nasdaq.phlxoptions.quoting.sqf.v9.0.reserved8", ftypes.BYTES)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.reserved_9 = ProtoField.new("Reserved 9", "nasdaq.phlxoptions.quoting.sqf.v9.0.reserved9", ftypes.BYTES)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.seconds = ProtoField.new("Seconds", "nasdaq.phlxoptions.quoting.sqf.v9.0.seconds", ftypes.UINT32)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.phlxoptions.quoting.sqf.v9.0.securitysymbol", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.sent_timestamp = ProtoField.new("Sent Timestamp", "nasdaq.phlxoptions.quoting.sqf.v9.0.senttimestamp", ftypes.UINT64)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.sequence = ProtoField.new("Sequence", "nasdaq.phlxoptions.quoting.sqf.v9.0.sequence", ftypes.UINT64)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.phlxoptions.quoting.sqf.v9.0.sequencedmessagetype", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.server_packet_type = ProtoField.new("Packet Type", "nasdaq.phlxoptions.quoting.sqf.v9.0.serverpackettype", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.server_unsequenced_message_type = ProtoField.new("Server Unsequenced Message Type", "nasdaq.phlxoptions.quoting.sqf.v9.0.serverunsequencedmessagetype", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.set_contract_limit = ProtoField.new("Set Contract Limit", "nasdaq.phlxoptions.quoting.sqf.v9.0.setcontractlimit", ftypes.UINT32)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.set_value = ProtoField.new("Set Value", "nasdaq.phlxoptions.quoting.sqf.v9.0.setvalue", ftypes.UINT32)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.side = ProtoField.new("Side", "nasdaq.phlxoptions.quoting.sqf.v9.0.side", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.simple_quotes = ProtoField.new("Simple Quotes", "nasdaq.phlxoptions.quoting.sqf.v9.0.simplequotes", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.simple_quotes_long_form = ProtoField.new("Simple Quotes Long Form", "nasdaq.phlxoptions.quoting.sqf.v9.0.simplequoteslongform", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.status_code = ProtoField.new("Status Code", "nasdaq.phlxoptions.quoting.sqf.v9.0.statuscode", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.stock_leg_short_sale = ProtoField.new("Stock Leg Short Sale", "nasdaq.phlxoptions.quoting.sqf.v9.0.stocklegshortsale", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.strike_price = ProtoField.new("Strike Price", "nasdaq.phlxoptions.quoting.sqf.v9.0.strikeprice", ftypes.DOUBLE)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.subscription = ProtoField.new("Subscription", "nasdaq.phlxoptions.quoting.sqf.v9.0.subscription", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.subversion = ProtoField.new("Subversion", "nasdaq.phlxoptions.quoting.sqf.v9.0.subversion", ftypes.UINT8)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.tradable = ProtoField.new("Tradable", "nasdaq.phlxoptions.quoting.sqf.v9.0.tradable", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.trading_state = ProtoField.new("Trading State", "nasdaq.phlxoptions.quoting.sqf.v9.0.tradingstate", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.underlying = ProtoField.new("Underlying", "nasdaq.phlxoptions.quoting.sqf.v9.0.underlying", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.phlxoptions.quoting.sqf.v9.0.underlyingsymbol", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.phlxoptions.quoting.sqf.v9.0.unsequencedmessagetype", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.username = ProtoField.new("Username", "nasdaq.phlxoptions.quoting.sqf.v9.0.username", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.valid_quote_count = ProtoField.new("Valid Quote Count", "nasdaq.phlxoptions.quoting.sqf.v9.0.validquotecount", ftypes.UINT16)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.vega = ProtoField.new("Vega", "nasdaq.phlxoptions.quoting.sqf.v9.0.vega", ftypes.UINT32)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.version = ProtoField.new("Version", "nasdaq.phlxoptions.quoting.sqf.v9.0.version", ftypes.UINT8)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.volume = ProtoField.new("Volume", "nasdaq.phlxoptions.quoting.sqf.v9.0.volume", ftypes.UINT32)

-- Nasdaq PhlxOptions Quoting Sqf 9.0 Framing
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.client_packet = ProtoField.new("Tcp Packet", "nasdaq.phlxoptions.quoting.sqf.v9.0.clientpacket", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.client_packet_header = ProtoField.new("Tcp Packet Header", "nasdaq.phlxoptions.quoting.sqf.v9.0.clientpacketheader", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.phlxoptions.quoting.sqf.v9.0.clientsoupbintcppacket", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.server_packet = ProtoField.new("Tcp Packet", "nasdaq.phlxoptions.quoting.sqf.v9.0.serverpacket", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.server_packet_header = ProtoField.new("Tcp Packet Header", "nasdaq.phlxoptions.quoting.sqf.v9.0.serverpacketheader", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.phlxoptions.quoting.sqf.v9.0.serversoupbintcppacket", ftypes.STRING)

-- Nasdaq PhlxOptions Quoting 9.0 Application Messages
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.active_qp_self_replenishment_parameter_definition_notification_message = ProtoField.new("Active Qp Self Replenishment Parameter Definition Notification Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.activeqpselfreplenishmentparameterdefinitionnotificationmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.active_qp_self_replenishment_request_reentry_message = ProtoField.new("Active Qp Self Replenishment Request Reentry Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.activeqpselfreplenishmentrequestreentrymessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.active_qp_self_replenishment_request_reentry_reply_message = ProtoField.new("Active Qp Self Replenishment Request Reentry Reply Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.activeqpselfreplenishmentrequestreentryreplymessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.active_qp_self_replenishment_set_limit_message = ProtoField.new("Active Qp Self Replenishment Set Limit Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.activeqpselfreplenishmentsetlimitmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.active_qp_self_replenishment_set_limit_reply_message = ProtoField.new("Active Qp Self Replenishment Set Limit Reply Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.activeqpselfreplenishmentsetlimitreplymessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.add_complex_instrument_reply_message = ProtoField.new("Add Complex Instrument Reply Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.addcomplexinstrumentreplymessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.add_complex_instrument_request_message = ProtoField.new("Add Complex Instrument Request Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.addcomplexinstrumentrequestmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.auctionnotificationmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.complex_instrument_directory_message = ProtoField.new("Complex Instrument Directory Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.complexinstrumentdirectorymessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.complex_instrument_trading_action_message = ProtoField.new("Complex Instrument Trading Action Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.complexinstrumenttradingactionmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.complex_msar_accept_message = ProtoField.new("Complex Msar Accept Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.complexmsaracceptmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.complex_msar_leg_notification_message = ProtoField.new("Complex Msar Leg Notification Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.complexmsarlegnotificationmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.complex_msar_notification_message = ProtoField.new("Complex Msar Notification Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.complexmsarnotificationmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.complex_msar_reject_message = ProtoField.new("Complex Msar Reject Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.complexmsarrejectmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.complex_msar_request_message = ProtoField.new("Complex Msar Request Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.complexmsarrequestmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.complex_quote_block_detailed_message = ProtoField.new("Complex Quote Block Detailed Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.complexquoteblockdetailedmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.complex_quote_block_message = ProtoField.new("Complex Quote Block Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.complexquoteblockmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.complex_quote_execution_notification_message = ProtoField.new("Complex Quote Execution Notification Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.complexquoteexecutionnotificationmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.complex_quote_leg_execution_notification_message = ProtoField.new("Complex Quote Leg Execution Notification Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.complexquotelegexecutionnotificationmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.detailed_quote_block_reply_message = ProtoField.new("Detailed Quote Block Reply Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.detailedquoteblockreplymessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.instrument_purge_notification_message = ProtoField.new("Instrument Purge Notification Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.instrumentpurgenotificationmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.market_reentry_notification_message = ProtoField.new("Market Reentry Notification Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.marketreentrynotificationmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.market_reentry_reply_message = ProtoField.new("Market Reentry Reply Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.marketreentryreplymessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.market_reentry_request_message = ProtoField.new("Market Reentry Request Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.marketreentryrequestmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.mm_parameter_definition_notification_message = ProtoField.new("Mm Parameter Definition Notification Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.mmparameterdefinitionnotificationmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.mm_parameter_definition_reply_message = ProtoField.new("Mm Parameter Definition Reply Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.mmparameterdefinitionreplymessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.mm_parameter_definition_request_message = ProtoField.new("Mm Parameter Definition Request Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.mmparameterdefinitionrequestmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.msar_accept_message = ProtoField.new("Msar Accept Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.msaracceptmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.msar_reject_message = ProtoField.new("Msar Reject Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.msarrejectmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.notification_subscription_reply_message = ProtoField.new("Notification Subscription Reply Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.notificationsubscriptionreplymessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.notification_subscription_request_message = ProtoField.new("Notification Subscription Request Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.notificationsubscriptionrequestmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.opening_rotation_quote_spread_multiplier_notification_message = ProtoField.new("Opening Rotation Quote Spread Multiplier Notification Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.openingrotationquotespreadmultipliernotificationmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.quote_block_reply_message = ProtoField.new("Quote Block Reply Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.quoteblockreplymessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.rapid_fire_config_notification_message = ProtoField.new("Rapid Fire Config Notification Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.rapidfireconfignotificationmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.rapid_fire_config_reply_message = ProtoField.new("Rapid Fire Config Reply Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.rapidfireconfigreplymessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.rapid_fire_config_request_message = ProtoField.new("Rapid Fire Config Request Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.rapidfireconfigrequestmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.simple_instrument_directory_message = ProtoField.new("Simple Instrument Directory Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.simpleinstrumentdirectorymessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.simple_instrument_trading_action_message = ProtoField.new("Simple Instrument Trading Action Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.simpleinstrumenttradingactionmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.simple_msar_notification_message = ProtoField.new("Simple Msar Notification Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.simplemsarnotificationmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.simple_msar_request_message = ProtoField.new("Simple Msar Request Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.simplemsarrequestmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.simple_quote_block_long_form_detailed_message = ProtoField.new("Simple Quote Block Long Form Detailed Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.simplequoteblocklongformdetailedmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.simple_quote_block_long_form_message = ProtoField.new("Simple Quote Block Long Form Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.simplequoteblocklongformmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.simple_quote_block_short_form_detailed_message = ProtoField.new("Simple Quote Block Short Form Detailed Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.simplequoteblockshortformdetailedmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.simple_quote_block_short_form_message = ProtoField.new("Simple Quote Block Short Form Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.simplequoteblockshortformmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.simple_quote_execution_notification_message = ProtoField.new("Simple Quote Execution Notification Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.simplequoteexecutionnotificationmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.systemeventmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.underlying_permission_notification_message = ProtoField.new("Underlying Permission Notification Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.underlyingpermissionnotificationmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.underlying_purge_notification_message = ProtoField.new("Underlying Purge Notification Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.underlyingpurgenotificationmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.underlying_purge_reply_message = ProtoField.new("Underlying Purge Reply Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.underlyingpurgereplymessage", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.underlying_purge_request_message = ProtoField.new("Underlying Purge Request Message", "nasdaq.phlxoptions.quoting.sqf.v9.0.underlyingpurgerequestmessage", ftypes.STRING)

-- Nasdaq PhlxOptions Quoting 9.0 Session Messages
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.client_heartbeat_packet = ProtoField.new("Client Heartbeat Packet", "nasdaq.phlxoptions.quoting.sqf.v9.0.clientheartbeatpacket", ftypes.BYTES)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.phlxoptions.quoting.sqf.v9.0.debugpacket", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.end_of_session_packet = ProtoField.new("End Of Session Packet", "nasdaq.phlxoptions.quoting.sqf.v9.0.endofsessionpacket", ftypes.BYTES)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.phlxoptions.quoting.sqf.v9.0.loginacceptedpacket", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.phlxoptions.quoting.sqf.v9.0.loginrejectedpacket", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.phlxoptions.quoting.sqf.v9.0.loginrequestpacket", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.logout_request_packet = ProtoField.new("Logout Request Packet", "nasdaq.phlxoptions.quoting.sqf.v9.0.logoutrequestpacket", ftypes.BYTES)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.phlxoptions.quoting.sqf.v9.0.sequenceddatapacket", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.server_heartbeat_packet = ProtoField.new("Server Heartbeat Packet", "nasdaq.phlxoptions.quoting.sqf.v9.0.serverheartbeatpacket", ftypes.BYTES)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.server_unsequenced_data_packet = ProtoField.new("Server Unsequenced Data Packet", "nasdaq.phlxoptions.quoting.sqf.v9.0.serverunsequenceddatapacket", ftypes.STRING)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.phlxoptions.quoting.sqf.v9.0.unsequenceddatapacket", ftypes.STRING)

-- Nasdaq PhlxOptions Quoting Sqf 9.0 Generated Fields
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.complex_legs_index = ProtoField.new("Complex Legs Index", "nasdaq.phlxoptions.quoting.sqf.v9.0.complexlegsindex", ftypes.UINT16)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.complex_quotes_index = ProtoField.new("Complex Quotes Index", "nasdaq.phlxoptions.quoting.sqf.v9.0.complexquotesindex", ftypes.UINT16)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.detailed_quote_responses_index = ProtoField.new("Detailed Quote Responses Index", "nasdaq.phlxoptions.quoting.sqf.v9.0.detailedquoteresponsesindex", ftypes.UINT16)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.flex_dac_legs_index = ProtoField.new("Flex Dac Legs Index", "nasdaq.phlxoptions.quoting.sqf.v9.0.flexdaclegsindex", ftypes.UINT16)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.quote_responses_index = ProtoField.new("Quote Responses Index", "nasdaq.phlxoptions.quoting.sqf.v9.0.quoteresponsesindex", ftypes.UINT16)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.simple_quotes_index = ProtoField.new("Simple Quotes Index", "nasdaq.phlxoptions.quoting.sqf.v9.0.simplequotesindex", ftypes.UINT16)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.simple_quotes_long_form_index = ProtoField.new("Simple Quotes Long Form Index", "nasdaq.phlxoptions.quoting.sqf.v9.0.simplequoteslongformindex", ftypes.UINT16)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "nasdaq.phlxoptions.quoting.sqf.v9.0.sequenceddatapacketsequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nasdaq PhlxOptions Quoting Sqf 9.0 Formatting
-----------------------------------------------------------------------

-- assumed connection role
local role_enum = {
  { 1, "Resolve from the conversation", 0 },
  { 2, "Initiator", 1 },
  { 3, "Acceptor", 2 }
}


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq PhlxOptions Quoting Sqf 9.0 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.repeating_groups = true
show.session_messages = true
show.indexes = true
show.sequences = true

-- Register Nasdaq PhlxOptions Quoting Sqf 9.0 Show Options
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nasdaq_phlxoptions_quoting_sqf_v9_0.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

-- Handle changed preferences
function omi_nasdaq_phlxoptions_quoting_sqf_v9_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_phlxoptions_quoting_sqf_v9_0.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_phlxoptions_quoting_sqf_v9_0.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_phlxoptions_quoting_sqf_v9_0.prefs.show_headers then
    show.headers = omi_nasdaq_phlxoptions_quoting_sqf_v9_0.prefs.show_headers
  end
  if show.repeating_groups ~= omi_nasdaq_phlxoptions_quoting_sqf_v9_0.prefs.show_repeating_groups then
    show.repeating_groups = omi_nasdaq_phlxoptions_quoting_sqf_v9_0.prefs.show_repeating_groups
  end
  if show.session_messages ~= omi_nasdaq_phlxoptions_quoting_sqf_v9_0.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_phlxoptions_quoting_sqf_v9_0.prefs.show_session_messages
  end
  if show.structs ~= omi_nasdaq_phlxoptions_quoting_sqf_v9_0.prefs.show_structs then
    show.structs = omi_nasdaq_phlxoptions_quoting_sqf_v9_0.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_phlxoptions_quoting_sqf_v9_0.prefs.show_indexes then
    show.indexes = omi_nasdaq_phlxoptions_quoting_sqf_v9_0.prefs.show_indexes
  end
  if show.sequences ~= omi_nasdaq_phlxoptions_quoting_sqf_v9_0.prefs.show_sequences then
    show.sequences = omi_nasdaq_phlxoptions_quoting_sqf_v9_0.prefs.show_sequences
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nasdaq_phlxoptions_quoting_sqf_v9_0.conversation = {}
nasdaq_phlxoptions_quoting_sqf_v9_0.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
nasdaq_phlxoptions_quoting_sqf_v9_0.stream_frame = nil
nasdaq_phlxoptions_quoting_sqf_v9_0.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
nasdaq_phlxoptions_quoting_sqf_v9_0.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nasdaq_phlxoptions_quoting_sqf_v9_0.conversation.data = function(packet)
  local key = nasdaq_phlxoptions_quoting_sqf_v9_0.conversation.key(packet)
  local data = nasdaq_phlxoptions_quoting_sqf_v9_0.conversation.flows[key]
  if data == nil then
    data = { accepted_sequence_number = { last = nil, frames = {} }, sequence = { next = nil, frames = {} } }
    nasdaq_phlxoptions_quoting_sqf_v9_0.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nasdaq_phlxoptions_quoting_sqf_v9_0.conversation.current = nil


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
-- Nasdaq PhlxOptions Quoting Sqf 9.0 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
nasdaq_phlxoptions_quoting_sqf_v9_0.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
nasdaq_phlxoptions_quoting_sqf_v9_0.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
nasdaq_phlxoptions_quoting_sqf_v9_0.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
nasdaq_phlxoptions_quoting_sqf_v9_0.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
nasdaq_phlxoptions_quoting_sqf_v9_0.accepted_session = {}

-- Size: Accepted Session
nasdaq_phlxoptions_quoting_sqf_v9_0.accepted_session.size = 10

-- Display: Accepted Session
nasdaq_phlxoptions_quoting_sqf_v9_0.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
nasdaq_phlxoptions_quoting_sqf_v9_0.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.accepted_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Active Counter Value
nasdaq_phlxoptions_quoting_sqf_v9_0.active_counter_value = {}

-- Size: Active Counter Value
nasdaq_phlxoptions_quoting_sqf_v9_0.active_counter_value.size = 4

-- Display: Active Counter Value
nasdaq_phlxoptions_quoting_sqf_v9_0.active_counter_value.display = function(value)
  return "Active Counter Value: "..value
end

-- Dissect: Active Counter Value
nasdaq_phlxoptions_quoting_sqf_v9_0.active_counter_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.active_counter_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.active_counter_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.active_counter_value, range, value, display)

  return offset + length, value
end

-- Ask Price
nasdaq_phlxoptions_quoting_sqf_v9_0.ask_price = {}

-- Size: Ask Price
nasdaq_phlxoptions_quoting_sqf_v9_0.ask_price.size = 4

-- Display: Ask Price
nasdaq_phlxoptions_quoting_sqf_v9_0.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
nasdaq_phlxoptions_quoting_sqf_v9_0.ask_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Ask Price
nasdaq_phlxoptions_quoting_sqf_v9_0.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.ask_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_phlxoptions_quoting_sqf_v9_0.ask_price.translate(raw)
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Sequence
nasdaq_phlxoptions_quoting_sqf_v9_0.ask_sequence = {}

-- Size: Ask Sequence
nasdaq_phlxoptions_quoting_sqf_v9_0.ask_sequence.size = 8

-- Display: Ask Sequence
nasdaq_phlxoptions_quoting_sqf_v9_0.ask_sequence.display = function(value)
  return "Ask Sequence: "..value
end

-- Dissect: Ask Sequence
nasdaq_phlxoptions_quoting_sqf_v9_0.ask_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.ask_sequence.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.ask_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.ask_sequence, range, value, display)

  return offset + length, value
end

-- Ask Size
nasdaq_phlxoptions_quoting_sqf_v9_0.ask_size = {}

-- Size: Ask Size
nasdaq_phlxoptions_quoting_sqf_v9_0.ask_size.size = 4

-- Display: Ask Size
nasdaq_phlxoptions_quoting_sqf_v9_0.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
nasdaq_phlxoptions_quoting_sqf_v9_0.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Auction Duration
nasdaq_phlxoptions_quoting_sqf_v9_0.auction_duration = {}

-- Size: Auction Duration
nasdaq_phlxoptions_quoting_sqf_v9_0.auction_duration.size = 4

-- Display: Auction Duration
nasdaq_phlxoptions_quoting_sqf_v9_0.auction_duration.display = function(value)
  return "Auction Duration: "..value
end

-- Dissect: Auction Duration
nasdaq_phlxoptions_quoting_sqf_v9_0.auction_duration.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.auction_duration.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.auction_duration.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.auction_duration, range, value, display)

  return offset + length, value
end

-- Auction Event
nasdaq_phlxoptions_quoting_sqf_v9_0.auction_event = {}

-- Size: Auction Event
nasdaq_phlxoptions_quoting_sqf_v9_0.auction_event.size = 1

-- Display: Auction Event
nasdaq_phlxoptions_quoting_sqf_v9_0.auction_event.display = function(value)
  if value == "S" then
    return "Auction Event: Start (S)"
  end
  if value == "U" then
    return "Auction Event: Auction Update (U)"
  end
  if value == "E" then
    return "Auction Event: End Of Auction (E)"
  end

  return "Auction Event: Unknown("..value..")"
end

-- Dissect: Auction Event
nasdaq_phlxoptions_quoting_sqf_v9_0.auction_event.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.auction_event.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.auction_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.auction_event, range, value, display)

  return offset + length, value
end

-- Auction Id
nasdaq_phlxoptions_quoting_sqf_v9_0.auction_id = {}

-- Size: Auction Id
nasdaq_phlxoptions_quoting_sqf_v9_0.auction_id.size = 4

-- Display: Auction Id
nasdaq_phlxoptions_quoting_sqf_v9_0.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
nasdaq_phlxoptions_quoting_sqf_v9_0.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.auction_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Type
nasdaq_phlxoptions_quoting_sqf_v9_0.auction_type = {}

-- Size: Auction Type
nasdaq_phlxoptions_quoting_sqf_v9_0.auction_type.size = 1

-- Display: Auction Type
nasdaq_phlxoptions_quoting_sqf_v9_0.auction_type.display = function(value)
  if value == "B" then
    return "Auction Type: Block Order Auction (B)"
  end
  if value == "C" then
    return "Auction Type: Combo Exposure Auction (C)"
  end
  if value == "I" then
    return "Auction Type: Order Exposure (I)"
  end
  if value == "O" then
    return "Auction Type: Opening Auction (O)"
  end
  if value == "P" then
    return "Auction Type: Pim Auction (P)"
  end
  if value == "H" then
    return "Auction Type: Facilitation Auction (H)"
  end
  if value == "S" then
    return "Auction Type: Solicitation Auction (S)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nasdaq_phlxoptions_quoting_sqf_v9_0.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Badge
nasdaq_phlxoptions_quoting_sqf_v9_0.badge = {}

-- Size: Badge
nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size = 4

-- Display: Badge
nasdaq_phlxoptions_quoting_sqf_v9_0.badge.display = function(value)
  return "Badge: "..value
end

-- Dissect: Badge
nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.badge, range, value, display)

  return offset + length, value
end

-- Best Response Price
nasdaq_phlxoptions_quoting_sqf_v9_0.best_response_price = {}

-- Size: Best Response Price
nasdaq_phlxoptions_quoting_sqf_v9_0.best_response_price.size = 4

-- Display: Best Response Price
nasdaq_phlxoptions_quoting_sqf_v9_0.best_response_price.display = function(value)
  return "Best Response Price: "..value
end

-- Translate: Best Response Price
nasdaq_phlxoptions_quoting_sqf_v9_0.best_response_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Best Response Price
nasdaq_phlxoptions_quoting_sqf_v9_0.best_response_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.best_response_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_phlxoptions_quoting_sqf_v9_0.best_response_price.translate(raw)
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.best_response_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.best_response_price, range, value, display)

  return offset + length, value
end

-- Best Response Size
nasdaq_phlxoptions_quoting_sqf_v9_0.best_response_size = {}

-- Size: Best Response Size
nasdaq_phlxoptions_quoting_sqf_v9_0.best_response_size.size = 4

-- Display: Best Response Size
nasdaq_phlxoptions_quoting_sqf_v9_0.best_response_size.display = function(value)
  return "Best Response Size: "..value
end

-- Dissect: Best Response Size
nasdaq_phlxoptions_quoting_sqf_v9_0.best_response_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.best_response_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.best_response_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.best_response_size, range, value, display)

  return offset + length, value
end

-- Bid Price
nasdaq_phlxoptions_quoting_sqf_v9_0.bid_price = {}

-- Size: Bid Price
nasdaq_phlxoptions_quoting_sqf_v9_0.bid_price.size = 4

-- Display: Bid Price
nasdaq_phlxoptions_quoting_sqf_v9_0.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
nasdaq_phlxoptions_quoting_sqf_v9_0.bid_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Bid Price
nasdaq_phlxoptions_quoting_sqf_v9_0.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.bid_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_phlxoptions_quoting_sqf_v9_0.bid_price.translate(raw)
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Sequence
nasdaq_phlxoptions_quoting_sqf_v9_0.bid_sequence = {}

-- Size: Bid Sequence
nasdaq_phlxoptions_quoting_sqf_v9_0.bid_sequence.size = 8

-- Display: Bid Sequence
nasdaq_phlxoptions_quoting_sqf_v9_0.bid_sequence.display = function(value)
  return "Bid Sequence: "..value
end

-- Dissect: Bid Sequence
nasdaq_phlxoptions_quoting_sqf_v9_0.bid_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.bid_sequence.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.bid_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.bid_sequence, range, value, display)

  return offset + length, value
end

-- Bid Size
nasdaq_phlxoptions_quoting_sqf_v9_0.bid_size = {}

-- Size: Bid Size
nasdaq_phlxoptions_quoting_sqf_v9_0.bid_size.size = 4

-- Display: Bid Size
nasdaq_phlxoptions_quoting_sqf_v9_0.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
nasdaq_phlxoptions_quoting_sqf_v9_0.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Block Status Code
nasdaq_phlxoptions_quoting_sqf_v9_0.block_status_code = {}

-- Size: Block Status Code
nasdaq_phlxoptions_quoting_sqf_v9_0.block_status_code.size = 1

-- Display: Block Status Code
nasdaq_phlxoptions_quoting_sqf_v9_0.block_status_code.display = function(value)
  if value == " " then
    return "Block Status Code: Valid Request (<whitespace>)"
  end
  if value == "A" then
    return "Block Status Code: Invalid Badge (A)"
  end
  if value == "B" then
    return "Block Status Code: Invalid Instrument Underlying (B)"
  end
  if value == "C" then
    return "Block Status Code: Not Permitted (C)"
  end
  if value == "D" then
    return "Block Status Code: Invalid Side (D)"
  end
  if value == "E" then
    return "Block Status Code: Invalid Size (E)"
  end
  if value == "F" then
    return "Block Status Code: Invalid Price (F)"
  end
  if value == "G" then
    return "Block Status Code: Invalid Spread (G)"
  end
  if value == "H" then
    return "Block Status Code: Invalid Indicator Attribute (H)"
  end
  if value == "I" then
    return "Block Status Code: Reentry Required (I)"
  end
  if value == "J" then
    return "Block Status Code: Opening Rotation In Progress (J)"
  end
  if value == "K" then
    return "Block Status Code: Kill Switch Reentry Required (K)"
  end
  if value == "L" then
    return "Block Status Code: Full Replenishment Required (L)"
  end
  if value == "M" then
    return "Block Status Code: Active Counter Exceeded (M)"
  end
  if value == "N" then
    return "Block Status Code: Too Late To Act (N)"
  end
  if value == "P" then
    return "Block Status Code: Not In Free Trading (P)"
  end
  if value == "Q" then
    return "Block Status Code: Invalid Auction Information (Q)"
  end
  if value == "R" then
    return "Block Status Code: Market Closed (R)"
  end
  if value == "S" then
    return "Block Status Code: Post Only Reprice (S)"
  end
  if value == "T" then
    return "Block Status Code: Request Pending (T)"
  end
  if value == "Y" then
    return "Block Status Code: Invalid Format Bad Block (Y)"
  end
  if value == "Z" then
    return "Block Status Code: System Error (Z)"
  end

  return "Block Status Code: Unknown("..value..")"
end

-- Dissect: Block Status Code
nasdaq_phlxoptions_quoting_sqf_v9_0.block_status_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.block_status_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.block_status_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.block_status_code, range, value, display)

  return offset + length, value
end

-- Client Packet Type
nasdaq_phlxoptions_quoting_sqf_v9_0.client_packet_type = {}

-- Size: Client Packet Type
nasdaq_phlxoptions_quoting_sqf_v9_0.client_packet_type.size = 1

-- Display: Client Packet Type
nasdaq_phlxoptions_quoting_sqf_v9_0.client_packet_type.display = function(value)
  if value == "+" then
    return "Packet Type: Debug Packet (+)"
  end
  if value == "L" then
    return "Packet Type: Login Request Packet (L)"
  end
  if value == "U" then
    return "Packet Type: Unsequenced Data Packet (U)"
  end
  if value == "R" then
    return "Packet Type: Client Heartbeat Packet (R)"
  end
  if value == "O" then
    return "Packet Type: Logout Request Packet (O)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Client Packet Type
nasdaq_phlxoptions_quoting_sqf_v9_0.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Closing Type
nasdaq_phlxoptions_quoting_sqf_v9_0.closing_type = {}

-- Size: Closing Type
nasdaq_phlxoptions_quoting_sqf_v9_0.closing_type.size = 1

-- Display: Closing Type
nasdaq_phlxoptions_quoting_sqf_v9_0.closing_type.display = function(value)
  if value == "N" then
    return "Closing Type: Normal Hours (N)"
  end
  if value == "L" then
    return "Closing Type: Late Hours (L)"
  end
  if value == "W" then
    return "Closing Type: Wco Early Closing (W)"
  end

  return "Closing Type: Unknown("..value..")"
end

-- Dissect: Closing Type
nasdaq_phlxoptions_quoting_sqf_v9_0.closing_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.closing_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.closing_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.closing_type, range, value, display)

  return offset + length, value
end

-- Cmta
nasdaq_phlxoptions_quoting_sqf_v9_0.cmta = {}

-- Size: Cmta
nasdaq_phlxoptions_quoting_sqf_v9_0.cmta.size = 4

-- Display: Cmta
nasdaq_phlxoptions_quoting_sqf_v9_0.cmta.display = function(value)
  return "Cmta: "..value
end

-- Dissect: Cmta
nasdaq_phlxoptions_quoting_sqf_v9_0.cmta.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.cmta.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.cmta.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.cmta, range, value, display)

  return offset + length, value
end

-- Contracts
nasdaq_phlxoptions_quoting_sqf_v9_0.contracts = {}

-- Size: Contracts
nasdaq_phlxoptions_quoting_sqf_v9_0.contracts.size = 4

-- Display: Contracts
nasdaq_phlxoptions_quoting_sqf_v9_0.contracts.display = function(value)
  return "Contracts: "..value
end

-- Dissect: Contracts
nasdaq_phlxoptions_quoting_sqf_v9_0.contracts.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.contracts.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.contracts, range, value, display)

  return offset + length, value
end

-- Cross Id
nasdaq_phlxoptions_quoting_sqf_v9_0.cross_id = {}

-- Size: Cross Id
nasdaq_phlxoptions_quoting_sqf_v9_0.cross_id.size = 4

-- Display: Cross Id
nasdaq_phlxoptions_quoting_sqf_v9_0.cross_id.display = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
nasdaq_phlxoptions_quoting_sqf_v9_0.cross_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.cross_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Cum Qty
nasdaq_phlxoptions_quoting_sqf_v9_0.cum_qty = {}

-- Size: Cum Qty
nasdaq_phlxoptions_quoting_sqf_v9_0.cum_qty.size = 4

-- Display: Cum Qty
nasdaq_phlxoptions_quoting_sqf_v9_0.cum_qty.display = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
nasdaq_phlxoptions_quoting_sqf_v9_0.cum_qty.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.cum_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.cum_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Debit Credit
nasdaq_phlxoptions_quoting_sqf_v9_0.debit_credit = {}

-- Size: Debit Credit
nasdaq_phlxoptions_quoting_sqf_v9_0.debit_credit.size = 1

-- Display: Debit Credit
nasdaq_phlxoptions_quoting_sqf_v9_0.debit_credit.display = function(value)
  if value == "D" then
    return "Debit Credit: Debit (D)"
  end
  if value == "C" then
    return "Debit Credit: Credit (C)"
  end
  if value == " " then
    return "Debit Credit: Zero (<whitespace>)"
  end

  return "Debit Credit: Unknown("..value..")"
end

-- Dissect: Debit Credit
nasdaq_phlxoptions_quoting_sqf_v9_0.debit_credit.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.debit_credit.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.debit_credit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.debit_credit, range, value, display)

  return offset + length, value
end

-- Debug Text
nasdaq_phlxoptions_quoting_sqf_v9_0.debug_text = {}

-- Size: Debug Text
nasdaq_phlxoptions_quoting_sqf_v9_0.debug_text.size = 1

-- Display: Debug Text
nasdaq_phlxoptions_quoting_sqf_v9_0.debug_text.display = function(value)
  return "Debug Text: "..value
end

-- Dissect: Debug Text
nasdaq_phlxoptions_quoting_sqf_v9_0.debug_text.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.debug_text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.debug_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.debug_text, range, value, display)

  return offset + length, value
end

-- Delta
nasdaq_phlxoptions_quoting_sqf_v9_0.delta = {}

-- Size: Delta
nasdaq_phlxoptions_quoting_sqf_v9_0.delta.size = 4

-- Display: Delta
nasdaq_phlxoptions_quoting_sqf_v9_0.delta.display = function(value)
  return "Delta: "..value
end

-- Dissect: Delta
nasdaq_phlxoptions_quoting_sqf_v9_0.delta.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.delta.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.delta, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_phlxoptions_quoting_sqf_v9_0.event_code = {}

-- Size: Event Code
nasdaq_phlxoptions_quoting_sqf_v9_0.event_code.size = 1

-- Display: Event Code
nasdaq_phlxoptions_quoting_sqf_v9_0.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages (O)"
  end
  if value == "S" then
    return "Event Code: Start Of System Hours (S)"
  end
  if value == "B" then
    return "Event Code: Start Of Quote (B)"
  end
  if value == "Q" then
    return "Event Code: Start Of Opening Process (Q)"
  end
  if value == "W" then
    return "Event Code: End Of Wco Early Closing (W)"
  end
  if value == "N" then
    return "Event Code: End Of Normal Hours Processing (N)"
  end
  if value == "L" then
    return "Event Code: End Of Late Hours Processing (L)"
  end
  if value == "E" then
    return "Event Code: End Of System Hours (E)"
  end
  if value == "C" then
    return "Event Code: End Of Messages (C)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_phlxoptions_quoting_sqf_v9_0.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.event_code, range, value, display)

  return offset + length, value
end

-- Exec Flag
nasdaq_phlxoptions_quoting_sqf_v9_0.exec_flag = {}

-- Size: Exec Flag
nasdaq_phlxoptions_quoting_sqf_v9_0.exec_flag.size = 1

-- Display: Exec Flag
nasdaq_phlxoptions_quoting_sqf_v9_0.exec_flag.display = function(value)
  if value == "0" then
    return "Exec Flag: None (0)"
  end
  if value == "1" then
    return "Exec Flag: Aon (1)"
  end

  return "Exec Flag: Unknown("..value..")"
end

-- Dissect: Exec Flag
nasdaq_phlxoptions_quoting_sqf_v9_0.exec_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.exec_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.exec_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.exec_flag, range, value, display)

  return offset + length, value
end

-- Expiration
nasdaq_phlxoptions_quoting_sqf_v9_0.expiration = {}

-- Size: Expiration
nasdaq_phlxoptions_quoting_sqf_v9_0.expiration.size = 2

-- Display: Expiration
nasdaq_phlxoptions_quoting_sqf_v9_0.expiration.display = function(value)
  return "Expiration: "..value
end

-- Dissect: Expiration
nasdaq_phlxoptions_quoting_sqf_v9_0.expiration.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.expiration.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.expiration.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.expiration, range, value, display)

  return offset + length, value
end

-- Firm Id
nasdaq_phlxoptions_quoting_sqf_v9_0.firm_id = {}

-- Size: Firm Id
nasdaq_phlxoptions_quoting_sqf_v9_0.firm_id.size = 4

-- Display: Firm Id
nasdaq_phlxoptions_quoting_sqf_v9_0.firm_id.display = function(value)
  return "Firm Id: "..value
end

-- Dissect: Firm Id
nasdaq_phlxoptions_quoting_sqf_v9_0.firm_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.firm_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Heartbeat Timeout
nasdaq_phlxoptions_quoting_sqf_v9_0.heartbeat_timeout = {}

-- Size: Heartbeat Timeout
nasdaq_phlxoptions_quoting_sqf_v9_0.heartbeat_timeout.size = 5

-- Display: Heartbeat Timeout
nasdaq_phlxoptions_quoting_sqf_v9_0.heartbeat_timeout.display = function(value)
  return "Heartbeat Timeout: "..value
end

-- Dissect: Heartbeat Timeout
nasdaq_phlxoptions_quoting_sqf_v9_0.heartbeat_timeout.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.heartbeat_timeout.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.heartbeat_timeout.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.heartbeat_timeout, range, value, display)

  return offset + length, value
end

-- Instrument Id
nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id = {}

-- Size: Instrument Id
nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.size = 4

-- Display: Instrument Id
nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Instrument Type
nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_type = {}

-- Size: Instrument Type
nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_type.size = 1

-- Display: Instrument Type
nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_type.display = function(value)
  if value == "S" then
    return "Instrument Type: Simple Instruments (S)"
  end
  if value == "C" then
    return "Instrument Type: Complex Instruments (C)"
  end
  if value == "O" then
    return "Instrument Type: Simple Instrument (O)"
  end

  return "Instrument Type: Unknown("..value..")"
end

-- Dissect: Instrument Type
nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Interval
nasdaq_phlxoptions_quoting_sqf_v9_0.interval = {}

-- Size: Interval
nasdaq_phlxoptions_quoting_sqf_v9_0.interval.size = 2

-- Display: Interval
nasdaq_phlxoptions_quoting_sqf_v9_0.interval.display = function(value)
  return "Interval: "..value
end

-- Dissect: Interval
nasdaq_phlxoptions_quoting_sqf_v9_0.interval.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.interval.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.interval.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.interval, range, value, display)

  return offset + length, value
end

-- Leg Id
nasdaq_phlxoptions_quoting_sqf_v9_0.leg_id = {}

-- Size: Leg Id
nasdaq_phlxoptions_quoting_sqf_v9_0.leg_id.size = 1

-- Display: Leg Id
nasdaq_phlxoptions_quoting_sqf_v9_0.leg_id.display = function(value)
  return "Leg Id: "..value
end

-- Dissect: Leg Id
nasdaq_phlxoptions_quoting_sqf_v9_0.leg_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.leg_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.leg_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.leg_id, range, value, display)

  return offset + length, value
end

-- Leg Instrument Id
nasdaq_phlxoptions_quoting_sqf_v9_0.leg_instrument_id = {}

-- Size: Leg Instrument Id
nasdaq_phlxoptions_quoting_sqf_v9_0.leg_instrument_id.size = 4

-- Display: Leg Instrument Id
nasdaq_phlxoptions_quoting_sqf_v9_0.leg_instrument_id.display = function(value)
  return "Leg Instrument Id: "..value
end

-- Dissect: Leg Instrument Id
nasdaq_phlxoptions_quoting_sqf_v9_0.leg_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.leg_instrument_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.leg_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.leg_instrument_id, range, value, display)

  return offset + length, value
end

-- Leg Ratio
nasdaq_phlxoptions_quoting_sqf_v9_0.leg_ratio = {}

-- Size: Leg Ratio
nasdaq_phlxoptions_quoting_sqf_v9_0.leg_ratio.size = 4

-- Display: Leg Ratio
nasdaq_phlxoptions_quoting_sqf_v9_0.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
nasdaq_phlxoptions_quoting_sqf_v9_0.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Side
nasdaq_phlxoptions_quoting_sqf_v9_0.leg_side = {}

-- Size: Leg Side
nasdaq_phlxoptions_quoting_sqf_v9_0.leg_side.size = 1

-- Display: Leg Side
nasdaq_phlxoptions_quoting_sqf_v9_0.leg_side.display = function(value)
  if value == "B" then
    return "Leg Side: Buy (B)"
  end
  if value == "S" then
    return "Leg Side: Sell (S)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
nasdaq_phlxoptions_quoting_sqf_v9_0.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.leg_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Liquidity Indicator
nasdaq_phlxoptions_quoting_sqf_v9_0.liquidity_indicator = {}

-- Size: Liquidity Indicator
nasdaq_phlxoptions_quoting_sqf_v9_0.liquidity_indicator.size = 1

-- Display: Liquidity Indicator
nasdaq_phlxoptions_quoting_sqf_v9_0.liquidity_indicator.display = function(value)
  if value == 0 then
    return "Liquidity Indicator: None (0)"
  end
  if value == 1 then
    return "Liquidity Indicator: Maker (1)"
  end
  if value == 2 then
    return "Liquidity Indicator: Taker (2)"
  end
  if value == 4 then
    return "Liquidity Indicator: Response (4)"
  end
  if value == 5 then
    return "Liquidity Indicator: Hidden (5)"
  end
  if value == 6 then
    return "Liquidity Indicator: Opening Rotation (6)"
  end
  if value == 7 then
    return "Liquidity Indicator: Cross (7)"
  end
  if value == 8 then
    return "Liquidity Indicator: Flashed Order (8)"
  end
  if value == 9 then
    return "Liquidity Indicator: Flash Response (9)"
  end
  if value == 10 then
    return "Liquidity Indicator: Routed Out (10)"
  end
  if value == 11 then
    return "Liquidity Indicator: Trade Report (11)"
  end
  if value == 12 then
    return "Liquidity Indicator: Combo Maker Against Combo (12)"
  end
  if value == 13 then
    return "Liquidity Indicator: Combo Taker Against Combo (13)"
  end
  if value == 14 then
    return "Liquidity Indicator: Combo Response Against Combo (14)"
  end
  if value == 15 then
    return "Liquidity Indicator: Combo Hidden Against Combo (15)"
  end
  if value == 16 then
    return "Liquidity Indicator: Combo Opening Rotation (16)"
  end
  if value == 17 then
    return "Liquidity Indicator: Combo Cross (17)"
  end
  if value == 18 then
    return "Liquidity Indicator: Combo Taker Against Regular (18)"
  end
  if value == 19 then
    return "Liquidity Indicator: Regular Maker Against Combo (19)"
  end
  if value == 20 then
    return "Liquidity Indicator: Combo Taker Against Io (20)"
  end
  if value == 21 then
    return "Liquidity Indicator: Regular Incl Pim Taker Against Io (21)"
  end
  if value == 22 then
    return "Liquidity Indicator: Io Maker Against Combo (22)"
  end
  if value == 23 then
    return "Liquidity Indicator: Io Maker Against Regular (23)"
  end
  if value == 24 then
    return "Liquidity Indicator: Regular Maker Against Io Participant (24)"
  end
  if value == 25 then
    return "Liquidity Indicator: Io Participant Taker Against Regular (25)"
  end
  if value == 26 then
    return "Liquidity Indicator: Broken Price Improvement (26)"
  end
  if value == 27 then
    return "Liquidity Indicator: Broken Facilitation (27)"
  end
  if value == 28 then
    return "Liquidity Indicator: Broken Solicitation (28)"
  end
  if value == 29 then
    return "Liquidity Indicator: Combo Broken Price Improvement (29)"
  end
  if value == 30 then
    return "Liquidity Indicator: Combo Broken Facilitation (30)"
  end
  if value == 31 then
    return "Liquidity Indicator: Combo Broken Solicitation (31)"
  end
  if value == 32 then
    return "Liquidity Indicator: Block (32)"
  end
  if value == 33 then
    return "Liquidity Indicator: Block Response (33)"
  end
  if value == 34 then
    return "Liquidity Indicator: Directed Response (34)"
  end
  if value == 35 then
    return "Liquidity Indicator: Facilitation (35)"
  end
  if value == 36 then
    return "Liquidity Indicator: Facilitation Response (36)"
  end
  if value == 37 then
    return "Liquidity Indicator: Price Improvement (37)"
  end
  if value == 38 then
    return "Liquidity Indicator: Price Improvement Response (38)"
  end
  if value == 39 then
    return "Liquidity Indicator: Solicitation (39)"
  end
  if value == 40 then
    return "Liquidity Indicator: Solicitation Response (40)"
  end
  if value == 41 then
    return "Liquidity Indicator: Qualified Contingent Cross (41)"
  end
  if value == 42 then
    return "Liquidity Indicator: Customer To Customer (42)"
  end
  if value == 43 then
    return "Liquidity Indicator: Combo Facilitation (43)"
  end
  if value == 44 then
    return "Liquidity Indicator: Combo Facilitation Response (44)"
  end
  if value == 45 then
    return "Liquidity Indicator: Combo Price Improvement (45)"
  end
  if value == 46 then
    return "Liquidity Indicator: Combo Price Improvement Response (46)"
  end
  if value == 47 then
    return "Liquidity Indicator: Combo Solicitation (47)"
  end
  if value == 48 then
    return "Liquidity Indicator: Combo Solicitation Response (48)"
  end
  if value == 49 then
    return "Liquidity Indicator: Combo Qualified Contingent Cross (49)"
  end
  if value == 50 then
    return "Liquidity Indicator: Combo Customer To Customer (50)"
  end
  if value == 51 then
    return "Liquidity Indicator: Sweep Routed Out (51)"
  end
  if value == 52 then
    return "Liquidity Indicator: Sweep Trade Report (52)"
  end
  if value == 53 then
    return "Liquidity Indicator: Combo Taker Against Regular Thru Nbbo (53)"
  end
  if value == 54 then
    return "Liquidity Indicator: Combo Taker Against Io Thru Nbbo (54)"
  end
  if value == 55 then
    return "Liquidity Indicator: Simple Exposure Order Upon Receipt (55)"
  end
  if value == 56 then
    return "Liquidity Indicator: Simple Exposure Order Subsequent (56)"
  end
  if value == 57 then
    return "Liquidity Indicator: Simple Exposure Order Responder (57)"
  end
  if value == 58 then
    return "Liquidity Indicator: Flex Auction (58)"
  end
  if value == 59 then
    return "Liquidity Indicator: Flex Auction Responder (59)"
  end
  if value == 60 then
    return "Liquidity Indicator: Flex Price Improvement (60)"
  end
  if value == 61 then
    return "Liquidity Indicator: Flex Price Improvement Responder (61)"
  end
  if value == 62 then
    return "Liquidity Indicator: Flex Broken Price Improvement (62)"
  end
  if value == 63 then
    return "Liquidity Indicator: Flex Solicitation (63)"
  end
  if value == 64 then
    return "Liquidity Indicator: Flex Solicitation Responder (64)"
  end
  if value == 65 then
    return "Liquidity Indicator: Flex Broken Solicitation (65)"
  end
  if value == 66 then
    return "Liquidity Indicator: Combo Flex Auction (66)"
  end
  if value == 67 then
    return "Liquidity Indicator: Combo Flex Auction Responder (67)"
  end
  if value == 68 then
    return "Liquidity Indicator: Combo Flex Price Improvement (68)"
  end
  if value == 69 then
    return "Liquidity Indicator: Combo Flex Price Improvement Responder (69)"
  end
  if value == 70 then
    return "Liquidity Indicator: Combo Flex Broken Price Improvement (70)"
  end
  if value == 71 then
    return "Liquidity Indicator: Combo Flex Solicitation (71)"
  end
  if value == 72 then
    return "Liquidity Indicator: Combo Flex Solicitation Responder (72)"
  end
  if value == 73 then
    return "Liquidity Indicator: Combo Flex Broken Solicitation (73)"
  end

  return "Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Liquidity Indicator
nasdaq_phlxoptions_quoting_sqf_v9_0.liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Match Id
nasdaq_phlxoptions_quoting_sqf_v9_0.match_id = {}

-- Size: Match Id
nasdaq_phlxoptions_quoting_sqf_v9_0.match_id.size = 4

-- Display: Match Id
nasdaq_phlxoptions_quoting_sqf_v9_0.match_id.display = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
nasdaq_phlxoptions_quoting_sqf_v9_0.match_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.match_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.match_id, range, value, display)

  return offset + length, value
end

-- Matched Volume
nasdaq_phlxoptions_quoting_sqf_v9_0.matched_volume = {}

-- Size: Matched Volume
nasdaq_phlxoptions_quoting_sqf_v9_0.matched_volume.size = 4

-- Display: Matched Volume
nasdaq_phlxoptions_quoting_sqf_v9_0.matched_volume.display = function(value)
  return "Matched Volume: "..value
end

-- Dissect: Matched Volume
nasdaq_phlxoptions_quoting_sqf_v9_0.matched_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.matched_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.matched_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.matched_volume, range, value, display)

  return offset + length, value
end

-- Message Id
nasdaq_phlxoptions_quoting_sqf_v9_0.message_id = {}

-- Size: Message Id
nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size = 8

-- Display: Message Id
nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.display = function(value)
  return "Message Id: "..value
end

-- Dissect: Message Id
nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.message_id, range, value, display)

  return offset + length, value
end

-- Mpv
nasdaq_phlxoptions_quoting_sqf_v9_0.mpv = {}

-- Size: Mpv
nasdaq_phlxoptions_quoting_sqf_v9_0.mpv.size = 1

-- Display: Mpv
nasdaq_phlxoptions_quoting_sqf_v9_0.mpv.display = function(value)
  if value == "E" then
    return "Mpv: Penny Everywhere (E)"
  end
  if value == "S" then
    return "Mpv: Scaled (S)"
  end
  if value == "P" then
    return "Mpv: Penny Pilot (P)"
  end

  return "Mpv: Unknown("..value..")"
end

-- Dissect: Mpv
nasdaq_phlxoptions_quoting_sqf_v9_0.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.mpv.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.mpv, range, value, display)

  return offset + length, value
end

-- Msar Type
nasdaq_phlxoptions_quoting_sqf_v9_0.msar_type = {}

-- Size: Msar Type
nasdaq_phlxoptions_quoting_sqf_v9_0.msar_type.size = 1

-- Display: Msar Type
nasdaq_phlxoptions_quoting_sqf_v9_0.msar_type.display = function(value)
  if value == "A" then
    return "Msar Type: Auction Response (A)"
  end
  if value == "M" then
    return "Msar Type: Market Sweep (M)"
  end

  return "Msar Type: Unknown("..value..")"
end

-- Dissect: Msar Type
nasdaq_phlxoptions_quoting_sqf_v9_0.msar_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.msar_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.msar_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.msar_type, range, value, display)

  return offset + length, value
end

-- Multiplier
nasdaq_phlxoptions_quoting_sqf_v9_0.multiplier = {}

-- Size: Multiplier
nasdaq_phlxoptions_quoting_sqf_v9_0.multiplier.size = 1

-- Display: Multiplier
nasdaq_phlxoptions_quoting_sqf_v9_0.multiplier.display = function(value)
  return "Multiplier: "..value
end

-- Dissect: Multiplier
nasdaq_phlxoptions_quoting_sqf_v9_0.multiplier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.multiplier.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.multiplier, range, value, display)

  return offset + length, value
end

-- Nanoseconds
nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds = {}

-- Size: Nanoseconds
nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.size = 4

-- Display: Nanoseconds
nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Notification Type
nasdaq_phlxoptions_quoting_sqf_v9_0.notification_type = {}

-- Size: Notification Type
nasdaq_phlxoptions_quoting_sqf_v9_0.notification_type.size = 1

-- Display: Notification Type
nasdaq_phlxoptions_quoting_sqf_v9_0.notification_type.display = function(value)
  if value == "E" then
    return "Notification Type: Executed (E)"
  end
  if value == "C" then
    return "Notification Type: Cancelled (C)"
  end

  return "Notification Type: Unknown("..value..")"
end

-- Dissect: Notification Type
nasdaq_phlxoptions_quoting_sqf_v9_0.notification_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.notification_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.notification_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.notification_type, range, value, display)

  return offset + length, value
end

-- Number Of Flex Dac Legs
nasdaq_phlxoptions_quoting_sqf_v9_0.number_of_flex_dac_legs = {}

-- Size: Number Of Flex Dac Legs
nasdaq_phlxoptions_quoting_sqf_v9_0.number_of_flex_dac_legs.size = 1

-- Display: Number Of Flex Dac Legs
nasdaq_phlxoptions_quoting_sqf_v9_0.number_of_flex_dac_legs.display = function(value)
  return "Number Of Flex Dac Legs: "..value
end

-- Dissect: Number Of Flex Dac Legs
nasdaq_phlxoptions_quoting_sqf_v9_0.number_of_flex_dac_legs.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.number_of_flex_dac_legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.number_of_flex_dac_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.number_of_flex_dac_legs, range, value, display)

  return offset + length, value
end

-- Number Of Legs
nasdaq_phlxoptions_quoting_sqf_v9_0.number_of_legs = {}

-- Size: Number Of Legs
nasdaq_phlxoptions_quoting_sqf_v9_0.number_of_legs.size = 1

-- Display: Number Of Legs
nasdaq_phlxoptions_quoting_sqf_v9_0.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
nasdaq_phlxoptions_quoting_sqf_v9_0.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Occ Account
nasdaq_phlxoptions_quoting_sqf_v9_0.occ_account = {}

-- Size: Occ Account
nasdaq_phlxoptions_quoting_sqf_v9_0.occ_account.size = 4

-- Display: Occ Account
nasdaq_phlxoptions_quoting_sqf_v9_0.occ_account.display = function(value)
  return "Occ Account: "..value
end

-- Dissect: Occ Account
nasdaq_phlxoptions_quoting_sqf_v9_0.occ_account.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.occ_account.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.occ_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.occ_account, range, value, display)

  return offset + length, value
end

-- Option Type
nasdaq_phlxoptions_quoting_sqf_v9_0.option_type = {}

-- Size: Option Type
nasdaq_phlxoptions_quoting_sqf_v9_0.option_type.size = 1

-- Display: Option Type
nasdaq_phlxoptions_quoting_sqf_v9_0.option_type.display = function(value)
  if value == "C" then
    return "Option Type: Call (C)"
  end
  if value == "P" then
    return "Option Type: Put (P)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nasdaq_phlxoptions_quoting_sqf_v9_0.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.option_type, range, value, display)

  return offset + length, value
end

-- Order Capacity
nasdaq_phlxoptions_quoting_sqf_v9_0.order_capacity = {}

-- Size: Order Capacity
nasdaq_phlxoptions_quoting_sqf_v9_0.order_capacity.size = 1

-- Display: Order Capacity
nasdaq_phlxoptions_quoting_sqf_v9_0.order_capacity.display = function(value)
  if value == "C" then
    return "Order Capacity: Customer (C)"
  end
  if value == "F" then
    return "Order Capacity: Firm (F)"
  end
  if value == "M" then
    return "Order Capacity: Market Maker (M)"
  end
  if value == "O" then
    return "Order Capacity: Other Exchange Registered Market Maker (O)"
  end
  if value == "P" then
    return "Order Capacity: Professional Customer (P)"
  end
  if value == "B" then
    return "Order Capacity: Broker Dealer Customer (B)"
  end
  if value == "J" then
    return "Order Capacity: Joint Back Office (J)"
  end
  if value == " " then
    return "Order Capacity: Not Applicable (<whitespace>)"
  end

  return "Order Capacity: Unknown("..value..")"
end

-- Dissect: Order Capacity
nasdaq_phlxoptions_quoting_sqf_v9_0.order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.order_capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.order_capacity, range, value, display)

  return offset + length, value
end

-- Order Type
nasdaq_phlxoptions_quoting_sqf_v9_0.order_type = {}

-- Size: Order Type
nasdaq_phlxoptions_quoting_sqf_v9_0.order_type.size = 1

-- Display: Order Type
nasdaq_phlxoptions_quoting_sqf_v9_0.order_type.display = function(value)
  if value == "L" then
    return "Order Type: Limit (L)"
  end
  if value == "M" then
    return "Order Type: Market (M)"
  end
  if value == "N" then
    return "Order Type: Not Disclosed (N)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
nasdaq_phlxoptions_quoting_sqf_v9_0.order_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.order_type, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_phlxoptions_quoting_sqf_v9_0.packet_length = {}

-- Size: Packet Length
nasdaq_phlxoptions_quoting_sqf_v9_0.packet_length.size = 2

-- Display: Packet Length
nasdaq_phlxoptions_quoting_sqf_v9_0.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_phlxoptions_quoting_sqf_v9_0.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_phlxoptions_quoting_sqf_v9_0.password = {}

-- Size: Password
nasdaq_phlxoptions_quoting_sqf_v9_0.password.size = 10

-- Display: Password
nasdaq_phlxoptions_quoting_sqf_v9_0.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_phlxoptions_quoting_sqf_v9_0.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.password, range, value, display)

  return offset + length, value
end

-- Percentage
nasdaq_phlxoptions_quoting_sqf_v9_0.percentage = {}

-- Size: Percentage
nasdaq_phlxoptions_quoting_sqf_v9_0.percentage.size = 2

-- Display: Percentage
nasdaq_phlxoptions_quoting_sqf_v9_0.percentage.display = function(value)
  return "Percentage: "..value
end

-- Dissect: Percentage
nasdaq_phlxoptions_quoting_sqf_v9_0.percentage.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.percentage.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.percentage.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.percentage, range, value, display)

  return offset + length, value
end

-- Permitted
nasdaq_phlxoptions_quoting_sqf_v9_0.permitted = {}

-- Size: Permitted
nasdaq_phlxoptions_quoting_sqf_v9_0.permitted.size = 1

-- Display: Permitted
nasdaq_phlxoptions_quoting_sqf_v9_0.permitted.display = function(value)
  if value == "Y" then
    return "Permitted: Permitted (Y)"
  end
  if value == "N" then
    return "Permitted: Not Permitted (N)"
  end

  return "Permitted: Unknown("..value..")"
end

-- Dissect: Permitted
nasdaq_phlxoptions_quoting_sqf_v9_0.permitted.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.permitted.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.permitted.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.permitted, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_phlxoptions_quoting_sqf_v9_0.price = {}

-- Size: Price
nasdaq_phlxoptions_quoting_sqf_v9_0.price.size = 4

-- Display: Price
nasdaq_phlxoptions_quoting_sqf_v9_0.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nasdaq_phlxoptions_quoting_sqf_v9_0.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
nasdaq_phlxoptions_quoting_sqf_v9_0.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_phlxoptions_quoting_sqf_v9_0.price.translate(raw)
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.price, range, value, display)

  return offset + length, value
end

-- Price 6
nasdaq_phlxoptions_quoting_sqf_v9_0.price_6 = {}

-- Size: Price 6
nasdaq_phlxoptions_quoting_sqf_v9_0.price_6.size = 8

-- Display: Price 6
nasdaq_phlxoptions_quoting_sqf_v9_0.price_6.display = function(value)
  return "Price 6: "..value
end

-- Translate: Price 6
nasdaq_phlxoptions_quoting_sqf_v9_0.price_6.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price 6
nasdaq_phlxoptions_quoting_sqf_v9_0.price_6.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.price_6.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_phlxoptions_quoting_sqf_v9_0.price_6.translate(raw)
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.price_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.price_6, range, value, display)

  return offset + length, value
end

-- Price Protection
nasdaq_phlxoptions_quoting_sqf_v9_0.price_protection = {}

-- Size: Price Protection
nasdaq_phlxoptions_quoting_sqf_v9_0.price_protection.size = 1

-- Display: Price Protection
nasdaq_phlxoptions_quoting_sqf_v9_0.price_protection.display = function(value)
  if value == "L" then
    return "Price Protection: Local (L)"
  end
  if value == "N" then
    return "Price Protection: National (N)"
  end

  return "Price Protection: Unknown("..value..")"
end

-- Dissect: Price Protection
nasdaq_phlxoptions_quoting_sqf_v9_0.price_protection.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.price_protection.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.price_protection.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.price_protection, range, value, display)

  return offset + length, value
end

-- Purge Reason
nasdaq_phlxoptions_quoting_sqf_v9_0.purge_reason = {}

-- Size: Purge Reason
nasdaq_phlxoptions_quoting_sqf_v9_0.purge_reason.size = 1

-- Display: Purge Reason
nasdaq_phlxoptions_quoting_sqf_v9_0.purge_reason.display = function(value)
  if value == "U" then
    return "Purge Reason: User Requested Simple (U)"
  end
  if value == "S" then
    return "Purge Reason: System Initiated (S)"
  end
  if value == "K" then
    return "Purge Reason: Auto Killswitch (K)"
  end
  if value == "M" then
    return "Purge Reason: Manual Killswitch (M)"
  end
  if value == "P" then
    return "Purge Reason: Purge On Disconnect (P)"
  end
  if value == "u" then
    return "Purge Reason: User Requested Complex (u)"
  end
  if value == "s" then
    return "Purge Reason: System Initiated Complex (s)"
  end
  if value == "Q" then
    return "Purge Reason: Anti Internalize (Q)"
  end

  return "Purge Reason: Unknown("..value..")"
end

-- Dissect: Purge Reason
nasdaq_phlxoptions_quoting_sqf_v9_0.purge_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.purge_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.purge_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.purge_reason, range, value, display)

  return offset + length, value
end

-- Quote Count
nasdaq_phlxoptions_quoting_sqf_v9_0.quote_count = {}

-- Size: Quote Count
nasdaq_phlxoptions_quoting_sqf_v9_0.quote_count.size = 2

-- Display: Quote Count
nasdaq_phlxoptions_quoting_sqf_v9_0.quote_count.display = function(value)
  return "Quote Count: "..value
end

-- Dissect: Quote Count
nasdaq_phlxoptions_quoting_sqf_v9_0.quote_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.quote_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.quote_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.quote_count, range, value, display)

  return offset + length, value
end

-- Quote Id
nasdaq_phlxoptions_quoting_sqf_v9_0.quote_id = {}

-- Size: Quote Id
nasdaq_phlxoptions_quoting_sqf_v9_0.quote_id.size = 8

-- Display: Quote Id
nasdaq_phlxoptions_quoting_sqf_v9_0.quote_id.display = function(value)
  return "Quote Id: "..value
end

-- Dissect: Quote Id
nasdaq_phlxoptions_quoting_sqf_v9_0.quote_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.quote_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.quote_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.quote_id, range, value, display)

  return offset + length, value
end

-- Quote Status Code
nasdaq_phlxoptions_quoting_sqf_v9_0.quote_status_code = {}

-- Size: Quote Status Code
nasdaq_phlxoptions_quoting_sqf_v9_0.quote_status_code.size = 1

-- Display: Quote Status Code
nasdaq_phlxoptions_quoting_sqf_v9_0.quote_status_code.display = function(value)
  if value == " " then
    return "Quote Status Code: Valid Request (<whitespace>)"
  end
  if value == "A" then
    return "Quote Status Code: Invalid Badge (A)"
  end
  if value == "B" then
    return "Quote Status Code: Invalid Instrument Underlying (B)"
  end
  if value == "C" then
    return "Quote Status Code: Not Permitted (C)"
  end
  if value == "D" then
    return "Quote Status Code: Invalid Side (D)"
  end
  if value == "E" then
    return "Quote Status Code: Invalid Size (E)"
  end
  if value == "F" then
    return "Quote Status Code: Invalid Price (F)"
  end
  if value == "G" then
    return "Quote Status Code: Invalid Spread (G)"
  end
  if value == "H" then
    return "Quote Status Code: Invalid Indicator Attribute (H)"
  end
  if value == "I" then
    return "Quote Status Code: Reentry Required (I)"
  end
  if value == "J" then
    return "Quote Status Code: Opening Rotation In Progress (J)"
  end
  if value == "K" then
    return "Quote Status Code: Kill Switch Reentry Required (K)"
  end
  if value == "L" then
    return "Quote Status Code: Full Replenishment Required (L)"
  end
  if value == "M" then
    return "Quote Status Code: Active Counter Exceeded (M)"
  end
  if value == "N" then
    return "Quote Status Code: Too Late To Act (N)"
  end
  if value == "P" then
    return "Quote Status Code: Not In Free Trading (P)"
  end
  if value == "Q" then
    return "Quote Status Code: Invalid Auction Information (Q)"
  end
  if value == "R" then
    return "Quote Status Code: Market Closed (R)"
  end
  if value == "S" then
    return "Quote Status Code: Post Only Reprice (S)"
  end
  if value == "T" then
    return "Quote Status Code: Request Pending (T)"
  end
  if value == "Y" then
    return "Quote Status Code: Invalid Format Bad Block (Y)"
  end
  if value == "Z" then
    return "Quote Status Code: System Error (Z)"
  end

  return "Quote Status Code: Unknown("..value..")"
end

-- Dissect: Quote Status Code
nasdaq_phlxoptions_quoting_sqf_v9_0.quote_status_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.quote_status_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.quote_status_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.quote_status_code, range, value, display)

  return offset + length, value
end

-- Reentry Indicator
nasdaq_phlxoptions_quoting_sqf_v9_0.reentry_indicator = {}

-- Size: Reentry Indicator
nasdaq_phlxoptions_quoting_sqf_v9_0.reentry_indicator.size = 1

-- Display: Reentry Indicator
nasdaq_phlxoptions_quoting_sqf_v9_0.reentry_indicator.display = function(value)
  if value == "N" then
    return "Reentry Indicator: Normal (N)"
  end
  if value == "R" then
    return "Reentry Indicator: Reentry (R)"
  end

  return "Reentry Indicator: Unknown("..value..")"
end

-- Dissect: Reentry Indicator
nasdaq_phlxoptions_quoting_sqf_v9_0.reentry_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.reentry_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.reentry_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.reentry_indicator, range, value, display)

  return offset + length, value
end

-- Reentry Scope
nasdaq_phlxoptions_quoting_sqf_v9_0.reentry_scope = {}

-- Size: Reentry Scope
nasdaq_phlxoptions_quoting_sqf_v9_0.reentry_scope.size = 1

-- Display: Reentry Scope
nasdaq_phlxoptions_quoting_sqf_v9_0.reentry_scope.display = function(value)
  if value == "N" then
    return "Reentry Scope: User Requested Simple (N)"
  end
  if value == "n" then
    return "Reentry Scope: User Requested Complex (n)"
  end
  if value == "K" then
    return "Reentry Scope: Post Killswitch (K)"
  end

  return "Reentry Scope: Unknown("..value..")"
end

-- Dissect: Reentry Scope
nasdaq_phlxoptions_quoting_sqf_v9_0.reentry_scope.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.reentry_scope.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.reentry_scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.reentry_scope, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_phlxoptions_quoting_sqf_v9_0.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_phlxoptions_quoting_sqf_v9_0.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_phlxoptions_quoting_sqf_v9_0.reject_reason_code.display = function(value)
  if value == "A" then
    return "Reject Reason Code: Not Authorized (A)"
  end
  if value == "S" then
    return "Reject Reason Code: Session Not Available (S)"
  end

  return "Reject Reason Code: Unknown("..value..")"
end

-- Dissect: Reject Reason Code
nasdaq_phlxoptions_quoting_sqf_v9_0.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Replenishment Value
nasdaq_phlxoptions_quoting_sqf_v9_0.replenishment_value = {}

-- Size: Replenishment Value
nasdaq_phlxoptions_quoting_sqf_v9_0.replenishment_value.size = 4

-- Display: Replenishment Value
nasdaq_phlxoptions_quoting_sqf_v9_0.replenishment_value.display = function(value)
  return "Replenishment Value: "..value
end

-- Dissect: Replenishment Value
nasdaq_phlxoptions_quoting_sqf_v9_0.replenishment_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.replenishment_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.replenishment_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.replenishment_value, range, value, display)

  return offset + length, value
end

-- Requested Replenishment Value
nasdaq_phlxoptions_quoting_sqf_v9_0.requested_replenishment_value = {}

-- Size: Requested Replenishment Value
nasdaq_phlxoptions_quoting_sqf_v9_0.requested_replenishment_value.size = 4

-- Display: Requested Replenishment Value
nasdaq_phlxoptions_quoting_sqf_v9_0.requested_replenishment_value.display = function(value)
  return "Requested Replenishment Value: "..value
end

-- Dissect: Requested Replenishment Value
nasdaq_phlxoptions_quoting_sqf_v9_0.requested_replenishment_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.requested_replenishment_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.requested_replenishment_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.requested_replenishment_value, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_phlxoptions_quoting_sqf_v9_0.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_phlxoptions_quoting_sqf_v9_0.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_phlxoptions_quoting_sqf_v9_0.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_phlxoptions_quoting_sqf_v9_0.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_phlxoptions_quoting_sqf_v9_0.requested_session = {}

-- Size: Requested Session
nasdaq_phlxoptions_quoting_sqf_v9_0.requested_session.size = 10

-- Display: Requested Session
nasdaq_phlxoptions_quoting_sqf_v9_0.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_phlxoptions_quoting_sqf_v9_0.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.requested_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved 1
nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_1 = {}

-- Size: Reserved 1
nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_1.size = 1

-- Display: Reserved 1
nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 16
nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_16 = {}

-- Size: Reserved 16
nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_16.size = 16

-- Display: Reserved 16
nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_16.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Reserved 32
nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_32 = {}

-- Size: Reserved 32
nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_32.size = 32

-- Display: Reserved 32
nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_32.display = function(value)
  return "Reserved 32: "..value
end

-- Dissect: Reserved 32
nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_32.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_32.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.reserved_32, range, value, display)

  return offset + length, value
end

-- Reserved 4
nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_4 = {}

-- Size: Reserved 4
nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_4.size = 4

-- Display: Reserved 4
nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Reserved 8
nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_8 = {}

-- Size: Reserved 8
nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_8.size = 8

-- Display: Reserved 8
nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Reserved 9
nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_9 = {}

-- Size: Reserved 9
nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_9.size = 9

-- Display: Reserved 9
nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_9.display = function(value)
  return "Reserved 9: "..value
end

-- Dissect: Reserved 9
nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_9.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_9.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_9.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.reserved_9, range, value, display)

  return offset + length, value
end

-- Seconds
nasdaq_phlxoptions_quoting_sqf_v9_0.seconds = {}

-- Size: Seconds
nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.size = 4

-- Display: Seconds
nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.seconds, range, value, display)

  return offset + length, value
end

-- Security Symbol
nasdaq_phlxoptions_quoting_sqf_v9_0.security_symbol = {}

-- Size: Security Symbol
nasdaq_phlxoptions_quoting_sqf_v9_0.security_symbol.size = 8

-- Display: Security Symbol
nasdaq_phlxoptions_quoting_sqf_v9_0.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_phlxoptions_quoting_sqf_v9_0.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sent Timestamp
nasdaq_phlxoptions_quoting_sqf_v9_0.sent_timestamp = {}

-- Size: Sent Timestamp
nasdaq_phlxoptions_quoting_sqf_v9_0.sent_timestamp.size = 8

-- Display: Sent Timestamp
nasdaq_phlxoptions_quoting_sqf_v9_0.sent_timestamp.display = function(value)
  return "Sent Timestamp: "..value
end

-- Dissect: Sent Timestamp
nasdaq_phlxoptions_quoting_sqf_v9_0.sent_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.sent_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.sent_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.sent_timestamp, range, value, display)

  return offset + length, value
end

-- Sequence
nasdaq_phlxoptions_quoting_sqf_v9_0.sequence = {}

-- Size: Sequence
nasdaq_phlxoptions_quoting_sqf_v9_0.sequence.size = 8

-- Display: Sequence
nasdaq_phlxoptions_quoting_sqf_v9_0.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
nasdaq_phlxoptions_quoting_sqf_v9_0.sequence.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.sequence.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.sequence, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
nasdaq_phlxoptions_quoting_sqf_v9_0.sequenced_message_type = {}

-- Size: Sequenced Message Type
nasdaq_phlxoptions_quoting_sqf_v9_0.sequenced_message_type.size = 2

-- Display: Sequenced Message Type
nasdaq_phlxoptions_quoting_sqf_v9_0.sequenced_message_type.display = function(value)
  if value == "SA" then
    return "Sequenced Message Type: Msar Accept Message (SA)"
  end
  if value == "SR" then
    return "Sequenced Message Type: Msar Reject Message (SR)"
  end
  if value == "SY" then
    return "Sequenced Message Type: Complex Msar Accept Message (SY)"
  end
  if value == "SN" then
    return "Sequenced Message Type: Complex Msar Reject Message (SN)"
  end
  if value == "AP" then
    return "Sequenced Message Type: Underlying Permission Notification Message (AP)"
  end
  if value == "AJ" then
    return "Sequenced Message Type: Mm Parameter Definition Notification Message (AJ)"
  end
  if value == "Af" then
    return "Sequenced Message Type: Rapid Fire Config Notification Message (Af)"
  end
  if value == "AK" then
    return "Sequenced Message Type: Active Qp Self Replenishment Parameter Definition Notification Message (AK)"
  end
  if value == "AS" then
    return "Sequenced Message Type: System Event Message (AS)"
  end
  if value == "AD" then
    return "Sequenced Message Type: Simple Instrument Directory Message (AD)"
  end
  if value == "AR" then
    return "Sequenced Message Type: Complex Instrument Directory Message (AR)"
  end
  if value == "AH" then
    return "Sequenced Message Type: Simple Instrument Trading Action Message (AH)"
  end
  if value == "AI" then
    return "Sequenced Message Type: Complex Instrument Trading Action Message (AI)"
  end
  if value == "NE" then
    return "Sequenced Message Type: Simple Quote Execution Notification Message (NE)"
  end
  if value == "NV" then
    return "Sequenced Message Type: Complex Quote Execution Notification Message (NV)"
  end
  if value == "NW" then
    return "Sequenced Message Type: Complex Quote Leg Execution Notification Message (NW)"
  end
  if value == "NS" then
    return "Sequenced Message Type: Simple Msar Notification Message (NS)"
  end
  if value == "NL" then
    return "Sequenced Message Type: Complex Msar Leg Notification Message (NL)"
  end
  if value == "NX" then
    return "Sequenced Message Type: Complex Msar Notification Message (NX)"
  end
  if value == "AM" then
    return "Sequenced Message Type: Opening Rotation Quote Spread Multiplier Notification Message (AM)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
nasdaq_phlxoptions_quoting_sqf_v9_0.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
nasdaq_phlxoptions_quoting_sqf_v9_0.server_packet_type = {}

-- Size: Server Packet Type
nasdaq_phlxoptions_quoting_sqf_v9_0.server_packet_type.size = 1

-- Display: Server Packet Type
nasdaq_phlxoptions_quoting_sqf_v9_0.server_packet_type.display = function(value)
  if value == "+" then
    return "Packet Type: Debug Packet (+)"
  end
  if value == "A" then
    return "Packet Type: Login Accepted Packet (A)"
  end
  if value == "J" then
    return "Packet Type: Login Rejected Packet (J)"
  end
  if value == "S" then
    return "Packet Type: Sequenced Data Packet (S)"
  end
  if value == "U" then
    return "Packet Type: Unsequenced Data Packet (U)"
  end
  if value == "H" then
    return "Packet Type: Server Heartbeat Packet (H)"
  end
  if value == "Z" then
    return "Packet Type: End Of Session Packet (Z)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Server Packet Type
nasdaq_phlxoptions_quoting_sqf_v9_0.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Server Unsequenced Message Type
nasdaq_phlxoptions_quoting_sqf_v9_0.server_unsequenced_message_type = {}

-- Size: Server Unsequenced Message Type
nasdaq_phlxoptions_quoting_sqf_v9_0.server_unsequenced_message_type.size = 2

-- Display: Server Unsequenced Message Type
nasdaq_phlxoptions_quoting_sqf_v9_0.server_unsequenced_message_type.display = function(value)
  if value == "Ab" then
    return "Server Unsequenced Message Type: Notification Subscription Reply Message (Ab)"
  end
  if value == "Ac" then
    return "Server Unsequenced Message Type: Add Complex Instrument Reply Message (Ac)"
  end
  if value == "Ae" then
    return "Server Unsequenced Message Type: Mm Parameter Definition Reply Message (Ae)"
  end
  if value == "Ag" then
    return "Server Unsequenced Message Type: Active Qp Self Replenishment Set Limit Reply Message (Ag)"
  end
  if value == "AA" then
    return "Server Unsequenced Message Type: Rapid Fire Config Reply Message (AA)"
  end
  if value == "QS" then
    return "Server Unsequenced Message Type: Quote Block Reply Message (QS)"
  end
  if value == "Qs" then
    return "Server Unsequenced Message Type: Detailed Quote Block Reply Message (Qs)"
  end
  if value == "Pr" then
    return "Server Unsequenced Message Type: Underlying Purge Reply Message (Pr)"
  end
  if value == "RR" then
    return "Server Unsequenced Message Type: Market Reentry Reply Message (RR)"
  end
  if value == "Rg" then
    return "Server Unsequenced Message Type: Active Qp Self Replenishment Request Reentry Reply Message (Rg)"
  end
  if value == "NA" then
    return "Server Unsequenced Message Type: Auction Notification Message (NA)"
  end
  if value == "ND" then
    return "Server Unsequenced Message Type: Instrument Purge Notification Message (ND)"
  end
  if value == "NU" then
    return "Server Unsequenced Message Type: Underlying Purge Notification Message (NU)"
  end
  if value == "NR" then
    return "Server Unsequenced Message Type: Market Reentry Notification Message (NR)"
  end

  return "Server Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Server Unsequenced Message Type
nasdaq_phlxoptions_quoting_sqf_v9_0.server_unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.server_unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.server_unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.server_unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Set Contract Limit
nasdaq_phlxoptions_quoting_sqf_v9_0.set_contract_limit = {}

-- Size: Set Contract Limit
nasdaq_phlxoptions_quoting_sqf_v9_0.set_contract_limit.size = 4

-- Display: Set Contract Limit
nasdaq_phlxoptions_quoting_sqf_v9_0.set_contract_limit.display = function(value)
  return "Set Contract Limit: "..value
end

-- Dissect: Set Contract Limit
nasdaq_phlxoptions_quoting_sqf_v9_0.set_contract_limit.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.set_contract_limit.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.set_contract_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.set_contract_limit, range, value, display)

  return offset + length, value
end

-- Set Value
nasdaq_phlxoptions_quoting_sqf_v9_0.set_value = {}

-- Size: Set Value
nasdaq_phlxoptions_quoting_sqf_v9_0.set_value.size = 4

-- Display: Set Value
nasdaq_phlxoptions_quoting_sqf_v9_0.set_value.display = function(value)
  return "Set Value: "..value
end

-- Dissect: Set Value
nasdaq_phlxoptions_quoting_sqf_v9_0.set_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.set_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.set_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.set_value, range, value, display)

  return offset + length, value
end

-- Side
nasdaq_phlxoptions_quoting_sqf_v9_0.side = {}

-- Size: Side
nasdaq_phlxoptions_quoting_sqf_v9_0.side.size = 1

-- Display: Side
nasdaq_phlxoptions_quoting_sqf_v9_0.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end
  if value == "*" then
    return "Side: Not Disclosed (*)"
  end
  if value == "T" then
    return "Side: Buy Short (T)"
  end
  if value == "X" then
    return "Side: Buy Short Exempt (X)"
  end
  if value == "Y" then
    return "Side: Sell Short (Y)"
  end
  if value == "Z" then
    return "Side: Sell Short Exempt (Z)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nasdaq_phlxoptions_quoting_sqf_v9_0.side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.side, range, value, display)

  return offset + length, value
end

-- Status Code
nasdaq_phlxoptions_quoting_sqf_v9_0.status_code = {}

-- Size: Status Code
nasdaq_phlxoptions_quoting_sqf_v9_0.status_code.size = 1

-- Display: Status Code
nasdaq_phlxoptions_quoting_sqf_v9_0.status_code.display = function(value)
  if value == " " then
    return "Status Code: Valid Request (<whitespace>)"
  end
  if value == "A" then
    return "Status Code: Invalid Badge (A)"
  end
  if value == "B" then
    return "Status Code: Invalid Instrument Underlying (B)"
  end
  if value == "C" then
    return "Status Code: Not Permitted (C)"
  end
  if value == "D" then
    return "Status Code: Invalid Side (D)"
  end
  if value == "E" then
    return "Status Code: Invalid Size (E)"
  end
  if value == "F" then
    return "Status Code: Invalid Price (F)"
  end
  if value == "G" then
    return "Status Code: Invalid Spread (G)"
  end
  if value == "H" then
    return "Status Code: Invalid Indicator Attribute (H)"
  end
  if value == "I" then
    return "Status Code: Reentry Required (I)"
  end
  if value == "J" then
    return "Status Code: Opening Rotation In Progress (J)"
  end
  if value == "K" then
    return "Status Code: Kill Switch Reentry Required (K)"
  end
  if value == "L" then
    return "Status Code: Full Replenishment Required (L)"
  end
  if value == "M" then
    return "Status Code: Active Counter Exceeded (M)"
  end
  if value == "N" then
    return "Status Code: Too Late To Act (N)"
  end
  if value == "P" then
    return "Status Code: Not In Free Trading (P)"
  end
  if value == "Q" then
    return "Status Code: Invalid Auction Information (Q)"
  end
  if value == "R" then
    return "Status Code: Market Closed (R)"
  end
  if value == "S" then
    return "Status Code: Post Only Reprice (S)"
  end
  if value == "T" then
    return "Status Code: Request Pending (T)"
  end
  if value == "Y" then
    return "Status Code: Invalid Format Bad Block (Y)"
  end
  if value == "Z" then
    return "Status Code: System Error (Z)"
  end

  return "Status Code: Unknown("..value..")"
end

-- Dissect: Status Code
nasdaq_phlxoptions_quoting_sqf_v9_0.status_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.status_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.status_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.status_code, range, value, display)

  return offset + length, value
end

-- Stock Leg Short Sale
nasdaq_phlxoptions_quoting_sqf_v9_0.stock_leg_short_sale = {}

-- Size: Stock Leg Short Sale
nasdaq_phlxoptions_quoting_sqf_v9_0.stock_leg_short_sale.size = 1

-- Display: Stock Leg Short Sale
nasdaq_phlxoptions_quoting_sqf_v9_0.stock_leg_short_sale.display = function(value)
  if value == "N" then
    return "Stock Leg Short Sale: Not Applicable (N)"
  end
  if value == "H" then
    return "Stock Leg Short Sale: Sell Short (H)"
  end
  if value == "E" then
    return "Stock Leg Short Sale: Sell Short Exempt (E)"
  end

  return "Stock Leg Short Sale: Unknown("..value..")"
end

-- Dissect: Stock Leg Short Sale
nasdaq_phlxoptions_quoting_sqf_v9_0.stock_leg_short_sale.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.stock_leg_short_sale.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.stock_leg_short_sale.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.stock_leg_short_sale, range, value, display)

  return offset + length, value
end

-- Strike Price
nasdaq_phlxoptions_quoting_sqf_v9_0.strike_price = {}

-- Size: Strike Price
nasdaq_phlxoptions_quoting_sqf_v9_0.strike_price.size = 4

-- Display: Strike Price
nasdaq_phlxoptions_quoting_sqf_v9_0.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
nasdaq_phlxoptions_quoting_sqf_v9_0.strike_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Strike Price
nasdaq_phlxoptions_quoting_sqf_v9_0.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.strike_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_phlxoptions_quoting_sqf_v9_0.strike_price.translate(raw)
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Subscription
nasdaq_phlxoptions_quoting_sqf_v9_0.subscription = {}

-- Size: Subscription
nasdaq_phlxoptions_quoting_sqf_v9_0.subscription.size = 24

-- Display: Subscription
nasdaq_phlxoptions_quoting_sqf_v9_0.subscription.display = function(value)
  return "Subscription: "..value
end

-- Dissect: Subscription
nasdaq_phlxoptions_quoting_sqf_v9_0.subscription.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.subscription.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.subscription.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.subscription, range, value, display)

  return offset + length, value
end

-- Subversion
nasdaq_phlxoptions_quoting_sqf_v9_0.subversion = {}

-- Size: Subversion
nasdaq_phlxoptions_quoting_sqf_v9_0.subversion.size = 1

-- Display: Subversion
nasdaq_phlxoptions_quoting_sqf_v9_0.subversion.display = function(value)
  return "Subversion: "..value
end

-- Dissect: Subversion
nasdaq_phlxoptions_quoting_sqf_v9_0.subversion.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.subversion.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.subversion.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.subversion, range, value, display)

  return offset + length, value
end

-- Tradable
nasdaq_phlxoptions_quoting_sqf_v9_0.tradable = {}

-- Size: Tradable
nasdaq_phlxoptions_quoting_sqf_v9_0.tradable.size = 1

-- Display: Tradable
nasdaq_phlxoptions_quoting_sqf_v9_0.tradable.display = function(value)
  if value == "Y" then
    return "Tradable: Tradable (Y)"
  end
  if value == "N" then
    return "Tradable: Not Tradable (N)"
  end

  return "Tradable: Unknown("..value..")"
end

-- Dissect: Tradable
nasdaq_phlxoptions_quoting_sqf_v9_0.tradable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.tradable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.tradable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.tradable, range, value, display)

  return offset + length, value
end

-- Trading State
nasdaq_phlxoptions_quoting_sqf_v9_0.trading_state = {}

-- Size: Trading State
nasdaq_phlxoptions_quoting_sqf_v9_0.trading_state.size = 1

-- Display: Trading State
nasdaq_phlxoptions_quoting_sqf_v9_0.trading_state.display = function(value)
  if value == "H" then
    return "Trading State: Halt In Effect (H)"
  end
  if value == "T" then
    return "Trading State: Trading Resumed (T)"
  end

  return "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
nasdaq_phlxoptions_quoting_sqf_v9_0.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Underlying
nasdaq_phlxoptions_quoting_sqf_v9_0.underlying = {}

-- Size: Underlying
nasdaq_phlxoptions_quoting_sqf_v9_0.underlying.size = 13

-- Display: Underlying
nasdaq_phlxoptions_quoting_sqf_v9_0.underlying.display = function(value)
  return "Underlying: "..value
end

-- Dissect: Underlying
nasdaq_phlxoptions_quoting_sqf_v9_0.underlying.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.underlying.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.underlying, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_symbol = {}

-- Size: Underlying Symbol
nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_symbol.size = 13

-- Display: Underlying Symbol
nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
nasdaq_phlxoptions_quoting_sqf_v9_0.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nasdaq_phlxoptions_quoting_sqf_v9_0.unsequenced_message_type.size = 2

-- Display: Unsequenced Message Type
nasdaq_phlxoptions_quoting_sqf_v9_0.unsequenced_message_type.display = function(value)
  if value == "AB" then
    return "Unsequenced Message Type: Notification Subscription Request Message (AB)"
  end
  if value == "AC" then
    return "Unsequenced Message Type: Add Complex Instrument Request Message (AC)"
  end
  if value == "AE" then
    return "Unsequenced Message Type: Mm Parameter Definition Request Message (AE)"
  end
  if value == "AG" then
    return "Unsequenced Message Type: Active Qp Self Replenishment Set Limit Message (AG)"
  end
  if value == "AF" then
    return "Unsequenced Message Type: Rapid Fire Config Request Message (AF)"
  end
  if value == "QA" then
    return "Unsequenced Message Type: Simple Quote Block Short Form Message (QA)"
  end
  if value == "Qa" then
    return "Unsequenced Message Type: Simple Quote Block Short Form Detailed Message (Qa)"
  end
  if value == "QM" then
    return "Unsequenced Message Type: Simple Quote Block Long Form Message (QM)"
  end
  if value == "Qm" then
    return "Unsequenced Message Type: Simple Quote Block Long Form Detailed Message (Qm)"
  end
  if value == "QD" then
    return "Unsequenced Message Type: Complex Quote Block Message (QD)"
  end
  if value == "Qd" then
    return "Unsequenced Message Type: Complex Quote Block Detailed Message (Qd)"
  end
  if value == "Pu" then
    return "Unsequenced Message Type: Underlying Purge Request Message (Pu)"
  end
  if value == "RU" then
    return "Unsequenced Message Type: Market Reentry Request Message (RU)"
  end
  if value == "RG" then
    return "Unsequenced Message Type: Active Qp Self Replenishment Request Reentry Message (RG)"
  end
  if value == "SB" then
    return "Unsequenced Message Type: Simple Msar Request Message (SB)"
  end
  if value == "SX" then
    return "Unsequenced Message Type: Complex Msar Request Message (SX)"
  end

  return "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
nasdaq_phlxoptions_quoting_sqf_v9_0.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_phlxoptions_quoting_sqf_v9_0.username = {}

-- Size: Username
nasdaq_phlxoptions_quoting_sqf_v9_0.username.size = 6

-- Display: Username
nasdaq_phlxoptions_quoting_sqf_v9_0.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_phlxoptions_quoting_sqf_v9_0.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.username, range, value, display)

  return offset + length, value
end

-- Valid Quote Count
nasdaq_phlxoptions_quoting_sqf_v9_0.valid_quote_count = {}

-- Size: Valid Quote Count
nasdaq_phlxoptions_quoting_sqf_v9_0.valid_quote_count.size = 2

-- Display: Valid Quote Count
nasdaq_phlxoptions_quoting_sqf_v9_0.valid_quote_count.display = function(value)
  return "Valid Quote Count: "..value
end

-- Dissect: Valid Quote Count
nasdaq_phlxoptions_quoting_sqf_v9_0.valid_quote_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.valid_quote_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.valid_quote_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.valid_quote_count, range, value, display)

  return offset + length, value
end

-- Vega
nasdaq_phlxoptions_quoting_sqf_v9_0.vega = {}

-- Size: Vega
nasdaq_phlxoptions_quoting_sqf_v9_0.vega.size = 4

-- Display: Vega
nasdaq_phlxoptions_quoting_sqf_v9_0.vega.display = function(value)
  return "Vega: "..value
end

-- Dissect: Vega
nasdaq_phlxoptions_quoting_sqf_v9_0.vega.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.vega.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.vega.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.vega, range, value, display)

  return offset + length, value
end

-- Version
nasdaq_phlxoptions_quoting_sqf_v9_0.version = {}

-- Size: Version
nasdaq_phlxoptions_quoting_sqf_v9_0.version.size = 1

-- Display: Version
nasdaq_phlxoptions_quoting_sqf_v9_0.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
nasdaq_phlxoptions_quoting_sqf_v9_0.version.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.version, range, value, display)

  return offset + length, value
end

-- Volume
nasdaq_phlxoptions_quoting_sqf_v9_0.volume = {}

-- Size: Volume
nasdaq_phlxoptions_quoting_sqf_v9_0.volume.size = 4

-- Display: Volume
nasdaq_phlxoptions_quoting_sqf_v9_0.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nasdaq_phlxoptions_quoting_sqf_v9_0.volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_quoting_sqf_v9_0.volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.volume, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq PhlxOptions Quoting Sqf 9.0
-----------------------------------------------------------------------

-- End Of Session Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.end_of_session_packet = {}

-- Display: End Of Session Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.end_of_session_packet.display = function(packet, parent, length)
  return "End Of Session Packet"
end


-- Dissect: End Of Session Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.end_of_session_packet.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.end_of_session_packet.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.server_heartbeat_packet = {}

-- Display: Server Heartbeat Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.server_heartbeat_packet.display = function(packet, parent, length)
  return "Server Heartbeat Packet"
end


-- Dissect: Server Heartbeat Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.server_heartbeat_packet.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.server_heartbeat_packet.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Market Reentry Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.market_reentry_notification_message = {}

-- Size: Market Reentry Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.market_reentry_notification_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_symbol.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.reentry_scope.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_8.size

-- Display: Market Reentry Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.market_reentry_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Reentry Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.market_reentry_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.dissect(buffer, index, packet, parent)

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Reentry Scope: Alphanumeric
  index, reentry_scope = nasdaq_phlxoptions_quoting_sqf_v9_0.reentry_scope.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Reserved 8: Alpha
  index, reserved_8 = nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Reentry Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.market_reentry_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.market_reentry_notification_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.market_reentry_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.market_reentry_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.market_reentry_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Purge Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_purge_notification_message = {}

-- Size: Underlying Purge Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_purge_notification_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.underlying.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.purge_reason.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.sequence.size

-- Display: Underlying Purge Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_purge_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Purge Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_purge_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.dissect(buffer, index, packet, parent)

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Underlying: Alphanumeric
  index, underlying = nasdaq_phlxoptions_quoting_sqf_v9_0.underlying.dissect(buffer, index, packet, parent)

  -- Purge Reason: Alphanumeric
  index, purge_reason = nasdaq_phlxoptions_quoting_sqf_v9_0.purge_reason.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Sequence: Integer
  index, sequence = nasdaq_phlxoptions_quoting_sqf_v9_0.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Purge Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_purge_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.underlying_purge_notification_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_purge_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_purge_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_purge_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Purge Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_purge_notification_message = {}

-- Size: Instrument Purge Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_purge_notification_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.purge_reason.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.sequence.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_16.size

-- Display: Instrument Purge Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_purge_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Purge Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_purge_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.dissect(buffer, index, packet, parent)

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Purge Reason: Alphanumeric
  index, purge_reason = nasdaq_phlxoptions_quoting_sqf_v9_0.purge_reason.dissect(buffer, index, packet, parent)

  -- Sequence: Integer
  index, sequence = nasdaq_phlxoptions_quoting_sqf_v9_0.sequence.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alpha
  index, reserved_16 = nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Purge Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_purge_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.instrument_purge_notification_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_purge_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_purge_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_purge_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Flex Dac Legs
nasdaq_phlxoptions_quoting_sqf_v9_0.flex_dac_legs = {}

-- Size: Flex Dac Legs
nasdaq_phlxoptions_quoting_sqf_v9_0.flex_dac_legs.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_8.size

-- Display: Flex Dac Legs
nasdaq_phlxoptions_quoting_sqf_v9_0.flex_dac_legs.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Flex Dac Legs
nasdaq_phlxoptions_quoting_sqf_v9_0.flex_dac_legs.fields = function(buffer, offset, packet, parent, flex_dac_legs_index)
  local index = offset

  -- Implicit Flex Dac Legs Index
  if flex_dac_legs_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.flex_dac_legs_index, flex_dac_legs_index)
    iteration:set_generated()
  end

  -- Reserved 8: Alpha
  index, reserved_8 = nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Flex Dac Legs
nasdaq_phlxoptions_quoting_sqf_v9_0.flex_dac_legs.dissect = function(buffer, offset, packet, parent, flex_dac_legs_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.flex_dac_legs, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.flex_dac_legs.fields(buffer, offset, packet, parent, flex_dac_legs_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.flex_dac_legs.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.flex_dac_legs.fields(buffer, offset, packet, parent, flex_dac_legs_index)
  end
end

-- Auction Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.auction_notification_message = {}

-- Calculate size of: Auction Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.auction_notification_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_type.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.auction_id.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.order_type.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.side.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.price.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.matched_volume.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.volume.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.exec_flag.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.order_capacity.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.firm_id.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.occ_account.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.cmta.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.auction_event.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.auction_type.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.auction_duration.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.best_response_price.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.best_response_size.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_9.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.number_of_flex_dac_legs.size

  -- Calculate field size from count
  local flex_dac_legs_count = buffer(offset + index - 1, 1):uint()
  index = index + flex_dac_legs_count * 8

  return index
end

-- Display: Auction Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.auction_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.auction_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alpha
  index, instrument_type = nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_type.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_phlxoptions_quoting_sqf_v9_0.auction_id.dissect(buffer, index, packet, parent)

  -- Order Type: Alpha
  index, order_type = nasdaq_phlxoptions_quoting_sqf_v9_0.order_type.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_phlxoptions_quoting_sqf_v9_0.side.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_phlxoptions_quoting_sqf_v9_0.price.dissect(buffer, index, packet, parent)

  -- Matched Volume: Integer
  index, matched_volume = nasdaq_phlxoptions_quoting_sqf_v9_0.matched_volume.dissect(buffer, index, packet, parent)

  -- Volume: Integer
  index, volume = nasdaq_phlxoptions_quoting_sqf_v9_0.volume.dissect(buffer, index, packet, parent)

  -- Exec Flag: Alpha
  index, exec_flag = nasdaq_phlxoptions_quoting_sqf_v9_0.exec_flag.dissect(buffer, index, packet, parent)

  -- Order Capacity: Alpha
  index, order_capacity = nasdaq_phlxoptions_quoting_sqf_v9_0.order_capacity.dissect(buffer, index, packet, parent)

  -- Firm Id: Alphanumeric
  index, firm_id = nasdaq_phlxoptions_quoting_sqf_v9_0.firm_id.dissect(buffer, index, packet, parent)

  -- Occ Account: Integer
  index, occ_account = nasdaq_phlxoptions_quoting_sqf_v9_0.occ_account.dissect(buffer, index, packet, parent)

  -- Cmta: Integer
  index, cmta = nasdaq_phlxoptions_quoting_sqf_v9_0.cmta.dissect(buffer, index, packet, parent)

  -- Auction Event: Alpha
  index, auction_event = nasdaq_phlxoptions_quoting_sqf_v9_0.auction_event.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = nasdaq_phlxoptions_quoting_sqf_v9_0.auction_type.dissect(buffer, index, packet, parent)

  -- Auction Duration: Integer
  index, auction_duration = nasdaq_phlxoptions_quoting_sqf_v9_0.auction_duration.dissect(buffer, index, packet, parent)

  -- Best Response Price: Price
  index, best_response_price = nasdaq_phlxoptions_quoting_sqf_v9_0.best_response_price.dissect(buffer, index, packet, parent)

  -- Best Response Size: Integer
  index, best_response_size = nasdaq_phlxoptions_quoting_sqf_v9_0.best_response_size.dissect(buffer, index, packet, parent)

  -- Reserved 9: Integer
  index, reserved_9 = nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_9.dissect(buffer, index, packet, parent)

  -- Number Of Flex Dac Legs: Integer
  index, number_of_flex_dac_legs = nasdaq_phlxoptions_quoting_sqf_v9_0.number_of_flex_dac_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Flex Dac Legs
  for flex_dac_legs_index = 1, number_of_flex_dac_legs do
    index, flex_dac_legs = nasdaq_phlxoptions_quoting_sqf_v9_0.flex_dac_legs.dissect(buffer, index, packet, parent, flex_dac_legs_index)
  end

  return index
end

-- Dissect: Auction Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.auction_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.auction_notification_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.auction_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.auction_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.auction_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Active Qp Self Replenishment Request Reentry Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_request_reentry_reply_message = {}

-- Size: Active Qp Self Replenishment Request Reentry Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_request_reentry_reply_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_symbol.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.status_code.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.requested_replenishment_value.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.active_counter_value.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.set_contract_limit.size

-- Display: Active Qp Self Replenishment Request Reentry Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_request_reentry_reply_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Active Qp Self Replenishment Request Reentry Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_request_reentry_reply_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Status Code: Alphanumeric
  index, status_code = nasdaq_phlxoptions_quoting_sqf_v9_0.status_code.dissect(buffer, index, packet, parent)

  -- Requested Replenishment Value: Integer
  index, requested_replenishment_value = nasdaq_phlxoptions_quoting_sqf_v9_0.requested_replenishment_value.dissect(buffer, index, packet, parent)

  -- Active Counter Value: Integer
  index, active_counter_value = nasdaq_phlxoptions_quoting_sqf_v9_0.active_counter_value.dissect(buffer, index, packet, parent)

  -- Set Contract Limit: Integer
  index, set_contract_limit = nasdaq_phlxoptions_quoting_sqf_v9_0.set_contract_limit.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Active Qp Self Replenishment Request Reentry Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_request_reentry_reply_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.active_qp_self_replenishment_request_reentry_reply_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_request_reentry_reply_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_request_reentry_reply_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_request_reentry_reply_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Reentry Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.market_reentry_reply_message = {}

-- Size: Market Reentry Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.market_reentry_reply_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.status_code.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_8.size

-- Display: Market Reentry Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.market_reentry_reply_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Reentry Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.market_reentry_reply_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Status Code: Alphanumeric
  index, status_code = nasdaq_phlxoptions_quoting_sqf_v9_0.status_code.dissect(buffer, index, packet, parent)

  -- Reserved 8: Alpha
  index, reserved_8 = nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Reentry Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.market_reentry_reply_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.market_reentry_reply_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.market_reentry_reply_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.market_reentry_reply_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.market_reentry_reply_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Purge Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_purge_reply_message = {}

-- Size: Underlying Purge Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_purge_reply_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.sent_timestamp.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.status_code.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.sequence.size

-- Display: Underlying Purge Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_purge_reply_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Purge Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_purge_reply_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Sent Timestamp: Integer
  index, sent_timestamp = nasdaq_phlxoptions_quoting_sqf_v9_0.sent_timestamp.dissect(buffer, index, packet, parent)

  -- Status Code: Alphanumeric
  index, status_code = nasdaq_phlxoptions_quoting_sqf_v9_0.status_code.dissect(buffer, index, packet, parent)

  -- Sequence: Integer
  index, sequence = nasdaq_phlxoptions_quoting_sqf_v9_0.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Purge Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_purge_reply_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.underlying_purge_reply_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_purge_reply_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_purge_reply_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_purge_reply_message.fields(buffer, offset, packet, parent)
  end
end

-- Detailed Quote Responses
nasdaq_phlxoptions_quoting_sqf_v9_0.detailed_quote_responses = {}

-- Size: Detailed Quote Responses
nasdaq_phlxoptions_quoting_sqf_v9_0.detailed_quote_responses.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.quote_status_code.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.sequence.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.bid_sequence.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.ask_sequence.size

-- Display: Detailed Quote Responses
nasdaq_phlxoptions_quoting_sqf_v9_0.detailed_quote_responses.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Detailed Quote Responses
nasdaq_phlxoptions_quoting_sqf_v9_0.detailed_quote_responses.fields = function(buffer, offset, packet, parent, detailed_quote_responses_index)
  local index = offset

  -- Implicit Detailed Quote Responses Index
  if detailed_quote_responses_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.detailed_quote_responses_index, detailed_quote_responses_index)
    iteration:set_generated()
  end

  -- Quote Status Code: Alphanumeric
  index, quote_status_code = nasdaq_phlxoptions_quoting_sqf_v9_0.quote_status_code.dissect(buffer, index, packet, parent)

  -- Sequence: Integer
  index, sequence = nasdaq_phlxoptions_quoting_sqf_v9_0.sequence.dissect(buffer, index, packet, parent)

  -- Bid Sequence: Integer
  index, bid_sequence = nasdaq_phlxoptions_quoting_sqf_v9_0.bid_sequence.dissect(buffer, index, packet, parent)

  -- Ask Sequence: Integer
  index, ask_sequence = nasdaq_phlxoptions_quoting_sqf_v9_0.ask_sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Detailed Quote Responses
nasdaq_phlxoptions_quoting_sqf_v9_0.detailed_quote_responses.dissect = function(buffer, offset, packet, parent, detailed_quote_responses_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.detailed_quote_responses, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.detailed_quote_responses.fields(buffer, offset, packet, parent, detailed_quote_responses_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.detailed_quote_responses.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.detailed_quote_responses.fields(buffer, offset, packet, parent, detailed_quote_responses_index)
  end
end

-- Detailed Quote Block Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.detailed_quote_block_reply_message = {}

-- Calculate size of: Detailed Quote Block Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.detailed_quote_block_reply_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.sent_timestamp.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.block_status_code.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.quote_count.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.valid_quote_count.size

  -- Calculate field size from count
  local detailed_quote_responses_count = buffer(offset + index - 2, 2):uint()
  index = index + detailed_quote_responses_count * 25

  return index
end

-- Display: Detailed Quote Block Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.detailed_quote_block_reply_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Detailed Quote Block Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.detailed_quote_block_reply_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Sent Timestamp: Integer
  index, sent_timestamp = nasdaq_phlxoptions_quoting_sqf_v9_0.sent_timestamp.dissect(buffer, index, packet, parent)

  -- Block Status Code: Alphanumeric
  index, block_status_code = nasdaq_phlxoptions_quoting_sqf_v9_0.block_status_code.dissect(buffer, index, packet, parent)

  -- Quote Count: Integer
  index, quote_count = nasdaq_phlxoptions_quoting_sqf_v9_0.quote_count.dissect(buffer, index, packet, parent)

  -- Valid Quote Count: Integer
  index, valid_quote_count = nasdaq_phlxoptions_quoting_sqf_v9_0.valid_quote_count.dissect(buffer, index, packet, parent)

  -- Repeating: Detailed Quote Responses
  for detailed_quote_responses_index = 1, valid_quote_count do
    index, detailed_quote_responses = nasdaq_phlxoptions_quoting_sqf_v9_0.detailed_quote_responses.dissect(buffer, index, packet, parent, detailed_quote_responses_index)
  end

  return index
end

-- Dissect: Detailed Quote Block Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.detailed_quote_block_reply_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.detailed_quote_block_reply_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.detailed_quote_block_reply_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.detailed_quote_block_reply_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.detailed_quote_block_reply_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Responses
nasdaq_phlxoptions_quoting_sqf_v9_0.quote_responses = {}

-- Size: Quote Responses
nasdaq_phlxoptions_quoting_sqf_v9_0.quote_responses.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.quote_status_code.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.sequence.size

-- Display: Quote Responses
nasdaq_phlxoptions_quoting_sqf_v9_0.quote_responses.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Responses
nasdaq_phlxoptions_quoting_sqf_v9_0.quote_responses.fields = function(buffer, offset, packet, parent, quote_responses_index)
  local index = offset

  -- Implicit Quote Responses Index
  if quote_responses_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.quote_responses_index, quote_responses_index)
    iteration:set_generated()
  end

  -- Quote Status Code: Alphanumeric
  index, quote_status_code = nasdaq_phlxoptions_quoting_sqf_v9_0.quote_status_code.dissect(buffer, index, packet, parent)

  -- Sequence: Integer
  index, sequence = nasdaq_phlxoptions_quoting_sqf_v9_0.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Responses
nasdaq_phlxoptions_quoting_sqf_v9_0.quote_responses.dissect = function(buffer, offset, packet, parent, quote_responses_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.quote_responses, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.quote_responses.fields(buffer, offset, packet, parent, quote_responses_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.quote_responses.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.quote_responses.fields(buffer, offset, packet, parent, quote_responses_index)
  end
end

-- Quote Block Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.quote_block_reply_message = {}

-- Calculate size of: Quote Block Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.quote_block_reply_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.sent_timestamp.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.block_status_code.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.quote_count.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.valid_quote_count.size

  -- Calculate field size from count
  local quote_responses_count = buffer(offset + index - 2, 2):uint()
  index = index + quote_responses_count * 9

  return index
end

-- Display: Quote Block Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.quote_block_reply_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Block Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.quote_block_reply_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Sent Timestamp: Integer
  index, sent_timestamp = nasdaq_phlxoptions_quoting_sqf_v9_0.sent_timestamp.dissect(buffer, index, packet, parent)

  -- Block Status Code: Alphanumeric
  index, block_status_code = nasdaq_phlxoptions_quoting_sqf_v9_0.block_status_code.dissect(buffer, index, packet, parent)

  -- Quote Count: Integer
  index, quote_count = nasdaq_phlxoptions_quoting_sqf_v9_0.quote_count.dissect(buffer, index, packet, parent)

  -- Valid Quote Count: Integer
  index, valid_quote_count = nasdaq_phlxoptions_quoting_sqf_v9_0.valid_quote_count.dissect(buffer, index, packet, parent)

  -- Repeating: Quote Responses
  for quote_responses_index = 1, valid_quote_count do
    index, quote_responses = nasdaq_phlxoptions_quoting_sqf_v9_0.quote_responses.dissect(buffer, index, packet, parent, quote_responses_index)
  end

  return index
end

-- Dissect: Quote Block Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.quote_block_reply_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.quote_block_reply_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.quote_block_reply_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.quote_block_reply_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.quote_block_reply_message.fields(buffer, offset, packet, parent)
  end
end

-- Rapid Fire Config Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.rapid_fire_config_reply_message = {}

-- Size: Rapid Fire Config Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.rapid_fire_config_reply_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.status_code.size

-- Display: Rapid Fire Config Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.rapid_fire_config_reply_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rapid Fire Config Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.rapid_fire_config_reply_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Status Code: Alphanumeric
  index, status_code = nasdaq_phlxoptions_quoting_sqf_v9_0.status_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rapid Fire Config Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.rapid_fire_config_reply_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.rapid_fire_config_reply_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.rapid_fire_config_reply_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.rapid_fire_config_reply_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.rapid_fire_config_reply_message.fields(buffer, offset, packet, parent)
  end
end

-- Active Qp Self Replenishment Set Limit Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_set_limit_reply_message = {}

-- Size: Active Qp Self Replenishment Set Limit Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_set_limit_reply_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_symbol.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.set_value.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.status_code.size

-- Display: Active Qp Self Replenishment Set Limit Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_set_limit_reply_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Active Qp Self Replenishment Set Limit Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_set_limit_reply_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Set Value: Integer
  index, set_value = nasdaq_phlxoptions_quoting_sqf_v9_0.set_value.dissect(buffer, index, packet, parent)

  -- Status Code: Alphanumeric
  index, status_code = nasdaq_phlxoptions_quoting_sqf_v9_0.status_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Active Qp Self Replenishment Set Limit Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_set_limit_reply_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.active_qp_self_replenishment_set_limit_reply_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_set_limit_reply_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_set_limit_reply_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_set_limit_reply_message.fields(buffer, offset, packet, parent)
  end
end

-- Mm Parameter Definition Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.mm_parameter_definition_reply_message = {}

-- Size: Mm Parameter Definition Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.mm_parameter_definition_reply_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.status_code.size

-- Display: Mm Parameter Definition Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.mm_parameter_definition_reply_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mm Parameter Definition Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.mm_parameter_definition_reply_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Status Code: Alphanumeric
  index, status_code = nasdaq_phlxoptions_quoting_sqf_v9_0.status_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mm Parameter Definition Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.mm_parameter_definition_reply_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.mm_parameter_definition_reply_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.mm_parameter_definition_reply_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.mm_parameter_definition_reply_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.mm_parameter_definition_reply_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Complex Instrument Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.add_complex_instrument_reply_message = {}

-- Size: Add Complex Instrument Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.add_complex_instrument_reply_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.status_code.size

-- Display: Add Complex Instrument Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.add_complex_instrument_reply_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Complex Instrument Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.add_complex_instrument_reply_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Status Code: Alphanumeric
  index, status_code = nasdaq_phlxoptions_quoting_sqf_v9_0.status_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Complex Instrument Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.add_complex_instrument_reply_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.add_complex_instrument_reply_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.add_complex_instrument_reply_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.add_complex_instrument_reply_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.add_complex_instrument_reply_message.fields(buffer, offset, packet, parent)
  end
end

-- Notification Subscription Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.notification_subscription_reply_message = {}

-- Size: Notification Subscription Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.notification_subscription_reply_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.status_code.size

-- Display: Notification Subscription Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.notification_subscription_reply_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Notification Subscription Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.notification_subscription_reply_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Status Code: Alphanumeric
  index, status_code = nasdaq_phlxoptions_quoting_sqf_v9_0.status_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Notification Subscription Reply Message
nasdaq_phlxoptions_quoting_sqf_v9_0.notification_subscription_reply_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.notification_subscription_reply_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.notification_subscription_reply_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.notification_subscription_reply_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.notification_subscription_reply_message.fields(buffer, offset, packet, parent)
  end
end

-- Server Unsequenced Message
nasdaq_phlxoptions_quoting_sqf_v9_0.server_unsequenced_message = {}

-- Dissect: Server Unsequenced Message
nasdaq_phlxoptions_quoting_sqf_v9_0.server_unsequenced_message.dissect = function(buffer, offset, packet, parent, server_unsequenced_message_type)
  -- Dissect Notification Subscription Reply Message
  if server_unsequenced_message_type == "Ab" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.notification_subscription_reply_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Complex Instrument Reply Message
  if server_unsequenced_message_type == "Ac" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.add_complex_instrument_reply_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mm Parameter Definition Reply Message
  if server_unsequenced_message_type == "Ae" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.mm_parameter_definition_reply_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Active Qp Self Replenishment Set Limit Reply Message
  if server_unsequenced_message_type == "Ag" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_set_limit_reply_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Rapid Fire Config Reply Message
  if server_unsequenced_message_type == "AA" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.rapid_fire_config_reply_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Block Reply Message
  if server_unsequenced_message_type == "QS" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.quote_block_reply_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Detailed Quote Block Reply Message
  if server_unsequenced_message_type == "Qs" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.detailed_quote_block_reply_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Purge Reply Message
  if server_unsequenced_message_type == "Pr" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_purge_reply_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Reentry Reply Message
  if server_unsequenced_message_type == "RR" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.market_reentry_reply_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Active Qp Self Replenishment Request Reentry Reply Message
  if server_unsequenced_message_type == "Rg" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_request_reentry_reply_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Notification Message
  if server_unsequenced_message_type == "NA" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.auction_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Purge Notification Message
  if server_unsequenced_message_type == "ND" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_purge_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Purge Notification Message
  if server_unsequenced_message_type == "NU" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_purge_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Reentry Notification Message
  if server_unsequenced_message_type == "NR" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.market_reentry_notification_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Unsequenced Data Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.server_unsequenced_data_packet = {}

-- Read runtime size of: Server Unsequenced Data Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.server_unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Server Unsequenced Data Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.server_unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Unsequenced Data Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.server_unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_server_unsequenced_data_packet)
  local index = offset

  -- Server Unsequenced Message Type: 2 Byte Ascii String Enum with 14 values
  index, server_unsequenced_message_type = nasdaq_phlxoptions_quoting_sqf_v9_0.server_unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Server Unsequenced Message: Runtime Type with 14 branches
  index = nasdaq_phlxoptions_quoting_sqf_v9_0.server_unsequenced_message.dissect(buffer, index, packet, parent, server_unsequenced_message_type)

  return index
end

-- Dissect: Server Unsequenced Data Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.server_unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_server_unsequenced_data_packet)
  local size_of_server_unsequenced_data_packet = nasdaq_phlxoptions_quoting_sqf_v9_0.server_unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_server_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.server_unsequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_phlxoptions_quoting_sqf_v9_0.server_unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_server_unsequenced_data_packet)
    parent:set_len(size_of_server_unsequenced_data_packet)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.server_unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_phlxoptions_quoting_sqf_v9_0.server_unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_server_unsequenced_data_packet)

    return index
  end
end

-- Opening Rotation Quote Spread Multiplier Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.opening_rotation_quote_spread_multiplier_notification_message = {}

-- Size: Opening Rotation Quote Spread Multiplier Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.opening_rotation_quote_spread_multiplier_notification_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_symbol.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.multiplier.size

-- Display: Opening Rotation Quote Spread Multiplier Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.opening_rotation_quote_spread_multiplier_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Opening Rotation Quote Spread Multiplier Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.opening_rotation_quote_spread_multiplier_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Multiplier: Integer
  index, multiplier = nasdaq_phlxoptions_quoting_sqf_v9_0.multiplier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Opening Rotation Quote Spread Multiplier Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.opening_rotation_quote_spread_multiplier_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.opening_rotation_quote_spread_multiplier_notification_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.opening_rotation_quote_spread_multiplier_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.opening_rotation_quote_spread_multiplier_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.opening_rotation_quote_spread_multiplier_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Msar Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_notification_message = {}

-- Size: Complex Msar Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_notification_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.notification_type.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.auction_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.price.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.side.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.contracts.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.liquidity_indicator.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.cross_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.match_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.price_6.size

-- Display: Complex Msar Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Msar Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.dissect(buffer, index, packet, parent)

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Notification Type: Alpha
  index, notification_type = nasdaq_phlxoptions_quoting_sqf_v9_0.notification_type.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_phlxoptions_quoting_sqf_v9_0.auction_id.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_phlxoptions_quoting_sqf_v9_0.price.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_phlxoptions_quoting_sqf_v9_0.side.dissect(buffer, index, packet, parent)

  -- Contracts: Integer
  index, contracts = nasdaq_phlxoptions_quoting_sqf_v9_0.contracts.dissect(buffer, index, packet, parent)

  -- Liquidity Indicator: Integer
  index, liquidity_indicator = nasdaq_phlxoptions_quoting_sqf_v9_0.liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Cross Id: Integer
  index, cross_id = nasdaq_phlxoptions_quoting_sqf_v9_0.cross_id.dissect(buffer, index, packet, parent)

  -- Match Id: Integer
  index, match_id = nasdaq_phlxoptions_quoting_sqf_v9_0.match_id.dissect(buffer, index, packet, parent)

  -- Price 6: Integer
  index, price_6 = nasdaq_phlxoptions_quoting_sqf_v9_0.price_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Msar Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.complex_msar_notification_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Msar Leg Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_leg_notification_message = {}

-- Size: Complex Msar Leg Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_leg_notification_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.leg_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.leg_instrument_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.notification_type.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.auction_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.price.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.side.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.leg_side.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.contracts.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.liquidity_indicator.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.cross_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.match_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.price_6.size

-- Display: Complex Msar Leg Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_leg_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Msar Leg Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_leg_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.dissect(buffer, index, packet, parent)

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Leg Id: Integer
  index, leg_id = nasdaq_phlxoptions_quoting_sqf_v9_0.leg_id.dissect(buffer, index, packet, parent)

  -- Leg Instrument Id: Integer
  index, leg_instrument_id = nasdaq_phlxoptions_quoting_sqf_v9_0.leg_instrument_id.dissect(buffer, index, packet, parent)

  -- Notification Type: Alpha
  index, notification_type = nasdaq_phlxoptions_quoting_sqf_v9_0.notification_type.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_phlxoptions_quoting_sqf_v9_0.auction_id.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_phlxoptions_quoting_sqf_v9_0.price.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_phlxoptions_quoting_sqf_v9_0.side.dissect(buffer, index, packet, parent)

  -- Leg Side: Alpha
  index, leg_side = nasdaq_phlxoptions_quoting_sqf_v9_0.leg_side.dissect(buffer, index, packet, parent)

  -- Contracts: Integer
  index, contracts = nasdaq_phlxoptions_quoting_sqf_v9_0.contracts.dissect(buffer, index, packet, parent)

  -- Liquidity Indicator: Integer
  index, liquidity_indicator = nasdaq_phlxoptions_quoting_sqf_v9_0.liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Cross Id: Integer
  index, cross_id = nasdaq_phlxoptions_quoting_sqf_v9_0.cross_id.dissect(buffer, index, packet, parent)

  -- Match Id: Integer
  index, match_id = nasdaq_phlxoptions_quoting_sqf_v9_0.match_id.dissect(buffer, index, packet, parent)

  -- Price 6: Integer
  index, price_6 = nasdaq_phlxoptions_quoting_sqf_v9_0.price_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Msar Leg Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_leg_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.complex_msar_leg_notification_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_leg_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_leg_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_leg_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Msar Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_msar_notification_message = {}

-- Size: Simple Msar Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_msar_notification_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.notification_type.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.auction_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.price.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.side.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.contracts.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.liquidity_indicator.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.cross_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.match_id.size

-- Display: Simple Msar Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_msar_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Msar Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_msar_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.dissect(buffer, index, packet, parent)

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Notification Type: Alpha
  index, notification_type = nasdaq_phlxoptions_quoting_sqf_v9_0.notification_type.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_phlxoptions_quoting_sqf_v9_0.auction_id.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_phlxoptions_quoting_sqf_v9_0.price.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_phlxoptions_quoting_sqf_v9_0.side.dissect(buffer, index, packet, parent)

  -- Contracts: Integer
  index, contracts = nasdaq_phlxoptions_quoting_sqf_v9_0.contracts.dissect(buffer, index, packet, parent)

  -- Liquidity Indicator: Integer
  index, liquidity_indicator = nasdaq_phlxoptions_quoting_sqf_v9_0.liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Cross Id: Integer
  index, cross_id = nasdaq_phlxoptions_quoting_sqf_v9_0.cross_id.dissect(buffer, index, packet, parent)

  -- Match Id: Integer
  index, match_id = nasdaq_phlxoptions_quoting_sqf_v9_0.match_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Msar Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_msar_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.simple_msar_notification_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.simple_msar_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.simple_msar_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.simple_msar_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Quote Leg Execution Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_leg_execution_notification_message = {}

-- Size: Complex Quote Leg Execution Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_leg_execution_notification_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.leg_instrument_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.leg_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.auction_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.price_6.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.side.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.contracts.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.liquidity_indicator.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.cross_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.match_id.size

-- Display: Complex Quote Leg Execution Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_leg_execution_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Quote Leg Execution Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_leg_execution_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.dissect(buffer, index, packet, parent)

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Leg Instrument Id: Integer
  index, leg_instrument_id = nasdaq_phlxoptions_quoting_sqf_v9_0.leg_instrument_id.dissect(buffer, index, packet, parent)

  -- Leg Id: Integer
  index, leg_id = nasdaq_phlxoptions_quoting_sqf_v9_0.leg_id.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_phlxoptions_quoting_sqf_v9_0.auction_id.dissect(buffer, index, packet, parent)

  -- Price 6: Integer
  index, price_6 = nasdaq_phlxoptions_quoting_sqf_v9_0.price_6.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_phlxoptions_quoting_sqf_v9_0.side.dissect(buffer, index, packet, parent)

  -- Contracts: Integer
  index, contracts = nasdaq_phlxoptions_quoting_sqf_v9_0.contracts.dissect(buffer, index, packet, parent)

  -- Liquidity Indicator: Integer
  index, liquidity_indicator = nasdaq_phlxoptions_quoting_sqf_v9_0.liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Cross Id: Integer
  index, cross_id = nasdaq_phlxoptions_quoting_sqf_v9_0.cross_id.dissect(buffer, index, packet, parent)

  -- Match Id: Integer
  index, match_id = nasdaq_phlxoptions_quoting_sqf_v9_0.match_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Quote Leg Execution Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_leg_execution_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.complex_quote_leg_execution_notification_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_leg_execution_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_leg_execution_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_leg_execution_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Quote Execution Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_execution_notification_message = {}

-- Size: Complex Quote Execution Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_execution_notification_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.auction_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.price_6.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.side.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.contracts.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.liquidity_indicator.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.cross_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.match_id.size

-- Display: Complex Quote Execution Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_execution_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Quote Execution Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_execution_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.dissect(buffer, index, packet, parent)

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_phlxoptions_quoting_sqf_v9_0.auction_id.dissect(buffer, index, packet, parent)

  -- Price 6: Integer
  index, price_6 = nasdaq_phlxoptions_quoting_sqf_v9_0.price_6.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_phlxoptions_quoting_sqf_v9_0.side.dissect(buffer, index, packet, parent)

  -- Contracts: Integer
  index, contracts = nasdaq_phlxoptions_quoting_sqf_v9_0.contracts.dissect(buffer, index, packet, parent)

  -- Liquidity Indicator: Integer
  index, liquidity_indicator = nasdaq_phlxoptions_quoting_sqf_v9_0.liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Cross Id: Integer
  index, cross_id = nasdaq_phlxoptions_quoting_sqf_v9_0.cross_id.dissect(buffer, index, packet, parent)

  -- Match Id: Integer
  index, match_id = nasdaq_phlxoptions_quoting_sqf_v9_0.match_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Quote Execution Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_execution_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.complex_quote_execution_notification_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_execution_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_execution_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_execution_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Quote Execution Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_execution_notification_message = {}

-- Size: Simple Quote Execution Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_execution_notification_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.auction_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.price.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.side.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.contracts.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.liquidity_indicator.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.cross_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.match_id.size

-- Display: Simple Quote Execution Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_execution_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Quote Execution Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_execution_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.dissect(buffer, index, packet, parent)

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_phlxoptions_quoting_sqf_v9_0.auction_id.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_phlxoptions_quoting_sqf_v9_0.price.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_phlxoptions_quoting_sqf_v9_0.side.dissect(buffer, index, packet, parent)

  -- Contracts: Integer
  index, contracts = nasdaq_phlxoptions_quoting_sqf_v9_0.contracts.dissect(buffer, index, packet, parent)

  -- Liquidity Indicator: Integer
  index, liquidity_indicator = nasdaq_phlxoptions_quoting_sqf_v9_0.liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Cross Id: Integer
  index, cross_id = nasdaq_phlxoptions_quoting_sqf_v9_0.cross_id.dissect(buffer, index, packet, parent)

  -- Match Id: Integer
  index, match_id = nasdaq_phlxoptions_quoting_sqf_v9_0.match_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Quote Execution Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_execution_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.simple_quote_execution_notification_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_execution_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_execution_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_execution_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Instrument Trading Action Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_instrument_trading_action_message = {}

-- Size: Complex Instrument Trading Action Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_instrument_trading_action_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.trading_state.size

-- Display: Complex Instrument Trading Action Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_instrument_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Instrument Trading Action Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_instrument_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Trading State: Alpha
  index, trading_state = nasdaq_phlxoptions_quoting_sqf_v9_0.trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Instrument Trading Action Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_instrument_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.complex_instrument_trading_action_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.complex_instrument_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.complex_instrument_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.complex_instrument_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Instrument Trading Action Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_instrument_trading_action_message = {}

-- Size: Simple Instrument Trading Action Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_instrument_trading_action_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.trading_state.size

-- Display: Simple Instrument Trading Action Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_instrument_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Instrument Trading Action Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_instrument_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Trading State: Alpha
  index, trading_state = nasdaq_phlxoptions_quoting_sqf_v9_0.trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Instrument Trading Action Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_instrument_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.simple_instrument_trading_action_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.simple_instrument_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.simple_instrument_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.simple_instrument_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Legs
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_legs = {}

-- Size: Complex Legs
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_legs.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.leg_instrument_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.leg_side.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.leg_ratio.size

-- Display: Complex Legs
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_legs.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Legs
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_legs.fields = function(buffer, offset, packet, parent, complex_legs_index)
  local index = offset

  -- Implicit Complex Legs Index
  if complex_legs_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.complex_legs_index, complex_legs_index)
    iteration:set_generated()
  end

  -- Leg Instrument Id: Integer
  index, leg_instrument_id = nasdaq_phlxoptions_quoting_sqf_v9_0.leg_instrument_id.dissect(buffer, index, packet, parent)

  -- Leg Side: Alpha
  index, leg_side = nasdaq_phlxoptions_quoting_sqf_v9_0.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Integer
  index, leg_ratio = nasdaq_phlxoptions_quoting_sqf_v9_0.leg_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Legs
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_legs.dissect = function(buffer, offset, packet, parent, complex_legs_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.complex_legs, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.complex_legs.fields(buffer, offset, packet, parent, complex_legs_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.complex_legs.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.complex_legs.fields(buffer, offset, packet, parent, complex_legs_index)
  end
end

-- Complex Instrument Directory Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_instrument_directory_message = {}

-- Calculate size of: Complex Instrument Directory Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_instrument_directory_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_symbol.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_1.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.number_of_legs.size

  -- Calculate field size from count
  local complex_legs_count = buffer(offset + index - 1, 1):uint()
  index = index + complex_legs_count * 9

  return index
end

-- Display: Complex Instrument Directory Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_instrument_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Instrument Directory Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_instrument_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: Integer
  index, reserved_1 = nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Legs: Integer
  index, number_of_legs = nasdaq_phlxoptions_quoting_sqf_v9_0.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Legs
  for complex_legs_index = 1, number_of_legs do
    index, complex_legs = nasdaq_phlxoptions_quoting_sqf_v9_0.complex_legs.dissect(buffer, index, packet, parent, complex_legs_index)
  end

  return index
end

-- Dissect: Complex Instrument Directory Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_instrument_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.complex_instrument_directory_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.complex_instrument_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.complex_instrument_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.complex_instrument_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Instrument Directory Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_instrument_directory_message = {}

-- Size: Simple Instrument Directory Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_instrument_directory_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.security_symbol.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.expiration.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.strike_price.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.option_type.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_symbol.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.closing_type.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.tradable.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.mpv.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_16.size

-- Display: Simple Instrument Directory Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_instrument_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Instrument Directory Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_instrument_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_phlxoptions_quoting_sqf_v9_0.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration: Integer
  index, expiration = nasdaq_phlxoptions_quoting_sqf_v9_0.expiration.dissect(buffer, index, packet, parent)

  -- Strike Price: Price
  index, strike_price = nasdaq_phlxoptions_quoting_sqf_v9_0.strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_phlxoptions_quoting_sqf_v9_0.option_type.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Closing Type: Alpha
  index, closing_type = nasdaq_phlxoptions_quoting_sqf_v9_0.closing_type.dissect(buffer, index, packet, parent)

  -- Tradable: Alpha
  index, tradable = nasdaq_phlxoptions_quoting_sqf_v9_0.tradable.dissect(buffer, index, packet, parent)

  -- Mpv: Alpha
  index, mpv = nasdaq_phlxoptions_quoting_sqf_v9_0.mpv.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alpha
  index, reserved_16 = nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Instrument Directory Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_instrument_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.simple_instrument_directory_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.simple_instrument_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.simple_instrument_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.simple_instrument_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_phlxoptions_quoting_sqf_v9_0.system_event_message = {}

-- Size: System Event Message
nasdaq_phlxoptions_quoting_sqf_v9_0.system_event_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.event_code.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.version.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.subversion.size

-- Display: System Event Message
nasdaq_phlxoptions_quoting_sqf_v9_0.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_phlxoptions_quoting_sqf_v9_0.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_phlxoptions_quoting_sqf_v9_0.event_code.dissect(buffer, index, packet, parent)

  -- Version: Integer
  index, version = nasdaq_phlxoptions_quoting_sqf_v9_0.version.dissect(buffer, index, packet, parent)

  -- Subversion: Integer
  index, subversion = nasdaq_phlxoptions_quoting_sqf_v9_0.subversion.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_phlxoptions_quoting_sqf_v9_0.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Active Qp Self Replenishment Parameter Definition Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_parameter_definition_notification_message = {}

-- Size: Active Qp Self Replenishment Parameter Definition Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_parameter_definition_notification_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.underlying.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.set_contract_limit.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_32.size

-- Display: Active Qp Self Replenishment Parameter Definition Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_parameter_definition_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Active Qp Self Replenishment Parameter Definition Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_parameter_definition_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.dissect(buffer, index, packet, parent)

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Underlying: Alphanumeric
  index, underlying = nasdaq_phlxoptions_quoting_sqf_v9_0.underlying.dissect(buffer, index, packet, parent)

  -- Set Contract Limit: Integer
  index, set_contract_limit = nasdaq_phlxoptions_quoting_sqf_v9_0.set_contract_limit.dissect(buffer, index, packet, parent)

  -- Reserved 32: Alpha
  index, reserved_32 = nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_32.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Active Qp Self Replenishment Parameter Definition Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_parameter_definition_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.active_qp_self_replenishment_parameter_definition_notification_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_parameter_definition_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_parameter_definition_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_parameter_definition_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Rapid Fire Config Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.rapid_fire_config_notification_message = {}

-- Size: Rapid Fire Config Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.rapid_fire_config_notification_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.underlying.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.percentage.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.interval.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.volume.size

-- Display: Rapid Fire Config Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.rapid_fire_config_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rapid Fire Config Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.rapid_fire_config_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.dissect(buffer, index, packet, parent)

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Underlying: Alphanumeric
  index, underlying = nasdaq_phlxoptions_quoting_sqf_v9_0.underlying.dissect(buffer, index, packet, parent)

  -- Percentage: Integer
  index, percentage = nasdaq_phlxoptions_quoting_sqf_v9_0.percentage.dissect(buffer, index, packet, parent)

  -- Interval: Integer
  index, interval = nasdaq_phlxoptions_quoting_sqf_v9_0.interval.dissect(buffer, index, packet, parent)

  -- Volume: Integer
  index, volume = nasdaq_phlxoptions_quoting_sqf_v9_0.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rapid Fire Config Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.rapid_fire_config_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.rapid_fire_config_notification_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.rapid_fire_config_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.rapid_fire_config_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.rapid_fire_config_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Mm Parameter Definition Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.mm_parameter_definition_notification_message = {}

-- Size: Mm Parameter Definition Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.mm_parameter_definition_notification_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_type.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.underlying.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.interval.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.percentage.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.cum_qty.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.delta.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.vega.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_32.size

-- Display: Mm Parameter Definition Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.mm_parameter_definition_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mm Parameter Definition Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.mm_parameter_definition_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.dissect(buffer, index, packet, parent)

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alpha
  index, instrument_type = nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_type.dissect(buffer, index, packet, parent)

  -- Underlying: Alphanumeric
  index, underlying = nasdaq_phlxoptions_quoting_sqf_v9_0.underlying.dissect(buffer, index, packet, parent)

  -- Interval: Integer
  index, interval = nasdaq_phlxoptions_quoting_sqf_v9_0.interval.dissect(buffer, index, packet, parent)

  -- Percentage: Integer
  index, percentage = nasdaq_phlxoptions_quoting_sqf_v9_0.percentage.dissect(buffer, index, packet, parent)

  -- Cum Qty: Integer
  index, cum_qty = nasdaq_phlxoptions_quoting_sqf_v9_0.cum_qty.dissect(buffer, index, packet, parent)

  -- Delta: Integer
  index, delta = nasdaq_phlxoptions_quoting_sqf_v9_0.delta.dissect(buffer, index, packet, parent)

  -- Vega: Integer
  index, vega = nasdaq_phlxoptions_quoting_sqf_v9_0.vega.dissect(buffer, index, packet, parent)

  -- Reserved 32: Alpha
  index, reserved_32 = nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_32.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mm Parameter Definition Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.mm_parameter_definition_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.mm_parameter_definition_notification_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.mm_parameter_definition_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.mm_parameter_definition_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.mm_parameter_definition_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Permission Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_permission_notification_message = {}

-- Size: Underlying Permission Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_permission_notification_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.underlying.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.permitted.size

-- Display: Underlying Permission Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_permission_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Permission Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_permission_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = nasdaq_phlxoptions_quoting_sqf_v9_0.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_phlxoptions_quoting_sqf_v9_0.nanoseconds.dissect(buffer, index, packet, parent)

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Underlying: Alphanumeric
  index, underlying = nasdaq_phlxoptions_quoting_sqf_v9_0.underlying.dissect(buffer, index, packet, parent)

  -- Permitted: Alpha
  index, permitted = nasdaq_phlxoptions_quoting_sqf_v9_0.permitted.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Permission Notification Message
nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_permission_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.underlying_permission_notification_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_permission_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_permission_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_permission_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Msar Reject Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_reject_message = {}

-- Size: Complex Msar Reject Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_reject_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.status_code.size

-- Display: Complex Msar Reject Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Msar Reject Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Status Code: Alphanumeric
  index, status_code = nasdaq_phlxoptions_quoting_sqf_v9_0.status_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Msar Reject Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.complex_msar_reject_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Msar Accept Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_accept_message = {}

-- Size: Complex Msar Accept Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_accept_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.msar_type.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.auction_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.price.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.side.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.contracts.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.price_protection.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_4.size

-- Display: Complex Msar Accept Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_accept_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Msar Accept Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_accept_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Msar Type: Alpha
  index, msar_type = nasdaq_phlxoptions_quoting_sqf_v9_0.msar_type.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_phlxoptions_quoting_sqf_v9_0.auction_id.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_phlxoptions_quoting_sqf_v9_0.price.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_phlxoptions_quoting_sqf_v9_0.side.dissect(buffer, index, packet, parent)

  -- Contracts: Integer
  index, contracts = nasdaq_phlxoptions_quoting_sqf_v9_0.contracts.dissect(buffer, index, packet, parent)

  -- Price Protection: Alpha
  index, price_protection = nasdaq_phlxoptions_quoting_sqf_v9_0.price_protection.dissect(buffer, index, packet, parent)

  -- Reserved 4: Alpha
  index, reserved_4 = nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Msar Accept Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_accept_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.complex_msar_accept_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_accept_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_accept_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_accept_message.fields(buffer, offset, packet, parent)
  end
end

-- Msar Reject Message
nasdaq_phlxoptions_quoting_sqf_v9_0.msar_reject_message = {}

-- Size: Msar Reject Message
nasdaq_phlxoptions_quoting_sqf_v9_0.msar_reject_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.status_code.size

-- Display: Msar Reject Message
nasdaq_phlxoptions_quoting_sqf_v9_0.msar_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Msar Reject Message
nasdaq_phlxoptions_quoting_sqf_v9_0.msar_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Status Code: Alphanumeric
  index, status_code = nasdaq_phlxoptions_quoting_sqf_v9_0.status_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Msar Reject Message
nasdaq_phlxoptions_quoting_sqf_v9_0.msar_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.msar_reject_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.msar_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.msar_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.msar_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Msar Accept Message
nasdaq_phlxoptions_quoting_sqf_v9_0.msar_accept_message = {}

-- Size: Msar Accept Message
nasdaq_phlxoptions_quoting_sqf_v9_0.msar_accept_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.msar_type.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.auction_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.price.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.side.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.contracts.size

-- Display: Msar Accept Message
nasdaq_phlxoptions_quoting_sqf_v9_0.msar_accept_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Msar Accept Message
nasdaq_phlxoptions_quoting_sqf_v9_0.msar_accept_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Msar Type: Alpha
  index, msar_type = nasdaq_phlxoptions_quoting_sqf_v9_0.msar_type.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_phlxoptions_quoting_sqf_v9_0.auction_id.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_phlxoptions_quoting_sqf_v9_0.price.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_phlxoptions_quoting_sqf_v9_0.side.dissect(buffer, index, packet, parent)

  -- Contracts: Integer
  index, contracts = nasdaq_phlxoptions_quoting_sqf_v9_0.contracts.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Msar Accept Message
nasdaq_phlxoptions_quoting_sqf_v9_0.msar_accept_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.msar_accept_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.msar_accept_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.msar_accept_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.msar_accept_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nasdaq_phlxoptions_quoting_sqf_v9_0.sequenced_message = {}

-- Dissect: Sequenced Message
nasdaq_phlxoptions_quoting_sqf_v9_0.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect Msar Accept Message
  if sequenced_message_type == "SA" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.msar_accept_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Msar Reject Message
  if sequenced_message_type == "SR" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.msar_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Msar Accept Message
  if sequenced_message_type == "SY" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_accept_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Msar Reject Message
  if sequenced_message_type == "SN" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Permission Notification Message
  if sequenced_message_type == "AP" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_permission_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mm Parameter Definition Notification Message
  if sequenced_message_type == "AJ" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.mm_parameter_definition_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Rapid Fire Config Notification Message
  if sequenced_message_type == "Af" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.rapid_fire_config_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Active Qp Self Replenishment Parameter Definition Notification Message
  if sequenced_message_type == "AK" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_parameter_definition_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if sequenced_message_type == "AS" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Instrument Directory Message
  if sequenced_message_type == "AD" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.simple_instrument_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Instrument Directory Message
  if sequenced_message_type == "AR" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.complex_instrument_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Instrument Trading Action Message
  if sequenced_message_type == "AH" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.simple_instrument_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Instrument Trading Action Message
  if sequenced_message_type == "AI" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.complex_instrument_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Quote Execution Notification Message
  if sequenced_message_type == "NE" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_execution_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Quote Execution Notification Message
  if sequenced_message_type == "NV" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_execution_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Quote Leg Execution Notification Message
  if sequenced_message_type == "NW" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_leg_execution_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Msar Notification Message
  if sequenced_message_type == "NS" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.simple_msar_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Msar Leg Notification Message
  if sequenced_message_type == "NL" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_leg_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Msar Notification Message
  if sequenced_message_type == "NX" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Opening Rotation Quote Spread Multiplier Notification Message
  if sequenced_message_type == "AM" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.opening_rotation_quote_spread_multiplier_notification_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = nasdaq_phlxoptions_quoting_sqf_v9_0.conversation.current
  if flow ~= nil then
    local memo = flow.sequence.frames[packet.number]
    if not packet.visited then
      if flow.sequence.next == nil then
        flow.sequence.next = tonumber(nasdaq_phlxoptions_quoting_sqf_v9_0.accepted_sequence_number.current)
      end
      local value = flow.sequence.next
      if value ~= nil then
        if memo == nil then
          memo = {}
          flow.sequence.frames[packet.number] = memo
        end
        memo[#memo + 1] = value
        flow.sequence.next = value + 1
        if show.sequences then
          local sequence = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if nasdaq_phlxoptions_quoting_sqf_v9_0.stream_frame ~= packet.number or nasdaq_phlxoptions_quoting_sqf_v9_0.stream_occurrence >= #memo then
          nasdaq_phlxoptions_quoting_sqf_v9_0.stream_frame = packet.number
          nasdaq_phlxoptions_quoting_sqf_v9_0.stream_occurrence = 0
        end
        nasdaq_phlxoptions_quoting_sqf_v9_0.stream_occurrence = nasdaq_phlxoptions_quoting_sqf_v9_0.stream_occurrence + 1
        local value = memo[nasdaq_phlxoptions_quoting_sqf_v9_0.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Type: 2 Byte Ascii String Enum with 20 values
  index, sequenced_message_type = nasdaq_phlxoptions_quoting_sqf_v9_0.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 20 branches
  index = nasdaq_phlxoptions_quoting_sqf_v9_0.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = nasdaq_phlxoptions_quoting_sqf_v9_0.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.sequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_phlxoptions_quoting_sqf_v9_0.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_phlxoptions_quoting_sqf_v9_0.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.login_rejected_packet.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String Enum with 2 values
  index, reject_reason_code = nasdaq_phlxoptions_quoting_sqf_v9_0.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.login_accepted_packet.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.accepted_session.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.accepted_sequence_number.size

-- Display: Login Accepted Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = nasdaq_phlxoptions_quoting_sqf_v9_0.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = nasdaq_phlxoptions_quoting_sqf_v9_0.accepted_sequence_number.dissect(buffer, index, packet, parent)

  -- Store Accepted Sequence Number Value
  nasdaq_phlxoptions_quoting_sqf_v9_0.accepted_sequence_number.current = accepted_sequence_number

  if not packet.visited then
    nasdaq_phlxoptions_quoting_sqf_v9_0.conversation.current.accepted_sequence_number.last = accepted_sequence_number
  end

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.debug_packet = {}

-- Size: Debug Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.debug_packet.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.debug_text.size

-- Display: Debug Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Debug Text: 1 Byte Ascii String
  index, debug_text = nasdaq_phlxoptions_quoting_sqf_v9_0.debug_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
nasdaq_phlxoptions_quoting_sqf_v9_0.server_payload = {}

-- Dissect: Server Payload
nasdaq_phlxoptions_quoting_sqf_v9_0.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  -- Dissect Debug Packet
  if server_packet_type == "+" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if server_packet_type == "A" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if server_packet_type == "J" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if server_packet_type == "S" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Unsequenced Data Packet
  if server_packet_type == "U" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.server_unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat Packet
  if server_packet_type == "H" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.server_heartbeat_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Packet
  if server_packet_type == "Z" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.end_of_session_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
nasdaq_phlxoptions_quoting_sqf_v9_0.server_packet_header = {}

-- Size: Server Packet Header
nasdaq_phlxoptions_quoting_sqf_v9_0.server_packet_header.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.packet_length.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.server_packet_type.size

-- Display: Server Packet Header
nasdaq_phlxoptions_quoting_sqf_v9_0.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
nasdaq_phlxoptions_quoting_sqf_v9_0.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_phlxoptions_quoting_sqf_v9_0.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 7 values
  index, server_packet_type = nasdaq_phlxoptions_quoting_sqf_v9_0.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
nasdaq_phlxoptions_quoting_sqf_v9_0.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.server_packet_header, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = nasdaq_phlxoptions_quoting_sqf_v9_0.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 7 branches
  index = nasdaq_phlxoptions_quoting_sqf_v9_0.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_phlxoptions_quoting_sqf_v9_0.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_phlxoptions_quoting_sqf_v9_0.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_phlxoptions_quoting_sqf_v9_0.server_packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Server Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.server_packet = {}

-- Verify required size of Tcp packet
nasdaq_phlxoptions_quoting_sqf_v9_0.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_phlxoptions_quoting_sqf_v9_0.server_packet_header.size
end

-- Dissect Server Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nasdaq_phlxoptions_quoting_sqf_v9_0.conversation.data(packet)
  if not packet.visited then
    data.accepted_sequence_number.frames[packet.number] = data.accepted_sequence_number.last
  end
  nasdaq_phlxoptions_quoting_sqf_v9_0.accepted_sequence_number.current = data.accepted_sequence_number.frames[packet.number]
  nasdaq_phlxoptions_quoting_sqf_v9_0.conversation.current = data

  local index = 0

  -- Dependency for Server Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Server Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_soup_bin_tcp_packet = server_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_phlxoptions_quoting_sqf_v9_0.server_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_server_soup_bin_tcp_packet)
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

-- Logout Request Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.logout_request_packet = {}

-- Display: Logout Request Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.logout_request_packet.display = function(packet, parent, length)
  return "Logout Request Packet"
end


-- Dissect: Logout Request Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.logout_request_packet.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.logout_request_packet.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.client_heartbeat_packet = {}

-- Display: Client Heartbeat Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.client_heartbeat_packet.display = function(packet, parent, length)
  return "Client Heartbeat Packet"
end


-- Dissect: Client Heartbeat Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.client_heartbeat_packet.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_phlxoptions_quoting_sqf_v9_0.client_heartbeat_packet.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Complex Msar Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_request_message = {}

-- Size: Complex Msar Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_request_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.msar_type.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.auction_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.price.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.side.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.debit_credit.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.contracts.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.price_protection.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_4.size

-- Display: Complex Msar Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Msar Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Msar Type: Alpha
  index, msar_type = nasdaq_phlxoptions_quoting_sqf_v9_0.msar_type.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_phlxoptions_quoting_sqf_v9_0.auction_id.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_phlxoptions_quoting_sqf_v9_0.price.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_phlxoptions_quoting_sqf_v9_0.side.dissect(buffer, index, packet, parent)

  -- Debit Credit: Alphanumeric
  index, debit_credit = nasdaq_phlxoptions_quoting_sqf_v9_0.debit_credit.dissect(buffer, index, packet, parent)

  -- Contracts: Integer
  index, contracts = nasdaq_phlxoptions_quoting_sqf_v9_0.contracts.dissect(buffer, index, packet, parent)

  -- Price Protection: Alpha
  index, price_protection = nasdaq_phlxoptions_quoting_sqf_v9_0.price_protection.dissect(buffer, index, packet, parent)

  -- Reserved 4: Alpha
  index, reserved_4 = nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Msar Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.complex_msar_request_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Msar Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_msar_request_message = {}

-- Size: Simple Msar Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_msar_request_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.msar_type.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.auction_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.price.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.side.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.contracts.size

-- Display: Simple Msar Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_msar_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Msar Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_msar_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Msar Type: Alpha
  index, msar_type = nasdaq_phlxoptions_quoting_sqf_v9_0.msar_type.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_phlxoptions_quoting_sqf_v9_0.auction_id.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_phlxoptions_quoting_sqf_v9_0.price.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_phlxoptions_quoting_sqf_v9_0.side.dissect(buffer, index, packet, parent)

  -- Contracts: Integer
  index, contracts = nasdaq_phlxoptions_quoting_sqf_v9_0.contracts.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Msar Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_msar_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.simple_msar_request_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.simple_msar_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.simple_msar_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.simple_msar_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Active Qp Self Replenishment Request Reentry Message
nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_request_reentry_message = {}

-- Size: Active Qp Self Replenishment Request Reentry Message
nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_request_reentry_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_symbol.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.replenishment_value.size

-- Display: Active Qp Self Replenishment Request Reentry Message
nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_request_reentry_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Active Qp Self Replenishment Request Reentry Message
nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_request_reentry_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Replenishment Value: Integer
  index, replenishment_value = nasdaq_phlxoptions_quoting_sqf_v9_0.replenishment_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Active Qp Self Replenishment Request Reentry Message
nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_request_reentry_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.active_qp_self_replenishment_request_reentry_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_request_reentry_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_request_reentry_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_request_reentry_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Reentry Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.market_reentry_request_message = {}

-- Size: Market Reentry Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.market_reentry_request_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_symbol.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_type.size

-- Display: Market Reentry Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.market_reentry_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Reentry Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.market_reentry_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alpha
  index, instrument_type = nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Reentry Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.market_reentry_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.market_reentry_request_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.market_reentry_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.market_reentry_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.market_reentry_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Purge Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_purge_request_message = {}

-- Size: Underlying Purge Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_purge_request_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.sent_timestamp.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_symbol.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_type.size

-- Display: Underlying Purge Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_purge_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Purge Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_purge_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Sent Timestamp: Integer
  index, sent_timestamp = nasdaq_phlxoptions_quoting_sqf_v9_0.sent_timestamp.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alpha
  index, instrument_type = nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Purge Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_purge_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.underlying_purge_request_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_purge_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_purge_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_purge_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Quotes
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quotes = {}

-- Size: Complex Quotes
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quotes.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.quote_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.bid_price.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.bid_size.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.ask_price.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.ask_size.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.reentry_indicator.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.stock_leg_short_sale.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_4.size

-- Display: Complex Quotes
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quotes.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Quotes
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quotes.fields = function(buffer, offset, packet, parent, complex_quotes_index)
  local index = offset

  -- Implicit Complex Quotes Index
  if complex_quotes_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.complex_quotes_index, complex_quotes_index)
    iteration:set_generated()
  end

  -- Quote Id: Integer
  index, quote_id = nasdaq_phlxoptions_quoting_sqf_v9_0.quote_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Bid Price: Price
  index, bid_price = nasdaq_phlxoptions_quoting_sqf_v9_0.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: Integer
  index, bid_size = nasdaq_phlxoptions_quoting_sqf_v9_0.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price: Price
  index, ask_price = nasdaq_phlxoptions_quoting_sqf_v9_0.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: Integer
  index, ask_size = nasdaq_phlxoptions_quoting_sqf_v9_0.ask_size.dissect(buffer, index, packet, parent)

  -- Reentry Indicator: Alpha
  index, reentry_indicator = nasdaq_phlxoptions_quoting_sqf_v9_0.reentry_indicator.dissect(buffer, index, packet, parent)

  -- Stock Leg Short Sale: Alpha
  index, stock_leg_short_sale = nasdaq_phlxoptions_quoting_sqf_v9_0.stock_leg_short_sale.dissect(buffer, index, packet, parent)

  -- Reserved 4: Alpha
  index, reserved_4 = nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Quotes
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quotes.dissect = function(buffer, offset, packet, parent, complex_quotes_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.complex_quotes, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quotes.fields(buffer, offset, packet, parent, complex_quotes_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quotes.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quotes.fields(buffer, offset, packet, parent, complex_quotes_index)
  end
end

-- Complex Quote Block Detailed Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_block_detailed_message = {}

-- Calculate size of: Complex Quote Block Detailed Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_block_detailed_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.sent_timestamp.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.quote_count.size

  -- Calculate field size from count
  local complex_quotes_count = buffer(offset + index - 2, 2):uint()
  index = index + complex_quotes_count * 34

  return index
end

-- Display: Complex Quote Block Detailed Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_block_detailed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Quote Block Detailed Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_block_detailed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Sent Timestamp: Integer
  index, sent_timestamp = nasdaq_phlxoptions_quoting_sqf_v9_0.sent_timestamp.dissect(buffer, index, packet, parent)

  -- Quote Count: Integer
  index, quote_count = nasdaq_phlxoptions_quoting_sqf_v9_0.quote_count.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Quotes
  for complex_quotes_index = 1, quote_count do
    index, complex_quotes = nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quotes.dissect(buffer, index, packet, parent, complex_quotes_index)
  end

  return index
end

-- Dissect: Complex Quote Block Detailed Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_block_detailed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.complex_quote_block_detailed_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_block_detailed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_block_detailed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_block_detailed_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Quote Block Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_block_message = {}

-- Calculate size of: Complex Quote Block Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_block_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.sent_timestamp.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.quote_count.size

  -- Calculate field size from count
  local complex_quotes_count = buffer(offset + index - 2, 2):uint()
  index = index + complex_quotes_count * 34

  return index
end

-- Display: Complex Quote Block Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_block_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Quote Block Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_block_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Sent Timestamp: Integer
  index, sent_timestamp = nasdaq_phlxoptions_quoting_sqf_v9_0.sent_timestamp.dissect(buffer, index, packet, parent)

  -- Quote Count: Integer
  index, quote_count = nasdaq_phlxoptions_quoting_sqf_v9_0.quote_count.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Quotes
  for complex_quotes_index = 1, quote_count do
    index, complex_quotes = nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quotes.dissect(buffer, index, packet, parent, complex_quotes_index)
  end

  return index
end

-- Dissect: Complex Quote Block Message
nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_block_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.complex_quote_block_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_block_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_block_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_block_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Quotes Long Form
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quotes_long_form = {}

-- Size: Simple Quotes Long Form
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quotes_long_form.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.quote_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.bid_price.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.bid_size.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.ask_price.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.ask_size.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.reentry_indicator.size

-- Display: Simple Quotes Long Form
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quotes_long_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Quotes Long Form
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quotes_long_form.fields = function(buffer, offset, packet, parent, simple_quotes_long_form_index)
  local index = offset

  -- Implicit Simple Quotes Long Form Index
  if simple_quotes_long_form_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.simple_quotes_long_form_index, simple_quotes_long_form_index)
    iteration:set_generated()
  end

  -- Quote Id: Integer
  index, quote_id = nasdaq_phlxoptions_quoting_sqf_v9_0.quote_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Bid Price: Price
  index, bid_price = nasdaq_phlxoptions_quoting_sqf_v9_0.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: Integer
  index, bid_size = nasdaq_phlxoptions_quoting_sqf_v9_0.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price: Price
  index, ask_price = nasdaq_phlxoptions_quoting_sqf_v9_0.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: Integer
  index, ask_size = nasdaq_phlxoptions_quoting_sqf_v9_0.ask_size.dissect(buffer, index, packet, parent)

  -- Reentry Indicator: Alpha
  index, reentry_indicator = nasdaq_phlxoptions_quoting_sqf_v9_0.reentry_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Quotes Long Form
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quotes_long_form.dissect = function(buffer, offset, packet, parent, simple_quotes_long_form_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.simple_quotes_long_form, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quotes_long_form.fields(buffer, offset, packet, parent, simple_quotes_long_form_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quotes_long_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quotes_long_form.fields(buffer, offset, packet, parent, simple_quotes_long_form_index)
  end
end

-- Simple Quote Block Long Form Detailed Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_long_form_detailed_message = {}

-- Calculate size of: Simple Quote Block Long Form Detailed Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_long_form_detailed_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.sent_timestamp.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.quote_count.size

  -- Calculate field size from count
  local simple_quotes_long_form_count = buffer(offset + index - 2, 2):uint()
  index = index + simple_quotes_long_form_count * 29

  return index
end

-- Display: Simple Quote Block Long Form Detailed Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_long_form_detailed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Quote Block Long Form Detailed Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_long_form_detailed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Sent Timestamp: Integer
  index, sent_timestamp = nasdaq_phlxoptions_quoting_sqf_v9_0.sent_timestamp.dissect(buffer, index, packet, parent)

  -- Quote Count: Integer
  index, quote_count = nasdaq_phlxoptions_quoting_sqf_v9_0.quote_count.dissect(buffer, index, packet, parent)

  -- Repeating: Simple Quotes Long Form
  for simple_quotes_long_form_index = 1, quote_count do
    index, simple_quotes_long_form = nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quotes_long_form.dissect(buffer, index, packet, parent, simple_quotes_long_form_index)
  end

  return index
end

-- Dissect: Simple Quote Block Long Form Detailed Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_long_form_detailed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.simple_quote_block_long_form_detailed_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_long_form_detailed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_long_form_detailed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_long_form_detailed_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Quote Block Long Form Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_long_form_message = {}

-- Calculate size of: Simple Quote Block Long Form Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_long_form_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.sent_timestamp.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.quote_count.size

  -- Calculate field size from count
  local simple_quotes_long_form_count = buffer(offset + index - 2, 2):uint()
  index = index + simple_quotes_long_form_count * 29

  return index
end

-- Display: Simple Quote Block Long Form Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Quote Block Long Form Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Sent Timestamp: Integer
  index, sent_timestamp = nasdaq_phlxoptions_quoting_sqf_v9_0.sent_timestamp.dissect(buffer, index, packet, parent)

  -- Quote Count: Integer
  index, quote_count = nasdaq_phlxoptions_quoting_sqf_v9_0.quote_count.dissect(buffer, index, packet, parent)

  -- Repeating: Simple Quotes Long Form
  for simple_quotes_long_form_index = 1, quote_count do
    index, simple_quotes_long_form = nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quotes_long_form.dissect(buffer, index, packet, parent, simple_quotes_long_form_index)
  end

  return index
end

-- Dissect: Simple Quote Block Long Form Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.simple_quote_block_long_form_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Quotes
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quotes = {}

-- Size: Simple Quotes
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quotes.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.bid_price.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.bid_size.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.ask_price.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.ask_size.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.reentry_indicator.size

-- Display: Simple Quotes
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quotes.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Quotes
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quotes.fields = function(buffer, offset, packet, parent, simple_quotes_index)
  local index = offset

  -- Implicit Simple Quotes Index
  if simple_quotes_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.simple_quotes_index, simple_quotes_index)
    iteration:set_generated()
  end

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Bid Price: Price
  index, bid_price = nasdaq_phlxoptions_quoting_sqf_v9_0.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: Integer
  index, bid_size = nasdaq_phlxoptions_quoting_sqf_v9_0.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price: Price
  index, ask_price = nasdaq_phlxoptions_quoting_sqf_v9_0.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: Integer
  index, ask_size = nasdaq_phlxoptions_quoting_sqf_v9_0.ask_size.dissect(buffer, index, packet, parent)

  -- Reentry Indicator: Alpha
  index, reentry_indicator = nasdaq_phlxoptions_quoting_sqf_v9_0.reentry_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Quotes
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quotes.dissect = function(buffer, offset, packet, parent, simple_quotes_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.simple_quotes, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quotes.fields(buffer, offset, packet, parent, simple_quotes_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quotes.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quotes.fields(buffer, offset, packet, parent, simple_quotes_index)
  end
end

-- Simple Quote Block Short Form Detailed Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_short_form_detailed_message = {}

-- Calculate size of: Simple Quote Block Short Form Detailed Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_short_form_detailed_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.sent_timestamp.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.quote_count.size

  -- Calculate field size from count
  local simple_quotes_count = buffer(offset + index - 2, 2):uint()
  index = index + simple_quotes_count * 21

  return index
end

-- Display: Simple Quote Block Short Form Detailed Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_short_form_detailed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Quote Block Short Form Detailed Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_short_form_detailed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Sent Timestamp: Integer
  index, sent_timestamp = nasdaq_phlxoptions_quoting_sqf_v9_0.sent_timestamp.dissect(buffer, index, packet, parent)

  -- Quote Count: Integer
  index, quote_count = nasdaq_phlxoptions_quoting_sqf_v9_0.quote_count.dissect(buffer, index, packet, parent)

  -- Repeating: Simple Quotes
  for simple_quotes_index = 1, quote_count do
    index, simple_quotes = nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quotes.dissect(buffer, index, packet, parent, simple_quotes_index)
  end

  return index
end

-- Dissect: Simple Quote Block Short Form Detailed Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_short_form_detailed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.simple_quote_block_short_form_detailed_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_short_form_detailed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_short_form_detailed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_short_form_detailed_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Quote Block Short Form Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_short_form_message = {}

-- Calculate size of: Simple Quote Block Short Form Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_short_form_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.sent_timestamp.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.quote_count.size

  -- Calculate field size from count
  local simple_quotes_count = buffer(offset + index - 2, 2):uint()
  index = index + simple_quotes_count * 21

  return index
end

-- Display: Simple Quote Block Short Form Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Quote Block Short Form Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Sent Timestamp: Integer
  index, sent_timestamp = nasdaq_phlxoptions_quoting_sqf_v9_0.sent_timestamp.dissect(buffer, index, packet, parent)

  -- Quote Count: Integer
  index, quote_count = nasdaq_phlxoptions_quoting_sqf_v9_0.quote_count.dissect(buffer, index, packet, parent)

  -- Repeating: Simple Quotes
  for simple_quotes_index = 1, quote_count do
    index, simple_quotes = nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quotes.dissect(buffer, index, packet, parent, simple_quotes_index)
  end

  return index
end

-- Dissect: Simple Quote Block Short Form Message
nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.simple_quote_block_short_form_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Rapid Fire Config Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.rapid_fire_config_request_message = {}

-- Size: Rapid Fire Config Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.rapid_fire_config_request_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_symbol.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.percentage.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.interval.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.cum_qty.size

-- Display: Rapid Fire Config Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.rapid_fire_config_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rapid Fire Config Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.rapid_fire_config_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Percentage: Integer
  index, percentage = nasdaq_phlxoptions_quoting_sqf_v9_0.percentage.dissect(buffer, index, packet, parent)

  -- Interval: Integer
  index, interval = nasdaq_phlxoptions_quoting_sqf_v9_0.interval.dissect(buffer, index, packet, parent)

  -- Cum Qty: Integer
  index, cum_qty = nasdaq_phlxoptions_quoting_sqf_v9_0.cum_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rapid Fire Config Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.rapid_fire_config_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.rapid_fire_config_request_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.rapid_fire_config_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.rapid_fire_config_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.rapid_fire_config_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Active Qp Self Replenishment Set Limit Message
nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_set_limit_message = {}

-- Size: Active Qp Self Replenishment Set Limit Message
nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_set_limit_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_symbol.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.set_value.size

-- Display: Active Qp Self Replenishment Set Limit Message
nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_set_limit_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Active Qp Self Replenishment Set Limit Message
nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_set_limit_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Set Value: Integer
  index, set_value = nasdaq_phlxoptions_quoting_sqf_v9_0.set_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Active Qp Self Replenishment Set Limit Message
nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_set_limit_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.active_qp_self_replenishment_set_limit_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_set_limit_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_set_limit_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_set_limit_message.fields(buffer, offset, packet, parent)
  end
end

-- Mm Parameter Definition Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.mm_parameter_definition_request_message = {}

-- Size: Mm Parameter Definition Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.mm_parameter_definition_request_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_type.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.underlying.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.interval.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.percentage.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.cum_qty.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.delta.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.vega.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_32.size

-- Display: Mm Parameter Definition Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.mm_parameter_definition_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mm Parameter Definition Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.mm_parameter_definition_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alpha
  index, instrument_type = nasdaq_phlxoptions_quoting_sqf_v9_0.instrument_type.dissect(buffer, index, packet, parent)

  -- Underlying: Alphanumeric
  index, underlying = nasdaq_phlxoptions_quoting_sqf_v9_0.underlying.dissect(buffer, index, packet, parent)

  -- Interval: Integer
  index, interval = nasdaq_phlxoptions_quoting_sqf_v9_0.interval.dissect(buffer, index, packet, parent)

  -- Percentage: Integer
  index, percentage = nasdaq_phlxoptions_quoting_sqf_v9_0.percentage.dissect(buffer, index, packet, parent)

  -- Cum Qty: Integer
  index, cum_qty = nasdaq_phlxoptions_quoting_sqf_v9_0.cum_qty.dissect(buffer, index, packet, parent)

  -- Delta: Integer
  index, delta = nasdaq_phlxoptions_quoting_sqf_v9_0.delta.dissect(buffer, index, packet, parent)

  -- Vega: Integer
  index, vega = nasdaq_phlxoptions_quoting_sqf_v9_0.vega.dissect(buffer, index, packet, parent)

  -- Reserved 32: Alpha
  index, reserved_32 = nasdaq_phlxoptions_quoting_sqf_v9_0.reserved_32.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mm Parameter Definition Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.mm_parameter_definition_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.mm_parameter_definition_request_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.mm_parameter_definition_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.mm_parameter_definition_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.mm_parameter_definition_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Complex Instrument Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.add_complex_instrument_request_message = {}

-- Calculate size of: Add Complex Instrument Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.add_complex_instrument_request_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_symbol.size

  index = index + nasdaq_phlxoptions_quoting_sqf_v9_0.number_of_legs.size

  -- Calculate field size from count
  local complex_legs_count = buffer(offset + index - 1, 1):uint()
  index = index + complex_legs_count * 9

  return index
end

-- Display: Add Complex Instrument Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.add_complex_instrument_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Complex Instrument Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.add_complex_instrument_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Number Of Legs: Integer
  index, number_of_legs = nasdaq_phlxoptions_quoting_sqf_v9_0.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Legs
  for complex_legs_index = 1, number_of_legs do
    index, complex_legs = nasdaq_phlxoptions_quoting_sqf_v9_0.complex_legs.dissect(buffer, index, packet, parent, complex_legs_index)
  end

  return index
end

-- Dissect: Add Complex Instrument Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.add_complex_instrument_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.add_complex_instrument_request_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.add_complex_instrument_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.add_complex_instrument_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.add_complex_instrument_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Notification Subscription Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.notification_subscription_request_message = {}

-- Size: Notification Subscription Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.notification_subscription_request_message.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.badge.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.subscription.size

-- Display: Notification Subscription Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.notification_subscription_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Notification Subscription Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.notification_subscription_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Badge: Alphanumeric
  index, badge = nasdaq_phlxoptions_quoting_sqf_v9_0.badge.dissect(buffer, index, packet, parent)

  -- Message Id: Integer
  index, message_id = nasdaq_phlxoptions_quoting_sqf_v9_0.message_id.dissect(buffer, index, packet, parent)

  -- Subscription: Alphanumeric
  index, subscription = nasdaq_phlxoptions_quoting_sqf_v9_0.subscription.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Notification Subscription Request Message
nasdaq_phlxoptions_quoting_sqf_v9_0.notification_subscription_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.notification_subscription_request_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.notification_subscription_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.notification_subscription_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.notification_subscription_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
nasdaq_phlxoptions_quoting_sqf_v9_0.unsequenced_message = {}

-- Dissect: Unsequenced Message
nasdaq_phlxoptions_quoting_sqf_v9_0.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  -- Dissect Notification Subscription Request Message
  if unsequenced_message_type == "AB" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.notification_subscription_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Complex Instrument Request Message
  if unsequenced_message_type == "AC" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.add_complex_instrument_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mm Parameter Definition Request Message
  if unsequenced_message_type == "AE" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.mm_parameter_definition_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Active Qp Self Replenishment Set Limit Message
  if unsequenced_message_type == "AG" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_set_limit_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Rapid Fire Config Request Message
  if unsequenced_message_type == "AF" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.rapid_fire_config_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Quote Block Short Form Message
  if unsequenced_message_type == "QA" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Quote Block Short Form Detailed Message
  if unsequenced_message_type == "Qa" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_short_form_detailed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Quote Block Long Form Message
  if unsequenced_message_type == "QM" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Quote Block Long Form Detailed Message
  if unsequenced_message_type == "Qm" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.simple_quote_block_long_form_detailed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Quote Block Message
  if unsequenced_message_type == "QD" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_block_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Quote Block Detailed Message
  if unsequenced_message_type == "Qd" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.complex_quote_block_detailed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Purge Request Message
  if unsequenced_message_type == "Pu" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.underlying_purge_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Reentry Request Message
  if unsequenced_message_type == "RU" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.market_reentry_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Active Qp Self Replenishment Request Reentry Message
  if unsequenced_message_type == "RG" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.active_qp_self_replenishment_request_reentry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Msar Request Message
  if unsequenced_message_type == "SB" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.simple_msar_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Msar Request Message
  if unsequenced_message_type == "SX" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.complex_msar_request_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 2 Byte Ascii String Enum with 16 values
  index, unsequenced_message_type = nasdaq_phlxoptions_quoting_sqf_v9_0.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 16 branches
  index = nasdaq_phlxoptions_quoting_sqf_v9_0.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = nasdaq_phlxoptions_quoting_sqf_v9_0.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_phlxoptions_quoting_sqf_v9_0.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_phlxoptions_quoting_sqf_v9_0.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.login_request_packet.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.username.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.password.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.requested_session.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.requested_sequence_number.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.heartbeat_timeout.size

-- Display: Login Request Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_phlxoptions_quoting_sqf_v9_0.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_phlxoptions_quoting_sqf_v9_0.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_phlxoptions_quoting_sqf_v9_0.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_phlxoptions_quoting_sqf_v9_0.requested_sequence_number.dissect(buffer, index, packet, parent)

  -- Heartbeat Timeout: 5 Byte Ascii String
  index, heartbeat_timeout = nasdaq_phlxoptions_quoting_sqf_v9_0.heartbeat_timeout.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
nasdaq_phlxoptions_quoting_sqf_v9_0.client_payload = {}

-- Dissect: Client Payload
nasdaq_phlxoptions_quoting_sqf_v9_0.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  -- Dissect Debug Packet
  if client_packet_type == "+" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if client_packet_type == "L" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if client_packet_type == "U" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat Packet
  if client_packet_type == "R" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.client_heartbeat_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request Packet
  if client_packet_type == "O" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.logout_request_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
nasdaq_phlxoptions_quoting_sqf_v9_0.client_packet_header = {}

-- Size: Client Packet Header
nasdaq_phlxoptions_quoting_sqf_v9_0.client_packet_header.size =
  nasdaq_phlxoptions_quoting_sqf_v9_0.packet_length.size + 
  nasdaq_phlxoptions_quoting_sqf_v9_0.client_packet_type.size

-- Display: Client Packet Header
nasdaq_phlxoptions_quoting_sqf_v9_0.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
nasdaq_phlxoptions_quoting_sqf_v9_0.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_phlxoptions_quoting_sqf_v9_0.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = nasdaq_phlxoptions_quoting_sqf_v9_0.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
nasdaq_phlxoptions_quoting_sqf_v9_0.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.client_packet_header, buffer(offset, 0))
    local index = nasdaq_phlxoptions_quoting_sqf_v9_0.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_quoting_sqf_v9_0.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = nasdaq_phlxoptions_quoting_sqf_v9_0.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = nasdaq_phlxoptions_quoting_sqf_v9_0.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_phlxoptions_quoting_sqf_v9_0.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = nasdaq_phlxoptions_quoting_sqf_v9_0.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_phlxoptions_quoting_sqf_v9_0.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_phlxoptions_quoting_sqf_v9_0.client_packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Client Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.client_packet = {}

-- Verify required size of Tcp packet
nasdaq_phlxoptions_quoting_sqf_v9_0.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_phlxoptions_quoting_sqf_v9_0.client_packet_header.size
end

-- Dissect Client Packet
nasdaq_phlxoptions_quoting_sqf_v9_0.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Client Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_soup_bin_tcp_packet = client_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_phlxoptions_quoting_sqf_v9_0.client_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_client_soup_bin_tcp_packet)
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
function omi_nasdaq_phlxoptions_quoting_sqf_v9_0.init()
  nasdaq_phlxoptions_quoting_sqf_v9_0.accepted_sequence_number.current = nil
  nasdaq_phlxoptions_quoting_sqf_v9_0.conversation.current = nil
  nasdaq_phlxoptions_quoting_sqf_v9_0.conversation.flows = {}
end

-- Connection roles for Nasdaq PhlxOptions Quoting Sqf 9.0: Client is the initiator, Server is the acceptor
-- Initiator endpoint of each conversation, recorded from its first frame
local initiators = {}

-- Conversations whose first frame proved to be the acceptor's: the heuristic swaps the sides
local swapped = {}

-- Endpoint key of an address and port
local function endpoint(address, port)
  return tostring(address)..":"..tostring(port)
end


-- Conversation key, the same in both directions
local function conversation(packet)
  local source = endpoint(packet.src, packet.src_port)
  local destination = endpoint(packet.dst, packet.dst_port)

  if source < destination then
    return source.." "..destination
  end

  return destination.." "..source
end


-- Connection role of the frame's sender
nasdaq_phlxoptions_quoting_sqf_v9_0.role = function(packet)
  if omi_nasdaq_phlxoptions_quoting_sqf_v9_0.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nasdaq_phlxoptions_quoting_sqf_v9_0.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nasdaq_phlxoptions_quoting_sqf_v9_0.prefs.acceptor_port

  if acceptor_port ~= 0 and packet.dst_port == acceptor_port then
    return "initiator"
  end

  if acceptor_port ~= 0 and packet.src_port == acceptor_port then
    return "acceptor"
  end

  local key = conversation(packet)
  local sender = endpoint(packet.src, packet.src_port)

  if initiators[key] == nil then
    initiators[key] = sender
  end

  local sender_initiated = initiators[key] == sender

  if omi_nasdaq_phlxoptions_quoting_sqf_v9_0.prefs.swap_sides then
    sender_initiated = not sender_initiated
  end

  if swapped[key] then
    sender_initiated = not sender_initiated
  end

  if sender_initiated then
    return "initiator"
  end

  return "acceptor"
end


-- Swap the resolved sides of the frame's conversation
nasdaq_phlxoptions_quoting_sqf_v9_0.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nasdaq PhlxOptions Quoting Sqf 9.0
function omi_nasdaq_phlxoptions_quoting_sqf_v9_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_phlxoptions_quoting_sqf_v9_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_phlxoptions_quoting_sqf_v9_0, buffer(), omi_nasdaq_phlxoptions_quoting_sqf_v9_0.description, "("..buffer:len().." Bytes)")

  local role = nasdaq_phlxoptions_quoting_sqf_v9_0.role(packet)

  if role == "initiator" then
    return nasdaq_phlxoptions_quoting_sqf_v9_0.client_packet.dissect(buffer, packet, protocol)
  end

  return nasdaq_phlxoptions_quoting_sqf_v9_0.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nasdaq_phlxoptions_quoting_sqf_v9_0.client_packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end

  local client_packet_type = buffer(2, 1):string()

  -- Debug Packet
  if client_packet_type == "+" then
    return true
  end

  -- Login Request Packet
  if client_packet_type == "L" then
    return true
  end

  -- Unsequenced Data Packet: carries the application messages, which tell this protocol from others sharing the session framing
  if client_packet_type == "U" then
    if buffer:len() < 5 then
      return false
    end

    local unsequenced_message_type = buffer(3, 2):string()

    -- Notification Subscription Request Message
    if unsequenced_message_type == "AB" then
      return true
    end

    -- Add Complex Instrument Request Message
    if unsequenced_message_type == "AC" then
      return true
    end

    -- Mm Parameter Definition Request Message
    if unsequenced_message_type == "AE" then
      return true
    end

    -- Active Qp Self Replenishment Set Limit Message
    if unsequenced_message_type == "AG" then
      return true
    end

    -- Rapid Fire Config Request Message
    if unsequenced_message_type == "AF" then
      return true
    end

    -- Simple Quote Block Short Form Message
    if unsequenced_message_type == "QA" then
      return true
    end

    -- Simple Quote Block Short Form Detailed Message
    if unsequenced_message_type == "Qa" then
      return true
    end

    -- Simple Quote Block Long Form Message
    if unsequenced_message_type == "QM" then
      return true
    end

    -- Simple Quote Block Long Form Detailed Message
    if unsequenced_message_type == "Qm" then
      return true
    end

    -- Complex Quote Block Message
    if unsequenced_message_type == "QD" then
      return true
    end

    -- Complex Quote Block Detailed Message
    if unsequenced_message_type == "Qd" then
      return true
    end

    -- Underlying Purge Request Message
    if unsequenced_message_type == "Pu" then
      return true
    end

    -- Market Reentry Request Message
    if unsequenced_message_type == "RU" then
      return true
    end

    -- Active Qp Self Replenishment Request Reentry Message
    if unsequenced_message_type == "RG" then
      return true
    end

    -- Simple Msar Request Message
    if unsequenced_message_type == "SB" then
      return true
    end

    -- Complex Msar Request Message
    if unsequenced_message_type == "SX" then
      return true
    end

    return false
  end

  -- Client Heartbeat Packet
  if client_packet_type == "R" then
    return true
  end

  -- Logout Request Packet
  if client_packet_type == "O" then
    return true
  end

  return false
end

-- Fingerprint of Server Packet: would its message dispatch accept this frame?
nasdaq_phlxoptions_quoting_sqf_v9_0.server_packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end

  local server_packet_type = buffer(2, 1):string()

  -- Debug Packet
  if server_packet_type == "+" then
    return true
  end

  -- Login Accepted Packet
  if server_packet_type == "A" then
    return true
  end

  -- Login Rejected Packet
  if server_packet_type == "J" then
    return true
  end

  -- Sequenced Data Packet: carries the application messages, which tell this protocol from others sharing the session framing
  if server_packet_type == "S" then
    if buffer:len() < 5 then
      return false
    end

    local sequenced_message_type = buffer(3, 2):string()

    -- Msar Accept Message
    if sequenced_message_type == "SA" then
      return true
    end

    -- Msar Reject Message
    if sequenced_message_type == "SR" then
      return true
    end

    -- Complex Msar Accept Message
    if sequenced_message_type == "SY" then
      return true
    end

    -- Complex Msar Reject Message
    if sequenced_message_type == "SN" then
      return true
    end

    -- Underlying Permission Notification Message
    if sequenced_message_type == "AP" then
      return true
    end

    -- Mm Parameter Definition Notification Message
    if sequenced_message_type == "AJ" then
      return true
    end

    -- Rapid Fire Config Notification Message
    if sequenced_message_type == "Af" then
      return true
    end

    -- Active Qp Self Replenishment Parameter Definition Notification Message
    if sequenced_message_type == "AK" then
      return true
    end

    -- System Event Message
    if sequenced_message_type == "AS" then
      return true
    end

    -- Simple Instrument Directory Message
    if sequenced_message_type == "AD" then
      return true
    end

    -- Complex Instrument Directory Message
    if sequenced_message_type == "AR" then
      return true
    end

    -- Simple Instrument Trading Action Message
    if sequenced_message_type == "AH" then
      return true
    end

    -- Complex Instrument Trading Action Message
    if sequenced_message_type == "AI" then
      return true
    end

    -- Simple Quote Execution Notification Message
    if sequenced_message_type == "NE" then
      return true
    end

    -- Complex Quote Execution Notification Message
    if sequenced_message_type == "NV" then
      return true
    end

    -- Complex Quote Leg Execution Notification Message
    if sequenced_message_type == "NW" then
      return true
    end

    -- Simple Msar Notification Message
    if sequenced_message_type == "NS" then
      return true
    end

    -- Complex Msar Leg Notification Message
    if sequenced_message_type == "NL" then
      return true
    end

    -- Complex Msar Notification Message
    if sequenced_message_type == "NX" then
      return true
    end

    -- Opening Rotation Quote Spread Multiplier Notification Message
    if sequenced_message_type == "AM" then
      return true
    end

    return false
  end

  -- Server Unsequenced Data Packet: carries the application messages, which tell this protocol from others sharing the session framing
  if server_packet_type == "U" then
    if buffer:len() < 5 then
      return false
    end

    local server_unsequenced_message_type = buffer(3, 2):string()

    -- Notification Subscription Reply Message
    if server_unsequenced_message_type == "Ab" then
      return true
    end

    -- Add Complex Instrument Reply Message
    if server_unsequenced_message_type == "Ac" then
      return true
    end

    -- Mm Parameter Definition Reply Message
    if server_unsequenced_message_type == "Ae" then
      return true
    end

    -- Active Qp Self Replenishment Set Limit Reply Message
    if server_unsequenced_message_type == "Ag" then
      return true
    end

    -- Rapid Fire Config Reply Message
    if server_unsequenced_message_type == "AA" then
      return true
    end

    -- Quote Block Reply Message
    if server_unsequenced_message_type == "QS" then
      return true
    end

    -- Detailed Quote Block Reply Message
    if server_unsequenced_message_type == "Qs" then
      return true
    end

    -- Underlying Purge Reply Message
    if server_unsequenced_message_type == "Pr" then
      return true
    end

    -- Market Reentry Reply Message
    if server_unsequenced_message_type == "RR" then
      return true
    end

    -- Active Qp Self Replenishment Request Reentry Reply Message
    if server_unsequenced_message_type == "Rg" then
      return true
    end

    -- Auction Notification Message
    if server_unsequenced_message_type == "NA" then
      return true
    end

    -- Instrument Purge Notification Message
    if server_unsequenced_message_type == "ND" then
      return true
    end

    -- Underlying Purge Notification Message
    if server_unsequenced_message_type == "NU" then
      return true
    end

    -- Market Reentry Notification Message
    if server_unsequenced_message_type == "NR" then
      return true
    end

    return false
  end

  -- Server Heartbeat Packet
  if server_packet_type == "H" then
    return true
  end

  -- End Of Session Packet
  if server_packet_type == "Z" then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq PhlxOptions Quoting Sqf 9.0 (Tcp)
local function omi_nasdaq_phlxoptions_quoting_sqf_v9_0_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_phlxoptions_quoting_sqf_v9_0.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_phlxoptions_quoting_sqf_v9_0.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_phlxoptions_quoting_sqf_v9_0
  omi_nasdaq_phlxoptions_quoting_sqf_v9_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq PhlxOptions Quoting Sqf 9.0 (Tcp)
local function omi_nasdaq_phlxoptions_quoting_sqf_v9_0_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_phlxoptions_quoting_sqf_v9_0.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_phlxoptions_quoting_sqf_v9_0.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_phlxoptions_quoting_sqf_v9_0
  omi_nasdaq_phlxoptions_quoting_sqf_v9_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq PhlxOptions Quoting Sqf 9.0 (Tcp): apply the heuristic of the sender's connection role
local function omi_nasdaq_phlxoptions_quoting_sqf_v9_0_tcp_heuristic(buffer, packet, parent)
  local role = nasdaq_phlxoptions_quoting_sqf_v9_0.role(packet)
  local initiator = omi_nasdaq_phlxoptions_quoting_sqf_v9_0_tcp_initiator_heuristic
  local acceptor = omi_nasdaq_phlxoptions_quoting_sqf_v9_0_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nasdaq_phlxoptions_quoting_sqf_v9_0.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nasdaq_phlxoptions_quoting_sqf_v9_0.swap(packet)

  return false
end

-- Register Heuristics for Nasdaq PhlxOptions Quoting Sqf 9.0
omi_nasdaq_phlxoptions_quoting_sqf_v9_0:register_heuristic("tcp", omi_nasdaq_phlxoptions_quoting_sqf_v9_0_tcp_heuristic)

-- Register Nasdaq PhlxOptions Quoting Sqf 9.0 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nasdaq_phlxoptions_quoting_sqf_v9_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 9.0
--   Date: Tuesday, September 22, 2026
--   Specification: Options_ETH_SQF.pdf
--   Specification: Options_SQF.pdf
--   Specification: SoupBinTCP41.pdf
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
