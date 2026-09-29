-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq UsOptions Cti Itch 3.0 Protocol
local omi_nasdaq_usoptions_cti_itch_v3_0 = Proto("Omi.Nasdaq.UsOptions.Cti.Itch.v3.0", "Nasdaq UsOptions Cti Itch 3.0")

-- Protocol table
local nasdaq_usoptions_cti_itch_v3_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq UsOptions Cti Itch 3.0 Fields
omi_nasdaq_usoptions_cti_itch_v3_0.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "nasdaq.usoptions.cti.itch.v3.0.acceptedsequencenumber", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.accepted_session = ProtoField.new("Accepted Session", "nasdaq.usoptions.cti.itch.v3.0.acceptedsession", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.account = ProtoField.new("Account", "nasdaq.usoptions.cti.itch.v3.0.account", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.action = ProtoField.new("Action", "nasdaq.usoptions.cti.itch.v3.0.action", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.auction_id = ProtoField.new("Auction Id", "nasdaq.usoptions.cti.itch.v3.0.auctionid", ftypes.UINT32)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.auction_type = ProtoField.new("Auction Type", "nasdaq.usoptions.cti.itch.v3.0.auctiontype", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.broker = ProtoField.new("Broker", "nasdaq.usoptions.cti.itch.v3.0.broker", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.capacity = ProtoField.new("Capacity", "nasdaq.usoptions.cti.itch.v3.0.capacity", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.clearing_flags = ProtoField.new("Clearing Flags", "nasdaq.usoptions.cti.itch.v3.0.clearingflags", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.client_packet_type = ProtoField.new("Packet Type", "nasdaq.usoptions.cti.itch.v3.0.clientpackettype", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.closing_only = ProtoField.new("Closing Only", "nasdaq.usoptions.cti.itch.v3.0.closingonly", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.contra_broker = ProtoField.new("Contra Broker", "nasdaq.usoptions.cti.itch.v3.0.contrabroker", ftypes.UINT32)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.contra_capacity = ProtoField.new("Contra Capacity", "nasdaq.usoptions.cti.itch.v3.0.contracapacity", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.contra_exchange_clearing_number = ProtoField.new("Contra Exchange Clearing Number", "nasdaq.usoptions.cti.itch.v3.0.contraexchangeclearingnumber", ftypes.UINT32)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.contra_exchange_house = ProtoField.new("Contra Exchange House", "nasdaq.usoptions.cti.itch.v3.0.contraexchangehouse", ftypes.UINT32)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.contra_give_up_occ_clearing_number = ProtoField.new("Contra Give Up Occ Clearing Number", "nasdaq.usoptions.cti.itch.v3.0.contragiveupoccclearingnumber", ftypes.UINT32)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.contra_mpid = ProtoField.new("Contra Mpid", "nasdaq.usoptions.cti.itch.v3.0.contrampid", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.contra_nscc = ProtoField.new("Contra Nscc", "nasdaq.usoptions.cti.itch.v3.0.contranscc", ftypes.UINT32)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.contra_occ_clearing_number = ProtoField.new("Contra Occ Clearing Number", "nasdaq.usoptions.cti.itch.v3.0.contraoccclearingnumber", ftypes.UINT32)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.contra_second_broker = ProtoField.new("Contra Second Broker", "nasdaq.usoptions.cti.itch.v3.0.contrasecondbroker", ftypes.UINT32)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.contract_size = ProtoField.new("Contract Size", "nasdaq.usoptions.cti.itch.v3.0.contractsize", ftypes.UINT32)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.correction_number = ProtoField.new("Correction Number", "nasdaq.usoptions.cti.itch.v3.0.correctionnumber", ftypes.UINT16)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.cross_id = ProtoField.new("Cross Id", "nasdaq.usoptions.cti.itch.v3.0.crossid", ftypes.UINT32)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.usoptions.cti.itch.v3.0.currenttradingstate", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.customer_strategy_leg = ProtoField.new("Customer Strategy Leg", "nasdaq.usoptions.cti.itch.v3.0.customerstrategyleg", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.debug_text = ProtoField.new("Debug Text", "nasdaq.usoptions.cti.itch.v3.0.debugtext", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.directed_preferenced = ProtoField.new("Directed Preferenced", "nasdaq.usoptions.cti.itch.v3.0.directedpreferenced", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.event_code = ProtoField.new("Event Code", "nasdaq.usoptions.cti.itch.v3.0.eventcode", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.exchange_clearing_number = ProtoField.new("Exchange Clearing Number", "nasdaq.usoptions.cti.itch.v3.0.exchangeclearingnumber", ftypes.UINT32)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.exchange_house = ProtoField.new("Exchange House", "nasdaq.usoptions.cti.itch.v3.0.exchangehouse", ftypes.UINT32)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.exchange_suffix = ProtoField.new("Exchange Suffix", "nasdaq.usoptions.cti.itch.v3.0.exchangesuffix", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.executing_broker = ProtoField.new("Executing Broker", "nasdaq.usoptions.cti.itch.v3.0.executingbroker", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.execution_market = ProtoField.new("Execution Market", "nasdaq.usoptions.cti.itch.v3.0.executionmarket", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.execution_type = ProtoField.new("Execution Type", "nasdaq.usoptions.cti.itch.v3.0.executiontype", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.expiration = ProtoField.new("Expiration", "nasdaq.usoptions.cti.itch.v3.0.expiration", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.expiration_day = ProtoField.new("Expiration Day", "nasdaq.usoptions.cti.itch.v3.0.expirationday", ftypes.UINT16, nil, base.DEC, 0x001F)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.usoptions.cti.itch.v3.0.expirationmonth", ftypes.UINT16, nil, base.DEC, 0x01E0)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.usoptions.cti.itch.v3.0.expirationyear", ftypes.UINT16, nil, base.DEC, 0xFE00)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.fbms_order = ProtoField.new("Fbms Order", "nasdaq.usoptions.cti.itch.v3.0.fbmsorder", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.firm = ProtoField.new("Firm", "nasdaq.usoptions.cti.itch.v3.0.firm", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.give_up_occ_clearing_number = ProtoField.new("Give Up Occ Clearing Number", "nasdaq.usoptions.cti.itch.v3.0.giveupoccclearingnumber", ftypes.UINT32)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.ise_directed_order = ProtoField.new("Ise Directed Order", "nasdaq.usoptions.cti.itch.v3.0.isedirectedorder", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0800)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.leg_expiration = ProtoField.new("Leg Expiration", "nasdaq.usoptions.cti.itch.v3.0.legexpiration", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.leg_expiration_day = ProtoField.new("Leg Expiration Day", "nasdaq.usoptions.cti.itch.v3.0.legexpirationday", ftypes.UINT16, nil, base.DEC, 0x001F)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.leg_expiration_month = ProtoField.new("Leg Expiration Month", "nasdaq.usoptions.cti.itch.v3.0.legexpirationmonth", ftypes.UINT16, nil, base.DEC, 0x01E0)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.leg_expiration_year = ProtoField.new("Leg Expiration Year", "nasdaq.usoptions.cti.itch.v3.0.legexpirationyear", ftypes.UINT16, nil, base.DEC, 0xFE00)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.leg_option_id = ProtoField.new("Leg Option Id", "nasdaq.usoptions.cti.itch.v3.0.legoptionid", ftypes.UINT32)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.leg_option_kind = ProtoField.new("Leg Option Kind", "nasdaq.usoptions.cti.itch.v3.0.legoptionkind", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.leg_ratio = ProtoField.new("Leg Ratio", "nasdaq.usoptions.cti.itch.v3.0.legratio", ftypes.UINT32)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.leg_security_symbol = ProtoField.new("Leg Security Symbol", "nasdaq.usoptions.cti.itch.v3.0.legsecuritysymbol", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.leg_side = ProtoField.new("Leg Side", "nasdaq.usoptions.cti.itch.v3.0.legside", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.leg_strike_price = ProtoField.new("Leg Strike Price", "nasdaq.usoptions.cti.itch.v3.0.legstrikeprice", ftypes.DOUBLE)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.liquidity = ProtoField.new("Liquidity", "nasdaq.usoptions.cti.itch.v3.0.liquidity", ftypes.UINT8)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.make_take_program = ProtoField.new("Make Take Program", "nasdaq.usoptions.cti.itch.v3.0.maketakeprogram", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.match_id = ProtoField.new("Match Id", "nasdaq.usoptions.cti.itch.v3.0.matchid", ftypes.UINT32)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.mkt_order = ProtoField.new("Mkt Order", "nasdaq.usoptions.cti.itch.v3.0.mktorder", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.monthly_expiration = ProtoField.new("Monthly Expiration", "nasdaq.usoptions.cti.itch.v3.0.monthlyexpiration", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0800)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.mpid = ProtoField.new("Mpid", "nasdaq.usoptions.cti.itch.v3.0.mpid", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.mpv = ProtoField.new("Mpv", "nasdaq.usoptions.cti.itch.v3.0.mpv", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.multi_account = ProtoField.new("Multi Account", "nasdaq.usoptions.cti.itch.v3.0.multiaccount", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.nanoseconds = ProtoField.new("Nanoseconds", "nasdaq.usoptions.cti.itch.v3.0.nanoseconds", ftypes.UINT32)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.nscc = ProtoField.new("Nscc", "nasdaq.usoptions.cti.itch.v3.0.nscc", ftypes.UINT32)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.number_of_legs = ProtoField.new("Number Of Legs", "nasdaq.usoptions.cti.itch.v3.0.numberoflegs", ftypes.UINT8)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.occ_clearing_number = ProtoField.new("Occ Clearing Number", "nasdaq.usoptions.cti.itch.v3.0.occclearingnumber", ftypes.UINT32)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.open_close_indicator = ProtoField.new("Open Close Indicator", "nasdaq.usoptions.cti.itch.v3.0.opencloseindicator", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.option_closing_type = ProtoField.new("Option Closing Type", "nasdaq.usoptions.cti.itch.v3.0.optionclosingtype", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.option_id = ProtoField.new("Option Id", "nasdaq.usoptions.cti.itch.v3.0.optionid", ftypes.UINT32)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.option_kind = ProtoField.new("Option Kind", "nasdaq.usoptions.cti.itch.v3.0.optionkind", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.order_date = ProtoField.new("Order Date", "nasdaq.usoptions.cti.itch.v3.0.orderdate", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.order_date_day = ProtoField.new("Order Date Day", "nasdaq.usoptions.cti.itch.v3.0.orderdateday", ftypes.UINT16, nil, base.DEC, 0x001F)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.order_date_month = ProtoField.new("Order Date Month", "nasdaq.usoptions.cti.itch.v3.0.orderdatemonth", ftypes.UINT16, nil, base.DEC, 0x01E0)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.order_date_year = ProtoField.new("Order Date Year", "nasdaq.usoptions.cti.itch.v3.0.orderdateyear", ftypes.UINT16, nil, base.DEC, 0xFE00)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.order_id = ProtoField.new("Order Id", "nasdaq.usoptions.cti.itch.v3.0.orderid", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.order_indicators = ProtoField.new("Order Indicators", "nasdaq.usoptions.cti.itch.v3.0.orderindicators", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.order_price = ProtoField.new("Order Price", "nasdaq.usoptions.cti.itch.v3.0.orderprice", ftypes.DOUBLE)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.order_size = ProtoField.new("Order Size", "nasdaq.usoptions.cti.itch.v3.0.ordersize", ftypes.UINT32)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.origin_market = ProtoField.new("Origin Market", "nasdaq.usoptions.cti.itch.v3.0.originmarket", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.origin_type = ProtoField.new("Origin Type", "nasdaq.usoptions.cti.itch.v3.0.origintype", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.usoptions.cti.itch.v3.0.packetlength", ftypes.UINT16)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.password = ProtoField.new("Password", "nasdaq.usoptions.cti.itch.v3.0.password", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.penny_pilot = ProtoField.new("Penny Pilot", "nasdaq.usoptions.cti.itch.v3.0.pennypilot", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.post_only_alo = ProtoField.new("Post Only Alo", "nasdaq.usoptions.cti.itch.v3.0.postonlyalo", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.principal_agent = ProtoField.new("Principal Agent", "nasdaq.usoptions.cti.itch.v3.0.principalagent", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.priority_market_maker = ProtoField.new("Priority Market Maker", "nasdaq.usoptions.cti.itch.v3.0.prioritymarketmaker", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.quarterly_expiration = ProtoField.new("Quarterly Expiration", "nasdaq.usoptions.cti.itch.v3.0.quarterlyexpiration", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0400)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.quote_id = ProtoField.new("Quote Id", "nasdaq.usoptions.cti.itch.v3.0.quoteid", ftypes.UINT64)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.ref_correction_number = ProtoField.new("Ref Correction Number", "nasdaq.usoptions.cti.itch.v3.0.refcorrectionnumber", ftypes.UINT16)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.ref_match_id = ProtoField.new("Ref Match Id", "nasdaq.usoptions.cti.itch.v3.0.refmatchid", ftypes.UINT32)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.ref_trade_id = ProtoField.new("Ref Trade Id", "nasdaq.usoptions.cti.itch.v3.0.reftradeid", ftypes.UINT32)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.usoptions.cti.itch.v3.0.rejectreasoncode", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.usoptions.cti.itch.v3.0.requestedsequencenumber", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.usoptions.cti.itch.v3.0.requestedsession", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.reserved_16 = ProtoField.new("Reserved 16", "nasdaq.usoptions.cti.itch.v3.0.reserved16", ftypes.BYTES)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.reserved_4 = ProtoField.new("Reserved 4", "nasdaq.usoptions.cti.itch.v3.0.reserved4", ftypes.BYTES)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.reserved_6 = ProtoField.new("Reserved 6", "nasdaq.usoptions.cti.itch.v3.0.reserved6", ftypes.BYTES)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.reserved_8 = ProtoField.new("Reserved 8", "nasdaq.usoptions.cti.itch.v3.0.reserved8", ftypes.BYTES)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.reserved_clearing_flags = ProtoField.new("Reserved Clearing Flags", "nasdaq.usoptions.cti.itch.v3.0.reservedclearingflags", ftypes.UINT16, nil, base.DEC, 0x7FFF)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.reserved_order_indicators = ProtoField.new("Reserved Order Indicators", "nasdaq.usoptions.cti.itch.v3.0.reservedorderindicators", ftypes.UINT16, nil, base.DEC, 0x07FF)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.reserved_trade_flags = ProtoField.new("Reserved Trade Flags", "nasdaq.usoptions.cti.itch.v3.0.reservedtradeflags", ftypes.UINT16, nil, base.DEC, 0x03FF)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.second_broker = ProtoField.new("Second Broker", "nasdaq.usoptions.cti.itch.v3.0.secondbroker", ftypes.UINT32)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.second_reserved_8 = ProtoField.new("Second Reserved 8", "nasdaq.usoptions.cti.itch.v3.0.secondreserved8", ftypes.BYTES)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.seconds = ProtoField.new("Seconds", "nasdaq.usoptions.cti.itch.v3.0.seconds", ftypes.UINT32)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.usoptions.cti.itch.v3.0.securitysymbol", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.send_type = ProtoField.new("Send Type", "nasdaq.usoptions.cti.itch.v3.0.sendtype", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.usoptions.cti.itch.v3.0.sequencedmessagetype", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.server_packet_type = ProtoField.new("Packet Type", "nasdaq.usoptions.cti.itch.v3.0.serverpackettype", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.short_sell = ProtoField.new("Short Sell", "nasdaq.usoptions.cti.itch.v3.0.shortsell", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.side_changed = ProtoField.new("Side Changed", "nasdaq.usoptions.cti.itch.v3.0.sidechanged", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.single_listed = ProtoField.new("Single Listed", "nasdaq.usoptions.cti.itch.v3.0.singlelisted", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.sqf_sweep_id = ProtoField.new("Sqf Sweep Id", "nasdaq.usoptions.cti.itch.v3.0.sqfsweepid", ftypes.UINT64)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.strategy_id = ProtoField.new("Strategy Id", "nasdaq.usoptions.cti.itch.v3.0.strategyid", ftypes.UINT32)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.strategy_leg = ProtoField.new("Strategy Leg", "nasdaq.usoptions.cti.itch.v3.0.strategyleg", ftypes.UINT16)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.strategy_legs = ProtoField.new("Strategy Legs", "nasdaq.usoptions.cti.itch.v3.0.strategylegs", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.strike_price = ProtoField.new("Strike Price", "nasdaq.usoptions.cti.itch.v3.0.strikeprice", ftypes.DOUBLE)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.supplementary_id = ProtoField.new("Supplementary Id", "nasdaq.usoptions.cti.itch.v3.0.supplementaryid", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.third_reserved_8 = ProtoField.new("Third Reserved 8", "nasdaq.usoptions.cti.itch.v3.0.thirdreserved8", ftypes.BYTES)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.tif = ProtoField.new("Tif", "nasdaq.usoptions.cti.itch.v3.0.tif", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.tradable = ProtoField.new("Tradable", "nasdaq.usoptions.cti.itch.v3.0.tradable", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.trade_contracts = ProtoField.new("Trade Contracts", "nasdaq.usoptions.cti.itch.v3.0.tradecontracts", ftypes.UINT32)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.trade_flags = ProtoField.new("Trade Flags", "nasdaq.usoptions.cti.itch.v3.0.tradeflags", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.trade_id = ProtoField.new("Trade Id", "nasdaq.usoptions.cti.itch.v3.0.tradeid", ftypes.UINT32)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.trade_price = ProtoField.new("Trade Price", "nasdaq.usoptions.cti.itch.v3.0.tradeprice", ftypes.DOUBLE)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.trade_side = ProtoField.new("Trade Side", "nasdaq.usoptions.cti.itch.v3.0.tradeside", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.transaction_type = ProtoField.new("Transaction Type", "nasdaq.usoptions.cti.itch.v3.0.transactiontype", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.usoptions.cti.itch.v3.0.underlyingsymbol", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "nasdaq.usoptions.cti.itch.v3.0.unsequencedmessage", ftypes.BYTES)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.usoptions.cti.itch.v3.0.unsequencedmessagetype", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.username = ProtoField.new("Username", "nasdaq.usoptions.cti.itch.v3.0.username", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.version = ProtoField.new("Version", "nasdaq.usoptions.cti.itch.v3.0.version", ftypes.UINT8)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.weekly_expiration = ProtoField.new("Weekly Expiration", "nasdaq.usoptions.cti.itch.v3.0.weeklyexpiration", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000)

-- Nasdaq UsOptions Cti Itch 3.0 Framing
omi_nasdaq_usoptions_cti_itch_v3_0.fields.client_packet = ProtoField.new("Packet", "nasdaq.usoptions.cti.itch.v3.0.clientpacket", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.client_packet_header = ProtoField.new("Packet Header", "nasdaq.usoptions.cti.itch.v3.0.clientpacketheader", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.usoptions.cti.itch.v3.0.clientsoupbintcppacket", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.server_packet = ProtoField.new("Packet", "nasdaq.usoptions.cti.itch.v3.0.serverpacket", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.server_packet_header = ProtoField.new("Packet Header", "nasdaq.usoptions.cti.itch.v3.0.serverpacketheader", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.usoptions.cti.itch.v3.0.serversoupbintcppacket", ftypes.STRING)

-- Nasdaq UsOptions Cti 3.0 Application Messages
omi_nasdaq_usoptions_cti_itch_v3_0.fields.cancel_trade_message = ProtoField.new("Cancel Trade Message", "nasdaq.usoptions.cti.itch.v3.0.canceltrademessage", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.complex_order_strategy_message = ProtoField.new("Complex Order Strategy Message", "nasdaq.usoptions.cti.itch.v3.0.complexorderstrategymessage", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.complex_trading_action_message = ProtoField.new("Complex Trading Action Message", "nasdaq.usoptions.cti.itch.v3.0.complextradingactionmessage", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.options_directory_message = ProtoField.new("Options Directory Message", "nasdaq.usoptions.cti.itch.v3.0.optionsdirectorymessage", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.security_trading_action_message = ProtoField.new("Security Trading Action Message", "nasdaq.usoptions.cti.itch.v3.0.securitytradingactionmessage", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.usoptions.cti.itch.v3.0.systemeventmessage", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.trade_message = ProtoField.new("Trade Message", "nasdaq.usoptions.cti.itch.v3.0.trademessage", ftypes.STRING)

-- Nasdaq UsOptions Cti 3.0 Session Messages
omi_nasdaq_usoptions_cti_itch_v3_0.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "nasdaq.usoptions.cti.itch.v3.0.clientheartbeat", ftypes.BYTES)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.usoptions.cti.itch.v3.0.debugpacket", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.usoptions.cti.itch.v3.0.endofsession", ftypes.BYTES)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.usoptions.cti.itch.v3.0.loginacceptedpacket", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.usoptions.cti.itch.v3.0.loginrejectedpacket", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.usoptions.cti.itch.v3.0.loginrequestpacket", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.logout_request = ProtoField.new("Logout Request", "nasdaq.usoptions.cti.itch.v3.0.logoutrequest", ftypes.BYTES)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.usoptions.cti.itch.v3.0.sequenceddatapacket", ftypes.STRING)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "nasdaq.usoptions.cti.itch.v3.0.serverheartbeat", ftypes.BYTES)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.usoptions.cti.itch.v3.0.unsequenceddatapacket", ftypes.STRING)

-- Nasdaq UsOptions Cti Itch 3.0 Generated Fields
omi_nasdaq_usoptions_cti_itch_v3_0.fields.strategy_legs_index = ProtoField.new("Strategy Legs Index", "nasdaq.usoptions.cti.itch.v3.0.strategylegsindex", ftypes.UINT16)
omi_nasdaq_usoptions_cti_itch_v3_0.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "nasdaq.usoptions.cti.itch.v3.0.sequenceddatapacketsequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nasdaq UsOptions Cti Itch 3.0 Formatting
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

-- Nasdaq UsOptions Cti Itch 3.0 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.session_messages = true
show.repeating_groups = true
show.indexes = true
show.sequences = true

-- Register Nasdaq UsOptions Cti Itch 3.0 Show Options
omi_nasdaq_usoptions_cti_itch_v3_0.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nasdaq_usoptions_cti_itch_v3_0.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nasdaq_usoptions_cti_itch_v3_0.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nasdaq_usoptions_cti_itch_v3_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_usoptions_cti_itch_v3_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_usoptions_cti_itch_v3_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_usoptions_cti_itch_v3_0.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_usoptions_cti_itch_v3_0.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_nasdaq_usoptions_cti_itch_v3_0.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nasdaq_usoptions_cti_itch_v3_0.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

-- Handle changed preferences
function omi_nasdaq_usoptions_cti_itch_v3_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_usoptions_cti_itch_v3_0.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_usoptions_cti_itch_v3_0.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_usoptions_cti_itch_v3_0.prefs.show_headers then
    show.headers = omi_nasdaq_usoptions_cti_itch_v3_0.prefs.show_headers
  end
  if show.repeating_groups ~= omi_nasdaq_usoptions_cti_itch_v3_0.prefs.show_repeating_groups then
    show.repeating_groups = omi_nasdaq_usoptions_cti_itch_v3_0.prefs.show_repeating_groups
  end
  if show.session_messages ~= omi_nasdaq_usoptions_cti_itch_v3_0.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_usoptions_cti_itch_v3_0.prefs.show_session_messages
  end
  if show.structs ~= omi_nasdaq_usoptions_cti_itch_v3_0.prefs.show_structs then
    show.structs = omi_nasdaq_usoptions_cti_itch_v3_0.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_usoptions_cti_itch_v3_0.prefs.show_indexes then
    show.indexes = omi_nasdaq_usoptions_cti_itch_v3_0.prefs.show_indexes
  end
  if show.sequences ~= omi_nasdaq_usoptions_cti_itch_v3_0.prefs.show_sequences then
    show.sequences = omi_nasdaq_usoptions_cti_itch_v3_0.prefs.show_sequences
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nasdaq_usoptions_cti_itch_v3_0.conversation = {}
nasdaq_usoptions_cti_itch_v3_0.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
nasdaq_usoptions_cti_itch_v3_0.stream_frame = nil
nasdaq_usoptions_cti_itch_v3_0.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
nasdaq_usoptions_cti_itch_v3_0.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nasdaq_usoptions_cti_itch_v3_0.conversation.data = function(packet)
  local key = nasdaq_usoptions_cti_itch_v3_0.conversation.key(packet)
  local data = nasdaq_usoptions_cti_itch_v3_0.conversation.flows[key]
  if data == nil then
    data = { accepted_sequence_number = { last = nil, frames = {} }, sequence = { next = nil, frames = {} } }
    nasdaq_usoptions_cti_itch_v3_0.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nasdaq_usoptions_cti_itch_v3_0.conversation.current = nil


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
-- Nasdaq UsOptions Cti Itch 3.0 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
nasdaq_usoptions_cti_itch_v3_0.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
nasdaq_usoptions_cti_itch_v3_0.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
nasdaq_usoptions_cti_itch_v3_0.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
nasdaq_usoptions_cti_itch_v3_0.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_usoptions_cti_itch_v3_0.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
nasdaq_usoptions_cti_itch_v3_0.accepted_session = {}

-- Size: Accepted Session
nasdaq_usoptions_cti_itch_v3_0.accepted_session.size = 10

-- Display: Accepted Session
nasdaq_usoptions_cti_itch_v3_0.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
nasdaq_usoptions_cti_itch_v3_0.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.accepted_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_usoptions_cti_itch_v3_0.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Account
nasdaq_usoptions_cti_itch_v3_0.account = {}

-- Size: Account
nasdaq_usoptions_cti_itch_v3_0.account.size = 32

-- Display: Account
nasdaq_usoptions_cti_itch_v3_0.account.display = function(value)
  return "Account: "..value
end

-- Dissect: Account
nasdaq_usoptions_cti_itch_v3_0.account.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.account.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_usoptions_cti_itch_v3_0.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.account, range, value, display)

  return offset + length, value
end

-- Action
nasdaq_usoptions_cti_itch_v3_0.action = {}

-- Size: Action
nasdaq_usoptions_cti_itch_v3_0.action.size = 1

-- Display: Action
nasdaq_usoptions_cti_itch_v3_0.action.display = function(value)
  if value == "A" then
    return "Action: Add (A)"
  end
  if value == "D" then
    return "Action: Delete (D)"
  end

  return "Action: Unknown("..value..")"
end

-- Dissect: Action
nasdaq_usoptions_cti_itch_v3_0.action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.action, range, value, display)

  return offset + length, value
end

-- Auction Id
nasdaq_usoptions_cti_itch_v3_0.auction_id = {}

-- Size: Auction Id
nasdaq_usoptions_cti_itch_v3_0.auction_id.size = 4

-- Display: Auction Id
nasdaq_usoptions_cti_itch_v3_0.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
nasdaq_usoptions_cti_itch_v3_0.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.auction_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Type
nasdaq_usoptions_cti_itch_v3_0.auction_type = {}

-- Size: Auction Type
nasdaq_usoptions_cti_itch_v3_0.auction_type.size = 1

-- Display: Auction Type
nasdaq_usoptions_cti_itch_v3_0.auction_type.display = function(value)
  if value == "P" then
    return "Auction Type: Simple Order Pixl Prism Pim (P)"
  end
  if value == "Q" then
    return "Auction Type: Complex Order Pixl Pim (Q)"
  end
  if value == "O" then
    return "Auction Type: Opening (O)"
  end
  if value == "C" then
    return "Auction Type: Complex Order Live Auction (C)"
  end
  if value == "Z" then
    return "Auction Type: Complex Opening Auction (Z)"
  end
  if value == "S" then
    return "Auction Type: Simple Order Solicitation (S)"
  end
  if value == "R" then
    return "Auction Type: Complex Order Solicitation (R)"
  end
  if value == "F" then
    return "Auction Type: Simple Facilitation (F)"
  end
  if value == "G" then
    return "Auction Type: Complex Facilitation (G)"
  end
  if value == "B" then
    return "Auction Type: Block (B)"
  end
  if value == "X" then
    return "Auction Type: Flex Auction (X)"
  end
  if value == "Y" then
    return "Auction Type: Complex Flex Auction (Y)"
  end
  if value == " " then
    return "Auction Type: No Auction (<whitespace>)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nasdaq_usoptions_cti_itch_v3_0.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Broker
nasdaq_usoptions_cti_itch_v3_0.broker = {}

-- Size: Broker
nasdaq_usoptions_cti_itch_v3_0.broker.size = 4

-- Display: Broker
nasdaq_usoptions_cti_itch_v3_0.broker.display = function(value)
  return "Broker: "..value
end

-- Dissect: Broker
nasdaq_usoptions_cti_itch_v3_0.broker.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.broker.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_usoptions_cti_itch_v3_0.broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.broker, range, value, display)

  return offset + length, value
end

-- Capacity
nasdaq_usoptions_cti_itch_v3_0.capacity = {}

-- Size: Capacity
nasdaq_usoptions_cti_itch_v3_0.capacity.size = 1

-- Display: Capacity
nasdaq_usoptions_cti_itch_v3_0.capacity.display = function(value)
  if value == "C" then
    return "Capacity: Customer (C)"
  end
  if value == "P" then
    return "Capacity: Professional Customer (P)"
  end
  if value == "B" then
    return "Capacity: Broker Dealer Customer (B)"
  end
  if value == "M" then
    return "Capacity: Exchange Registered Market Maker (M)"
  end
  if value == "O" then
    return "Capacity: Other Exchange Registered Market Maker (O)"
  end
  if value == " " then
    return "Capacity: Not Applicable (<whitespace>)"
  end
  if value == "J" then
    return "Capacity: Joint Back Office (J)"
  end
  if value == "F" then
    return "Capacity: Firm (F)"
  end

  return "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
nasdaq_usoptions_cti_itch_v3_0.capacity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.capacity, range, value, display)

  return offset + length, value
end

-- Client Packet Type
nasdaq_usoptions_cti_itch_v3_0.client_packet_type = {}

-- Size: Client Packet Type
nasdaq_usoptions_cti_itch_v3_0.client_packet_type.size = 1

-- Display: Client Packet Type
nasdaq_usoptions_cti_itch_v3_0.client_packet_type.display = function(value)
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
nasdaq_usoptions_cti_itch_v3_0.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Closing Only
nasdaq_usoptions_cti_itch_v3_0.closing_only = {}

-- Size: Closing Only
nasdaq_usoptions_cti_itch_v3_0.closing_only.size = 1

-- Display: Closing Only
nasdaq_usoptions_cti_itch_v3_0.closing_only.display = function(value)
  if value == "Y" then
    return "Closing Only: Closing Position Only (Y)"
  end
  if value == "N" then
    return "Closing Only: Not Closing Position Only (N)"
  end

  return "Closing Only: Unknown("..value..")"
end

-- Dissect: Closing Only
nasdaq_usoptions_cti_itch_v3_0.closing_only.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.closing_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.closing_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.closing_only, range, value, display)

  return offset + length, value
end

-- Contra Broker
nasdaq_usoptions_cti_itch_v3_0.contra_broker = {}

-- Size: Contra Broker
nasdaq_usoptions_cti_itch_v3_0.contra_broker.size = 4

-- Display: Contra Broker
nasdaq_usoptions_cti_itch_v3_0.contra_broker.display = function(value)
  return "Contra Broker: "..value
end

-- Dissect: Contra Broker
nasdaq_usoptions_cti_itch_v3_0.contra_broker.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.contra_broker.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.contra_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.contra_broker, range, value, display)

  return offset + length, value
end

-- Contra Capacity
nasdaq_usoptions_cti_itch_v3_0.contra_capacity = {}

-- Size: Contra Capacity
nasdaq_usoptions_cti_itch_v3_0.contra_capacity.size = 1

-- Display: Contra Capacity
nasdaq_usoptions_cti_itch_v3_0.contra_capacity.display = function(value)
  if value == "C" then
    return "Contra Capacity: Customer (C)"
  end
  if value == "E" then
    return "Contra Capacity: Proprietary Customer (E)"
  end
  if value == "R" then
    return "Contra Capacity: Retail Customer (R)"
  end
  if value == "P" then
    return "Contra Capacity: Professional Customer (P)"
  end
  if value == "B" then
    return "Contra Capacity: Broker Dealer Customer (B)"
  end
  if value == "M" then
    return "Contra Capacity: Exchange Registered Market Maker (M)"
  end
  if value == "O" then
    return "Contra Capacity: Other Exchange Registered Market Maker (O)"
  end
  if value == " " then
    return "Contra Capacity: Not Applicable (<whitespace>)"
  end
  if value == "J" then
    return "Contra Capacity: Joint Back Office (J)"
  end
  if value == "F" then
    return "Contra Capacity: Firm (F)"
  end
  if value == "f" then
    return "Contra Capacity: Proprietary Firm (f)"
  end
  if value == "K" then
    return "Contra Capacity: Broker Dealer Firm (K)"
  end

  return "Contra Capacity: Unknown("..value..")"
end

-- Dissect: Contra Capacity
nasdaq_usoptions_cti_itch_v3_0.contra_capacity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.contra_capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.contra_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.contra_capacity, range, value, display)

  return offset + length, value
end

-- Contra Exchange Clearing Number
nasdaq_usoptions_cti_itch_v3_0.contra_exchange_clearing_number = {}

-- Size: Contra Exchange Clearing Number
nasdaq_usoptions_cti_itch_v3_0.contra_exchange_clearing_number.size = 4

-- Display: Contra Exchange Clearing Number
nasdaq_usoptions_cti_itch_v3_0.contra_exchange_clearing_number.display = function(value)
  return "Contra Exchange Clearing Number: "..value
end

-- Dissect: Contra Exchange Clearing Number
nasdaq_usoptions_cti_itch_v3_0.contra_exchange_clearing_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.contra_exchange_clearing_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.contra_exchange_clearing_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.contra_exchange_clearing_number, range, value, display)

  return offset + length, value
end

-- Contra Exchange House
nasdaq_usoptions_cti_itch_v3_0.contra_exchange_house = {}

-- Size: Contra Exchange House
nasdaq_usoptions_cti_itch_v3_0.contra_exchange_house.size = 4

-- Display: Contra Exchange House
nasdaq_usoptions_cti_itch_v3_0.contra_exchange_house.display = function(value)
  return "Contra Exchange House: "..value
end

-- Dissect: Contra Exchange House
nasdaq_usoptions_cti_itch_v3_0.contra_exchange_house.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.contra_exchange_house.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.contra_exchange_house.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.contra_exchange_house, range, value, display)

  return offset + length, value
end

-- Contra Give Up Occ Clearing Number
nasdaq_usoptions_cti_itch_v3_0.contra_give_up_occ_clearing_number = {}

-- Size: Contra Give Up Occ Clearing Number
nasdaq_usoptions_cti_itch_v3_0.contra_give_up_occ_clearing_number.size = 4

-- Display: Contra Give Up Occ Clearing Number
nasdaq_usoptions_cti_itch_v3_0.contra_give_up_occ_clearing_number.display = function(value)
  return "Contra Give Up Occ Clearing Number: "..value
end

-- Dissect: Contra Give Up Occ Clearing Number
nasdaq_usoptions_cti_itch_v3_0.contra_give_up_occ_clearing_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.contra_give_up_occ_clearing_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.contra_give_up_occ_clearing_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.contra_give_up_occ_clearing_number, range, value, display)

  return offset + length, value
end

-- Contra Mpid
nasdaq_usoptions_cti_itch_v3_0.contra_mpid = {}

-- Size: Contra Mpid
nasdaq_usoptions_cti_itch_v3_0.contra_mpid.size = 5

-- Display: Contra Mpid
nasdaq_usoptions_cti_itch_v3_0.contra_mpid.display = function(value)
  return "Contra Mpid: "..value
end

-- Dissect: Contra Mpid
nasdaq_usoptions_cti_itch_v3_0.contra_mpid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.contra_mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_usoptions_cti_itch_v3_0.contra_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.contra_mpid, range, value, display)

  return offset + length, value
end

-- Contra Nscc
nasdaq_usoptions_cti_itch_v3_0.contra_nscc = {}

-- Size: Contra Nscc
nasdaq_usoptions_cti_itch_v3_0.contra_nscc.size = 4

-- Display: Contra Nscc
nasdaq_usoptions_cti_itch_v3_0.contra_nscc.display = function(value)
  return "Contra Nscc: "..value
end

-- Dissect: Contra Nscc
nasdaq_usoptions_cti_itch_v3_0.contra_nscc.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.contra_nscc.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.contra_nscc.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.contra_nscc, range, value, display)

  return offset + length, value
end

-- Contra Occ Clearing Number
nasdaq_usoptions_cti_itch_v3_0.contra_occ_clearing_number = {}

-- Size: Contra Occ Clearing Number
nasdaq_usoptions_cti_itch_v3_0.contra_occ_clearing_number.size = 4

-- Display: Contra Occ Clearing Number
nasdaq_usoptions_cti_itch_v3_0.contra_occ_clearing_number.display = function(value)
  return "Contra Occ Clearing Number: "..value
end

-- Dissect: Contra Occ Clearing Number
nasdaq_usoptions_cti_itch_v3_0.contra_occ_clearing_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.contra_occ_clearing_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.contra_occ_clearing_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.contra_occ_clearing_number, range, value, display)

  return offset + length, value
end

-- Contra Second Broker
nasdaq_usoptions_cti_itch_v3_0.contra_second_broker = {}

-- Size: Contra Second Broker
nasdaq_usoptions_cti_itch_v3_0.contra_second_broker.size = 4

-- Display: Contra Second Broker
nasdaq_usoptions_cti_itch_v3_0.contra_second_broker.display = function(value)
  return "Contra Second Broker: "..value
end

-- Dissect: Contra Second Broker
nasdaq_usoptions_cti_itch_v3_0.contra_second_broker.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.contra_second_broker.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.contra_second_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.contra_second_broker, range, value, display)

  return offset + length, value
end

-- Contract Size
nasdaq_usoptions_cti_itch_v3_0.contract_size = {}

-- Size: Contract Size
nasdaq_usoptions_cti_itch_v3_0.contract_size.size = 4

-- Display: Contract Size
nasdaq_usoptions_cti_itch_v3_0.contract_size.display = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
nasdaq_usoptions_cti_itch_v3_0.contract_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.contract_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.contract_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.contract_size, range, value, display)

  return offset + length, value
end

-- Correction Number
nasdaq_usoptions_cti_itch_v3_0.correction_number = {}

-- Size: Correction Number
nasdaq_usoptions_cti_itch_v3_0.correction_number.size = 2

-- Display: Correction Number
nasdaq_usoptions_cti_itch_v3_0.correction_number.display = function(value)
  return "Correction Number: "..value
end

-- Dissect: Correction Number
nasdaq_usoptions_cti_itch_v3_0.correction_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.correction_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.correction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.correction_number, range, value, display)

  return offset + length, value
end

-- Cross Id
nasdaq_usoptions_cti_itch_v3_0.cross_id = {}

-- Size: Cross Id
nasdaq_usoptions_cti_itch_v3_0.cross_id.size = 4

-- Display: Cross Id
nasdaq_usoptions_cti_itch_v3_0.cross_id.display = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
nasdaq_usoptions_cti_itch_v3_0.cross_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.cross_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Current Trading State
nasdaq_usoptions_cti_itch_v3_0.current_trading_state = {}

-- Size: Current Trading State
nasdaq_usoptions_cti_itch_v3_0.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_usoptions_cti_itch_v3_0.current_trading_state.display = function(value)
  if value == "H" then
    return "Current Trading State: Halt In Effect (H)"
  end
  if value == "T" then
    return "Current Trading State: Trading Resumed (T)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_usoptions_cti_itch_v3_0.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Customer Strategy Leg
nasdaq_usoptions_cti_itch_v3_0.customer_strategy_leg = {}

-- Size: Customer Strategy Leg
nasdaq_usoptions_cti_itch_v3_0.customer_strategy_leg.size = 10

-- Display: Customer Strategy Leg
nasdaq_usoptions_cti_itch_v3_0.customer_strategy_leg.display = function(value)
  return "Customer Strategy Leg: "..value
end

-- Dissect: Customer Strategy Leg
nasdaq_usoptions_cti_itch_v3_0.customer_strategy_leg.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.customer_strategy_leg.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_usoptions_cti_itch_v3_0.customer_strategy_leg.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.customer_strategy_leg, range, value, display)

  return offset + length, value
end

-- Debug Text
nasdaq_usoptions_cti_itch_v3_0.debug_text = {}

-- Size: Debug Text
nasdaq_usoptions_cti_itch_v3_0.debug_text.size = 1

-- Display: Debug Text
nasdaq_usoptions_cti_itch_v3_0.debug_text.display = function(value)
  return "Debug Text: "..value
end

-- Dissect: Debug Text
nasdaq_usoptions_cti_itch_v3_0.debug_text.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.debug_text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.debug_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.debug_text, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_usoptions_cti_itch_v3_0.event_code = {}

-- Size: Event Code
nasdaq_usoptions_cti_itch_v3_0.event_code.size = 1

-- Display: Event Code
nasdaq_usoptions_cti_itch_v3_0.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages (O)"
  end
  if value == "S" then
    return "Event Code: Start Of System Hours (S)"
  end
  if value == "P" then
    return "Event Code: Start Of Pre Trading (P)"
  end
  if value == "D" then
    return "Event Code: End Of Pre Trading (D)"
  end
  if value == "Q" then
    return "Event Code: Start Of Opening Process (Q)"
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
  if value == "W" then
    return "Event Code: End Of Wco Early Closing (W)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_usoptions_cti_itch_v3_0.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.event_code, range, value, display)

  return offset + length, value
end

-- Exchange Clearing Number
nasdaq_usoptions_cti_itch_v3_0.exchange_clearing_number = {}

-- Size: Exchange Clearing Number
nasdaq_usoptions_cti_itch_v3_0.exchange_clearing_number.size = 4

-- Display: Exchange Clearing Number
nasdaq_usoptions_cti_itch_v3_0.exchange_clearing_number.display = function(value)
  return "Exchange Clearing Number: "..value
end

-- Dissect: Exchange Clearing Number
nasdaq_usoptions_cti_itch_v3_0.exchange_clearing_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.exchange_clearing_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.exchange_clearing_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.exchange_clearing_number, range, value, display)

  return offset + length, value
end

-- Exchange House
nasdaq_usoptions_cti_itch_v3_0.exchange_house = {}

-- Size: Exchange House
nasdaq_usoptions_cti_itch_v3_0.exchange_house.size = 4

-- Display: Exchange House
nasdaq_usoptions_cti_itch_v3_0.exchange_house.display = function(value)
  return "Exchange House: "..value
end

-- Dissect: Exchange House
nasdaq_usoptions_cti_itch_v3_0.exchange_house.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.exchange_house.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.exchange_house.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.exchange_house, range, value, display)

  return offset + length, value
end

-- Exchange Suffix
nasdaq_usoptions_cti_itch_v3_0.exchange_suffix = {}

-- Size: Exchange Suffix
nasdaq_usoptions_cti_itch_v3_0.exchange_suffix.size = 1

-- Display: Exchange Suffix
nasdaq_usoptions_cti_itch_v3_0.exchange_suffix.display = function(value)
  return "Exchange Suffix: "..value
end

-- Dissect: Exchange Suffix
nasdaq_usoptions_cti_itch_v3_0.exchange_suffix.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.exchange_suffix.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.exchange_suffix.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.exchange_suffix, range, value, display)

  return offset + length, value
end

-- Executing Broker
nasdaq_usoptions_cti_itch_v3_0.executing_broker = {}

-- Size: Executing Broker
nasdaq_usoptions_cti_itch_v3_0.executing_broker.size = 4

-- Display: Executing Broker
nasdaq_usoptions_cti_itch_v3_0.executing_broker.display = function(value)
  return "Executing Broker: "..value
end

-- Dissect: Executing Broker
nasdaq_usoptions_cti_itch_v3_0.executing_broker.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.executing_broker.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_usoptions_cti_itch_v3_0.executing_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.executing_broker, range, value, display)

  return offset + length, value
end

-- Execution Market
nasdaq_usoptions_cti_itch_v3_0.execution_market = {}

-- Size: Execution Market
nasdaq_usoptions_cti_itch_v3_0.execution_market.size = 1

-- Display: Execution Market
nasdaq_usoptions_cti_itch_v3_0.execution_market.display = function(value)
  if value == "A" then
    return "Execution Market: Amex (A)"
  end
  if value == "B" then
    return "Execution Market: Box (B)"
  end
  if value == "C" then
    return "Execution Market: Cboe (C)"
  end
  if value == "D" then
    return "Execution Market: Miax Emerald (D)"
  end
  if value == "I" then
    return "Execution Market: Ise (I)"
  end
  if value == "N" then
    return "Execution Market: Nyse (N)"
  end
  if value == "Q" then
    return "Execution Market: Nasdaq (Q)"
  end
  if value == "W" then
    return "Execution Market: C 2 (W)"
  end
  if value == "Z" then
    return "Execution Market: Bats (Z)"
  end
  if value == "X" then
    return "Execution Market: Phlx (X)"
  end
  if value == "T" then
    return "Execution Market: Ntx Options (T)"
  end
  if value == "M" then
    return "Execution Market: Miax (M)"
  end
  if value == "P" then
    return "Execution Market: Miax Pearl (P)"
  end
  if value == "H" then
    return "Execution Market: Gemx (H)"
  end
  if value == "E" then
    return "Execution Market: Bats Edgx (E)"
  end
  if value == "J" then
    return "Execution Market: Mrx (J)"
  end
  if value == "U" then
    return "Execution Market: Memx (U)"
  end
  if value == "S" then
    return "Execution Market: Miax Sapphire (S)"
  end
  if value == "V" then
    return "Execution Market: Iex (V)"
  end
  if value == "G" then
    return "Execution Market: Mx 2 (G)"
  end
  if value == " " then
    return "Execution Market: Not Away Trade (<whitespace>)"
  end

  return "Execution Market: Unknown("..value..")"
end

-- Dissect: Execution Market
nasdaq_usoptions_cti_itch_v3_0.execution_market.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.execution_market.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.execution_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.execution_market, range, value, display)

  return offset + length, value
end

-- Execution Type
nasdaq_usoptions_cti_itch_v3_0.execution_type = {}

-- Size: Execution Type
nasdaq_usoptions_cti_itch_v3_0.execution_type.size = 1

-- Display: Execution Type
nasdaq_usoptions_cti_itch_v3_0.execution_type.display = function(value)
  if value == "A" then
    return "Execution Type: Automatic (A)"
  end
  if value == "M" then
    return "Execution Type: Manual (M)"
  end

  return "Execution Type: Unknown("..value..")"
end

-- Dissect: Execution Type
nasdaq_usoptions_cti_itch_v3_0.execution_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.execution_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.execution_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.execution_type, range, value, display)

  return offset + length, value
end

-- Firm
nasdaq_usoptions_cti_itch_v3_0.firm = {}

-- Size: Firm
nasdaq_usoptions_cti_itch_v3_0.firm.size = 4

-- Display: Firm
nasdaq_usoptions_cti_itch_v3_0.firm.display = function(value)
  return "Firm: "..value
end

-- Dissect: Firm
nasdaq_usoptions_cti_itch_v3_0.firm.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_usoptions_cti_itch_v3_0.firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.firm, range, value, display)

  return offset + length, value
end

-- Give Up Occ Clearing Number
nasdaq_usoptions_cti_itch_v3_0.give_up_occ_clearing_number = {}

-- Size: Give Up Occ Clearing Number
nasdaq_usoptions_cti_itch_v3_0.give_up_occ_clearing_number.size = 4

-- Display: Give Up Occ Clearing Number
nasdaq_usoptions_cti_itch_v3_0.give_up_occ_clearing_number.display = function(value)
  return "Give Up Occ Clearing Number: "..value
end

-- Dissect: Give Up Occ Clearing Number
nasdaq_usoptions_cti_itch_v3_0.give_up_occ_clearing_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.give_up_occ_clearing_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.give_up_occ_clearing_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.give_up_occ_clearing_number, range, value, display)

  return offset + length, value
end

-- Leg Option Id
nasdaq_usoptions_cti_itch_v3_0.leg_option_id = {}

-- Size: Leg Option Id
nasdaq_usoptions_cti_itch_v3_0.leg_option_id.size = 4

-- Display: Leg Option Id
nasdaq_usoptions_cti_itch_v3_0.leg_option_id.display = function(value)
  return "Leg Option Id: "..value
end

-- Dissect: Leg Option Id
nasdaq_usoptions_cti_itch_v3_0.leg_option_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.leg_option_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.leg_option_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.leg_option_id, range, value, display)

  return offset + length, value
end

-- Leg Option Kind
nasdaq_usoptions_cti_itch_v3_0.leg_option_kind = {}

-- Size: Leg Option Kind
nasdaq_usoptions_cti_itch_v3_0.leg_option_kind.size = 1

-- Display: Leg Option Kind
nasdaq_usoptions_cti_itch_v3_0.leg_option_kind.display = function(value)
  if value == "C" then
    return "Leg Option Kind: Call (C)"
  end
  if value == "P" then
    return "Leg Option Kind: Put (P)"
  end
  if value == " " then
    return "Leg Option Kind: Stock Leg (<whitespace>)"
  end

  return "Leg Option Kind: Unknown("..value..")"
end

-- Dissect: Leg Option Kind
nasdaq_usoptions_cti_itch_v3_0.leg_option_kind.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.leg_option_kind.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.leg_option_kind.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.leg_option_kind, range, value, display)

  return offset + length, value
end

-- Leg Ratio
nasdaq_usoptions_cti_itch_v3_0.leg_ratio = {}

-- Size: Leg Ratio
nasdaq_usoptions_cti_itch_v3_0.leg_ratio.size = 4

-- Display: Leg Ratio
nasdaq_usoptions_cti_itch_v3_0.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
nasdaq_usoptions_cti_itch_v3_0.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Security Symbol
nasdaq_usoptions_cti_itch_v3_0.leg_security_symbol = {}

-- Size: Leg Security Symbol
nasdaq_usoptions_cti_itch_v3_0.leg_security_symbol.size = 8

-- Display: Leg Security Symbol
nasdaq_usoptions_cti_itch_v3_0.leg_security_symbol.display = function(value)
  return "Leg Security Symbol: "..value
end

-- Dissect: Leg Security Symbol
nasdaq_usoptions_cti_itch_v3_0.leg_security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.leg_security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_usoptions_cti_itch_v3_0.leg_security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.leg_security_symbol, range, value, display)

  return offset + length, value
end

-- Leg Side
nasdaq_usoptions_cti_itch_v3_0.leg_side = {}

-- Size: Leg Side
nasdaq_usoptions_cti_itch_v3_0.leg_side.size = 1

-- Display: Leg Side
nasdaq_usoptions_cti_itch_v3_0.leg_side.display = function(value)
  if value == "B" then
    return "Leg Side: Buy (B)"
  end
  if value == "S" then
    return "Leg Side: Sell (S)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
nasdaq_usoptions_cti_itch_v3_0.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.leg_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Leg Strike Price
nasdaq_usoptions_cti_itch_v3_0.leg_strike_price = {}

-- Size: Leg Strike Price
nasdaq_usoptions_cti_itch_v3_0.leg_strike_price.size = 4

-- Display: Leg Strike Price
nasdaq_usoptions_cti_itch_v3_0.leg_strike_price.display = function(value)
  return "Leg Strike Price: "..value
end

-- Translate: Leg Strike Price
nasdaq_usoptions_cti_itch_v3_0.leg_strike_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Leg Strike Price
nasdaq_usoptions_cti_itch_v3_0.leg_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.leg_strike_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_usoptions_cti_itch_v3_0.leg_strike_price.translate(raw)
  local display = nasdaq_usoptions_cti_itch_v3_0.leg_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.leg_strike_price, range, value, display)

  return offset + length, value
end

-- Liquidity
nasdaq_usoptions_cti_itch_v3_0.liquidity = {}

-- Size: Liquidity
nasdaq_usoptions_cti_itch_v3_0.liquidity.size = 1

-- Display: Liquidity
nasdaq_usoptions_cti_itch_v3_0.liquidity.display = function(value)
  if value == 1 then
    return "Liquidity: Add Maker (1)"
  end
  if value == 2 then
    return "Liquidity: Remove Taker (2)"
  end
  if value == 4 then
    return "Liquidity: Response (4)"
  end
  if value == 5 then
    return "Liquidity: Hidden (5)"
  end
  if value == 6 then
    return "Liquidity: Opening Trade (6)"
  end
  if value == 7 then
    return "Liquidity: Cross (7)"
  end
  if value == 8 then
    return "Liquidity: Flashed Order (8)"
  end
  if value == 9 then
    return "Liquidity: Flash Response (9)"
  end
  if value == 10 then
    return "Liquidity: Routed Out (10)"
  end
  if value == 11 then
    return "Liquidity: Trade Report (11)"
  end
  if value == 12 then
    return "Liquidity: Combo Maker Against Combo (12)"
  end
  if value == 13 then
    return "Liquidity: Combo Taker Against Combo (13)"
  end
  if value == 14 then
    return "Liquidity: Combo Response Against Combo (14)"
  end
  if value == 15 then
    return "Liquidity: Combo Hidden Against Combo (15)"
  end
  if value == 16 then
    return "Liquidity: Combo Opening Rotation (16)"
  end
  if value == 17 then
    return "Liquidity: Combo Cross (17)"
  end
  if value == 18 then
    return "Liquidity: Combo Taker Against Regular (18)"
  end
  if value == 19 then
    return "Liquidity: Regular Maker Against Combo (19)"
  end
  if value == 20 then
    return "Liquidity: Combo Taker Against Io (20)"
  end
  if value == 21 then
    return "Liquidity: Regular Taker Against Io (21)"
  end
  if value == 23 then
    return "Liquidity: Io Maker Against Regular (23)"
  end
  if value == 24 then
    return "Liquidity: Regular Maker Against Io Participant (24)"
  end
  if value == 25 then
    return "Liquidity: Io Participant Taker Against Regular (25)"
  end
  if value == 26 then
    return "Liquidity: Broken Price Improvement (26)"
  end
  if value == 27 then
    return "Liquidity: Broken Facilitation (27)"
  end
  if value == 28 then
    return "Liquidity: Broken Solicitation (28)"
  end
  if value == 29 then
    return "Liquidity: Combo Broken Price Improvement (29)"
  end
  if value == 30 then
    return "Liquidity: Combo Broken Facilitation (30)"
  end
  if value == 31 then
    return "Liquidity: Combo Broken Solicitation (31)"
  end
  if value == 32 then
    return "Liquidity: Block (32)"
  end
  if value == 33 then
    return "Liquidity: Block Response (33)"
  end
  if value == 34 then
    return "Liquidity: Directed Response (34)"
  end
  if value == 35 then
    return "Liquidity: Facilitation (35)"
  end
  if value == 36 then
    return "Liquidity: Facilitation Response (36)"
  end
  if value == 37 then
    return "Liquidity: Price Improvement (37)"
  end
  if value == 38 then
    return "Liquidity: Price Improvement Response (38)"
  end
  if value == 39 then
    return "Liquidity: Solicitation (39)"
  end
  if value == 40 then
    return "Liquidity: Solicitation Response (40)"
  end
  if value == 41 then
    return "Liquidity: Qualified Contingent Cross (41)"
  end
  if value == 42 then
    return "Liquidity: Customer To Customer (42)"
  end
  if value == 43 then
    return "Liquidity: Combo Facilitation (43)"
  end
  if value == 44 then
    return "Liquidity: Combo Facilitation Response (44)"
  end
  if value == 45 then
    return "Liquidity: Combo Price Improvement (45)"
  end
  if value == 46 then
    return "Liquidity: Combo Price Improvement Response (46)"
  end
  if value == 47 then
    return "Liquidity: Combo Solicitation (47)"
  end
  if value == 48 then
    return "Liquidity: Combo Solicitation Response (48)"
  end
  if value == 49 then
    return "Liquidity: Combo Qualified Contingent Cross (49)"
  end
  if value == 50 then
    return "Liquidity: Combo Customer To Customer (50)"
  end
  if value == 51 then
    return "Liquidity: Sweep Routed Out (51)"
  end
  if value == 52 then
    return "Liquidity: Sweep Trade Report (52)"
  end
  if value == 53 then
    return "Liquidity: Combo Taker Against Regular Thru Nbbo (53)"
  end
  if value == 55 then
    return "Liquidity: Simple Exposure Order Upon Receipt (55)"
  end
  if value == 57 then
    return "Liquidity: Simple Exposure Order Responder (57)"
  end
  if value == 58 then
    return "Liquidity: Flex Auction (58)"
  end
  if value == 59 then
    return "Liquidity: Flex Auction Responder (59)"
  end
  if value == 60 then
    return "Liquidity: Flex Price Improvement (60)"
  end
  if value == 61 then
    return "Liquidity: Flex Price Improvement Responder (61)"
  end
  if value == 62 then
    return "Liquidity: Flex Broken Price Improvement (62)"
  end
  if value == 63 then
    return "Liquidity: Flex Solicitation (63)"
  end
  if value == 64 then
    return "Liquidity: Flex Solicitation Responder (64)"
  end
  if value == 65 then
    return "Liquidity: Flex Broken Solicitation (65)"
  end
  if value == 66 then
    return "Liquidity: Combo Flex Auction (66)"
  end
  if value == 67 then
    return "Liquidity: Combo Flex Auction Responder (67)"
  end
  if value == 68 then
    return "Liquidity: Combo Flex Price Improvement (68)"
  end
  if value == 69 then
    return "Liquidity: Combo Flex Price Improvement Responder (69)"
  end
  if value == 70 then
    return "Liquidity: Combo Flex Broken Price Improvement (70)"
  end
  if value == 71 then
    return "Liquidity: Combo Flex Solicitation (71)"
  end
  if value == 72 then
    return "Liquidity: Combo Flex Solicitation Responder (72)"
  end
  if value == 73 then
    return "Liquidity: Combo Flex Broken Solicitation (73)"
  end

  return "Liquidity: Unknown("..value..")"
end

-- Dissect: Liquidity
nasdaq_usoptions_cti_itch_v3_0.liquidity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.liquidity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.liquidity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.liquidity, range, value, display)

  return offset + length, value
end

-- Match Id
nasdaq_usoptions_cti_itch_v3_0.match_id = {}

-- Size: Match Id
nasdaq_usoptions_cti_itch_v3_0.match_id.size = 4

-- Display: Match Id
nasdaq_usoptions_cti_itch_v3_0.match_id.display = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
nasdaq_usoptions_cti_itch_v3_0.match_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.match_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.match_id, range, value, display)

  return offset + length, value
end

-- Mpid
nasdaq_usoptions_cti_itch_v3_0.mpid = {}

-- Size: Mpid
nasdaq_usoptions_cti_itch_v3_0.mpid.size = 5

-- Display: Mpid
nasdaq_usoptions_cti_itch_v3_0.mpid.display = function(value)
  return "Mpid: "..value
end

-- Dissect: Mpid
nasdaq_usoptions_cti_itch_v3_0.mpid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_usoptions_cti_itch_v3_0.mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.mpid, range, value, display)

  return offset + length, value
end

-- Mpv
nasdaq_usoptions_cti_itch_v3_0.mpv = {}

-- Size: Mpv
nasdaq_usoptions_cti_itch_v3_0.mpv.size = 1

-- Display: Mpv
nasdaq_usoptions_cti_itch_v3_0.mpv.display = function(value)
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
nasdaq_usoptions_cti_itch_v3_0.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.mpv.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.mpv, range, value, display)

  return offset + length, value
end

-- Multi Account
nasdaq_usoptions_cti_itch_v3_0.multi_account = {}

-- Size: Multi Account
nasdaq_usoptions_cti_itch_v3_0.multi_account.size = 5

-- Display: Multi Account
nasdaq_usoptions_cti_itch_v3_0.multi_account.display = function(value)
  return "Multi Account: "..value
end

-- Dissect: Multi Account
nasdaq_usoptions_cti_itch_v3_0.multi_account.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.multi_account.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_usoptions_cti_itch_v3_0.multi_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.multi_account, range, value, display)

  return offset + length, value
end

-- Nanoseconds
nasdaq_usoptions_cti_itch_v3_0.nanoseconds = {}

-- Size: Nanoseconds
nasdaq_usoptions_cti_itch_v3_0.nanoseconds.size = 4

-- Display: Nanoseconds
nasdaq_usoptions_cti_itch_v3_0.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nasdaq_usoptions_cti_itch_v3_0.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Nscc
nasdaq_usoptions_cti_itch_v3_0.nscc = {}

-- Size: Nscc
nasdaq_usoptions_cti_itch_v3_0.nscc.size = 4

-- Display: Nscc
nasdaq_usoptions_cti_itch_v3_0.nscc.display = function(value)
  return "Nscc: "..value
end

-- Dissect: Nscc
nasdaq_usoptions_cti_itch_v3_0.nscc.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.nscc.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.nscc.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.nscc, range, value, display)

  return offset + length, value
end

-- Number Of Legs
nasdaq_usoptions_cti_itch_v3_0.number_of_legs = {}

-- Size: Number Of Legs
nasdaq_usoptions_cti_itch_v3_0.number_of_legs.size = 1

-- Display: Number Of Legs
nasdaq_usoptions_cti_itch_v3_0.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
nasdaq_usoptions_cti_itch_v3_0.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Occ Clearing Number
nasdaq_usoptions_cti_itch_v3_0.occ_clearing_number = {}

-- Size: Occ Clearing Number
nasdaq_usoptions_cti_itch_v3_0.occ_clearing_number.size = 4

-- Display: Occ Clearing Number
nasdaq_usoptions_cti_itch_v3_0.occ_clearing_number.display = function(value)
  return "Occ Clearing Number: "..value
end

-- Dissect: Occ Clearing Number
nasdaq_usoptions_cti_itch_v3_0.occ_clearing_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.occ_clearing_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.occ_clearing_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.occ_clearing_number, range, value, display)

  return offset + length, value
end

-- Open Close Indicator
nasdaq_usoptions_cti_itch_v3_0.open_close_indicator = {}

-- Size: Open Close Indicator
nasdaq_usoptions_cti_itch_v3_0.open_close_indicator.size = 1

-- Display: Open Close Indicator
nasdaq_usoptions_cti_itch_v3_0.open_close_indicator.display = function(value)
  return "Open Close Indicator: "..value
end

-- Dissect: Open Close Indicator
nasdaq_usoptions_cti_itch_v3_0.open_close_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.open_close_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.open_close_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.open_close_indicator, range, value, display)

  return offset + length, value
end

-- Option Closing Type
nasdaq_usoptions_cti_itch_v3_0.option_closing_type = {}

-- Size: Option Closing Type
nasdaq_usoptions_cti_itch_v3_0.option_closing_type.size = 1

-- Display: Option Closing Type
nasdaq_usoptions_cti_itch_v3_0.option_closing_type.display = function(value)
  if value == "N" then
    return "Option Closing Type: Normal Hours (N)"
  end
  if value == "L" then
    return "Option Closing Type: Late Hours (L)"
  end
  if value == "W" then
    return "Option Closing Type: Wco Early Closing (W)"
  end
  if value == "E" then
    return "Option Closing Type: Extended Close (E)"
  end

  return "Option Closing Type: Unknown("..value..")"
end

-- Dissect: Option Closing Type
nasdaq_usoptions_cti_itch_v3_0.option_closing_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.option_closing_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.option_closing_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.option_closing_type, range, value, display)

  return offset + length, value
end

-- Option Id
nasdaq_usoptions_cti_itch_v3_0.option_id = {}

-- Size: Option Id
nasdaq_usoptions_cti_itch_v3_0.option_id.size = 4

-- Display: Option Id
nasdaq_usoptions_cti_itch_v3_0.option_id.display = function(value)
  return "Option Id: "..value
end

-- Dissect: Option Id
nasdaq_usoptions_cti_itch_v3_0.option_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.option_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.option_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.option_id, range, value, display)

  return offset + length, value
end

-- Option Kind
nasdaq_usoptions_cti_itch_v3_0.option_kind = {}

-- Size: Option Kind
nasdaq_usoptions_cti_itch_v3_0.option_kind.size = 1

-- Display: Option Kind
nasdaq_usoptions_cti_itch_v3_0.option_kind.display = function(value)
  if value == "C" then
    return "Option Kind: Call (C)"
  end
  if value == "P" then
    return "Option Kind: Put (P)"
  end
  if value == " " then
    return "Option Kind: Stock Leg (<whitespace>)"
  end

  return "Option Kind: Unknown("..value..")"
end

-- Dissect: Option Kind
nasdaq_usoptions_cti_itch_v3_0.option_kind.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.option_kind.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.option_kind.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.option_kind, range, value, display)

  return offset + length, value
end

-- Order Id
nasdaq_usoptions_cti_itch_v3_0.order_id = {}

-- Size: Order Id
nasdaq_usoptions_cti_itch_v3_0.order_id.size = 30

-- Display: Order Id
nasdaq_usoptions_cti_itch_v3_0.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
nasdaq_usoptions_cti_itch_v3_0.order_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.order_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_usoptions_cti_itch_v3_0.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Price
nasdaq_usoptions_cti_itch_v3_0.order_price = {}

-- Size: Order Price
nasdaq_usoptions_cti_itch_v3_0.order_price.size = 4

-- Display: Order Price
nasdaq_usoptions_cti_itch_v3_0.order_price.display = function(value)
  return "Order Price: "..value
end

-- Translate: Order Price
nasdaq_usoptions_cti_itch_v3_0.order_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Order Price
nasdaq_usoptions_cti_itch_v3_0.order_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.order_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_usoptions_cti_itch_v3_0.order_price.translate(raw)
  local display = nasdaq_usoptions_cti_itch_v3_0.order_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.order_price, range, value, display)

  return offset + length, value
end

-- Order Size
nasdaq_usoptions_cti_itch_v3_0.order_size = {}

-- Size: Order Size
nasdaq_usoptions_cti_itch_v3_0.order_size.size = 4

-- Display: Order Size
nasdaq_usoptions_cti_itch_v3_0.order_size.display = function(value)
  return "Order Size: "..value
end

-- Dissect: Order Size
nasdaq_usoptions_cti_itch_v3_0.order_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.order_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.order_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.order_size, range, value, display)

  return offset + length, value
end

-- Origin Market
nasdaq_usoptions_cti_itch_v3_0.origin_market = {}

-- Size: Origin Market
nasdaq_usoptions_cti_itch_v3_0.origin_market.size = 1

-- Display: Origin Market
nasdaq_usoptions_cti_itch_v3_0.origin_market.display = function(value)
  if value == "A" then
    return "Origin Market: Amex (A)"
  end
  if value == "B" then
    return "Origin Market: Box (B)"
  end
  if value == "C" then
    return "Origin Market: Cboe (C)"
  end
  if value == "D" then
    return "Origin Market: Miax Emerald (D)"
  end
  if value == "I" then
    return "Origin Market: Ise (I)"
  end
  if value == "N" then
    return "Origin Market: Nyse (N)"
  end
  if value == "Q" then
    return "Origin Market: Nasdaq (Q)"
  end
  if value == "W" then
    return "Origin Market: C 2 (W)"
  end
  if value == "X" then
    return "Origin Market: Phlx (X)"
  end
  if value == "T" then
    return "Origin Market: Ntx Options (T)"
  end
  if value == "M" then
    return "Origin Market: Miax (M)"
  end
  if value == "H" then
    return "Origin Market: Gemx (H)"
  end
  if value == "E" then
    return "Origin Market: Bats Edgx (E)"
  end
  if value == "J" then
    return "Origin Market: Mrx (J)"
  end
  if value == "U" then
    return "Origin Market: Memx (U)"
  end
  if value == "S" then
    return "Origin Market: Miax Sapphire (S)"
  end
  if value == "V" then
    return "Origin Market: Iex (V)"
  end
  if value == "G" then
    return "Origin Market: Mx 2 (G)"
  end
  if value == " " then
    return "Origin Market: Not Applicable (<whitespace>)"
  end

  return "Origin Market: Unknown("..value..")"
end

-- Dissect: Origin Market
nasdaq_usoptions_cti_itch_v3_0.origin_market.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.origin_market.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.origin_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.origin_market, range, value, display)

  return offset + length, value
end

-- Origin Type
nasdaq_usoptions_cti_itch_v3_0.origin_type = {}

-- Size: Origin Type
nasdaq_usoptions_cti_itch_v3_0.origin_type.size = 1

-- Display: Origin Type
nasdaq_usoptions_cti_itch_v3_0.origin_type.display = function(value)
  if value == "O" then
    return "Origin Type: Fix Order (O)"
  end
  if value == "C" then
    return "Origin Type: Fix Complex Order (C)"
  end
  if value == "T" then
    return "Origin Type: Otto Order (T)"
  end
  if value == "Z" then
    return "Origin Type: Otto Complex Order (Z)"
  end
  if value == "E" then
    return "Origin Type: Otto Sweep (E)"
  end
  if value == "Q" then
    return "Origin Type: Sqf Quote (Q)"
  end
  if value == "W" then
    return "Origin Type: Sqf Sweep (W)"
  end
  if value == "S" then
    return "Origin Type: Sqf Complex Sweep (S)"
  end
  if value == "P" then
    return "Origin Type: Block Order (P)"
  end
  if value == "X" then
    return "Origin Type: Block Response (X)"
  end
  if value == "G" then
    return "Origin Type: Pim Primary Order (G)"
  end
  if value == "H" then
    return "Origin Type: Pim Contra Order (H)"
  end
  if value == "I" then
    return "Origin Type: Pim Response Order (I)"
  end
  if value == "J" then
    return "Origin Type: Pim Response Sqf Sweep (J)"
  end
  if value == "g" then
    return "Origin Type: Pim Primary Complex Order (g)"
  end
  if value == "h" then
    return "Origin Type: Pim Contra Complex Order (h)"
  end
  if value == "i" then
    return "Origin Type: Pim Response Complex Order (i)"
  end
  if value == "j" then
    return "Origin Type: Pim Response Sqf Complex Sweep (j)"
  end
  if value == "B" then
    return "Origin Type: Fbms Floor Trade (B)"
  end
  if value == "K" then
    return "Origin Type: Qcc Primary (K)"
  end
  if value == "L" then
    return "Origin Type: Qcc Contra (L)"
  end
  if value == "M" then
    return "Origin Type: Solicitation Primary Order (M)"
  end
  if value == "N" then
    return "Origin Type: Solicitation Contra Order (N)"
  end
  if value == "U" then
    return "Origin Type: Solicitation Response Order (U)"
  end
  if value == "V" then
    return "Origin Type: Solicitation Response Sqf Sweep (V)"
  end
  if value == "m" then
    return "Origin Type: Solicitation Primary Complex Order (m)"
  end
  if value == "n" then
    return "Origin Type: Solicitation Contra Complex Order (n)"
  end
  if value == "u" then
    return "Origin Type: Solicitation Response Complex Order (u)"
  end
  if value == "v" then
    return "Origin Type: Solicitation Response Sqf Complex Sweep (v)"
  end
  if value == "F" then
    return "Origin Type: Facilitation Primary Order (F)"
  end
  if value == "A" then
    return "Origin Type: Facilitation Contra Order (A)"
  end
  if value == "D" then
    return "Origin Type: Facilitation Response Order (D)"
  end
  if value == "Y" then
    return "Origin Type: Facilitation Response Sqf Sweep (Y)"
  end
  if value == "f" then
    return "Origin Type: Facilitation Primary Complex Order (f)"
  end
  if value == "a" then
    return "Origin Type: Facilitation Contra Complex Order (a)"
  end
  if value == "d" then
    return "Origin Type: Facilitation Response Complex Order (d)"
  end
  if value == "y" then
    return "Origin Type: Facilitation Response Sqf Complex Sweep (y)"
  end
  if value == " " then
    return "Origin Type: Others (<whitespace>)"
  end
  if value == "0" then
    return "Origin Type: Simple Flex Initiator (0)"
  end
  if value == "1" then
    return "Origin Type: Simple Flex Response Order (1)"
  end
  if value == "2" then
    return "Origin Type: Simple Flex Response Sqf Sweep (2)"
  end
  if value == "3" then
    return "Origin Type: Complex Flex Initiator (3)"
  end
  if value == "4" then
    return "Origin Type: Complex Flex Response Order (4)"
  end
  if value == "5" then
    return "Origin Type: Complex Flex Response Sqf Sweep (5)"
  end

  return "Origin Type: Unknown("..value..")"
end

-- Dissect: Origin Type
nasdaq_usoptions_cti_itch_v3_0.origin_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.origin_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.origin_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.origin_type, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_usoptions_cti_itch_v3_0.packet_length = {}

-- Size: Packet Length
nasdaq_usoptions_cti_itch_v3_0.packet_length.size = 2

-- Display: Packet Length
nasdaq_usoptions_cti_itch_v3_0.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_usoptions_cti_itch_v3_0.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_usoptions_cti_itch_v3_0.password = {}

-- Size: Password
nasdaq_usoptions_cti_itch_v3_0.password.size = 10

-- Display: Password
nasdaq_usoptions_cti_itch_v3_0.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_usoptions_cti_itch_v3_0.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_usoptions_cti_itch_v3_0.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.password, range, value, display)

  return offset + length, value
end

-- Principal Agent
nasdaq_usoptions_cti_itch_v3_0.principal_agent = {}

-- Size: Principal Agent
nasdaq_usoptions_cti_itch_v3_0.principal_agent.size = 1

-- Display: Principal Agent
nasdaq_usoptions_cti_itch_v3_0.principal_agent.display = function(value)
  if value == "A" then
    return "Principal Agent: Agency (A)"
  end
  if value == "P" then
    return "Principal Agent: Principal (P)"
  end
  if value == "R" then
    return "Principal Agent: Riskless Principal (R)"
  end
  if value == " " then
    return "Principal Agent: Not A Stock Leg (<whitespace>)"
  end

  return "Principal Agent: Unknown("..value..")"
end

-- Dissect: Principal Agent
nasdaq_usoptions_cti_itch_v3_0.principal_agent.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.principal_agent.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.principal_agent.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.principal_agent, range, value, display)

  return offset + length, value
end

-- Quote Id
nasdaq_usoptions_cti_itch_v3_0.quote_id = {}

-- Size: Quote Id
nasdaq_usoptions_cti_itch_v3_0.quote_id.size = 8

-- Display: Quote Id
nasdaq_usoptions_cti_itch_v3_0.quote_id.display = function(value)
  return "Quote Id: "..value
end

-- Dissect: Quote Id
nasdaq_usoptions_cti_itch_v3_0.quote_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.quote_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_usoptions_cti_itch_v3_0.quote_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.quote_id, range, value, display)

  return offset + length, value
end

-- Ref Correction Number
nasdaq_usoptions_cti_itch_v3_0.ref_correction_number = {}

-- Size: Ref Correction Number
nasdaq_usoptions_cti_itch_v3_0.ref_correction_number.size = 2

-- Display: Ref Correction Number
nasdaq_usoptions_cti_itch_v3_0.ref_correction_number.display = function(value)
  return "Ref Correction Number: "..value
end

-- Dissect: Ref Correction Number
nasdaq_usoptions_cti_itch_v3_0.ref_correction_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.ref_correction_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.ref_correction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.ref_correction_number, range, value, display)

  return offset + length, value
end

-- Ref Match Id
nasdaq_usoptions_cti_itch_v3_0.ref_match_id = {}

-- Size: Ref Match Id
nasdaq_usoptions_cti_itch_v3_0.ref_match_id.size = 4

-- Display: Ref Match Id
nasdaq_usoptions_cti_itch_v3_0.ref_match_id.display = function(value)
  return "Ref Match Id: "..value
end

-- Dissect: Ref Match Id
nasdaq_usoptions_cti_itch_v3_0.ref_match_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.ref_match_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.ref_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.ref_match_id, range, value, display)

  return offset + length, value
end

-- Ref Trade Id
nasdaq_usoptions_cti_itch_v3_0.ref_trade_id = {}

-- Size: Ref Trade Id
nasdaq_usoptions_cti_itch_v3_0.ref_trade_id.size = 4

-- Display: Ref Trade Id
nasdaq_usoptions_cti_itch_v3_0.ref_trade_id.display = function(value)
  return "Ref Trade Id: "..value
end

-- Dissect: Ref Trade Id
nasdaq_usoptions_cti_itch_v3_0.ref_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.ref_trade_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.ref_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.ref_trade_id, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_usoptions_cti_itch_v3_0.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_usoptions_cti_itch_v3_0.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_usoptions_cti_itch_v3_0.reject_reason_code.display = function(value)
  if value == "A" then
    return "Reject Reason Code: Not Authorized (A)"
  end
  if value == "S" then
    return "Reject Reason Code: Session Not Available (S)"
  end

  return "Reject Reason Code: Unknown("..value..")"
end

-- Dissect: Reject Reason Code
nasdaq_usoptions_cti_itch_v3_0.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_usoptions_cti_itch_v3_0.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_usoptions_cti_itch_v3_0.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_usoptions_cti_itch_v3_0.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_usoptions_cti_itch_v3_0.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_usoptions_cti_itch_v3_0.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_usoptions_cti_itch_v3_0.requested_session = {}

-- Size: Requested Session
nasdaq_usoptions_cti_itch_v3_0.requested_session.size = 10

-- Display: Requested Session
nasdaq_usoptions_cti_itch_v3_0.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_usoptions_cti_itch_v3_0.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.requested_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_usoptions_cti_itch_v3_0.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved 16
nasdaq_usoptions_cti_itch_v3_0.reserved_16 = {}

-- Size: Reserved 16
nasdaq_usoptions_cti_itch_v3_0.reserved_16.size = 16

-- Display: Reserved 16
nasdaq_usoptions_cti_itch_v3_0.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
nasdaq_usoptions_cti_itch_v3_0.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.reserved_16.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_usoptions_cti_itch_v3_0.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Reserved 4
nasdaq_usoptions_cti_itch_v3_0.reserved_4 = {}

-- Size: Reserved 4
nasdaq_usoptions_cti_itch_v3_0.reserved_4.size = 4

-- Display: Reserved 4
nasdaq_usoptions_cti_itch_v3_0.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nasdaq_usoptions_cti_itch_v3_0.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_usoptions_cti_itch_v3_0.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Reserved 6
nasdaq_usoptions_cti_itch_v3_0.reserved_6 = {}

-- Size: Reserved 6
nasdaq_usoptions_cti_itch_v3_0.reserved_6.size = 6

-- Display: Reserved 6
nasdaq_usoptions_cti_itch_v3_0.reserved_6.display = function(value)
  return "Reserved 6: "..value
end

-- Dissect: Reserved 6
nasdaq_usoptions_cti_itch_v3_0.reserved_6.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.reserved_6.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_usoptions_cti_itch_v3_0.reserved_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.reserved_6, range, value, display)

  return offset + length, value
end

-- Reserved 8
nasdaq_usoptions_cti_itch_v3_0.reserved_8 = {}

-- Size: Reserved 8
nasdaq_usoptions_cti_itch_v3_0.reserved_8.size = 8

-- Display: Reserved 8
nasdaq_usoptions_cti_itch_v3_0.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
nasdaq_usoptions_cti_itch_v3_0.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_usoptions_cti_itch_v3_0.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Second Broker
nasdaq_usoptions_cti_itch_v3_0.second_broker = {}

-- Size: Second Broker
nasdaq_usoptions_cti_itch_v3_0.second_broker.size = 4

-- Display: Second Broker
nasdaq_usoptions_cti_itch_v3_0.second_broker.display = function(value)
  return "Second Broker: "..value
end

-- Dissect: Second Broker
nasdaq_usoptions_cti_itch_v3_0.second_broker.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.second_broker.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.second_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.second_broker, range, value, display)

  return offset + length, value
end

-- Second Reserved 8
nasdaq_usoptions_cti_itch_v3_0.second_reserved_8 = {}

-- Size: Second Reserved 8
nasdaq_usoptions_cti_itch_v3_0.second_reserved_8.size = 8

-- Display: Second Reserved 8
nasdaq_usoptions_cti_itch_v3_0.second_reserved_8.display = function(value)
  return "Second Reserved 8: "..value
end

-- Dissect: Second Reserved 8
nasdaq_usoptions_cti_itch_v3_0.second_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.second_reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_usoptions_cti_itch_v3_0.second_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.second_reserved_8, range, value, display)

  return offset + length, value
end

-- Seconds
nasdaq_usoptions_cti_itch_v3_0.seconds = {}

-- Size: Seconds
nasdaq_usoptions_cti_itch_v3_0.seconds.size = 4

-- Display: Seconds
nasdaq_usoptions_cti_itch_v3_0.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
nasdaq_usoptions_cti_itch_v3_0.seconds.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.seconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.seconds, range, value, display)

  return offset + length, value
end

-- Security Symbol
nasdaq_usoptions_cti_itch_v3_0.security_symbol = {}

-- Size: Security Symbol
nasdaq_usoptions_cti_itch_v3_0.security_symbol.size = 8

-- Display: Security Symbol
nasdaq_usoptions_cti_itch_v3_0.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_usoptions_cti_itch_v3_0.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_usoptions_cti_itch_v3_0.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Send Type
nasdaq_usoptions_cti_itch_v3_0.send_type = {}

-- Size: Send Type
nasdaq_usoptions_cti_itch_v3_0.send_type.size = 1

-- Display: Send Type
nasdaq_usoptions_cti_itch_v3_0.send_type.display = function(value)
  if value == "S" then
    return "Send Type: Send (S)"
  end
  if value == "P" then
    return "Send Type: Possible Duplicate (P)"
  end

  return "Send Type: Unknown("..value..")"
end

-- Dissect: Send Type
nasdaq_usoptions_cti_itch_v3_0.send_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.send_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.send_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.send_type, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
nasdaq_usoptions_cti_itch_v3_0.sequenced_message_type = {}

-- Size: Sequenced Message Type
nasdaq_usoptions_cti_itch_v3_0.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
nasdaq_usoptions_cti_itch_v3_0.sequenced_message_type.display = function(value)
  if value == "S" then
    return "Sequenced Message Type: System Event Message (S)"
  end
  if value == "D" then
    return "Sequenced Message Type: Options Directory Message (D)"
  end
  if value == "R" then
    return "Sequenced Message Type: Complex Order Strategy Message (R)"
  end
  if value == "H" then
    return "Sequenced Message Type: Security Trading Action Message (H)"
  end
  if value == "I" then
    return "Sequenced Message Type: Complex Trading Action Message (I)"
  end
  if value == "T" then
    return "Sequenced Message Type: Trade Message (T)"
  end
  if value == "V" then
    return "Sequenced Message Type: Cancel Trade Message (V)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
nasdaq_usoptions_cti_itch_v3_0.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
nasdaq_usoptions_cti_itch_v3_0.server_packet_type = {}

-- Size: Server Packet Type
nasdaq_usoptions_cti_itch_v3_0.server_packet_type.size = 1

-- Display: Server Packet Type
nasdaq_usoptions_cti_itch_v3_0.server_packet_type.display = function(value)
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
  if value == "H" then
    return "Packet Type: Server Heartbeat Packet (H)"
  end
  if value == "Z" then
    return "Packet Type: End Of Session Packet (Z)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Server Packet Type
nasdaq_usoptions_cti_itch_v3_0.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Short Sell
nasdaq_usoptions_cti_itch_v3_0.short_sell = {}

-- Size: Short Sell
nasdaq_usoptions_cti_itch_v3_0.short_sell.size = 1

-- Display: Short Sell
nasdaq_usoptions_cti_itch_v3_0.short_sell.display = function(value)
  if value == "Y" then
    return "Short Sell: Short Sale (Y)"
  end
  if value == "N" then
    return "Short Sell: Not A Short Sale (N)"
  end
  if value == "E" then
    return "Short Sell: Short Sale Exempt (E)"
  end
  if value == " " then
    return "Short Sell: Not Applicable (<whitespace>)"
  end

  return "Short Sell: Unknown("..value..")"
end

-- Dissect: Short Sell
nasdaq_usoptions_cti_itch_v3_0.short_sell.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.short_sell.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.short_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.short_sell, range, value, display)

  return offset + length, value
end

-- Side Changed
nasdaq_usoptions_cti_itch_v3_0.side_changed = {}

-- Size: Side Changed
nasdaq_usoptions_cti_itch_v3_0.side_changed.size = 1

-- Display: Side Changed
nasdaq_usoptions_cti_itch_v3_0.side_changed.display = function(value)
  if value == "Y" then
    return "Side Changed: Yes (Y)"
  end
  if value == "N" then
    return "Side Changed: No (N)"
  end

  return "Side Changed: Unknown("..value..")"
end

-- Dissect: Side Changed
nasdaq_usoptions_cti_itch_v3_0.side_changed.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.side_changed.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.side_changed.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.side_changed, range, value, display)

  return offset + length, value
end

-- Sqf Sweep Id
nasdaq_usoptions_cti_itch_v3_0.sqf_sweep_id = {}

-- Size: Sqf Sweep Id
nasdaq_usoptions_cti_itch_v3_0.sqf_sweep_id.size = 8

-- Display: Sqf Sweep Id
nasdaq_usoptions_cti_itch_v3_0.sqf_sweep_id.display = function(value)
  return "Sqf Sweep Id: "..value
end

-- Dissect: Sqf Sweep Id
nasdaq_usoptions_cti_itch_v3_0.sqf_sweep_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.sqf_sweep_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_usoptions_cti_itch_v3_0.sqf_sweep_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.sqf_sweep_id, range, value, display)

  return offset + length, value
end

-- Strategy Id
nasdaq_usoptions_cti_itch_v3_0.strategy_id = {}

-- Size: Strategy Id
nasdaq_usoptions_cti_itch_v3_0.strategy_id.size = 4

-- Display: Strategy Id
nasdaq_usoptions_cti_itch_v3_0.strategy_id.display = function(value)
  return "Strategy Id: "..value
end

-- Dissect: Strategy Id
nasdaq_usoptions_cti_itch_v3_0.strategy_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.strategy_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.strategy_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.strategy_id, range, value, display)

  return offset + length, value
end

-- Strategy Leg
nasdaq_usoptions_cti_itch_v3_0.strategy_leg = {}

-- Size: Strategy Leg
nasdaq_usoptions_cti_itch_v3_0.strategy_leg.size = 2

-- Display: Strategy Leg
nasdaq_usoptions_cti_itch_v3_0.strategy_leg.display = function(value)
  return "Strategy Leg: "..value
end

-- Dissect: Strategy Leg
nasdaq_usoptions_cti_itch_v3_0.strategy_leg.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.strategy_leg.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.strategy_leg.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.strategy_leg, range, value, display)

  return offset + length, value
end

-- Strike Price
nasdaq_usoptions_cti_itch_v3_0.strike_price = {}

-- Size: Strike Price
nasdaq_usoptions_cti_itch_v3_0.strike_price.size = 4

-- Display: Strike Price
nasdaq_usoptions_cti_itch_v3_0.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
nasdaq_usoptions_cti_itch_v3_0.strike_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Strike Price
nasdaq_usoptions_cti_itch_v3_0.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.strike_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_usoptions_cti_itch_v3_0.strike_price.translate(raw)
  local display = nasdaq_usoptions_cti_itch_v3_0.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Supplementary Id
nasdaq_usoptions_cti_itch_v3_0.supplementary_id = {}

-- Size: Supplementary Id
nasdaq_usoptions_cti_itch_v3_0.supplementary_id.size = 15

-- Display: Supplementary Id
nasdaq_usoptions_cti_itch_v3_0.supplementary_id.display = function(value)
  return "Supplementary Id: "..value
end

-- Dissect: Supplementary Id
nasdaq_usoptions_cti_itch_v3_0.supplementary_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.supplementary_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_usoptions_cti_itch_v3_0.supplementary_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.supplementary_id, range, value, display)

  return offset + length, value
end

-- Third Reserved 8
nasdaq_usoptions_cti_itch_v3_0.third_reserved_8 = {}

-- Size: Third Reserved 8
nasdaq_usoptions_cti_itch_v3_0.third_reserved_8.size = 8

-- Display: Third Reserved 8
nasdaq_usoptions_cti_itch_v3_0.third_reserved_8.display = function(value)
  return "Third Reserved 8: "..value
end

-- Dissect: Third Reserved 8
nasdaq_usoptions_cti_itch_v3_0.third_reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.third_reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_usoptions_cti_itch_v3_0.third_reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.third_reserved_8, range, value, display)

  return offset + length, value
end

-- Tif
nasdaq_usoptions_cti_itch_v3_0.tif = {}

-- Size: Tif
nasdaq_usoptions_cti_itch_v3_0.tif.size = 1

-- Display: Tif
nasdaq_usoptions_cti_itch_v3_0.tif.display = function(value)
  if value == "I" then
    return "Tif: Ioc Or Fok (I)"
  end
  if value == "D" then
    return "Tif: Day (D)"
  end
  if value == "G" then
    return "Tif: Gtc (G)"
  end
  if value == "O" then
    return "Tif: Opg (O)"
  end
  if value == "T" then
    return "Tif: Gtd (T)"
  end
  if value == " " then
    return "Tif: Not Applicable (<whitespace>)"
  end

  return "Tif: Unknown("..value..")"
end

-- Dissect: Tif
nasdaq_usoptions_cti_itch_v3_0.tif.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.tif.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.tif.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.tif, range, value, display)

  return offset + length, value
end

-- Tradable
nasdaq_usoptions_cti_itch_v3_0.tradable = {}

-- Size: Tradable
nasdaq_usoptions_cti_itch_v3_0.tradable.size = 1

-- Display: Tradable
nasdaq_usoptions_cti_itch_v3_0.tradable.display = function(value)
  if value == "Y" then
    return "Tradable: Tradable (Y)"
  end
  if value == "N" then
    return "Tradable: Non Tradable (N)"
  end

  return "Tradable: Unknown("..value..")"
end

-- Dissect: Tradable
nasdaq_usoptions_cti_itch_v3_0.tradable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.tradable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.tradable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.tradable, range, value, display)

  return offset + length, value
end

-- Trade Contracts
nasdaq_usoptions_cti_itch_v3_0.trade_contracts = {}

-- Size: Trade Contracts
nasdaq_usoptions_cti_itch_v3_0.trade_contracts.size = 4

-- Display: Trade Contracts
nasdaq_usoptions_cti_itch_v3_0.trade_contracts.display = function(value)
  return "Trade Contracts: "..value
end

-- Dissect: Trade Contracts
nasdaq_usoptions_cti_itch_v3_0.trade_contracts.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.trade_contracts.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.trade_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.trade_contracts, range, value, display)

  return offset + length, value
end

-- Trade Id
nasdaq_usoptions_cti_itch_v3_0.trade_id = {}

-- Size: Trade Id
nasdaq_usoptions_cti_itch_v3_0.trade_id.size = 4

-- Display: Trade Id
nasdaq_usoptions_cti_itch_v3_0.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
nasdaq_usoptions_cti_itch_v3_0.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.trade_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Price
nasdaq_usoptions_cti_itch_v3_0.trade_price = {}

-- Size: Trade Price
nasdaq_usoptions_cti_itch_v3_0.trade_price.size = 8

-- Display: Trade Price
nasdaq_usoptions_cti_itch_v3_0.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
nasdaq_usoptions_cti_itch_v3_0.trade_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Trade Price
nasdaq_usoptions_cti_itch_v3_0.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_usoptions_cti_itch_v3_0.trade_price.translate(raw)
  local display = nasdaq_usoptions_cti_itch_v3_0.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Side
nasdaq_usoptions_cti_itch_v3_0.trade_side = {}

-- Size: Trade Side
nasdaq_usoptions_cti_itch_v3_0.trade_side.size = 1

-- Display: Trade Side
nasdaq_usoptions_cti_itch_v3_0.trade_side.display = function(value)
  if value == "B" then
    return "Trade Side: Buy (B)"
  end
  if value == "S" then
    return "Trade Side: Sell (S)"
  end

  return "Trade Side: Unknown("..value..")"
end

-- Dissect: Trade Side
nasdaq_usoptions_cti_itch_v3_0.trade_side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.trade_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.trade_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.trade_side, range, value, display)

  return offset + length, value
end

-- Transaction Type
nasdaq_usoptions_cti_itch_v3_0.transaction_type = {}

-- Size: Transaction Type
nasdaq_usoptions_cti_itch_v3_0.transaction_type.size = 1

-- Display: Transaction Type
nasdaq_usoptions_cti_itch_v3_0.transaction_type.display = function(value)
  if value == "X" then
    return "Transaction Type: New Trade (X)"
  end
  if value == "Y" then
    return "Transaction Type: Trade Correction (Y)"
  end
  if value == "Z" then
    return "Transaction Type: Trade Cancel (Z)"
  end

  return "Transaction Type: Unknown("..value..")"
end

-- Dissect: Transaction Type
nasdaq_usoptions_cti_itch_v3_0.transaction_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.transaction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.transaction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.transaction_type, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nasdaq_usoptions_cti_itch_v3_0.underlying_symbol = {}

-- Size: Underlying Symbol
nasdaq_usoptions_cti_itch_v3_0.underlying_symbol.size = 13

-- Display: Underlying Symbol
nasdaq_usoptions_cti_itch_v3_0.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_usoptions_cti_itch_v3_0.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_usoptions_cti_itch_v3_0.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
nasdaq_usoptions_cti_itch_v3_0.unsequenced_message = {}

-- Display: Unsequenced Message
nasdaq_usoptions_cti_itch_v3_0.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
nasdaq_usoptions_cti_itch_v3_0.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_usoptions_cti_itch_v3_0.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.unsequenced_message, range, value, display)

  return offset + size, value
end

-- Unsequenced Message Type
nasdaq_usoptions_cti_itch_v3_0.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nasdaq_usoptions_cti_itch_v3_0.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
nasdaq_usoptions_cti_itch_v3_0.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
nasdaq_usoptions_cti_itch_v3_0.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_usoptions_cti_itch_v3_0.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_usoptions_cti_itch_v3_0.username = {}

-- Size: Username
nasdaq_usoptions_cti_itch_v3_0.username.size = 6

-- Display: Username
nasdaq_usoptions_cti_itch_v3_0.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_usoptions_cti_itch_v3_0.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_usoptions_cti_itch_v3_0.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.username, range, value, display)

  return offset + length, value
end

-- Version
nasdaq_usoptions_cti_itch_v3_0.version = {}

-- Size: Version
nasdaq_usoptions_cti_itch_v3_0.version.size = 1

-- Display: Version
nasdaq_usoptions_cti_itch_v3_0.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
nasdaq_usoptions_cti_itch_v3_0.version.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_usoptions_cti_itch_v3_0.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq UsOptions Cti Itch 3.0
-----------------------------------------------------------------------

-- End Of Session
nasdaq_usoptions_cti_itch_v3_0.end_of_session = {}

-- Display: End Of Session
nasdaq_usoptions_cti_itch_v3_0.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_usoptions_cti_itch_v3_0.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_usoptions_cti_itch_v3_0.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
nasdaq_usoptions_cti_itch_v3_0.server_heartbeat = {}

-- Display: Server Heartbeat
nasdaq_usoptions_cti_itch_v3_0.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
nasdaq_usoptions_cti_itch_v3_0.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_usoptions_cti_itch_v3_0.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Expiration
nasdaq_usoptions_cti_itch_v3_0.expiration = {}

-- Size: Expiration
nasdaq_usoptions_cti_itch_v3_0.expiration.size = 2

-- Display: Expiration
nasdaq_usoptions_cti_itch_v3_0.expiration.display = function(range, value, packet, parent)
  local flags = {}


  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Expiration
nasdaq_usoptions_cti_itch_v3_0.expiration.bits = function(range, value, packet, parent)

  -- Expiration Day: 5 Bit Unsigned Fixed Width Integer
  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.expiration_day, range, value)

  -- Expiration Month: 4 Bit Unsigned Fixed Width Integer
  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.expiration_month, range, value)

  -- Expiration Year: 7 Bit Unsigned Fixed Width Integer
  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.expiration_year, range, value)
end

-- Dissect: Expiration
nasdaq_usoptions_cti_itch_v3_0.expiration.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_usoptions_cti_itch_v3_0.expiration.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.expiration.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.expiration, range, display)

  if show.structs then
    nasdaq_usoptions_cti_itch_v3_0.expiration.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Cancel Trade Message
nasdaq_usoptions_cti_itch_v3_0.cancel_trade_message = {}

-- Size: Cancel Trade Message
nasdaq_usoptions_cti_itch_v3_0.cancel_trade_message.size =
  nasdaq_usoptions_cti_itch_v3_0.seconds.size + 
  nasdaq_usoptions_cti_itch_v3_0.nanoseconds.size + 
  nasdaq_usoptions_cti_itch_v3_0.version.size + 
  nasdaq_usoptions_cti_itch_v3_0.send_type.size + 
  nasdaq_usoptions_cti_itch_v3_0.option_id.size + 
  nasdaq_usoptions_cti_itch_v3_0.underlying_symbol.size + 
  nasdaq_usoptions_cti_itch_v3_0.security_symbol.size + 
  nasdaq_usoptions_cti_itch_v3_0.expiration.size + 
  nasdaq_usoptions_cti_itch_v3_0.strike_price.size + 
  nasdaq_usoptions_cti_itch_v3_0.option_kind.size + 
  nasdaq_usoptions_cti_itch_v3_0.trade_id.size + 
  nasdaq_usoptions_cti_itch_v3_0.correction_number.size + 
  nasdaq_usoptions_cti_itch_v3_0.cross_id.size + 
  nasdaq_usoptions_cti_itch_v3_0.trade_side.size + 
  nasdaq_usoptions_cti_itch_v3_0.match_id.size + 
  nasdaq_usoptions_cti_itch_v3_0.reserved_8.size

-- Display: Cancel Trade Message
nasdaq_usoptions_cti_itch_v3_0.cancel_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Trade Message
nasdaq_usoptions_cti_itch_v3_0.cancel_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = nasdaq_usoptions_cti_itch_v3_0.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_usoptions_cti_itch_v3_0.nanoseconds.dissect(buffer, index, packet, parent)

  -- Version: Integer
  index, version = nasdaq_usoptions_cti_itch_v3_0.version.dissect(buffer, index, packet, parent)

  -- Send Type: Alpha
  index, send_type = nasdaq_usoptions_cti_itch_v3_0.send_type.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_usoptions_cti_itch_v3_0.option_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alpha
  index, underlying_symbol = nasdaq_usoptions_cti_itch_v3_0.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_usoptions_cti_itch_v3_0.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration: Struct of 3 fields
  index, expiration = nasdaq_usoptions_cti_itch_v3_0.expiration.dissect(buffer, index, packet, parent)

  -- Strike Price: Integer
  index, strike_price = nasdaq_usoptions_cti_itch_v3_0.strike_price.dissect(buffer, index, packet, parent)

  -- Option Kind: Alpha
  index, option_kind = nasdaq_usoptions_cti_itch_v3_0.option_kind.dissect(buffer, index, packet, parent)

  -- Trade Id: Integer
  index, trade_id = nasdaq_usoptions_cti_itch_v3_0.trade_id.dissect(buffer, index, packet, parent)

  -- Correction Number: Integer
  index, correction_number = nasdaq_usoptions_cti_itch_v3_0.correction_number.dissect(buffer, index, packet, parent)

  -- Cross Id: Integer
  index, cross_id = nasdaq_usoptions_cti_itch_v3_0.cross_id.dissect(buffer, index, packet, parent)

  -- Trade Side: Alpha
  index, trade_side = nasdaq_usoptions_cti_itch_v3_0.trade_side.dissect(buffer, index, packet, parent)

  -- Match Id: Integer
  index, match_id = nasdaq_usoptions_cti_itch_v3_0.match_id.dissect(buffer, index, packet, parent)

  -- Reserved 8: Alpha
  index, reserved_8 = nasdaq_usoptions_cti_itch_v3_0.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Trade Message
nasdaq_usoptions_cti_itch_v3_0.cancel_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.cancel_trade_message, buffer(offset, 0))
    local index = nasdaq_usoptions_cti_itch_v3_0.cancel_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_usoptions_cti_itch_v3_0.cancel_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_usoptions_cti_itch_v3_0.cancel_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Indicators
nasdaq_usoptions_cti_itch_v3_0.order_indicators = {}

-- Size: Order Indicators
nasdaq_usoptions_cti_itch_v3_0.order_indicators.size = 2

-- Display: Order Indicators
nasdaq_usoptions_cti_itch_v3_0.order_indicators.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Ise Directed Order flag set?
  if bit.band(value, 0x0800) ~= 0 then
    flags[#flags + 1] = "Ise Directed Order"
  end
  -- Is Mkt Order flag set?
  if bit.band(value, 0x1000) ~= 0 then
    flags[#flags + 1] = "Mkt Order"
  end
  -- Is Post Only Alo flag set?
  if bit.band(value, 0x2000) ~= 0 then
    flags[#flags + 1] = "Post Only Alo"
  end
  -- Is Directed Preferenced flag set?
  if bit.band(value, 0x4000) ~= 0 then
    flags[#flags + 1] = "Directed Preferenced"
  end
  -- Is Fbms Order flag set?
  if bit.band(value, 0x8000) ~= 0 then
    flags[#flags + 1] = "Fbms Order"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Order Indicators
nasdaq_usoptions_cti_itch_v3_0.order_indicators.bits = function(range, value, packet, parent)

  -- Reserved Order Indicators: 11 Bit
  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.reserved_order_indicators, range, value)

  -- Ise Directed Order: 1 Bit
  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.ise_directed_order, range, value)

  -- Mkt Order: 1 Bit
  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.mkt_order, range, value)

  -- Post Only Alo: 1 Bit
  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.post_only_alo, range, value)

  -- Directed Preferenced: 1 Bit
  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.directed_preferenced, range, value)

  -- Fbms Order: 1 Bit
  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.fbms_order, range, value)
end

-- Dissect: Order Indicators
nasdaq_usoptions_cti_itch_v3_0.order_indicators.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_usoptions_cti_itch_v3_0.order_indicators.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.order_indicators.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.order_indicators, range, display)

  if show.structs then
    nasdaq_usoptions_cti_itch_v3_0.order_indicators.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Date
nasdaq_usoptions_cti_itch_v3_0.order_date = {}

-- Size: Order Date
nasdaq_usoptions_cti_itch_v3_0.order_date.size = 2

-- Display: Order Date
nasdaq_usoptions_cti_itch_v3_0.order_date.display = function(range, value, packet, parent)
  local flags = {}


  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Order Date
nasdaq_usoptions_cti_itch_v3_0.order_date.bits = function(range, value, packet, parent)

  -- Order Date Day: 5 Bit Unsigned Fixed Width Integer
  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.order_date_day, range, value)

  -- Order Date Month: 4 Bit Unsigned Fixed Width Integer
  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.order_date_month, range, value)

  -- Order Date Year: 7 Bit Unsigned Fixed Width Integer
  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.order_date_year, range, value)
end

-- Dissect: Order Date
nasdaq_usoptions_cti_itch_v3_0.order_date.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_usoptions_cti_itch_v3_0.order_date.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.order_date.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.order_date, range, display)

  if show.structs then
    nasdaq_usoptions_cti_itch_v3_0.order_date.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Clearing Flags
nasdaq_usoptions_cti_itch_v3_0.clearing_flags = {}

-- Size: Clearing Flags
nasdaq_usoptions_cti_itch_v3_0.clearing_flags.size = 2

-- Display: Clearing Flags
nasdaq_usoptions_cti_itch_v3_0.clearing_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Priority Market Maker flag set?
  if bit.band(value, 0x8000) ~= 0 then
    flags[#flags + 1] = "Priority Market Maker"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Clearing Flags
nasdaq_usoptions_cti_itch_v3_0.clearing_flags.bits = function(range, value, packet, parent)

  -- Reserved Clearing Flags: 15 Bit
  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.reserved_clearing_flags, range, value)

  -- Priority Market Maker: 1 Bit
  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.priority_market_maker, range, value)
end

-- Dissect: Clearing Flags
nasdaq_usoptions_cti_itch_v3_0.clearing_flags.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_usoptions_cti_itch_v3_0.clearing_flags.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.clearing_flags.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.clearing_flags, range, display)

  if show.structs then
    nasdaq_usoptions_cti_itch_v3_0.clearing_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Flags
nasdaq_usoptions_cti_itch_v3_0.trade_flags = {}

-- Size: Trade Flags
nasdaq_usoptions_cti_itch_v3_0.trade_flags.size = 2

-- Display: Trade Flags
nasdaq_usoptions_cti_itch_v3_0.trade_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Quarterly Expiration flag set?
  if bit.band(value, 0x0400) ~= 0 then
    flags[#flags + 1] = "Quarterly Expiration"
  end
  -- Is Monthly Expiration flag set?
  if bit.band(value, 0x0800) ~= 0 then
    flags[#flags + 1] = "Monthly Expiration"
  end
  -- Is Weekly Expiration flag set?
  if bit.band(value, 0x1000) ~= 0 then
    flags[#flags + 1] = "Weekly Expiration"
  end
  -- Is Single Listed flag set?
  if bit.band(value, 0x2000) ~= 0 then
    flags[#flags + 1] = "Single Listed"
  end
  -- Is Make Take Program flag set?
  if bit.band(value, 0x4000) ~= 0 then
    flags[#flags + 1] = "Make Take Program"
  end
  -- Is Penny Pilot flag set?
  if bit.band(value, 0x8000) ~= 0 then
    flags[#flags + 1] = "Penny Pilot"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trade Flags
nasdaq_usoptions_cti_itch_v3_0.trade_flags.bits = function(range, value, packet, parent)

  -- Reserved Trade Flags: 10 Bit
  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.reserved_trade_flags, range, value)

  -- Quarterly Expiration: 1 Bit
  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.quarterly_expiration, range, value)

  -- Monthly Expiration: 1 Bit
  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.monthly_expiration, range, value)

  -- Weekly Expiration: 1 Bit
  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.weekly_expiration, range, value)

  -- Single Listed: 1 Bit
  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.single_listed, range, value)

  -- Make Take Program: 1 Bit
  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.make_take_program, range, value)

  -- Penny Pilot: 1 Bit
  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.penny_pilot, range, value)
end

-- Dissect: Trade Flags
nasdaq_usoptions_cti_itch_v3_0.trade_flags.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_usoptions_cti_itch_v3_0.trade_flags.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.trade_flags.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.trade_flags, range, display)

  if show.structs then
    nasdaq_usoptions_cti_itch_v3_0.trade_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Message
nasdaq_usoptions_cti_itch_v3_0.trade_message = {}

-- Size: Trade Message
nasdaq_usoptions_cti_itch_v3_0.trade_message.size =
  nasdaq_usoptions_cti_itch_v3_0.seconds.size + 
  nasdaq_usoptions_cti_itch_v3_0.nanoseconds.size + 
  nasdaq_usoptions_cti_itch_v3_0.version.size + 
  nasdaq_usoptions_cti_itch_v3_0.send_type.size + 
  nasdaq_usoptions_cti_itch_v3_0.option_id.size + 
  nasdaq_usoptions_cti_itch_v3_0.underlying_symbol.size + 
  nasdaq_usoptions_cti_itch_v3_0.security_symbol.size + 
  nasdaq_usoptions_cti_itch_v3_0.expiration.size + 
  nasdaq_usoptions_cti_itch_v3_0.strike_price.size + 
  nasdaq_usoptions_cti_itch_v3_0.option_kind.size + 
  nasdaq_usoptions_cti_itch_v3_0.trade_flags.size + 
  nasdaq_usoptions_cti_itch_v3_0.reserved_4.size + 
  nasdaq_usoptions_cti_itch_v3_0.transaction_type.size + 
  nasdaq_usoptions_cti_itch_v3_0.liquidity.size + 
  nasdaq_usoptions_cti_itch_v3_0.trade_id.size + 
  nasdaq_usoptions_cti_itch_v3_0.correction_number.size + 
  nasdaq_usoptions_cti_itch_v3_0.cross_id.size + 
  nasdaq_usoptions_cti_itch_v3_0.match_id.size + 
  nasdaq_usoptions_cti_itch_v3_0.auction_id.size + 
  nasdaq_usoptions_cti_itch_v3_0.auction_type.size + 
  nasdaq_usoptions_cti_itch_v3_0.ref_trade_id.size + 
  nasdaq_usoptions_cti_itch_v3_0.ref_correction_number.size + 
  nasdaq_usoptions_cti_itch_v3_0.ref_match_id.size + 
  nasdaq_usoptions_cti_itch_v3_0.execution_type.size + 
  nasdaq_usoptions_cti_itch_v3_0.execution_market.size + 
  nasdaq_usoptions_cti_itch_v3_0.trade_side.size + 
  nasdaq_usoptions_cti_itch_v3_0.trade_price.size + 
  nasdaq_usoptions_cti_itch_v3_0.trade_contracts.size + 
  nasdaq_usoptions_cti_itch_v3_0.side_changed.size + 
  nasdaq_usoptions_cti_itch_v3_0.strategy_id.size + 
  nasdaq_usoptions_cti_itch_v3_0.strategy_leg.size + 
  nasdaq_usoptions_cti_itch_v3_0.reserved_8.size + 
  nasdaq_usoptions_cti_itch_v3_0.occ_clearing_number.size + 
  nasdaq_usoptions_cti_itch_v3_0.give_up_occ_clearing_number.size + 
  nasdaq_usoptions_cti_itch_v3_0.exchange_clearing_number.size + 
  nasdaq_usoptions_cti_itch_v3_0.exchange_house.size + 
  nasdaq_usoptions_cti_itch_v3_0.exchange_suffix.size + 
  nasdaq_usoptions_cti_itch_v3_0.capacity.size + 
  nasdaq_usoptions_cti_itch_v3_0.multi_account.size + 
  nasdaq_usoptions_cti_itch_v3_0.broker.size + 
  nasdaq_usoptions_cti_itch_v3_0.second_broker.size + 
  nasdaq_usoptions_cti_itch_v3_0.origin_market.size + 
  nasdaq_usoptions_cti_itch_v3_0.account.size + 
  nasdaq_usoptions_cti_itch_v3_0.nscc.size + 
  nasdaq_usoptions_cti_itch_v3_0.mpid.size + 
  nasdaq_usoptions_cti_itch_v3_0.clearing_flags.size + 
  nasdaq_usoptions_cti_itch_v3_0.executing_broker.size + 
  nasdaq_usoptions_cti_itch_v3_0.reserved_6.size + 
  nasdaq_usoptions_cti_itch_v3_0.contra_occ_clearing_number.size + 
  nasdaq_usoptions_cti_itch_v3_0.contra_give_up_occ_clearing_number.size + 
  nasdaq_usoptions_cti_itch_v3_0.contra_exchange_clearing_number.size + 
  nasdaq_usoptions_cti_itch_v3_0.contra_exchange_house.size + 
  nasdaq_usoptions_cti_itch_v3_0.contra_capacity.size + 
  nasdaq_usoptions_cti_itch_v3_0.contra_broker.size + 
  nasdaq_usoptions_cti_itch_v3_0.contra_second_broker.size + 
  nasdaq_usoptions_cti_itch_v3_0.contra_nscc.size + 
  nasdaq_usoptions_cti_itch_v3_0.contra_mpid.size + 
  nasdaq_usoptions_cti_itch_v3_0.second_reserved_8.size + 
  nasdaq_usoptions_cti_itch_v3_0.firm.size + 
  nasdaq_usoptions_cti_itch_v3_0.order_date.size + 
  nasdaq_usoptions_cti_itch_v3_0.order_id.size + 
  nasdaq_usoptions_cti_itch_v3_0.quote_id.size + 
  nasdaq_usoptions_cti_itch_v3_0.sqf_sweep_id.size + 
  nasdaq_usoptions_cti_itch_v3_0.open_close_indicator.size + 
  nasdaq_usoptions_cti_itch_v3_0.customer_strategy_leg.size + 
  nasdaq_usoptions_cti_itch_v3_0.short_sell.size + 
  nasdaq_usoptions_cti_itch_v3_0.principal_agent.size + 
  nasdaq_usoptions_cti_itch_v3_0.supplementary_id.size + 
  nasdaq_usoptions_cti_itch_v3_0.order_indicators.size + 
  nasdaq_usoptions_cti_itch_v3_0.origin_type.size + 
  nasdaq_usoptions_cti_itch_v3_0.order_size.size + 
  nasdaq_usoptions_cti_itch_v3_0.order_price.size + 
  nasdaq_usoptions_cti_itch_v3_0.tif.size + 
  nasdaq_usoptions_cti_itch_v3_0.third_reserved_8.size

-- Display: Trade Message
nasdaq_usoptions_cti_itch_v3_0.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
nasdaq_usoptions_cti_itch_v3_0.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = nasdaq_usoptions_cti_itch_v3_0.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_usoptions_cti_itch_v3_0.nanoseconds.dissect(buffer, index, packet, parent)

  -- Version: Integer
  index, version = nasdaq_usoptions_cti_itch_v3_0.version.dissect(buffer, index, packet, parent)

  -- Send Type: Alpha
  index, send_type = nasdaq_usoptions_cti_itch_v3_0.send_type.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_usoptions_cti_itch_v3_0.option_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alpha
  index, underlying_symbol = nasdaq_usoptions_cti_itch_v3_0.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_usoptions_cti_itch_v3_0.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration: Struct of 3 fields
  index, expiration = nasdaq_usoptions_cti_itch_v3_0.expiration.dissect(buffer, index, packet, parent)

  -- Strike Price: Integer
  index, strike_price = nasdaq_usoptions_cti_itch_v3_0.strike_price.dissect(buffer, index, packet, parent)

  -- Option Kind: Alpha
  index, option_kind = nasdaq_usoptions_cti_itch_v3_0.option_kind.dissect(buffer, index, packet, parent)

  -- Trade Flags: Struct of 7 fields
  index, trade_flags = nasdaq_usoptions_cti_itch_v3_0.trade_flags.dissect(buffer, index, packet, parent)

  -- Reserved 4: Alpha
  index, reserved_4 = nasdaq_usoptions_cti_itch_v3_0.reserved_4.dissect(buffer, index, packet, parent)

  -- Transaction Type: Alpha
  index, transaction_type = nasdaq_usoptions_cti_itch_v3_0.transaction_type.dissect(buffer, index, packet, parent)

  -- Liquidity: Integer
  index, liquidity = nasdaq_usoptions_cti_itch_v3_0.liquidity.dissect(buffer, index, packet, parent)

  -- Trade Id: Integer
  index, trade_id = nasdaq_usoptions_cti_itch_v3_0.trade_id.dissect(buffer, index, packet, parent)

  -- Correction Number: Integer
  index, correction_number = nasdaq_usoptions_cti_itch_v3_0.correction_number.dissect(buffer, index, packet, parent)

  -- Cross Id: Integer
  index, cross_id = nasdaq_usoptions_cti_itch_v3_0.cross_id.dissect(buffer, index, packet, parent)

  -- Match Id: Integer
  index, match_id = nasdaq_usoptions_cti_itch_v3_0.match_id.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_usoptions_cti_itch_v3_0.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = nasdaq_usoptions_cti_itch_v3_0.auction_type.dissect(buffer, index, packet, parent)

  -- Ref Trade Id: Integer
  index, ref_trade_id = nasdaq_usoptions_cti_itch_v3_0.ref_trade_id.dissect(buffer, index, packet, parent)

  -- Ref Correction Number: Integer
  index, ref_correction_number = nasdaq_usoptions_cti_itch_v3_0.ref_correction_number.dissect(buffer, index, packet, parent)

  -- Ref Match Id: Integer
  index, ref_match_id = nasdaq_usoptions_cti_itch_v3_0.ref_match_id.dissect(buffer, index, packet, parent)

  -- Execution Type: Alpha
  index, execution_type = nasdaq_usoptions_cti_itch_v3_0.execution_type.dissect(buffer, index, packet, parent)

  -- Execution Market: Alpha
  index, execution_market = nasdaq_usoptions_cti_itch_v3_0.execution_market.dissect(buffer, index, packet, parent)

  -- Trade Side: Alpha
  index, trade_side = nasdaq_usoptions_cti_itch_v3_0.trade_side.dissect(buffer, index, packet, parent)

  -- Trade Price: Long Integer
  index, trade_price = nasdaq_usoptions_cti_itch_v3_0.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Contracts: Integer
  index, trade_contracts = nasdaq_usoptions_cti_itch_v3_0.trade_contracts.dissect(buffer, index, packet, parent)

  -- Side Changed: Alpha
  index, side_changed = nasdaq_usoptions_cti_itch_v3_0.side_changed.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_usoptions_cti_itch_v3_0.strategy_id.dissect(buffer, index, packet, parent)

  -- Strategy Leg: Integer
  index, strategy_leg = nasdaq_usoptions_cti_itch_v3_0.strategy_leg.dissect(buffer, index, packet, parent)

  -- Reserved 8: Alpha
  index, reserved_8 = nasdaq_usoptions_cti_itch_v3_0.reserved_8.dissect(buffer, index, packet, parent)

  -- Occ Clearing Number: Integer
  index, occ_clearing_number = nasdaq_usoptions_cti_itch_v3_0.occ_clearing_number.dissect(buffer, index, packet, parent)

  -- Give Up Occ Clearing Number: Integer
  index, give_up_occ_clearing_number = nasdaq_usoptions_cti_itch_v3_0.give_up_occ_clearing_number.dissect(buffer, index, packet, parent)

  -- Exchange Clearing Number: Integer
  index, exchange_clearing_number = nasdaq_usoptions_cti_itch_v3_0.exchange_clearing_number.dissect(buffer, index, packet, parent)

  -- Exchange House: Integer
  index, exchange_house = nasdaq_usoptions_cti_itch_v3_0.exchange_house.dissect(buffer, index, packet, parent)

  -- Exchange Suffix: Alpha
  index, exchange_suffix = nasdaq_usoptions_cti_itch_v3_0.exchange_suffix.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = nasdaq_usoptions_cti_itch_v3_0.capacity.dissect(buffer, index, packet, parent)

  -- Multi Account: Alphanumeric
  index, multi_account = nasdaq_usoptions_cti_itch_v3_0.multi_account.dissect(buffer, index, packet, parent)

  -- Broker: Alpha
  index, broker = nasdaq_usoptions_cti_itch_v3_0.broker.dissect(buffer, index, packet, parent)

  -- Second Broker: Integer
  index, second_broker = nasdaq_usoptions_cti_itch_v3_0.second_broker.dissect(buffer, index, packet, parent)

  -- Origin Market: Alpha
  index, origin_market = nasdaq_usoptions_cti_itch_v3_0.origin_market.dissect(buffer, index, packet, parent)

  -- Account: Alphanumeric
  index, account = nasdaq_usoptions_cti_itch_v3_0.account.dissect(buffer, index, packet, parent)

  -- Nscc: Integer
  index, nscc = nasdaq_usoptions_cti_itch_v3_0.nscc.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = nasdaq_usoptions_cti_itch_v3_0.mpid.dissect(buffer, index, packet, parent)

  -- Clearing Flags: Struct of 2 fields
  index, clearing_flags = nasdaq_usoptions_cti_itch_v3_0.clearing_flags.dissect(buffer, index, packet, parent)

  -- Executing Broker: Alpha
  index, executing_broker = nasdaq_usoptions_cti_itch_v3_0.executing_broker.dissect(buffer, index, packet, parent)

  -- Reserved 6: Alpha
  index, reserved_6 = nasdaq_usoptions_cti_itch_v3_0.reserved_6.dissect(buffer, index, packet, parent)

  -- Contra Occ Clearing Number: Integer
  index, contra_occ_clearing_number = nasdaq_usoptions_cti_itch_v3_0.contra_occ_clearing_number.dissect(buffer, index, packet, parent)

  -- Contra Give Up Occ Clearing Number: Integer
  index, contra_give_up_occ_clearing_number = nasdaq_usoptions_cti_itch_v3_0.contra_give_up_occ_clearing_number.dissect(buffer, index, packet, parent)

  -- Contra Exchange Clearing Number: Integer
  index, contra_exchange_clearing_number = nasdaq_usoptions_cti_itch_v3_0.contra_exchange_clearing_number.dissect(buffer, index, packet, parent)

  -- Contra Exchange House: Integer
  index, contra_exchange_house = nasdaq_usoptions_cti_itch_v3_0.contra_exchange_house.dissect(buffer, index, packet, parent)

  -- Contra Capacity: Alpha
  index, contra_capacity = nasdaq_usoptions_cti_itch_v3_0.contra_capacity.dissect(buffer, index, packet, parent)

  -- Contra Broker: Integer
  index, contra_broker = nasdaq_usoptions_cti_itch_v3_0.contra_broker.dissect(buffer, index, packet, parent)

  -- Contra Second Broker: Integer
  index, contra_second_broker = nasdaq_usoptions_cti_itch_v3_0.contra_second_broker.dissect(buffer, index, packet, parent)

  -- Contra Nscc: Integer
  index, contra_nscc = nasdaq_usoptions_cti_itch_v3_0.contra_nscc.dissect(buffer, index, packet, parent)

  -- Contra Mpid: Alphanumeric
  index, contra_mpid = nasdaq_usoptions_cti_itch_v3_0.contra_mpid.dissect(buffer, index, packet, parent)

  -- Second Reserved 8: Alpha
  index, second_reserved_8 = nasdaq_usoptions_cti_itch_v3_0.second_reserved_8.dissect(buffer, index, packet, parent)

  -- Firm: Alphanumeric
  index, firm = nasdaq_usoptions_cti_itch_v3_0.firm.dissect(buffer, index, packet, parent)

  -- Order Date: Struct of 3 fields
  index, order_date = nasdaq_usoptions_cti_itch_v3_0.order_date.dissect(buffer, index, packet, parent)

  -- Order Id: Alphanumeric
  index, order_id = nasdaq_usoptions_cti_itch_v3_0.order_id.dissect(buffer, index, packet, parent)

  -- Quote Id: Integer
  index, quote_id = nasdaq_usoptions_cti_itch_v3_0.quote_id.dissect(buffer, index, packet, parent)

  -- Sqf Sweep Id: Integer
  index, sqf_sweep_id = nasdaq_usoptions_cti_itch_v3_0.sqf_sweep_id.dissect(buffer, index, packet, parent)

  -- Open Close Indicator: Alphanumeric
  index, open_close_indicator = nasdaq_usoptions_cti_itch_v3_0.open_close_indicator.dissect(buffer, index, packet, parent)

  -- Customer Strategy Leg: Alphanumeric
  index, customer_strategy_leg = nasdaq_usoptions_cti_itch_v3_0.customer_strategy_leg.dissect(buffer, index, packet, parent)

  -- Short Sell: Alpha
  index, short_sell = nasdaq_usoptions_cti_itch_v3_0.short_sell.dissect(buffer, index, packet, parent)

  -- Principal Agent: Alpha
  index, principal_agent = nasdaq_usoptions_cti_itch_v3_0.principal_agent.dissect(buffer, index, packet, parent)

  -- Supplementary Id: Alphanumeric
  index, supplementary_id = nasdaq_usoptions_cti_itch_v3_0.supplementary_id.dissect(buffer, index, packet, parent)

  -- Order Indicators: Struct of 6 fields
  index, order_indicators = nasdaq_usoptions_cti_itch_v3_0.order_indicators.dissect(buffer, index, packet, parent)

  -- Origin Type: Alphanumeric
  index, origin_type = nasdaq_usoptions_cti_itch_v3_0.origin_type.dissect(buffer, index, packet, parent)

  -- Order Size: Integer
  index, order_size = nasdaq_usoptions_cti_itch_v3_0.order_size.dissect(buffer, index, packet, parent)

  -- Order Price: Integer
  index, order_price = nasdaq_usoptions_cti_itch_v3_0.order_price.dissect(buffer, index, packet, parent)

  -- Tif: Alpha
  index, tif = nasdaq_usoptions_cti_itch_v3_0.tif.dissect(buffer, index, packet, parent)

  -- Third Reserved 8: Alpha
  index, third_reserved_8 = nasdaq_usoptions_cti_itch_v3_0.third_reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
nasdaq_usoptions_cti_itch_v3_0.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.trade_message, buffer(offset, 0))
    local index = nasdaq_usoptions_cti_itch_v3_0.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_usoptions_cti_itch_v3_0.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_usoptions_cti_itch_v3_0.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Trading Action Message
nasdaq_usoptions_cti_itch_v3_0.complex_trading_action_message = {}

-- Size: Complex Trading Action Message
nasdaq_usoptions_cti_itch_v3_0.complex_trading_action_message.size =
  nasdaq_usoptions_cti_itch_v3_0.seconds.size + 
  nasdaq_usoptions_cti_itch_v3_0.nanoseconds.size + 
  nasdaq_usoptions_cti_itch_v3_0.version.size + 
  nasdaq_usoptions_cti_itch_v3_0.strategy_id.size + 
  nasdaq_usoptions_cti_itch_v3_0.current_trading_state.size

-- Display: Complex Trading Action Message
nasdaq_usoptions_cti_itch_v3_0.complex_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Trading Action Message
nasdaq_usoptions_cti_itch_v3_0.complex_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = nasdaq_usoptions_cti_itch_v3_0.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_usoptions_cti_itch_v3_0.nanoseconds.dissect(buffer, index, packet, parent)

  -- Version: Integer
  index, version = nasdaq_usoptions_cti_itch_v3_0.version.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_usoptions_cti_itch_v3_0.strategy_id.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alpha
  index, current_trading_state = nasdaq_usoptions_cti_itch_v3_0.current_trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Trading Action Message
nasdaq_usoptions_cti_itch_v3_0.complex_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.complex_trading_action_message, buffer(offset, 0))
    local index = nasdaq_usoptions_cti_itch_v3_0.complex_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_usoptions_cti_itch_v3_0.complex_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_usoptions_cti_itch_v3_0.complex_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Trading Action Message
nasdaq_usoptions_cti_itch_v3_0.security_trading_action_message = {}

-- Size: Security Trading Action Message
nasdaq_usoptions_cti_itch_v3_0.security_trading_action_message.size =
  nasdaq_usoptions_cti_itch_v3_0.seconds.size + 
  nasdaq_usoptions_cti_itch_v3_0.nanoseconds.size + 
  nasdaq_usoptions_cti_itch_v3_0.version.size + 
  nasdaq_usoptions_cti_itch_v3_0.option_id.size + 
  nasdaq_usoptions_cti_itch_v3_0.security_symbol.size + 
  nasdaq_usoptions_cti_itch_v3_0.expiration.size + 
  nasdaq_usoptions_cti_itch_v3_0.strike_price.size + 
  nasdaq_usoptions_cti_itch_v3_0.option_kind.size + 
  nasdaq_usoptions_cti_itch_v3_0.current_trading_state.size

-- Display: Security Trading Action Message
nasdaq_usoptions_cti_itch_v3_0.security_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Trading Action Message
nasdaq_usoptions_cti_itch_v3_0.security_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = nasdaq_usoptions_cti_itch_v3_0.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_usoptions_cti_itch_v3_0.nanoseconds.dissect(buffer, index, packet, parent)

  -- Version: Integer
  index, version = nasdaq_usoptions_cti_itch_v3_0.version.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_usoptions_cti_itch_v3_0.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_usoptions_cti_itch_v3_0.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration: Struct of 3 fields
  index, expiration = nasdaq_usoptions_cti_itch_v3_0.expiration.dissect(buffer, index, packet, parent)

  -- Strike Price: Integer
  index, strike_price = nasdaq_usoptions_cti_itch_v3_0.strike_price.dissect(buffer, index, packet, parent)

  -- Option Kind: Alpha
  index, option_kind = nasdaq_usoptions_cti_itch_v3_0.option_kind.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alpha
  index, current_trading_state = nasdaq_usoptions_cti_itch_v3_0.current_trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Trading Action Message
nasdaq_usoptions_cti_itch_v3_0.security_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.security_trading_action_message, buffer(offset, 0))
    local index = nasdaq_usoptions_cti_itch_v3_0.security_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_usoptions_cti_itch_v3_0.security_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_usoptions_cti_itch_v3_0.security_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Leg Expiration
nasdaq_usoptions_cti_itch_v3_0.leg_expiration = {}

-- Size: Leg Expiration
nasdaq_usoptions_cti_itch_v3_0.leg_expiration.size = 2

-- Display: Leg Expiration
nasdaq_usoptions_cti_itch_v3_0.leg_expiration.display = function(range, value, packet, parent)
  local flags = {}


  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Leg Expiration
nasdaq_usoptions_cti_itch_v3_0.leg_expiration.bits = function(range, value, packet, parent)

  -- Leg Expiration Day: 5 Bit Unsigned Fixed Width Integer
  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.leg_expiration_day, range, value)

  -- Leg Expiration Month: 4 Bit Unsigned Fixed Width Integer
  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.leg_expiration_month, range, value)

  -- Leg Expiration Year: 7 Bit Unsigned Fixed Width Integer
  parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.leg_expiration_year, range, value)
end

-- Dissect: Leg Expiration
nasdaq_usoptions_cti_itch_v3_0.leg_expiration.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_usoptions_cti_itch_v3_0.leg_expiration.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nasdaq_usoptions_cti_itch_v3_0.leg_expiration.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.leg_expiration, range, display)

  if show.structs then
    nasdaq_usoptions_cti_itch_v3_0.leg_expiration.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Strategy Legs
nasdaq_usoptions_cti_itch_v3_0.strategy_legs = {}

-- Size: Strategy Legs
nasdaq_usoptions_cti_itch_v3_0.strategy_legs.size =
  nasdaq_usoptions_cti_itch_v3_0.leg_option_id.size + 
  nasdaq_usoptions_cti_itch_v3_0.leg_security_symbol.size + 
  nasdaq_usoptions_cti_itch_v3_0.leg_expiration.size + 
  nasdaq_usoptions_cti_itch_v3_0.leg_strike_price.size + 
  nasdaq_usoptions_cti_itch_v3_0.leg_option_kind.size + 
  nasdaq_usoptions_cti_itch_v3_0.leg_side.size + 
  nasdaq_usoptions_cti_itch_v3_0.leg_ratio.size + 
  nasdaq_usoptions_cti_itch_v3_0.reserved_8.size

-- Display: Strategy Legs
nasdaq_usoptions_cti_itch_v3_0.strategy_legs.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Legs
nasdaq_usoptions_cti_itch_v3_0.strategy_legs.fields = function(buffer, offset, packet, parent, strategy_legs_index)
  local index = offset

  -- Implicit Strategy Legs Index
  if strategy_legs_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.strategy_legs_index, strategy_legs_index)
    iteration:set_generated()
  end

  -- Leg Option Id: Integer
  index, leg_option_id = nasdaq_usoptions_cti_itch_v3_0.leg_option_id.dissect(buffer, index, packet, parent)

  -- Leg Security Symbol: Alphanumeric
  index, leg_security_symbol = nasdaq_usoptions_cti_itch_v3_0.leg_security_symbol.dissect(buffer, index, packet, parent)

  -- Leg Expiration: Struct of 3 fields
  index, leg_expiration = nasdaq_usoptions_cti_itch_v3_0.leg_expiration.dissect(buffer, index, packet, parent)

  -- Leg Strike Price: Integer
  index, leg_strike_price = nasdaq_usoptions_cti_itch_v3_0.leg_strike_price.dissect(buffer, index, packet, parent)

  -- Leg Option Kind: Alpha
  index, leg_option_kind = nasdaq_usoptions_cti_itch_v3_0.leg_option_kind.dissect(buffer, index, packet, parent)

  -- Leg Side: Alpha
  index, leg_side = nasdaq_usoptions_cti_itch_v3_0.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Integer
  index, leg_ratio = nasdaq_usoptions_cti_itch_v3_0.leg_ratio.dissect(buffer, index, packet, parent)

  -- Reserved 8: Alpha
  index, reserved_8 = nasdaq_usoptions_cti_itch_v3_0.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Legs
nasdaq_usoptions_cti_itch_v3_0.strategy_legs.dissect = function(buffer, offset, packet, parent, strategy_legs_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.strategy_legs, buffer(offset, 0))
    local index = nasdaq_usoptions_cti_itch_v3_0.strategy_legs.fields(buffer, offset, packet, parent, strategy_legs_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_usoptions_cti_itch_v3_0.strategy_legs.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_usoptions_cti_itch_v3_0.strategy_legs.fields(buffer, offset, packet, parent, strategy_legs_index)
  end
end

-- Complex Order Strategy Message
nasdaq_usoptions_cti_itch_v3_0.complex_order_strategy_message = {}

-- Calculate size of: Complex Order Strategy Message
nasdaq_usoptions_cti_itch_v3_0.complex_order_strategy_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_usoptions_cti_itch_v3_0.seconds.size

  index = index + nasdaq_usoptions_cti_itch_v3_0.nanoseconds.size

  index = index + nasdaq_usoptions_cti_itch_v3_0.version.size

  index = index + nasdaq_usoptions_cti_itch_v3_0.strategy_id.size

  index = index + nasdaq_usoptions_cti_itch_v3_0.underlying_symbol.size

  index = index + nasdaq_usoptions_cti_itch_v3_0.action.size

  index = index + nasdaq_usoptions_cti_itch_v3_0.reserved_16.size

  index = index + nasdaq_usoptions_cti_itch_v3_0.number_of_legs.size

  -- Calculate field size from count
  local strategy_legs_count = buffer(offset + index - 1, 1):uint()
  index = index + strategy_legs_count * 32

  return index
end

-- Display: Complex Order Strategy Message
nasdaq_usoptions_cti_itch_v3_0.complex_order_strategy_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Strategy Message
nasdaq_usoptions_cti_itch_v3_0.complex_order_strategy_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = nasdaq_usoptions_cti_itch_v3_0.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_usoptions_cti_itch_v3_0.nanoseconds.dissect(buffer, index, packet, parent)

  -- Version: Integer
  index, version = nasdaq_usoptions_cti_itch_v3_0.version.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_usoptions_cti_itch_v3_0.strategy_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alpha
  index, underlying_symbol = nasdaq_usoptions_cti_itch_v3_0.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Action: Alpha
  index, action = nasdaq_usoptions_cti_itch_v3_0.action.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alpha
  index, reserved_16 = nasdaq_usoptions_cti_itch_v3_0.reserved_16.dissect(buffer, index, packet, parent)

  -- Number Of Legs: Integer
  index, number_of_legs = nasdaq_usoptions_cti_itch_v3_0.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Strategy Legs
  for strategy_legs_index = 1, number_of_legs do
    index, strategy_legs = nasdaq_usoptions_cti_itch_v3_0.strategy_legs.dissect(buffer, index, packet, parent, strategy_legs_index)
  end

  return index
end

-- Dissect: Complex Order Strategy Message
nasdaq_usoptions_cti_itch_v3_0.complex_order_strategy_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.complex_order_strategy_message, buffer(offset, 0))
    local index = nasdaq_usoptions_cti_itch_v3_0.complex_order_strategy_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_usoptions_cti_itch_v3_0.complex_order_strategy_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_usoptions_cti_itch_v3_0.complex_order_strategy_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Directory Message
nasdaq_usoptions_cti_itch_v3_0.options_directory_message = {}

-- Size: Options Directory Message
nasdaq_usoptions_cti_itch_v3_0.options_directory_message.size =
  nasdaq_usoptions_cti_itch_v3_0.seconds.size + 
  nasdaq_usoptions_cti_itch_v3_0.nanoseconds.size + 
  nasdaq_usoptions_cti_itch_v3_0.version.size + 
  nasdaq_usoptions_cti_itch_v3_0.option_id.size + 
  nasdaq_usoptions_cti_itch_v3_0.security_symbol.size + 
  nasdaq_usoptions_cti_itch_v3_0.expiration.size + 
  nasdaq_usoptions_cti_itch_v3_0.strike_price.size + 
  nasdaq_usoptions_cti_itch_v3_0.option_kind.size + 
  nasdaq_usoptions_cti_itch_v3_0.underlying_symbol.size + 
  nasdaq_usoptions_cti_itch_v3_0.option_closing_type.size + 
  nasdaq_usoptions_cti_itch_v3_0.tradable.size + 
  nasdaq_usoptions_cti_itch_v3_0.mpv.size + 
  nasdaq_usoptions_cti_itch_v3_0.closing_only.size + 
  nasdaq_usoptions_cti_itch_v3_0.contract_size.size + 
  nasdaq_usoptions_cti_itch_v3_0.reserved_16.size

-- Display: Options Directory Message
nasdaq_usoptions_cti_itch_v3_0.options_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Directory Message
nasdaq_usoptions_cti_itch_v3_0.options_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = nasdaq_usoptions_cti_itch_v3_0.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_usoptions_cti_itch_v3_0.nanoseconds.dissect(buffer, index, packet, parent)

  -- Version: Integer
  index, version = nasdaq_usoptions_cti_itch_v3_0.version.dissect(buffer, index, packet, parent)

  -- Option Id: Integer
  index, option_id = nasdaq_usoptions_cti_itch_v3_0.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_usoptions_cti_itch_v3_0.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration: Struct of 3 fields
  index, expiration = nasdaq_usoptions_cti_itch_v3_0.expiration.dissect(buffer, index, packet, parent)

  -- Strike Price: Integer
  index, strike_price = nasdaq_usoptions_cti_itch_v3_0.strike_price.dissect(buffer, index, packet, parent)

  -- Option Kind: Alpha
  index, option_kind = nasdaq_usoptions_cti_itch_v3_0.option_kind.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alpha
  index, underlying_symbol = nasdaq_usoptions_cti_itch_v3_0.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Option Closing Type: Alpha
  index, option_closing_type = nasdaq_usoptions_cti_itch_v3_0.option_closing_type.dissect(buffer, index, packet, parent)

  -- Tradable: Alpha
  index, tradable = nasdaq_usoptions_cti_itch_v3_0.tradable.dissect(buffer, index, packet, parent)

  -- Mpv: Alpha
  index, mpv = nasdaq_usoptions_cti_itch_v3_0.mpv.dissect(buffer, index, packet, parent)

  -- Closing Only: Alpha
  index, closing_only = nasdaq_usoptions_cti_itch_v3_0.closing_only.dissect(buffer, index, packet, parent)

  -- Contract Size: Integer
  index, contract_size = nasdaq_usoptions_cti_itch_v3_0.contract_size.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alpha
  index, reserved_16 = nasdaq_usoptions_cti_itch_v3_0.reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Directory Message
nasdaq_usoptions_cti_itch_v3_0.options_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.options_directory_message, buffer(offset, 0))
    local index = nasdaq_usoptions_cti_itch_v3_0.options_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_usoptions_cti_itch_v3_0.options_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_usoptions_cti_itch_v3_0.options_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_usoptions_cti_itch_v3_0.system_event_message = {}

-- Size: System Event Message
nasdaq_usoptions_cti_itch_v3_0.system_event_message.size =
  nasdaq_usoptions_cti_itch_v3_0.seconds.size + 
  nasdaq_usoptions_cti_itch_v3_0.nanoseconds.size + 
  nasdaq_usoptions_cti_itch_v3_0.version.size + 
  nasdaq_usoptions_cti_itch_v3_0.event_code.size

-- Display: System Event Message
nasdaq_usoptions_cti_itch_v3_0.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_usoptions_cti_itch_v3_0.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = nasdaq_usoptions_cti_itch_v3_0.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_usoptions_cti_itch_v3_0.nanoseconds.dissect(buffer, index, packet, parent)

  -- Version: Integer
  index, version = nasdaq_usoptions_cti_itch_v3_0.version.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_usoptions_cti_itch_v3_0.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_usoptions_cti_itch_v3_0.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_usoptions_cti_itch_v3_0.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_usoptions_cti_itch_v3_0.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_usoptions_cti_itch_v3_0.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nasdaq_usoptions_cti_itch_v3_0.sequenced_message = {}

-- Dissect: Sequenced Message
nasdaq_usoptions_cti_itch_v3_0.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect System Event Message
  if sequenced_message_type == "S" then
    return nasdaq_usoptions_cti_itch_v3_0.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Directory Message
  if sequenced_message_type == "D" then
    return nasdaq_usoptions_cti_itch_v3_0.options_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Strategy Message
  if sequenced_message_type == "R" then
    return nasdaq_usoptions_cti_itch_v3_0.complex_order_strategy_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Trading Action Message
  if sequenced_message_type == "H" then
    return nasdaq_usoptions_cti_itch_v3_0.security_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Trading Action Message
  if sequenced_message_type == "I" then
    return nasdaq_usoptions_cti_itch_v3_0.complex_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if sequenced_message_type == "T" then
    return nasdaq_usoptions_cti_itch_v3_0.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Trade Message
  if sequenced_message_type == "V" then
    return nasdaq_usoptions_cti_itch_v3_0.cancel_trade_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
nasdaq_usoptions_cti_itch_v3_0.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
nasdaq_usoptions_cti_itch_v3_0.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
nasdaq_usoptions_cti_itch_v3_0.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_usoptions_cti_itch_v3_0.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = nasdaq_usoptions_cti_itch_v3_0.conversation.current
  if flow ~= nil then
    local memo = flow.sequence.frames[packet.number]
    if not packet.visited then
      if flow.sequence.next == nil then
        flow.sequence.next = tonumber(nasdaq_usoptions_cti_itch_v3_0.accepted_sequence_number.current)
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
          local sequence = parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if nasdaq_usoptions_cti_itch_v3_0.stream_frame ~= packet.number or nasdaq_usoptions_cti_itch_v3_0.stream_occurrence >= #memo then
          nasdaq_usoptions_cti_itch_v3_0.stream_frame = packet.number
          nasdaq_usoptions_cti_itch_v3_0.stream_occurrence = 0
        end
        nasdaq_usoptions_cti_itch_v3_0.stream_occurrence = nasdaq_usoptions_cti_itch_v3_0.stream_occurrence + 1
        local value = memo[nasdaq_usoptions_cti_itch_v3_0.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 7 values
  index, sequenced_message_type = nasdaq_usoptions_cti_itch_v3_0.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 7 branches
  index = nasdaq_usoptions_cti_itch_v3_0.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_usoptions_cti_itch_v3_0.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = nasdaq_usoptions_cti_itch_v3_0.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.sequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_usoptions_cti_itch_v3_0.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = nasdaq_usoptions_cti_itch_v3_0.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_usoptions_cti_itch_v3_0.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
nasdaq_usoptions_cti_itch_v3_0.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_usoptions_cti_itch_v3_0.login_rejected_packet.size =
  nasdaq_usoptions_cti_itch_v3_0.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_usoptions_cti_itch_v3_0.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_usoptions_cti_itch_v3_0.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String Enum with 2 values
  index, reject_reason_code = nasdaq_usoptions_cti_itch_v3_0.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_usoptions_cti_itch_v3_0.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_usoptions_cti_itch_v3_0.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_usoptions_cti_itch_v3_0.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_usoptions_cti_itch_v3_0.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_usoptions_cti_itch_v3_0.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_usoptions_cti_itch_v3_0.login_accepted_packet.size =
  nasdaq_usoptions_cti_itch_v3_0.accepted_session.size + 
  nasdaq_usoptions_cti_itch_v3_0.accepted_sequence_number.size

-- Display: Login Accepted Packet
nasdaq_usoptions_cti_itch_v3_0.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_usoptions_cti_itch_v3_0.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = nasdaq_usoptions_cti_itch_v3_0.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = nasdaq_usoptions_cti_itch_v3_0.accepted_sequence_number.dissect(buffer, index, packet, parent)

  -- Store Accepted Sequence Number Value
  nasdaq_usoptions_cti_itch_v3_0.accepted_sequence_number.current = accepted_sequence_number

  if not packet.visited then
    nasdaq_usoptions_cti_itch_v3_0.conversation.current.accepted_sequence_number.last = accepted_sequence_number
  end

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_usoptions_cti_itch_v3_0.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_usoptions_cti_itch_v3_0.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_usoptions_cti_itch_v3_0.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_usoptions_cti_itch_v3_0.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_usoptions_cti_itch_v3_0.debug_packet = {}

-- Size: Debug Packet
nasdaq_usoptions_cti_itch_v3_0.debug_packet.size =
  nasdaq_usoptions_cti_itch_v3_0.debug_text.size

-- Display: Debug Packet
nasdaq_usoptions_cti_itch_v3_0.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_usoptions_cti_itch_v3_0.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Debug Text: 1 Byte Ascii String
  index, debug_text = nasdaq_usoptions_cti_itch_v3_0.debug_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
nasdaq_usoptions_cti_itch_v3_0.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_usoptions_cti_itch_v3_0.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_usoptions_cti_itch_v3_0.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_usoptions_cti_itch_v3_0.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
nasdaq_usoptions_cti_itch_v3_0.server_payload = {}

-- Dissect: Server Payload
nasdaq_usoptions_cti_itch_v3_0.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  -- Dissect Debug Packet
  if server_packet_type == "+" then
    return nasdaq_usoptions_cti_itch_v3_0.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if server_packet_type == "A" then
    return nasdaq_usoptions_cti_itch_v3_0.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if server_packet_type == "J" then
    return nasdaq_usoptions_cti_itch_v3_0.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if server_packet_type == "S" then
    return nasdaq_usoptions_cti_itch_v3_0.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat
  if server_packet_type == "H" then
    return nasdaq_usoptions_cti_itch_v3_0.server_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if server_packet_type == "Z" then
    return nasdaq_usoptions_cti_itch_v3_0.end_of_session.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
nasdaq_usoptions_cti_itch_v3_0.server_packet_header = {}

-- Size: Server Packet Header
nasdaq_usoptions_cti_itch_v3_0.server_packet_header.size =
  nasdaq_usoptions_cti_itch_v3_0.packet_length.size + 
  nasdaq_usoptions_cti_itch_v3_0.server_packet_type.size

-- Display: Server Packet Header
nasdaq_usoptions_cti_itch_v3_0.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
nasdaq_usoptions_cti_itch_v3_0.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_usoptions_cti_itch_v3_0.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = nasdaq_usoptions_cti_itch_v3_0.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
nasdaq_usoptions_cti_itch_v3_0.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.server_packet_header, buffer(offset, 0))
    local index = nasdaq_usoptions_cti_itch_v3_0.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_usoptions_cti_itch_v3_0.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_usoptions_cti_itch_v3_0.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
nasdaq_usoptions_cti_itch_v3_0.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
nasdaq_usoptions_cti_itch_v3_0.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
nasdaq_usoptions_cti_itch_v3_0.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = nasdaq_usoptions_cti_itch_v3_0.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = nasdaq_usoptions_cti_itch_v3_0.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
nasdaq_usoptions_cti_itch_v3_0.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_usoptions_cti_itch_v3_0.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = nasdaq_usoptions_cti_itch_v3_0.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_usoptions_cti_itch_v3_0.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_usoptions_cti_itch_v3_0.server_packet_header.size then
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
nasdaq_usoptions_cti_itch_v3_0.server_packet = {}

-- Verify required size of Tcp packet
nasdaq_usoptions_cti_itch_v3_0.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_usoptions_cti_itch_v3_0.server_packet_header.size
end

-- Dissect Server Packet
nasdaq_usoptions_cti_itch_v3_0.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nasdaq_usoptions_cti_itch_v3_0.conversation.data(packet)
  if not packet.visited then
    data.accepted_sequence_number.frames[packet.number] = data.accepted_sequence_number.last
  end
  nasdaq_usoptions_cti_itch_v3_0.accepted_sequence_number.current = data.accepted_sequence_number.frames[packet.number]
  nasdaq_usoptions_cti_itch_v3_0.conversation.current = data

  local index = 0

  -- Dependency for Server Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Server Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_soup_bin_tcp_packet = server_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_usoptions_cti_itch_v3_0.server_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_server_soup_bin_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end

-- Logout Request
nasdaq_usoptions_cti_itch_v3_0.logout_request = {}

-- Display: Logout Request
nasdaq_usoptions_cti_itch_v3_0.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
nasdaq_usoptions_cti_itch_v3_0.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_usoptions_cti_itch_v3_0.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
nasdaq_usoptions_cti_itch_v3_0.client_heartbeat = {}

-- Display: Client Heartbeat
nasdaq_usoptions_cti_itch_v3_0.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
nasdaq_usoptions_cti_itch_v3_0.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_usoptions_cti_itch_v3_0.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Unsequenced Data Packet
nasdaq_usoptions_cti_itch_v3_0.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
nasdaq_usoptions_cti_itch_v3_0.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
nasdaq_usoptions_cti_itch_v3_0.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_usoptions_cti_itch_v3_0.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = nasdaq_usoptions_cti_itch_v3_0.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = packet_length - 2

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = nasdaq_usoptions_cti_itch_v3_0.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_usoptions_cti_itch_v3_0.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = nasdaq_usoptions_cti_itch_v3_0.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_usoptions_cti_itch_v3_0.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = nasdaq_usoptions_cti_itch_v3_0.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_usoptions_cti_itch_v3_0.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
nasdaq_usoptions_cti_itch_v3_0.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_usoptions_cti_itch_v3_0.login_request_packet.size =
  nasdaq_usoptions_cti_itch_v3_0.username.size + 
  nasdaq_usoptions_cti_itch_v3_0.password.size + 
  nasdaq_usoptions_cti_itch_v3_0.requested_session.size + 
  nasdaq_usoptions_cti_itch_v3_0.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_usoptions_cti_itch_v3_0.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_usoptions_cti_itch_v3_0.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_usoptions_cti_itch_v3_0.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_usoptions_cti_itch_v3_0.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_usoptions_cti_itch_v3_0.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_usoptions_cti_itch_v3_0.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_usoptions_cti_itch_v3_0.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_usoptions_cti_itch_v3_0.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_usoptions_cti_itch_v3_0.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_usoptions_cti_itch_v3_0.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
nasdaq_usoptions_cti_itch_v3_0.client_payload = {}

-- Dissect: Client Payload
nasdaq_usoptions_cti_itch_v3_0.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  -- Dissect Debug Packet
  if client_packet_type == "+" then
    return nasdaq_usoptions_cti_itch_v3_0.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if client_packet_type == "L" then
    return nasdaq_usoptions_cti_itch_v3_0.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if client_packet_type == "U" then
    return nasdaq_usoptions_cti_itch_v3_0.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat
  if client_packet_type == "R" then
    return nasdaq_usoptions_cti_itch_v3_0.client_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if client_packet_type == "O" then
    return nasdaq_usoptions_cti_itch_v3_0.logout_request.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
nasdaq_usoptions_cti_itch_v3_0.client_packet_header = {}

-- Size: Client Packet Header
nasdaq_usoptions_cti_itch_v3_0.client_packet_header.size =
  nasdaq_usoptions_cti_itch_v3_0.packet_length.size + 
  nasdaq_usoptions_cti_itch_v3_0.client_packet_type.size

-- Display: Client Packet Header
nasdaq_usoptions_cti_itch_v3_0.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
nasdaq_usoptions_cti_itch_v3_0.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_usoptions_cti_itch_v3_0.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = nasdaq_usoptions_cti_itch_v3_0.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
nasdaq_usoptions_cti_itch_v3_0.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.client_packet_header, buffer(offset, 0))
    local index = nasdaq_usoptions_cti_itch_v3_0.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_usoptions_cti_itch_v3_0.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_usoptions_cti_itch_v3_0.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
nasdaq_usoptions_cti_itch_v3_0.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
nasdaq_usoptions_cti_itch_v3_0.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
nasdaq_usoptions_cti_itch_v3_0.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = nasdaq_usoptions_cti_itch_v3_0.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = nasdaq_usoptions_cti_itch_v3_0.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
nasdaq_usoptions_cti_itch_v3_0.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_usoptions_cti_itch_v3_0.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_usoptions_cti_itch_v3_0.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = nasdaq_usoptions_cti_itch_v3_0.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_usoptions_cti_itch_v3_0.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_usoptions_cti_itch_v3_0.client_packet_header.size then
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
nasdaq_usoptions_cti_itch_v3_0.client_packet = {}

-- Verify required size of Tcp packet
nasdaq_usoptions_cti_itch_v3_0.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_usoptions_cti_itch_v3_0.client_packet_header.size
end

-- Dissect Client Packet
nasdaq_usoptions_cti_itch_v3_0.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Client Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_soup_bin_tcp_packet = client_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_usoptions_cti_itch_v3_0.client_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_client_soup_bin_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_usoptions_cti_itch_v3_0.init()
  nasdaq_usoptions_cti_itch_v3_0.accepted_sequence_number.current = nil
  nasdaq_usoptions_cti_itch_v3_0.conversation.current = nil
  nasdaq_usoptions_cti_itch_v3_0.conversation.flows = {}
end

-- Connection roles for Nasdaq UsOptions Cti Itch 3.0: Client is the initiator, Server is the acceptor
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
nasdaq_usoptions_cti_itch_v3_0.role = function(packet)
  if omi_nasdaq_usoptions_cti_itch_v3_0.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nasdaq_usoptions_cti_itch_v3_0.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nasdaq_usoptions_cti_itch_v3_0.prefs.acceptor_port

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

  if omi_nasdaq_usoptions_cti_itch_v3_0.prefs.swap_sides then
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
nasdaq_usoptions_cti_itch_v3_0.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nasdaq UsOptions Cti Itch 3.0
function omi_nasdaq_usoptions_cti_itch_v3_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_usoptions_cti_itch_v3_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_usoptions_cti_itch_v3_0, buffer(), omi_nasdaq_usoptions_cti_itch_v3_0.description, "("..buffer:len().." Bytes)")

  local role = nasdaq_usoptions_cti_itch_v3_0.role(packet)

  if role == "initiator" then
    return nasdaq_usoptions_cti_itch_v3_0.client_packet.dissect(buffer, packet, protocol)
  end

  return nasdaq_usoptions_cti_itch_v3_0.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nasdaq_usoptions_cti_itch_v3_0.client_packet.fingerprint = function(buffer)
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

  -- Unsequenced Data Packet
  if client_packet_type == "U" then
    return true
  end

  -- Client Heartbeat
  if client_packet_type == "R" then
    return true
  end

  -- Logout Request
  if client_packet_type == "O" then
    return true
  end

  return false
end

-- Fingerprint of Server Packet: would its message dispatch accept this frame?
nasdaq_usoptions_cti_itch_v3_0.server_packet.fingerprint = function(buffer)
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
    if buffer:len() < 4 then
      return false
    end

    local sequenced_message_type = buffer(3, 1):string()

    -- System Event Message
    if sequenced_message_type == "S" then
      return true
    end

    -- Options Directory Message
    if sequenced_message_type == "D" then
      return true
    end

    -- Complex Order Strategy Message
    if sequenced_message_type == "R" then
      return true
    end

    -- Security Trading Action Message
    if sequenced_message_type == "H" then
      return true
    end

    -- Complex Trading Action Message
    if sequenced_message_type == "I" then
      return true
    end

    -- Trade Message
    if sequenced_message_type == "T" then
      return true
    end

    -- Cancel Trade Message
    if sequenced_message_type == "V" then
      return true
    end

    return false
  end

  -- Server Heartbeat
  if server_packet_type == "H" then
    return true
  end

  -- End Of Session
  if server_packet_type == "Z" then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq UsOptions Cti Itch 3.0 (Tcp)
local function omi_nasdaq_usoptions_cti_itch_v3_0_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_usoptions_cti_itch_v3_0.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_usoptions_cti_itch_v3_0.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_usoptions_cti_itch_v3_0
  omi_nasdaq_usoptions_cti_itch_v3_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq UsOptions Cti Itch 3.0 (Tcp)
local function omi_nasdaq_usoptions_cti_itch_v3_0_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_usoptions_cti_itch_v3_0.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_usoptions_cti_itch_v3_0.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_usoptions_cti_itch_v3_0
  omi_nasdaq_usoptions_cti_itch_v3_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq UsOptions Cti Itch 3.0 (Tcp): apply the heuristic of the sender's connection role
local function omi_nasdaq_usoptions_cti_itch_v3_0_tcp_heuristic(buffer, packet, parent)
  local role = nasdaq_usoptions_cti_itch_v3_0.role(packet)
  local initiator = omi_nasdaq_usoptions_cti_itch_v3_0_tcp_initiator_heuristic
  local acceptor = omi_nasdaq_usoptions_cti_itch_v3_0_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nasdaq_usoptions_cti_itch_v3_0.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nasdaq_usoptions_cti_itch_v3_0.swap(packet)

  return false
end

-- Register Heuristics for Nasdaq UsOptions Cti Itch 3.0
omi_nasdaq_usoptions_cti_itch_v3_0:register_heuristic("tcp", omi_nasdaq_usoptions_cti_itch_v3_0_tcp_heuristic)

-- Register Nasdaq UsOptions Cti Itch 3.0 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nasdaq_usoptions_cti_itch_v3_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 3.0
--   Date: Monday, August 3, 2026
--   Specification: Options_ETH_CTI.pdf
--   Specification: Options_CTI.pdf
--   Specification: soupbintcp.pdf
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
