-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- OtcMarkets MoonAts Retransmission Link 1.3 Protocol
local omi_otcmarkets_moonats_retransmission_link_v1_3 = Proto("Omi.OtcMarkets.MoonAts.Retransmission.Link.v1.3", "OtcMarkets MoonAts Retransmission Link 1.3")

-- Protocol table
local otcmarkets_moonats_retransmission_link_v1_3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- OtcMarkets MoonAts Retransmission Link 1.3 Fields
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.ask_price = ProtoField.new("Ask Price", "otcmarkets.moonats.retransmission.link.v1.3.askprice", ftypes.DOUBLE, nil, nil, nil, "Best Ask Price. The long value represents the price scaled by 1,000,000 (6 decimal places).")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.ask_volume = ProtoField.new("Ask Volume", "otcmarkets.moonats.retransmission.link.v1.3.askvolume", ftypes.UINT32, nil, nil, nil, "Aggregate size at Ask Price.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.asset_class = ProtoField.new("Asset Class", "otcmarkets.moonats.retransmission.link.v1.3.assetclass", ftypes.UINT8, nil, nil, nil, "Asset class.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.bid_price = ProtoField.new("Bid Price", "otcmarkets.moonats.retransmission.link.v1.3.bidprice", ftypes.DOUBLE, nil, nil, nil, "Best Bid Price. The long value represents the price scaled by 1,000,000 (6 decimal places).")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.bid_volume = ProtoField.new("Bid Volume", "otcmarkets.moonats.retransmission.link.v1.3.bidvolume", ftypes.UINT32, nil, nil, nil, "Aggregate size at Bid Price.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.caveat_flag = ProtoField.new("Caveat Flag", "otcmarkets.moonats.retransmission.link.v1.3.caveatflag", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002, "Indicates whether a Caveat Emptor warning has been applied to the security.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.client_identifier = ProtoField.new("Client Identifier", "otcmarkets.moonats.retransmission.link.v1.3.clientidentifier", ftypes.UINT32, nil, nil, nil, "Optional client identifier.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.closing_cross_auction = ProtoField.new("Closing Cross Auction", "otcmarkets.moonats.retransmission.link.v1.3.closingcrossauction", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010, "Indicates if security participates in the OTC Link Closing Cross Auction.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.current_inside_closing_price = ProtoField.new("Current Inside Closing Price", "otcmarkets.moonats.retransmission.link.v1.3.currentinsideclosingprice", ftypes.DOUBLE, nil, nil, nil, "The calculated closing price without Day / extended Day orders, bounded by the inside. The long value represents the price scaled by 1,000,000 (6 decimal places).")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.current_inside_imbalance_quantity = ProtoField.new("Current Inside Imbalance Quantity", "otcmarkets.moonats.retransmission.link.v1.3.currentinsideimbalancequantity", ftypes.UINT32, nil, nil, nil, "Number of marketable OC and IO shares that would be left unmatched at the Current Inside Closing Price.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.current_inside_imbalance_side = ProtoField.new("Current Inside Imbalance Side", "otcmarkets.moonats.retransmission.link.v1.3.currentinsideimbalanceside", ftypes.STRING, nil, nil, nil, "Buy or sell side of the Current Inside Imbalance Quantity.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.current_inside_paired_shares = ProtoField.new("Current Inside Paired Shares", "otcmarkets.moonats.retransmission.link.v1.3.currentinsidepairedshares", ftypes.UINT32, nil, nil, nil, "Number of OC and IO shares that would be matched at the Current Inside Closing Price.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.deprecated = ProtoField.new("Deprecated", "otcmarkets.moonats.retransmission.link.v1.3.deprecated", ftypes.UINT32, nil, nil, nil, "Deprecated.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.enhanced_spin_status = ProtoField.new("Enhanced Spin Status", "otcmarkets.moonats.retransmission.link.v1.3.enhancedspinstatus", ftypes.UINT8, nil, nil, nil, "\"S\" Start of Spin or \"E\" End of Spin. Field renamed from \"Status\" in the PDF to disambiguate from sibling Status fields.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.executed_quantity = ProtoField.new("Executed Quantity", "otcmarkets.moonats.retransmission.link.v1.3.executedquantity", ftypes.UINT32, nil, nil, nil, "Number of shares executed.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.execution_id = ProtoField.new("Execution Id", "otcmarkets.moonats.retransmission.link.v1.3.executionid", ftypes.UINT64, nil, nil, nil, "System generated day-unique execution identifier of this execution.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.firm_id = ProtoField.new("Firm Id", "otcmarkets.moonats.retransmission.link.v1.3.firmid", ftypes.STRING, nil, nil, nil, "Firm's MPID.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.full_closing_price = ProtoField.new("Full Closing Price", "otcmarkets.moonats.retransmission.link.v1.3.fullclosingprice", ftypes.DOUBLE, nil, nil, nil, "The calculated closing price. The long value represents the price scaled by 1,000,000 (6 decimal places).")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.last_seq_num = ProtoField.new("Last Seq Num", "otcmarkets.moonats.retransmission.link.v1.3.lastseqnum", ftypes.UINT32, nil, nil, nil, "Snapshot last sequence number to sync up with real time data. Start processing real time data from LastSeqNum + 1.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.last_update_milli = ProtoField.new("Last Update Milli", "otcmarkets.moonats.retransmission.link.v1.3.lastupdatemilli", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Milliseconds from UTC epoch.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.last_update_milli_utc = ProtoField.new("Last Update Milli", "otcmarkets.moonats.retransmission.link.v1.3.lastupdatemilli.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Milliseconds from UTC epoch.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.login_status = ProtoField.new("Login Status", "otcmarkets.moonats.retransmission.link.v1.3.loginstatus", ftypes.UINT8, nil, nil, nil, "Always \"Y\". If it is an invalid userid, system will close socket after 5 seconds without sending back a login response. Field renamed from \"Status\" in the PDF to disambiguate from sibling Status fields.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.message_size = ProtoField.new("Message Size", "otcmarkets.moonats.retransmission.link.v1.3.messagesize", ftypes.UINT16, nil, nil, nil, "Size of message plus header size in bytes")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.message_type = ProtoField.new("Message Type", "otcmarkets.moonats.retransmission.link.v1.3.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying this message type")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.moc_shares_unmatched = ProtoField.new("Moc Shares Unmatched", "otcmarkets.moonats.retransmission.link.v1.3.mocsharesunmatched", ftypes.STRING, nil, nil, nil, "Indicates if any MOC shares are left unmatched.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.next_sequence_number = ProtoField.new("Next Sequence Number", "otcmarkets.moonats.retransmission.link.v1.3.nextsequencenumber", ftypes.UINT32, nil, nil, nil, "Sequence Number that you should use when recovery starts. If set to 0, sequence number will not reset. Only set when Recovery Type is 'S'.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.number_of_messages = ProtoField.new("Number Of Messages", "otcmarkets.moonats.retransmission.link.v1.3.numberofmessages", ftypes.UINT32, nil, nil, nil, "Number of messages requested. -1 to indicate all messages up to date.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.ocio_only_closing_price = ProtoField.new("Ocio Only Closing Price", "otcmarkets.moonats.retransmission.link.v1.3.ocioonlyclosingprice", ftypes.DOUBLE, nil, nil, nil, "The calculated closing price without Day / extended Day orders. The long value represents the price scaled by 1,000,000 (6 decimal places).")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.order_flags = ProtoField.new("Order Flags", "otcmarkets.moonats.retransmission.link.v1.3.orderflags", ftypes.UINT16, nil, nil, nil, "TBD.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.order_id = ProtoField.new("Order Id", "otcmarkets.moonats.retransmission.link.v1.3.orderid", ftypes.STRING, nil, nil, nil, "Day-specific identifier assigned to this order. The Order ID consists of 14 alphanumeric characters; use the first 12 characters and convert them from base-36 to a 64-bit integer.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.password = ProtoField.new("Password", "otcmarkets.moonats.retransmission.link.v1.3.password", ftypes.STRING, nil, nil, nil, "Password assigned by system.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.piggyback_flag = ProtoField.new("Piggyback Flag", "otcmarkets.moonats.retransmission.link.v1.3.piggybackflag", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001, "15c2-11 \"PiggyBack\" exempt security status flag.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.price = ProtoField.new("Price", "otcmarkets.moonats.retransmission.link.v1.3.price", ftypes.DOUBLE, nil, nil, nil, "The limit order price. The long value represents the price scaled by 1,000,000 (6 decimal places).")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.qib_only_144_a = ProtoField.new("Qib Only 144 A", "otcmarkets.moonats.retransmission.link.v1.3.qibonly144a", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004, "\"144A QIB Only\" in the PDF. Indicates that the security may only be purchased or sold by Qualified Institutional Buyers (QIBs) or agents acting on behalf of QIBs.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.quantity = ProtoField.new("Quantity", "otcmarkets.moonats.retransmission.link.v1.3.quantity", ftypes.UINT32, nil, nil, nil, "Number of shares being added to the book.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.recovery_start_time = ProtoField.new("Recovery Start Time", "otcmarkets.moonats.retransmission.link.v1.3.recoverystarttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Expected time recovery spin will start.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.recovery_start_time_utc = ProtoField.new("Recovery Start Time", "otcmarkets.moonats.retransmission.link.v1.3.recoverystarttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Expected time recovery spin will start.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.recovery_type = ProtoField.new("Recovery Type", "otcmarkets.moonats.retransmission.link.v1.3.recoverytype", ftypes.UINT8, nil, nil, nil, "Recovery event type.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.remaining_quantity = ProtoField.new("Remaining Quantity", "otcmarkets.moonats.retransmission.link.v1.3.remainingquantity", ftypes.UINT32, nil, nil, nil, "Number of shares remaining after the execution. Will be zero if fully filled.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.reporting_status = ProtoField.new("Reporting Status", "otcmarkets.moonats.retransmission.link.v1.3.reportingstatus", ftypes.STRING, nil, nil, nil, "Reporting status of the security.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.reserved_11 = ProtoField.new("Reserved 11", "otcmarkets.moonats.retransmission.link.v1.3.reserved11", ftypes.UINT16, nil, base.DEC, 0xFFE0, "Reserved.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.reserved_binary_long_8 = ProtoField.new("Reserved Binary Long 8", "otcmarkets.moonats.retransmission.link.v1.3.reservedbinarylong8", ftypes.UINT64, nil, nil, nil, "Reserved.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.retran_via_tcp = ProtoField.new("Retran Via Tcp", "otcmarkets.moonats.retransmission.link.v1.3.retranviatcp", ftypes.UINT8, nil, nil, nil, "\"Y\" - sent back on the same TCP channel.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.retransmission_status = ProtoField.new("Retransmission Status", "otcmarkets.moonats.retransmission.link.v1.3.retransmissionstatus", ftypes.UINT8, nil, nil, nil, "\"Y\" - retransmission will follow as requested. \"N\" - request ignored. Field renamed from \"Status\" in the PDF to disambiguate from sibling Status fields.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.security_action = ProtoField.new("Security Action", "otcmarkets.moonats.retransmission.link.v1.3.securityaction", ftypes.UINT8, nil, nil, nil, "Security action.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.security_flags = ProtoField.new("Security Flags", "otcmarkets.moonats.retransmission.link.v1.3.securityflags", ftypes.STRING, nil, nil, nil, "This flag notes security level attributes and is only included in the Security Message.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.security_id = ProtoField.new("Security Id", "otcmarkets.moonats.retransmission.link.v1.3.securityid", ftypes.UINT32, nil, nil, nil, "Unique security ID issued by OTC Markets.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.security_status = ProtoField.new("Security Status", "otcmarkets.moonats.retransmission.link.v1.3.securitystatus", ftypes.STRING, nil, nil, nil, "Security trading status.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.session_time = ProtoField.new("Session Time", "otcmarkets.moonats.retransmission.link.v1.3.sessiontime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "\"Time\" in the PDF, renamed to disambiguate from the 4-byte midnight \"Time\" field used in other messages. Milliseconds since UTC epoch.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.session_time_utc = ProtoField.new("Session Time", "otcmarkets.moonats.retransmission.link.v1.3.sessiontime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "\"Time\" in the PDF, renamed to disambiguate from the 4-byte midnight \"Time\" field used in other messages. Milliseconds since UTC epoch.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.side_indicator = ProtoField.new("Side Indicator", "otcmarkets.moonats.retransmission.link.v1.3.sideindicator", ftypes.STRING, nil, nil, nil, "\"B\" = Buy Order, \"S\" = Sell Order.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.spin_end_time_milli = ProtoField.new("Spin End Time Milli", "otcmarkets.moonats.retransmission.link.v1.3.spinendtimemilli", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Milliseconds since UTC epoch.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.spin_end_time_milli_utc = ProtoField.new("Spin End Time Milli", "otcmarkets.moonats.retransmission.link.v1.3.spinendtimemilli.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Milliseconds since UTC epoch.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.spin_last_seq_num = ProtoField.new("Spin Last Seq Num", "otcmarkets.moonats.retransmission.link.v1.3.spinlastseqnum", ftypes.UINT32, nil, nil, nil, "Ignore, not used.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.spin_msg_ct = ProtoField.new("Spin Msg Ct", "otcmarkets.moonats.retransmission.link.v1.3.spinmsgct", ftypes.UINT32, nil, nil, nil, "Total messages in spin.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.spin_start_time_milli = ProtoField.new("Spin Start Time Milli", "otcmarkets.moonats.retransmission.link.v1.3.spinstarttimemilli", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Milliseconds since UTC epoch.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.spin_start_time_milli_utc = ProtoField.new("Spin Start Time Milli", "otcmarkets.moonats.retransmission.link.v1.3.spinstarttimemilli.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Milliseconds since UTC epoch.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.spin_status = ProtoField.new("Spin Status", "otcmarkets.moonats.retransmission.link.v1.3.spinstatus", ftypes.UINT8, nil, nil, nil, "\"S\" Start of Spin or \"E\" End of Spin. Field renamed from \"Status\" in the PDF to disambiguate from sibling Status fields.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.spin_type = ProtoField.new("Spin Type", "otcmarkets.moonats.retransmission.link.v1.3.spintype", ftypes.UINT8, nil, nil, nil, "Spin type.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.start_sequence = ProtoField.new("Start Sequence", "otcmarkets.moonats.retransmission.link.v1.3.startsequence", ftypes.UINT32, nil, nil, nil, "Start sequence number.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.symbol = ProtoField.new("Symbol", "otcmarkets.moonats.retransmission.link.v1.3.symbol", ftypes.STRING, nil, nil, nil, "Ticker symbol.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.tier = ProtoField.new("Tier", "otcmarkets.moonats.retransmission.link.v1.3.tier", ftypes.UINT8, nil, nil, nil, "The market tier assigned by OTC Markets Group.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.time = ProtoField.new("Time", "otcmarkets.moonats.retransmission.link.v1.3.time", ftypes.UINT32, nil, nil, nil, "Milliseconds from midnight.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.trading_session = ProtoField.new("Trading Session", "otcmarkets.moonats.retransmission.link.v1.3.tradingsession", ftypes.UINT8, nil, nil, nil, "Trading session indicator.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.unsolicited = ProtoField.new("Unsolicited", "otcmarkets.moonats.retransmission.link.v1.3.unsolicited", ftypes.STRING, nil, nil, nil, "\"Y\" = Unsolicited, \"N\" = Not Unsolicited.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.unsolicited_only_flag = ProtoField.new("Unsolicited Only Flag", "otcmarkets.moonats.retransmission.link.v1.3.unsolicitedonlyflag", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008, "Indicates if a security may only be quoted Unsolicited.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.user_id = ProtoField.new("User Id", "otcmarkets.moonats.retransmission.link.v1.3.userid", ftypes.STRING, nil, nil, nil, "User id assigned by system.")

-- OtcMarkets MoonAts Retransmission Link 1.3 Framing
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.message = ProtoField.new("Message", "otcmarkets.moonats.retransmission.link.v1.3.message", ftypes.STRING, nil, nil, nil, "MoonAts Tcp Recovery Message")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.message_header = ProtoField.new("Message Header", "otcmarkets.moonats.retransmission.link.v1.3.messageheader", ftypes.STRING, nil, nil, nil, "MoonAts Tcp Message Header")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.packet = ProtoField.new("Packet", "otcmarkets.moonats.retransmission.link.v1.3.packet", ftypes.STRING, nil, nil, nil, "MoonAts Tcp Recovery Packet")

-- OtcMarkets MoonAts Retransmission 1.3 Application Messages
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.end_of_spin_message = ProtoField.new("End Of Spin Message", "otcmarkets.moonats.retransmission.link.v1.3.endofspinmessage", ftypes.STRING, nil, nil, nil, "Appears within the TCP spin response cycle (between Spin Response 'S' and 'E') and also on the UDP multicast feeds at the daily spin-out. Indicates the end of a spin message cycle.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.enhanced_spin_request_message = ProtoField.new("Enhanced Spin Request Message", "otcmarkets.moonats.retransmission.link.v1.3.enhancedspinrequestmessage", ftypes.STRING, nil, nil, nil, "\"t\". Request an enhanced spin which includes a last-sequence-number marker for syncing real time data.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.enhanced_spin_response_message = ProtoField.new("Enhanced Spin Response Message", "otcmarkets.moonats.retransmission.link.v1.3.enhancedspinresponsemessage", ftypes.STRING, nil, nil, nil, "\"d\". The server will send an Enhanced Spin Response (\"d\") with status Start of Spin (\"S\"). It will then transmit Trading Session, Security, Orders or TOB, etc., followed by another Enhanced Spin Response (\"d\") with status End of Spin (\"E\"). Ignore any Heartbeat messages. Spin messages are always returned to the same TCP socket from where they originated.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "otcmarkets.moonats.retransmission.link.v1.3.heartbeatmessage", ftypes.STRING, nil, nil, nil, "\"h\". After login successful, FI will send a client a heartbeat once every 60 seconds. If there is no heartbeat from client for more than 5 minutes, system will disconnect.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.imbalance_message = ProtoField.new("Imbalance Message", "otcmarkets.moonats.retransmission.link.v1.3.imbalancemessage", ftypes.STRING, nil, nil, nil, "Appears in the TCP spin response payload. Not available in the Overnight TradingSession.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.login_request_message = ProtoField.new("Login Request Message", "otcmarkets.moonats.retransmission.link.v1.3.loginrequestmessage", ftypes.STRING, nil, nil, nil, "\"l\" (lowercase L). Logon message is the first message required to send to the server once a connection is established. At minimum, the firm and user id should be provided.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.login_response_message = ProtoField.new("Login Response Message", "otcmarkets.moonats.retransmission.link.v1.3.loginresponsemessage", ftypes.STRING, nil, nil, nil, "\"a\". The Login Response Message is sent to a client's response to a TCP/IP Login Message. The status field is used to reflect an accepted login or the reason the session was not accepted. If login fails, the TCP/IP connection will be dropped.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.order_add_message = ProtoField.new("Order Add Message", "otcmarkets.moonats.retransmission.link.v1.3.orderaddmessage", ftypes.STRING, nil, nil, nil, "Appears in the TCP spin response payload during DOB replay. Indicates a new order added to the book.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.order_delete_message = ProtoField.new("Order Delete Message", "otcmarkets.moonats.retransmission.link.v1.3.orderdeletemessage", ftypes.STRING, nil, nil, nil, "Appears in the TCP spin response payload during DOB replay. Indicates an existing order has been deleted from the book.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.order_execution_message = ProtoField.new("Order Execution Message", "otcmarkets.moonats.retransmission.link.v1.3.orderexecutionmessage", ftypes.STRING, nil, nil, nil, "Appears in the TCP spin response payload during DOB replay. Published when all or some of the displayed quantity of a previously published order executes at the published price.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.order_execution_with_price_message = ProtoField.new("Order Execution With Price Message", "otcmarkets.moonats.retransmission.link.v1.3.orderexecutionwithpricemessage", ftypes.STRING, nil, nil, nil, "Appears in the TCP spin response payload during DOB replay. Published when all or some of the displayed quantity of a previously published order executes at a price different than the published price.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.order_update_message = ProtoField.new("Order Update Message", "otcmarkets.moonats.retransmission.link.v1.3.orderupdatemessage", ftypes.STRING, nil, nil, nil, "Appears in the TCP spin response payload during DOB replay. Indicates an existing order has been modified.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "otcmarkets.moonats.retransmission.link.v1.3.retransmissionrequestmessage", ftypes.STRING, nil, nil, nil, "\"r\". Request retransmission of a range of messages.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.retransmission_response_message = ProtoField.new("Retransmission Response Message", "otcmarkets.moonats.retransmission.link.v1.3.retransmissionresponsemessage", ftypes.STRING, nil, nil, nil, "\"b\". Response to a Retransmission Request. The replay server sends a heartbeat message every second. If the server replay response to a request takes too much time, then it is up to the client to either wait for a few heartbeats, or arbitrary time, then disconnect and send another replay request.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.security_message = ProtoField.new("Security Message", "otcmarkets.moonats.retransmission.link.v1.3.securitymessage", ftypes.STRING, nil, nil, nil, "Appears in the TCP spin response payload (and on all UDP channels). Provides basic security attribute information for all OTC equity securities.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.spin_request_message = ProtoField.new("Spin Request Message", "otcmarkets.moonats.retransmission.link.v1.3.spinrequestmessage", ftypes.STRING, nil, nil, nil, "\"s\". Request a refresh spin of state from the server.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.spin_response_message = ProtoField.new("Spin Response Message", "otcmarkets.moonats.retransmission.link.v1.3.spinresponsemessage", ftypes.STRING, nil, nil, nil, "\"c\". The server will send a Spin Response (\"c\") with status Start of Spin (\"S\"). It will then transmit Trading Session, Security, Orders or TOB, etc., followed by another Spin Response (\"c\") with status End of Spin (\"E\"). Ignore any Heartbeat messages. Spin messages are always returned to the same TCP socket from where they originated.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.start_of_spin_message = ProtoField.new("Start Of Spin Message", "otcmarkets.moonats.retransmission.link.v1.3.startofspinmessage", ftypes.STRING, nil, nil, nil, "Appears within the TCP spin response cycle (between Spin Response 'S' and 'E') and also on the UDP multicast feeds at the daily spin-out. Indicates the beginning of a spin message cycle.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.system_recovery_event_message = ProtoField.new("System Recovery Event Message", "otcmarkets.moonats.retransmission.link.v1.3.systemrecoveryeventmessage", ftypes.STRING, nil, nil, nil, "System Recovery event. The first event (type 'S') instructs clients to prepare and reset caches; clients must clean all cached state. A second event (type 'B') indicates recovery begins, after which the system performs a spin for all symbols and open orders.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.top_of_book_message = ProtoField.new("Top Of Book Message", "otcmarkets.moonats.retransmission.link.v1.3.topofbookmessage", ftypes.STRING, nil, nil, nil, "Appears in the TCP spin response payload during TOB replay. Provides best bid and offer aggregated top-of-book.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.trade_message = ProtoField.new("Trade Message", "otcmarkets.moonats.retransmission.link.v1.3.trademessage", ftypes.STRING, nil, nil, nil, "Appears in the TCP spin response payload during DOB replay. Published when non-displayed quantity of a previously published reserve order executes or when an order executes that is less than Min Quote Size and does not currently have an active Order Add message.")
omi_otcmarkets_moonats_retransmission_link_v1_3.fields.trading_session_message = ProtoField.new("Trading Session Message", "otcmarkets.moonats.retransmission.link.v1.3.tradingsessionmessage", ftypes.STRING, nil, nil, nil, "Appears in the TCP spin response payload (and on all UDP channels). Sent at the start of each MOON trading session: Order Acceptance at 7:30 PM, Market Open at 8:00 PM, Market Close at 4 AM.")

-----------------------------------------------------------------------
-- OtcMarkets MoonAts Retransmission Link 1.3 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
otcmarkets_moonats_retransmission_link_v1_3.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- OtcMarkets MoonAts Retransmission Link 1.3 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true

-- Register OtcMarkets MoonAts Retransmission Link 1.3 Show Options
omi_otcmarkets_moonats_retransmission_link_v1_3.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_otcmarkets_moonats_retransmission_link_v1_3.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_otcmarkets_moonats_retransmission_link_v1_3.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

omi_otcmarkets_moonats_retransmission_link_v1_3.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_otcmarkets_moonats_retransmission_link_v1_3.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_otcmarkets_moonats_retransmission_link_v1_3.prefs.show_application_messages then
    show.application_messages = omi_otcmarkets_moonats_retransmission_link_v1_3.prefs.show_application_messages
  end
  if show.headers ~= omi_otcmarkets_moonats_retransmission_link_v1_3.prefs.show_headers then
    show.headers = omi_otcmarkets_moonats_retransmission_link_v1_3.prefs.show_headers
  end
  if show.structs ~= omi_otcmarkets_moonats_retransmission_link_v1_3.prefs.show_structs then
    show.structs = omi_otcmarkets_moonats_retransmission_link_v1_3.prefs.show_structs
  end
  if otcmarkets_moonats_retransmission_link_v1_3.absolute_time_base ~= omi_otcmarkets_moonats_retransmission_link_v1_3.prefs.absolute_time_base then
    otcmarkets_moonats_retransmission_link_v1_3.absolute_time_base = omi_otcmarkets_moonats_retransmission_link_v1_3.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- OtcMarkets MoonAts Retransmission Link 1.3 Fields
-----------------------------------------------------------------------

-- Ask Price
otcmarkets_moonats_retransmission_link_v1_3.ask_price = {}

-- Size: Ask Price
otcmarkets_moonats_retransmission_link_v1_3.ask_price.size = 8

-- Display: Ask Price
otcmarkets_moonats_retransmission_link_v1_3.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
otcmarkets_moonats_retransmission_link_v1_3.ask_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Ask Price
otcmarkets_moonats_retransmission_link_v1_3.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.ask_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = otcmarkets_moonats_retransmission_link_v1_3.ask_price.translate(raw)
  local display = otcmarkets_moonats_retransmission_link_v1_3.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Volume
otcmarkets_moonats_retransmission_link_v1_3.ask_volume = {}

-- Size: Ask Volume
otcmarkets_moonats_retransmission_link_v1_3.ask_volume.size = 4

-- Display: Ask Volume
otcmarkets_moonats_retransmission_link_v1_3.ask_volume.display = function(value)
  return "Ask Volume: "..value
end

-- Dissect: Ask Volume
otcmarkets_moonats_retransmission_link_v1_3.ask_volume.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.ask_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.ask_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.ask_volume, range, value, display)

  return offset + length, value
end

-- Asset Class
otcmarkets_moonats_retransmission_link_v1_3.asset_class = {}

-- Size: Asset Class
otcmarkets_moonats_retransmission_link_v1_3.asset_class.size = 1

-- Display: Asset Class
otcmarkets_moonats_retransmission_link_v1_3.asset_class.labels = {
  [1] = "Asset Class: Equity (1)",
  [2] = "Asset Class: Fixed Income (2)",
}

otcmarkets_moonats_retransmission_link_v1_3.asset_class.display = function(value)
  return otcmarkets_moonats_retransmission_link_v1_3.asset_class.labels[value] or "Asset Class: Unknown("..value..")"
end

-- Dissect: Asset Class
otcmarkets_moonats_retransmission_link_v1_3.asset_class.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.asset_class.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.asset_class.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.asset_class, range, value, display)

  return offset + length, value
end

-- Bid Price
otcmarkets_moonats_retransmission_link_v1_3.bid_price = {}

-- Size: Bid Price
otcmarkets_moonats_retransmission_link_v1_3.bid_price.size = 8

-- Display: Bid Price
otcmarkets_moonats_retransmission_link_v1_3.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
otcmarkets_moonats_retransmission_link_v1_3.bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Price
otcmarkets_moonats_retransmission_link_v1_3.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = otcmarkets_moonats_retransmission_link_v1_3.bid_price.translate(raw)
  local display = otcmarkets_moonats_retransmission_link_v1_3.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Volume
otcmarkets_moonats_retransmission_link_v1_3.bid_volume = {}

-- Size: Bid Volume
otcmarkets_moonats_retransmission_link_v1_3.bid_volume.size = 4

-- Display: Bid Volume
otcmarkets_moonats_retransmission_link_v1_3.bid_volume.display = function(value)
  return "Bid Volume: "..value
end

-- Dissect: Bid Volume
otcmarkets_moonats_retransmission_link_v1_3.bid_volume.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.bid_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.bid_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.bid_volume, range, value, display)

  return offset + length, value
end

-- Client Identifier
otcmarkets_moonats_retransmission_link_v1_3.client_identifier = {}

-- Size: Client Identifier
otcmarkets_moonats_retransmission_link_v1_3.client_identifier.size = 4

-- Display: Client Identifier
otcmarkets_moonats_retransmission_link_v1_3.client_identifier.display = function(value)
  return "Client Identifier: "..value
end

-- Dissect: Client Identifier
otcmarkets_moonats_retransmission_link_v1_3.client_identifier.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.client_identifier.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.client_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.client_identifier, range, value, display)

  return offset + length, value
end

-- Current Inside Closing Price
otcmarkets_moonats_retransmission_link_v1_3.current_inside_closing_price = {}

-- Size: Current Inside Closing Price
otcmarkets_moonats_retransmission_link_v1_3.current_inside_closing_price.size = 8

-- Display: Current Inside Closing Price
otcmarkets_moonats_retransmission_link_v1_3.current_inside_closing_price.display = function(value)
  return "Current Inside Closing Price: "..value
end

-- Translate: Current Inside Closing Price
otcmarkets_moonats_retransmission_link_v1_3.current_inside_closing_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Current Inside Closing Price
otcmarkets_moonats_retransmission_link_v1_3.current_inside_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.current_inside_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = otcmarkets_moonats_retransmission_link_v1_3.current_inside_closing_price.translate(raw)
  local display = otcmarkets_moonats_retransmission_link_v1_3.current_inside_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.current_inside_closing_price, range, value, display)

  return offset + length, value
end

-- Current Inside Imbalance Quantity
otcmarkets_moonats_retransmission_link_v1_3.current_inside_imbalance_quantity = {}

-- Size: Current Inside Imbalance Quantity
otcmarkets_moonats_retransmission_link_v1_3.current_inside_imbalance_quantity.size = 4

-- Display: Current Inside Imbalance Quantity
otcmarkets_moonats_retransmission_link_v1_3.current_inside_imbalance_quantity.display = function(value)
  return "Current Inside Imbalance Quantity: "..value
end

-- Dissect: Current Inside Imbalance Quantity
otcmarkets_moonats_retransmission_link_v1_3.current_inside_imbalance_quantity.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.current_inside_imbalance_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.current_inside_imbalance_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.current_inside_imbalance_quantity, range, value, display)

  return offset + length, value
end

-- Current Inside Imbalance Side
otcmarkets_moonats_retransmission_link_v1_3.current_inside_imbalance_side = {}

-- Size: Current Inside Imbalance Side
otcmarkets_moonats_retransmission_link_v1_3.current_inside_imbalance_side.size = 1

-- Display: Current Inside Imbalance Side
otcmarkets_moonats_retransmission_link_v1_3.current_inside_imbalance_side.labels = {
  ["B"] = "Current Inside Imbalance Side: Buy Side (B)",
  ["S"] = "Current Inside Imbalance Side: Sell Side (S)",
  ["N"] = "Current Inside Imbalance Side: No Imbalance (N)",
  ["O"] = "Current Inside Imbalance Side: No Marketable Orders (O)",
}

otcmarkets_moonats_retransmission_link_v1_3.current_inside_imbalance_side.display = function(value)
  return otcmarkets_moonats_retransmission_link_v1_3.current_inside_imbalance_side.labels[value] or "Current Inside Imbalance Side: Unknown("..value..")"
end

-- Dissect: Current Inside Imbalance Side
otcmarkets_moonats_retransmission_link_v1_3.current_inside_imbalance_side.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.current_inside_imbalance_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_moonats_retransmission_link_v1_3.current_inside_imbalance_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.current_inside_imbalance_side, range, value, display)

  return offset + length, value
end

-- Current Inside Paired Shares
otcmarkets_moonats_retransmission_link_v1_3.current_inside_paired_shares = {}

-- Size: Current Inside Paired Shares
otcmarkets_moonats_retransmission_link_v1_3.current_inside_paired_shares.size = 4

-- Display: Current Inside Paired Shares
otcmarkets_moonats_retransmission_link_v1_3.current_inside_paired_shares.display = function(value)
  return "Current Inside Paired Shares: "..value
end

-- Dissect: Current Inside Paired Shares
otcmarkets_moonats_retransmission_link_v1_3.current_inside_paired_shares.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.current_inside_paired_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.current_inside_paired_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.current_inside_paired_shares, range, value, display)

  return offset + length, value
end

-- Deprecated
otcmarkets_moonats_retransmission_link_v1_3.deprecated = {}

-- Size: Deprecated
otcmarkets_moonats_retransmission_link_v1_3.deprecated.size = 4

-- Display: Deprecated
otcmarkets_moonats_retransmission_link_v1_3.deprecated.display = function(value)
  return "Deprecated: "..value
end

-- Dissect: Deprecated
otcmarkets_moonats_retransmission_link_v1_3.deprecated.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.deprecated.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.deprecated.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.deprecated, range, value, display)

  return offset + length, value
end

-- Enhanced Spin Status
otcmarkets_moonats_retransmission_link_v1_3.enhanced_spin_status = {}

-- Size: Enhanced Spin Status
otcmarkets_moonats_retransmission_link_v1_3.enhanced_spin_status.size = 1

-- Display: Enhanced Spin Status
otcmarkets_moonats_retransmission_link_v1_3.enhanced_spin_status.labels = {
  [83] = "Enhanced Spin Status: Start Of Spin (83)",
  [69] = "Enhanced Spin Status: End Of Spin (69)",
}

otcmarkets_moonats_retransmission_link_v1_3.enhanced_spin_status.display = function(value)
  return otcmarkets_moonats_retransmission_link_v1_3.enhanced_spin_status.labels[value] or "Enhanced Spin Status: Unknown("..value..")"
end

-- Dissect: Enhanced Spin Status
otcmarkets_moonats_retransmission_link_v1_3.enhanced_spin_status.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.enhanced_spin_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.enhanced_spin_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.enhanced_spin_status, range, value, display)

  return offset + length, value
end

-- Executed Quantity
otcmarkets_moonats_retransmission_link_v1_3.executed_quantity = {}

-- Size: Executed Quantity
otcmarkets_moonats_retransmission_link_v1_3.executed_quantity.size = 4

-- Display: Executed Quantity
otcmarkets_moonats_retransmission_link_v1_3.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
otcmarkets_moonats_retransmission_link_v1_3.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Id
otcmarkets_moonats_retransmission_link_v1_3.execution_id = {}

-- Size: Execution Id
otcmarkets_moonats_retransmission_link_v1_3.execution_id.size = 8

-- Display: Execution Id
otcmarkets_moonats_retransmission_link_v1_3.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
otcmarkets_moonats_retransmission_link_v1_3.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.execution_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_moonats_retransmission_link_v1_3.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Firm Id
otcmarkets_moonats_retransmission_link_v1_3.firm_id = {}

-- Size: Firm Id
otcmarkets_moonats_retransmission_link_v1_3.firm_id.size = 4

-- Display: Firm Id
otcmarkets_moonats_retransmission_link_v1_3.firm_id.display = function(value)
  return "Firm Id: "..value
end

-- Dissect: Firm Id
otcmarkets_moonats_retransmission_link_v1_3.firm_id.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.firm_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_moonats_retransmission_link_v1_3.firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Full Closing Price
otcmarkets_moonats_retransmission_link_v1_3.full_closing_price = {}

-- Size: Full Closing Price
otcmarkets_moonats_retransmission_link_v1_3.full_closing_price.size = 8

-- Display: Full Closing Price
otcmarkets_moonats_retransmission_link_v1_3.full_closing_price.display = function(value)
  return "Full Closing Price: "..value
end

-- Translate: Full Closing Price
otcmarkets_moonats_retransmission_link_v1_3.full_closing_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Full Closing Price
otcmarkets_moonats_retransmission_link_v1_3.full_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.full_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = otcmarkets_moonats_retransmission_link_v1_3.full_closing_price.translate(raw)
  local display = otcmarkets_moonats_retransmission_link_v1_3.full_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.full_closing_price, range, value, display)

  return offset + length, value
end

-- Last Seq Num
otcmarkets_moonats_retransmission_link_v1_3.last_seq_num = {}

-- Size: Last Seq Num
otcmarkets_moonats_retransmission_link_v1_3.last_seq_num.size = 4

-- Display: Last Seq Num
otcmarkets_moonats_retransmission_link_v1_3.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
otcmarkets_moonats_retransmission_link_v1_3.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Last Update Milli
otcmarkets_moonats_retransmission_link_v1_3.last_update_milli = {}

-- Size: Last Update Milli
otcmarkets_moonats_retransmission_link_v1_3.last_update_milli.size = 8

-- Dissect: Last Update Milli
otcmarkets_moonats_retransmission_link_v1_3.last_update_milli.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.last_update_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_otcmarkets_moonats_retransmission_link_v1_3.fields.last_update_milli
  if otcmarkets_moonats_retransmission_link_v1_3.absolute_time_base == 1 then field = omi_otcmarkets_moonats_retransmission_link_v1_3.fields.last_update_milli_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Login Status
otcmarkets_moonats_retransmission_link_v1_3.login_status = {}

-- Size: Login Status
otcmarkets_moonats_retransmission_link_v1_3.login_status.size = 1

-- Display: Login Status
otcmarkets_moonats_retransmission_link_v1_3.login_status.labels = {
  [89] = "Login Status: Accepted (89)",
}

otcmarkets_moonats_retransmission_link_v1_3.login_status.display = function(value)
  return otcmarkets_moonats_retransmission_link_v1_3.login_status.labels[value] or "Login Status: Unknown("..value..")"
end

-- Dissect: Login Status
otcmarkets_moonats_retransmission_link_v1_3.login_status.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.login_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.login_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.login_status, range, value, display)

  return offset + length, value
end

-- Message Size
otcmarkets_moonats_retransmission_link_v1_3.message_size = {}

-- Size: Message Size
otcmarkets_moonats_retransmission_link_v1_3.message_size.size = 2

-- Display: Message Size
otcmarkets_moonats_retransmission_link_v1_3.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
otcmarkets_moonats_retransmission_link_v1_3.message_size.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.message_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
otcmarkets_moonats_retransmission_link_v1_3.message_type = {}

-- Size: Message Type
otcmarkets_moonats_retransmission_link_v1_3.message_type.size = 1

-- Display: Message Type
otcmarkets_moonats_retransmission_link_v1_3.message_type.labels = {
  [11] = "Message Type: Start Of Spin Message (11)",
  [12] = "Message Type: End Of Spin Message (12)",
  [20] = "Message Type: Trading Session Message (20)",
  [9] = "Message Type: Security Message (9)",
  [21] = "Message Type: Order Add Message (21)",
  [22] = "Message Type: Order Update Message (22)",
  [23] = "Message Type: Order Delete Message (23)",
  [24] = "Message Type: Order Execution Message (24)",
  [25] = "Message Type: Order Execution With Price Message (25)",
  [26] = "Message Type: Trade Message (26)",
  [27] = "Message Type: Top Of Book Message (27)",
  [28] = "Message Type: Imbalance Message (28)",
  [74] = "Message Type: System Recovery Event Message (74)",
  [108] = "Message Type: Login Request Message (108)",
  [97] = "Message Type: Login Response Message (97)",
  [114] = "Message Type: Retransmission Request Message (114)",
  [98] = "Message Type: Retransmission Response Message (98)",
  [115] = "Message Type: Spin Request Message (115)",
  [99] = "Message Type: Spin Response Message (99)",
  [116] = "Message Type: Enhanced Spin Request Message (116)",
  [100] = "Message Type: Enhanced Spin Response Message (100)",
  [104] = "Message Type: Heartbeat Message (104)",
}

otcmarkets_moonats_retransmission_link_v1_3.message_type.display = function(value)
  return otcmarkets_moonats_retransmission_link_v1_3.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
otcmarkets_moonats_retransmission_link_v1_3.message_type.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.message_type, range, value, display)

  return offset + length, value
end

-- Moc Shares Unmatched
otcmarkets_moonats_retransmission_link_v1_3.moc_shares_unmatched = {}

-- Size: Moc Shares Unmatched
otcmarkets_moonats_retransmission_link_v1_3.moc_shares_unmatched.size = 1

-- Display: Moc Shares Unmatched
otcmarkets_moonats_retransmission_link_v1_3.moc_shares_unmatched.labels = {
  ["B"] = "Moc Shares Unmatched: Buy Moc Not Matched (B)",
  ["S"] = "Moc Shares Unmatched: Sell Moc Not Matched (S)",
  ["O"] = "Moc Shares Unmatched: No Moc Unmatched (O)",
}

otcmarkets_moonats_retransmission_link_v1_3.moc_shares_unmatched.display = function(value)
  return otcmarkets_moonats_retransmission_link_v1_3.moc_shares_unmatched.labels[value] or "Moc Shares Unmatched: Unknown("..value..")"
end

-- Dissect: Moc Shares Unmatched
otcmarkets_moonats_retransmission_link_v1_3.moc_shares_unmatched.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.moc_shares_unmatched.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_moonats_retransmission_link_v1_3.moc_shares_unmatched.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.moc_shares_unmatched, range, value, display)

  return offset + length, value
end

-- Next Sequence Number
otcmarkets_moonats_retransmission_link_v1_3.next_sequence_number = {}

-- Size: Next Sequence Number
otcmarkets_moonats_retransmission_link_v1_3.next_sequence_number.size = 4

-- Display: Next Sequence Number
otcmarkets_moonats_retransmission_link_v1_3.next_sequence_number.display = function(value)
  return "Next Sequence Number: "..value
end

-- Dissect: Next Sequence Number
otcmarkets_moonats_retransmission_link_v1_3.next_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.next_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.next_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.next_sequence_number, range, value, display)

  return offset + length, value
end

-- Number Of Messages
otcmarkets_moonats_retransmission_link_v1_3.number_of_messages = {}

-- Size: Number Of Messages
otcmarkets_moonats_retransmission_link_v1_3.number_of_messages.size = 4

-- Display: Number Of Messages
otcmarkets_moonats_retransmission_link_v1_3.number_of_messages.display = function(value)
  return "Number Of Messages: "..value
end

-- Dissect: Number Of Messages
otcmarkets_moonats_retransmission_link_v1_3.number_of_messages.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.number_of_messages.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.number_of_messages.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.number_of_messages, range, value, display)

  return offset + length, value
end

-- Ocio Only Closing Price
otcmarkets_moonats_retransmission_link_v1_3.ocio_only_closing_price = {}

-- Size: Ocio Only Closing Price
otcmarkets_moonats_retransmission_link_v1_3.ocio_only_closing_price.size = 8

-- Display: Ocio Only Closing Price
otcmarkets_moonats_retransmission_link_v1_3.ocio_only_closing_price.display = function(value)
  return "Ocio Only Closing Price: "..value
end

-- Translate: Ocio Only Closing Price
otcmarkets_moonats_retransmission_link_v1_3.ocio_only_closing_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Ocio Only Closing Price
otcmarkets_moonats_retransmission_link_v1_3.ocio_only_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.ocio_only_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = otcmarkets_moonats_retransmission_link_v1_3.ocio_only_closing_price.translate(raw)
  local display = otcmarkets_moonats_retransmission_link_v1_3.ocio_only_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.ocio_only_closing_price, range, value, display)

  return offset + length, value
end

-- Order Flags
otcmarkets_moonats_retransmission_link_v1_3.order_flags = {}

-- Size: Order Flags
otcmarkets_moonats_retransmission_link_v1_3.order_flags.size = 2

-- Display: Order Flags
otcmarkets_moonats_retransmission_link_v1_3.order_flags.display = function(value)
  return "Order Flags: "..value
end

-- Dissect: Order Flags
otcmarkets_moonats_retransmission_link_v1_3.order_flags.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.order_flags.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.order_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.order_flags, range, value, display)

  return offset + length, value
end

-- Order Id
otcmarkets_moonats_retransmission_link_v1_3.order_id = {}

-- Size: Order Id
otcmarkets_moonats_retransmission_link_v1_3.order_id.size = 14

-- Display: Order Id
otcmarkets_moonats_retransmission_link_v1_3.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
otcmarkets_moonats_retransmission_link_v1_3.order_id.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_moonats_retransmission_link_v1_3.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.order_id, range, value, display)

  return offset + length, value
end

-- Password
otcmarkets_moonats_retransmission_link_v1_3.password = {}

-- Size: Password
otcmarkets_moonats_retransmission_link_v1_3.password.size = 16

-- Display: Password
otcmarkets_moonats_retransmission_link_v1_3.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
otcmarkets_moonats_retransmission_link_v1_3.password.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_moonats_retransmission_link_v1_3.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.password, range, value, display)

  return offset + length, value
end

-- Price
otcmarkets_moonats_retransmission_link_v1_3.price = {}

-- Size: Price
otcmarkets_moonats_retransmission_link_v1_3.price.size = 8

-- Display: Price
otcmarkets_moonats_retransmission_link_v1_3.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
otcmarkets_moonats_retransmission_link_v1_3.price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
otcmarkets_moonats_retransmission_link_v1_3.price.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = otcmarkets_moonats_retransmission_link_v1_3.price.translate(raw)
  local display = otcmarkets_moonats_retransmission_link_v1_3.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
otcmarkets_moonats_retransmission_link_v1_3.quantity = {}

-- Size: Quantity
otcmarkets_moonats_retransmission_link_v1_3.quantity.size = 4

-- Display: Quantity
otcmarkets_moonats_retransmission_link_v1_3.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
otcmarkets_moonats_retransmission_link_v1_3.quantity.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.quantity, range, value, display)

  return offset + length, value
end

-- Recovery Start Time
otcmarkets_moonats_retransmission_link_v1_3.recovery_start_time = {}

-- Size: Recovery Start Time
otcmarkets_moonats_retransmission_link_v1_3.recovery_start_time.size = 8

-- Dissect: Recovery Start Time
otcmarkets_moonats_retransmission_link_v1_3.recovery_start_time.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.recovery_start_time.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_otcmarkets_moonats_retransmission_link_v1_3.fields.recovery_start_time
  if otcmarkets_moonats_retransmission_link_v1_3.absolute_time_base == 1 then field = omi_otcmarkets_moonats_retransmission_link_v1_3.fields.recovery_start_time_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Recovery Type
otcmarkets_moonats_retransmission_link_v1_3.recovery_type = {}

-- Size: Recovery Type
otcmarkets_moonats_retransmission_link_v1_3.recovery_type.size = 1

-- Display: Recovery Type
otcmarkets_moonats_retransmission_link_v1_3.recovery_type.labels = {
  [83] = "Recovery Type: Scheduling Start (83)",
  [66] = "Recovery Type: Recovery Begins (66)",
}

otcmarkets_moonats_retransmission_link_v1_3.recovery_type.display = function(value)
  return otcmarkets_moonats_retransmission_link_v1_3.recovery_type.labels[value] or "Recovery Type: Unknown("..value..")"
end

-- Dissect: Recovery Type
otcmarkets_moonats_retransmission_link_v1_3.recovery_type.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.recovery_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.recovery_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.recovery_type, range, value, display)

  return offset + length, value
end

-- Remaining Quantity
otcmarkets_moonats_retransmission_link_v1_3.remaining_quantity = {}

-- Size: Remaining Quantity
otcmarkets_moonats_retransmission_link_v1_3.remaining_quantity.size = 4

-- Display: Remaining Quantity
otcmarkets_moonats_retransmission_link_v1_3.remaining_quantity.display = function(value)
  return "Remaining Quantity: "..value
end

-- Dissect: Remaining Quantity
otcmarkets_moonats_retransmission_link_v1_3.remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.remaining_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.remaining_quantity, range, value, display)

  return offset + length, value
end

-- Reporting Status
otcmarkets_moonats_retransmission_link_v1_3.reporting_status = {}

-- Size: Reporting Status
otcmarkets_moonats_retransmission_link_v1_3.reporting_status.size = 1

-- Display: Reporting Status
otcmarkets_moonats_retransmission_link_v1_3.reporting_status.labels = {
  ["A"] = "Reporting Status: Alternative Reporting Standard (A)",
  ["B"] = "Reporting Status: Bank Thrift (B)",
  ["F"] = "Reporting Status: Sec Reporting (F)",
  ["G"] = "Reporting Status: International Reporting (G)",
  ["I"] = "Reporting Status: Insurance Company (I)",
  ["N"] = "Reporting Status: No Reporting (N)",
  ["O"] = "Reporting Status: Other Reporting Standard (O)",
  ["R"] = "Reporting Status: Finra Reporting (R)",
  ["V"] = "Reporting Status: Sec Reporting Investment Company (V)",
  ["W"] = "Reporting Status: Sec Reporting Reg A (W)",
}

otcmarkets_moonats_retransmission_link_v1_3.reporting_status.display = function(value)
  return otcmarkets_moonats_retransmission_link_v1_3.reporting_status.labels[value] or "Reporting Status: Unknown("..value..")"
end

-- Dissect: Reporting Status
otcmarkets_moonats_retransmission_link_v1_3.reporting_status.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.reporting_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_moonats_retransmission_link_v1_3.reporting_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.reporting_status, range, value, display)

  return offset + length, value
end

-- Reserved Binary Long 8
otcmarkets_moonats_retransmission_link_v1_3.reserved_binary_long_8 = {}

-- Size: Reserved Binary Long 8
otcmarkets_moonats_retransmission_link_v1_3.reserved_binary_long_8.size = 8

-- Display: Reserved Binary Long 8
otcmarkets_moonats_retransmission_link_v1_3.reserved_binary_long_8.display = function(value)
  return "Reserved Binary Long 8: "..value
end

-- Dissect: Reserved Binary Long 8
otcmarkets_moonats_retransmission_link_v1_3.reserved_binary_long_8.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.reserved_binary_long_8.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_moonats_retransmission_link_v1_3.reserved_binary_long_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.reserved_binary_long_8, range, value, display)

  return offset + length, value
end

-- Retran Via Tcp
otcmarkets_moonats_retransmission_link_v1_3.retran_via_tcp = {}

-- Size: Retran Via Tcp
otcmarkets_moonats_retransmission_link_v1_3.retran_via_tcp.size = 1

-- Display: Retran Via Tcp
otcmarkets_moonats_retransmission_link_v1_3.retran_via_tcp.labels = {
  [89] = "Retran Via Tcp: Same Tcp Channel (89)",
}

otcmarkets_moonats_retransmission_link_v1_3.retran_via_tcp.display = function(value)
  return otcmarkets_moonats_retransmission_link_v1_3.retran_via_tcp.labels[value] or "Retran Via Tcp: Unknown("..value..")"
end

-- Dissect: Retran Via Tcp
otcmarkets_moonats_retransmission_link_v1_3.retran_via_tcp.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.retran_via_tcp.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.retran_via_tcp.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.retran_via_tcp, range, value, display)

  return offset + length, value
end

-- Retransmission Status
otcmarkets_moonats_retransmission_link_v1_3.retransmission_status = {}

-- Size: Retransmission Status
otcmarkets_moonats_retransmission_link_v1_3.retransmission_status.size = 1

-- Display: Retransmission Status
otcmarkets_moonats_retransmission_link_v1_3.retransmission_status.labels = {
  [89] = "Retransmission Status: Will Follow (89)",
  [78] = "Retransmission Status: Request Ignored (78)",
}

otcmarkets_moonats_retransmission_link_v1_3.retransmission_status.display = function(value)
  return otcmarkets_moonats_retransmission_link_v1_3.retransmission_status.labels[value] or "Retransmission Status: Unknown("..value..")"
end

-- Dissect: Retransmission Status
otcmarkets_moonats_retransmission_link_v1_3.retransmission_status.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.retransmission_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.retransmission_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.retransmission_status, range, value, display)

  return offset + length, value
end

-- Security Action
otcmarkets_moonats_retransmission_link_v1_3.security_action = {}

-- Size: Security Action
otcmarkets_moonats_retransmission_link_v1_3.security_action.size = 1

-- Display: Security Action
otcmarkets_moonats_retransmission_link_v1_3.security_action.labels = {
  [1] = "Security Action: Update (1)",
  [2] = "Security Action: Add (2)",
  [3] = "Security Action: Delete (3)",
  [4] = "Security Action: Spin (4)",
}

otcmarkets_moonats_retransmission_link_v1_3.security_action.display = function(value)
  return otcmarkets_moonats_retransmission_link_v1_3.security_action.labels[value] or "Security Action: Unknown("..value..")"
end

-- Dissect: Security Action
otcmarkets_moonats_retransmission_link_v1_3.security_action.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.security_action.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.security_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.security_action, range, value, display)

  return offset + length, value
end

-- Security Id
otcmarkets_moonats_retransmission_link_v1_3.security_id = {}

-- Size: Security Id
otcmarkets_moonats_retransmission_link_v1_3.security_id.size = 4

-- Display: Security Id
otcmarkets_moonats_retransmission_link_v1_3.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
otcmarkets_moonats_retransmission_link_v1_3.security_id.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.security_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.security_id, range, value, display)

  return offset + length, value
end

-- Security Status
otcmarkets_moonats_retransmission_link_v1_3.security_status = {}

-- Size: Security Status
otcmarkets_moonats_retransmission_link_v1_3.security_status.size = 1

-- Display: Security Status
otcmarkets_moonats_retransmission_link_v1_3.security_status.labels = {
  ["A"] = "Security Status: Active (A)",
  ["Q"] = "Security Status: Quote Only (Q)",
  ["S"] = "Security Status: Suspended (S)",
  ["H"] = "Security Status: Halted (H)",
  ["I"] = "Security Status: Internal Halt (I)",
  ["R"] = "Security Status: Revoked (R)",
  ["D"] = "Security Status: Deleted (D)",
  ["X"] = "Security Status: Removed From Idqs (X)",
}

otcmarkets_moonats_retransmission_link_v1_3.security_status.display = function(value)
  return otcmarkets_moonats_retransmission_link_v1_3.security_status.labels[value] or "Security Status: Unknown("..value..")"
end

-- Dissect: Security Status
otcmarkets_moonats_retransmission_link_v1_3.security_status.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_moonats_retransmission_link_v1_3.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.security_status, range, value, display)

  return offset + length, value
end

-- Session Time
otcmarkets_moonats_retransmission_link_v1_3.session_time = {}

-- Size: Session Time
otcmarkets_moonats_retransmission_link_v1_3.session_time.size = 8

-- Dissect: Session Time
otcmarkets_moonats_retransmission_link_v1_3.session_time.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.session_time.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_otcmarkets_moonats_retransmission_link_v1_3.fields.session_time
  if otcmarkets_moonats_retransmission_link_v1_3.absolute_time_base == 1 then field = omi_otcmarkets_moonats_retransmission_link_v1_3.fields.session_time_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Side Indicator
otcmarkets_moonats_retransmission_link_v1_3.side_indicator = {}

-- Size: Side Indicator
otcmarkets_moonats_retransmission_link_v1_3.side_indicator.size = 1

-- Display: Side Indicator
otcmarkets_moonats_retransmission_link_v1_3.side_indicator.labels = {
  ["B"] = "Side Indicator: Buy Order (B)",
  ["S"] = "Side Indicator: Sell Order (S)",
}

otcmarkets_moonats_retransmission_link_v1_3.side_indicator.display = function(value)
  return otcmarkets_moonats_retransmission_link_v1_3.side_indicator.labels[value] or "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
otcmarkets_moonats_retransmission_link_v1_3.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_moonats_retransmission_link_v1_3.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Spin End Time Milli
otcmarkets_moonats_retransmission_link_v1_3.spin_end_time_milli = {}

-- Size: Spin End Time Milli
otcmarkets_moonats_retransmission_link_v1_3.spin_end_time_milli.size = 8

-- Dissect: Spin End Time Milli
otcmarkets_moonats_retransmission_link_v1_3.spin_end_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.spin_end_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_otcmarkets_moonats_retransmission_link_v1_3.fields.spin_end_time_milli
  if otcmarkets_moonats_retransmission_link_v1_3.absolute_time_base == 1 then field = omi_otcmarkets_moonats_retransmission_link_v1_3.fields.spin_end_time_milli_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Spin Last Seq Num
otcmarkets_moonats_retransmission_link_v1_3.spin_last_seq_num = {}

-- Size: Spin Last Seq Num
otcmarkets_moonats_retransmission_link_v1_3.spin_last_seq_num.size = 4

-- Display: Spin Last Seq Num
otcmarkets_moonats_retransmission_link_v1_3.spin_last_seq_num.display = function(value)
  return "Spin Last Seq Num: "..value
end

-- Dissect: Spin Last Seq Num
otcmarkets_moonats_retransmission_link_v1_3.spin_last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.spin_last_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.spin_last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.spin_last_seq_num, range, value, display)

  return offset + length, value
end

-- Spin Msg Ct
otcmarkets_moonats_retransmission_link_v1_3.spin_msg_ct = {}

-- Size: Spin Msg Ct
otcmarkets_moonats_retransmission_link_v1_3.spin_msg_ct.size = 4

-- Display: Spin Msg Ct
otcmarkets_moonats_retransmission_link_v1_3.spin_msg_ct.display = function(value)
  return "Spin Msg Ct: "..value
end

-- Dissect: Spin Msg Ct
otcmarkets_moonats_retransmission_link_v1_3.spin_msg_ct.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.spin_msg_ct.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.spin_msg_ct.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.spin_msg_ct, range, value, display)

  return offset + length, value
end

-- Spin Start Time Milli
otcmarkets_moonats_retransmission_link_v1_3.spin_start_time_milli = {}

-- Size: Spin Start Time Milli
otcmarkets_moonats_retransmission_link_v1_3.spin_start_time_milli.size = 8

-- Dissect: Spin Start Time Milli
otcmarkets_moonats_retransmission_link_v1_3.spin_start_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.spin_start_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_otcmarkets_moonats_retransmission_link_v1_3.fields.spin_start_time_milli
  if otcmarkets_moonats_retransmission_link_v1_3.absolute_time_base == 1 then field = omi_otcmarkets_moonats_retransmission_link_v1_3.fields.spin_start_time_milli_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Spin Status
otcmarkets_moonats_retransmission_link_v1_3.spin_status = {}

-- Size: Spin Status
otcmarkets_moonats_retransmission_link_v1_3.spin_status.size = 1

-- Display: Spin Status
otcmarkets_moonats_retransmission_link_v1_3.spin_status.labels = {
  [83] = "Spin Status: Start Of Spin (83)",
  [69] = "Spin Status: End Of Spin (69)",
}

otcmarkets_moonats_retransmission_link_v1_3.spin_status.display = function(value)
  return otcmarkets_moonats_retransmission_link_v1_3.spin_status.labels[value] or "Spin Status: Unknown("..value..")"
end

-- Dissect: Spin Status
otcmarkets_moonats_retransmission_link_v1_3.spin_status.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.spin_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.spin_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.spin_status, range, value, display)

  return offset + length, value
end

-- Spin Type
otcmarkets_moonats_retransmission_link_v1_3.spin_type = {}

-- Size: Spin Type
otcmarkets_moonats_retransmission_link_v1_3.spin_type.size = 1

-- Display: Spin Type
otcmarkets_moonats_retransmission_link_v1_3.spin_type.labels = {
  [1] = "Spin Type: Reference (1)",
}

otcmarkets_moonats_retransmission_link_v1_3.spin_type.display = function(value)
  return otcmarkets_moonats_retransmission_link_v1_3.spin_type.labels[value] or "Spin Type: Unknown("..value..")"
end

-- Dissect: Spin Type
otcmarkets_moonats_retransmission_link_v1_3.spin_type.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.spin_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.spin_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.spin_type, range, value, display)

  return offset + length, value
end

-- Start Sequence
otcmarkets_moonats_retransmission_link_v1_3.start_sequence = {}

-- Size: Start Sequence
otcmarkets_moonats_retransmission_link_v1_3.start_sequence.size = 4

-- Display: Start Sequence
otcmarkets_moonats_retransmission_link_v1_3.start_sequence.display = function(value)
  return "Start Sequence: "..value
end

-- Dissect: Start Sequence
otcmarkets_moonats_retransmission_link_v1_3.start_sequence.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.start_sequence.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.start_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.start_sequence, range, value, display)

  return offset + length, value
end

-- Symbol
otcmarkets_moonats_retransmission_link_v1_3.symbol = {}

-- Size: Symbol
otcmarkets_moonats_retransmission_link_v1_3.symbol.size = 14

-- Display: Symbol
otcmarkets_moonats_retransmission_link_v1_3.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
otcmarkets_moonats_retransmission_link_v1_3.symbol.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_moonats_retransmission_link_v1_3.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.symbol, range, value, display)

  return offset + length, value
end

-- Tier
otcmarkets_moonats_retransmission_link_v1_3.tier = {}

-- Size: Tier
otcmarkets_moonats_retransmission_link_v1_3.tier.size = 1

-- Display: Tier
otcmarkets_moonats_retransmission_link_v1_3.tier.labels = {
  [0] = "Tier: No Tier (0)",
}

otcmarkets_moonats_retransmission_link_v1_3.tier.display = function(value)
  return otcmarkets_moonats_retransmission_link_v1_3.tier.labels[value] or "Tier: Unknown("..value..")"
end

-- Dissect: Tier
otcmarkets_moonats_retransmission_link_v1_3.tier.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.tier.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.tier, range, value, display)

  return offset + length, value
end

-- Time
otcmarkets_moonats_retransmission_link_v1_3.time = {}

-- Size: Time
otcmarkets_moonats_retransmission_link_v1_3.time.size = 4

-- Display: Time
otcmarkets_moonats_retransmission_link_v1_3.time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if otcmarkets_moonats_retransmission_link_v1_3.timestamp_format == 0 then
    return "Time: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if otcmarkets_moonats_retransmission_link_v1_3.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = otcmarkets_moonats_retransmission_link_v1_3.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Time: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Time: "..os.date("%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Time
otcmarkets_moonats_retransmission_link_v1_3.time.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.time, range, value, display)

  return offset + length, value
end

-- Trading Session
otcmarkets_moonats_retransmission_link_v1_3.trading_session = {}

-- Size: Trading Session
otcmarkets_moonats_retransmission_link_v1_3.trading_session.size = 1

-- Display: Trading Session
otcmarkets_moonats_retransmission_link_v1_3.trading_session.labels = {
  [1] = "Trading Session: Order Acceptance (1)",
  [5] = "Trading Session: Market Close (5)",
  [6] = "Trading Session: Overnight (6)",
}

otcmarkets_moonats_retransmission_link_v1_3.trading_session.display = function(value)
  return otcmarkets_moonats_retransmission_link_v1_3.trading_session.labels[value] or "Trading Session: Unknown("..value..")"
end

-- Dissect: Trading Session
otcmarkets_moonats_retransmission_link_v1_3.trading_session.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.trading_session.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.trading_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.trading_session, range, value, display)

  return offset + length, value
end

-- Unsolicited
otcmarkets_moonats_retransmission_link_v1_3.unsolicited = {}

-- Size: Unsolicited
otcmarkets_moonats_retransmission_link_v1_3.unsolicited.size = 1

-- Display: Unsolicited
otcmarkets_moonats_retransmission_link_v1_3.unsolicited.labels = {
  ["Y"] = "Unsolicited: Unsolicited (Y)",
  ["N"] = "Unsolicited: Not Unsolicited (N)",
}

otcmarkets_moonats_retransmission_link_v1_3.unsolicited.display = function(value)
  return otcmarkets_moonats_retransmission_link_v1_3.unsolicited.labels[value] or "Unsolicited: Unknown("..value..")"
end

-- Dissect: Unsolicited
otcmarkets_moonats_retransmission_link_v1_3.unsolicited.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.unsolicited.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_moonats_retransmission_link_v1_3.unsolicited.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.unsolicited, range, value, display)

  return offset + length, value
end

-- User Id
otcmarkets_moonats_retransmission_link_v1_3.user_id = {}

-- Size: User Id
otcmarkets_moonats_retransmission_link_v1_3.user_id.size = 16

-- Display: User Id
otcmarkets_moonats_retransmission_link_v1_3.user_id.display = function(value)
  return "User Id: "..value
end

-- Dissect: User Id
otcmarkets_moonats_retransmission_link_v1_3.user_id.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_moonats_retransmission_link_v1_3.user_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_moonats_retransmission_link_v1_3.user_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.user_id, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect OtcMarkets MoonAts Retransmission Link 1.3
-----------------------------------------------------------------------

-- Heartbeat Message
otcmarkets_moonats_retransmission_link_v1_3.heartbeat_message = {}

-- Size: Heartbeat Message
otcmarkets_moonats_retransmission_link_v1_3.heartbeat_message.size =
  otcmarkets_moonats_retransmission_link_v1_3.client_identifier.size

-- Display: Heartbeat Message
otcmarkets_moonats_retransmission_link_v1_3.heartbeat_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Message
otcmarkets_moonats_retransmission_link_v1_3.heartbeat_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Identifier: Binary Integer
  index, client_identifier = otcmarkets_moonats_retransmission_link_v1_3.client_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Message
otcmarkets_moonats_retransmission_link_v1_3.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.heartbeat_message, buffer(offset, 0))
    local index = otcmarkets_moonats_retransmission_link_v1_3.heartbeat_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_moonats_retransmission_link_v1_3.heartbeat_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_moonats_retransmission_link_v1_3.heartbeat_message.fields(buffer, offset, packet, parent)
  end
end

-- Enhanced Spin Response Message
otcmarkets_moonats_retransmission_link_v1_3.enhanced_spin_response_message = {}

-- Size: Enhanced Spin Response Message
otcmarkets_moonats_retransmission_link_v1_3.enhanced_spin_response_message.size =
  otcmarkets_moonats_retransmission_link_v1_3.client_identifier.size + 
  otcmarkets_moonats_retransmission_link_v1_3.enhanced_spin_status.size + 
  otcmarkets_moonats_retransmission_link_v1_3.last_seq_num.size

-- Display: Enhanced Spin Response Message
otcmarkets_moonats_retransmission_link_v1_3.enhanced_spin_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enhanced Spin Response Message
otcmarkets_moonats_retransmission_link_v1_3.enhanced_spin_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Identifier: Binary Integer
  index, client_identifier = otcmarkets_moonats_retransmission_link_v1_3.client_identifier.dissect(buffer, index, packet, parent)

  -- Enhanced Spin Status: Binary Byte
  index, enhanced_spin_status = otcmarkets_moonats_retransmission_link_v1_3.enhanced_spin_status.dissect(buffer, index, packet, parent)

  -- Last Seq Num: Binary Integer
  index, last_seq_num = otcmarkets_moonats_retransmission_link_v1_3.last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enhanced Spin Response Message
otcmarkets_moonats_retransmission_link_v1_3.enhanced_spin_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.enhanced_spin_response_message, buffer(offset, 0))
    local index = otcmarkets_moonats_retransmission_link_v1_3.enhanced_spin_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_moonats_retransmission_link_v1_3.enhanced_spin_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_moonats_retransmission_link_v1_3.enhanced_spin_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Enhanced Spin Request Message
otcmarkets_moonats_retransmission_link_v1_3.enhanced_spin_request_message = {}

-- Size: Enhanced Spin Request Message
otcmarkets_moonats_retransmission_link_v1_3.enhanced_spin_request_message.size =
  otcmarkets_moonats_retransmission_link_v1_3.client_identifier.size

-- Display: Enhanced Spin Request Message
otcmarkets_moonats_retransmission_link_v1_3.enhanced_spin_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enhanced Spin Request Message
otcmarkets_moonats_retransmission_link_v1_3.enhanced_spin_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Identifier: Binary Integer
  index, client_identifier = otcmarkets_moonats_retransmission_link_v1_3.client_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enhanced Spin Request Message
otcmarkets_moonats_retransmission_link_v1_3.enhanced_spin_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.enhanced_spin_request_message, buffer(offset, 0))
    local index = otcmarkets_moonats_retransmission_link_v1_3.enhanced_spin_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_moonats_retransmission_link_v1_3.enhanced_spin_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_moonats_retransmission_link_v1_3.enhanced_spin_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Response Message
otcmarkets_moonats_retransmission_link_v1_3.spin_response_message = {}

-- Size: Spin Response Message
otcmarkets_moonats_retransmission_link_v1_3.spin_response_message.size =
  otcmarkets_moonats_retransmission_link_v1_3.client_identifier.size + 
  otcmarkets_moonats_retransmission_link_v1_3.spin_status.size

-- Display: Spin Response Message
otcmarkets_moonats_retransmission_link_v1_3.spin_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Response Message
otcmarkets_moonats_retransmission_link_v1_3.spin_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Identifier: Binary Integer
  index, client_identifier = otcmarkets_moonats_retransmission_link_v1_3.client_identifier.dissect(buffer, index, packet, parent)

  -- Spin Status: Binary Byte
  index, spin_status = otcmarkets_moonats_retransmission_link_v1_3.spin_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Response Message
otcmarkets_moonats_retransmission_link_v1_3.spin_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.spin_response_message, buffer(offset, 0))
    local index = otcmarkets_moonats_retransmission_link_v1_3.spin_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_moonats_retransmission_link_v1_3.spin_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_moonats_retransmission_link_v1_3.spin_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Request Message
otcmarkets_moonats_retransmission_link_v1_3.spin_request_message = {}

-- Size: Spin Request Message
otcmarkets_moonats_retransmission_link_v1_3.spin_request_message.size =
  otcmarkets_moonats_retransmission_link_v1_3.client_identifier.size

-- Display: Spin Request Message
otcmarkets_moonats_retransmission_link_v1_3.spin_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Request Message
otcmarkets_moonats_retransmission_link_v1_3.spin_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Identifier: Binary Integer
  index, client_identifier = otcmarkets_moonats_retransmission_link_v1_3.client_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Request Message
otcmarkets_moonats_retransmission_link_v1_3.spin_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.spin_request_message, buffer(offset, 0))
    local index = otcmarkets_moonats_retransmission_link_v1_3.spin_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_moonats_retransmission_link_v1_3.spin_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_moonats_retransmission_link_v1_3.spin_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Response Message
otcmarkets_moonats_retransmission_link_v1_3.retransmission_response_message = {}

-- Size: Retransmission Response Message
otcmarkets_moonats_retransmission_link_v1_3.retransmission_response_message.size =
  otcmarkets_moonats_retransmission_link_v1_3.start_sequence.size + 
  otcmarkets_moonats_retransmission_link_v1_3.number_of_messages.size + 
  otcmarkets_moonats_retransmission_link_v1_3.retransmission_status.size

-- Display: Retransmission Response Message
otcmarkets_moonats_retransmission_link_v1_3.retransmission_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Response Message
otcmarkets_moonats_retransmission_link_v1_3.retransmission_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Sequence: Binary Integer
  index, start_sequence = otcmarkets_moonats_retransmission_link_v1_3.start_sequence.dissect(buffer, index, packet, parent)

  -- Number Of Messages: Binary Integer
  index, number_of_messages = otcmarkets_moonats_retransmission_link_v1_3.number_of_messages.dissect(buffer, index, packet, parent)

  -- Retransmission Status: Binary Byte
  index, retransmission_status = otcmarkets_moonats_retransmission_link_v1_3.retransmission_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Response Message
otcmarkets_moonats_retransmission_link_v1_3.retransmission_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.retransmission_response_message, buffer(offset, 0))
    local index = otcmarkets_moonats_retransmission_link_v1_3.retransmission_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_moonats_retransmission_link_v1_3.retransmission_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_moonats_retransmission_link_v1_3.retransmission_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
otcmarkets_moonats_retransmission_link_v1_3.retransmission_request_message = {}

-- Size: Retransmission Request Message
otcmarkets_moonats_retransmission_link_v1_3.retransmission_request_message.size =
  otcmarkets_moonats_retransmission_link_v1_3.start_sequence.size + 
  otcmarkets_moonats_retransmission_link_v1_3.number_of_messages.size + 
  otcmarkets_moonats_retransmission_link_v1_3.retran_via_tcp.size

-- Display: Retransmission Request Message
otcmarkets_moonats_retransmission_link_v1_3.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
otcmarkets_moonats_retransmission_link_v1_3.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Sequence: Binary Integer
  index, start_sequence = otcmarkets_moonats_retransmission_link_v1_3.start_sequence.dissect(buffer, index, packet, parent)

  -- Number Of Messages: Binary Integer
  index, number_of_messages = otcmarkets_moonats_retransmission_link_v1_3.number_of_messages.dissect(buffer, index, packet, parent)

  -- Retran Via Tcp: Binary Byte
  index, retran_via_tcp = otcmarkets_moonats_retransmission_link_v1_3.retran_via_tcp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
otcmarkets_moonats_retransmission_link_v1_3.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.retransmission_request_message, buffer(offset, 0))
    local index = otcmarkets_moonats_retransmission_link_v1_3.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_moonats_retransmission_link_v1_3.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_moonats_retransmission_link_v1_3.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Response Message
otcmarkets_moonats_retransmission_link_v1_3.login_response_message = {}

-- Size: Login Response Message
otcmarkets_moonats_retransmission_link_v1_3.login_response_message.size =
  otcmarkets_moonats_retransmission_link_v1_3.user_id.size + 
  otcmarkets_moonats_retransmission_link_v1_3.login_status.size

-- Display: Login Response Message
otcmarkets_moonats_retransmission_link_v1_3.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
otcmarkets_moonats_retransmission_link_v1_3.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: Printable ASCII
  index, user_id = otcmarkets_moonats_retransmission_link_v1_3.user_id.dissect(buffer, index, packet, parent)

  -- Login Status: Binary Byte
  index, login_status = otcmarkets_moonats_retransmission_link_v1_3.login_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response Message
otcmarkets_moonats_retransmission_link_v1_3.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.login_response_message, buffer(offset, 0))
    local index = otcmarkets_moonats_retransmission_link_v1_3.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_moonats_retransmission_link_v1_3.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_moonats_retransmission_link_v1_3.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Message
otcmarkets_moonats_retransmission_link_v1_3.login_request_message = {}

-- Size: Login Request Message
otcmarkets_moonats_retransmission_link_v1_3.login_request_message.size =
  otcmarkets_moonats_retransmission_link_v1_3.user_id.size + 
  otcmarkets_moonats_retransmission_link_v1_3.password.size

-- Display: Login Request Message
otcmarkets_moonats_retransmission_link_v1_3.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
otcmarkets_moonats_retransmission_link_v1_3.login_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: Printable ASCII
  index, user_id = otcmarkets_moonats_retransmission_link_v1_3.user_id.dissect(buffer, index, packet, parent)

  -- Password: Printable ASCII
  index, password = otcmarkets_moonats_retransmission_link_v1_3.password.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Message
otcmarkets_moonats_retransmission_link_v1_3.login_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.login_request_message, buffer(offset, 0))
    local index = otcmarkets_moonats_retransmission_link_v1_3.login_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_moonats_retransmission_link_v1_3.login_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_moonats_retransmission_link_v1_3.login_request_message.fields(buffer, offset, packet, parent)
  end
end

-- System Recovery Event Message
otcmarkets_moonats_retransmission_link_v1_3.system_recovery_event_message = {}

-- Size: System Recovery Event Message
otcmarkets_moonats_retransmission_link_v1_3.system_recovery_event_message.size =
  otcmarkets_moonats_retransmission_link_v1_3.deprecated.size + 
  otcmarkets_moonats_retransmission_link_v1_3.recovery_type.size + 
  otcmarkets_moonats_retransmission_link_v1_3.next_sequence_number.size + 
  otcmarkets_moonats_retransmission_link_v1_3.recovery_start_time.size

-- Display: System Recovery Event Message
otcmarkets_moonats_retransmission_link_v1_3.system_recovery_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Recovery Event Message
otcmarkets_moonats_retransmission_link_v1_3.system_recovery_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Deprecated: Binary Integer
  index, deprecated = otcmarkets_moonats_retransmission_link_v1_3.deprecated.dissect(buffer, index, packet, parent)

  -- Recovery Type: Binary Byte
  index, recovery_type = otcmarkets_moonats_retransmission_link_v1_3.recovery_type.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: Binary Integer
  index, next_sequence_number = otcmarkets_moonats_retransmission_link_v1_3.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Recovery Start Time: Binary Long
  index, recovery_start_time = otcmarkets_moonats_retransmission_link_v1_3.recovery_start_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Recovery Event Message
otcmarkets_moonats_retransmission_link_v1_3.system_recovery_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.system_recovery_event_message, buffer(offset, 0))
    local index = otcmarkets_moonats_retransmission_link_v1_3.system_recovery_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_moonats_retransmission_link_v1_3.system_recovery_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_moonats_retransmission_link_v1_3.system_recovery_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Imbalance Message
otcmarkets_moonats_retransmission_link_v1_3.imbalance_message = {}

-- Size: Imbalance Message
otcmarkets_moonats_retransmission_link_v1_3.imbalance_message.size =
  otcmarkets_moonats_retransmission_link_v1_3.time.size + 
  otcmarkets_moonats_retransmission_link_v1_3.symbol.size + 
  otcmarkets_moonats_retransmission_link_v1_3.current_inside_paired_shares.size + 
  otcmarkets_moonats_retransmission_link_v1_3.current_inside_closing_price.size + 
  otcmarkets_moonats_retransmission_link_v1_3.current_inside_imbalance_quantity.size + 
  otcmarkets_moonats_retransmission_link_v1_3.current_inside_imbalance_side.size + 
  otcmarkets_moonats_retransmission_link_v1_3.full_closing_price.size + 
  otcmarkets_moonats_retransmission_link_v1_3.ocio_only_closing_price.size + 
  otcmarkets_moonats_retransmission_link_v1_3.moc_shares_unmatched.size

-- Display: Imbalance Message
otcmarkets_moonats_retransmission_link_v1_3.imbalance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Imbalance Message
otcmarkets_moonats_retransmission_link_v1_3.imbalance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otcmarkets_moonats_retransmission_link_v1_3.time.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = otcmarkets_moonats_retransmission_link_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Current Inside Paired Shares: Binary Integer
  index, current_inside_paired_shares = otcmarkets_moonats_retransmission_link_v1_3.current_inside_paired_shares.dissect(buffer, index, packet, parent)

  -- Current Inside Closing Price: Binary Long Price
  index, current_inside_closing_price = otcmarkets_moonats_retransmission_link_v1_3.current_inside_closing_price.dissect(buffer, index, packet, parent)

  -- Current Inside Imbalance Quantity: Binary Integer
  index, current_inside_imbalance_quantity = otcmarkets_moonats_retransmission_link_v1_3.current_inside_imbalance_quantity.dissect(buffer, index, packet, parent)

  -- Current Inside Imbalance Side: Printable ASCII
  index, current_inside_imbalance_side = otcmarkets_moonats_retransmission_link_v1_3.current_inside_imbalance_side.dissect(buffer, index, packet, parent)

  -- Full Closing Price: Binary Long Price
  index, full_closing_price = otcmarkets_moonats_retransmission_link_v1_3.full_closing_price.dissect(buffer, index, packet, parent)

  -- Ocio Only Closing Price: Binary Long Price
  index, ocio_only_closing_price = otcmarkets_moonats_retransmission_link_v1_3.ocio_only_closing_price.dissect(buffer, index, packet, parent)

  -- Moc Shares Unmatched: Printable ASCII
  index, moc_shares_unmatched = otcmarkets_moonats_retransmission_link_v1_3.moc_shares_unmatched.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Imbalance Message
otcmarkets_moonats_retransmission_link_v1_3.imbalance_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.imbalance_message, buffer(offset, 0))
    local index = otcmarkets_moonats_retransmission_link_v1_3.imbalance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_moonats_retransmission_link_v1_3.imbalance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_moonats_retransmission_link_v1_3.imbalance_message.fields(buffer, offset, packet, parent)
  end
end

-- Top Of Book Message
otcmarkets_moonats_retransmission_link_v1_3.top_of_book_message = {}

-- Size: Top Of Book Message
otcmarkets_moonats_retransmission_link_v1_3.top_of_book_message.size =
  otcmarkets_moonats_retransmission_link_v1_3.time.size + 
  otcmarkets_moonats_retransmission_link_v1_3.symbol.size + 
  otcmarkets_moonats_retransmission_link_v1_3.ask_price.size + 
  otcmarkets_moonats_retransmission_link_v1_3.ask_volume.size + 
  otcmarkets_moonats_retransmission_link_v1_3.bid_price.size + 
  otcmarkets_moonats_retransmission_link_v1_3.bid_volume.size + 
  otcmarkets_moonats_retransmission_link_v1_3.unsolicited.size

-- Display: Top Of Book Message
otcmarkets_moonats_retransmission_link_v1_3.top_of_book_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Of Book Message
otcmarkets_moonats_retransmission_link_v1_3.top_of_book_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otcmarkets_moonats_retransmission_link_v1_3.time.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = otcmarkets_moonats_retransmission_link_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Ask Price: Binary Long Price
  index, ask_price = otcmarkets_moonats_retransmission_link_v1_3.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Volume: Binary Integer
  index, ask_volume = otcmarkets_moonats_retransmission_link_v1_3.ask_volume.dissect(buffer, index, packet, parent)

  -- Bid Price: Binary Long Price
  index, bid_price = otcmarkets_moonats_retransmission_link_v1_3.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Volume: Binary Integer
  index, bid_volume = otcmarkets_moonats_retransmission_link_v1_3.bid_volume.dissect(buffer, index, packet, parent)

  -- Unsolicited: Printable ASCII
  index, unsolicited = otcmarkets_moonats_retransmission_link_v1_3.unsolicited.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Of Book Message
otcmarkets_moonats_retransmission_link_v1_3.top_of_book_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.top_of_book_message, buffer(offset, 0))
    local index = otcmarkets_moonats_retransmission_link_v1_3.top_of_book_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_moonats_retransmission_link_v1_3.top_of_book_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_moonats_retransmission_link_v1_3.top_of_book_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
otcmarkets_moonats_retransmission_link_v1_3.trade_message = {}

-- Size: Trade Message
otcmarkets_moonats_retransmission_link_v1_3.trade_message.size =
  otcmarkets_moonats_retransmission_link_v1_3.time.size + 
  otcmarkets_moonats_retransmission_link_v1_3.side_indicator.size + 
  otcmarkets_moonats_retransmission_link_v1_3.quantity.size + 
  otcmarkets_moonats_retransmission_link_v1_3.symbol.size + 
  otcmarkets_moonats_retransmission_link_v1_3.price.size + 
  otcmarkets_moonats_retransmission_link_v1_3.execution_id.size + 
  otcmarkets_moonats_retransmission_link_v1_3.reserved_binary_long_8.size

-- Display: Trade Message
otcmarkets_moonats_retransmission_link_v1_3.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
otcmarkets_moonats_retransmission_link_v1_3.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otcmarkets_moonats_retransmission_link_v1_3.time.dissect(buffer, index, packet, parent)

  -- Side Indicator: Printable ASCII
  index, side_indicator = otcmarkets_moonats_retransmission_link_v1_3.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Binary Integer
  index, quantity = otcmarkets_moonats_retransmission_link_v1_3.quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = otcmarkets_moonats_retransmission_link_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = otcmarkets_moonats_retransmission_link_v1_3.price.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary Long
  index, execution_id = otcmarkets_moonats_retransmission_link_v1_3.execution_id.dissect(buffer, index, packet, parent)

  -- Reserved Binary Long 8: Binary Long
  index, reserved_binary_long_8 = otcmarkets_moonats_retransmission_link_v1_3.reserved_binary_long_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
otcmarkets_moonats_retransmission_link_v1_3.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.trade_message, buffer(offset, 0))
    local index = otcmarkets_moonats_retransmission_link_v1_3.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_moonats_retransmission_link_v1_3.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_moonats_retransmission_link_v1_3.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Execution With Price Message
otcmarkets_moonats_retransmission_link_v1_3.order_execution_with_price_message = {}

-- Size: Order Execution With Price Message
otcmarkets_moonats_retransmission_link_v1_3.order_execution_with_price_message.size =
  otcmarkets_moonats_retransmission_link_v1_3.time.size + 
  otcmarkets_moonats_retransmission_link_v1_3.order_id.size + 
  otcmarkets_moonats_retransmission_link_v1_3.executed_quantity.size + 
  otcmarkets_moonats_retransmission_link_v1_3.remaining_quantity.size + 
  otcmarkets_moonats_retransmission_link_v1_3.execution_id.size + 
  otcmarkets_moonats_retransmission_link_v1_3.price.size

-- Display: Order Execution With Price Message
otcmarkets_moonats_retransmission_link_v1_3.order_execution_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution With Price Message
otcmarkets_moonats_retransmission_link_v1_3.order_execution_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otcmarkets_moonats_retransmission_link_v1_3.time.dissect(buffer, index, packet, parent)

  -- Order Id: Printable ASCII
  index, order_id = otcmarkets_moonats_retransmission_link_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary Integer
  index, executed_quantity = otcmarkets_moonats_retransmission_link_v1_3.executed_quantity.dissect(buffer, index, packet, parent)

  -- Remaining Quantity: Binary Integer
  index, remaining_quantity = otcmarkets_moonats_retransmission_link_v1_3.remaining_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary Long
  index, execution_id = otcmarkets_moonats_retransmission_link_v1_3.execution_id.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = otcmarkets_moonats_retransmission_link_v1_3.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution With Price Message
otcmarkets_moonats_retransmission_link_v1_3.order_execution_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.order_execution_with_price_message, buffer(offset, 0))
    local index = otcmarkets_moonats_retransmission_link_v1_3.order_execution_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_moonats_retransmission_link_v1_3.order_execution_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_moonats_retransmission_link_v1_3.order_execution_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Execution Message
otcmarkets_moonats_retransmission_link_v1_3.order_execution_message = {}

-- Size: Order Execution Message
otcmarkets_moonats_retransmission_link_v1_3.order_execution_message.size =
  otcmarkets_moonats_retransmission_link_v1_3.time.size + 
  otcmarkets_moonats_retransmission_link_v1_3.order_id.size + 
  otcmarkets_moonats_retransmission_link_v1_3.executed_quantity.size + 
  otcmarkets_moonats_retransmission_link_v1_3.remaining_quantity.size + 
  otcmarkets_moonats_retransmission_link_v1_3.execution_id.size

-- Display: Order Execution Message
otcmarkets_moonats_retransmission_link_v1_3.order_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution Message
otcmarkets_moonats_retransmission_link_v1_3.order_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otcmarkets_moonats_retransmission_link_v1_3.time.dissect(buffer, index, packet, parent)

  -- Order Id: Printable ASCII
  index, order_id = otcmarkets_moonats_retransmission_link_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary Integer
  index, executed_quantity = otcmarkets_moonats_retransmission_link_v1_3.executed_quantity.dissect(buffer, index, packet, parent)

  -- Remaining Quantity: Binary Integer
  index, remaining_quantity = otcmarkets_moonats_retransmission_link_v1_3.remaining_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary Long
  index, execution_id = otcmarkets_moonats_retransmission_link_v1_3.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution Message
otcmarkets_moonats_retransmission_link_v1_3.order_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.order_execution_message, buffer(offset, 0))
    local index = otcmarkets_moonats_retransmission_link_v1_3.order_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_moonats_retransmission_link_v1_3.order_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_moonats_retransmission_link_v1_3.order_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete Message
otcmarkets_moonats_retransmission_link_v1_3.order_delete_message = {}

-- Size: Order Delete Message
otcmarkets_moonats_retransmission_link_v1_3.order_delete_message.size =
  otcmarkets_moonats_retransmission_link_v1_3.time.size + 
  otcmarkets_moonats_retransmission_link_v1_3.order_id.size

-- Display: Order Delete Message
otcmarkets_moonats_retransmission_link_v1_3.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
otcmarkets_moonats_retransmission_link_v1_3.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otcmarkets_moonats_retransmission_link_v1_3.time.dissect(buffer, index, packet, parent)

  -- Order Id: Printable ASCII
  index, order_id = otcmarkets_moonats_retransmission_link_v1_3.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
otcmarkets_moonats_retransmission_link_v1_3.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.order_delete_message, buffer(offset, 0))
    local index = otcmarkets_moonats_retransmission_link_v1_3.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_moonats_retransmission_link_v1_3.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_moonats_retransmission_link_v1_3.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Update Message
otcmarkets_moonats_retransmission_link_v1_3.order_update_message = {}

-- Size: Order Update Message
otcmarkets_moonats_retransmission_link_v1_3.order_update_message.size =
  otcmarkets_moonats_retransmission_link_v1_3.time.size + 
  otcmarkets_moonats_retransmission_link_v1_3.order_id.size + 
  otcmarkets_moonats_retransmission_link_v1_3.quantity.size + 
  otcmarkets_moonats_retransmission_link_v1_3.price.size + 
  otcmarkets_moonats_retransmission_link_v1_3.order_flags.size

-- Display: Order Update Message
otcmarkets_moonats_retransmission_link_v1_3.order_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Update Message
otcmarkets_moonats_retransmission_link_v1_3.order_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otcmarkets_moonats_retransmission_link_v1_3.time.dissect(buffer, index, packet, parent)

  -- Order Id: Printable ASCII
  index, order_id = otcmarkets_moonats_retransmission_link_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Quantity: Binary Integer
  index, quantity = otcmarkets_moonats_retransmission_link_v1_3.quantity.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = otcmarkets_moonats_retransmission_link_v1_3.price.dissect(buffer, index, packet, parent)

  -- Order Flags: Binary Short Integer
  index, order_flags = otcmarkets_moonats_retransmission_link_v1_3.order_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Update Message
otcmarkets_moonats_retransmission_link_v1_3.order_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.order_update_message, buffer(offset, 0))
    local index = otcmarkets_moonats_retransmission_link_v1_3.order_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_moonats_retransmission_link_v1_3.order_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_moonats_retransmission_link_v1_3.order_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Add Message
otcmarkets_moonats_retransmission_link_v1_3.order_add_message = {}

-- Size: Order Add Message
otcmarkets_moonats_retransmission_link_v1_3.order_add_message.size =
  otcmarkets_moonats_retransmission_link_v1_3.time.size + 
  otcmarkets_moonats_retransmission_link_v1_3.order_id.size + 
  otcmarkets_moonats_retransmission_link_v1_3.side_indicator.size + 
  otcmarkets_moonats_retransmission_link_v1_3.quantity.size + 
  otcmarkets_moonats_retransmission_link_v1_3.symbol.size + 
  otcmarkets_moonats_retransmission_link_v1_3.price.size + 
  otcmarkets_moonats_retransmission_link_v1_3.firm_id.size + 
  otcmarkets_moonats_retransmission_link_v1_3.unsolicited.size + 
  otcmarkets_moonats_retransmission_link_v1_3.order_flags.size

-- Display: Order Add Message
otcmarkets_moonats_retransmission_link_v1_3.order_add_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Add Message
otcmarkets_moonats_retransmission_link_v1_3.order_add_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otcmarkets_moonats_retransmission_link_v1_3.time.dissect(buffer, index, packet, parent)

  -- Order Id: Printable ASCII
  index, order_id = otcmarkets_moonats_retransmission_link_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Printable ASCII
  index, side_indicator = otcmarkets_moonats_retransmission_link_v1_3.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Binary Integer
  index, quantity = otcmarkets_moonats_retransmission_link_v1_3.quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = otcmarkets_moonats_retransmission_link_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = otcmarkets_moonats_retransmission_link_v1_3.price.dissect(buffer, index, packet, parent)

  -- Firm Id: Printable ASCII
  index, firm_id = otcmarkets_moonats_retransmission_link_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Unsolicited: Printable ASCII
  index, unsolicited = otcmarkets_moonats_retransmission_link_v1_3.unsolicited.dissect(buffer, index, packet, parent)

  -- Order Flags: Binary Short Integer
  index, order_flags = otcmarkets_moonats_retransmission_link_v1_3.order_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Add Message
otcmarkets_moonats_retransmission_link_v1_3.order_add_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.order_add_message, buffer(offset, 0))
    local index = otcmarkets_moonats_retransmission_link_v1_3.order_add_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_moonats_retransmission_link_v1_3.order_add_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_moonats_retransmission_link_v1_3.order_add_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Flags
otcmarkets_moonats_retransmission_link_v1_3.security_flags = {}

-- Size: Security Flags
otcmarkets_moonats_retransmission_link_v1_3.security_flags.size = 2

-- Display: Security Flags
otcmarkets_moonats_retransmission_link_v1_3.security_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Piggyback Flag flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Piggyback Flag"
  end
  -- Is Caveat Flag flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Caveat Flag"
  end
  -- Is Qib Only 144 A flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Qib Only 144 A"
  end
  -- Is Unsolicited Only Flag flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Unsolicited Only Flag"
  end
  -- Is Closing Cross Auction flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Closing Cross Auction"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Security Flags
otcmarkets_moonats_retransmission_link_v1_3.security_flags.bits = function(range, value, packet, parent)

  -- Piggyback Flag: 1 Bit
  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.piggyback_flag, range, value)

  -- Caveat Flag: 1 Bit
  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.caveat_flag, range, value)

  -- Qib Only 144 A: 1 Bit
  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.qib_only_144_a, range, value)

  -- Unsolicited Only Flag: 1 Bit
  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.unsolicited_only_flag, range, value)

  -- Closing Cross Auction: 1 Bit
  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.closing_cross_auction, range, value)

  -- Reserved 11: 11 Bit
  parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.reserved_11, range, value)
end

-- Dissect: Security Flags
otcmarkets_moonats_retransmission_link_v1_3.security_flags.dissect = function(buffer, offset, packet, parent)
  local size = otcmarkets_moonats_retransmission_link_v1_3.security_flags.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = otcmarkets_moonats_retransmission_link_v1_3.security_flags.display(range, value, packet, parent)
  local element = parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.security_flags, range, display)

  if show.structs then
    otcmarkets_moonats_retransmission_link_v1_3.security_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Security Message
otcmarkets_moonats_retransmission_link_v1_3.security_message = {}

-- Size: Security Message
otcmarkets_moonats_retransmission_link_v1_3.security_message.size =
  otcmarkets_moonats_retransmission_link_v1_3.symbol.size + 
  otcmarkets_moonats_retransmission_link_v1_3.last_update_milli.size + 
  otcmarkets_moonats_retransmission_link_v1_3.security_action.size + 
  otcmarkets_moonats_retransmission_link_v1_3.asset_class.size + 
  otcmarkets_moonats_retransmission_link_v1_3.security_id.size + 
  otcmarkets_moonats_retransmission_link_v1_3.security_flags.size + 
  otcmarkets_moonats_retransmission_link_v1_3.tier.size + 
  otcmarkets_moonats_retransmission_link_v1_3.reporting_status.size + 
  otcmarkets_moonats_retransmission_link_v1_3.security_status.size

-- Display: Security Message
otcmarkets_moonats_retransmission_link_v1_3.security_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Message
otcmarkets_moonats_retransmission_link_v1_3.security_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Printable ASCII
  index, symbol = otcmarkets_moonats_retransmission_link_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Last Update Milli: Binary Long
  index, last_update_milli = otcmarkets_moonats_retransmission_link_v1_3.last_update_milli.dissect(buffer, index, packet, parent)

  -- Security Action: Binary Integer
  index, security_action = otcmarkets_moonats_retransmission_link_v1_3.security_action.dissect(buffer, index, packet, parent)

  -- Asset Class: Binary Byte
  index, asset_class = otcmarkets_moonats_retransmission_link_v1_3.asset_class.dissect(buffer, index, packet, parent)

  -- Security Id: Binary Integer
  index, security_id = otcmarkets_moonats_retransmission_link_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Security Flags: Struct of 6 fields
  index, security_flags = otcmarkets_moonats_retransmission_link_v1_3.security_flags.dissect(buffer, index, packet, parent)

  -- Tier: Binary Byte
  index, tier = otcmarkets_moonats_retransmission_link_v1_3.tier.dissect(buffer, index, packet, parent)

  -- Reporting Status: Printable ASCII
  index, reporting_status = otcmarkets_moonats_retransmission_link_v1_3.reporting_status.dissect(buffer, index, packet, parent)

  -- Security Status: Printable ASCII
  index, security_status = otcmarkets_moonats_retransmission_link_v1_3.security_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Message
otcmarkets_moonats_retransmission_link_v1_3.security_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.security_message, buffer(offset, 0))
    local index = otcmarkets_moonats_retransmission_link_v1_3.security_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_moonats_retransmission_link_v1_3.security_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_moonats_retransmission_link_v1_3.security_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session Message
otcmarkets_moonats_retransmission_link_v1_3.trading_session_message = {}

-- Size: Trading Session Message
otcmarkets_moonats_retransmission_link_v1_3.trading_session_message.size =
  otcmarkets_moonats_retransmission_link_v1_3.session_time.size + 
  otcmarkets_moonats_retransmission_link_v1_3.trading_session.size

-- Display: Trading Session Message
otcmarkets_moonats_retransmission_link_v1_3.trading_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Message
otcmarkets_moonats_retransmission_link_v1_3.trading_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Time: Binary Long
  index, session_time = otcmarkets_moonats_retransmission_link_v1_3.session_time.dissect(buffer, index, packet, parent)

  -- Trading Session: Binary Byte
  index, trading_session = otcmarkets_moonats_retransmission_link_v1_3.trading_session.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Message
otcmarkets_moonats_retransmission_link_v1_3.trading_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.trading_session_message, buffer(offset, 0))
    local index = otcmarkets_moonats_retransmission_link_v1_3.trading_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_moonats_retransmission_link_v1_3.trading_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_moonats_retransmission_link_v1_3.trading_session_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Spin Message
otcmarkets_moonats_retransmission_link_v1_3.end_of_spin_message = {}

-- Size: End Of Spin Message
otcmarkets_moonats_retransmission_link_v1_3.end_of_spin_message.size =
  otcmarkets_moonats_retransmission_link_v1_3.spin_type.size + 
  otcmarkets_moonats_retransmission_link_v1_3.spin_msg_ct.size + 
  otcmarkets_moonats_retransmission_link_v1_3.spin_end_time_milli.size + 
  otcmarkets_moonats_retransmission_link_v1_3.spin_last_seq_num.size

-- Display: End Of Spin Message
otcmarkets_moonats_retransmission_link_v1_3.end_of_spin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Spin Message
otcmarkets_moonats_retransmission_link_v1_3.end_of_spin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Spin Type: Binary Byte
  index, spin_type = otcmarkets_moonats_retransmission_link_v1_3.spin_type.dissect(buffer, index, packet, parent)

  -- Spin Msg Ct: Binary Integer
  index, spin_msg_ct = otcmarkets_moonats_retransmission_link_v1_3.spin_msg_ct.dissect(buffer, index, packet, parent)

  -- Spin End Time Milli: Binary Long
  index, spin_end_time_milli = otcmarkets_moonats_retransmission_link_v1_3.spin_end_time_milli.dissect(buffer, index, packet, parent)

  -- Spin Last Seq Num: Binary Integer
  index, spin_last_seq_num = otcmarkets_moonats_retransmission_link_v1_3.spin_last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Spin Message
otcmarkets_moonats_retransmission_link_v1_3.end_of_spin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.end_of_spin_message, buffer(offset, 0))
    local index = otcmarkets_moonats_retransmission_link_v1_3.end_of_spin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_moonats_retransmission_link_v1_3.end_of_spin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_moonats_retransmission_link_v1_3.end_of_spin_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Spin Message
otcmarkets_moonats_retransmission_link_v1_3.start_of_spin_message = {}

-- Size: Start Of Spin Message
otcmarkets_moonats_retransmission_link_v1_3.start_of_spin_message.size =
  otcmarkets_moonats_retransmission_link_v1_3.spin_type.size + 
  otcmarkets_moonats_retransmission_link_v1_3.spin_start_time_milli.size + 
  otcmarkets_moonats_retransmission_link_v1_3.spin_last_seq_num.size

-- Display: Start Of Spin Message
otcmarkets_moonats_retransmission_link_v1_3.start_of_spin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Spin Message
otcmarkets_moonats_retransmission_link_v1_3.start_of_spin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Spin Type: Binary Byte
  index, spin_type = otcmarkets_moonats_retransmission_link_v1_3.spin_type.dissect(buffer, index, packet, parent)

  -- Spin Start Time Milli: Binary Long
  index, spin_start_time_milli = otcmarkets_moonats_retransmission_link_v1_3.spin_start_time_milli.dissect(buffer, index, packet, parent)

  -- Spin Last Seq Num: Binary Integer
  index, spin_last_seq_num = otcmarkets_moonats_retransmission_link_v1_3.spin_last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Spin Message
otcmarkets_moonats_retransmission_link_v1_3.start_of_spin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.start_of_spin_message, buffer(offset, 0))
    local index = otcmarkets_moonats_retransmission_link_v1_3.start_of_spin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_moonats_retransmission_link_v1_3.start_of_spin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_moonats_retransmission_link_v1_3.start_of_spin_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
otcmarkets_moonats_retransmission_link_v1_3.payload = {}

-- Dissect: Payload
otcmarkets_moonats_retransmission_link_v1_3.payload.dispatch = {
  [11] = otcmarkets_moonats_retransmission_link_v1_3.start_of_spin_message.dissect,
  [12] = otcmarkets_moonats_retransmission_link_v1_3.end_of_spin_message.dissect,
  [20] = otcmarkets_moonats_retransmission_link_v1_3.trading_session_message.dissect,
  [9] = otcmarkets_moonats_retransmission_link_v1_3.security_message.dissect,
  [21] = otcmarkets_moonats_retransmission_link_v1_3.order_add_message.dissect,
  [22] = otcmarkets_moonats_retransmission_link_v1_3.order_update_message.dissect,
  [23] = otcmarkets_moonats_retransmission_link_v1_3.order_delete_message.dissect,
  [24] = otcmarkets_moonats_retransmission_link_v1_3.order_execution_message.dissect,
  [25] = otcmarkets_moonats_retransmission_link_v1_3.order_execution_with_price_message.dissect,
  [26] = otcmarkets_moonats_retransmission_link_v1_3.trade_message.dissect,
  [27] = otcmarkets_moonats_retransmission_link_v1_3.top_of_book_message.dissect,
  [28] = otcmarkets_moonats_retransmission_link_v1_3.imbalance_message.dissect,
  [74] = otcmarkets_moonats_retransmission_link_v1_3.system_recovery_event_message.dissect,
  [108] = otcmarkets_moonats_retransmission_link_v1_3.login_request_message.dissect,
  [97] = otcmarkets_moonats_retransmission_link_v1_3.login_response_message.dissect,
  [114] = otcmarkets_moonats_retransmission_link_v1_3.retransmission_request_message.dissect,
  [98] = otcmarkets_moonats_retransmission_link_v1_3.retransmission_response_message.dissect,
  [115] = otcmarkets_moonats_retransmission_link_v1_3.spin_request_message.dissect,
  [99] = otcmarkets_moonats_retransmission_link_v1_3.spin_response_message.dissect,
  [116] = otcmarkets_moonats_retransmission_link_v1_3.enhanced_spin_request_message.dissect,
  [100] = otcmarkets_moonats_retransmission_link_v1_3.enhanced_spin_response_message.dissect,
  [104] = otcmarkets_moonats_retransmission_link_v1_3.heartbeat_message.dissect,
}

otcmarkets_moonats_retransmission_link_v1_3.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = otcmarkets_moonats_retransmission_link_v1_3.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
otcmarkets_moonats_retransmission_link_v1_3.message_header = {}

-- Size: Message Header
otcmarkets_moonats_retransmission_link_v1_3.message_header.size =
  otcmarkets_moonats_retransmission_link_v1_3.message_size.size + 
  otcmarkets_moonats_retransmission_link_v1_3.message_type.size

-- Display: Message Header
otcmarkets_moonats_retransmission_link_v1_3.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
otcmarkets_moonats_retransmission_link_v1_3.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = otcmarkets_moonats_retransmission_link_v1_3.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 22 values
  index, message_type = otcmarkets_moonats_retransmission_link_v1_3.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
otcmarkets_moonats_retransmission_link_v1_3.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.message_header, buffer(offset, 0))
    local index = otcmarkets_moonats_retransmission_link_v1_3.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_moonats_retransmission_link_v1_3.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_moonats_retransmission_link_v1_3.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
otcmarkets_moonats_retransmission_link_v1_3.message = {}

-- Display: Message
otcmarkets_moonats_retransmission_link_v1_3.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
otcmarkets_moonats_retransmission_link_v1_3.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = otcmarkets_moonats_retransmission_link_v1_3.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 22 branches
  index = otcmarkets_moonats_retransmission_link_v1_3.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
otcmarkets_moonats_retransmission_link_v1_3.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3.fields.message, buffer(offset, 0))
    local current = otcmarkets_moonats_retransmission_link_v1_3.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = otcmarkets_moonats_retransmission_link_v1_3.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    otcmarkets_moonats_retransmission_link_v1_3.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Packet
otcmarkets_moonats_retransmission_link_v1_3.packet = {}

-- Verify required size of Tcp packet
otcmarkets_moonats_retransmission_link_v1_3.packet.requiredsize = function(buffer)
  return buffer:len() >= otcmarkets_moonats_retransmission_link_v1_3.message_header.size
end

-- Dissect Packet
otcmarkets_moonats_retransmission_link_v1_3.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    index, message = otcmarkets_moonats_retransmission_link_v1_3.message.dissect(buffer, index, packet, parent, message_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_otcmarkets_moonats_retransmission_link_v1_3.init()
end

-- Dissector for OtcMarkets MoonAts Retransmission Link 1.3
function omi_otcmarkets_moonats_retransmission_link_v1_3.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_otcmarkets_moonats_retransmission_link_v1_3.name

  -- Dissect protocol
  local protocol = parent:add(omi_otcmarkets_moonats_retransmission_link_v1_3, buffer(), omi_otcmarkets_moonats_retransmission_link_v1_3.description, "("..buffer:len().." Bytes)")
  return otcmarkets_moonats_retransmission_link_v1_3.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
otcmarkets_moonats_retransmission_link_v1_3.packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end

  local message_type = buffer(2, 1):uint()

  -- Start Of Spin Message
  if message_type == 11 then
    return true
  end

  -- End Of Spin Message
  if message_type == 12 then
    return true
  end

  -- Trading Session Message
  if message_type == 20 then
    return true
  end

  -- Security Message
  if message_type == 9 then
    return true
  end

  -- Order Add Message
  if message_type == 21 then
    return true
  end

  -- Order Update Message
  if message_type == 22 then
    return true
  end

  -- Order Delete Message
  if message_type == 23 then
    return true
  end

  -- Order Execution Message
  if message_type == 24 then
    return true
  end

  -- Order Execution With Price Message
  if message_type == 25 then
    return true
  end

  -- Trade Message
  if message_type == 26 then
    return true
  end

  -- Top Of Book Message
  if message_type == 27 then
    return true
  end

  -- Imbalance Message
  if message_type == 28 then
    return true
  end

  -- System Recovery Event Message
  if message_type == 74 then
    return true
  end

  -- Login Request Message
  if message_type == 108 then
    return true
  end

  -- Login Response Message
  if message_type == 97 then
    return true
  end

  -- Retransmission Request Message
  if message_type == 114 then
    return true
  end

  -- Retransmission Response Message
  if message_type == 98 then
    return true
  end

  -- Spin Request Message
  if message_type == 115 then
    return true
  end

  -- Spin Response Message
  if message_type == 99 then
    return true
  end

  -- Enhanced Spin Request Message
  if message_type == 116 then
    return true
  end

  -- Enhanced Spin Response Message
  if message_type == 100 then
    return true
  end

  -- Heartbeat Message
  if message_type == 104 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for OtcMarkets MoonAts Retransmission Link 1.3 (Tcp)
local function omi_otcmarkets_moonats_retransmission_link_v1_3_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not otcmarkets_moonats_retransmission_link_v1_3.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp packet message dispatch
  if not otcmarkets_moonats_retransmission_link_v1_3.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_otcmarkets_moonats_retransmission_link_v1_3
  omi_otcmarkets_moonats_retransmission_link_v1_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for OtcMarkets MoonAts Retransmission Link 1.3
omi_otcmarkets_moonats_retransmission_link_v1_3:register_heuristic("tcp", omi_otcmarkets_moonats_retransmission_link_v1_3_tcp_heuristic)

-- Register OtcMarkets MoonAts Retransmission Link 1.3 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_otcmarkets_moonats_retransmission_link_v1_3)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: OTC Markets Group
--   Version: 1.3
--   Date: Friday, May 1, 2026
--   Specification: MOON-ATS-MD-Specification.pdf
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
