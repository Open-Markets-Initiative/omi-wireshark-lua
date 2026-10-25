-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lme LmeSelect Level2Retransmission LmeSource 4.18 Protocol
local omi_lme_lmeselect_level2retransmission_lmesource_v4_18 = Proto("Omi.Lme.LmeSelect.Level2Retransmission.LmeSource.v4.18", "Lme LmeSelect Level2Retransmission LmeSource 4.18")

-- Protocol table
local lme_lmeselect_level2retransmission_lmesource_v4_18 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lme LmeSelect Level2Retransmission LmeSource 4.18 Fields
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.aggregate_volume = ProtoField.new("Aggregate Volume", "lme.lmeselect.level2retransmission.lmesource.v4.18.aggregatevolume", ftypes.UINT64, nil, nil, nil, "Total quantity of orders in this price level and side.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "lme.lmeselect.level2retransmission.lmesource.v4.18.beginseqnum", ftypes.UINT32, nil, nil, nil, "Beginning of sequence.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.buy_sell = ProtoField.new("Buy Sell", "lme.lmeselect.level2retransmission.lmesource.v4.18.buysell", ftypes.STRING, nil, nil, nil, "Side of order. Null for a two sided quote.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.channel_id = ProtoField.new("Channel Id", "lme.lmeselect.level2retransmission.lmesource.v4.18.channelid", ftypes.UINT16, nil, nil, nil, "Multicast Channel ID to which the retransmission relates.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.contract_code = ProtoField.new("Contract Code", "lme.lmeselect.level2retransmission.lmesource.v4.18.contractcode", ftypes.STRING, nil, nil, nil, "A string that combines the contract symbol, contract type and currency.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.cross_id = ProtoField.new("Cross Id", "lme.lmeselect.level2retransmission.lmesource.v4.18.crossid", ftypes.UINT64, nil, nil, nil, "The identifier of the Cross that is unique for the day. The specification types this field UInt64; the documented data types define Uint64 and the stated length of eight bytes agrees.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.end_seq_num = ProtoField.new("End Seq Num", "lme.lmeselect.level2retransmission.lmesource.v4.18.endseqnum", ftypes.UINT32, nil, nil, nil, "Message sequence number of the last message in the range to be resent.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.end_time = ProtoField.new("End Time", "lme.lmeselect.level2retransmission.lmesource.v4.18.endtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Trading State End Time. Zero, meaning not applicable, for Technical Halt.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.end_time_utc = ProtoField.new("End Time", "lme.lmeselect.level2retransmission.lmesource.v4.18.endtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Trading State End Time. Zero, meaning not applicable, for Technical Halt.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.entries = ProtoField.new("Entries", "lme.lmeselect.level2retransmission.lmesource.v4.18.entries", ftypes.STRING, nil, nil, nil, "One aggregate order book entry, giving the aggregated state of one price level on one side")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.expire_time = ProtoField.new("Expire Time", "lme.lmeselect.level2retransmission.lmesource.v4.18.expiretime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The time this cross request will expire.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.expire_time_utc = ProtoField.new("Expire Time", "lme.lmeselect.level2retransmission.lmesource.v4.18.expiretime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The time this cross request will expire.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.filler = ProtoField.new("Filler", "lme.lmeselect.level2retransmission.lmesource.v4.18.filler", ftypes.STRING, nil, nil, nil, "Filler aligning the sequence number to a four byte boundary")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.filler_string_1 = ProtoField.new("Filler String 1", "lme.lmeselect.level2retransmission.lmesource.v4.18.fillerstring1", ftypes.STRING, nil, nil, nil, "Filler.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.filler_string_2 = ProtoField.new("Filler String 2", "lme.lmeselect.level2retransmission.lmesource.v4.18.fillerstring2", ftypes.STRING, nil, nil, nil, "Filler.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.filler_string_3 = ProtoField.new("Filler String 3", "lme.lmeselect.level2retransmission.lmesource.v4.18.fillerstring3", ftypes.STRING, nil, nil, nil, "Filler.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.indicative_opening_mid_price = ProtoField.new("Indicative Opening Mid Price", "lme.lmeselect.level2retransmission.lmesource.v4.18.indicativeopeningmidprice", ftypes.DOUBLE, nil, nil, nil, "Indicative Opening Mid Price, in implicit six decimal place format. Defaults to null.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.indicative_opening_price = ProtoField.new("Indicative Opening Price", "lme.lmeselect.level2retransmission.lmesource.v4.18.indicativeopeningprice", ftypes.DOUBLE, nil, nil, nil, "Indicative Opening Price, in implicit six decimal place format. Defaults to null.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.indicative_opening_volume = ProtoField.new("Indicative Opening Volume", "lme.lmeselect.level2retransmission.lmesource.v4.18.indicativeopeningvolume", ftypes.UINT32, nil, nil, nil, "Indicative Opening Volume. Defaults to zero.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.leg_match_id = ProtoField.new("Leg Match Id", "lme.lmeselect.level2retransmission.lmesource.v4.18.legmatchid", ftypes.UINT64, nil, nil, nil, "Leg Match ID.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.leg_price = ProtoField.new("Leg Price", "lme.lmeselect.level2retransmission.lmesource.v4.18.legprice", ftypes.DOUBLE, nil, nil, nil, "Price allocated to this leg of the strategy, in implicit six decimal place format.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.leg_trade_at_reference_price = ProtoField.new("Leg Trade At Reference Price", "lme.lmeselect.level2retransmission.lmesource.v4.18.legtradeatreferenceprice", ftypes.STRING, nil, nil, nil, "Indicates whether the leg price is differential or substituted.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.leg_volume = ProtoField.new("Leg Volume", "lme.lmeselect.level2retransmission.lmesource.v4.18.legvolume", ftypes.UINT32, nil, nil, nil, "Quantity allocated to this leg of the strategy.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.match_id = ProtoField.new("Match Id", "lme.lmeselect.level2retransmission.lmesource.v4.18.matchid", ftypes.UINT64, nil, nil, nil, "Assigned trade match identifier for the matched trade.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.matched_time = ProtoField.new("Matched Time", "lme.lmeselect.level2retransmission.lmesource.v4.18.matchedtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the trade was matched in LMEsmart. Null until such time.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.matched_time_utc = ProtoField.new("Matched Time", "lme.lmeselect.level2retransmission.lmesource.v4.18.matchedtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the trade was matched in LMEsmart. Null until such time.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.msg_count = ProtoField.new("Msg Count", "lme.lmeselect.level2retransmission.lmesource.v4.18.msgcount", ftypes.UINT8, nil, nil, nil, "Number of messages included in the packet")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.msg_size = ProtoField.new("Msg Size", "lme.lmeselect.level2retransmission.lmesource.v4.18.msgsize", ftypes.UINT16, nil, nil, nil, "Message length, including this field")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.msg_type = ProtoField.new("Msg Type", "lme.lmeselect.level2retransmission.lmesource.v4.18.msgtype", ftypes.UINT16, nil, nil, nil, "Type of message, selecting the payload that follows the message header")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.new_seq_no = ProtoField.new("New Seq No", "lme.lmeselect.level2retransmission.lmesource.v4.18.newseqno", ftypes.UINT32, nil, nil, nil, "New sequence number. Always set to 1.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.no_entries = ProtoField.new("No Entries", "lme.lmeselect.level2retransmission.lmesource.v4.18.noentries", ftypes.UINT8, nil, nil, nil, "Number of book entries within the message.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.number_of_explicit_orders = ProtoField.new("Number Of Explicit Orders", "lme.lmeselect.level2retransmission.lmesource.v4.18.numberofexplicitorders", ftypes.UINT32, nil, nil, nil, "Number of explicit orders in this price level and side.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.number_of_implied_orders = ProtoField.new("Number Of Implied Orders", "lme.lmeselect.level2retransmission.lmesource.v4.18.numberofimpliedorders", ftypes.UINT32, nil, nil, nil, "Number of implied orders in this price level and side.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.pkt_size = ProtoField.new("Pkt Size", "lme.lmeselect.level2retransmission.lmesource.v4.18.pktsize", ftypes.UINT16, nil, nil, nil, "Size of the packet, including this field")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.price = ProtoField.new("Price", "lme.lmeselect.level2retransmission.lmesource.v4.18.price", ftypes.DOUBLE, nil, nil, nil, "The price of the trade. For TaS and TaR either the differential or the substituted price. Null for a strategy from a non-electronic venue. Implicit six decimal place format.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.price_level = ProtoField.new("Price Level", "lme.lmeselect.level2retransmission.lmesource.v4.18.pricelevel", ftypes.UINT8, nil, nil, nil, "Indicates the price level, within the top fifteen, of the information carried in the message.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.quote_request_type = ProtoField.new("Quote Request Type", "lme.lmeselect.level2retransmission.lmesource.v4.18.quoterequesttype", ftypes.UINT8, nil, nil, nil, "Type of Quote Request.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.record_count = ProtoField.new("Record Count", "lme.lmeselect.level2retransmission.lmesource.v4.18.recordcount", ftypes.UINT16, nil, nil, nil, "The number of leg records carried by this message.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.remaining_records = ProtoField.new("Remaining Records", "lme.lmeselect.level2retransmission.lmesource.v4.18.remainingrecords", ftypes.UINT16, nil, nil, nil, "Number of leg records still to be published for this trade.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.retrans_status = ProtoField.new("Retrans Status", "lme.lmeselect.level2retransmission.lmesource.v4.18.retransstatus", ftypes.UINT8, nil, nil, nil, "Status of the Retransmission response.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.ring_session = ProtoField.new("Ring Session", "lme.lmeselect.level2retransmission.lmesource.v4.18.ringsession", ftypes.STRING, nil, nil, nil, "This identifies the ring trading session. Space if not applicable.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.send_time = ProtoField.new("Send Time", "lme.lmeselect.level2retransmission.lmesource.v4.18.sendtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "UTC timestamp for the time this packet was sent, in nanoseconds since epoch, provided to the nearest microsecond")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.send_time_utc = ProtoField.new("Send Time", "lme.lmeselect.level2retransmission.lmesource.v4.18.sendtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "UTC timestamp for the time this packet was sent, in nanoseconds since epoch, provided to the nearest microsecond")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.seq_num = ProtoField.new("Seq Num", "lme.lmeselect.level2retransmission.lmesource.v4.18.seqnum", ftypes.UINT32, nil, nil, nil, "Sequence number of the first message in the packet")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.session_status = ProtoField.new("Session Status", "lme.lmeselect.level2retransmission.lmesource.v4.18.sessionstatus", ftypes.UINT8, nil, nil, nil, "Status of the session.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.start_time = ProtoField.new("Start Time", "lme.lmeselect.level2retransmission.lmesource.v4.18.starttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Trading State Start Time. Zero, meaning not applicable, for Technical Halt.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.start_time_utc = ProtoField.new("Start Time", "lme.lmeselect.level2retransmission.lmesource.v4.18.starttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Trading State Start Time. Zero, meaning not applicable, for Technical Halt.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.strategy_leg_count = ProtoField.new("Strategy Leg Count", "lme.lmeselect.level2retransmission.lmesource.v4.18.strategylegcount", ftypes.UINT32, nil, nil, nil, "Number of legs of the strategy.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.sub_type_of_trade = ProtoField.new("Sub Type Of Trade", "lme.lmeselect.level2retransmission.lmesource.v4.18.subtypeoftrade", ftypes.UINT8, nil, nil, nil, "Sub type of trade.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.time_of_event = ProtoField.new("Time Of Event", "lme.lmeselect.level2retransmission.lmesource.v4.18.timeofevent", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time of event.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.time_of_event_utc = ProtoField.new("Time Of Event", "lme.lmeselect.level2retransmission.lmesource.v4.18.timeofevent.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time of event.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.timetable_control_type = ProtoField.new("Timetable Control Type", "lme.lmeselect.level2retransmission.lmesource.v4.18.timetablecontroltype", ftypes.STRING, nil, nil, nil, "Timetable Control Type.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.total_qty_of_explicit_orders = ProtoField.new("Total Qty Of Explicit Orders", "lme.lmeselect.level2retransmission.lmesource.v4.18.totalqtyofexplicitorders", ftypes.UINT64, nil, nil, nil, "Total quantity of explicit orders in this price level and side.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.total_qty_of_implied_orders = ProtoField.new("Total Qty Of Implied Orders", "lme.lmeselect.level2retransmission.lmesource.v4.18.totalqtyofimpliedorders", ftypes.UINT64, nil, nil, nil, "Total quantity of implied orders in this price level and side.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.tradable_instrument_id = ProtoField.new("Tradable Instrument Id", "lme.lmeselect.level2retransmission.lmesource.v4.18.tradableinstrumentid", ftypes.UINT64, nil, nil, nil, "Tradable Instrument ID.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.trade_at_reference_price_type = ProtoField.new("Trade At Reference Price Type", "lme.lmeselect.level2retransmission.lmesource.v4.18.tradeatreferencepricetype", ftypes.STRING, nil, nil, nil, "For a TaR, indicates whether the price is differential or substituted. Defaults to space, meaning not applicable.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.trade_cancel_flag = ProtoField.new("Trade Cancel Flag", "lme.lmeselect.level2retransmission.lmesource.v4.18.tradecancelflag", ftypes.UINT8, nil, nil, nil, "Trade Cancel Flag.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.trade_legs = ProtoField.new("Trade Legs", "lme.lmeselect.level2retransmission.lmesource.v4.18.tradelegs", ftypes.STRING, nil, nil, nil, "One leg record of a strategy trade, counted by RecordCount rather than by StrategyLegCount, which states the total legs of the strategy")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.trading_state = ProtoField.new("Trading State", "lme.lmeselect.level2retransmission.lmesource.v4.18.tradingstate", ftypes.UINT8, nil, nil, nil, "Trading State.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.trading_state_condition = ProtoField.new("Trading State Condition", "lme.lmeselect.level2retransmission.lmesource.v4.18.tradingstatecondition", ftypes.STRING, nil, nil, nil, "Current trading state condition.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.trading_venue = ProtoField.new("Trading Venue", "lme.lmeselect.level2retransmission.lmesource.v4.18.tradingvenue", ftypes.STRING, nil, nil, nil, "Trading venue.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.update_action = ProtoField.new("Update Action", "lme.lmeselect.level2retransmission.lmesource.v4.18.updateaction", ftypes.UINT8, nil, nil, nil, "Type of market data update action.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.username = ProtoField.new("Username", "lme.lmeselect.level2retransmission.lmesource.v4.18.username", ftypes.STRING, nil, nil, nil, "Username to log on, padded with binary null characters.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.volume = ProtoField.new("Volume", "lme.lmeselect.level2retransmission.lmesource.v4.18.volume", ftypes.UINT32, nil, nil, nil, "Amended delta quantity.")

-- Lme LmeSelect Level2Retransmission LmeSource 4.18 Framing
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.message = ProtoField.new("Message", "lme.lmeselect.level2retransmission.lmesource.v4.18.message", ftypes.STRING, nil, nil, nil, "LMEsource application messages carried by this packet; a message is never fragmented across packets")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.message_header = ProtoField.new("Message Header", "lme.lmeselect.level2retransmission.lmesource.v4.18.messageheader", ftypes.STRING, nil, nil, nil, "LMEsource message header, giving the size of the message and its type")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.packet = ProtoField.new("Packet", "lme.lmeselect.level2retransmission.lmesource.v4.18.packet", ftypes.STRING, nil, nil, nil, "LMEsource retransmission packet, a packet header followed by Msg Count complete messages")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.packet_header = ProtoField.new("Packet Header", "lme.lmeselect.level2retransmission.lmesource.v4.18.packetheader", ftypes.STRING, nil, nil, nil, "LMEsource packet header, giving the packet size, the number of messages it carries, the sequence number of the first of them and the time the packet was sent")

-- Lme LmeSelect Level2Retransmission 4.18 Application Messages
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.aggregate_order_book_message = ProtoField.new("Aggregate Order Book Message", "lme.lmeselect.level2retransmission.lmesource.v4.18.aggregateorderbookmessage", ftypes.STRING, nil, nil, nil, "Sent whenever there is an order book change within the top fifteen price levels. The TimeOfEvent is the latest incoming event timestamp that resulted in any price level being updated or removed; for orders submitted during Pre-Open and reloaded GTC and GTD orders it reflects the uncrossing event time at market open.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.cross_request_message = ProtoField.new("Cross Request Message", "lme.lmeselect.level2retransmission.lmesource.v4.18.crossrequestmessage", ftypes.STRING, nil, nil, nil, "Generated when a cross request is created on LMEselect.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.indicative_opening_price_message = ProtoField.new("Indicative Opening Price Message", "lme.lmeselect.level2retransmission.lmesource.v4.18.indicativeopeningpricemessage", ftypes.STRING, nil, nil, nil, "Carries the price at which a tradable instrument would open, computed by the uncrossing algorithm during Pre-Open. If there are no crossed prices no IOP is calculated or disseminated; where the book is not crossed but has both a bid and an offer, a mid price is calculated and published instead. At the transition from Pre-Open to Open an IOP message is published for every tradable instrument with both prices null and the volume zero, to indicate the prices are no longer valid.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.logon_message = ProtoField.new("Logon Message", "lme.lmeselect.level2retransmission.lmesource.v4.18.logonmessage", ftypes.STRING, nil, nil, nil, "Enables client authentication. Not required for multicast channels and only used for retransmission requests. The client sends a Logon containing a username, to which LMEsource responds with a Logon Response.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.logon_response_message = ProtoField.new("Logon Response Message", "lme.lmeselect.level2retransmission.lmesource.v4.18.logonresponsemessage", ftypes.STRING, nil, nil, nil, "Response to a Logon, carrying the status of the session.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.market_data_trade_message = ProtoField.new("Market Data Trade Message", "lme.lmeselect.level2retransmission.lmesource.v4.18.marketdatatrademessage", ftypes.STRING, nil, nil, nil, "Generated each time a trade has been performed in the Electronic, Inter Office or Ring venues. When an incoming order matches against multiple resting orders there is one Market Data Trade published for each matched trade.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.market_state_contract_message = ProtoField.new("Market State Contract Message", "lme.lmeselect.level2retransmission.lmesource.v4.18.marketstatecontractmessage", ftypes.STRING, nil, nil, nil, "Indicates the trading state of instruments at the contract level, for example Copper Futures or Aluminium Options. The ContractCode field is common across the Market State - Contract, Outright Definition and Strategy Definition messages and links the contract state to individual tradable instruments.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.market_state_instrument_message = ProtoField.new("Market State Instrument Message", "lme.lmeselect.level2retransmission.lmesource.v4.18.marketstateinstrumentmessage", ftypes.STRING, nil, nil, nil, "Indicates the trading state of an individual tradable instrument. Sent when the instrument state differs from that at contract level, for example when TOM goes into Post Trade before the contract.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.order_book_clear_message = ProtoField.new("Order Book Clear Message", "lme.lmeselect.level2retransmission.lmesource.v4.18.orderbookclearmessage", ftypes.STRING, nil, nil, nil, "Generated when the order book is required to be cleared, for example after the transition between certain market states, or when an instrument's Trading State Condition is Trade Halt. Following an Order Book Clear, if an instrument is subsequently open for trading any resting orders are sent as Top Of Book, Aggregate Order Book or Order Add messages to allow clients to rebuild the order book. It is not published when an instrument enters or leaves Trade Pause.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.quote_request_message = ProtoField.new("Quote Request Message", "lme.lmeselect.level2retransmission.lmesource.v4.18.quoterequestmessage", ftypes.STRING, nil, nil, nil, "Generated when a request for quote is accepted by the Matching Engine.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "lme.lmeselect.level2retransmission.lmesource.v4.18.retransmissionrequestmessage", ftypes.STRING, nil, nil, nil, "Requests the retransmission of a range of messages on a multicast channel.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.retransmission_response_message = ProtoField.new("Retransmission Response Message", "lme.lmeselect.level2retransmission.lmesource.v4.18.retransmissionresponsemessage", ftypes.STRING, nil, nil, nil, "Response to a Retransmission Request, carrying the status of the request and the sequence range being resent.")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.sequence_reset_message = ProtoField.new("Sequence Reset Message", "lme.lmeselect.level2retransmission.lmesource.v4.18.sequenceresetmessage", ftypes.STRING, nil, nil, nil, "Sent on each multicast channel at start of day, and intraday in case of a disaster recovery. The client must ignore the sequence number of the Sequence Reset message itself and set the next expected sequence number to NewSeqNo, clear all cached data for all instruments and subscribe to the refresh channels to receive the current state of the market.")

-- Lme LmeSelect Level2Retransmission LmeSource 4.18 Generated Fields
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.entries_index = ProtoField.new("Entries Index", "lme.lmeselect.level2retransmission.lmesource.v4.18.entriesindex", ftypes.UINT16)
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.message_index = ProtoField.new("Message Index", "lme.lmeselect.level2retransmission.lmesource.v4.18.messageindex", ftypes.UINT16)
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.trade_legs_index = ProtoField.new("Trade Legs Index", "lme.lmeselect.level2retransmission.lmesource.v4.18.tradelegsindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Lme LmeSelect Level2Retransmission LmeSource 4.18 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
lme_lmeselect_level2retransmission_lmesource_v4_18.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Lme LmeSelect Level2Retransmission LmeSource 4.18 Element Dissection Options
show.application_messages = true
show.repeating_groups = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Lme LmeSelect Level2Retransmission LmeSource 4.18 Show Options
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_lme_lmeselect_level2retransmission_lmesource_v4_18.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_lme_lmeselect_level2retransmission_lmesource_v4_18.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_lme_lmeselect_level2retransmission_lmesource_v4_18.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_lme_lmeselect_level2retransmission_lmesource_v4_18.prefs.show_application_messages then
    show.application_messages = omi_lme_lmeselect_level2retransmission_lmesource_v4_18.prefs.show_application_messages
  end
  if show.headers ~= omi_lme_lmeselect_level2retransmission_lmesource_v4_18.prefs.show_headers then
    show.headers = omi_lme_lmeselect_level2retransmission_lmesource_v4_18.prefs.show_headers
  end
  if show.repeating_groups ~= omi_lme_lmeselect_level2retransmission_lmesource_v4_18.prefs.show_repeating_groups then
    show.repeating_groups = omi_lme_lmeselect_level2retransmission_lmesource_v4_18.prefs.show_repeating_groups
  end
  if show.structs ~= omi_lme_lmeselect_level2retransmission_lmesource_v4_18.prefs.show_structs then
    show.structs = omi_lme_lmeselect_level2retransmission_lmesource_v4_18.prefs.show_structs
  end
  if show.indexes ~= omi_lme_lmeselect_level2retransmission_lmesource_v4_18.prefs.show_indexes then
    show.indexes = omi_lme_lmeselect_level2retransmission_lmesource_v4_18.prefs.show_indexes
  end
  if lme_lmeselect_level2retransmission_lmesource_v4_18.absolute_time_base ~= omi_lme_lmeselect_level2retransmission_lmesource_v4_18.prefs.absolute_time_base then
    lme_lmeselect_level2retransmission_lmesource_v4_18.absolute_time_base = omi_lme_lmeselect_level2retransmission_lmesource_v4_18.prefs.absolute_time_base
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
-- Lme LmeSelect Level2Retransmission LmeSource 4.18 Fields
-----------------------------------------------------------------------

-- Aggregate Volume
lme_lmeselect_level2retransmission_lmesource_v4_18.aggregate_volume = {}

-- Size: Aggregate Volume
lme_lmeselect_level2retransmission_lmesource_v4_18.aggregate_volume.size = 8

-- Display: Aggregate Volume
lme_lmeselect_level2retransmission_lmesource_v4_18.aggregate_volume.display = function(value)
  return "Aggregate Volume: "..value
end

-- Dissect: Aggregate Volume
lme_lmeselect_level2retransmission_lmesource_v4_18.aggregate_volume.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.aggregate_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.aggregate_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.aggregate_volume, range, value, display)

  return offset + length, value
end

-- Begin Seq Num
lme_lmeselect_level2retransmission_lmesource_v4_18.begin_seq_num = {}

-- Size: Begin Seq Num
lme_lmeselect_level2retransmission_lmesource_v4_18.begin_seq_num.size = 4

-- Display: Begin Seq Num
lme_lmeselect_level2retransmission_lmesource_v4_18.begin_seq_num.display = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
lme_lmeselect_level2retransmission_lmesource_v4_18.begin_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.begin_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.begin_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Buy Sell
lme_lmeselect_level2retransmission_lmesource_v4_18.buy_sell = {}

-- Size: Buy Sell
lme_lmeselect_level2retransmission_lmesource_v4_18.buy_sell.size = 1

-- Display: Buy Sell
lme_lmeselect_level2retransmission_lmesource_v4_18.buy_sell.display = function(value)
  if value == "B" then
    return "Buy Sell: Buy (B)"
  end
  if value == "S" then
    return "Buy Sell: Sell (S)"
  end
  if value == " " then
    return "Buy Sell: Two Sided Quote (<whitespace>)"
  end

  return "Buy Sell: Unknown("..value..")"
end

-- Dissect: Buy Sell
lme_lmeselect_level2retransmission_lmesource_v4_18.buy_sell.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.buy_sell.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.buy_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.buy_sell, range, value, display)

  return offset + length, value
end

-- Channel Id
lme_lmeselect_level2retransmission_lmesource_v4_18.channel_id = {}

-- Size: Channel Id
lme_lmeselect_level2retransmission_lmesource_v4_18.channel_id.size = 2

-- Display: Channel Id
lme_lmeselect_level2retransmission_lmesource_v4_18.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
lme_lmeselect_level2retransmission_lmesource_v4_18.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Contract Code
lme_lmeselect_level2retransmission_lmesource_v4_18.contract_code = {}

-- Size: Contract Code
lme_lmeselect_level2retransmission_lmesource_v4_18.contract_code.size = 12

-- Display: Contract Code
lme_lmeselect_level2retransmission_lmesource_v4_18.contract_code.display = function(value)
  return "Contract Code: "..value
end

-- Dissect: Contract Code
lme_lmeselect_level2retransmission_lmesource_v4_18.contract_code.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.contract_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.contract_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.contract_code, range, value, display)

  return offset + length, value
end

-- Cross Id
lme_lmeselect_level2retransmission_lmesource_v4_18.cross_id = {}

-- Size: Cross Id
lme_lmeselect_level2retransmission_lmesource_v4_18.cross_id.size = 8

-- Display: Cross Id
lme_lmeselect_level2retransmission_lmesource_v4_18.cross_id.display = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
lme_lmeselect_level2retransmission_lmesource_v4_18.cross_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.cross_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.cross_id, range, value, display)

  return offset + length, value
end

-- End Seq Num
lme_lmeselect_level2retransmission_lmesource_v4_18.end_seq_num = {}

-- Size: End Seq Num
lme_lmeselect_level2retransmission_lmesource_v4_18.end_seq_num.size = 4

-- Display: End Seq Num
lme_lmeselect_level2retransmission_lmesource_v4_18.end_seq_num.display = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
lme_lmeselect_level2retransmission_lmesource_v4_18.end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.end_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- End Time
lme_lmeselect_level2retransmission_lmesource_v4_18.end_time = {}

-- Size: End Time
lme_lmeselect_level2retransmission_lmesource_v4_18.end_time.size = 8

-- Dissect: End Time
lme_lmeselect_level2retransmission_lmesource_v4_18.end_time.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.end_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.end_time
  if lme_lmeselect_level2retransmission_lmesource_v4_18.absolute_time_base == 1 then field = omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.end_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Expire Time
lme_lmeselect_level2retransmission_lmesource_v4_18.expire_time = {}

-- Size: Expire Time
lme_lmeselect_level2retransmission_lmesource_v4_18.expire_time.size = 8

-- Dissect: Expire Time
lme_lmeselect_level2retransmission_lmesource_v4_18.expire_time.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.expire_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.expire_time
  if lme_lmeselect_level2retransmission_lmesource_v4_18.absolute_time_base == 1 then field = omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.expire_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Filler
lme_lmeselect_level2retransmission_lmesource_v4_18.filler = {}

-- Size: Filler
lme_lmeselect_level2retransmission_lmesource_v4_18.filler.size = 1

-- Display: Filler
lme_lmeselect_level2retransmission_lmesource_v4_18.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
lme_lmeselect_level2retransmission_lmesource_v4_18.filler.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.filler.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.filler, range, value, display)

  return offset + length, value
end

-- Filler String 1
lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_1 = {}

-- Size: Filler String 1
lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_1.size = 1

-- Display: Filler String 1
lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_1.display = function(value)
  return "Filler String 1: "..value
end

-- Dissect: Filler String 1
lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_1.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.filler_string_1, range, value, display)

  return offset + length, value
end

-- Filler String 2
lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_2 = {}

-- Size: Filler String 2
lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_2.size = 2

-- Display: Filler String 2
lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_2.display = function(value)
  return "Filler String 2: "..value
end

-- Dissect: Filler String 2
lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_2.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.filler_string_2, range, value, display)

  return offset + length, value
end

-- Filler String 3
lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_3 = {}

-- Size: Filler String 3
lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_3.size = 3

-- Display: Filler String 3
lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_3.display = function(value)
  return "Filler String 3: "..value
end

-- Dissect: Filler String 3
lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_3.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_3.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.filler_string_3, range, value, display)

  return offset + length, value
end

-- Indicative Opening Mid Price
lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_mid_price = {}

-- Size: Indicative Opening Mid Price
lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_mid_price.size = 8

-- Display: Indicative Opening Mid Price
lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_mid_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Indicative Opening Mid Price: No Value"
  end

  return "Indicative Opening Mid Price: "..value
end

-- Translate: Indicative Opening Mid Price
lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_mid_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Indicative Opening Mid Price
lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_mid_price.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_mid_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_mid_price.translate(raw)
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_mid_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.indicative_opening_mid_price, range, value, display)

  return offset + length, value
end

-- Indicative Opening Price
lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_price = {}

-- Size: Indicative Opening Price
lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_price.size = 8

-- Display: Indicative Opening Price
lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Indicative Opening Price: No Value"
  end

  return "Indicative Opening Price: "..value
end

-- Translate: Indicative Opening Price
lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Indicative Opening Price
lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_price.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_price.translate(raw)
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.indicative_opening_price, range, value, display)

  return offset + length, value
end

-- Indicative Opening Volume
lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_volume = {}

-- Size: Indicative Opening Volume
lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_volume.size = 4

-- Display: Indicative Opening Volume
lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_volume.display = function(value)
  return "Indicative Opening Volume: "..value
end

-- Dissect: Indicative Opening Volume
lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_volume.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.indicative_opening_volume, range, value, display)

  return offset + length, value
end

-- Leg Match Id
lme_lmeselect_level2retransmission_lmesource_v4_18.leg_match_id = {}

-- Size: Leg Match Id
lme_lmeselect_level2retransmission_lmesource_v4_18.leg_match_id.size = 8

-- Display: Leg Match Id
lme_lmeselect_level2retransmission_lmesource_v4_18.leg_match_id.display = function(value)
  return "Leg Match Id: "..value
end

-- Dissect: Leg Match Id
lme_lmeselect_level2retransmission_lmesource_v4_18.leg_match_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.leg_match_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.leg_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.leg_match_id, range, value, display)

  return offset + length, value
end

-- Leg Price
lme_lmeselect_level2retransmission_lmesource_v4_18.leg_price = {}

-- Size: Leg Price
lme_lmeselect_level2retransmission_lmesource_v4_18.leg_price.size = 8

-- Display: Leg Price
lme_lmeselect_level2retransmission_lmesource_v4_18.leg_price.display = function(value)
  return "Leg Price: "..value
end

-- Translate: Leg Price
lme_lmeselect_level2retransmission_lmesource_v4_18.leg_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Leg Price
lme_lmeselect_level2retransmission_lmesource_v4_18.leg_price.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.leg_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_level2retransmission_lmesource_v4_18.leg_price.translate(raw)
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.leg_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.leg_price, range, value, display)

  return offset + length, value
end

-- Leg Trade At Reference Price
lme_lmeselect_level2retransmission_lmesource_v4_18.leg_trade_at_reference_price = {}

-- Size: Leg Trade At Reference Price
lme_lmeselect_level2retransmission_lmesource_v4_18.leg_trade_at_reference_price.size = 1

-- Display: Leg Trade At Reference Price
lme_lmeselect_level2retransmission_lmesource_v4_18.leg_trade_at_reference_price.display = function(value)
  if value == "D" then
    return "Leg Trade At Reference Price: Differential (D)"
  end
  if value == "S" then
    return "Leg Trade At Reference Price: Substituted (S)"
  end
  if value == " " then
    return "Leg Trade At Reference Price: Not Applicable (<whitespace>)"
  end

  return "Leg Trade At Reference Price: Unknown("..value..")"
end

-- Dissect: Leg Trade At Reference Price
lme_lmeselect_level2retransmission_lmesource_v4_18.leg_trade_at_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.leg_trade_at_reference_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.leg_trade_at_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.leg_trade_at_reference_price, range, value, display)

  return offset + length, value
end

-- Leg Volume
lme_lmeselect_level2retransmission_lmesource_v4_18.leg_volume = {}

-- Size: Leg Volume
lme_lmeselect_level2retransmission_lmesource_v4_18.leg_volume.size = 4

-- Display: Leg Volume
lme_lmeselect_level2retransmission_lmesource_v4_18.leg_volume.display = function(value)
  return "Leg Volume: "..value
end

-- Dissect: Leg Volume
lme_lmeselect_level2retransmission_lmesource_v4_18.leg_volume.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.leg_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.leg_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.leg_volume, range, value, display)

  return offset + length, value
end

-- Match Id
lme_lmeselect_level2retransmission_lmesource_v4_18.match_id = {}

-- Size: Match Id
lme_lmeselect_level2retransmission_lmesource_v4_18.match_id.size = 8

-- Display: Match Id
lme_lmeselect_level2retransmission_lmesource_v4_18.match_id.display = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
lme_lmeselect_level2retransmission_lmesource_v4_18.match_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.match_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.match_id, range, value, display)

  return offset + length, value
end

-- Matched Time
lme_lmeselect_level2retransmission_lmesource_v4_18.matched_time = {}

-- Size: Matched Time
lme_lmeselect_level2retransmission_lmesource_v4_18.matched_time.size = 8

-- Dissect: Matched Time
lme_lmeselect_level2retransmission_lmesource_v4_18.matched_time.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.matched_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.matched_time
  if lme_lmeselect_level2retransmission_lmesource_v4_18.absolute_time_base == 1 then field = omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.matched_time_utc end

  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Matched Time: No Value")
    return offset + length, value
  end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Msg Count
lme_lmeselect_level2retransmission_lmesource_v4_18.msg_count = {}

-- Size: Msg Count
lme_lmeselect_level2retransmission_lmesource_v4_18.msg_count.size = 1

-- Display: Msg Count
lme_lmeselect_level2retransmission_lmesource_v4_18.msg_count.display = function(value)
  return "Msg Count: "..value
end

-- Dissect: Msg Count
lme_lmeselect_level2retransmission_lmesource_v4_18.msg_count.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.msg_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.msg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.msg_count, range, value, display)

  return offset + length, value
end

-- Msg Size
lme_lmeselect_level2retransmission_lmesource_v4_18.msg_size = {}

-- Size: Msg Size
lme_lmeselect_level2retransmission_lmesource_v4_18.msg_size.size = 2

-- Display: Msg Size
lme_lmeselect_level2retransmission_lmesource_v4_18.msg_size.display = function(value)
  return "Msg Size: "..value
end

-- Dissect: Msg Size
lme_lmeselect_level2retransmission_lmesource_v4_18.msg_size.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.msg_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.msg_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.msg_size, range, value, display)

  return offset + length, value
end

-- Msg Type
lme_lmeselect_level2retransmission_lmesource_v4_18.msg_type = {}

-- Size: Msg Type
lme_lmeselect_level2retransmission_lmesource_v4_18.msg_type.size = 2

-- Display: Msg Type
lme_lmeselect_level2retransmission_lmesource_v4_18.msg_type.labels = {
  [100] = "Msg Type: Sequence Reset Message (100)",
  [311] = "Msg Type: Market State Contract Message (311)",
  [312] = "Msg Type: Market State Instrument Message (312)",
  [320] = "Msg Type: Indicative Opening Price Message (320)",
  [329] = "Msg Type: Quote Request Message (329)",
  [327] = "Msg Type: Order Book Clear Message (327)",
  [330] = "Msg Type: Cross Request Message (330)",
  [322] = "Msg Type: Aggregate Order Book Message (322)",
  [341] = "Msg Type: Market Data Trade Message (341)",
  [101] = "Msg Type: Logon Message (101)",
  [102] = "Msg Type: Logon Response Message (102)",
  [201] = "Msg Type: Retransmission Request Message (201)",
  [202] = "Msg Type: Retransmission Response Message (202)",
}

lme_lmeselect_level2retransmission_lmesource_v4_18.msg_type.display = function(value)
  return lme_lmeselect_level2retransmission_lmesource_v4_18.msg_type.labels[value] or "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
lme_lmeselect_level2retransmission_lmesource_v4_18.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.msg_type, range, value, display)

  return offset + length, value
end

-- New Seq No
lme_lmeselect_level2retransmission_lmesource_v4_18.new_seq_no = {}

-- Size: New Seq No
lme_lmeselect_level2retransmission_lmesource_v4_18.new_seq_no.size = 4

-- Display: New Seq No
lme_lmeselect_level2retransmission_lmesource_v4_18.new_seq_no.display = function(value)
  return "New Seq No: "..value
end

-- Dissect: New Seq No
lme_lmeselect_level2retransmission_lmesource_v4_18.new_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.new_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.new_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.new_seq_no, range, value, display)

  return offset + length, value
end

-- No Entries
lme_lmeselect_level2retransmission_lmesource_v4_18.no_entries = {}

-- Size: No Entries
lme_lmeselect_level2retransmission_lmesource_v4_18.no_entries.size = 1

-- Display: No Entries
lme_lmeselect_level2retransmission_lmesource_v4_18.no_entries.display = function(value)
  return "No Entries: "..value
end

-- Dissect: No Entries
lme_lmeselect_level2retransmission_lmesource_v4_18.no_entries.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.no_entries.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.no_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.no_entries, range, value, display)

  return offset + length, value
end

-- Number Of Explicit Orders
lme_lmeselect_level2retransmission_lmesource_v4_18.number_of_explicit_orders = {}

-- Size: Number Of Explicit Orders
lme_lmeselect_level2retransmission_lmesource_v4_18.number_of_explicit_orders.size = 4

-- Display: Number Of Explicit Orders
lme_lmeselect_level2retransmission_lmesource_v4_18.number_of_explicit_orders.display = function(value)
  return "Number Of Explicit Orders: "..value
end

-- Dissect: Number Of Explicit Orders
lme_lmeselect_level2retransmission_lmesource_v4_18.number_of_explicit_orders.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.number_of_explicit_orders.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.number_of_explicit_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.number_of_explicit_orders, range, value, display)

  return offset + length, value
end

-- Number Of Implied Orders
lme_lmeselect_level2retransmission_lmesource_v4_18.number_of_implied_orders = {}

-- Size: Number Of Implied Orders
lme_lmeselect_level2retransmission_lmesource_v4_18.number_of_implied_orders.size = 4

-- Display: Number Of Implied Orders
lme_lmeselect_level2retransmission_lmesource_v4_18.number_of_implied_orders.display = function(value)
  return "Number Of Implied Orders: "..value
end

-- Dissect: Number Of Implied Orders
lme_lmeselect_level2retransmission_lmesource_v4_18.number_of_implied_orders.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.number_of_implied_orders.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.number_of_implied_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.number_of_implied_orders, range, value, display)

  return offset + length, value
end

-- Pkt Size
lme_lmeselect_level2retransmission_lmesource_v4_18.pkt_size = {}

-- Size: Pkt Size
lme_lmeselect_level2retransmission_lmesource_v4_18.pkt_size.size = 2

-- Display: Pkt Size
lme_lmeselect_level2retransmission_lmesource_v4_18.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
lme_lmeselect_level2retransmission_lmesource_v4_18.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Price
lme_lmeselect_level2retransmission_lmesource_v4_18.price = {}

-- Size: Price
lme_lmeselect_level2retransmission_lmesource_v4_18.price.size = 8

-- Display: Price
lme_lmeselect_level2retransmission_lmesource_v4_18.price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Translate: Price
lme_lmeselect_level2retransmission_lmesource_v4_18.price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Price
lme_lmeselect_level2retransmission_lmesource_v4_18.price.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_level2retransmission_lmesource_v4_18.price.translate(raw)
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.price, range, value, display)

  return offset + length, value
end

-- Price Level
lme_lmeselect_level2retransmission_lmesource_v4_18.price_level = {}

-- Size: Price Level
lme_lmeselect_level2retransmission_lmesource_v4_18.price_level.size = 1

-- Display: Price Level
lme_lmeselect_level2retransmission_lmesource_v4_18.price_level.display = function(value)
  return "Price Level: "..value
end

-- Dissect: Price Level
lme_lmeselect_level2retransmission_lmesource_v4_18.price_level.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.price_level.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.price_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.price_level, range, value, display)

  return offset + length, value
end

-- Quote Request Type
lme_lmeselect_level2retransmission_lmesource_v4_18.quote_request_type = {}

-- Size: Quote Request Type
lme_lmeselect_level2retransmission_lmesource_v4_18.quote_request_type.size = 1

-- Display: Quote Request Type
lme_lmeselect_level2retransmission_lmesource_v4_18.quote_request_type.labels = {
  [1] = "Quote Request Type: Manual A Single Quote Request (1)",
  [2] = "Quote Request Type: Auto A Streaming Quote Request (2)",
}

lme_lmeselect_level2retransmission_lmesource_v4_18.quote_request_type.display = function(value)
  return lme_lmeselect_level2retransmission_lmesource_v4_18.quote_request_type.labels[value] or "Quote Request Type: Unknown("..value..")"
end

-- Dissect: Quote Request Type
lme_lmeselect_level2retransmission_lmesource_v4_18.quote_request_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.quote_request_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.quote_request_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.quote_request_type, range, value, display)

  return offset + length, value
end

-- Record Count
lme_lmeselect_level2retransmission_lmesource_v4_18.record_count = {}

-- Size: Record Count
lme_lmeselect_level2retransmission_lmesource_v4_18.record_count.size = 2

-- Display: Record Count
lme_lmeselect_level2retransmission_lmesource_v4_18.record_count.display = function(value)
  return "Record Count: "..value
end

-- Dissect: Record Count
lme_lmeselect_level2retransmission_lmesource_v4_18.record_count.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.record_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.record_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.record_count, range, value, display)

  return offset + length, value
end

-- Remaining Records
lme_lmeselect_level2retransmission_lmesource_v4_18.remaining_records = {}

-- Size: Remaining Records
lme_lmeselect_level2retransmission_lmesource_v4_18.remaining_records.size = 2

-- Display: Remaining Records
lme_lmeselect_level2retransmission_lmesource_v4_18.remaining_records.display = function(value)
  return "Remaining Records: "..value
end

-- Dissect: Remaining Records
lme_lmeselect_level2retransmission_lmesource_v4_18.remaining_records.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.remaining_records.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.remaining_records.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.remaining_records, range, value, display)

  return offset + length, value
end

-- Retrans Status
lme_lmeselect_level2retransmission_lmesource_v4_18.retrans_status = {}

-- Size: Retrans Status
lme_lmeselect_level2retransmission_lmesource_v4_18.retrans_status.size = 1

-- Display: Retrans Status
lme_lmeselect_level2retransmission_lmesource_v4_18.retrans_status.labels = {
  [0] = "Retrans Status: Request Accepted (0)",
  [1] = "Retrans Status: Unknown Or Unauthorized Channel Id (1)",
  [2] = "Retrans Status: Messages Not Available (2)",
  [100] = "Retrans Status: Exceeds Maximum Sequence Range (100)",
  [101] = "Retrans Status: Exceeds Maximum Requests In A Day (101)",
}

lme_lmeselect_level2retransmission_lmesource_v4_18.retrans_status.display = function(value)
  return lme_lmeselect_level2retransmission_lmesource_v4_18.retrans_status.labels[value] or "Retrans Status: Unknown("..value..")"
end

-- Dissect: Retrans Status
lme_lmeselect_level2retransmission_lmesource_v4_18.retrans_status.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.retrans_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.retrans_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.retrans_status, range, value, display)

  return offset + length, value
end

-- Ring Session
lme_lmeselect_level2retransmission_lmesource_v4_18.ring_session = {}

-- Size: Ring Session
lme_lmeselect_level2retransmission_lmesource_v4_18.ring_session.size = 2

-- Display: Ring Session
lme_lmeselect_level2retransmission_lmesource_v4_18.ring_session.labels = {
  ["R1"] = "Ring Session: First Morning Ring (R1)",
  ["R2"] = "Ring Session: Second Morning Ring (R2)",
  ["R3"] = "Ring Session: First Afternoon Ring (R3)",
  ["K1"] = "Ring Session: Morning Kerb Session (K1)",
  ["K2"] = "Ring Session: Afternoon Kerb Session (K2)",
  ["C1"] = "Ring Session: Basis Ring 1 (C1)",
  ["C2"] = "Ring Session: Basis Ring 2 (C2)",
  ["C3"] = "Ring Session: Basis Ring 3 (C3)",
  ["D1"] = "Ring Session: Basis Kerb 1 (D1)",
  ["D2"] = "Ring Session: Basis Kerb 2 (D2)",
}

lme_lmeselect_level2retransmission_lmesource_v4_18.ring_session.display = function(value)
  return lme_lmeselect_level2retransmission_lmesource_v4_18.ring_session.labels[value] or "Ring Session: Unknown("..value..")"
end

-- Dissect: Ring Session
lme_lmeselect_level2retransmission_lmesource_v4_18.ring_session.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.ring_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.ring_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.ring_session, range, value, display)

  return offset + length, value
end

-- Send Time
lme_lmeselect_level2retransmission_lmesource_v4_18.send_time = {}

-- Size: Send Time
lme_lmeselect_level2retransmission_lmesource_v4_18.send_time.size = 8

-- Dissect: Send Time
lme_lmeselect_level2retransmission_lmesource_v4_18.send_time.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.send_time
  if lme_lmeselect_level2retransmission_lmesource_v4_18.absolute_time_base == 1 then field = omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.send_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Seq Num
lme_lmeselect_level2retransmission_lmesource_v4_18.seq_num = {}

-- Size: Seq Num
lme_lmeselect_level2retransmission_lmesource_v4_18.seq_num.size = 4

-- Display: Seq Num
lme_lmeselect_level2retransmission_lmesource_v4_18.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
lme_lmeselect_level2retransmission_lmesource_v4_18.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Session Status
lme_lmeselect_level2retransmission_lmesource_v4_18.session_status = {}

-- Size: Session Status
lme_lmeselect_level2retransmission_lmesource_v4_18.session_status.size = 1

-- Display: Session Status
lme_lmeselect_level2retransmission_lmesource_v4_18.session_status.labels = {
  [0] = "Session Status: Session Active (0)",
  [5] = "Session Status: Invalid Username Or Ip Address (5)",
  [100] = "Session Status: User Already Connected (100)",
}

lme_lmeselect_level2retransmission_lmesource_v4_18.session_status.display = function(value)
  return lme_lmeselect_level2retransmission_lmesource_v4_18.session_status.labels[value] or "Session Status: Unknown("..value..")"
end

-- Dissect: Session Status
lme_lmeselect_level2retransmission_lmesource_v4_18.session_status.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.session_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.session_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.session_status, range, value, display)

  return offset + length, value
end

-- Start Time
lme_lmeselect_level2retransmission_lmesource_v4_18.start_time = {}

-- Size: Start Time
lme_lmeselect_level2retransmission_lmesource_v4_18.start_time.size = 8

-- Dissect: Start Time
lme_lmeselect_level2retransmission_lmesource_v4_18.start_time.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.start_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.start_time
  if lme_lmeselect_level2retransmission_lmesource_v4_18.absolute_time_base == 1 then field = omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.start_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Strategy Leg Count
lme_lmeselect_level2retransmission_lmesource_v4_18.strategy_leg_count = {}

-- Size: Strategy Leg Count
lme_lmeselect_level2retransmission_lmesource_v4_18.strategy_leg_count.size = 4

-- Display: Strategy Leg Count
lme_lmeselect_level2retransmission_lmesource_v4_18.strategy_leg_count.display = function(value)
  return "Strategy Leg Count: "..value
end

-- Dissect: Strategy Leg Count
lme_lmeselect_level2retransmission_lmesource_v4_18.strategy_leg_count.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.strategy_leg_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.strategy_leg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.strategy_leg_count, range, value, display)

  return offset + length, value
end

-- Sub Type Of Trade
lme_lmeselect_level2retransmission_lmesource_v4_18.sub_type_of_trade = {}

-- Size: Sub Type Of Trade
lme_lmeselect_level2retransmission_lmesource_v4_18.sub_type_of_trade.size = 1

-- Display: Sub Type Of Trade
lme_lmeselect_level2retransmission_lmesource_v4_18.sub_type_of_trade.labels = {
  [1] = "Sub Type Of Trade: The Trade Resulted From An Explicit Order (1)",
  [2] = "Sub Type Of Trade: The Trade Resulted From Uncrossing (2)",
  [7] = "Sub Type Of Trade: The Trade Resulted From An Implied Order (7)",
  [8] = "Sub Type Of Trade: The Trade Resulted From Two Implied Orders Matching (8)",
  [9] = "Sub Type Of Trade: The Trade Resulted From An Off Book Cross Trade (9)",
}

lme_lmeselect_level2retransmission_lmesource_v4_18.sub_type_of_trade.display = function(value)
  return lme_lmeselect_level2retransmission_lmesource_v4_18.sub_type_of_trade.labels[value] or "Sub Type Of Trade: Unknown("..value..")"
end

-- Dissect: Sub Type Of Trade
lme_lmeselect_level2retransmission_lmesource_v4_18.sub_type_of_trade.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.sub_type_of_trade.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.sub_type_of_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.sub_type_of_trade, range, value, display)

  return offset + length, value
end

-- Time Of Event
lme_lmeselect_level2retransmission_lmesource_v4_18.time_of_event = {}

-- Size: Time Of Event
lme_lmeselect_level2retransmission_lmesource_v4_18.time_of_event.size = 8

-- Dissect: Time Of Event
lme_lmeselect_level2retransmission_lmesource_v4_18.time_of_event.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.time_of_event.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.time_of_event
  if lme_lmeselect_level2retransmission_lmesource_v4_18.absolute_time_base == 1 then field = omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.time_of_event_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Timetable Control Type
lme_lmeselect_level2retransmission_lmesource_v4_18.timetable_control_type = {}

-- Size: Timetable Control Type
lme_lmeselect_level2retransmission_lmesource_v4_18.timetable_control_type.size = 1

-- Display: Timetable Control Type
lme_lmeselect_level2retransmission_lmesource_v4_18.timetable_control_type.labels = {
  ["A"] = "Timetable Control Type: Automatic The Default Trading Schedule (A)",
  ["M"] = "Timetable Control Type: Manual A Temporary Trading Schedule (M)",
}

lme_lmeselect_level2retransmission_lmesource_v4_18.timetable_control_type.display = function(value)
  return lme_lmeselect_level2retransmission_lmesource_v4_18.timetable_control_type.labels[value] or "Timetable Control Type: Unknown("..value..")"
end

-- Dissect: Timetable Control Type
lme_lmeselect_level2retransmission_lmesource_v4_18.timetable_control_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.timetable_control_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.timetable_control_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.timetable_control_type, range, value, display)

  return offset + length, value
end

-- Total Qty Of Explicit Orders
lme_lmeselect_level2retransmission_lmesource_v4_18.total_qty_of_explicit_orders = {}

-- Size: Total Qty Of Explicit Orders
lme_lmeselect_level2retransmission_lmesource_v4_18.total_qty_of_explicit_orders.size = 8

-- Display: Total Qty Of Explicit Orders
lme_lmeselect_level2retransmission_lmesource_v4_18.total_qty_of_explicit_orders.display = function(value)
  return "Total Qty Of Explicit Orders: "..value
end

-- Dissect: Total Qty Of Explicit Orders
lme_lmeselect_level2retransmission_lmesource_v4_18.total_qty_of_explicit_orders.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.total_qty_of_explicit_orders.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.total_qty_of_explicit_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.total_qty_of_explicit_orders, range, value, display)

  return offset + length, value
end

-- Total Qty Of Implied Orders
lme_lmeselect_level2retransmission_lmesource_v4_18.total_qty_of_implied_orders = {}

-- Size: Total Qty Of Implied Orders
lme_lmeselect_level2retransmission_lmesource_v4_18.total_qty_of_implied_orders.size = 8

-- Display: Total Qty Of Implied Orders
lme_lmeselect_level2retransmission_lmesource_v4_18.total_qty_of_implied_orders.display = function(value)
  return "Total Qty Of Implied Orders: "..value
end

-- Dissect: Total Qty Of Implied Orders
lme_lmeselect_level2retransmission_lmesource_v4_18.total_qty_of_implied_orders.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.total_qty_of_implied_orders.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.total_qty_of_implied_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.total_qty_of_implied_orders, range, value, display)

  return offset + length, value
end

-- Tradable Instrument Id
lme_lmeselect_level2retransmission_lmesource_v4_18.tradable_instrument_id = {}

-- Size: Tradable Instrument Id
lme_lmeselect_level2retransmission_lmesource_v4_18.tradable_instrument_id.size = 8

-- Display: Tradable Instrument Id
lme_lmeselect_level2retransmission_lmesource_v4_18.tradable_instrument_id.display = function(value)
  return "Tradable Instrument Id: "..value
end

-- Dissect: Tradable Instrument Id
lme_lmeselect_level2retransmission_lmesource_v4_18.tradable_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.tradable_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.tradable_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.tradable_instrument_id, range, value, display)

  return offset + length, value
end

-- Trade At Reference Price Type
lme_lmeselect_level2retransmission_lmesource_v4_18.trade_at_reference_price_type = {}

-- Size: Trade At Reference Price Type
lme_lmeselect_level2retransmission_lmesource_v4_18.trade_at_reference_price_type.size = 1

-- Display: Trade At Reference Price Type
lme_lmeselect_level2retransmission_lmesource_v4_18.trade_at_reference_price_type.display = function(value)
  if value == "D" then
    return "Trade At Reference Price Type: Differential (D)"
  end
  if value == "S" then
    return "Trade At Reference Price Type: Substituted (S)"
  end
  if value == " " then
    return "Trade At Reference Price Type: Not Applicable (<whitespace>)"
  end

  return "Trade At Reference Price Type: Unknown("..value..")"
end

-- Dissect: Trade At Reference Price Type
lme_lmeselect_level2retransmission_lmesource_v4_18.trade_at_reference_price_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.trade_at_reference_price_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.trade_at_reference_price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.trade_at_reference_price_type, range, value, display)

  return offset + length, value
end

-- Trade Cancel Flag
lme_lmeselect_level2retransmission_lmesource_v4_18.trade_cancel_flag = {}

-- Size: Trade Cancel Flag
lme_lmeselect_level2retransmission_lmesource_v4_18.trade_cancel_flag.size = 1

-- Display: Trade Cancel Flag
lme_lmeselect_level2retransmission_lmesource_v4_18.trade_cancel_flag.labels = {
  [0] = "Trade Cancel Flag: False (0)",
  [1] = "Trade Cancel Flag: True (1)",
}

lme_lmeselect_level2retransmission_lmesource_v4_18.trade_cancel_flag.display = function(value)
  return lme_lmeselect_level2retransmission_lmesource_v4_18.trade_cancel_flag.labels[value] or "Trade Cancel Flag: Unknown("..value..")"
end

-- Dissect: Trade Cancel Flag
lme_lmeselect_level2retransmission_lmesource_v4_18.trade_cancel_flag.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.trade_cancel_flag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.trade_cancel_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.trade_cancel_flag, range, value, display)

  return offset + length, value
end

-- Trading State
lme_lmeselect_level2retransmission_lmesource_v4_18.trading_state = {}

-- Size: Trading State
lme_lmeselect_level2retransmission_lmesource_v4_18.trading_state.size = 1

-- Display: Trading State
lme_lmeselect_level2retransmission_lmesource_v4_18.trading_state.labels = {
  [1] = "Trading State: Pre Open (1)",
  [2] = "Trading State: Open (2)",
  [3] = "Trading State: Post Trade (3)",
  [4] = "Trading State: Close (4)",
  [6] = "Trading State: Technical Halt (6)",
}

lme_lmeselect_level2retransmission_lmesource_v4_18.trading_state.display = function(value)
  return lme_lmeselect_level2retransmission_lmesource_v4_18.trading_state.labels[value] or "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
lme_lmeselect_level2retransmission_lmesource_v4_18.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.trading_state.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Trading State Condition
lme_lmeselect_level2retransmission_lmesource_v4_18.trading_state_condition = {}

-- Size: Trading State Condition
lme_lmeselect_level2retransmission_lmesource_v4_18.trading_state_condition.size = 1

-- Display: Trading State Condition
lme_lmeselect_level2retransmission_lmesource_v4_18.trading_state_condition.display = function(value)
  if value == "P" then
    return "Trading State Condition: Pause (P)"
  end
  if value == "H" then
    return "Trading State Condition: Halt (H)"
  end
  if value == " " then
    return "Trading State Condition: Active (<whitespace>)"
  end

  return "Trading State Condition: Unknown("..value..")"
end

-- Dissect: Trading State Condition
lme_lmeselect_level2retransmission_lmesource_v4_18.trading_state_condition.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.trading_state_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.trading_state_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.trading_state_condition, range, value, display)

  return offset + length, value
end

-- Trading Venue
lme_lmeselect_level2retransmission_lmesource_v4_18.trading_venue = {}

-- Size: Trading Venue
lme_lmeselect_level2retransmission_lmesource_v4_18.trading_venue.size = 2

-- Display: Trading Venue
lme_lmeselect_level2retransmission_lmesource_v4_18.trading_venue.labels = {
  ["EL"] = "Trading Venue: Electronic (EL)",
  ["RK"] = "Trading Venue: Ring (RK)",
  ["IO"] = "Trading Venue: Inter Office (IO)",
}

lme_lmeselect_level2retransmission_lmesource_v4_18.trading_venue.display = function(value)
  return lme_lmeselect_level2retransmission_lmesource_v4_18.trading_venue.labels[value] or "Trading Venue: Unknown("..value..")"
end

-- Dissect: Trading Venue
lme_lmeselect_level2retransmission_lmesource_v4_18.trading_venue.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.trading_venue.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.trading_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.trading_venue, range, value, display)

  return offset + length, value
end

-- Update Action
lme_lmeselect_level2retransmission_lmesource_v4_18.update_action = {}

-- Size: Update Action
lme_lmeselect_level2retransmission_lmesource_v4_18.update_action.size = 1

-- Display: Update Action
lme_lmeselect_level2retransmission_lmesource_v4_18.update_action.labels = {
  [0] = "Update Action: New (0)",
  [1] = "Update Action: Change (1)",
  [2] = "Update Action: Delete (2)",
}

lme_lmeselect_level2retransmission_lmesource_v4_18.update_action.display = function(value)
  return lme_lmeselect_level2retransmission_lmesource_v4_18.update_action.labels[value] or "Update Action: Unknown("..value..")"
end

-- Dissect: Update Action
lme_lmeselect_level2retransmission_lmesource_v4_18.update_action.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.update_action.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.update_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.update_action, range, value, display)

  return offset + length, value
end

-- Username
lme_lmeselect_level2retransmission_lmesource_v4_18.username = {}

-- Size: Username
lme_lmeselect_level2retransmission_lmesource_v4_18.username.size = 12

-- Display: Username
lme_lmeselect_level2retransmission_lmesource_v4_18.username.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
lme_lmeselect_level2retransmission_lmesource_v4_18.username.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.username.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.username, range, value, display)

  return offset + length, value
end

-- Volume
lme_lmeselect_level2retransmission_lmesource_v4_18.volume = {}

-- Size: Volume
lme_lmeselect_level2retransmission_lmesource_v4_18.volume.size = 4

-- Display: Volume
lme_lmeselect_level2retransmission_lmesource_v4_18.volume.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Volume: No Value"
  end

  return "Volume: "..value
end

-- Dissect: Volume
lme_lmeselect_level2retransmission_lmesource_v4_18.volume.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level2retransmission_lmesource_v4_18.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level2retransmission_lmesource_v4_18.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.volume, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Lme LmeSelect Level2Retransmission LmeSource 4.18
-----------------------------------------------------------------------

-- Retransmission Response Message
lme_lmeselect_level2retransmission_lmesource_v4_18.retransmission_response_message = {}

-- Size: Retransmission Response Message
lme_lmeselect_level2retransmission_lmesource_v4_18.retransmission_response_message.size =
  lme_lmeselect_level2retransmission_lmesource_v4_18.channel_id.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.retrans_status.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_1.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.begin_seq_num.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.end_seq_num.size

-- Display: Retransmission Response Message
lme_lmeselect_level2retransmission_lmesource_v4_18.retransmission_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Response Message
lme_lmeselect_level2retransmission_lmesource_v4_18.retransmission_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Id: Uint16
  index, channel_id = lme_lmeselect_level2retransmission_lmesource_v4_18.channel_id.dissect(buffer, index, packet, parent)

  -- Retrans Status: Uint8
  index, retrans_status = lme_lmeselect_level2retransmission_lmesource_v4_18.retrans_status.dissect(buffer, index, packet, parent)

  -- Filler String 1: String
  index, filler_string_1 = lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_1.dissect(buffer, index, packet, parent)

  -- Begin Seq Num: Uint32
  index, begin_seq_num = lme_lmeselect_level2retransmission_lmesource_v4_18.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Uint32
  index, end_seq_num = lme_lmeselect_level2retransmission_lmesource_v4_18.end_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Response Message
lme_lmeselect_level2retransmission_lmesource_v4_18.retransmission_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.retransmission_response_message, buffer(offset, 0))
    local index = lme_lmeselect_level2retransmission_lmesource_v4_18.retransmission_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level2retransmission_lmesource_v4_18.retransmission_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level2retransmission_lmesource_v4_18.retransmission_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
lme_lmeselect_level2retransmission_lmesource_v4_18.retransmission_request_message = {}

-- Size: Retransmission Request Message
lme_lmeselect_level2retransmission_lmesource_v4_18.retransmission_request_message.size =
  lme_lmeselect_level2retransmission_lmesource_v4_18.channel_id.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_2.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.begin_seq_num.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.end_seq_num.size

-- Display: Retransmission Request Message
lme_lmeselect_level2retransmission_lmesource_v4_18.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
lme_lmeselect_level2retransmission_lmesource_v4_18.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Id: Uint16
  index, channel_id = lme_lmeselect_level2retransmission_lmesource_v4_18.channel_id.dissect(buffer, index, packet, parent)

  -- Filler String 2: String
  index, filler_string_2 = lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_2.dissect(buffer, index, packet, parent)

  -- Begin Seq Num: Uint32
  index, begin_seq_num = lme_lmeselect_level2retransmission_lmesource_v4_18.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Uint32
  index, end_seq_num = lme_lmeselect_level2retransmission_lmesource_v4_18.end_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
lme_lmeselect_level2retransmission_lmesource_v4_18.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.retransmission_request_message, buffer(offset, 0))
    local index = lme_lmeselect_level2retransmission_lmesource_v4_18.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level2retransmission_lmesource_v4_18.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level2retransmission_lmesource_v4_18.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Response Message
lme_lmeselect_level2retransmission_lmesource_v4_18.logon_response_message = {}

-- Size: Logon Response Message
lme_lmeselect_level2retransmission_lmesource_v4_18.logon_response_message.size =
  lme_lmeselect_level2retransmission_lmesource_v4_18.session_status.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_3.size

-- Display: Logon Response Message
lme_lmeselect_level2retransmission_lmesource_v4_18.logon_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Response Message
lme_lmeselect_level2retransmission_lmesource_v4_18.logon_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Status: Uint8
  index, session_status = lme_lmeselect_level2retransmission_lmesource_v4_18.session_status.dissect(buffer, index, packet, parent)

  -- Filler String 3: String
  index, filler_string_3 = lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Response Message
lme_lmeselect_level2retransmission_lmesource_v4_18.logon_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.logon_response_message, buffer(offset, 0))
    local index = lme_lmeselect_level2retransmission_lmesource_v4_18.logon_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level2retransmission_lmesource_v4_18.logon_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level2retransmission_lmesource_v4_18.logon_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Message
lme_lmeselect_level2retransmission_lmesource_v4_18.logon_message = {}

-- Size: Logon Message
lme_lmeselect_level2retransmission_lmesource_v4_18.logon_message.size =
  lme_lmeselect_level2retransmission_lmesource_v4_18.username.size

-- Display: Logon Message
lme_lmeselect_level2retransmission_lmesource_v4_18.logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Message
lme_lmeselect_level2retransmission_lmesource_v4_18.logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: String
  index, username = lme_lmeselect_level2retransmission_lmesource_v4_18.username.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
lme_lmeselect_level2retransmission_lmesource_v4_18.logon_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.logon_message, buffer(offset, 0))
    local index = lme_lmeselect_level2retransmission_lmesource_v4_18.logon_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level2retransmission_lmesource_v4_18.logon_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level2retransmission_lmesource_v4_18.logon_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Legs
lme_lmeselect_level2retransmission_lmesource_v4_18.trade_legs = {}

-- Size: Trade Legs
lme_lmeselect_level2retransmission_lmesource_v4_18.trade_legs.size =
  lme_lmeselect_level2retransmission_lmesource_v4_18.leg_price.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.leg_volume.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.leg_match_id.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.leg_trade_at_reference_price.size

-- Display: Trade Legs
lme_lmeselect_level2retransmission_lmesource_v4_18.trade_legs.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Legs
lme_lmeselect_level2retransmission_lmesource_v4_18.trade_legs.fields = function(buffer, offset, packet, parent, trade_legs_index)
  local index = offset

  -- Implicit Trade Legs Index
  if trade_legs_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.trade_legs_index, trade_legs_index)
    iteration:set_generated()
  end

  -- Leg Price: Int64
  index, leg_price = lme_lmeselect_level2retransmission_lmesource_v4_18.leg_price.dissect(buffer, index, packet, parent)

  -- Leg Volume: Uint32
  index, leg_volume = lme_lmeselect_level2retransmission_lmesource_v4_18.leg_volume.dissect(buffer, index, packet, parent)

  -- Leg Match Id: Uint64
  index, leg_match_id = lme_lmeselect_level2retransmission_lmesource_v4_18.leg_match_id.dissect(buffer, index, packet, parent)

  -- Leg Trade At Reference Price: String
  index, leg_trade_at_reference_price = lme_lmeselect_level2retransmission_lmesource_v4_18.leg_trade_at_reference_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Legs
lme_lmeselect_level2retransmission_lmesource_v4_18.trade_legs.dissect = function(buffer, offset, packet, parent, trade_legs_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.trade_legs, buffer(offset, 0))
    local index = lme_lmeselect_level2retransmission_lmesource_v4_18.trade_legs.fields(buffer, offset, packet, parent, trade_legs_index)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level2retransmission_lmesource_v4_18.trade_legs.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level2retransmission_lmesource_v4_18.trade_legs.fields(buffer, offset, packet, parent, trade_legs_index)
  end
end

-- Market Data Trade Message
lme_lmeselect_level2retransmission_lmesource_v4_18.market_data_trade_message = {}

-- Calculate size of: Market Data Trade Message
lme_lmeselect_level2retransmission_lmesource_v4_18.market_data_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + lme_lmeselect_level2retransmission_lmesource_v4_18.time_of_event.size

  index = index + lme_lmeselect_level2retransmission_lmesource_v4_18.tradable_instrument_id.size

  index = index + lme_lmeselect_level2retransmission_lmesource_v4_18.trading_venue.size

  index = index + lme_lmeselect_level2retransmission_lmesource_v4_18.matched_time.size

  index = index + lme_lmeselect_level2retransmission_lmesource_v4_18.ring_session.size

  index = index + lme_lmeselect_level2retransmission_lmesource_v4_18.trade_cancel_flag.size

  index = index + lme_lmeselect_level2retransmission_lmesource_v4_18.price.size

  index = index + lme_lmeselect_level2retransmission_lmesource_v4_18.volume.size

  index = index + lme_lmeselect_level2retransmission_lmesource_v4_18.match_id.size

  index = index + lme_lmeselect_level2retransmission_lmesource_v4_18.trade_at_reference_price_type.size

  index = index + lme_lmeselect_level2retransmission_lmesource_v4_18.sub_type_of_trade.size

  index = index + lme_lmeselect_level2retransmission_lmesource_v4_18.remaining_records.size

  index = index + lme_lmeselect_level2retransmission_lmesource_v4_18.record_count.size

  index = index + lme_lmeselect_level2retransmission_lmesource_v4_18.strategy_leg_count.size

  -- Calculate field size from count
  local trade_legs_count = buffer(offset + index - 6, 2):le_uint()
  index = index + trade_legs_count * 21

  return index
end

-- Display: Market Data Trade Message
lme_lmeselect_level2retransmission_lmesource_v4_18.market_data_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Data Trade Message
lme_lmeselect_level2retransmission_lmesource_v4_18.market_data_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Of Event: Uint64
  index, time_of_event = lme_lmeselect_level2retransmission_lmesource_v4_18.time_of_event.dissect(buffer, index, packet, parent)

  -- Tradable Instrument Id: Uint64
  index, tradable_instrument_id = lme_lmeselect_level2retransmission_lmesource_v4_18.tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_level2retransmission_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Matched Time: Uint64
  index, matched_time = lme_lmeselect_level2retransmission_lmesource_v4_18.matched_time.dissect(buffer, index, packet, parent)

  -- Ring Session: String
  index, ring_session = lme_lmeselect_level2retransmission_lmesource_v4_18.ring_session.dissect(buffer, index, packet, parent)

  -- Trade Cancel Flag: Uint8
  index, trade_cancel_flag = lme_lmeselect_level2retransmission_lmesource_v4_18.trade_cancel_flag.dissect(buffer, index, packet, parent)

  -- Price: Int64
  index, price = lme_lmeselect_level2retransmission_lmesource_v4_18.price.dissect(buffer, index, packet, parent)

  -- Volume: Uint32
  index, volume = lme_lmeselect_level2retransmission_lmesource_v4_18.volume.dissect(buffer, index, packet, parent)

  -- Match Id: Uint64
  index, match_id = lme_lmeselect_level2retransmission_lmesource_v4_18.match_id.dissect(buffer, index, packet, parent)

  -- Trade At Reference Price Type: String
  index, trade_at_reference_price_type = lme_lmeselect_level2retransmission_lmesource_v4_18.trade_at_reference_price_type.dissect(buffer, index, packet, parent)

  -- Sub Type Of Trade: Uint8
  index, sub_type_of_trade = lme_lmeselect_level2retransmission_lmesource_v4_18.sub_type_of_trade.dissect(buffer, index, packet, parent)

  -- Remaining Records: Uint16
  index, remaining_records = lme_lmeselect_level2retransmission_lmesource_v4_18.remaining_records.dissect(buffer, index, packet, parent)

  -- Record Count: Uint16
  index, record_count = lme_lmeselect_level2retransmission_lmesource_v4_18.record_count.dissect(buffer, index, packet, parent)

  -- Strategy Leg Count: Uint32
  index, strategy_leg_count = lme_lmeselect_level2retransmission_lmesource_v4_18.strategy_leg_count.dissect(buffer, index, packet, parent)

  -- Repeating: Trade Legs
  for trade_legs_index = 1, record_count do
    index, trade_legs = lme_lmeselect_level2retransmission_lmesource_v4_18.trade_legs.dissect(buffer, index, packet, parent, trade_legs_index)
  end

  return index
end

-- Dissect: Market Data Trade Message
lme_lmeselect_level2retransmission_lmesource_v4_18.market_data_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.market_data_trade_message, buffer(offset, 0))
    local index = lme_lmeselect_level2retransmission_lmesource_v4_18.market_data_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level2retransmission_lmesource_v4_18.market_data_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level2retransmission_lmesource_v4_18.market_data_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Entries
lme_lmeselect_level2retransmission_lmesource_v4_18.entries = {}

-- Size: Entries
lme_lmeselect_level2retransmission_lmesource_v4_18.entries.size =
  lme_lmeselect_level2retransmission_lmesource_v4_18.aggregate_volume.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.price.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.number_of_explicit_orders.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.total_qty_of_explicit_orders.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.number_of_implied_orders.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.total_qty_of_implied_orders.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.buy_sell.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.price_level.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.update_action.size

-- Display: Entries
lme_lmeselect_level2retransmission_lmesource_v4_18.entries.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Entries
lme_lmeselect_level2retransmission_lmesource_v4_18.entries.fields = function(buffer, offset, packet, parent, entries_index)
  local index = offset

  -- Implicit Entries Index
  if entries_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.entries_index, entries_index)
    iteration:set_generated()
  end

  -- Aggregate Volume: Uint64
  index, aggregate_volume = lme_lmeselect_level2retransmission_lmesource_v4_18.aggregate_volume.dissect(buffer, index, packet, parent)

  -- Price: Int64
  index, price = lme_lmeselect_level2retransmission_lmesource_v4_18.price.dissect(buffer, index, packet, parent)

  -- Number Of Explicit Orders: Uint32
  index, number_of_explicit_orders = lme_lmeselect_level2retransmission_lmesource_v4_18.number_of_explicit_orders.dissect(buffer, index, packet, parent)

  -- Total Qty Of Explicit Orders: Uint64
  index, total_qty_of_explicit_orders = lme_lmeselect_level2retransmission_lmesource_v4_18.total_qty_of_explicit_orders.dissect(buffer, index, packet, parent)

  -- Number Of Implied Orders: Uint32
  index, number_of_implied_orders = lme_lmeselect_level2retransmission_lmesource_v4_18.number_of_implied_orders.dissect(buffer, index, packet, parent)

  -- Total Qty Of Implied Orders: Uint64
  index, total_qty_of_implied_orders = lme_lmeselect_level2retransmission_lmesource_v4_18.total_qty_of_implied_orders.dissect(buffer, index, packet, parent)

  -- Buy Sell: String
  index, buy_sell = lme_lmeselect_level2retransmission_lmesource_v4_18.buy_sell.dissect(buffer, index, packet, parent)

  -- Price Level: Uint8
  index, price_level = lme_lmeselect_level2retransmission_lmesource_v4_18.price_level.dissect(buffer, index, packet, parent)

  -- Update Action: Uint8
  index, update_action = lme_lmeselect_level2retransmission_lmesource_v4_18.update_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Entries
lme_lmeselect_level2retransmission_lmesource_v4_18.entries.dissect = function(buffer, offset, packet, parent, entries_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.entries, buffer(offset, 0))
    local index = lme_lmeselect_level2retransmission_lmesource_v4_18.entries.fields(buffer, offset, packet, parent, entries_index)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level2retransmission_lmesource_v4_18.entries.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level2retransmission_lmesource_v4_18.entries.fields(buffer, offset, packet, parent, entries_index)
  end
end

-- Aggregate Order Book Message
lme_lmeselect_level2retransmission_lmesource_v4_18.aggregate_order_book_message = {}

-- Calculate size of: Aggregate Order Book Message
lme_lmeselect_level2retransmission_lmesource_v4_18.aggregate_order_book_message.size = function(buffer, offset)
  local index = 0

  index = index + lme_lmeselect_level2retransmission_lmesource_v4_18.trading_venue.size

  index = index + lme_lmeselect_level2retransmission_lmesource_v4_18.time_of_event.size

  index = index + lme_lmeselect_level2retransmission_lmesource_v4_18.tradable_instrument_id.size

  index = index + lme_lmeselect_level2retransmission_lmesource_v4_18.no_entries.size

  -- Calculate field size from count
  local entries_count = buffer(offset + index - 1, 1):uint()
  index = index + entries_count * 43

  return index
end

-- Display: Aggregate Order Book Message
lme_lmeselect_level2retransmission_lmesource_v4_18.aggregate_order_book_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Aggregate Order Book Message
lme_lmeselect_level2retransmission_lmesource_v4_18.aggregate_order_book_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_level2retransmission_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Time Of Event: Uint64
  index, time_of_event = lme_lmeselect_level2retransmission_lmesource_v4_18.time_of_event.dissect(buffer, index, packet, parent)

  -- Tradable Instrument Id: Uint64
  index, tradable_instrument_id = lme_lmeselect_level2retransmission_lmesource_v4_18.tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- No Entries: Uint8
  index, no_entries = lme_lmeselect_level2retransmission_lmesource_v4_18.no_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Entries
  for entries_index = 1, no_entries do
    index, entries = lme_lmeselect_level2retransmission_lmesource_v4_18.entries.dissect(buffer, index, packet, parent, entries_index)
  end

  return index
end

-- Dissect: Aggregate Order Book Message
lme_lmeselect_level2retransmission_lmesource_v4_18.aggregate_order_book_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.aggregate_order_book_message, buffer(offset, 0))
    local index = lme_lmeselect_level2retransmission_lmesource_v4_18.aggregate_order_book_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level2retransmission_lmesource_v4_18.aggregate_order_book_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level2retransmission_lmesource_v4_18.aggregate_order_book_message.fields(buffer, offset, packet, parent)
  end
end

-- Cross Request Message
lme_lmeselect_level2retransmission_lmesource_v4_18.cross_request_message = {}

-- Size: Cross Request Message
lme_lmeselect_level2retransmission_lmesource_v4_18.cross_request_message.size =
  lme_lmeselect_level2retransmission_lmesource_v4_18.trading_venue.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.time_of_event.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.tradable_instrument_id.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.cross_id.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.volume.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.expire_time.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_2.size

-- Display: Cross Request Message
lme_lmeselect_level2retransmission_lmesource_v4_18.cross_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Request Message
lme_lmeselect_level2retransmission_lmesource_v4_18.cross_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_level2retransmission_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Time Of Event: Uint64
  index, time_of_event = lme_lmeselect_level2retransmission_lmesource_v4_18.time_of_event.dissect(buffer, index, packet, parent)

  -- Tradable Instrument Id: Uint64
  index, tradable_instrument_id = lme_lmeselect_level2retransmission_lmesource_v4_18.tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- Cross Id: Uint64
  index, cross_id = lme_lmeselect_level2retransmission_lmesource_v4_18.cross_id.dissect(buffer, index, packet, parent)

  -- Volume: Uint32
  index, volume = lme_lmeselect_level2retransmission_lmesource_v4_18.volume.dissect(buffer, index, packet, parent)

  -- Expire Time: Uint64
  index, expire_time = lme_lmeselect_level2retransmission_lmesource_v4_18.expire_time.dissect(buffer, index, packet, parent)

  -- Filler String 2: String
  index, filler_string_2 = lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Request Message
lme_lmeselect_level2retransmission_lmesource_v4_18.cross_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.cross_request_message, buffer(offset, 0))
    local index = lme_lmeselect_level2retransmission_lmesource_v4_18.cross_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level2retransmission_lmesource_v4_18.cross_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level2retransmission_lmesource_v4_18.cross_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Clear Message
lme_lmeselect_level2retransmission_lmesource_v4_18.order_book_clear_message = {}

-- Size: Order Book Clear Message
lme_lmeselect_level2retransmission_lmesource_v4_18.order_book_clear_message.size =
  lme_lmeselect_level2retransmission_lmesource_v4_18.trading_venue.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.time_of_event.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.tradable_instrument_id.size

-- Display: Order Book Clear Message
lme_lmeselect_level2retransmission_lmesource_v4_18.order_book_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Clear Message
lme_lmeselect_level2retransmission_lmesource_v4_18.order_book_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_level2retransmission_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Time Of Event: Uint64
  index, time_of_event = lme_lmeselect_level2retransmission_lmesource_v4_18.time_of_event.dissect(buffer, index, packet, parent)

  -- Tradable Instrument Id: Uint64
  index, tradable_instrument_id = lme_lmeselect_level2retransmission_lmesource_v4_18.tradable_instrument_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Clear Message
lme_lmeselect_level2retransmission_lmesource_v4_18.order_book_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.order_book_clear_message, buffer(offset, 0))
    local index = lme_lmeselect_level2retransmission_lmesource_v4_18.order_book_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level2retransmission_lmesource_v4_18.order_book_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level2retransmission_lmesource_v4_18.order_book_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Request Message
lme_lmeselect_level2retransmission_lmesource_v4_18.quote_request_message = {}

-- Size: Quote Request Message
lme_lmeselect_level2retransmission_lmesource_v4_18.quote_request_message.size =
  lme_lmeselect_level2retransmission_lmesource_v4_18.trading_venue.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.time_of_event.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.tradable_instrument_id.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.quote_request_type.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.buy_sell.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.volume.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_2.size

-- Display: Quote Request Message
lme_lmeselect_level2retransmission_lmesource_v4_18.quote_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Request Message
lme_lmeselect_level2retransmission_lmesource_v4_18.quote_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_level2retransmission_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Time Of Event: Uint64
  index, time_of_event = lme_lmeselect_level2retransmission_lmesource_v4_18.time_of_event.dissect(buffer, index, packet, parent)

  -- Tradable Instrument Id: Uint64
  index, tradable_instrument_id = lme_lmeselect_level2retransmission_lmesource_v4_18.tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- Quote Request Type: Uint8
  index, quote_request_type = lme_lmeselect_level2retransmission_lmesource_v4_18.quote_request_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: String
  index, buy_sell = lme_lmeselect_level2retransmission_lmesource_v4_18.buy_sell.dissect(buffer, index, packet, parent)

  -- Volume: Uint32
  index, volume = lme_lmeselect_level2retransmission_lmesource_v4_18.volume.dissect(buffer, index, packet, parent)

  -- Filler String 2: String
  index, filler_string_2 = lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request Message
lme_lmeselect_level2retransmission_lmesource_v4_18.quote_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.quote_request_message, buffer(offset, 0))
    local index = lme_lmeselect_level2retransmission_lmesource_v4_18.quote_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level2retransmission_lmesource_v4_18.quote_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level2retransmission_lmesource_v4_18.quote_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Indicative Opening Price Message
lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_price_message = {}

-- Size: Indicative Opening Price Message
lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_price_message.size =
  lme_lmeselect_level2retransmission_lmesource_v4_18.trading_venue.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.time_of_event.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.tradable_instrument_id.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_price.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_volume.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_mid_price.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_2.size

-- Display: Indicative Opening Price Message
lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indicative Opening Price Message
lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_level2retransmission_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Time Of Event: Uint64
  index, time_of_event = lme_lmeselect_level2retransmission_lmesource_v4_18.time_of_event.dissect(buffer, index, packet, parent)

  -- Tradable Instrument Id: Uint64
  index, tradable_instrument_id = lme_lmeselect_level2retransmission_lmesource_v4_18.tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- Indicative Opening Price: Int64
  index, indicative_opening_price = lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_price.dissect(buffer, index, packet, parent)

  -- Indicative Opening Volume: Uint32
  index, indicative_opening_volume = lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_volume.dissect(buffer, index, packet, parent)

  -- Indicative Opening Mid Price: Int64
  index, indicative_opening_mid_price = lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_mid_price.dissect(buffer, index, packet, parent)

  -- Filler String 2: String
  index, filler_string_2 = lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Indicative Opening Price Message
lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.indicative_opening_price_message, buffer(offset, 0))
    local index = lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Market State Instrument Message
lme_lmeselect_level2retransmission_lmesource_v4_18.market_state_instrument_message = {}

-- Size: Market State Instrument Message
lme_lmeselect_level2retransmission_lmesource_v4_18.market_state_instrument_message.size =
  lme_lmeselect_level2retransmission_lmesource_v4_18.trading_venue.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.time_of_event.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.tradable_instrument_id.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.timetable_control_type.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.trading_state.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.start_time.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.end_time.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.trading_state_condition.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_3.size

-- Display: Market State Instrument Message
lme_lmeselect_level2retransmission_lmesource_v4_18.market_state_instrument_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market State Instrument Message
lme_lmeselect_level2retransmission_lmesource_v4_18.market_state_instrument_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_level2retransmission_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Time Of Event: Uint64
  index, time_of_event = lme_lmeselect_level2retransmission_lmesource_v4_18.time_of_event.dissect(buffer, index, packet, parent)

  -- Tradable Instrument Id: Uint64
  index, tradable_instrument_id = lme_lmeselect_level2retransmission_lmesource_v4_18.tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- Timetable Control Type: String
  index, timetable_control_type = lme_lmeselect_level2retransmission_lmesource_v4_18.timetable_control_type.dissect(buffer, index, packet, parent)

  -- Trading State: Uint8
  index, trading_state = lme_lmeselect_level2retransmission_lmesource_v4_18.trading_state.dissect(buffer, index, packet, parent)

  -- Start Time: Uint64
  index, start_time = lme_lmeselect_level2retransmission_lmesource_v4_18.start_time.dissect(buffer, index, packet, parent)

  -- End Time: Uint64
  index, end_time = lme_lmeselect_level2retransmission_lmesource_v4_18.end_time.dissect(buffer, index, packet, parent)

  -- Trading State Condition: String
  index, trading_state_condition = lme_lmeselect_level2retransmission_lmesource_v4_18.trading_state_condition.dissect(buffer, index, packet, parent)

  -- Filler String 3: String
  index, filler_string_3 = lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market State Instrument Message
lme_lmeselect_level2retransmission_lmesource_v4_18.market_state_instrument_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.market_state_instrument_message, buffer(offset, 0))
    local index = lme_lmeselect_level2retransmission_lmesource_v4_18.market_state_instrument_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level2retransmission_lmesource_v4_18.market_state_instrument_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level2retransmission_lmesource_v4_18.market_state_instrument_message.fields(buffer, offset, packet, parent)
  end
end

-- Market State Contract Message
lme_lmeselect_level2retransmission_lmesource_v4_18.market_state_contract_message = {}

-- Size: Market State Contract Message
lme_lmeselect_level2retransmission_lmesource_v4_18.market_state_contract_message.size =
  lme_lmeselect_level2retransmission_lmesource_v4_18.trading_venue.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.time_of_event.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.contract_code.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.trading_state.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.start_time.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.end_time.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.trading_state_condition.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_2.size

-- Display: Market State Contract Message
lme_lmeselect_level2retransmission_lmesource_v4_18.market_state_contract_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market State Contract Message
lme_lmeselect_level2retransmission_lmesource_v4_18.market_state_contract_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_level2retransmission_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Time Of Event: Uint64
  index, time_of_event = lme_lmeselect_level2retransmission_lmesource_v4_18.time_of_event.dissect(buffer, index, packet, parent)

  -- Contract Code: String
  index, contract_code = lme_lmeselect_level2retransmission_lmesource_v4_18.contract_code.dissect(buffer, index, packet, parent)

  -- Trading State: Uint8
  index, trading_state = lme_lmeselect_level2retransmission_lmesource_v4_18.trading_state.dissect(buffer, index, packet, parent)

  -- Start Time: Uint64
  index, start_time = lme_lmeselect_level2retransmission_lmesource_v4_18.start_time.dissect(buffer, index, packet, parent)

  -- End Time: Uint64
  index, end_time = lme_lmeselect_level2retransmission_lmesource_v4_18.end_time.dissect(buffer, index, packet, parent)

  -- Trading State Condition: String
  index, trading_state_condition = lme_lmeselect_level2retransmission_lmesource_v4_18.trading_state_condition.dissect(buffer, index, packet, parent)

  -- Filler String 2: String
  index, filler_string_2 = lme_lmeselect_level2retransmission_lmesource_v4_18.filler_string_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market State Contract Message
lme_lmeselect_level2retransmission_lmesource_v4_18.market_state_contract_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.market_state_contract_message, buffer(offset, 0))
    local index = lme_lmeselect_level2retransmission_lmesource_v4_18.market_state_contract_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level2retransmission_lmesource_v4_18.market_state_contract_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level2retransmission_lmesource_v4_18.market_state_contract_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Reset Message
lme_lmeselect_level2retransmission_lmesource_v4_18.sequence_reset_message = {}

-- Size: Sequence Reset Message
lme_lmeselect_level2retransmission_lmesource_v4_18.sequence_reset_message.size =
  lme_lmeselect_level2retransmission_lmesource_v4_18.new_seq_no.size

-- Display: Sequence Reset Message
lme_lmeselect_level2retransmission_lmesource_v4_18.sequence_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Reset Message
lme_lmeselect_level2retransmission_lmesource_v4_18.sequence_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Seq No: Uint32
  index, new_seq_no = lme_lmeselect_level2retransmission_lmesource_v4_18.new_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Reset Message
lme_lmeselect_level2retransmission_lmesource_v4_18.sequence_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.sequence_reset_message, buffer(offset, 0))
    local index = lme_lmeselect_level2retransmission_lmesource_v4_18.sequence_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level2retransmission_lmesource_v4_18.sequence_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level2retransmission_lmesource_v4_18.sequence_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
lme_lmeselect_level2retransmission_lmesource_v4_18.payload = {}

-- Dissect: Payload
lme_lmeselect_level2retransmission_lmesource_v4_18.payload.dispatch = {
  [100] = lme_lmeselect_level2retransmission_lmesource_v4_18.sequence_reset_message.dissect,
  [311] = lme_lmeselect_level2retransmission_lmesource_v4_18.market_state_contract_message.dissect,
  [312] = lme_lmeselect_level2retransmission_lmesource_v4_18.market_state_instrument_message.dissect,
  [320] = lme_lmeselect_level2retransmission_lmesource_v4_18.indicative_opening_price_message.dissect,
  [329] = lme_lmeselect_level2retransmission_lmesource_v4_18.quote_request_message.dissect,
  [327] = lme_lmeselect_level2retransmission_lmesource_v4_18.order_book_clear_message.dissect,
  [330] = lme_lmeselect_level2retransmission_lmesource_v4_18.cross_request_message.dissect,
  [322] = lme_lmeselect_level2retransmission_lmesource_v4_18.aggregate_order_book_message.dissect,
  [341] = lme_lmeselect_level2retransmission_lmesource_v4_18.market_data_trade_message.dissect,
  [101] = lme_lmeselect_level2retransmission_lmesource_v4_18.logon_message.dissect,
  [102] = lme_lmeselect_level2retransmission_lmesource_v4_18.logon_response_message.dissect,
  [201] = lme_lmeselect_level2retransmission_lmesource_v4_18.retransmission_request_message.dissect,
  [202] = lme_lmeselect_level2retransmission_lmesource_v4_18.retransmission_response_message.dissect,
}

lme_lmeselect_level2retransmission_lmesource_v4_18.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  local dissect = lme_lmeselect_level2retransmission_lmesource_v4_18.payload.dispatch[msg_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
lme_lmeselect_level2retransmission_lmesource_v4_18.message_header = {}

-- Size: Message Header
lme_lmeselect_level2retransmission_lmesource_v4_18.message_header.size =
  lme_lmeselect_level2retransmission_lmesource_v4_18.msg_size.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.msg_type.size

-- Display: Message Header
lme_lmeselect_level2retransmission_lmesource_v4_18.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lme_lmeselect_level2retransmission_lmesource_v4_18.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Size: Uint16
  index, msg_size = lme_lmeselect_level2retransmission_lmesource_v4_18.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Type: Uint16
  index, msg_type = lme_lmeselect_level2retransmission_lmesource_v4_18.msg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lme_lmeselect_level2retransmission_lmesource_v4_18.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.message_header, buffer(offset, 0))
    local index = lme_lmeselect_level2retransmission_lmesource_v4_18.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level2retransmission_lmesource_v4_18.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level2retransmission_lmesource_v4_18.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
lme_lmeselect_level2retransmission_lmesource_v4_18.message = {}

-- Calculate size of: Message
lme_lmeselect_level2retransmission_lmesource_v4_18.message.size = function(buffer, offset)
  local index = 0

  index = index + lme_lmeselect_level2retransmission_lmesource_v4_18.message_header.size

  -- Parse runtime size of: Payload
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Message
lme_lmeselect_level2retransmission_lmesource_v4_18.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lme_lmeselect_level2retransmission_lmesource_v4_18.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = lme_lmeselect_level2retransmission_lmesource_v4_18.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 13 branches
  index = lme_lmeselect_level2retransmission_lmesource_v4_18.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
lme_lmeselect_level2retransmission_lmesource_v4_18.message.dissect = function(buffer, offset, packet, parent, message_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.message, buffer(offset, 0))
    local index = lme_lmeselect_level2retransmission_lmesource_v4_18.message.fields(buffer, offset, packet, parent, message_index)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level2retransmission_lmesource_v4_18.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level2retransmission_lmesource_v4_18.message.fields(buffer, offset, packet, parent, message_index)
  end
end

-- Packet Header
lme_lmeselect_level2retransmission_lmesource_v4_18.packet_header = {}

-- Size: Packet Header
lme_lmeselect_level2retransmission_lmesource_v4_18.packet_header.size =
  lme_lmeselect_level2retransmission_lmesource_v4_18.pkt_size.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.msg_count.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.filler.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.seq_num.size + 
  lme_lmeselect_level2retransmission_lmesource_v4_18.send_time.size

-- Display: Packet Header
lme_lmeselect_level2retransmission_lmesource_v4_18.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
lme_lmeselect_level2retransmission_lmesource_v4_18.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: Uint16
  index, pkt_size = lme_lmeselect_level2retransmission_lmesource_v4_18.pkt_size.dissect(buffer, index, packet, parent)

  -- Msg Count: Uint8
  index, msg_count = lme_lmeselect_level2retransmission_lmesource_v4_18.msg_count.dissect(buffer, index, packet, parent)

  -- Filler: String
  index, filler = lme_lmeselect_level2retransmission_lmesource_v4_18.filler.dissect(buffer, index, packet, parent)

  -- Seq Num: Uint32
  index, seq_num = lme_lmeselect_level2retransmission_lmesource_v4_18.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: Uint64
  index, send_time = lme_lmeselect_level2retransmission_lmesource_v4_18.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
lme_lmeselect_level2retransmission_lmesource_v4_18.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18.fields.packet_header, buffer(offset, 0))
    local index = lme_lmeselect_level2retransmission_lmesource_v4_18.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level2retransmission_lmesource_v4_18.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level2retransmission_lmesource_v4_18.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
lme_lmeselect_level2retransmission_lmesource_v4_18.packet = {}

-- Verify required size of Tcp packet
lme_lmeselect_level2retransmission_lmesource_v4_18.packet.requiredsize = function(buffer)
  return buffer:len() >= lme_lmeselect_level2retransmission_lmesource_v4_18.packet_header.size
end

-- Dissect Packet
lme_lmeselect_level2retransmission_lmesource_v4_18.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = lme_lmeselect_level2retransmission_lmesource_v4_18.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Count
  local msg_count = buffer(index - 14, 1):uint()

  -- Repeating: Message
  for message_index = 1, msg_count do
    index, message = lme_lmeselect_level2retransmission_lmesource_v4_18.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_lme_lmeselect_level2retransmission_lmesource_v4_18.init()
end

-- Dissector for Lme LmeSelect Level2Retransmission LmeSource 4.18
function omi_lme_lmeselect_level2retransmission_lmesource_v4_18.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_lme_lmeselect_level2retransmission_lmesource_v4_18.name

  local length = buffer:len()
  local offset = 0

  -- Dissect each message the segment carries
  while offset < length do
    local protocol = parent:add(omi_lme_lmeselect_level2retransmission_lmesource_v4_18, buffer(offset), omi_lme_lmeselect_level2retransmission_lmesource_v4_18.description, "("..(length - offset).." Bytes)")
    local consumed = lme_lmeselect_level2retransmission_lmesource_v4_18.packet.dissect(buffer(offset):tvb(), packet, protocol)

    if consumed == nil or consumed <= 0 then
      return offset
    end

    protocol:set_len(consumed)
    offset = offset + consumed
  end

  return offset
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
lme_lmeselect_level2retransmission_lmesource_v4_18.packet.fingerprint = function(buffer)
  if buffer:len() < 20 then
    return false
  end

  local msg_type = buffer(18, 2):le_uint()

  -- Sequence Reset Message
  if msg_type == 100 then
    return true
  end

  -- Market State Contract Message
  if msg_type == 311 then
    return true
  end

  -- Market State Instrument Message
  if msg_type == 312 then
    return true
  end

  -- Indicative Opening Price Message
  if msg_type == 320 then
    return true
  end

  -- Quote Request Message
  if msg_type == 329 then
    return true
  end

  -- Order Book Clear Message
  if msg_type == 327 then
    return true
  end

  -- Cross Request Message
  if msg_type == 330 then
    return true
  end

  -- Aggregate Order Book Message
  if msg_type == 322 then
    return true
  end

  -- Market Data Trade Message
  if msg_type == 341 then
    return true
  end

  -- Logon Message
  if msg_type == 101 then
    return true
  end

  -- Logon Response Message
  if msg_type == 102 then
    return true
  end

  -- Retransmission Request Message
  if msg_type == 201 then
    return true
  end

  -- Retransmission Response Message
  if msg_type == 202 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Lme LmeSelect Level2Retransmission LmeSource 4.18 (Tcp)
local function omi_lme_lmeselect_level2retransmission_lmesource_v4_18_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not lme_lmeselect_level2retransmission_lmesource_v4_18.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp packet message dispatch
  if not lme_lmeselect_level2retransmission_lmesource_v4_18.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_lme_lmeselect_level2retransmission_lmesource_v4_18
  omi_lme_lmeselect_level2retransmission_lmesource_v4_18.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lme LmeSelect Level2Retransmission LmeSource 4.18
omi_lme_lmeselect_level2retransmission_lmesource_v4_18:register_heuristic("tcp", omi_lme_lmeselect_level2retransmission_lmesource_v4_18_tcp_heuristic)

-- Register Lme LmeSelect Level2Retransmission LmeSource 4.18 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_lme_lmeselect_level2retransmission_lmesource_v4_18)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: The London Metal Exchange
--   Version: 4.18
--   Date: Tuesday, August 18, 2026
--   Specification: lmesource-client-interface-specification-v4-18.pdf
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
